CREATE MIGRATION m1mw7us72e33srq5443jf36k45z3rs33i3ylke6hgcut5xehudhkra
    ONTO m1zlgl23db53zcl4cxshkdepncchv3x6t7oink5shjwyv6imk7y2sq
{
  ALTER TYPE default::Settings {
      CREATE REQUIRED PROPERTY archiveImageCompressionQuality: std::int32 {
          SET default := 80;
          CREATE CONSTRAINT std::max_value(100);
          CREATE CONSTRAINT std::min_value(1);
      };
      CREATE REQUIRED PROPERTY haveSetUpRedditOauthForGalleryDL: std::bool {
          SET default := false;
      };
      CREATE REQUIRED PROPERTY imageCompressionQuality: std::int32 {
          SET default := 80;
          CREATE CONSTRAINT std::max_value(100);
          CREATE CONSTRAINT std::min_value(1);
      };
      CREATE REQUIRED PROPERTY imageProcessingCpuEffort: std::int32 {
          SET default := 3;
          CREATE CONSTRAINT std::max_value(9);
          CREATE CONSTRAINT std::min_value(0);
      };
      CREATE REQUIRED PROPERTY maxImageWidthForNonArchiveImage: std::int32 {
          SET default := 1400;
          CREATE CONSTRAINT std::min_value(1);
      };
      CREATE REQUIRED PROPERTY numberImagesProcessAtOnce: std::int32 {
          SET default := 2;
          CREATE CONSTRAINT std::min_value(1);
      };
      CREATE REQUIRED PROPERTY numberMediaDownloadsAtOnce: std::int32 {
          SET default := 2;
          CREATE CONSTRAINT std::min_value(1);
      };
      CREATE REQUIRED PROPERTY updateEndingHour: std::int32 {
          SET default := 7;
          CREATE CONSTRAINT std::max_value(23);
          CREATE CONSTRAINT std::min_value(0);
      };
      CREATE REQUIRED PROPERTY updateStartingHour: std::int32 {
          SET default := 1;
          CREATE CONSTRAINT std::max_value(23);
          CREATE CONSTRAINT std::min_value(0);
      };
  };
};
