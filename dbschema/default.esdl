module default {
  type Settings {
    required uniqueId: str {
      default := "settings"; 
      constraint exclusive;
    };
    required numberMediaDownloadsAtOnce: int32 {
      default := 2;
      constraint min_value(1);
    };
    required updateAllDay: bool {
      default := true;
    };
  };
}
