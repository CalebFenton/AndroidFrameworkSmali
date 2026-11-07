.class public Landroid/os/Process;
.super Ljava/lang/Object;
.source "Process.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Process$ProcessStartResult;
    }
.end annotation


# static fields
.field public static final greylist-max-o AUDIOSERVER_UID:I = 0x411

.field public static final whitelist BLUETOOTH_UID:I = 0x3ea

.field public static final greylist-max-o CAMERASERVER_UID:I = 0x417

.field public static final blacklist CLAT_UID:I = 0x405

.field public static final blacklist CREDSTORE_UID:I = 0x434

.field public static final blacklist DNS_TETHER_UID:I = 0x41c

.field public static final greylist-max-r DRM_UID:I = 0x3fb

.field public static final blacklist EXTERNAL_STORAGE_GID:I = 0x435

.field public static final blacklist EXT_DATA_RW_GID:I = 0x436

.field public static final blacklist EXT_OBB_RW_GID:I = 0x437

.field public static final greylist-max-o FIRST_APPLICATION_CACHE_GID:I = 0x4e20

.field public static final whitelist FIRST_APPLICATION_UID:I = 0x2710

.field public static final blacklist FIRST_APP_ZYGOTE_ISOLATED_UID:I = 0x15f90

.field public static final greylist-max-r FIRST_ISOLATED_UID:I = 0x182b8

.field public static final blacklist FIRST_SDK_SANDBOX_UID:I = 0x4e20

.field public static final greylist-max-o FIRST_SHARED_APPLICATION_GID:I = 0xc350

.field public static final blacklist FSVERITY_CERT_UID:I = 0x433

.field public static final greylist-max-o INCIDENTD_UID:I = 0x42b

.field public static final blacklist INET_GID:I = 0xbbb

.field public static final whitelist INVALID_PID:I = -0x1

.field public static final whitelist INVALID_UID:I = -0x1

.field public static final greylist-max-o KEYSTORE_UID:I = 0x3f9

.field public static final greylist-max-o LAST_APPLICATION_CACHE_GID:I = 0x752f

.field public static final whitelist LAST_APPLICATION_UID:I = 0x4e1f

.field public static final blacklist LAST_APP_ZYGOTE_ISOLATED_UID:I = 0x182b7

.field public static final greylist-max-r LAST_ISOLATED_UID:I = 0x1869f

.field public static final blacklist LAST_SDK_SANDBOX_UID:I = 0x752f

.field public static final greylist-max-o LAST_SHARED_APPLICATION_GID:I = 0xea5f

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "Process"

.field public static final greylist-max-r LOG_UID:I = 0x3ef

.field public static final greylist-max-o MEDIA_RW_GID:I = 0x3ff

.field public static final greylist-max-r MEDIA_UID:I = 0x3f5

.field public static final blacklist NETWORK_STACK_UID:I = 0x431

.field public static final greylist-max-r NFC_UID:I = 0x403
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o NOBODY_UID:I = 0x270f

.field public static final blacklist NUM_UIDS_PER_APP_ZYGOTE:I = 0x64

.field public static final greylist-max-o OTA_UPDATE_UID:I = 0x425

.field public static final greylist-max-o PACKAGE_INFO_GID:I = 0x408

.field public static final whitelist PHONE_UID:I = 0x3e9

.field private static final blacklist PIDFD_SUPPORTED:I = 0x1

.field private static final blacklist PIDFD_UNKNOWN:I = 0x0

.field private static final blacklist PIDFD_UNSUPPORTED:I = 0x2

.field public static final greylist-max-o PROC_CHAR:I = 0x800

.field public static final greylist-max-r PROC_COMBINE:I = 0x100

.field public static final blacklist PROC_NEWLINE_TERM:I = 0xa

.field public static final greylist-max-r PROC_OUT_FLOAT:I = 0x4000

.field public static final greylist-max-r PROC_OUT_LONG:I = 0x2000

.field public static final greylist-max-r PROC_OUT_STRING:I = 0x1000

.field public static final greylist-max-r PROC_PARENS:I = 0x200

.field public static final greylist-max-r PROC_QUOTES:I = 0x400

.field public static final greylist-max-r PROC_SPACE_TERM:I = 0x20

.field public static final greylist-max-r PROC_TAB_TERM:I = 0x9

