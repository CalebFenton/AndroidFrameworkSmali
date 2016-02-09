.class public Landroid/os/Process;
.super Ljava/lang/Object;
.source "Process.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Process$ZygoteState;,
        Landroid/os/Process$ProcessStartResult;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_UID:I = 0x3ea

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
    .line 708
    :try_start_0
    invoke-static {p0}, Landroid/os/Process;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/Process$ZygoteState;
    :try_end_0
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 706
    return-void

    #@4
    .line 709
    :catch_0
    move-exception v0

    #@5
    .line 710
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
    .line 514
    const-string/jumbo v2, "1"

    #@3
    invoke-virtual {p0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@6
    .line 516
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    #@9
    .line 518
    const-string/jumbo v2, "--query-abi-list"

    #@c
    invoke-virtual {p0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@f
    .line 519
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    #@12
    .line 520
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flush()V

    #@15
    .line 523
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    #@18
    move-result v1

    #@19
    .line 524
    .local v1, "numBytes":I
    new-array v0, v1, [B

    #@1b
    .line 525
    .local v0, "bytes":[B
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    #@1e
    .line 527
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
    .line 853
    new-array v0, v3, [Ljava/lang/String;

    #@4
    const-string/jumbo v2, "PPid:"

    #@7
    aput-object v2, v0, v4

    #@9
    .line 854
    .local v0, "procStatusLabels":[Ljava/lang/String;
    new-array v1, v3, [J

    #@b
    .line 855
    .local v1, "procStatusValues":[J
    const-wide/16 v2, -0x1

    #@d
    aput-wide v2, v1, v4

    #@f
    .line 856
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
    .line 857
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

.method public static final getThreadGroupLeader(I)I
    .locals 5
    .param p0, "tid"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 868
    new-array v0, v3, [Ljava/lang/String;

    #@4
    const-string/jumbo v2, "Tgid:"

    #@7
    aput-object v2, v0, v4

    #@9
    .line 869
    .local v0, "procStatusLabels":[Ljava/lang/String;
    new-array v1, v3, [J

    #@b
    .line 870
    .local v1, "procStatusValues":[J
    const-wide/16 v2, -0x1

    #@d
    aput-wide v2, v1, v4

    #@f
    .line 871
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
    .line 872
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
    .line 839
    new-array v0, v3, [Ljava/lang/String;

    #@4
    const-string/jumbo v2, "Uid:"

    #@7
    aput-object v2, v0, v4

    #@9
    .line 840
    .local v0, "procStatusLabels":[Ljava/lang/String;
    new-array v1, v3, [J

    #@b
    .line 841
    .local v1, "procStatusValues":[J
    const-wide/16 v2, -0x1

    #@d
    aput-wide v2, v1, v4

    #@f
    .line 842
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
    .line 843
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
    .line 757
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

.method public static final isIsolated()Z
    .locals 1

    #@0
    .prologue
    .line 809
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
    .line 814
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    #@4
    move-result p0

    #@5
    .line 815
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
    .line 1045
    const/16 v0, 0x9

    #@2
    invoke-static {p0, v0}, Landroid/os/Process;->sendSignal(II)V

    #@5
    .line 1044
    return-void
.end method

.method public static final native killProcessGroup(II)I
.end method

.method public static final killProcessQuiet(I)V
    .locals 1
    .param p0, "pid"    # I

    #@0
    .prologue
    .line 1069
    const/16 v0, 0x9

    #@2
    invoke-static {p0, v0}, Landroid/os/Process;->sendSignalQuiet(II)V

    #@5
    .line 1068
    return-void
.end method

.method public static final myPid()I
    .locals 1

    #@0
    .prologue
    .line 765
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
    .line 773
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
    .line 781
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
    .line 791
    invoke-static {}, Landroid/system/Os;->getuid()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static final myUserHandle()Landroid/os/UserHandle;
    .locals 2

    #@0
    .prologue
    .line 801
    new-instance v0, Landroid/os/UserHandle;

    #@2
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@5
    move-result v1

    #@6
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    #@9
    move-result v1

    #@a
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    #@d
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
    .line 719
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
    .line 721
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
    .line 727
    :cond_1
    sget-object v1, Landroid/os/Process;->primaryZygoteState:Landroid/os/Process$ZygoteState;

    #@17
    invoke-virtual {v1, p0}, Landroid/os/Process$ZygoteState;->matches(Ljava/lang/String;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 728
    sget-object v1, Landroid/os/Process;->primaryZygoteState:Landroid/os/Process$ZygoteState;

    #@1f
    return-object v1

    #@20
    .line 722
    :catch_0
    move-exception v0

    #@21
    .line 723
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Landroid/os/ZygoteStartFailedEx;

    #@23
    const-string/jumbo v2, "Error connecting to primary zygote"

    #@26
    invoke-direct {v1, v2, v0}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@29
    throw v1

    #@2a
    .line 732
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
    .line 734
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
    .line 740
    :cond_4
    sget-object v1, Landroid/os/Process;->secondaryZygoteState:Landroid/os/Process$ZygoteState;

    #@41
    invoke-virtual {v1, p0}, Landroid/os/Process$ZygoteState;->matches(Ljava/lang/String;)Z

    #@44
    move-result v1

    #@45
    if-eqz v1, :cond_5

    #@47
    .line 741
    sget-object v1, Landroid/os/Process;->secondaryZygoteState:Landroid/os/Process$ZygoteState;

    #@49
    return-object v1

    #@4a
    .line 735
    :catch_1
    move-exception v0

    #@4b
    .line 736
    .restart local v0    # "ioe":Ljava/io/IOException;
    new-instance v1, Landroid/os/ZygoteStartFailedEx;

    #@4d
    const-string/jumbo v2, "Error connecting to secondary zygote"

    #@50
    invoke-direct {v1, v2, v0}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@53
    throw v1

    #@54
    .line 744
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
    .line 492
    :try_start_0
    invoke-static/range {p0 .. p12}, Landroid/os/Process;->startViaZygote(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    :try_end_0
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 495
    :catch_0
    move-exception v0

    #@6
    .line 496
    .local v0, "ex":Landroid/os/ZygoteStartFailedEx;
    const-string/jumbo v1, "Process"

    #@9
    .line 497
    const-string/jumbo v2, "Starting VM process through Zygote failed"

    #@c
    .line 496
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 498
    new-instance v1, Ljava/lang/RuntimeException;

    #@11
    .line 499
    const-string/jumbo v2, "Starting VM process through Zygote failed"

    #@14
    .line 498
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
    .line 615
    const-class v7, Landroid/os/Process;

    #@2
    monitor-enter v7

    #@3
    .line 616
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    #@5
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 620
    .local v2, "argsForZygote":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v6, "--runtime-args"

    #@b
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e
    .line 621
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
    .line 622
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
    .line 623
    and-int/lit8 v6, p5, 0x10

    #@3e
    if-eqz v6, :cond_0

    #@40
    .line 624
    const-string/jumbo v6, "--enable-jni-logging"

    #@43
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@46
    .line 626
    :cond_0
    and-int/lit8 v6, p5, 0x8

    #@48
    if-eqz v6, :cond_1

    #@4a
    .line 627
    const-string/jumbo v6, "--enable-safemode"

    #@4d
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@50
    .line 629
    :cond_1
    and-int/lit8 v6, p5, 0x1

    #@52
    if-eqz v6, :cond_2

    #@54
    .line 630
    const-string/jumbo v6, "--enable-debugger"

    #@57
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5a
    .line 632
    :cond_2
    and-int/lit8 v6, p5, 0x2

    #@5c
    if-eqz v6, :cond_3

    #@5e
    .line 633
    const-string/jumbo v6, "--enable-checkjni"

    #@61
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@64
    .line 635
    :cond_3
    and-int/lit8 v6, p5, 0x20

    #@66
    if-eqz v6, :cond_4

    #@68
    .line 636
    const-string/jumbo v6, "--enable-jit"

    #@6b
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6e
    .line 638
    :cond_4
    and-int/lit8 v6, p5, 0x40

    #@70
    if-eqz v6, :cond_5

    #@72
    .line 639
    const-string/jumbo v6, "--generate-debug-info"

    #@75
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@78
    .line 641
    :cond_5
    and-int/lit8 v6, p5, 0x4

    #@7a
    if-eqz v6, :cond_6

    #@7c
    .line 642
    const-string/jumbo v6, "--enable-assert"

    #@7f
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@82
    .line 644
    :cond_6
    const/4 v6, 0x1

    #@83
    if-ne p6, v6, :cond_9

    #@85
    .line 645
    const-string/jumbo v6, "--mount-external-default"

    #@88
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8b
    .line 651
    :cond_7
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    const-string/jumbo v8, "--target-sdk-version="

    #@93
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v6

    #@97
    move/from16 v0, p7

    #@99
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v6

    #@9d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v6

    #@a1
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a4
    .line 657
    if-eqz p4, :cond_c

    #@a6
    array-length v6, p4

    #@a7
    if-lez v6, :cond_c

    #@a9
    .line 658
    new-instance v4, Ljava/lang/StringBuilder;

    #@ab
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@ae
    .line 659
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "--setgroups="

    #@b1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    .line 661
    array-length v5, p4

    #@b5
    .line 662
    .local v5, "sz":I
    const/4 v3, 0x0

    #@b6
    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_b

    #@b8
    .line 663
    if-eqz v3, :cond_8

    #@ba
    .line 664
    const/16 v6, 0x2c

    #@bc
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@bf
    .line 666
    :cond_8
    aget v6, p4, v3

    #@c1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c4
    .line 662
    add-int/lit8 v3, v3, 0x1

    #@c6
    goto :goto_1

    #@c7
    .line 646
    .end local v3    # "i":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "sz":I
    :cond_9
    const/4 v6, 0x2

    #@c8
    if-ne p6, v6, :cond_a

    #@ca
    .line 647
    const-string/jumbo v6, "--mount-external-read"

    #@cd
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d0
    goto :goto_0

    #@d1
    .line 615
    .end local v2    # "argsForZygote":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v6

    #@d2
    monitor-exit v7

    #@d3
    throw v6

    #@d4
    .line 648
    .restart local v2    # "argsForZygote":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    const/4 v6, 0x3

    #@d5
    if-ne p6, v6, :cond_7

    #@d7
    .line 649
    :try_start_1
    const-string/jumbo v6, "--mount-external-write"

    #@da
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@dd
    goto :goto_0

    #@de
    .line 669
    .restart local v3    # "i":I
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v5    # "sz":I
    :cond_b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e1
    move-result-object v6

    #@e2
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e5
    .line 672
    .end local v3    # "i":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "sz":I
    :cond_c
    if-eqz p1, :cond_d

    #@e7
    .line 673
    new-instance v6, Ljava/lang/StringBuilder;

    #@e9
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@ec
    const-string/jumbo v8, "--nice-name="

    #@ef
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v6

    #@f3
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v6

    #@f7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fa
    move-result-object v6

    #@fb
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@fe
    .line 676
    :cond_d
    if-eqz p8, :cond_e

    #@100
    .line 677
    new-instance v6, Ljava/lang/StringBuilder;

    #@102
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@105
    const-string/jumbo v8, "--seinfo="

    #@108
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v6

    #@10c
    move-object/from16 v0, p8

    #@10e
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v6

    #@112
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@115
    move-result-object v6

    #@116
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@119
    .line 680
    :cond_e
    if-eqz p10, :cond_f

    #@11b
    .line 681
    new-instance v6, Ljava/lang/StringBuilder;

    #@11d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@120
    const-string/jumbo v8, "--instruction-set="

    #@123
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v6

    #@127
    move-object/from16 v0, p10

    #@129
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v6

    #@12d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@130
    move-result-object v6

    #@131
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@134
    .line 684
    :cond_f
    if-eqz p11, :cond_10

    #@136
    .line 685
    new-instance v6, Ljava/lang/StringBuilder;

    #@138
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@13b
    const-string/jumbo v8, "--app-data-dir="

    #@13e
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@141
    move-result-object v6

    #@142
    move-object/from16 v0, p11

    #@144
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@147
    move-result-object v6

    #@148
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14b
    move-result-object v6

    #@14c
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@14f
    .line 688
    :cond_10
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@152
    .line 690
    if-eqz p12, :cond_11

    #@154
    .line 691
    const/4 v6, 0x0

    #@155
    move-object/from16 v0, p12

    #@157
    array-length v8, v0

    #@158
    :goto_2
    if-ge v6, v8, :cond_11

    #@15a
    aget-object v1, p12, v6

    #@15c
    .line 692
    .local v1, "arg":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@15f
    .line 691
    add-int/lit8 v6, v6, 0x1

    #@161
    goto :goto_2

    #@162
    .line 696
    .end local v1    # "arg":Ljava/lang/String;
    :cond_11
    invoke-static/range {p9 .. p9}, Landroid/os/Process;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/Process$ZygoteState;

    #@165
    move-result-object v6

    #@166
    invoke-static {v6, v2}, Landroid/os/Process;->zygoteSendArgsAndGetResult(Landroid/os/Process$ZygoteState;Ljava/util/ArrayList;)Landroid/os/Process$ProcessStartResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@169
    move-result-object v6

    #@16a
    monitor-exit v7

    #@16b
    return-object v6
.end method

.method public static final supportsProcesses()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1007
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
    .line 551
    .local p1, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    iget-object v6, p0, Landroid/os/Process$ZygoteState;->writer:Ljava/io/BufferedWriter;

    #@2
    .line 552
    .local v6, "writer":Ljava/io/BufferedWriter;
    iget-object v3, p0, Landroid/os/Process$ZygoteState;->inputStream:Ljava/io/DataInputStream;

    #@4
    .line 554
    .local v3, "inputStream":Ljava/io/DataInputStream;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v7

    #@8
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@b
    move-result-object v7

    #@c
    invoke-virtual {v6, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@f
    .line 555
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    #@12
    .line 557
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@15
    move-result v5

    #@16
    .line 558
    .local v5, "sz":I
    const/4 v2, 0x0

    #@17
    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    #@19
    .line 559
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Ljava/lang/String;

    #@1f
    .line 560
    .local v0, "arg":Ljava/lang/String;
    const/16 v7, 0xa

    #@21
    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    #@24
    move-result v7

    #@25
    if-ltz v7, :cond_0

    #@27
    .line 561
    new-instance v7, Landroid/os/ZygoteStartFailedEx;

    #@29
    .line 562
    const-string/jumbo v8, "embedded newlines not allowed"

    #@2c
    .line 561
    invoke-direct {v7, v8}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    #@2f
    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    .line 578
    .end local v0    # "arg":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "inputStream":Ljava/io/DataInputStream;
    .end local v5    # "sz":I
    .end local v6    # "writer":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v1

    #@31
    .line 579
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {p0}, Landroid/os/Process$ZygoteState;->close()V

    #@34
    .line 580
    new-instance v7, Landroid/os/ZygoteStartFailedEx;

    #@36
    invoke-direct {v7, v1}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/Throwable;)V

    #@39
    throw v7

    #@3a
    .line 564
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v0    # "arg":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "inputStream":Ljava/io/DataInputStream;
    .restart local v5    # "sz":I
    .restart local v6    # "writer":Ljava/io/BufferedWriter;
    :cond_0
    :try_start_1
    invoke-virtual {v6, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@3d
    .line 565
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    #@40
    .line 558
    add-int/lit8 v2, v2, 0x1

    #@42
    goto :goto_0

    #@43
    .line 568
    .end local v0    # "arg":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V

    #@46
    .line 571
    new-instance v4, Landroid/os/Process$ProcessStartResult;

    #@48
    invoke-direct {v4}, Landroid/os/Process$ProcessStartResult;-><init>()V

    #@4b
    .line 572
    .local v4, "result":Landroid/os/Process$ProcessStartResult;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    #@4e
    move-result v7

    #@4f
    iput v7, v4, Landroid/os/Process$ProcessStartResult;->pid:I

    #@51
    .line 573
    iget v7, v4, Landroid/os/Process$ProcessStartResult;->pid:I

    #@53
    if-gez v7, :cond_2

    #@55
    .line 574
    new-instance v7, Landroid/os/ZygoteStartFailedEx;

    #@57
    const-string/jumbo v8, "fork() failed"

    #@5a
    invoke-direct {v7, v8}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    #@5d
    throw v7

    #@5e
    .line 576
    :cond_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readBoolean()Z

    #@61
    move-result v7

    #@62
    iput-boolean v7, v4, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@64
    .line 577
    return-object v4
.end method
