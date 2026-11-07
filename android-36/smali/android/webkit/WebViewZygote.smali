.class public Landroid/webkit/WebViewZygote;
.super Ljava/lang/Object;
.source "WebViewZygote.java"


# static fields
.field private static final greylist-max-o LOGTAG:Ljava/lang/String; = "WebViewZygote"

.field private static final greylist-max-o sLock:Ljava/lang/Object;

.field private static greylist-max-o sPackage:Landroid/content/pm/PackageInfo;

.field private static greylist-max-o sZygote:Landroid/os/ChildZygoteProcess;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o connectToZygoteIfNeededLocked()V
    .registers 15

    .line 96
    sget-object v0, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    if-eqz v0, :cond_5

    .line 97
    return-void

    .line 100
    :cond_5
    sget-object v0, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    const-string v1, "WebViewZygote"

    if-nez v0, :cond_11

    .line 101
    const-string v0, "Cannot connect to zygote, no package specified"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void

    .line 106
    :cond_11
    :try_start_11
    sget-object v0, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    move-object v10, v0

    .line 107
    .local v10, "abi":Ljava/lang/String;
    sget-object v0, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/internal/os/Zygote;->getMemorySafetyRuntimeFlagsForSecondaryZygote(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;)I

    move-result v8

    .line 109
    .local v8, "runtimeFlags":I
    sget-object v0, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 110
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v7

    .line 111
    .local v7, "sharedAppGid":[I
    sget-object v2, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    const-string v3, "com.android.internal.os.WebViewZygoteInit"

    const-string/jumbo v4, "webview_zygote"

    const-string/jumbo v9, "webview_zygote"

    const-string v0, ","

    sget-object v5, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 120
    invoke-static {v0, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 111
    const/16 v5, 0x41d

    const/16 v6, 0x41d

    const/4 v12, 0x0

    const v13, 0x182b8

    const v14, 0x7fffffff

    invoke-virtual/range {v2 .. v14}, Landroid/os/ZygoteProcess;->startChildZygote(Ljava/lang/String;Ljava/lang/String;II[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/os/ChildZygoteProcess;

    move-result-object v0

    sput-object v0, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    .line 124
    sget-object v0, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    invoke-virtual {v0}, Landroid/os/ChildZygoteProcess;->getPrimarySocketAddress()Landroid/net/LocalSocketAddress;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ZygoteProcess;->waitForConnectionToZygote(Landroid/net/LocalSocketAddress;)V

    .line 125
    sget-object v0, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    sget-object v2, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2, v10}, Landroid/os/ChildZygoteProcess;->preloadApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_68} :catch_6a

    .line 129
    nop

    .end local v7    # "sharedAppGid":[I
    .end local v8    # "runtimeFlags":I
    .end local v10    # "abi":Ljava/lang/String;
    goto :goto_73

    .line 126
    :catch_6a
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Error connecting to webview zygote"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    invoke-static {}, Landroid/webkit/WebViewZygote;->stopZygoteLocked()V

    .line 130
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_73
    return-void
.end method

.method public static greylist-max-o getPackageName()Ljava/lang/String;
    .registers 2

    .line 63
    sget-object v0, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_3
    sget-object v1, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 65
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public static greylist-max-o getProcess()Landroid/os/ZygoteProcess;
    .registers 2

    .line 54
    sget-object v0, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 55
    :try_start_3
    sget-object v1, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    if-eqz v1, :cond_b

    sget-object v1, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    monitor-exit v0

    return-object v1

    .line 57
    :cond_b
    invoke-static {}, Landroid/webkit/WebViewZygote;->connectToZygoteIfNeededLocked()V

    .line 58
    sget-object v1, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    monitor-exit v0

    return-object v1

    .line 59
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static greylist-max-o isMultiprocessEnabled()Z
    .registers 2

    .line 69
    sget-object v0, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_3
    sget-object v1, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 71
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method static blacklist onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    .registers 3
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 75
    sget-object v0, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_3
    sput-object p0, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    .line 77
    invoke-static {}, Landroid/webkit/WebViewZygote;->stopZygoteLocked()V

    .line 78
    monitor-exit v0

    .line 79
    return-void

    .line 78
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private static greylist-max-o stopZygoteLocked()V
    .registers 1

    .line 83
    sget-object v0, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    if-eqz v0, :cond_15

    .line 88
    sget-object v0, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    invoke-virtual {v0}, Landroid/os/ChildZygoteProcess;->close()V

    .line 89
    sget-object v0, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    invoke-virtual {v0}, Landroid/os/ChildZygoteProcess;->getPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 90
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    .line 92
    :cond_15
    return-void
.end method
