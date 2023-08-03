open EdgeDB

let config =
    EdgeDBClientPoolConfig(SchemaNamingStrategy = INamingStrategy.DefaultNamingStrategy, ExplicitObjectIds = false)

let dbClient = EdgeDBClient(config)

[<EntryPoint>]
let main _ =
    task {
        try
            do! dbClient.ExecuteAsync("""insert Settings unless conflict on .uniqueId;""")

            // This works fine
            let queryParams =
                {| numberMediaDownloadsAtOnce = None
                   updateAllDay = Some false |}

            do!
                dbClient.ExecuteAsync(
                    """
                        update Settings 
                        filter .uniqueId = "settings"
                        set {
                            numberMediaDownloadsAtOnce := <optional int32>$numberMediaDownloadsAtOnce ?? .numberMediaDownloadsAtOnce,
                            updateAllDay := <optional bool>$updateAllDay ?? .updateAllDay       
                        }         
                        """,
                    queryParams
                )

            // This errors
            let queryParams =
                {| numberMediaDownloadsAtOnce = Some 3
                   updateAllDay = Some false |}

            do!
                dbClient.ExecuteAsync(
                    """
                        update Settings 
                        filter .uniqueId = "settings"
                        set {
                            numberMediaDownloadsAtOnce := <optional int32>$numberMediaDownloadsAtOnce ?? .numberMediaDownloadsAtOnce,
                            updateAllDay := <optional bool>$updateAllDay ?? .updateAllDay       
                        }         
                        """,
                    queryParams
                )
        with err ->
            printfn "Error: %A" err
    }
    |> Async.AwaitTask
    |> Async.RunSynchronously


    0
