.class public Landroid/os/Process;
.super Ljava/lang/Object;
.source "Process.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Process$ProcessStartResult;,
        Landroid/os/Process$ZygoteState;
    }
.end annotation


# static fields
.field public static final AUDIOSERVER_UID:I = 0x411

.field public static final BLUETOOTH_UID:I = 0x3ea

.field public static final CAMERASERVER_UID:I = 0x417

.field public static final DRM_UID:I = 0x3fb

.field public static final FIRST_APPLICATION_UID:I = 0x2710

.field public static final FIRST_ISOLATED_UID:I = 0x182b8

.field public static final FIRST_SHARED_APPLICATION_GID:I = 0xc350

.field public static final LAST_APPLICATION_UID:I = 0x4e1f

.field public static final LAST_ISOLATED_UID:I = 0x1869f

.field public static final LAST_SHARED_APPLICATION_GID:I = 0xea5f

.field private static final LOG_TAG:Ljava/lang/String; = "Process"

.field public static final LOG_UID:I = 0x3ef

.field public static final MEDIA_RW_GID:I = 0x3ff

.field public static final MEDIA_UID:I = 0x3f5

.field public static final NFC_UID:I = 0x403

.field public static final PACKAGE_INFO_GID:I = 0x408

.field public static final PHONE_UID:I = 0x3e9

.field public static final PROC_CHAR:I = 0x800

.field public static final PROC_COMBINE:I = 0x100

.field public static final PROC_OUT_FLOAT:I = 0x4000

.field public static final PROC_OUT_LONG:I = 0x2000

.field public static final PROC_OUT_STRING:I = 0x1000

.field public static final PROC_PARENS:I = 0x200

.field public static final PROC_QUOTES:I = 0x400

.field public static final PROC_SPACE_TERM:I = 0x20

.field public static final PROC_TAB_TERM:I = 0x9

.field public static final PROC_TERM_MASK:I = 0xff

.field public static final PROC_ZERO_TERM:I = 0x0

.field public static final ROOT_UID:I = 0x0

.field public static final SCHED_BATCH:I = 0x3

.field public static final SCHED_FIFO:I = 0x1

.field public static final SCHED_IDLE:I = 0x5

.field public static final SCHED_OTHER:I = 0x0

.field public static final SCHED_RESET_ON_FORK:I = 0x40000000

.field public static final SCHED_RR:I = 0x2

.field public static final SECONDARY_ZYGOTE_SOCKET:Ljava/lang/String; = "zygote_secondary"

.field public static final SHARED_RELRO_UID:I = 0x40d

.field public static final SHARED_USER_GID:I = 0x270d

.field public static final SHELL_UID:I = 0x7d0

.field public static final SIGNAL_KILL:I = 0x9

.field public static final SIGNAL_QUIT:I = 0x3

.field public static final SIGNAL_USR1:I = 0xa

.field public static final SYSTEM_UID:I = 0x3e8

.field public static final THREAD_GROUP_AUDIO_APP:I = 0x3

.field public static final THREAD_GROUP_AUDIO_SYS:I = 0x4

.field public static final THREAD_GROUP_BG_NONINTERACTIVE:I = 0x0

.field public static final THREAD_GROUP_DEFAULT:I = -0x1

.field private static final THREAD_GROUP_FOREGROUND:I = 0x1

.field public static final THREAD_GROUP_SYSTEM:I = 0x2

.field public static final THREAD_GROUP_TOP_APP:I = 0x5

.field public static final THREAD_PRIORITY_AUDIO:I = -0x10

.field public static final THREAD_PRIORITY_BACKGROUND:I = 0xa

.field public static final THREAD_PRIORITY_DEFAULT:I = 0x0

.field public static final THREAD_PRIORITY_DISPLAY:I = -0x4

.field public static final THREAD_PRIORITY_FOREGROUND:I = -0x2

.field public static final THREAD_PRIORITY_LESS_FAVORABLE:I = 0x1

