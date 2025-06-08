{ config, pkgs, ... }:

{
  ###############################################
  #                                             #
  # Configure default applications by mimetype. #
  #                                             #
  ###############################################

  # Set mimetypes
  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      # Audio files	
      "audio/x-vorbis+ogg" = [ "io.bassi.Amberol.desktop" ];
      "audio/mpeg" = [ "io.bassi.Amberol.desktop" ];
      "audio/wav" = [ "io.bassi.Amberol.desktop" ];
      "audio/x-aac" = [ "io.bassi.Amberol.desktop" ];
      "audio/x-aiff" = [ "io.bassi.Amberol.desktop" ];
      "audio/x-ape" = [ "io.bassi.Amberol.desktop" ];
      "audio/x-flac" = [ "io.bassi.Amberol.desktop" ];
      "audio/x-m4a" = [ "io.bassi.Amberol.desktop" ];
      "audio/x-m4b" = [ "io.bassi.Amberol.desktop" ];
      "audio/x-mp1" = [ "io.bassi.Amberol.desktop" ];
      "audio/x-mp2" = [ "io.bassi.Amberol.desktop" ];
      "audio/x-mp3" = [ "io.bassi.Amberol.desktop" ];
      "audio/x-mpg" = [ "io.bassi.Amberol.desktop" ];
      "audio/x-mpeg" = [ "io.bassi.Amberol.desktop" ];
      "audio/x-mpegurl" = [ "io.bassi.Amberol.desktop" ];
      "audio/x-opus+ogg" = [ "io.bassi.Amberol.desktop" ];
      "audio/x-pn-aiff" = [ "io.bassi.Amberol.desktop" ];
      "audio/x-pn-au" = [ "io.bassi.Amberol.desktop" ];
      "audio/x-pn-wav" = [ "io.bassi.Amberol.desktop" ];
      "audio/x-speex" = [ "io.bassi.Amberol.desktop" ];
      "audio/x-vorbis" = [ "io.bassi.Amberol.desktop" ];
      "audio/x-wavpack" = [ "io.bassi.Amberol.desktop" ];

      # Web
      "x-scheme-handler/http" = [ "zen.desktop" ];
      "text/html" = [ "zen.desktop" ];
      "application/xhtml+xml" = [ "zen.desktop" ];
      "x-scheme-handler/https" = [ "zen.desktop" ];

      # Images
      "image/jpeg" = [ "org.gnome.Loupe.desktop" ];
      "image/png" = [ "org.gnome.Loupe.desktop" ];
      "image/gif" = [ "org.gnome.Loupe.desktop" ];
      "image/webp" = [ "org.gnome.Loupe.desktop" ];
      "image/tiff" = [ "org.gnome.Loupe.desktop" ];
      "image/x-tga" = [ "org.gnome.Loupe.desktop" ];
      "image/vnd-ms.dds" = [ "org.gnome.Loupe.desktop" ];
      "image/x-dds" = [ "org.gnome.Loupe.desktop" ];
      "image/bmp" = [ "org.gnome.Loupe.desktop" ];
      "image/vnd.microsoft.icon" = [ "org.gnome.Loupe.desktop" ];
      "image/vnd.radiance" = [ "org.gnome.Loupe.desktop" ];
      "image/x-exr" = [ "org.gnome.Loupe.desktop" ];
      "image/x-portable-bitmap" = [ "org.gnome.Loupe.desktop" ];
      "image/x-portable-graymap" = [ "org.gnome.Loupe.desktop" ];
      "image/x-portable-pixmap" = [ "org.gnome.Loupe.desktop" ];
      "image/x-portable-anymap" = [ "org.gnome.Loupe.desktop" ];
      "image/x-qoi" = [ "org.gnome.Loupe.desktop" ];
      "image/qoi" = [ "org.gnome.Loupe.desktop" ];
      "image/svg+xml" = [ "org.gnome.Loupe.desktop" ];
      "image/svg+xml-compressed" = [ "org.gnome.Loupe.desktop" ];
      "image/avif" = [ "org.gnome.Loupe.desktop" ];
      "image/heic" = [ "org.gnome.Loupe.desktop" ];
      "image/jxl" = [ "org.gnome.Loupe.desktop" ];
      
      # PDF
      "application/pdf" = [ "org.gnome.Evince.desktop" ];
    };
    associations.added = {
      # Audio files	
      "audio/mpeg" = [ "io.bassi.Amberol.desktop" ];
      "audio/wav" = [ "io.bassi.Amberol.desktop" ];
      "audio/x-aac" = [ "io.bassi.Amberol.desktop" ];
      "audio/x-aiff" = [ "io.bassi.Amberol.desktop" ];
      "audio/x-ape" = [ "io.bassi.Amberol.desktop" ];
      "audio/x-flac" = [ "io.bassi.Amberol.desktop" ];
      "audio/x-m4a" = [ "io.bassi.Amberol.desktop" ];
      "audio/x-m4b" = [ "io.bassi.Amberol.desktop" ];
      "audio/x-mp1" = [ "io.bassi.Amberol.desktop" ];
      "audio/x-mp2" = [ "io.bassi.Amberol.desktop" ];
      "audio/x-mp3" = [ "io.bassi.Amberol.desktop" ];
      "audio/x-mpg" = [ "io.bassi.Amberol.desktop" ];
      "audio/x-mpeg" = [ "io.bassi.Amberol.desktop" ];
      "audio/x-mpegurl" = [ "io.bassi.Amberol.desktop" ];
      "audio/x-opus+ogg" = [ "io.bassi.Amberol.desktop" ];
      "audio/x-pn-aiff" = [ "io.bassi.Amberol.desktop" ];
      "audio/x-pn-au" = [ "io.bassi.Amberol.desktop" ];
      "audio/x-pn-wav" = [ "io.bassi.Amberol.desktop" ];
      "audio/x-speex" = [ "io.bassi.Amberol.desktop" ];
      "audio/x-vorbis" = [ "io.bassi.Amberol.desktop" ];
      "audio/x-wavpack" = [ "io.bassi.Amberol.desktop" ];
      
      # Web
      "x-scheme-handler/http" = [ "zen.desktop" ];
      "text/html" = [ "zen.desktop" ];
      "application/xhtml+xml" = [ "zen.desktop" ];
      "x-scheme-handler/https" = [ "zen.desktop" ];
      
      # Images
      "image/png" = [ "org.gnome.Loupe.desktop" ];
      "image/gif" = [ "org.gnome.Loupe.desktop" ];
      "image/webp" = [ "org.gnome.Loupe.desktop" ];
      "image/tiff" = [ "org.gnome.Loupe.desktop" ];
      "image/x-tga" = [ "org.gnome.Loupe.desktop" ];
      "image/vnd-ms.dds" = [ "org.gnome.Loupe.desktop" ];
      "image/x-dds" = [ "org.gnome.Loupe.desktop" ];
      "image/bmp" = [ "org.gnome.Loupe.desktop" ];
      "image/vnd.microsoft.icon" = [ "org.gnome.Loupe.desktop" ];
      "image/vnd.radiance" = [ "org.gnome.Loupe.desktop" ];
      "image/x-exr" = [ "org.gnome.Loupe.desktop" ];
      "image/x-portable-bitmap" = [ "org.gnome.Loupe.desktop" ];
      "image/x-portable-graymap" = [ "org.gnome.Loupe.desktop" ];
      "image/x-portable-pixmap" = [ "org.gnome.Loupe.desktop" ];
      "image/x-portable-anymap" = [ "org.gnome.Loupe.desktop" ];
      "image/x-qoi" = [ "org.gnome.Loupe.desktop" ];
      "image/qoi" = [ "org.gnome.Loupe.desktop" ];
      "image/svg+xml" = [ "org.gnome.Loupe.desktop" ];
      "image/svg+xml-compressed" = [ "org.gnome.Loupe.desktop" ];
      "image/avif" = [ "org.gnome.Loupe.desktop" ];
      "image/heic" = [ "org.gnome.Loupe.desktop" ];
      "image/jxl" = [ "org.gnome.Loupe.desktop" ];
      
      # PDF
      "application/pdf" = [ "org.gnome.Evince.desktop" ];
    };
  };
  # Need to force this for some reason to get Home Manager to not fail to start
  # Double check in future to see if this can be removed...
  # For now, just make sure to update this file with any new default apps
  # using "cat ~/.config/mimeapps.list" after making a change, or by
  # manually checking the desired mimetype and .desktop file name
  xdg.configFile."mimeapps.list".force = true;
}
