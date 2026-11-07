.class public Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;
.super Ljava/lang/Object;
.source "ApduSender.java"


# instance fields
.field private final blacklist mAid:Ljava/lang/String;

.field private blacklist mChannelInUse:Z

.field private final blacklist mChannelInUseLock:Ljava/lang/Object;

.field private final blacklist mChannelKey:Ljava/lang/String;

.field private blacklist mChannelOpened:Z

.field private final blacklist mChannelResponseKey:Ljava/lang/String;

.field private final blacklist mCloseChannel:Lcom/android/internal/telephony/uicc/euicc/apdu/CloseLogicalChannelInvocation;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mLogTag:Ljava/lang/String;

.field private final blacklist mOpenChannel:Lcom/android/internal/telephony/uicc/euicc/apdu/OpenLogicalChannelInvocation;

.field private final blacklist mSupportExtendedApdu:Z

.field private final blacklist mTransmitApdu:Lcom/android/internal/telephony/uicc/euicc/apdu/TransmitApduLogicalChannelInvocation;


# direct methods
.method public static synthetic blacklist $r8$lambda$P7ZxZiPUq_FOIZ3ViYO_Hr02xpI(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;Ljava/lang/Throwable;Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;[B)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->lambda$releaseChannelLockAndReturn$0(Ljava/lang/Throwable;Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;[B)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAid(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mAid:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChannelKey(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mChannelKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChannelResponseKey(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mChannelResponseKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmChannelOpened(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mChannelOpened:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCompleteResponse(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;ILcom/android/internal/telephony/uicc/IccIoResult;Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->getCompleteResponse(ILcom/android/internal/telephony/uicc/IccIoResult;Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetRequestBuilderWithOpenedChannel(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;ZLcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;Landroid/os/Handler;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->getRequestBuilderWithOpenedChannel(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;ZLcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;Landroid/os/Handler;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlogv(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->logv(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreleaseChannelLock(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->releaseChannelLock()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreturnRespnseOrException(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;IZ[BLjava/lang/Throwable;Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;Landroid/os/Handler;)V
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->returnRespnseOrException(IZ[BLjava/lang/Throwable;Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendCommand(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;Ljava/util/List;IZLcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;Landroid/os/Handler;)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->sendCommand(Ljava/util/List;IZLcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtearDownPreferences(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->tearDownPreferences()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILcom/android/internal/telephony/CommandsInterface;Ljava/lang/String;Z)V
    .registers 8

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mChannelInUseLock:Ljava/lang/Object;

    .line 97
    const-string v0, "A0000005591010FFFFFFFF8900000100"

    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_25

    .line 98
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only ISD-R AID is supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 100
    :cond_25
    :goto_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApduSender-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mLogTag:Ljava/lang/String;

    .line 101
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mAid:Ljava/lang/String;

    .line 102
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mContext:Landroid/content/Context;

    .line 103
    iput-boolean p5, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mSupportExtendedApdu:Z

    .line 104
    new-instance p1, Lcom/android/internal/telephony/uicc/euicc/apdu/OpenLogicalChannelInvocation;

    invoke-direct {p1, p3}, Lcom/android/internal/telephony/uicc/euicc/apdu/OpenLogicalChannelInvocation;-><init>(Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mOpenChannel:Lcom/android/internal/telephony/uicc/euicc/apdu/OpenLogicalChannelInvocation;

    .line 105
    new-instance p1, Lcom/android/internal/telephony/uicc/euicc/apdu/CloseLogicalChannelInvocation;

    invoke-direct {p1, p3}, Lcom/android/internal/telephony/uicc/euicc/apdu/CloseLogicalChannelInvocation;-><init>(Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mCloseChannel:Lcom/android/internal/telephony/uicc/euicc/apdu/CloseLogicalChannelInvocation;

    .line 106
    new-instance p1, Lcom/android/internal/telephony/uicc/euicc/apdu/TransmitApduLogicalChannelInvocation;

    invoke-direct {p1, p3}, Lcom/android/internal/telephony/uicc/euicc/apdu/TransmitApduLogicalChannelInvocation;-><init>(Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mTransmitApdu:Lcom/android/internal/telephony/uicc/euicc/apdu/TransmitApduLogicalChannelInvocation;

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "esim-channel_"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mChannelKey:Ljava/lang/String;

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "esim-res-id_"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mChannelResponseKey:Ljava/lang/String;

    .line 109
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 110
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mChannelInUse:Z

    return-void
.end method

.method private blacklist acquireChannelLock()Z
    .registers 6

    .line 504
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mChannelInUseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 505
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mChannelInUse:Z

    if-eqz v1, :cond_2d

    .line 506
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2b

    .line 507
    const-string v1, "Logical channel is in use. Wait."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->logd(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_23

    .line 509
    :try_start_1b
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mChannelInUseLock:Ljava/lang/Object;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_22} :catch_25
    .catchall {:try_start_1b .. :try_end_22} :catchall_23

    goto :goto_25

    :catchall_23
    move-exception p0

    goto :goto_37

    .line 513
    :catch_25
    :goto_25
    :try_start_25
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mChannelInUse:Z

    if-eqz v1, :cond_2d

    .line 514
    monitor-exit v0

    return v2

    .line 517
    :cond_2b
    monitor-exit v0

    return v2

    :cond_2d
    const/4 v1, 0x1

    .line 520
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mChannelInUse:Z

    .line 521
    const-string v2, "Channel lock acquired."

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->logd(Ljava/lang/String;)V

    .line 522
    monitor-exit v0

    return v1

    .line 523
    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_25 .. :try_end_38} :catchall_23

    throw p0
.end method

.method private blacklist closeAndReturn(I[BLjava/lang/Throwable;Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;Landroid/os/Handler;)V
    .registers 8

    .line 415
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mCloseChannel:Lcom/android/internal/telephony/uicc/euicc/apdu/CloseLogicalChannelInvocation;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$4;

    invoke-direct {v1, p0, p3, p4, p2}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$4;-><init>(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;Ljava/lang/Throwable;Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;[B)V

    invoke-virtual {v0, p1, v1, p5}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation;->invoke(Ljava/lang/Object;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private blacklist getCompleteResponse(ILcom/android/internal/telephony/uicc/IccIoResult;Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/telephony/uicc/IccIoResult;",
            "Ljava/io/ByteArrayOutputStream;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Lcom/android/internal/telephony/uicc/IccIoResult;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p2

    if-nez p3, :cond_b

    .line 340
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v5, v1

    goto :goto_d

    :cond_b
    move-object/from16 v5, p3

    .line 341
    :goto_d
    iget-object v1, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    if-eqz v1, :cond_14

    .line 343
    :try_start_11
    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_14

    .line 348
    :catch_14
    :cond_14
    iget v1, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    const/16 v2, 0x61

    if-eq v1, v2, :cond_26

    .line 349
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    iput-object p0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v6, p4

    .line 350
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;->onResult(Ljava/lang/Object;)V

    return-void

    :cond_26
    move-object/from16 v6, p4

    .line 354
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mTransmitApdu:Lcom/android/internal/telephony/uicc/euicc/apdu/TransmitApduLogicalChannelInvocation;

    new-instance v7, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;

    iget v13, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    const-string v14, ""

    const/4 v9, 0x0

    const/16 v10, 0xc0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v8, p1

    invoke-direct/range {v7 .. v14}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;-><init>(IIIIIILjava/lang/String;)V

    move-object v0, v7

    new-instance v2, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$3;

    move-object v3, p0

    move/from16 v4, p1

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$3;-><init>(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;ILjava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    invoke-virtual {v1, v0, v2, v7}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation;->invoke(Ljava/lang/Object;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private blacklist getRequestBuilderWithOpenedChannel(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;ZLcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;Landroid/os/Handler;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;
    .registers 15

    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mContext:Landroid/content/Context;

    .line 175
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mChannelKey:Ljava/lang/String;

    const/4 v2, -0x1

    .line 176
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mContext:Landroid/content/Context;

    .line 178
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mChannelResponseKey:Ljava/lang/String;

    const-string v2, ""

    .line 179
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 180
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 181
    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mSupportExtendedApdu:Z

    invoke-direct {v1, v4, v2}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;-><init>(IZ)V

    const/4 v2, 0x0

    .line 183
    :try_start_28
    invoke-interface {p1, v0, v1}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;->buildRequest([BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2d

    move-object v7, v2

    goto :goto_30

    :catchall_2d
    move-exception v0

    move-object p1, v0

    move-object v7, p1

    .line 187
    :goto_30
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->getCommands()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3e

    if-eqz v7, :cond_3d

    goto :goto_3e

    :cond_3d
    return-object v1

    .line 188
    :cond_3e
    :goto_3e
    const-string p1, "Release as commands are empty or exception occurred"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->logd(Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v3, p0

    move v5, p2

    move-object v8, p3

    move-object v9, p4

    .line 189
    invoke-direct/range {v3 .. v9}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->returnRespnseOrException(IZ[BLjava/lang/Throwable;Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;Landroid/os/Handler;)V

    return-object v2
.end method

.method private synthetic blacklist lambda$releaseChannelLockAndReturn$0(Ljava/lang/Throwable;Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;[B)V
    .registers 4

    .line 477
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->releaseChannelLock()V

    if-nez p1, :cond_9

    .line 479
    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;->onResult(Ljava/lang/Object;)V

    return-void

    .line 481
    :cond_9
    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;->onException(Ljava/lang/Throwable;)V

    return-void
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 531
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 535
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logv(Ljava/lang/String;)V
    .registers 2

    .line 527
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist openChannel(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;ZLcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;Landroid/os/Handler;)V
    .registers 13

    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mOpenChannel:Lcom/android/internal/telephony/uicc/euicc/apdu/OpenLogicalChannelInvocation;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mAid:Ljava/lang/String;

    new-instance v2, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;-><init>(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;Landroid/os/Handler;Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Z)V

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation;->invoke(Ljava/lang/Object;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private blacklist releaseChannelLock()V
    .registers 3

    .line 487
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mChannelInUseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 488
    :try_start_3
    const-string v1, "Channel lock released."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->logd(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 489
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mChannelInUse:Z

    .line 490
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mChannelInUseLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 491
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method private blacklist releaseChannelLockAndReturn([BLjava/lang/Throwable;Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;Landroid/os/Handler;)V
    .registers 6

    .line 475
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;Ljava/lang/Throwable;Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;[B)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private blacklist returnRespnseOrException(IZ[BLjava/lang/Throwable;Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;Landroid/os/Handler;)V
    .registers 7

    if-eqz p2, :cond_a

    move-object p2, p3

    move-object p3, p4

    move-object p4, p5

    move-object p5, p6

    .line 386
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->closeAndReturn(I[BLjava/lang/Throwable;Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;Landroid/os/Handler;)V

    return-void

    :cond_a
    move-object p2, p3

    move-object p3, p4

    move-object p4, p5

    move-object p5, p6

    .line 393
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->releaseChannelLockAndReturn([BLjava/lang/Throwable;Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private blacklist sendCommand(Ljava/util/List;IZLcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;Landroid/os/Handler;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;",
            ">;IZ",
            "Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 271
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;

    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mTransmitApdu:Lcom/android/internal/telephony/uicc/euicc/apdu/TransmitApduLogicalChannelInvocation;

    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;

    move-object v2, p0

    move-object v8, p1

    move v7, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;-><init>(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;ZLcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;Landroid/os/Handler;ILjava/util/List;)V

    invoke-virtual {v0, v3, v1, v6}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation;->invoke(Ljava/lang/Object;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private blacklist tearDownPreferences()V
    .registers 3

    .line 367
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 368
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mChannelKey:Ljava/lang/String;

    .line 369
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mChannelResponseKey:Ljava/lang/String;

    .line 370
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 371
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public blacklist closeAnyOpenChannel()V
    .registers 5

    .line 441
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->acquireChannelLock()Z

    move-result v0

    if-nez v0, :cond_c

    .line 443
    const-string v0, "[closeAnyOpenChannel] failed to acquire channel lock"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->loge(Ljava/lang/String;)V

    return-void

    .line 446
    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mChannelKey:Ljava/lang/String;

    const/4 v2, -0x1

    .line 447
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1f

    .line 449
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->releaseChannelLock()V

    return-void

    .line 452
    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[closeAnyOpenChannel] closing the open channel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->logv(Ljava/lang/String;)V

    .line 453
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mCloseChannel:Lcom/android/internal/telephony/uicc/euicc/apdu/CloseLogicalChannelInvocation;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$5;

    invoke-direct {v3, p0, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$5;-><init>(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;I)V

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation;->invoke(Ljava/lang/Object;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist send(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;Landroid/os/Handler;)V
    .registers 11

    .line 129
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->acquireChannelLock()Z

    move-result v0

    if-nez v0, :cond_11

    .line 130
    new-instance p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduException;

    const-string p1, "The logical channel is still in use."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultHelper;->throwException(Ljava/lang/Throwable;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    .line 137
    :cond_11
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/EuiccSession;->get(Landroid/content/Context;)Lcom/android/internal/telephony/euicc/EuiccSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/euicc/EuiccSession;->hasSession()Z

    move-result v0

    .line 148
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mChannelOpened:Z

    if-eqz v1, :cond_41

    if-eqz v0, :cond_2a

    .line 150
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/telephony/euicc/EuiccSession;->get(Landroid/content/Context;)Lcom/android/internal/telephony/euicc/EuiccSession;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/euicc/EuiccSession;->noteChannelOpen(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;)V

    :cond_2a
    xor-int/lit8 v1, v0, 0x1

    .line 152
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->getRequestBuilderWithOpenedChannel(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;ZLcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;Landroid/os/Handler;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;

    move-result-object p1

    if-nez p1, :cond_33

    return-void

    .line 157
    :cond_33
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->getCommands()Ljava/util/List;

    move-result-object v2

    xor-int/lit8 v4, v0, 0x1

    const/4 v3, 0x0

    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->sendCommand(Ljava/util/List;IZLcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;Landroid/os/Handler;)V

    return-void

    :cond_41
    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    if-eqz v0, :cond_4f

    .line 161
    iget-object p0, v1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/internal/telephony/euicc/EuiccSession;->get(Landroid/content/Context;)Lcom/android/internal/telephony/euicc/EuiccSession;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/euicc/EuiccSession;->noteChannelOpen(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;)V

    :cond_4f
    xor-int/lit8 p0, v0, 0x1

    .line 163
    invoke-direct {v1, p1, p0, v5, v6}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->openChannel(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;ZLcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;Landroid/os/Handler;)V

    return-void
.end method
