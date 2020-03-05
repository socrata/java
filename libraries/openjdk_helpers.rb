module Java
  module Cookbook
    module OpenJdkHelpers
      def default_openjdk_url(version)
        case version
        when '9'
          'https://download.java.net/java/GA/jdk9/9/binaries/openjdk-9_linux-x64_bin.tar.gz'
        when '10'
          'https://download.java.net/java/GA/jdk10/10/binaries/openjdk-10_linux-x64_bin.tar.gz'
        when '11'
          'https://download.java.net/java/ga/jdk11/openjdk-11_linux-x64_bin.tar.gz'
        when '12'
          'https://download.java.net/java/GA/jdk12/33/GPL/openjdk-12_linux-x64_bin.tar.gz'
        when '13'
          'https://download.java.net/java/GA/jdk13/5b8a42f3905b406298b72d750b6919f6/33/GPL/openjdk-13_linux-x64_bin.tar.gz'
        else
          Chef::Log.fatal('Version specified does not have a URL value set')
          raise 'No checksum value'
        end
      end

      def default_openjdk_checksum(version)
        case version
        when '9'
          'f908e31b6185e11b322825809172dcbb7ac0dce64061c9cf154cb1b0df884480'
        when '10'
          'c851df838a51af52517b74e3a4b251d90c54cf478a4ebed99e7285ef134c3435'
        when '11'
          '3784cfc4670f0d4c5482604c7c513beb1a92b005f569df9bf100e8bef6610f2e'
        when '12'
          'b43bc15f4934f6d321170419f2c24451486bc848a2179af5e49d10721438dd56'
        when '13'
          '5f547b8f0ffa7da517223f6f929a5055d749776b1878ccedbd6cc1334f4d6f4d'
        else
          Chef::Log.fatal('Version specified does not have a c value set')
          raise 'No checksum value'
        end
      end

      def default_openjdk_bin_cmds(version)
        case version
        when '9'
          %w(appletviewer jaotc jarsigner javac javah jcmd jdb jdeps jimage jjs jmap jps jshell
             jstat keytool pack200 rmic rmiregistry serialver tnameserv wsgen xjc idlj jar java
             javadoc javap jconsole jdeprscan jhsdb jinfo jlink jmod jrunscript jstack jstatd orbd
             policytool rmid schemagen servertool unpack200 wsimport)
        when '10'
          %w(appletviewer jaotc jarsigner javac javap jconsole jdeprscan jhsdb jinfo jlink jmod jrunscript
             jstack jstatd orbd rmic rmiregistry serialver tnameserv wsgen xjc idlj jar java javadoc jcmd jdb
             jdeps jimage jjs jmap jps jshell jstat keytool pack200 rmid schemagen servertool unpack200 wsimport)
        when '11'
          %w(jaotc jarsigner javac javap jconsole jdeprscan jhsdb jinfo jlink jmod jrunscript jstack jstatd pack200 rmid serialver
             jar java javadoc jcmd jdb jdeps jimage jjs jmap jps jshell jstat keytool rmic rmiregistry unpack200)
        when '12', '13'
          %w(jaotc jarsigner javac javap jconsole jdeprscan jfr jimage jjs jmap jps jshell jstat keytool rmic rmiregistry unpack200
             jar java javadoc jcmd jdb jdeps jhsdb jinfo jlink jmod jrunscript jstack jstatd pack200 rmid serialver)
        else
          Chef::Log.fatal('Version specified does not have a default set of bin_cmds')
        end
      end
    end
  end
end
