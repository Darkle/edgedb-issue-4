CREATE MIGRATION m1zlgl23db53zcl4cxshkdepncchv3x6t7oink5shjwyv6imk7y2sq
    ONTO initial
{
  CREATE TYPE default::Settings {
      CREATE REQUIRED PROPERTY uniqueId: std::str {
          SET default := 'settings';
          CREATE CONSTRAINT std::exclusive;
      };
      CREATE REQUIRED PROPERTY updateAllDay: std::bool {
          SET default := true;
      };
  };
};