.field public static final greylist-max-r PROC_TERM_MASK:I = 0xff

.field public static final greylist-max-r PROC_ZERO_TERM:I = 0x0

.field public static final whitelist ROOT_UID:I = 0x0

.field public static final greylist-max-o SCHED_BATCH:I = 0x3

.field public static final greylist-max-o SCHED_FIFO:I = 0x1

.field public static final greylist-max-o SCHED_IDLE:I = 0x5

.field public static final greylist-max-o SCHED_OTHER:I = 0x0

.field public static final greylist-max-o SCHED_RESET_ON_FORK:I = 0x40000000

.field public static final greylist-max-o SCHED_RR:I = 0x2

.field public static final blacklist SDCARD_RW_GID:I = 0x3f7

.field public static final blacklist SDK_SANDBOX_VIRTUAL_UID:I = 0x442

.field public static final greylist-max-o SE_UID:I = 0x42c

.field public static final greylist-max-o SHARED_RELRO_UID:I = 0x40d

.field public static final greylist-max-o SHARED_USER_GID:I = 0x270d

.field public static final whitelist SHELL_UID:I = 0x7d0

.field public static final blacklist SIGNAL_DEFAULT:I = 0x0

.field public static final whitelist SIGNAL_KILL:I = 0x9

.field public static final whitelist SIGNAL_QUIT:I = 0x3

.field public static final whitelist SIGNAL_USR1:I = 0xa

.field public static final blacklist STATSD_UID:I = 0x42a

.field public static final whitelist SYSTEM_UID:I = 0x3e8

.field public static final greylist-max-o THREAD_GROUP_AUDIO_APP:I = 0x3

.field public static final greylist-max-o THREAD_GROUP_AUDIO_SYS:I = 0x4

.field public static final blacklist THREAD_GROUP_BACKGROUND:I = 0x0

.field public static final greylist-max-o THREAD_GROUP_DEFAULT:I = -0x1

.field public static final greylist-max-o THREAD_GROUP_FOREGROUND:I = 0x1

.field public static final blacklist THREAD_GROUP_FOREGROUND_WINDOW:I = 0x8

.field public static final greylist-max-o THREAD_GROUP_RESTRICTED:I = 0x7

.field public static final greylist-max-o THREAD_GROUP_RT_APP:I = 0x6

.field public static final greylist-max-o THREAD_GROUP_SYSTEM:I = 0x2

.field public static final greylist-max-o THREAD_GROUP_TOP_APP:I = 0x5

.field public static final whitelist THREAD_PRIORITY_AUDIO:I = -0x10

.field public static final whitelist THREAD_PRIORITY_BACKGROUND:I = 0xa

.field public static final whitelist THREAD_PRIORITY_DEFAULT:I = 0x0

.field public static final whitelist THREAD_PRIORITY_DISPLAY:I = -0x4

.field public static final whitelist THREAD_PRIORITY_FOREGROUND:I = -0x2

.field public static final whitelist THREAD_PRIORITY_LESS_FAVORABLE:I = 0x1

.field public static final whitelist THREAD_PRIORITY_LOWEST:I = 0x13

.field public static final whitelist THREAD_PRIORITY_MORE_FAVORABLE:I = -0x1

.field public static final blacklist THREAD_PRIORITY_TOP_APP_BOOST:I = -0xa

.field public static final whitelist THREAD_PRIORITY_URGENT_AUDIO:I = -0x13

.field public static final whitelist THREAD_PRIORITY_URGENT_DISPLAY:I = -0x8

.field public static final whitelist THREAD_PRIORITY_VIDEO:I = -0xa

.field public static final blacklist UWB_UID:I = 0x43b

.field public static final greylist-max-r VPN_UID:I = 0x3f8
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o WEBVIEW_ZYGOTE_UID:I = 0x41d

.field public static final whitelist WIFI_UID:I = 0x3f2

.field public static final blacklist ZYGOTE_POLICY_FLAG_BATCH_LAUNCH:I = 0x2

.field public static final blacklist ZYGOTE_POLICY_FLAG_EMPTY:I = 0x0

.field public static final blacklist ZYGOTE_POLICY_FLAG_LATENCY_SENSITIVE:I = 0x1

.field public static final blacklist ZYGOTE_POLICY_FLAG_SYSTEM_PROCESS:I = 0x4

