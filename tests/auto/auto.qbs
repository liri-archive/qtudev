import qbs 1.0
import qbs.FileInfo

Project {
    name: "Autotests"

    references: [
        "udev/udev.qbs",
    ]

    AutotestRunner {
        Depends { name: "lirideployment" }

        builtByDefault: project.autotestEnabled
        name: "qtudev-autotest"
        arguments: project.autotestArguments
        wrapper: project.autotestWrapper
        environment: {
            var env = base;
            env.push("LD_LIBRARY_PATH=" + FileInfo.joinPaths(qbs.installRoot, qbs.installPrefix, lirideployment.libDir));

            var found = false;
            for (var i in env) {
                if (env[i].startsWith("XDG_RUNTIME_DIR=")) {
                    found = true;
                    break;
                }
            }
            if (!found)
                env.push("XDG_RUNTIME_DIR=/tmp");

            return env;
        }
    }
}
