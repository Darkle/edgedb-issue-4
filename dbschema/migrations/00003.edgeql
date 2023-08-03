CREATE MIGRATION m1ebdiwra2dtxy6oeslyyr2oslrxzsmzjg4obkcwbn6dswplveklba
    ONTO m1mw7us72e33srq5443jf36k45z3rs33i3ylke6hgcut5xehudhkra
{
  ALTER TYPE default::Settings {
      DROP PROPERTY archiveImageCompressionQuality;
      DROP PROPERTY haveSetUpRedditOauthForGalleryDL;
      DROP PROPERTY imageCompressionQuality;
      DROP PROPERTY imageProcessingCpuEffort;
      DROP PROPERTY maxImageWidthForNonArchiveImage;
      DROP PROPERTY numberImagesProcessAtOnce;
      DROP PROPERTY updateEndingHour;
      DROP PROPERTY updateStartingHour;
  };
};