.field public static final blacklist ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

.field private static blacklist sArgV0:Ljava/lang/String;

.field private static blacklist sPidFdSupported:I

.field private static greylist-max-o sStartElapsedRealtime:J

.field private static blacklist sStartRequestedElapsedRealtime:J

.field private static blacklist sStartRequestedUptimeMillis:J

.field private static greylist-max-o sStartUptimeMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 636
    const/4 v0, 0x0

    sput v0, Landroid/os/Process;->sPidFdSupported:I

    .line 676
    new-instance v0, Landroid/os/ZygoteProcess;

    invoke-direct {v0}, Landroid/os/ZygoteProcess;-><init>()V

    sput-object v0, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist checkPid(I)V
    .registers 2
    .param p0, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 1420
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/Process;->sendSignalThrows(II)V

    .line 1421
    return-void
.end method

.method public static final blacklist checkTid(II)V
    .registers 3
    .param p0, "tgid"    # I
    .param p1, "tid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 1399
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/Process;->sendTgSignalThrows(III)V

    .line 1400
    return-void
.end method

.method public static final native blacklist createProcessGroup(II)I
.end method

.method public static final native blacklist freezeCgroupUid(IZ)V
.end method

.method public static final blacklist getAdvertisedMem()J
    .registers 5

    .line 1470
    invoke-static {}, Landroid/sysprop/MemoryProperties;->memory_ddr_size()Ljava/util/Optional;

    move-result-object v0

    const-string v1, "0KB"

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1471
    .local v0, "formatSize":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/FileUtils;->parseSize(Ljava/lang/String;)J

    move-result-wide v1

    .line 1473
    .local v1, "memSize":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1f

    .line 1474
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/FileUtils;->roundStorageSize(J)J

    move-result-wide v3

    return-wide v3

    .line 1477
    :cond_1f
    return-wide v1
.end method

.method public static final whitelist getAppUidForSdkSandboxUid(I)I
    .registers 3
    .param p0, "uid"    # I

    .line 978
    invoke-static {p0}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 981
    add-int/lit16 v0, p0, -0x2710

    return v0

    .line 979
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input UID is not an SDK sandbox UID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final native whitelist getElapsedCpuTime()J
.end method

