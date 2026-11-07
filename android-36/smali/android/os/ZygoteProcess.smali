.class public Landroid/os/ZygoteProcess;
.super Ljava/lang/Object;
.source "ZygoteProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ZygoteProcess$ZygoteState;
    }
.end annotation


# static fields
.field private static final blacklist INVALID_USAP_FLAGS:[Ljava/lang/String;

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "ZygoteProcess"

.field private static final blacklist ZYGOTE_CONNECT_RETRY_DELAY_MS:I = 0x32

.field private static final blacklist ZYGOTE_CONNECT_TIMEOUT_MS:I = 0xea60

.field static final greylist-max-o ZYGOTE_RETRY_MILLIS:I = 0x1f4

.field public static volatile blacklist sAppZygotePreloadTimeoutMs:I


# instance fields
.field private blacklist mApiDenylistExemptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mHiddenApiAccessLogSampleRate:I

.field private blacklist mHiddenApiAccessStatslogSampleRate:I

.field private blacklist mIsFirstPropCheck:Z

.field private blacklist mLastPropCheckTimestamp:J

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private blacklist mUsapPoolEnabled:Z

.field private final blacklist mUsapPoolSecondarySocketAddress:Landroid/net/LocalSocketAddress;

.field private final blacklist mUsapPoolSocketAddress:Landroid/net/LocalSocketAddress;

.field private final blacklist mUsapPoolSupported:Z

.field private final blacklist mZygoteSecondarySocketAddress:Landroid/net/LocalSocketAddress;

.field private final blacklist mZygoteSocketAddress:Landroid/net/LocalSocketAddress;

.field private greylist-max-o primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

.field private greylist-max-o secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetAbiList(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/util/List;
    .registers 2

    invoke-static {p0, p1}, Landroid/os/ZygoteProcess;->getAbiList(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 11

    .line 78
    const/16 v0, 0x3a98

    sput v0, Landroid/os/ZygoteProcess;->sAppZygotePreloadTimeoutMs:I

    .line 557
    const-string v9, "--hidden-api-statslog-sampling-rate"

    const-string v10, "--invoke-with"

    const-string v1, "--query-abi-list"

    const-string v2, "--get-pid"

    const-string v3, "--preload-default"

    const-string v4, "--preload-package"

    const-string v5, "--preload-app"

    const-string v6, "--start-child-zygote"

    const-string v7, "--set-api-denylist-exemptions"

    const-string v8, "--hidden-api-log-sampling-rate"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/ZygoteProcess;->INVALID_USAP_FLAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 5

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    .line 254
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ZygoteProcess;->mApiDenylistExemptions:Ljava/util/List;

    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/ZygoteProcess;->mUsapPoolEnabled:Z

    .line 812
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/ZygoteProcess;->mIsFirstPropCheck:Z

    .line 813
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/os/ZygoteProcess;->mLastPropCheckTimestamp:J

    .line 108
    new-instance v1, Landroid/net/LocalSocketAddress;

    const-string/jumbo v2, "zygote"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    iput-object v1, p0, Landroid/os/ZygoteProcess;->mZygoteSocketAddress:Landroid/net/LocalSocketAddress;

    .line 111
    new-instance v1, Landroid/net/LocalSocketAddress;

    const-string/jumbo v2, "zygote_secondary"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    iput-object v1, p0, Landroid/os/ZygoteProcess;->mZygoteSecondarySocketAddress:Landroid/net/LocalSocketAddress;

    .line 115
    new-instance v1, Landroid/net/LocalSocketAddress;

    const-string/jumbo v2, "usap_pool_primary"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    iput-object v1, p0, Landroid/os/ZygoteProcess;->mUsapPoolSocketAddress:Landroid/net/LocalSocketAddress;

    .line 118
    new-instance v1, Landroid/net/LocalSocketAddress;

    const-string/jumbo v2, "usap_pool_secondary"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    iput-object v1, p0, Landroid/os/ZygoteProcess;->mUsapPoolSecondarySocketAddress:Landroid/net/LocalSocketAddress;

    .line 124
    iput-boolean v0, p0, Landroid/os/ZygoteProcess;->mUsapPoolSupported:Z

    .line 125
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/net/LocalSocketAddress;Landroid/net/LocalSocketAddress;)V
    .registers 6
    .param p1, "primarySocketAddress"    # Landroid/net/LocalSocketAddress;
    .param p2, "secondarySocketAddress"    # Landroid/net/LocalSocketAddress;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    .line 254
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ZygoteProcess;->mApiDenylistExemptions:Ljava/util/List;

    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/ZygoteProcess;->mUsapPoolEnabled:Z

    .line 812
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/ZygoteProcess;->mIsFirstPropCheck:Z

    .line 813
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/os/ZygoteProcess;->mLastPropCheckTimestamp:J

    .line 129
    iput-object p1, p0, Landroid/os/ZygoteProcess;->mZygoteSocketAddress:Landroid/net/LocalSocketAddress;

    .line 130
    iput-object p2, p0, Landroid/os/ZygoteProcess;->mZygoteSecondarySocketAddress:Landroid/net/LocalSocketAddress;

    .line 132
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/ZygoteProcess;->mUsapPoolSocketAddress:Landroid/net/LocalSocketAddress;

    .line 133
    iput-object v1, p0, Landroid/os/ZygoteProcess;->mUsapPoolSecondarySocketAddress:Landroid/net/LocalSocketAddress;

    .line 137
    iput-boolean v0, p0, Landroid/os/ZygoteProcess;->mUsapPoolSupported:Z

    .line 138
    return-void
.end method

.method private blacklist attemptConnectionToPrimaryZygote()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1051
    iget-object v0, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-virtual {v0}, Landroid/os/ZygoteProcess$ZygoteState;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1052
    :cond_c
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mZygoteSocketAddress:Landroid/net/LocalSocketAddress;

    iget-object v1, p0, Landroid/os/ZygoteProcess;->mUsapPoolSocketAddress:Landroid/net/LocalSocketAddress;

    .line 1053
    invoke-static {v0, v1}, Landroid/os/ZygoteProcess$ZygoteState;->connect(Landroid/net/LocalSocketAddress;Landroid/net/LocalSocketAddress;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    .line 1055
    iget-object v0, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/ZygoteProcess;->maybeSetApiDenylistExemptions(Landroid/os/ZygoteProcess$ZygoteState;Z)Z

    .line 1056
    iget-object v0, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-direct {p0, v0}, Landroid/os/ZygoteProcess;->maybeSetHiddenApiAccessLogSampleRate(Landroid/os/ZygoteProcess$ZygoteState;)V

    .line 1058
    :cond_21
    return-void
.end method

.method private blacklist attemptConnectionToSecondaryZygote()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1065
    iget-object v0, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-virtual {v0}, Landroid/os/ZygoteProcess$ZygoteState;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1066
    :cond_c
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mZygoteSecondarySocketAddress:Landroid/net/LocalSocketAddress;

    iget-object v1, p0, Landroid/os/ZygoteProcess;->mUsapPoolSecondarySocketAddress:Landroid/net/LocalSocketAddress;

    .line 1067
    invoke-static {v0, v1}, Landroid/os/ZygoteProcess$ZygoteState;->connect(Landroid/net/LocalSocketAddress;Landroid/net/LocalSocketAddress;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    .line 1070
    iget-object v0, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/ZygoteProcess;->maybeSetApiDenylistExemptions(Landroid/os/ZygoteProcess$ZygoteState;Z)Z

    .line 1071
    iget-object v0, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-direct {p0, v0}, Landroid/os/ZygoteProcess;->maybeSetHiddenApiAccessLogSampleRate(Landroid/os/ZygoteProcess$ZygoteState;)V

    .line 1073
    :cond_21
    return-void
.end method

.method private blacklist attemptUsapSendArgsAndGetResult(Landroid/os/ZygoteProcess$ZygoteState;Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .registers 9
    .param p1, "zygoteState"    # Landroid/os/ZygoteProcess$ZygoteState;
    .param p2, "msgStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 494
    invoke-virtual {p1}, Landroid/os/ZygoteProcess$ZygoteState;->getUsapSessionSocket()Landroid/net/LocalSocket;

    move-result-object v0

    .line 495
    .local v0, "usapSessionSocket":Landroid/net/LocalSocket;
    :try_start_4
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    .line 497
    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 499
    .local v1, "usapWriter":Ljava/io/BufferedWriter;
    new-instance v2, Ljava/io/DataInputStream;

    .line 500
    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 502
    .local v2, "usapReader":Ljava/io/DataInputStream;
    invoke-virtual {v1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 503
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 505
    new-instance v3, Landroid/os/Process$ProcessStartResult;

    invoke-direct {v3}, Landroid/os/Process$ProcessStartResult;-><init>()V

    .line 506
    .local v3, "result":Landroid/os/Process$ProcessStartResult;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    iput v4, v3, Landroid/os/Process$ProcessStartResult;->pid:I

    .line 508
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    .line 510
    iget v4, v3, Landroid/os/Process$ProcessStartResult;->pid:I
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_44

    if-ltz v4, :cond_3c

    .line 511
    nop

    .line 515
    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V

    .line 511
    :cond_3b
    return-object v3

    .line 513
    :cond_3c
    :try_start_3c
    new-instance v4, Landroid/os/ZygoteStartFailedEx;

    const-string v5, "USAP specialization failed"

    invoke-direct {v4, v5}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    .end local v0    # "usapSessionSocket":Landroid/net/LocalSocket;
    .end local p0    # "this":Landroid/os/ZygoteProcess;
    .end local p1    # "zygoteState":Landroid/os/ZygoteProcess$ZygoteState;
    .end local p2    # "msgStr":Ljava/lang/String;
    throw v4
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_44

    .line 494
    .end local v1    # "usapWriter":Ljava/io/BufferedWriter;
    .end local v2    # "usapReader":Ljava/io/DataInputStream;
    .end local v3    # "result":Landroid/os/Process$ProcessStartResult;
    .restart local v0    # "usapSessionSocket":Landroid/net/LocalSocket;
    .restart local p0    # "this":Landroid/os/ZygoteProcess;
    .restart local p1    # "zygoteState":Landroid/os/ZygoteProcess$ZygoteState;
    .restart local p2    # "msgStr":Ljava/lang/String;
    :catchall_44
    move-exception v1

    if-eqz v0, :cond_4f

    :try_start_47
    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_4f

    :catchall_4b
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4f
    :goto_4f
    throw v1
.end method

.method private blacklist attemptZygoteSendArgsAndGetResult(Landroid/os/ZygoteProcess$ZygoteState;Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .registers 8
    .param p1, "zygoteState"    # Landroid/os/ZygoteProcess$ZygoteState;
    .param p2, "msgStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    .line 465
    :try_start_0
    iget-object v0, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    .line 466
    .local v0, "zygoteWriter":Ljava/io/BufferedWriter;
    iget-object v1, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    .line 468
    .local v1, "zygoteInputStream":Ljava/io/DataInputStream;
    invoke-virtual {v0, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 474
    new-instance v2, Landroid/os/Process$ProcessStartResult;

    invoke-direct {v2}, Landroid/os/Process$ProcessStartResult;-><init>()V

    .line 475
    .local v2, "result":Landroid/os/Process$ProcessStartResult;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, v2, Landroid/os/Process$ProcessStartResult;->pid:I

    .line 476
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    iput-boolean v3, v2, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    .line 478
    iget v3, v2, Landroid/os/Process$ProcessStartResult;->pid:I

    if-ltz v3, :cond_20

    .line 482
    return-object v2

    .line 479
    :cond_20
    new-instance v3, Landroid/os/ZygoteStartFailedEx;

    const-string v4, "fork() failed"

    invoke-direct {v3, v4}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/ZygoteProcess;
    .end local p1    # "zygoteState":Landroid/os/ZygoteProcess$ZygoteState;
    .end local p2    # "msgStr":Ljava/lang/String;
    throw v3
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_28} :catch_28

    .line 483
    .end local v0    # "zygoteWriter":Ljava/io/BufferedWriter;
    .end local v1    # "zygoteInputStream":Ljava/io/DataInputStream;
    .end local v2    # "result":Landroid/os/Process$ProcessStartResult;
    .restart local p0    # "this":Landroid/os/ZygoteProcess;
    .restart local p1    # "zygoteState":Landroid/os/ZygoteProcess$ZygoteState;
    .restart local p2    # "msgStr":Ljava/lang/String;
    :catch_28
    move-exception v0

    .line 484
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {p1}, Landroid/os/ZygoteProcess$ZygoteState;->close()V

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IO Exception while communicating with Zygote - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 486
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 485
    const-string v2, "ZygoteProcess"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    new-instance v1, Landroid/os/ZygoteStartFailedEx;

    invoke-direct {v1, v0}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist bootCompleted(Ljava/lang/String;)V
    .registers 6
    .param p1, "abi"    # Ljava/lang/String;

    .line 903
    :try_start_0
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_1f

    .line 904
    :try_start_3
    invoke-direct {p0, p1}, Landroid/os/ZygoteProcess;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v1

    .line 905
    .local v1, "state":Landroid/os/ZygoteProcess$ZygoteState;
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    const-string v3, "1\n--boot-completed\n"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 906
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 907
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    .line 908
    nop

    .end local v1    # "state":Landroid/os/ZygoteProcess$ZygoteState;
    monitor-exit v0

    .line 911
    nop

    .line 912
    return-void

    .line 908
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    .end local p0    # "this":Landroid/os/ZygoteProcess;
    .end local p1    # "abi":Ljava/lang/String;
    :try_start_1e
    throw v1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1f} :catch_1f

    .line 909
    .restart local p0    # "this":Landroid/os/ZygoteProcess;
    .restart local p1    # "abi":Ljava/lang/String;
    :catch_1f
    move-exception v0

    .line 910
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to inform zygote of boot_completed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist commandSupportedByUsap(Ljava/util/ArrayList;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 577
    .local p0, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 578
    .local v1, "flag":Ljava/lang/String;
    sget-object v2, Landroid/os/ZygoteProcess;->INVALID_USAP_FLAGS:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_15
    if-ge v5, v3, :cond_23

    aget-object v6, v2, v5

    .line 579
    .local v6, "badFlag":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 580
    return v4

    .line 578
    .end local v6    # "badFlag":Ljava/lang/String;
    :cond_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 583
    :cond_23
    const-string v2, "--nice-name="

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 585
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/Zygote;->getWrapProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 586
    return v4

    .line 589
    .end local v1    # "flag":Ljava/lang/String;
    :cond_38
    goto :goto_4

    .line 591
    :cond_39
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist fetchUsapPoolEnabledProp()Z
    .registers 5

    .line 798
    iget-boolean v0, p0, Landroid/os/ZygoteProcess;->mUsapPoolEnabled:Z

    .line 800
    .local v0, "origVal":Z
    const-string/jumbo v1, "usap_pool_enabled"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/os/ZygoteConfig;->getBool(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Landroid/os/ZygoteProcess;->mUsapPoolEnabled:Z

    .line 803
    iget-boolean v1, p0, Landroid/os/ZygoteProcess;->mUsapPoolEnabled:Z

    if-eq v0, v1, :cond_11

    const/4 v2, 0x1

    .line 805
    .local v2, "valueChanged":Z
    :cond_11
    if-eqz v2, :cond_2e

    .line 806
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "usapPoolEnabled = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/os/ZygoteProcess;->mUsapPoolEnabled:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ZygoteProcess"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_2e
    return v2
.end method

.method private blacklist fetchUsapPoolEnabledPropWithMinInterval()Z
    .registers 9

    .line 818
    iget-boolean v0, p0, Landroid/os/ZygoteProcess;->mUsapPoolSupported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 820
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 822
    .local v2, "currentTimestamp":J
    iget-boolean v0, p0, Landroid/os/ZygoteProcess;->mIsFirstPropCheck:Z

    if-nez v0, :cond_1b

    iget-wide v4, p0, Landroid/os/ZygoteProcess;->mLastPropCheckTimestamp:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0xea60

    cmp-long v0, v4, v6

    if-ltz v0, :cond_1a

    goto :goto_1b

    .line 829
    :cond_1a
    return v1

    .line 824
    :cond_1b
    :goto_1b
    iput-boolean v1, p0, Landroid/os/ZygoteProcess;->mIsFirstPropCheck:Z

    .line 825
    iput-wide v2, p0, Landroid/os/ZygoteProcess;->mLastPropCheckTimestamp:J

    .line 826
    invoke-direct {p0}, Landroid/os/ZygoteProcess;->fetchUsapPoolEnabledProp()Z

    move-result v0

    return v0
.end method

.method private static blacklist getAbiList(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/util/List;
    .registers 6
    .param p0, "writer"    # Ljava/io/BufferedWriter;
    .param p1, "inputStream"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedWriter;",
            "Ljava/io/DataInputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 397
    const-string v0, "--query-abi-list"

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 399
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flush()V

    .line 402
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 403
    .local v0, "numBytes":I
    new-array v1, v0, [B

    .line 404
    .local v1, "bytes":[B
    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 406
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 408
    .local v2, "rawList":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method private blacklist informZygotesOfUsapPoolStatus()V
    .registers 7

    .line 1215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1\n--usap-pool-enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/os/ZygoteProcess;->mUsapPoolEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1217
    .local v0, "command":Ljava/lang/String;
    iget-object v1, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1219
    :try_start_1e
    invoke-direct {p0}, Landroid/os/ZygoteProcess;->attemptConnectionToPrimaryZygote()V

    .line 1221
    iget-object v2, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    iget-object v2, v2, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1222
    iget-object v2, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    iget-object v2, v2, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_2f} :catch_6d
    .catchall {:try_start_1e .. :try_end_2f} :catchall_6b

    .line 1228
    nop

    .line 1230
    :try_start_30
    iget-object v2, p0, Landroid/os/ZygoteProcess;->mZygoteSecondarySocketAddress:Landroid/net/LocalSocketAddress;
    :try_end_32
    .catchall {:try_start_30 .. :try_end_32} :catchall_6b

    if-eqz v2, :cond_58

    .line 1232
    :try_start_34
    invoke-direct {p0}, Landroid/os/ZygoteProcess;->attemptConnectionToSecondaryZygote()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_57
    .catchall {:try_start_34 .. :try_end_37} :catchall_6b

    .line 1235
    :try_start_37
    iget-object v2, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    iget-object v2, v2, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1236
    iget-object v2, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    iget-object v2, v2, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 1239
    iget-object v2, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    iget-object v2, v2, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_4c} :catch_4e
    .catchall {:try_start_37 .. :try_end_4c} :catchall_6b

    .line 1244
    nop

    .line 1247
    goto :goto_58

    .line 1240
    :catch_4e
    move-exception v2

    .line 1241
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_4f
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "USAP pool state change cause an irrecoverable error"

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "command":Ljava/lang/String;
    .end local p0    # "this":Landroid/os/ZygoteProcess;
    throw v3
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_57} :catch_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_6b

    .line 1245
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v0    # "command":Ljava/lang/String;
    .restart local p0    # "this":Landroid/os/ZygoteProcess;
    :catch_57
    move-exception v2

    .line 1254
    :cond_58
    :goto_58
    :try_start_58
    iget-object v2, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    iget-object v2, v2, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5f} :catch_62
    .catchall {:try_start_58 .. :try_end_5f} :catchall_6b

    .line 1259
    nop

    .line 1260
    :try_start_60
    monitor-exit v1

    .line 1261
    return-void

    .line 1255
    :catch_62
    move-exception v2

    .line 1256
    .restart local v2    # "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "USAP pool state change cause an irrecoverable error"

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "command":Ljava/lang/String;
    .end local p0    # "this":Landroid/os/ZygoteProcess;
    throw v3

    .line 1260
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v0    # "command":Ljava/lang/String;
    .restart local p0    # "this":Landroid/os/ZygoteProcess;
    :catchall_6b
    move-exception v2

    goto :goto_95

    .line 1223
    :catch_6d
    move-exception v2

    .line 1224
    .restart local v2    # "ioe":Ljava/io/IOException;
    iget-boolean v3, p0, Landroid/os/ZygoteProcess;->mUsapPoolEnabled:Z

    if-nez v3, :cond_74

    const/4 v3, 0x1

    goto :goto_75

    :cond_74
    const/4 v3, 0x0

    :goto_75
    iput-boolean v3, p0, Landroid/os/ZygoteProcess;->mUsapPoolEnabled:Z

    .line 1225
    const-string v3, "ZygoteProcess"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to inform zygotes of USAP pool status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1226
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1225
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    monitor-exit v1

    return-void

    .line 1260
    .end local v2    # "ioe":Ljava/io/IOException;
    :goto_95
    monitor-exit v1
    :try_end_96
    .catchall {:try_start_60 .. :try_end_96} :catchall_6b

    throw v2
.end method

.method private blacklist maybeSetApiDenylistExemptions(Landroid/os/ZygoteProcess$ZygoteState;Z)Z
    .registers 9
    .param p1, "state"    # Landroid/os/ZygoteProcess$ZygoteState;
    .param p2, "sendIfEmpty"    # Z

    .line 966
    const/4 v0, 0x0

    const-string v1, "ZygoteProcess"

    if-eqz p1, :cond_bf

    invoke-virtual {p1}, Landroid/os/ZygoteProcess$ZygoteState;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_d

    goto/16 :goto_bf

    .line 969
    :cond_d
    const/4 v2, 0x1

    if-nez p2, :cond_19

    iget-object v3, p0, Landroid/os/ZygoteProcess;->mApiDenylistExemptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 970
    return v2

    .line 973
    :cond_19
    iget-object v3, p0, Landroid/os/ZygoteProcess;->mApiDenylistExemptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 975
    .local v4, "s":Ljava/lang/String;
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_43

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_43

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_42

    goto :goto_43

    .line 980
    .end local v4    # "s":Ljava/lang/String;
    :cond_42
    goto :goto_1f

    .line 976
    .restart local v4    # "s":Ljava/lang/String;
    :cond_43
    :goto_43
    const-string v2, "Failed to set API denylist exemptions: Bad character"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/os/ZygoteProcess;->mApiDenylistExemptions:Ljava/util/List;

    .line 978
    return v0

    .line 982
    .end local v4    # "s":Ljava/lang/String;
    :cond_4f
    :try_start_4f
    iget-object v3, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    iget-object v4, p0, Landroid/os/ZygoteProcess;->mApiDenylistExemptions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 983
    iget-object v3, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 984
    iget-object v3, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    const-string v4, "--set-api-denylist-exemptions"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 985
    iget-object v3, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 986
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_71
    iget-object v4, p0, Landroid/os/ZygoteProcess;->mApiDenylistExemptions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8e

    .line 987
    iget-object v4, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    iget-object v5, p0, Landroid/os/ZygoteProcess;->mApiDenylistExemptions:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 988
    iget-object v4, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 986
    add-int/lit8 v3, v3, 0x1

    goto :goto_71

    .line 990
    .end local v3    # "i":I
    :cond_8e
    iget-object v3, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 991
    iget-object v3, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 992
    .local v3, "status":I
    if-eqz v3, :cond_b1

    .line 993
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set API denylist exemptions; status "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_b1} :catch_b2

    .line 995
    :cond_b1
    return v2

    .line 996
    .end local v3    # "status":I
    :catch_b2
    move-exception v2

    .line 997
    .local v2, "ioe":Ljava/io/IOException;
    const-string v3, "Failed to set API denylist exemptions"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 998
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/os/ZygoteProcess;->mApiDenylistExemptions:Ljava/util/List;

    .line 999
    return v0

    .line 967
    .end local v2    # "ioe":Ljava/io/IOException;
    :cond_bf
    :goto_bf
    const-string v2, "Can\'t set API denylist exemptions: no zygote connection"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    return v0
.end method

.method private greylist-max-o maybeSetHiddenApiAccessLogSampleRate(Landroid/os/ZygoteProcess$ZygoteState;)V
    .registers 6
    .param p1, "state"    # Landroid/os/ZygoteProcess$ZygoteState;

    .line 1004
    const-string v0, "ZygoteProcess"

    if-eqz p1, :cond_69

    invoke-virtual {p1}, Landroid/os/ZygoteProcess$ZygoteState;->isClosed()Z

    move-result v1

    if-nez v1, :cond_69

    iget v1, p0, Landroid/os/ZygoteProcess;->mHiddenApiAccessLogSampleRate:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_10

    goto :goto_69

    .line 1009
    :cond_10
    :try_start_10
    iget-object v1, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1010
    iget-object v1, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 1011
    iget-object v1, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--hidden-api-log-sampling-rate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/os/ZygoteProcess;->mHiddenApiAccessLogSampleRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1013
    iget-object v1, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 1014
    iget-object v1, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 1015
    iget-object v1, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 1016
    .local v1, "status":I
    if-eqz v1, :cond_61

    .line 1017
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set hidden API log sampling rate; status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_61} :catch_62

    .line 1021
    .end local v1    # "status":I
    :cond_61
    goto :goto_68

    .line 1019
    :catch_62
    move-exception v1

    .line 1020
    .local v1, "ioe":Ljava/io/IOException;
    const-string v2, "Failed to set hidden API log sampling rate"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1022
    .end local v1    # "ioe":Ljava/io/IOException;
    :goto_68
    return-void

    .line 1005
    :cond_69
    :goto_69
    return-void
.end method

.method private blacklist maybeSetHiddenApiAccessStatslogSampleRate(Landroid/os/ZygoteProcess$ZygoteState;)V
    .registers 6
    .param p1, "state"    # Landroid/os/ZygoteProcess$ZygoteState;

    .line 1025
    const-string v0, "ZygoteProcess"

    if-eqz p1, :cond_69

    invoke-virtual {p1}, Landroid/os/ZygoteProcess$ZygoteState;->isClosed()Z

    move-result v1

    if-nez v1, :cond_69

    iget v1, p0, Landroid/os/ZygoteProcess;->mHiddenApiAccessStatslogSampleRate:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_10

    goto :goto_69

    .line 1030
    :cond_10
    :try_start_10
    iget-object v1, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1031
    iget-object v1, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 1032
    iget-object v1, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--hidden-api-statslog-sampling-rate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/os/ZygoteProcess;->mHiddenApiAccessStatslogSampleRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1034
    iget-object v1, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 1035
    iget-object v1, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 1036
    iget-object v1, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 1037
    .local v1, "status":I
    if-eqz v1, :cond_61

    .line 1038
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set hidden API statslog sampling rate; status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_61} :catch_62

    .line 1043
    .end local v1    # "status":I
    :cond_61
    goto :goto_68

    .line 1041
    :catch_62
    move-exception v1

    .line 1042
    .local v1, "ioe":Ljava/io/IOException;
    const-string v2, "Failed to set hidden API statslog sampling rate"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1044
    .end local v1    # "ioe":Ljava/io/IOException;
    :goto_68
    return-void

    .line 1026
    :cond_69
    :goto_69
    return-void
.end method

.method private greylist-max-o openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;
    .registers 5
    .param p1, "abi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    .line 1084
    :try_start_0
    invoke-direct {p0}, Landroid/os/ZygoteProcess;->attemptConnectionToPrimaryZygote()V

    .line 1086
    iget-object v0, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-virtual {v0, p1}, Landroid/os/ZygoteProcess$ZygoteState;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1087
    iget-object v0, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    return-object v0

    .line 1090
    :cond_e
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mZygoteSecondarySocketAddress:Landroid/net/LocalSocketAddress;

    if-eqz v0, :cond_20

    .line 1092
    invoke-direct {p0}, Landroid/os/ZygoteProcess;->attemptConnectionToSecondaryZygote()V

    .line 1094
    iget-object v0, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-virtual {v0, p1}, Landroid/os/ZygoteProcess$ZygoteState;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1095
    iget-object v0, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1f} :catch_3a

    return-object v0

    .line 1100
    :cond_20
    nop

    .line 1102
    new-instance v0, Landroid/os/ZygoteStartFailedEx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported zygote ABI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1098
    :catch_3a
    move-exception v0

    .line 1099
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Landroid/os/ZygoteStartFailedEx;

    const-string v2, "Error connecting to zygote"

    invoke-direct {v1, v2, v0}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist policySpecifiesUsapPoolLaunch(I)Z
    .registers 3
    .param p0, "zygotePolicyFlags"    # I

    .line 548
    and-int/lit8 v0, p0, 0x5

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public static blacklist setAppZygotePreloadTimeout(I)V
    .registers 3
    .param p0, "timeoutMs"    # I

    .line 1111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Changing app-zygote preload timeout to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZygoteProcess"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    sput p0, Landroid/os/ZygoteProcess;->sAppZygotePreloadTimeoutMs:I

    .line 1114
    return-void
.end method

.method private blacklist shouldAttemptUsapLaunch(ILjava/util/ArrayList;)Z
    .registers 4
    .param p1, "zygotePolicyFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 528
    .local p2, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-boolean v0, p0, Landroid/os/ZygoteProcess;->mUsapPoolSupported:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Landroid/os/ZygoteProcess;->mUsapPoolEnabled:Z

    if-eqz v0, :cond_16

    .line 530
    invoke-static {p1}, Landroid/os/ZygoteProcess;->policySpecifiesUsapPoolLaunch(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 531
    invoke-static {p2}, Landroid/os/ZygoteProcess;->commandSupportedByUsap(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 528
    :goto_17
    return v0
.end method

.method private blacklist startViaZygote(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .registers 43
    .param p1, "processClass"    # Ljava/lang/String;
    .param p2, "niceName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "gid"    # I
    .param p5, "gids"    # [I
    .param p6, "runtimeFlags"    # I
    .param p7, "mountExternal"    # I
    .param p8, "targetSdkVersion"    # I
    .param p9, "seInfo"    # Ljava/lang/String;
    .param p10, "abi"    # Ljava/lang/String;
    .param p11, "instructionSet"    # Ljava/lang/String;
    .param p12, "appDataDir"    # Ljava/lang/String;
    .param p13, "invokeWith"    # Ljava/lang/String;
    .param p14, "startChildZygote"    # Z
    .param p15, "packageName"    # Ljava/lang/String;
    .param p16, "zygotePolicyFlags"    # I
    .param p17, "isTopApp"    # Z
    .param p18, "disabledCompatChanges"    # [J
    .param p21, "bindMountAppsData"    # Z
    .param p22, "bindMountAppStorageDirs"    # Z
    .param p23, "bindMountOverrideSysprops"    # Z
    .param p24, "extraArgs"    # [Ljava/lang/String;
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
            "Z",
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    .line 650
    .local p19, "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .local p20, "allowlistedDataInfoList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move/from16 v4, p7

    move-object/from16 v5, p9

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    move-object/from16 v8, p13

    move-object/from16 v9, p15

    move-object/from16 v10, p18

    move-object/from16 v11, p24

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 654
    .local v12, "argsForZygote":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "--runtime-args"

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "--setuid="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v13, p3

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "--setgid="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v14, p4

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "--runtime-flags="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v15, p6

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    const/4 v0, 0x1

    if-ne v4, v0, :cond_72

    .line 659
    const-string v0, "--mount-external-default"

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8c

    .line 660
    :cond_72
    const/4 v0, 0x2

    if-ne v4, v0, :cond_7b

    .line 661
    const-string v0, "--mount-external-installer"

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8c

    .line 662
    :cond_7b
    const/4 v0, 0x3

    if-ne v4, v0, :cond_84

    .line 663
    const-string v0, "--mount-external-pass-through"

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8c

    .line 664
    :cond_84
    const/4 v0, 0x4

    if-ne v4, v0, :cond_8c

    .line 665
    const-string v0, "--mount-external-android-writable"

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    :cond_8c
    :goto_8c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--target-sdk-version="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v4, p8

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    if-eqz v3, :cond_d7

    array-length v0, v3

    if-lez v0, :cond_d7

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 673
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v4, "--setgroups="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    array-length v4, v3

    .line 676
    .local v4, "sz":I
    const/16 v17, 0x0

    move/from16 v3, v17

    .local v3, "i":I
    :goto_b8
    if-ge v3, v4, :cond_ce

    .line 677
    if-eqz v3, :cond_c4

    .line 678
    move/from16 v17, v3

    const/16 v3, 0x2c

    .end local v3    # "i":I
    .local v17, "i":I
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_c6

    .line 677
    .end local v17    # "i":I
    .restart local v3    # "i":I
    :cond_c4
    move/from16 v17, v3

    .line 680
    .end local v3    # "i":I
    .restart local v17    # "i":I
    :goto_c6
    aget v3, p5, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 676
    add-int/lit8 v3, v17, 0x1

    .end local v17    # "i":I
    .restart local v3    # "i":I
    goto :goto_b8

    :cond_ce
    move/from16 v17, v3

    .line 683
    .end local v3    # "i":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "sz":I
    :cond_d7
    if-eqz v2, :cond_ef

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--nice-name="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    :cond_ef
    if-eqz v5, :cond_107

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--seinfo="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    :cond_107
    if-eqz v6, :cond_11f

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--instruction-set="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    :cond_11f
    if-eqz v7, :cond_137

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--app-data-dir="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    :cond_137
    if-eqz v8, :cond_141

    .line 703
    const-string v0, "--invoke-with"

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    :cond_141
    if-eqz p14, :cond_148

    .line 708
    const-string v0, "--start-child-zygote"

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    :cond_148
    if-eqz v9, :cond_160

    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--package-name="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    :cond_160
    if-eqz p17, :cond_167

    .line 716
    const-string v0, "--is-top-app"

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    :cond_167
    if-eqz p19, :cond_1d7

    invoke-interface/range {p19 .. p19}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1d7

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 720
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    const-string v3, "--pkg-data-info-map"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    const/4 v3, 0x0

    .line 723
    .local v3, "started":Z
    invoke-interface/range {p19 .. p19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_187
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1d0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 724
    .local v17, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    if-eqz v3, :cond_19b

    .line 725
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_19d

    .line 724
    :cond_19b
    const/16 v2, 0x2c

    .line 727
    :goto_19d
    const/4 v3, 0x1

    .line 728
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 730
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 732
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 733
    .end local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    move-object/from16 v2, p2

    goto :goto_187

    .line 734
    :cond_1d0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "started":Z
    :cond_1d7
    if-eqz p20, :cond_24e

    invoke-interface/range {p20 .. p20}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_24e

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 738
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    const-string v2, "--allowlisted-data-info-map"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    const/4 v2, 0x0

    .line 741
    .local v2, "started":Z
    invoke-interface/range {p20 .. p20}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_245

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 742
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    if-eqz v2, :cond_20d

    .line 743
    move/from16 v17, v2

    const/16 v2, 0x2c

    .end local v2    # "started":Z
    .local v17, "started":Z
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_211

    .line 742
    .end local v17    # "started":Z
    .restart local v2    # "started":Z
    :cond_20d
    move/from16 v17, v2

    const/16 v2, 0x2c

    .line 745
    .end local v2    # "started":Z
    .restart local v17    # "started":Z
    :goto_211
    const/16 v17, 0x1

    .line 746
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 748
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 750
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 751
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    move/from16 v2, v17

    goto :goto_1f7

    .line 752
    .end local v17    # "started":Z
    .restart local v2    # "started":Z
    :cond_245
    move/from16 v17, v2

    .end local v2    # "started":Z
    .restart local v17    # "started":Z
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v17    # "started":Z
    :cond_24e
    if-eqz p22, :cond_255

    .line 756
    const-string v0, "--bind-mount-storage-dirs"

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    :cond_255
    if-eqz p21, :cond_25c

    .line 760
    const-string v0, "--bind-mount-data-dirs"

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    :cond_25c
    if-eqz p23, :cond_263

    .line 764
    const-string v0, "--bind-mount-sysprop-overrides"

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    :cond_263
    if-eqz v10, :cond_291

    array-length v0, v10

    if-lez v0, :cond_291

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 769
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    const-string v2, "--disabled-compat-changes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    array-length v2, v10

    .line 772
    .local v2, "sz":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_274
    if-ge v3, v2, :cond_28a

    .line 773
    if-eqz v3, :cond_27e

    .line 774
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_280

    .line 773
    :cond_27e
    const/16 v4, 0x2c

    .line 776
    :goto_280
    aget-wide v4, v10, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 772
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v5, p9

    goto :goto_274

    .line 779
    .end local v3    # "i":I
    :cond_28a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "sz":I
    :cond_291
    move-object/from16 v2, p1

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    if-eqz v11, :cond_29b

    .line 785
    invoke-static {v12, v11}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 788
    :cond_29b
    iget-object v3, v1, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 791
    move-object/from16 v4, p10

    :try_start_2a0
    invoke-direct {v1, v4}, Landroid/os/ZygoteProcess;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v0
    :try_end_2a4
    .catchall {:try_start_2a0 .. :try_end_2a4} :catchall_2ae

    move/from16 v5, p16

    :try_start_2a6
    invoke-direct {v1, v0, v5, v12}, Landroid/os/ZygoteProcess;->zygoteSendArgsAndGetResult(Landroid/os/ZygoteProcess$ZygoteState;ILjava/util/ArrayList;)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    monitor-exit v3

    return-object v0

    .line 794
    :catchall_2ac
    move-exception v0

    goto :goto_2b1

    :catchall_2ae
    move-exception v0

    move/from16 v5, p16

    :goto_2b1
    monitor-exit v3
    :try_end_2b2
    .catchall {:try_start_2a6 .. :try_end_2b2} :catchall_2ac

    throw v0
.end method

.method public static greylist-max-o waitForConnectionToZygote(Landroid/net/LocalSocketAddress;)V
    .registers 7
    .param p0, "zygoteSocketAddress"    # Landroid/net/LocalSocketAddress;

    .line 1190
    const/16 v0, 0x4b0

    .line 1191
    .local v0, "numRetries":I
    move v1, v0

    .local v1, "n":I
    :goto_3
    const-string v2, "ZygoteProcess"

    if-ltz v1, :cond_37

    .line 1193
    nop

    .line 1194
    const/4 v3, 0x0

    :try_start_9
    invoke-static {p0, v3}, Landroid/os/ZygoteProcess$ZygoteState;->connect(Landroid/net/LocalSocketAddress;Landroid/net/LocalSocketAddress;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v3

    .line 1195
    .local v3, "zs":Landroid/os/ZygoteProcess$ZygoteState;
    invoke-virtual {v3}, Landroid/os/ZygoteProcess$ZygoteState;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_10} :catch_11

    .line 1196
    return-void

    .line 1197
    .end local v3    # "zs":Landroid/os/ZygoteProcess$ZygoteState;
    :catch_11
    move-exception v3

    .line 1198
    .local v3, "ioe":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got error connecting to zygote, retrying. msg= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1199
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1198
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    .end local v3    # "ioe":Ljava/io/IOException;
    const-wide/16 v2, 0x32

    :try_start_2e
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_31} :catch_32

    .line 1204
    :goto_31
    goto :goto_34

    :catch_32
    move-exception v2

    goto :goto_31

    .line 1191
    :goto_34
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 1206
    .end local v1    # "n":I
    :cond_37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to connect to Zygote through socket "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1207
    invoke-virtual {p0}, Landroid/net/LocalSocketAddress;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1206
    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    return-void
.end method

.method public static greylist-max-o waitForConnectionToZygote(Ljava/lang/String;)V
    .registers 3
    .param p0, "zygoteSocketName"    # Ljava/lang/String;

    .line 1180
    new-instance v0, Landroid/net/LocalSocketAddress;

    sget-object v1, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, p0, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 1182
    .local v0, "zygoteSocketAddress":Landroid/net/LocalSocketAddress;
    invoke-static {v0}, Landroid/os/ZygoteProcess;->waitForConnectionToZygote(Landroid/net/LocalSocketAddress;)V

    .line 1183
    return-void
.end method

.method private blacklist zygoteSendArgsAndGetResult(Landroid/os/ZygoteProcess$ZygoteState;ILjava/util/ArrayList;)Landroid/os/Process$ProcessStartResult;
    .registers 8
    .param p1, "zygoteState"    # Landroid/os/ZygoteProcess$ZygoteState;
    .param p2, "zygotePolicyFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ZygoteProcess$ZygoteState;",
            "I",
            "Ljava/util/ArrayList<",
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

    .line 424
    .local p3, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 427
    .local v1, "arg":Ljava/lang/String;
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_38

    .line 429
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_30

    .line 431
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_28

    .line 434
    .end local v1    # "arg":Ljava/lang/String;
    goto :goto_4

    .line 432
    .restart local v1    # "arg":Ljava/lang/String;
    :cond_28
    new-instance v0, Landroid/os/ZygoteStartFailedEx;

    const-string v2, "Embedded nulls not allowed"

    invoke-direct {v0, v2}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_30
    new-instance v0, Landroid/os/ZygoteStartFailedEx;

    const-string v2, "Embedded carriage returns not allowed"

    invoke-direct {v0, v2}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_38
    new-instance v0, Landroid/os/ZygoteStartFailedEx;

    const-string v2, "Embedded newlines not allowed"

    invoke-direct {v0, v2}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    .end local v1    # "arg":Ljava/lang/String;
    :cond_40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, p3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "msgStr":Ljava/lang/String;
    invoke-direct {p0, p2, p3}, Landroid/os/ZygoteProcess;->shouldAttemptUsapLaunch(ILjava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 450
    :try_start_69
    invoke-direct {p0, p1, v0}, Landroid/os/ZygoteProcess;->attemptUsapSendArgsAndGetResult(Landroid/os/ZygoteProcess$ZygoteState;Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v1
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6d} :catch_6e

    return-object v1

    .line 451
    :catch_6e
    move-exception v1

    .line 454
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IO Exception while communicating with USAP pool - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 455
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 454
    const-string v3, "ZygoteProcess"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_8b
    invoke-direct {p0, p1, v0}, Landroid/os/ZygoteProcess;->attemptZygoteSendArgsAndGetResult(Landroid/os/ZygoteProcess$ZygoteState;Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist bootCompleted()V
    .registers 3

    .line 893
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    if-lez v0, :cond_d

    .line 894
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Landroid/os/ZygoteProcess;->bootCompleted(Ljava/lang/String;)V

    .line 896
    :cond_d
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_19

    .line 897
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Landroid/os/ZygoteProcess;->bootCompleted(Ljava/lang/String;)V

    .line 899
    :cond_19
    return-void
.end method

.method public greylist-max-o close()V
    .registers 2

    .line 836
    iget-object v0, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    if-eqz v0, :cond_9

    .line 837
    iget-object v0, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-virtual {v0}, Landroid/os/ZygoteProcess$ZygoteState;->close()V

    .line 839
    :cond_9
    iget-object v0, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    if-eqz v0, :cond_12

    .line 840
    iget-object v0, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-virtual {v0}, Landroid/os/ZygoteProcess$ZygoteState;->close()V

    .line 842
    :cond_12
    return-void
.end method

.method public greylist-max-o establishZygoteConnectionForAbi(Ljava/lang/String;)V
    .registers 6
    .param p1, "abi"    # Ljava/lang/String;

    .line 851
    :try_start_0
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_0 .. :try_end_3} :catch_c

    .line 852
    :try_start_3
    invoke-direct {p0, p1}, Landroid/os/ZygoteProcess;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;

    .line 853
    monitor-exit v0

    .line 856
    nop

    .line 857
    return-void

    .line 853
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    .end local p0    # "this":Landroid/os/ZygoteProcess;
    .end local p1    # "abi":Ljava/lang/String;
    :try_start_b
    throw v1
    :try_end_c
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_b .. :try_end_c} :catch_c

    .line 854
    .restart local p0    # "this":Landroid/os/ZygoteProcess;
    .restart local p1    # "abi":Ljava/lang/String;
    :catch_c
    move-exception v0

    .line 855
    .local v0, "ex":Landroid/os/ZygoteStartFailedEx;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to connect to zygote for abi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public greylist-max-o getPrimarySocketAddress()Landroid/net/LocalSocketAddress;
    .registers 2

    .line 141
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mZygoteSocketAddress:Landroid/net/LocalSocketAddress;

    return-object v0
.end method

.method public blacklist getZygotePid(Ljava/lang/String;)I
    .registers 8
    .param p1, "abi"    # Ljava/lang/String;

    .line 864
    :try_start_0
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_41

    .line 865
    :try_start_3
    invoke-direct {p0, p1}, Landroid/os/ZygoteProcess;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v1

    .line 868
    .local v1, "state":Landroid/os/ZygoteProcess$ZygoteState;
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 870
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 872
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    const-string v3, "--get-pid"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 873
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 874
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 877
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 878
    .local v2, "numBytes":I
    new-array v3, v2, [B

    .line 879
    .local v3, "bytes":[B
    iget-object v4, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v4, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 881
    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    monitor-exit v0

    return v4

    .line 882
    .end local v1    # "state":Landroid/os/ZygoteProcess$ZygoteState;
    .end local v2    # "numBytes":I
    .end local v3    # "bytes":[B
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    .end local p0    # "this":Landroid/os/ZygoteProcess;
    .end local p1    # "abi":Ljava/lang/String;
    :try_start_40
    throw v1
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_41} :catch_41

    .line 883
    .restart local p0    # "this":Landroid/os/ZygoteProcess;
    .restart local p1    # "abi":Ljava/lang/String;
    :catch_41
    move-exception v0

    .line 884
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failure retrieving pid"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist preloadApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z
    .registers 10
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "abi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1122
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1124
    :try_start_3
    invoke-direct {p0, p2}, Landroid/os/ZygoteProcess;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v1

    .line 1125
    .local v1, "state":Landroid/os/ZygoteProcess$ZygoteState;
    invoke-static {v1}, Landroid/os/ZygoteProcess$ZygoteState;->-$$Nest$fgetmZygoteSessionSocket(Landroid/os/ZygoteProcess$ZygoteState;)Landroid/net/LocalSocket;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getSoTimeout()I

    move-result v2
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_73

    .line 1128
    .local v2, "previousSocketTimeout":I
    :try_start_f
    invoke-static {v1}, Landroid/os/ZygoteProcess$ZygoteState;->-$$Nest$fgetmZygoteSessionSocket(Landroid/os/ZygoteProcess$ZygoteState;)Landroid/net/LocalSocket;

    move-result-object v3

    sget v4, Landroid/os/ZygoteProcess;->sAppZygotePreloadTimeoutMs:I

    invoke-virtual {v3, v4}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 1130
    iget-object v3, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1131
    iget-object v3, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 1133
    iget-object v3, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    const-string v4, "--preload-app"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1134
    iget-object v3, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 1138
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 1139
    .local v3, "parcel":Landroid/os/Parcel;
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1140
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v5

    .line 1141
    .local v5, "encodedParcelData":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1142
    iget-object v6, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v6, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1143
    iget-object v6, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    .line 1145
    iget-object v6, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V

    .line 1147
    iget-object v6, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6
    :try_end_5c
    .catchall {:try_start_f .. :try_end_5c} :catchall_69

    .line 1149
    .end local v3    # "parcel":Landroid/os/Parcel;
    .end local v5    # "encodedParcelData":Ljava/lang/String;
    .local v6, "ret":I
    :try_start_5c
    invoke-static {v1}, Landroid/os/ZygoteProcess$ZygoteState;->-$$Nest$fgetmZygoteSessionSocket(Landroid/os/ZygoteProcess$ZygoteState;)Landroid/net/LocalSocket;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 1150
    nop

    .line 1151
    if-nez v6, :cond_67

    const/4 v4, 0x1

    :cond_67
    monitor-exit v0

    return v4

    .line 1149
    .end local v6    # "ret":I
    :catchall_69
    move-exception v3

    invoke-static {v1}, Landroid/os/ZygoteProcess$ZygoteState;->-$$Nest$fgetmZygoteSessionSocket(Landroid/os/ZygoteProcess$ZygoteState;)Landroid/net/LocalSocket;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 1150
    nop

    .end local p0    # "this":Landroid/os/ZygoteProcess;
    .end local p1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local p2    # "abi":Ljava/lang/String;
    throw v3

    .line 1152
    .end local v1    # "state":Landroid/os/ZygoteProcess$ZygoteState;
    .end local v2    # "previousSocketTimeout":I
    .restart local p0    # "this":Landroid/os/ZygoteProcess;
    .restart local p1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local p2    # "abi":Ljava/lang/String;
    :catchall_73
    move-exception v1

    monitor-exit v0
    :try_end_75
    .catchall {:try_start_5c .. :try_end_75} :catchall_73

    throw v1
.end method

.method public greylist-max-o preloadDefault(Ljava/lang/String;)Z
    .registers 6
    .param p1, "abi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1162
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1163
    :try_start_3
    invoke-direct {p0, p1}, Landroid/os/ZygoteProcess;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v1

    .line 1165
    .local v1, "state":Landroid/os/ZygoteProcess$ZygoteState;
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1166
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 1167
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    const-string v3, "--preload-default"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1168
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 1169
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 1171
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    if-nez v2, :cond_2e

    const/4 v2, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v2, 0x0

    :goto_2f
    monitor-exit v0

    return v2

    .line 1172
    .end local v1    # "state":Landroid/os/ZygoteProcess$ZygoteState;
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public blacklist setApiDenylistExemptions(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 924
    .local p1, "exemptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 925
    :try_start_3
    iput-object p1, p0, Landroid/os/ZygoteProcess;->mApiDenylistExemptions:Ljava/util/List;

    .line 926
    iget-object v1, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/os/ZygoteProcess;->maybeSetApiDenylistExemptions(Landroid/os/ZygoteProcess$ZygoteState;Z)Z

    move-result v1

    .line 927
    .local v1, "ok":Z
    if-eqz v1, :cond_15

    .line 928
    iget-object v3, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-direct {p0, v3, v2}, Landroid/os/ZygoteProcess;->maybeSetApiDenylistExemptions(Landroid/os/ZygoteProcess$ZygoteState;Z)Z

    move-result v2

    move v1, v2

    .line 930
    :cond_15
    monitor-exit v0

    return v1

    .line 931
    .end local v1    # "ok":Z
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public greylist-max-o setHiddenApiAccessLogSampleRate(I)V
    .registers 4
    .param p1, "rate"    # I

    .line 942
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 943
    :try_start_3
    iput p1, p0, Landroid/os/ZygoteProcess;->mHiddenApiAccessLogSampleRate:I

    .line 944
    iget-object v1, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-direct {p0, v1}, Landroid/os/ZygoteProcess;->maybeSetHiddenApiAccessLogSampleRate(Landroid/os/ZygoteProcess$ZygoteState;)V

    .line 945
    iget-object v1, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-direct {p0, v1}, Landroid/os/ZygoteProcess;->maybeSetHiddenApiAccessLogSampleRate(Landroid/os/ZygoteProcess$ZygoteState;)V

    .line 946
    monitor-exit v0

    .line 947
    return-void

    .line 946
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist setHiddenApiAccessStatslogSampleRate(I)V
    .registers 4
    .param p1, "rate"    # I

    .line 957
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 958
    :try_start_3
    iput p1, p0, Landroid/os/ZygoteProcess;->mHiddenApiAccessStatslogSampleRate:I

    .line 959
    iget-object v1, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-direct {p0, v1}, Landroid/os/ZygoteProcess;->maybeSetHiddenApiAccessStatslogSampleRate(Landroid/os/ZygoteProcess$ZygoteState;)V

    .line 960
    iget-object v1, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-direct {p0, v1}, Landroid/os/ZygoteProcess;->maybeSetHiddenApiAccessStatslogSampleRate(Landroid/os/ZygoteProcess$ZygoteState;)V

    .line 961
    monitor-exit v0

    .line 962
    return-void

    .line 961
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public final blacklist start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .registers 51
    .param p1, "processClass"    # Ljava/lang/String;
    .param p2, "niceName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "gid"    # I
    .param p5, "gids"    # [I
    .param p6, "runtimeFlags"    # I
    .param p7, "mountExternal"    # I
    .param p8, "targetSdkVersion"    # I
    .param p9, "seInfo"    # Ljava/lang/String;
    .param p10, "abi"    # Ljava/lang/String;
    .param p11, "instructionSet"    # Ljava/lang/String;
    .param p12, "appDataDir"    # Ljava/lang/String;
    .param p13, "invokeWith"    # Ljava/lang/String;
    .param p14, "packageName"    # Ljava/lang/String;
    .param p15, "zygotePolicyFlags"    # I
    .param p16, "isTopApp"    # Z
    .param p17, "disabledCompatChanges"    # [J
    .param p20, "bindMountAppsData"    # Z
    .param p21, "bindMountAppStorageDirs"    # Z
    .param p22, "bindOverrideSysprops"    # Z
    .param p23, "zygoteArgs"    # [Ljava/lang/String;
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

    .line 364
    .local p18, "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .local p19, "allowlistedDataInfoList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    invoke-direct/range {p0 .. p0}, Landroid/os/ZygoteProcess;->fetchUsapPoolEnabledPropWithMinInterval()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 365
    invoke-direct/range {p0 .. p0}, Landroid/os/ZygoteProcess;->informZygotesOfUsapPoolStatus()V

    .line 369
    :cond_9
    const/16 v16, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v17, p14

    move/from16 v18, p15

    move/from16 v19, p16

    move-object/from16 v20, p17

    move-object/from16 v21, p18

    move-object/from16 v22, p19

    move/from16 v23, p20

    move/from16 v24, p21

    move/from16 v25, p22

    move-object/from16 v26, p23

    :try_start_3b
    invoke-direct/range {v2 .. v26}, Landroid/os/ZygoteProcess;->startViaZygote(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v0
    :try_end_3f
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_3b .. :try_end_3f} :catch_40

    return-object v0

    .line 375
    :catch_40
    move-exception v0

    .line 376
    .local v0, "ex":Landroid/os/ZygoteStartFailedEx;
    const-string v1, "ZygoteProcess"

    const-string v2, "Starting VM process through Zygote failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist startChildZygote(Ljava/lang/String;Ljava/lang/String;II[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/os/ChildZygoteProcess;
    .registers 40
    .param p1, "processClass"    # Ljava/lang/String;
    .param p2, "niceName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "gid"    # I
    .param p5, "gids"    # [I
    .param p6, "runtimeFlags"    # I
    .param p7, "seInfo"    # Ljava/lang/String;
    .param p8, "abi"    # Ljava/lang/String;
    .param p9, "acceptedAbiList"    # Ljava/lang/String;
    .param p10, "instructionSet"    # Ljava/lang/String;
    .param p11, "uidRangeStart"    # I
    .param p12, "uidRangeEnd"    # I

    .line 1296
    new-instance v0, Landroid/net/LocalSocketAddress;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1297
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 1299
    .local v1, "serverAddress":Landroid/net/LocalSocketAddress;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--zygote-socket="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/LocalSocketAddress;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--abi-list="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v4, p9

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--uid-range-start="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v6, p11

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--uid-range-end="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v8, p12

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v0, v2, v5, v7}, [Ljava/lang/String;

    move-result-object v26

    .line 1308
    .local v26, "extraArgs":[Ljava/lang/String;
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x4

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p10

    :try_start_ab
    invoke-direct/range {v2 .. v26}, Landroid/os/ZygoteProcess;->startViaZygote(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v0
    :try_end_af
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_ab .. :try_end_af} :catch_ba

    .line 1320
    .local v0, "result":Landroid/os/Process$ProcessStartResult;
    nop

    .line 1322
    new-instance v2, Landroid/os/ChildZygoteProcess;

    iget v3, v0, Landroid/os/Process$ProcessStartResult;->pid:I

    move/from16 v5, p3

    invoke-direct {v2, v1, v3, v5}, Landroid/os/ChildZygoteProcess;-><init>(Landroid/net/LocalSocketAddress;II)V

    return-object v2

    .line 1318
    .end local v0    # "result":Landroid/os/Process$ProcessStartResult;
    :catch_ba
    move-exception v0

    .line 1319
    .local v0, "ex":Landroid/os/ZygoteStartFailedEx;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Starting child-zygote through Zygote failed"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