.field public static final THREAD_PRIORITY_LOWEST:I = 0x13

.field public static final THREAD_PRIORITY_MORE_FAVORABLE:I = -0x1

.field public static final THREAD_PRIORITY_URGENT_AUDIO:I = -0x13

.field public static final THREAD_PRIORITY_URGENT_DISPLAY:I = -0x8

.field public static final VPN_UID:I = 0x3f8

.field public static final WIFI_UID:I = 0x3f2

.field static final ZYGOTE_RETRY_MILLIS:I = 0x1f4

.field public static final ZYGOTE_SOCKET:Ljava/lang/String; = "zygote"

.field static primaryZygoteState:Landroid/os/Process$ZygoteState;

.field private static sStartElapsedRealtime:J

.field private static sStartUptimeMillis:J

.field static secondaryZygoteState:Landroid/os/Process$ZygoteState;


# direct methods
.method static synthetic -wrap0(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "writer"    # Ljava/io/BufferedWriter;
    .param p1, "inputStream"    # Ljava/io/DataInputStream;

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/os/Process;->getAbiList(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static establishZygoteConnectionForAbi(Ljava/lang/String;)V
    .locals 4
    .param p0, "abi"    # Ljava/lang/String;

    #@0
    .prologue
    .line 749
    :try_start_0
    invoke-static {p0}, Landroid/os/Process;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/Process$ZygoteState;
    :try_end_0
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 747
    return-void

    #@4
    .line 750
    :catch_0
    move-exception v0

    #@5
    .line 751
    .local v0, "ex":Landroid/os/ZygoteStartFailedEx;
    new-instance v1, Ljava/lang/RuntimeException;

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "Unable to connect to zygote for abi: "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1e
    throw v1
.end method

.method private static getAbiList(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 4
    .param p0, "writer"    # Ljava/io/BufferedWriter;
    .param p1, "inputStream"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 543
    const-string/jumbo v2, "1"

    #@3
    invoke-virtual {p0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@6
    .line 545
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    #@9
    .line 547
    const-string/jumbo v2, "--query-abi-list"

    #@c
    invoke-virtual {p0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@f
    .line 548
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    #@12
    .line 549
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flush()V

    #@15
    .line 552
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    #@18
    move-result v1

    #@19
    .line 553
    .local v1, "numBytes":I
    new-array v0, v1, [B

    #@1b
    .line 554
    .local v0, "bytes":[B
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    #@1e
    .line 556
    new-instance v2, Ljava/lang/String;

    #@20
    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@22
    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@25
    return-object v2
.end method

.method public static final native getElapsedCpuTime()J
.end method

.method public static final native getExclusiveCores()[I
.end method

.method public static final native getFreeMemory()J
.end method

.method public static final native getGidForName(Ljava/lang/String;)I
.end method

.method public static final getParentPid(I)I
    .locals 5
    .param p0, "pid"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 924
    new-array v0, v3, [Ljava/lang/String;

    #@4
    const-string/jumbo v2, "PPid:"

    #@7
    aput-object v2, v0, v4

    #@9
    .line 925
    .local v0, "procStatusLabels":[Ljava/lang/String;
    new-array v1, v3, [J

    #@b
    .line 926
    .local v1, "procStatusValues":[J
    const-wide/16 v2, -0x1

    #@d
    aput-wide v2, v1, v4

    #@f
    .line 927
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "/proc/"

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    const-string/jumbo v3, "/status"

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    #@2d
    .line 928
    aget-wide v2, v1, v4

    #@2f
    long-to-int v2, v2

    #@30
    return v2
.end method

.method public static final native getPids(Ljava/lang/String;[I)[I
.end method

.method public static final native getPidsForCommands([Ljava/lang/String;)[I
.end method

.method public static final native getProcessGroup(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native getPss(I)J
.end method

.method public static final getStartElapsedRealtime()J
    .locals 2

    #@0
    .prologue
    .line 798
    sget-wide v0, Landroid/os/Process;->sStartElapsedRealtime:J

    #@2
    return-wide v0
.end method

.method public static final getStartUptimeMillis()J
    .locals 2

    #@0
    .prologue
    .line 805
    sget-wide v0, Landroid/os/Process;->sStartUptimeMillis:J

    #@2
    return-wide v0
.end method

.method public static final getThreadGroupLeader(I)I
    .locals 5
    .param p0, "tid"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 939
    new-array v0, v3, [Ljava/lang/String;

    #@4
    const-string/jumbo v2, "Tgid:"

    #@7
    aput-object v2, v0, v4

    #@9
    .line 940
    .local v0, "procStatusLabels":[Ljava/lang/String;
    new-array v1, v3, [J

    #@b
    .line 941
    .local v1, "procStatusValues":[J
    const-wide/16 v2, -0x1

    #@d
    aput-wide v2, v1, v4

    #@f
    .line 942
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "/proc/"

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    const-string/jumbo v3, "/status"

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    #@2d
    .line 943
    aget-wide v2, v1, v4

    #@2f
    long-to-int v2, v2

    #@30
    return v2
.end method

.method public static final native getThreadPriority(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public static final native getThreadScheduler(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public static final native getTotalMemory()J
.end method

.method public static final native getUidForName(Ljava/lang/String;)I
.end method

.method public static final getUidForPid(I)I
    .locals 5
    .param p0, "pid"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 910
    new-array v0, v3, [Ljava/lang/String;

    #@4
    const-string/jumbo v2, "Uid:"

    #@7
    aput-object v2, v0, v4

    #@9
    .line 911
    .local v0, "procStatusLabels":[Ljava/lang/String;
    new-array v1, v3, [J

    #@b
    .line 912
    .local v1, "procStatusValues":[J
    const-wide/16 v2, -0x1

    #@d
    aput-wide v2, v1, v4

    #@f
    .line 913
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "/proc/"

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    const-string/jumbo v3, "/status"

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    #@2d
    .line 914
    aget-wide v2, v1, v4

    #@2f
    long-to-int v2, v2

    #@30
    return v2
.end method

.method public static final is64Bit()Z
    .locals 1

    #@0
    .prologue
    .line 818
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->is64Bit()Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static isApplicationUid(I)Z
    .locals 1
    .param p0, "uid"    # I

    #@0
    .prologue
    .line 872
    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static final isIsolated()Z
    .locals 1

    #@0
    .prologue
    .line 880
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Landroid/os/Process;->isIsolated(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static final isIsolated(I)Z
    .locals 2
    .param p0, "uid"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 885
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    #@4
    move-result p0

    #@5
    .line 886
    const v1, 0x182b8

    #@8
    if-lt p0, v1, :cond_0

    #@a
    const v1, 0x1869f

    #@d
    if-gt p0, v1, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :cond_0
    return v0
.end method

.method public static final isThreadInProcess(II)Z
    .locals 5
    .param p0, "tid"    # I
    .param p1, "pid"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1295
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    #@4
    move-result-object v1

    #@5
    .line 1297
    .local v1, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v3, "/proc/"

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    const-string/jumbo v3, "/task/"

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    sget v3, Landroid/system/OsConstants;->F_OK:I

    #@26
    invoke-static {v2, v3}, Landroid/system/Os;->access(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_0

    #@2c
    .line 1298
    const/4 v2, 0x1

    #@2d
    .line 1305
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@30
    .line 1298
    return v2

    #@31
    .line 1305
    :cond_0
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@34
    .line 1300
    return v4

    #@35
    .line 1302
    :catch_0
    move-exception v0

    #@36
    .line 1305
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@39
    .line 1303
    return v4

    #@3a
    .line 1304
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    #@3b
    .line 1305
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@3e
    .line 1304
    throw v2
.end method

.method public static final killProcess(I)V
    .locals 1
    .param p0, "pid"    # I

    #@0
    .prologue
    .line 1165
    const/16 v0, 0x9

    #@2
    invoke-static {p0, v0}, Landroid/os/Process;->sendSignal(II)V

    #@5
    .line 1164
    return-void
.end method

.method public static final native killProcessGroup(II)I
.end method

.method public static final killProcessQuiet(I)V
    .locals 1
    .param p0, "pid"    # I

    #@0
    .prologue
    .line 1189
    const/16 v0, 0x9

    #@2
    invoke-static {p0, v0}, Landroid/os/Process;->sendSignalQuiet(II)V

    #@5
    .line 1188
    return-void
.end method

.method public static final myPid()I
    .locals 1

    #@0
    .prologue
    .line 826
    invoke-static {}, Landroid/system/Os;->getpid()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static final myPpid()I
    .locals 1

    #@0
    .prologue
    .line 834
    invoke-static {}, Landroid/system/Os;->getppid()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static final myTid()I
    .locals 1

    #@0
    .prologue
    .line 842
    invoke-static {}, Landroid/system/Os;->gettid()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static final myUid()I
    .locals 1

    #@0
    .prologue
    .line 852
    invoke-static {}, Landroid/system/Os;->getuid()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static myUserHandle()Landroid/os/UserHandle;
    .locals 1

    #@0
    .prologue
    .line 862
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    #@7
    move-result v0

    #@8
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method private static openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/Process$ZygoteState;
    .locals 4
    .param p0, "abi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    #@0
    .prologue
    .line 760
    sget-object v1, Landroid/os/Process;->primaryZygoteState:Landroid/os/Process$ZygoteState;

    #@2
    if-eqz v1, :cond_0

    #@4
    sget-object v1, Landroid/os/Process;->primaryZygoteState:Landroid/os/Process$ZygoteState;

    #@6
    invoke-virtual {v1}, Landroid/os/Process$ZygoteState;->isClosed()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 762
    :cond_0
    :try_start_0
    const-string/jumbo v1, "zygote"

    #@f
    invoke-static {v1}, Landroid/os/Process$ZygoteState;->connect(Ljava/lang/String;)Landroid/os/Process$ZygoteState;

    #@12
    move-result-object v1

    #@13
    sput-object v1, Landroid/os/Process;->primaryZygoteState:Landroid/os/Process$ZygoteState;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 768
    :cond_1
    sget-object v1, Landroid/os/Process;->primaryZygoteState:Landroid/os/Process$ZygoteState;

    #@17
    invoke-virtual {v1, p0}, Landroid/os/Process$ZygoteState;->matches(Ljava/lang/String;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 769
    sget-object v1, Landroid/os/Process;->primaryZygoteState:Landroid/os/Process$ZygoteState;

    #@1f
    return-object v1

    #@20
    .line 763
    :catch_0
    move-exception v0

    #@21
    .line 764
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Landroid/os/ZygoteStartFailedEx;

    #@23
    const-string/jumbo v2, "Error connecting to primary zygote"

    #@26
    invoke-direct {v1, v2, v0}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@29
    throw v1

    #@2a
    .line 773
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_2
    sget-object v1, Landroid/os/Process;->secondaryZygoteState:Landroid/os/Process$ZygoteState;

    #@2c
    if-eqz v1, :cond_3

    #@2e
    sget-object v1, Landroid/os/Process;->secondaryZygoteState:Landroid/os/Process$ZygoteState;

    #@30
    invoke-virtual {v1}, Landroid/os/Process$ZygoteState;->isClosed()Z

    #@33
    move-result v1

    #@34
    if-eqz v1, :cond_4

    #@36
    .line 775
    :cond_3
    :try_start_1
    const-string/jumbo v1, "zygote_secondary"

    #@39
    invoke-static {v1}, Landroid/os/Process$ZygoteState;->connect(Ljava/lang/String;)Landroid/os/Process$ZygoteState;

    #@3c
    move-result-object v1

    #@3d
    sput-object v1, Landroid/os/Process;->secondaryZygoteState:Landroid/os/Process$ZygoteState;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@3f
    .line 781
    :cond_4
    sget-object v1, Landroid/os/Process;->secondaryZygoteState:Landroid/os/Process$ZygoteState;

    #@41
    invoke-virtual {v1, p0}, Landroid/os/Process$ZygoteState;->matches(Ljava/lang/String;)Z

    #@44
    move-result v1

    #@45
    if-eqz v1, :cond_5

    #@47
    .line 782
    sget-object v1, Landroid/os/Process;->secondaryZygoteState:Landroid/os/Process$ZygoteState;

    #@49
    return-object v1

    #@4a
    .line 776
    :catch_1
    move-exception v0

    #@4b
    .line 777
    .restart local v0    # "ioe":Ljava/io/IOException;
    new-instance v1, Landroid/os/ZygoteStartFailedEx;

    #@4d
    const-string/jumbo v2, "Error connecting to secondary zygote"

    #@50
    invoke-direct {v1, v2, v0}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@53
    throw v1

    #@54
    .line 785
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_5
    new-instance v1, Landroid/os/ZygoteStartFailedEx;

    #@56
    new-instance v2, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v3, "Unsupported zygote ABI: "

    #@5e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v2

    #@62
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v2

    #@66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v2

    #@6a
    invoke-direct {v1, v2}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    #@6d
    throw v1
.end method

.method public static final native parseProcLine([BII[I[Ljava/lang/String;[J[F)Z
.end method

.method public static final native readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z
.end method

.method public static final native readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V
.end method

.method public static final native removeAllProcessGroups()V
.end method

.method public static final native sendSignal(II)V
.end method

.method public static final native sendSignalQuiet(II)V
.end method

.method public static final native setArgV0(Ljava/lang/String;)V
.end method

.method public static final native setCanSelfBackground(Z)V
.end method

.method public static final native setGid(I)I
.end method

.method public static final native setProcessGroup(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final setStartTimes(JJ)V
    .locals 0
    .param p0, "elapsedRealtime"    # J
    .param p2, "uptimeMillis"    # J

    #@0
    .prologue
    .line 810
    sput-wide p0, Landroid/os/Process;->sStartElapsedRealtime:J

    #@2
    .line 811
    sput-wide p2, Landroid/os/Process;->sStartUptimeMillis:J

    #@4
    .line 809
    return-void
.end method

.method public static final native setSwappiness(IZ)Z
.end method

.method public static final native setThreadGroup(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setThreadPriority(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setThreadPriority(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setThreadScheduler(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public static final native setUid(I)I
.end method

.method public static final start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .locals 3
    .param p0, "processClass"    # Ljava/lang/String;
    .param p1, "niceName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .param p4, "gids"    # [I
    .param p5, "debugFlags"    # I
    .param p6, "mountExternal"    # I
    .param p7, "targetSdkVersion"    # I
    .param p8, "seInfo"    # Ljava/lang/String;
    .param p9, "abi"    # Ljava/lang/String;
    .param p10, "instructionSet"    # Ljava/lang/String;
    .param p11, "appDataDir"    # Ljava/lang/String;
    .param p12, "zygoteArgs"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 521
    :try_start_0
    invoke-static/range {p0 .. p12}, Landroid/os/Process;->startViaZygote(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    :try_end_0
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 524
    :catch_0
    move-exception v0

    #@6
    .line 525
    .local v0, "ex":Landroid/os/ZygoteStartFailedEx;
    const-string/jumbo v1, "Process"

    #@9
    .line 526
    const-string/jumbo v2, "Starting VM process through Zygote failed"

    #@c
    .line 525
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 527
    new-instance v1, Ljava/lang/RuntimeException;

    #@11
    .line 528
    const-string/jumbo v2, "Starting VM process through Zygote failed"

    #@14
    .line 527
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@17
    throw v1
.end method

.method private static startViaZygote(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .locals 9
    .param p0, "processClass"    # Ljava/lang/String;
    .param p1, "niceName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .param p4, "gids"    # [I
    .param p5, "debugFlags"    # I
    .param p6, "mountExternal"    # I
    .param p7, "targetSdkVersion"    # I
    .param p8, "seInfo"    # Ljava/lang/String;
    .param p9, "abi"    # Ljava/lang/String;
    .param p10, "instructionSet"    # Ljava/lang/String;
    .param p11, "appDataDir"    # Ljava/lang/String;
    .param p12, "extraArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    #@0
    .prologue
    .line 653
    const-class v7, Landroid/os/Process;

    #@2
    monitor-enter v7

    #@3
    .line 654
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    #@5
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 658
    .local v2, "argsForZygote":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v6, "--runtime-args"

    #@b
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e
    .line 659
    new-instance v6, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v8, "--setuid="

    #@16
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v6

    #@1a
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v6

    #@1e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v6

    #@22
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@25
    .line 660
    new-instance v6, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v8, "--setgid="

    #@2d
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v6

    #@31
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v6

    #@35
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v6

    #@39
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3c
    .line 661
    and-int/lit8 v6, p5, 0x10

    #@3e
    if-eqz v6, :cond_0

    #@40
    .line 662
    const-string/jumbo v6, "--enable-jni-logging"

    #@43
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@46
    .line 664
    :cond_0
    and-int/lit8 v6, p5, 0x8

    #@48
    if-eqz v6, :cond_1

    #@4a
    .line 665
    const-string/jumbo v6, "--enable-safemode"

    #@4d
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@50
    .line 667
    :cond_1
    and-int/lit8 v6, p5, 0x1

    #@52
    if-eqz v6, :cond_2

    #@54
    .line 668
    const-string/jumbo v6, "--enable-debugger"

    #@57
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5a
    .line 670
    :cond_2
    and-int/lit8 v6, p5, 0x2

    #@5c
    if-eqz v6, :cond_3

    #@5e
    .line 671
    const-string/jumbo v6, "--enable-checkjni"

    #@61
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@64
    .line 673
    :cond_3
    and-int/lit8 v6, p5, 0x20

    #@66
    if-eqz v6, :cond_4

    #@68
    .line 674
    const-string/jumbo v6, "--generate-debug-info"

    #@6b
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6e
    .line 676
    :cond_4
    and-int/lit8 v6, p5, 0x40

    #@70
    if-eqz v6, :cond_5

    #@72
    .line 677
    const-string/jumbo v6, "--always-jit"

    #@75
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@78
    .line 679
    :cond_5
    and-int/lit16 v6, p5, 0x80

    #@7a
    if-eqz v6, :cond_6

    #@7c
    .line 680
    const-string/jumbo v6, "--native-debuggable"

    #@7f
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@82
    .line 682
    :cond_6
    and-int/lit8 v6, p5, 0x4

    #@84
    if-eqz v6, :cond_7

    #@86
    .line 683
    const-string/jumbo v6, "--enable-assert"

    #@89
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8c
    .line 685
    :cond_7
    const/4 v6, 0x1

    #@8d
    if-ne p6, v6, :cond_a

    #@8f
    .line 686
    const-string/jumbo v6, "--mount-external-default"

    #@92
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@95
    .line 692
    :cond_8
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    #@97
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@9a
    const-string/jumbo v8, "--target-sdk-version="

    #@9d
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v6

    #@a1
    move/from16 v0, p7

    #@a3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v6

    #@a7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v6

    #@ab
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ae
    .line 698
    if-eqz p4, :cond_d

    #@b0
    array-length v6, p4

    #@b1
    if-lez v6, :cond_d

    #@b3
    .line 699
    new-instance v4, Ljava/lang/StringBuilder;

    #@b5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b8
    .line 700
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "--setgroups="

    #@bb
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    .line 702
    array-length v5, p4

    #@bf
    .line 703
    .local v5, "sz":I
    const/4 v3, 0x0

    #@c0
    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_c

    #@c2
    .line 704
    if-eqz v3, :cond_9

    #@c4
    .line 705
    const/16 v6, 0x2c

    #@c6
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@c9
    .line 707
    :cond_9
    aget v6, p4, v3

    #@cb
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ce
    .line 703
    add-int/lit8 v3, v3, 0x1

    #@d0
    goto :goto_1

    #@d1
    .line 687
    .end local v3    # "i":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "sz":I
    :cond_a
    const/4 v6, 0x2

    #@d2
    if-ne p6, v6, :cond_b

    #@d4
    .line 688
    const-string/jumbo v6, "--mount-external-read"

    #@d7
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@da
    goto :goto_0

    #@db
    .line 653
    .end local v2    # "argsForZygote":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v6

    #@dc
    monitor-exit v7

    #@dd
    throw v6

    #@de
    .line 689
    .restart local v2    # "argsForZygote":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_b
    const/4 v6, 0x3

    #@df
    if-ne p6, v6, :cond_8

    #@e1
    .line 690
    :try_start_1
    const-string/jumbo v6, "--mount-external-write"

    #@e4
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e7
    goto :goto_0

    #@e8
    .line 710
    .restart local v3    # "i":I
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v5    # "sz":I
    :cond_c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@eb
    move-result-object v6

    #@ec
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ef
    .line 713
    .end local v3    # "i":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "sz":I
    :cond_d
    if-eqz p1, :cond_e

    #@f1
    .line 714
    new-instance v6, Ljava/lang/StringBuilder;

    #@f3
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@f6
    const-string/jumbo v8, "--nice-name="

    #@f9
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v6

    #@fd
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v6

    #@101
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@104
    move-result-object v6

    #@105
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@108
    .line 717
    :cond_e
    if-eqz p8, :cond_f

    #@10a
    .line 718
    new-instance v6, Ljava/lang/StringBuilder;

    #@10c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@10f
    const-string/jumbo v8, "--seinfo="

    #@112
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v6

    #@116
    move-object/from16 v0, p8

    #@118
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v6

    #@11c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11f
    move-result-object v6

    #@120
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@123
    .line 721
    :cond_f
    if-eqz p10, :cond_10

    #@125
    .line 722
    new-instance v6, Ljava/lang/StringBuilder;

    #@127
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@12a
    const-string/jumbo v8, "--instruction-set="

    #@12d
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v6

    #@131
    move-object/from16 v0, p10

    #@133
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v6

    #@137
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13a
    move-result-object v6

    #@13b
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@13e
    .line 725
    :cond_10
    if-eqz p11, :cond_11

    #@140
    .line 726
    new-instance v6, Ljava/lang/StringBuilder;

    #@142
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@145
    const-string/jumbo v8, "--app-data-dir="

    #@148
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v6

    #@14c
    move-object/from16 v0, p11

    #@14e
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v6

    #@152
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@155
    move-result-object v6

    #@156
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@159
    .line 729
    :cond_11
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@15c
    .line 731
    if-eqz p12, :cond_12

    #@15e
    .line 732
    const/4 v6, 0x0

    #@15f
    move-object/from16 v0, p12

    #@161
    array-length v8, v0

    #@162
    :goto_2
    if-ge v6, v8, :cond_12

    #@164
    aget-object v1, p12, v6

    #@166
    .line 733
    .local v1, "arg":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@169
    .line 732
    add-int/lit8 v6, v6, 0x1

    #@16b
    goto :goto_2

    #@16c
    .line 737
    .end local v1    # "arg":Ljava/lang/String;
    :cond_12
    invoke-static/range {p9 .. p9}, Landroid/os/Process;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/Process$ZygoteState;

    #@16f
    move-result-object v6

    #@170
    invoke-static {v6, v2}, Landroid/os/Process;->zygoteSendArgsAndGetResult(Landroid/os/Process$ZygoteState;Ljava/util/ArrayList;)Landroid/os/Process$ProcessStartResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@173
    move-result-object v6

    #@174
    monitor-exit v7

    #@175
    return-object v6
.end method

.method public static final supportsProcesses()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1127
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method private static zygoteSendArgsAndGetResult(Landroid/os/Process$ZygoteState;Ljava/util/ArrayList;)Landroid/os/Process$ProcessStartResult;
    .locals 9
    .param p0, "zygoteState"    # Landroid/os/Process$ZygoteState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Process$ZygoteState;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Process$ProcessStartResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    #@0
    .prologue
    .line 572
    .local p1, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v5

    #@4
    .line 573
    .local v5, "sz":I
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    #@7
    .line 574
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v7

    #@b
    check-cast v7, Ljava/lang/String;

    #@d
    const/16 v8, 0xa

    #@f
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    #@12
    move-result v7

    #@13
    if-ltz v7, :cond_0

    #@15
    .line 575
    new-instance v7, Landroid/os/ZygoteStartFailedEx;

    #@17
    const-string/jumbo v8, "embedded newlines not allowed"

    #@1a
    invoke-direct {v7, v8}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    #@1d
    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 616
    .end local v2    # "i":I
    .end local v5    # "sz":I
    :catch_0
    move-exception v1

    #@1f
    .line 617
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {p0}, Landroid/os/Process$ZygoteState;->close()V

    #@22
    .line 618
    new-instance v7, Landroid/os/ZygoteStartFailedEx;

    #@24
    invoke-direct {v7, v1}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/Throwable;)V

    #@27
    throw v7

    #@28
    .line 573
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v2    # "i":I
    .restart local v5    # "sz":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 589
    :cond_1
    :try_start_1
    iget-object v6, p0, Landroid/os/Process$ZygoteState;->writer:Ljava/io/BufferedWriter;

    #@2d
    .line 590
    .local v6, "writer":Ljava/io/BufferedWriter;
    iget-object v3, p0, Landroid/os/Process$ZygoteState;->inputStream:Ljava/io/DataInputStream;

    #@2f
    .line 592
    .local v3, "inputStream":Ljava/io/DataInputStream;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@32
    move-result v7

    #@33
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@36
    move-result-object v7

    #@37
    invoke-virtual {v6, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@3a
    .line 593
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    #@3d
    .line 595
    const/4 v2, 0x0

    #@3e
    :goto_1
    if-ge v2, v5, :cond_2

    #@40
    .line 596
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@43
    move-result-object v0

    #@44
    check-cast v0, Ljava/lang/String;

    #@46
    .line 597
    .local v0, "arg":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@49
    .line 598
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    #@4c
    .line 595
    add-int/lit8 v2, v2, 0x1

    #@4e
    goto :goto_1

    #@4f
    .line 601
    .end local v0    # "arg":Ljava/lang/String;
    :cond_2
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V

    #@52
    .line 604
    new-instance v4, Landroid/os/Process$ProcessStartResult;

    #@54
    invoke-direct {v4}, Landroid/os/Process$ProcessStartResult;-><init>()V

    #@57
    .line 609
    .local v4, "result":Landroid/os/Process$ProcessStartResult;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    #@5a
    move-result v7

    #@5b
    iput v7, v4, Landroid/os/Process$ProcessStartResult;->pid:I

    #@5d
    .line 610
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readBoolean()Z

    #@60
    move-result v7

    #@61
    iput-boolean v7, v4, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    #@63
    .line 612
    iget v7, v4, Landroid/os/Process$ProcessStartResult;->pid:I

    #@65
    if-gez v7, :cond_3

    #@67
    .line 613
    new-instance v7, Landroid/os/ZygoteStartFailedEx;

    #@69
    const-string/jumbo v8, "fork() failed"

    #@6c
    invoke-direct {v7, v8}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    #@6f
    throw v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@70
    .line 615
    :cond_3
    return-object v4
.end method
