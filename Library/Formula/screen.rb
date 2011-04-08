require 'formula'

class Screen < Formula
  url 'http://www.opensource.apple.com/tarballs/screen/screen-16.tar.gz'
  homepage 'http://www.opensource.apple.com/tarballs/screen/'
  md5 '878cdeab5177bfb08c5c816f122661e8'
  version '4.00.03'

  def patches
    # Fix OSX screen to work with SSH
    DATA
  end

  def install
    Dir.chdir 'screen'
    system "./configure", "--disable-dependency-tracking",
                          "--mandir=#{man}",
                          "--infodir=#{info}",
                          "--prefix=#{prefix}"
    system "make install"
  end
end

__END__
--- a/screen/screen.c
+++ b/screen/screen.c
@@ -101,11 +101,6 @@
 
 #include "logfile.h"	/* islogfile, logfflush */
 
-#ifdef __APPLE__
-#include <vproc.h>
-#include <vproc_priv.h>
-#endif
-
 #ifdef DEBUG
 FILE *dfp;
 #endif
@@ -1226,11 +1221,6 @@ char **av;
   freopen("/dev/null", "w", stderr);
   debug("-- screen.back debug started\n");
 
-#ifdef __APPLE__
-	if (_vprocmgr_detach_from_console(0) != NULL)
-		errx(1, "can't detach from console");
-#endif
-
   /* 
    * This guarantees that the session owner is listed, even when we
    * start detached. From now on we should not refer to 'LoginName'