.method public static final native whitelist getExclusiveCores()[I
.end method

.method public static final native greylist getFreeMemory()J
.end method

.method public static final native whitelist getGidForName(Ljava/lang/String;)I
.end method

.method public static final greylist getParentPid(I)I
    .registers 6
    .param p0, "pid"    # I

    .line 1061
    const-string v0, "PPid:"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1062
    .local v0, "procStatusLabels":[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [J

    .line 1063
    .local v1, "procStatusValues":[J
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    .line 1064
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 1065
    aget-wide v2, v1, v4

    long-to-int v2, v2

    return v2
.end method

.method public static final native greylist getPids(Ljava/lang/String;[I)[I
.end method

.method public static final native greylist getPidsForCommands([Ljava/lang/String;)[I
.end method

.method public static final native greylist-max-o getProcessGroup(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native greylist getPss(I)J
.end method

.method public static final native blacklist getRss(I)[J
.end method

.method public static final native blacklist getSchedAffinity(I)[J
.end method

.method public static final whitelist getSdkSandboxUidForAppUid(I)I
    .registers 3
    .param p0, "uid"    # I

    .line 1010
    invoke-static {p0}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1013
    add-int/lit16 v0, p0, 0x2710

    return v0

    .line 1011
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input UID is not an app UID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist getStartElapsedRealtime()J
    .registers 2

    .line 801
    sget-wide v0, Landroid/os/Process;->sStartElapsedRealtime:J

    return-wide v0
.end method

.method public static whitelist getStartRequestedElapsedRealtime()J
    .registers 2

    .line 823
    sget-wide v0, Landroid/os/Process;->sStartRequestedElapsedRealtime:J

    return-wide v0
.end method

.method public static whitelist getStartRequestedUptimeMillis()J
    .registers 2

    .line 836
    sget-wide v0, Landroid/os/Process;->sStartRequestedUptimeMillis:J

    return-wide v0
.end method

.method public static whitelist getStartUptimeMillis()J
    .registers 2

    .line 810
    sget-wide v0, Landroid/os/Process;->sStartUptimeMillis:J

    return-wide v0
.end method

.method public static final greylist-max-o getThreadGroupLeader(I)I
    .registers 6
    .param p0, "tid"    # I

    .line 1076
    const-string v0, "Tgid:"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1077
    .local v0, "procStatusLabels":[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [J

    .line 1078
    .local v1, "procStatusValues":[J
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    .line 1079
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 1080
    aget-wide v2, v1, v4

    long-to-int v2, v2

    return v2
.end method

.method public static final native whitelist getThreadPriority(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public static final native blacklist getThreadScheduler(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public static final native greylist getTotalMemory()J
.end method

.method public static final native whitelist getUidForName(Ljava/lang/String;)I
.end method

.method public static final greylist getUidForPid(I)I
    .registers 6
    .param p0, "pid"    # I

    .line 1046
    const-string v0, "Uid:"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1047
    .local v0, "procStatusLabels":[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [J

    .line 1048
    .local v1, "procStatusValues":[J
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    .line 1049
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 1050
    aget-wide v2, v1, v4

    long-to-int v2, v2

    return v2
.end method

.method public static final whitelist is64Bit()Z
    .registers 1

    .line 853
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->is64Bit()Z

    move-result v0

    return v0
.end method

.method public static whitelist isApplicationUid(I)Z
    .registers 2
    .param p0, "uid"    # I

    .line 922
    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isCoreUid(I)Z
    .registers 2
    .param p0, "uid"    # I

    .line 911
    invoke-static {p0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    return v0
.end method

.method public static final whitelist isIsolated()Z
    .registers 1

    .line 930
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    return v0
.end method

.method public static final greylist isIsolated(I)Z
    .registers 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 942
    invoke-static {p0}, Landroid/os/Process;->isIsolatedUid(I)Z

    move-result v0

    return v0
.end method

.method public static final whitelist isIsolatedUid(I)Z
    .registers 2
    .param p0, "uid"    # I

    .line 950
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    .line 951
    const v0, 0x182b8

    if-lt p0, v0, :cond_e

    const v0, 0x1869f

    if-le p0, v0, :cond_18

    :cond_e
    const v0, 0x15f90

    if-lt p0, v0, :cond_1a

    const v0, 0x182b7

    if-gt p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public static final whitelist isSdkSandbox()Z
    .registers 1

    .line 1021
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    return v0
.end method

.method public static final whitelist isSdkSandboxUid(I)Z
    .registers 2
    .param p0, "uid"    # I

    .line 962
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    .line 963
    const/16 v0, 0x4e20

    if-lt p0, v0, :cond_e

    const/16 v0, 0x752f

    if-gt p0, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static final greylist-max-o isThreadInProcess(II)Z
    .registers 6
    .param p0, "tid"    # I
    .param p1, "pid"    # I

    .line 1655
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 1657
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v1, 0x0

    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/task/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Landroid/system/OsConstants;->F_OK:I

    invoke-static {v2, v3}, Landroid/system/Os;->access(Ljava/lang/String;I)Z

    move-result v2
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_28} :catch_3a
    .catchall {:try_start_5 .. :try_end_28} :catchall_35

    if-eqz v2, :cond_30

    .line 1658
    nop

    .line 1665
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1658
    const/4 v1, 0x1

    return v1

    .line 1660
    :cond_30
    nop

    .line 1665
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1660
    return v1

    .line 1665
    :catchall_35
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1666
    throw v1

    .line 1662
    :catch_3a
    move-exception v2

    .line 1663
    .local v2, "e":Ljava/lang/Exception;
    nop

    .line 1665
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1663
    return v1
.end method

.method public static final whitelist killProcess(I)V
    .registers 2
    .param p0, "pid"    # I

    .line 1377
    const/16 v0, 0x9

    invoke-static {p0, v0}, Landroid/os/Process;->sendSignal(II)V

    .line 1378
    return-void
.end method

.method public static final native greylist-max-o killProcessGroup(II)I
.end method

.method public static final greylist-max-o killProcessQuiet(I)V
    .registers 2
    .param p0, "pid"    # I

    .line 1450
    const/16 v0, 0x9

    invoke-static {p0, v0}, Landroid/os/Process;->sendSignalQuiet(II)V

    .line 1451
    return-void
.end method

.method public static final whitelist myPid()I
    .registers 1

    .line 862
    invoke-static {}, Landroid/system/Os;->getpid()I

    move-result v0

    return v0
.end method

.method public static final greylist myPpid()I
    .registers 1

    .line 871
    invoke-static {}, Landroid/system/Os;->getppid()I

    move-result v0

    return v0
.end method

.method public static whitelist myProcessName()Ljava/lang/String;
    .registers 1

    .line 1356
    sget-object v0, Landroid/os/Process;->sArgV0:Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist myProcessName$ravenwood()Ljava/lang/String;
    .registers 1

    .line 1362
    const-string/jumbo v0, "ravenwood"

    return-object v0
.end method

.method public static final whitelist myTid()I
    .registers 1

    .line 880
    invoke-static {}, Landroid/system/Os;->gettid()I

    move-result v0

    return v0
.end method

.method public static final whitelist myUid()I
    .registers 1

    .line 891
    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v0

    return v0
.end method

.method public static whitelist myUserHandle()Landroid/os/UserHandle;
    .registers 1

    .line 902
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method private static native blacklist nativePidFdOpen(II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public static blacklist openPidFd(II)Ljava/io/FileDescriptor;
    .registers 4
    .param p0, "pid"    # I
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1774
    invoke-static {}, Landroid/os/Process;->supportsPidFd()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1775
    const/4 v0, 0x0

    return-object v0

    .line 1777
    :cond_8
    if-nez p1, :cond_21

    .line 1781
    :try_start_a
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 1782
    .local v0, "pidfd":Ljava/io/FileDescriptor;
    invoke-static {p0, p1}, Landroid/os/Process;->nativePidFdOpen(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/FileDescriptor;->setInt$(I)V
    :try_end_16
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_16} :catch_17

    .line 1783
    return-object v0

    .line 1784
    .end local v0    # "pidfd":Ljava/io/FileDescriptor;
    :catch_17
    move-exception v0

    .line 1785
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    .line 1786
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1787
    throw v1

    .line 1778
    .end local v0    # "e":Landroid/system/ErrnoException;
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static final native greylist parseProcLine([BII[I[Ljava/lang/String;[J[F)Z
.end method

.method public static final native greylist readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z
.end method

.method public static final native greylist readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V
.end method

.method public static final native greylist-max-o removeAllProcessGroups()V
.end method

.method public static final native whitelist sendSignal(II)V
.end method

.method public static final native greylist-max-p sendSignalQuiet(II)V
.end method

.method private static native blacklist sendSignalThrows(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation
.end method

.method public static final native blacklist sendSignalToProcessGroup(III)Z
.end method

.method private static native blacklist sendTgSignalThrows(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation
.end method

.method public static setArgV0(Ljava/lang/String;)V
    .registers 1
    .param p0, "text"    # Ljava/lang/String;

    .line 1339
    sput-object p0, Landroid/os/Process;->sArgV0:Ljava/lang/String;

    .line 1340
    invoke-static {p0}, Landroid/os/Process;->setArgV0Native(Ljava/lang/String;)V

    .line 1341
    invoke-static {p0}, Ldalvik/system/VMDebug;->setCurrentProcessName(Ljava/lang/String;)V

    .line 1342
    return-void
.end method

.method private static native blacklist setArgV0Native(Ljava/lang/String;)V
.end method

.method public static final native greylist-max-o setCanSelfBackground(Z)V
.end method

.method public static final native greylist-max-o setGid(I)I
.end method

.method public static final native blacklist setProcessFrozen(IIZ)V
.end method

.method public static final native greylist setProcessGroup(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final blacklist setStartTimes(JJJJ)V
    .registers 8
    .param p0, "elapsedRealtime"    # J
    .param p2, "uptimeMillis"    # J
    .param p4, "startRequestedElapsedRealtime"    # J
    .param p6, "startRequestedUptime"    # J

    .line 842
    sput-wide p0, Landroid/os/Process;->sStartElapsedRealtime:J

    .line 843
    sput-wide p2, Landroid/os/Process;->sStartUptimeMillis:J

    .line 844
    sput-wide p4, Landroid/os/Process;->sStartRequestedElapsedRealtime:J

    .line 845
    sput-wide p6, Landroid/os/Process;->sStartRequestedUptimeMillis:J

    .line 846
    return-void
.end method

.method public static final native greylist-max-o setThreadGroup(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native greylist-max-o setThreadGroupAndCpuset(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native whitelist setThreadPriority(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native whitelist setThreadPriority(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method private static blacklist setThreadPriority$ravenwood(I)V
    .registers 2
    .param p0, "priority"    # I

    .line 1256
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0, p0}, Landroid/os/Process;->setThreadPriority(II)V

    .line 1257
    return-void
.end method

.method public static final native greylist-max-o setThreadScheduler(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public static final native greylist-max-o setUid(I)I
.end method

.method public static blacklist start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .registers 48
    .param p0, "processClass"    # Ljava/lang/String;
    .param p1, "niceName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .param p4, "gids"    # [I
    .param p5, "runtimeFlags"    # I
    .param p6, "mountExternal"    # I
    .param p7, "targetSdkVersion"    # I
    .param p8, "seInfo"    # Ljava/lang/String;
    .param p9, "abi"    # Ljava/lang/String;
    .param p10, "instructionSet"    # Ljava/lang/String;
    .param p11, "appDataDir"    # Ljava/lang/String;
    .param p12, "invokeWith"    # Ljava/lang/String;
    .param p13, "packageName"    # Ljava/lang/String;
    .param p14, "zygotePolicyFlags"    # I
    .param p15, "isTopApp"    # Z
    .param p16, "disabledCompatChanges"    # [J
    .param p19, "bindMountAppsData"    # Z
    .param p20, "bindMountAppStorageDirs"    # Z
    .param p21, "bindMountSystemOverrides"    # Z
    .param p22, "zygoteArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II[IIII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ[J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;ZZZ[",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/Process$ProcessStartResult;"
        }
    .end annotation

    .line 755
    .local p17, "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .local p18, "whitelistedDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    sget-object v1, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move/from16 v16, p14

    move/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move-object/from16 v20, p18

    move/from16 v21, p19

    move/from16 v22, p20

    move/from16 v23, p21

    move-object/from16 v24, p22

    invoke-virtual/range {v1 .. v24}, Landroid/os/ZygoteProcess;->start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist startWebView(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[J[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .registers 41
    .param p0, "processClass"    # Ljava/lang/String;
    .param p1, "niceName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .param p4, "gids"    # [I
    .param p5, "runtimeFlags"    # I
    .param p6, "mountExternal"    # I
    .param p7, "targetSdkVersion"    # I
    .param p8, "seInfo"    # Ljava/lang/String;
    .param p9, "abi"    # Ljava/lang/String;
    .param p10, "instructionSet"    # Ljava/lang/String;
    .param p11, "appDataDir"    # Ljava/lang/String;
    .param p12, "invokeWith"    # Ljava/lang/String;
    .param p13, "packageName"    # Ljava/lang/String;
    .param p14, "disabledCompatChanges"    # [J
    .param p15, "zygoteArgs"    # [Ljava/lang/String;

    .line 780
    invoke-static {}, Landroid/webkit/WebViewZygote;->getProcess()Landroid/os/ZygoteProcess;

    move-result-object v1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v18, p14

    move-object/from16 v24, p15

    invoke-virtual/range {v1 .. v24}, Landroid/os/ZygoteProcess;->start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist supportsPidFd()Z
    .registers 6

    .line 1744
    sget v0, Landroid/os/Process;->sPidFdSupported:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_44

    .line 1745
    const/4 v0, -0x1

    .line 1747
    .local v0, "fd":I
    :try_start_7
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3, v1}, Landroid/os/Process;->nativePidFdOpen(II)I

    move-result v3

    move v0, v3

    .line 1748
    sput v2, Landroid/os/Process;->sPidFdSupported:I
    :try_end_12
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_12} :catch_22
    .catchall {:try_start_7 .. :try_end_12} :catchall_20

    .line 1753
    if-ltz v0, :cond_44

    .line 1754
    new-instance v3, Ljava/io/FileDescriptor;

    invoke-direct {v3}, Ljava/io/FileDescriptor;-><init>()V

    .line 1755
    .local v3, "f":Ljava/io/FileDescriptor;
    :goto_19
    invoke-virtual {v3, v0}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 1756
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 1757
    .end local v3    # "f":Ljava/io/FileDescriptor;
    goto :goto_44

    .line 1753
    :catchall_20
    move-exception v1

    goto :goto_36

    .line 1749
    :catch_22
    move-exception v3

    .line 1750
    .local v3, "e":Landroid/system/ErrnoException;
    :try_start_23
    iget v4, v3, Landroid/system/ErrnoException;->errno:I

    sget v5, Landroid/system/OsConstants;->ENOSYS:I

    if-eq v4, v5, :cond_2b

    .line 1751
    move v4, v2

    goto :goto_2c

    :cond_2b
    const/4 v4, 0x2

    :goto_2c
    sput v4, Landroid/os/Process;->sPidFdSupported:I
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_20

    .line 1753
    .end local v3    # "e":Landroid/system/ErrnoException;
    if-ltz v0, :cond_44

    .line 1754
    new-instance v3, Ljava/io/FileDescriptor;

    invoke-direct {v3}, Ljava/io/FileDescriptor;-><init>()V

    goto :goto_19

    .line 1753
    :goto_36
    if-ltz v0, :cond_43

    .line 1754
    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    .line 1755
    .local v2, "f":Ljava/io/FileDescriptor;
    invoke-virtual {v2, v0}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 1756
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 1758
    .end local v2    # "f":Ljava/io/FileDescriptor;
    :cond_43
    throw v1

    .line 1760
    .end local v0    # "fd":I
    :cond_44
    :goto_44
    sget v0, Landroid/os/Process;->sPidFdSupported:I

    if-ne v0, v2, :cond_49

    move v1, v2

    :cond_49
    return v1
.end method

.method public static final whitelist supportsProcesses()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1324
    const/4 v0, 0x1

    return v0
.end method

.method public static final blacklist toSdkSandboxUid(I)I
    .registers 2
    .param p0, "uid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 995
    add-int/lit16 v0, p0, 0x2710

    return v0
.end method

.method public static blacklist waitForProcessDeath(II)V
    .registers 12
    .param p0, "pid"    # I
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 1679
    invoke-static {}, Landroid/os/Process;->supportsPidFd()Z

    move-result v0

    .line 1680
    .local v0, "fallback":Z
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_6d

    .line 1681
    const/4 v3, 0x0

    .line 1683
    .local v3, "pidfd":Ljava/io/FileDescriptor;
    :try_start_9
    invoke-static {p0, v2}, Landroid/os/Process;->nativePidFdOpen(II)I

    move-result v4

    .line 1684
    .local v4, "fd":I
    if-ltz v4, :cond_19

    .line 1685
    new-instance v5, Ljava/io/FileDescriptor;

    invoke-direct {v5}, Ljava/io/FileDescriptor;-><init>()V

    move-object v3, v5

    .line 1686
    invoke-virtual {v3, v4}, Ljava/io/FileDescriptor;->setInt$(I)V

    goto :goto_1a

    .line 1688
    :cond_19
    const/4 v0, 0x1

    .line 1690
    :goto_1a
    if-eqz v3, :cond_4e

    .line 1691
    new-array v5, v1, [Landroid/system/StructPollfd;

    new-instance v6, Landroid/system/StructPollfd;

    invoke-direct {v6}, Landroid/system/StructPollfd;-><init>()V

    aput-object v6, v5, v2

    .line 1694
    .local v5, "fds":[Landroid/system/StructPollfd;
    aget-object v6, v5, v2

    iput-object v3, v6, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 1695
    aget-object v6, v5, v2

    sget v7, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v7, v7

    iput-short v7, v6, Landroid/system/StructPollfd;->events:S

    .line 1696
    aget-object v6, v5, v2

    iput-short v2, v6, Landroid/system/StructPollfd;->revents:S

    .line 1697
    aget-object v6, v5, v2

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/system/StructPollfd;->userData:Ljava/lang/Object;

    .line 1698
    invoke-static {v5, p1}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I

    move-result v6
    :try_end_3d
    .catch Landroid/system/ErrnoException; {:try_start_9 .. :try_end_3d} :catch_56
    .catchall {:try_start_9 .. :try_end_3d} :catchall_54

    .line 1699
    .local v6, "res":I
    if-lez v6, :cond_45

    .line 1713
    if-eqz v3, :cond_44

    .line 1714
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 1700
    :cond_44
    return-void

    .line 1701
    :cond_45
    if-eqz v6, :cond_48

    goto :goto_4e

    .line 1702
    :cond_48
    :try_start_48
    new-instance v7, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v7}, Ljava/util/concurrent/TimeoutException;-><init>()V

    .end local v0    # "fallback":Z
    .end local v3    # "pidfd":Ljava/io/FileDescriptor;
    .end local p0    # "pid":I
    .end local p1    # "timeout":I
    throw v7
    :try_end_4e
    .catch Landroid/system/ErrnoException; {:try_start_48 .. :try_end_4e} :catch_56
    .catchall {:try_start_48 .. :try_end_4e} :catchall_54

    .line 1713
    .end local v4    # "fd":I
    .end local v5    # "fds":[Landroid/system/StructPollfd;
    .end local v6    # "res":I
    .restart local v0    # "fallback":Z
    .restart local v3    # "pidfd":Ljava/io/FileDescriptor;
    .restart local p0    # "pid":I
    .restart local p1    # "timeout":I
    :cond_4e
    :goto_4e
    if-eqz v3, :cond_6d

    .line 1714
    :goto_50
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    goto :goto_6d

    .line 1713
    :catchall_54
    move-exception v1

    goto :goto_67

    .line 1707
    :catch_56
    move-exception v4

    .line 1708
    .local v4, "e":Landroid/system/ErrnoException;
    :try_start_57
    iget v5, v4, Landroid/system/ErrnoException;->errno:I

    sget v6, Landroid/system/OsConstants;->EINTR:I

    if-eq v5, v6, :cond_61

    .line 1711
    const/4 v0, 0x1

    .line 1713
    .end local v4    # "e":Landroid/system/ErrnoException;
    if-eqz v3, :cond_6d

    .line 1714
    goto :goto_50

    .line 1709
    .restart local v4    # "e":Landroid/system/ErrnoException;
    :cond_61
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    .end local v0    # "fallback":Z
    .end local v3    # "pidfd":Ljava/io/FileDescriptor;
    .end local p0    # "pid":I
    .end local p1    # "timeout":I
    throw v1
    :try_end_67
    .catchall {:try_start_57 .. :try_end_67} :catchall_54

    .line 1713
    .end local v4    # "e":Landroid/system/ErrnoException;
    .restart local v0    # "fallback":Z
    .restart local v3    # "pidfd":Ljava/io/FileDescriptor;
    .restart local p0    # "pid":I
    .restart local p1    # "timeout":I
    :goto_67
    if-eqz v3, :cond_6c

    .line 1714
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 1716
    :cond_6c
    throw v1

    .line 1718
    .end local v3    # "pidfd":Ljava/io/FileDescriptor;
    :cond_6d
    :goto_6d
    if-eqz v0, :cond_95

    .line 1719
    if-gez p1, :cond_72

    goto :goto_73

    :cond_72
    move v1, v2

    .line 1720
    .local v1, "infinity":Z
    :goto_73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1721
    .local v3, "now":J
    int-to-long v5, p1

    add-long/2addr v5, v3

    .line 1722
    .local v5, "end":J
    :goto_79
    if-nez v1, :cond_7f

    cmp-long v7, v3, v5

    if-gez v7, :cond_95

    .line 1724
    :cond_7f
    :try_start_7f
    invoke-static {p0, v2}, Landroid/system/Os;->kill(II)V
    :try_end_82
    .catch Landroid/system/ErrnoException; {:try_start_7f .. :try_end_82} :catch_83

    .line 1729
    goto :goto_8b

    .line 1725
    :catch_83
    move-exception v7

    .line 1726
    .local v7, "e":Landroid/system/ErrnoException;
    iget v8, v7, Landroid/system/ErrnoException;->errno:I

    sget v9, Landroid/system/OsConstants;->ESRCH:I

    if-ne v8, v9, :cond_8b

    .line 1727
    return-void

    .line 1730
    .end local v7    # "e":Landroid/system/ErrnoException;
    :cond_8b
    :goto_8b
    const-wide/16 v7, 0x1

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 1731
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    goto :goto_79

    .line 1734
    .end local v1    # "infinity":Z
    .end local v3    # "now":J
    .end local v5    # "end":J
    :cond_95
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v1
.end method
