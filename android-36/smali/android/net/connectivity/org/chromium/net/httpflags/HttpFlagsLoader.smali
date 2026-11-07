.class public final Landroid/net/connectivity/org/chromium/net/httpflags/HttpFlagsLoader;
.super Ljava/lang/Object;
.source "HttpFlagsLoader.java"


# static fields
.field static final blacklist FLAGS_FILE_DIR_NAME:Ljava/lang/String; = "app_httpflags"

.field static final blacklist FLAGS_FILE_NAME:Ljava/lang/String; = "flags.binarypb"

.field static final blacklist FLAGS_FILE_PROVIDER_INTENT_ACTION:Ljava/lang/String; = "android.net.http.FLAGS_FILE_PROVIDER"

.field private static final blacklist TAG:Ljava/lang/String; = "HttpFlagsLoader"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getFlagsFileFromProvider(Landroid/content/pm/ApplicationInfo;)Ljava/io/File;
    .registers 5
    .param p0, "providerApplicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 119
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    .line 122
    nop

    .line 123
    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 124
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "app_httpflags"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "flags.binarypb"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 119
    return-object v0
.end method

.method private static blacklist getProviderApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 95
    nop

    .line 96
    const-string v0, "HttpFlagsLoader#getProviderApplicationInfo"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 97
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    nop

    .line 98
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.http.FLAGS_FILE_PROVIDER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    const/high16 v3, 0x100000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 106
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v1, :cond_2a

    .line 107
    const-string v2, "HttpFlagsLoader"

    const-string v3, "Unable to resolve the HTTP flags file provider package. This is expected if the host system is not set up to provide HTTP flags."

    invoke-static {v2, v3}, Landroid/net/connectivity/org/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_34

    .line 111
    nop

    .line 115
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 111
    :cond_28
    const/4 v2, 0x0

    return-object v2

    .line 114
    :cond_2a
    :try_start_2a
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_34

    .line 115
    if-eqz v0, :cond_33

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 114
    :cond_33
    return-object v2

    .line 95
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :catchall_34
    move-exception v1

    if-eqz v0, :cond_3f

    :try_start_37
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3b

    goto :goto_3f

    :catchall_3b
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3f
    :goto_3f
    throw v1
.end method

.method public static blacklist load(Landroid/content/Context;)Landroid/net/connectivity/org/chromium/net/httpflags/Flags;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .line 72
    const-string v0, "HttpFlagsLoader"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/HttpFlagsLoader;->getProviderApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 73
    .local v2, "providerApplicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v2, :cond_a

    return-object v1

    .line 74
    :cond_a
    const-string v3, "Found application exporting HTTP flags: %s"

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v3, v4}, Landroid/net/connectivity/org/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-static {v2}, Landroid/net/connectivity/org/chromium/net/httpflags/HttpFlagsLoader;->getFlagsFileFromProvider(Landroid/content/pm/ApplicationInfo;)Ljava/io/File;

    move-result-object v3

    .line 80
    .local v3, "flagsFile":Ljava/io/File;
    const-string v4, "HTTP flags file path: %s"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v4, v5}, Landroid/net/connectivity/org/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    invoke-static {v3}, Landroid/net/connectivity/org/chromium/net/httpflags/HttpFlagsLoader;->loadFlagsFile(Ljava/io/File;)Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    move-result-object v4

    .line 83
    .local v4, "flags":Landroid/net/connectivity/org/chromium/net/httpflags/Flags;
    if-nez v4, :cond_2d

    return-object v1

    .line 84
    :cond_2d
    const-string v5, "Successfully loaded HTTP flags: %s"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v0, v5, v6}, Landroid/net/connectivity/org/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_36
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_36} :catch_37

    .line 86
    return-object v4

    .line 87
    .end local v2    # "providerApplicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "flagsFile":Ljava/io/File;
    .end local v4    # "flags":Landroid/net/connectivity/org/chromium/net/httpflags/Flags;
    :catch_37
    move-exception v2

    .line 88
    .local v2, "exception":Ljava/lang/RuntimeException;
    const-string v3, "Unable to load HTTP flags file"

    invoke-static {v0, v3, v2}, Landroid/net/connectivity/org/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    return-object v1
.end method

.method private static blacklist loadFlagsFile(Ljava/io/File;)Landroid/net/connectivity/org/chromium/net/httpflags/Flags;
    .registers 6
    .param p0, "file"    # Ljava/io/File;

    .line 131
    const-string v0, "HttpFlagsLoader#loadFlagsFile"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 132
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_6
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_b} :catch_2d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_24
    .catchall {:try_start_6 .. :try_end_b} :catchall_22

    .line 133
    .local v1, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_b
    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->parseDelimitedFrom(Ljava/io/InputStream;)Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    move-result-object v2
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_18

    .line 134
    :try_start_f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_12} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_24
    .catchall {:try_start_f .. :try_end_12} :catchall_22

    .line 144
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 133
    :cond_17
    return-object v2

    .line 132
    :catchall_18
    move-exception v2

    :try_start_19
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception v3

    :try_start_1e
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "file":Ljava/io/File;
    :goto_21
    throw v2
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_22} :catch_2d
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_22} :catch_24
    .catchall {:try_start_1e .. :try_end_22} :catchall_22

    .line 131
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "file":Ljava/io/File;
    :catchall_22
    move-exception v1

    goto :goto_41

    .line 141
    :catch_24
    move-exception v1

    .line 142
    .local v1, "exception":Ljava/io/IOException;
    :try_start_25
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unable to read HTTP flags file"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "file":Ljava/io/File;
    throw v2

    .line 134
    .end local v1    # "exception":Ljava/io/IOException;
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "file":Ljava/io/File;
    :catch_2d
    move-exception v1

    .line 135
    .local v1, "exception":Ljava/io/FileNotFoundException;
    const-string v2, "HttpFlagsLoader"

    const-string v3, "HTTP flags file `%s` is missing. This is expected if HTTP flags functionality is currently disabled in the host system."

    .line 139
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 135
    invoke-static {v2, v3, v4}, Landroid/net/connectivity/org/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_39
    .catchall {:try_start_25 .. :try_end_39} :catchall_22

    .line 140
    nop

    .line 144
    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 140
    :cond_3f
    const/4 v2, 0x0

    return-object v2

    .line 131
    .end local v1    # "exception":Ljava/io/FileNotFoundException;
    :goto_41
    if-eqz v0, :cond_4b

    :try_start_43
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    goto :goto_4b

    :catchall_47
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4b
    :goto_4b
    throw v1
.end method
