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
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static establishZygoteConnectionForAbi(Ljava/lang/String;)V
    .locals 4
    .param p0, "abi"    # Ljava/lang/String;

    #@0
    .prologue
    .line 741
    :try_start_0
    invoke-static {p0}, Landroid/os/Process;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/Process$ZygoteState;
    :try_end_0
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 739
    return-void

    #@4
    .line 742
    :catch_0
    move-exception v0

    #@5
    .line 743
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
    .line 535
    const-string/jumbo v2, "1"

    #@3
    invoke-virtual {p0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@6
    .line 537
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    #@9
    .line 539
    const-string/jumbo v2, "--query-abi-list"

    #@c
    invoke-virtual {p0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@f
    .line 540
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    #@12
    .line 541
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flush()V

    #@15
    .line 544
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    #@18
    move-result v1

    #@19
    .line 545
    .local v1, "numBytes":I
    new-array v0, v1, [B

    #@1b
    .line 546
    .local v0, "bytes":[B
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    #@1e
    .line 548
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
    .line 916
    new-array v0, v3, [Ljava/lang/String;

    #@4
    const-string/jumbo v2, "PPid:"

    #@7
    aput-object v2, v0, v4

    #@9
    .line 917
    .local v0, "procStatusLabels":[Ljava/lang/String;
    new-array v1, v3, [J

    #@b
    .line 918
    .local v1, "procStatusValues":[J
    const-wide/16 v2, -0x1

    #@d
    aput-wide v2, v1, v4

    #@f
    .line 919
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
    .line 920
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
    .line 790
    sget-wide v0, Landroid/os/Process;->sStartElapsedRealtime:J

    #@2
    return-wide v0
.end method

.method public static final getStartUptimeMillis()J
    .locals 2

    #@0
    .prologue
    .line 797
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
    .line 931
    new-array v0, v3, [Ljava/lang/String;

    #@4
    const-string/jumbo v2, "Tgid:"

    #@7
    aput-object v2, v0, v4

    #@9
    .line 932
    .local v0, "procStatusLabels":[Ljava/lang/String;
    new-array v1, v3, [J

    #@b
    .line 933
    .local v1, "procStatusValues":[J
    const-wide/16 v2, -0x1

    #@d
    aput-wide v2, v1, v4

    #@f
    .line 934
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
    .line 935
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
    .line 902
    new-array v0, v3, [Ljava/lang/String;

    #@4
    const-string/jumbo v2, "Uid:"

    #@7
    aput-object v2, v0, v4

    #@9
    .line 903
    .local v0, "procStatusLabels":[Ljava/lang/String;
    new-array v1, v3, [J

    #@b
    .line 904
    .local v1, "procStatusValues":[J
    const-wide/16 v2, -0x1

    #@d
    aput-wide v2, v1, v4

    #@f
    .line 905
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
    .line 906
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
    .line 810
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
    .line 864
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
    .line 872
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
    .line 877
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    #@4
    move-result p0

    #@5
    .line 878
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

.method public static final killProcess(I)V
    .locals 1
    .param p0, "pid"    # I

    #@0
    .prologue
    .line 1133
    const/16 v0, 0x9

    #@2
    invoke-static {p0, v0}, Landroid/os/Process;->sendSignal(II)V

    #@5
    .line 1132
    return-void
.end method

.method public static final native killProcessGroup(II)I
.end method

.method public static final killProcessQuiet(I)V
    .locals 1
    .param p0, "pid"    # I

    #@0
    .prologue
    .line 1157
    const/16 v0, 0x9

    #@2
    invoke-static {p0, v0}, Landroid/os/Process;->sendSignalQuiet(II)V

    #@5
    .line 1156
    return-void
.end method

.method public static final myPid()I
    .locals 1

    #@0
    .prologue
    .line 818
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
    .line 826
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
    .line 834
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
    .line 844
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
    .line 854
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
    .line 752
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
    .line 754
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
    .line 760
    :cond_1
    sget-object v1, Landroid/os/Process;->primaryZygoteState:Landroid/os/Process$ZygoteState;

    #@17
    invoke-virtual {v1, p0}, Landroid/os/Process$ZygoteState;->matches(Ljava/lang/String;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 761
    sget-object v1, Landroid/os/Process;->primaryZygoteState:Landroid/os/Process$ZygoteState;

    #@1f
    return-object v1

    #@20
    .line 755
    :catch_0
    move-exception v0

    #@21
    .line 756
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Landroid/os/ZygoteStartFailedEx;

    #@23
    const-string/jumbo v2, "Error connecting to primary zygote"

    #@26
    invoke-direct {v1, v2, v0}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@29
    throw v1

    #@2a
    .line 765
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
    .line 767
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
    .line 773
    :cond_4
    sget-object v1, Landroid/os/Process;->secondaryZygoteState:Landroid/os/Process$ZygoteState;

    #@41
    invoke-virtual {v1, p0}, Landroid/os/Process$ZygoteState;->matches(Ljava/lang/String;)Z

    #@44
    move-result v1

    #@45
    if-eqz v1, :cond_5

    #@47
    .line 774
    sget-object v1, Landroid/os/Process;->secondaryZygoteState:Landroid/os/Process$ZygoteState;

    #@49
    return-object v1

    #@4a
    .line 768
    :catch_1
    move-exception v0

    #@4b
    .line 769
    .restart local v0    # "ioe":Ljava/io/IOException;
    new-instance v1, Landroid/os/ZygoteStartFailedEx;

    #@4d
    const-string/jumbo v2, "Error connecting to secondary zygote"

    #@50
    invoke-direct {v1, v2, v0}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@53
    throw v1

    #@54
    .line 777
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
    .line 802
    sput-wide p0, Landroid/os/Process;->sStartElapsedRealtime:J

    #@2
    .line 803
    sput-wide p2, Landroid/os/Process;->sStartUptimeMillis:J

    #@4
    .line 801
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
    .line 513
    :try_start_0
    invoke-static/range {p0 .. p12}, Landroid/os/Process;->startViaZygote(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    :try_end_0
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 516
    :catch_0
    move-exception v0

    #@6
    .line 517
    .local v0, "ex":Landroid/os/ZygoteStartFailedEx;
    const-string/jumbo v1, "Process"

    #@9
    .line 518
    const-string/jumbo v2, "Starting VM process through Zygote failed"

    #@c
    .line 517
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 519
    new-instance v1, Ljava/lang/RuntimeException;

    #@11
    .line 520
    const-string/jumbo v2, "Starting VM process through Zygote failed"

    #@14
    .line 519
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
    .line 645
    const-class v7, Landroid/os/Process;

    #@2
    monitor-enter v7

    #@3
    .line 646
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    #@5
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 650
    .local v2, "argsForZygote":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v6, "--runtime-args"

    #@b
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e
    .line 651
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
    .line 652
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
    .line 653
    and-int/lit8 v6, p5, 0x10

    #@3e
    if-eqz v6, :cond_0

    #@40
    .line 654
    const-string/jumbo v6, "--enable-jni-logging"

    #@43
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@46
    .line 656
    :cond_0
    and-int/lit8 v6, p5, 0x8

    #@48
    if-eqz v6, :cond_1

    #@4a
    .line 657
    const-string/jumbo v6, "--enable-safemode"

    #@4d
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@50
    .line 659
    :cond_1
    and-int/lit8 v6, p5, 0x1

    #@52
    if-eqz v6, :cond_2

    #@54
    .line 660
    const-string/jumbo v6, "--enable-debugger"

    #@57
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5a
    .line 662
    :cond_2
    and-int/lit8 v6, p5, 0x2

    #@5c
    if-eqz v6, :cond_3

    #@5e
    .line 663
    const-string/jumbo v6, "--enable-checkjni"

    #@61
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@64
    .line 665
    :cond_3
    and-int/lit8 v6, p5, 0x20

    #@66
    if-eqz v6, :cond_4

    #@68
    .line 666
    const-string/jumbo v6, "--generate-debug-info"

    #@6b
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6e
    .line 668
    :cond_4
    and-int/lit8 v6, p5, 0x40

    #@70
    if-eqz v6, :cond_5

    #@72
    .line 669
    const-string/jumbo v6, "--always-jit"

    #@75
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@78
    .line 671
    :cond_5
    and-int/lit16 v6, p5, 0x80

    #@7a
    if-eqz v6, :cond_6

    #@7c
    .line 672
    const-string/jumbo v6, "--native-debuggable"

    #@7f
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@82
    .line 674
    :cond_6
    and-int/lit8 v6, p5, 0x4

    #@84
    if-eqz v6, :cond_7

    #@86
    .line 675
    const-string/jumbo v6, "--enable-assert"

    #@89
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8c
    .line 677
    :cond_7
    const/4 v6, 0x1

    #@8d
    if-ne p6, v6, :cond_a

    #@8f
    .line 678
    const-string/jumbo v6, "--mount-external-default"

    #@92
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@95
    .line 684
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
    .line 690
    if-eqz p4, :cond_d

    #@b0
    array-length v6, p4

    #@b1
    if-lez v6, :cond_d

    #@b3
    .line 691
    new-instance v4, Ljava/lang/StringBuilder;

    #@b5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b8
    .line 692
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "--setgroups="

    #@bb
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    .line 694
    array-length v5, p4

    #@bf
    .line 695
    .local v5, "sz":I
    const/4 v3, 0x0

    #@c0
    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_c

    #@c2
    .line 696
    if-eqz v3, :cond_9

    #@c4
    .line 697
    const/16 v6, 0x2c

    #@c6
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@c9
    .line 699
    :cond_9
    aget v6, p4, v3

    #@cb
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ce
    .line 695
    add-int/lit8 v3, v3, 0x1

    #@d0
    goto :goto_1

    #@d1
    .line 679
    .end local v3    # "i":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "sz":I
    :cond_a
    const/4 v6, 0x2

    #@d2
    if-ne p6, v6, :cond_b

    #@d4
    .line 680
    const-string/jumbo v6, "--mount-external-read"

    #@d7
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@da
    goto :goto_0

    #@db
    .line 645
    .end local v2    # "argsForZygote":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v6

    #@dc
    monitor-exit v7

    #@dd
    throw v6

    #@de
    .line 681
    .restart local v2    # "argsForZygote":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_b
    const/4 v6, 0x3

    #@df
    if-ne p6, v6, :cond_8

    #@e1
    .line 682
    :try_start_1
    const-string/jumbo v6, "--mount-external-write"

    #@e4
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e7
    goto :goto_0

    #@e8
    .line 702
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
    .line 705
    .end local v3    # "i":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "sz":I
    :cond_d
    if-eqz p1, :cond_e

    #@f1
    .line 706
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
    .line 709
    :cond_e
    if-eqz p8, :cond_f

    #@10a
    .line 710
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
    .line 713
    :cond_f
    if-eqz p10, :cond_10

    #@125
    .line 714
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
    .line 717
    :cond_10
    if-eqz p11, :cond_11

    #@140
    .line 718
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
    .line 721
    :cond_11
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@15c
    .line 723
    if-eqz p12, :cond_12

    #@15e
    .line 724
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
    .line 725
    .local v1, "arg":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@169
    .line 724
    add-int/lit8 v6, v6, 0x1

    #@16b
    goto :goto_2

    #@16c
    .line 729
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
    .line 1095
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
    .line 564
    .local p1, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v5

    #@4
    .line 565
    .local v5, "sz":I
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    #@7
    .line 566
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
    .line 567
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
    .line 608
    .end local v2    # "i":I
    .end local v5    # "sz":I
    :catch_0
    move-exception v1

    #@1f
    .line 609
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {p0}, Landroid/os/Process$ZygoteState;->close()V

    #@22
    .line 610
    new-instance v7, Landroid/os/ZygoteStartFailedEx;

    #@24
    invoke-direct {v7, v1}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/Throwable;)V

    #@27
    throw v7

    #@28
    .line 565
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v2    # "i":I
    .restart local v5    # "sz":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 581
    :cond_1
    :try_start_1
    iget-object v6, p0, Landroid/os/Process$ZygoteState;->writer:Ljava/io/BufferedWriter;

    #@2d
    .line 582
    .local v6, "writer":Ljava/io/BufferedWriter;
    iget-object v3, p0, Landroid/os/Process$ZygoteState;->inputStream:Ljava/io/DataInputStream;

    #@2f
    .line 584
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
    .line 585
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    #@3d
    .line 587
    const/4 v2, 0x0

    #@3e
    :goto_1
    if-ge v2, v5, :cond_2

    #@40
    .line 588
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@43
    move-result-object v0

    #@44
    check-cast v0, Ljava/lang/String;

    #@46
    .line 589
    .local v0, "arg":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@49
    .line 590
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    #@4c
    .line 587
    add-int/lit8 v2, v2, 0x1

    #@4e
    goto :goto_1

    #@4f
    .line 593
    .end local v0    # "arg":Ljava/lang/String;
    :cond_2
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V

    #@52
    .line 596
    new-instance v4, Landroid/os/Process$ProcessStartResult;

    #@54
    invoke-direct {v4}, Landroid/os/Process$ProcessStartResult;-><init>()V

    #@57
    .line 601
    .local v4, "result":Landroid/os/Process$ProcessStartResult;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    #@5a
    move-result v7

    #@5b
    iput v7, v4, Landroid/os/Process$ProcessStartResult;->pid:I

    #@5d
    .line 602
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readBoolean()Z

    #@60
    move-result v7

    #@61
    iput-boolean v7, v4, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    #@63
    .line 604
    iget v7, v4, Landroid/os/Process$ProcessStartResult;->pid:I

    #@65
    if-gez v7, :cond_3

    #@67
    .line 605
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
    .line 607
    :cond_3
    return-object v4
.end method
