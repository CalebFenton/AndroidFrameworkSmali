.class public Lcom/android/ims/internal/ImsVideoCallProviderWrapper;
.super Landroid/telecom/Connection$VideoProvider;
.source "ImsVideoCallProviderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;,
        Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field private static final blacklist MSG_CHANGE_CALL_DATA_USAGE:I = 0x5

.field private static final blacklist MSG_CHANGE_CAMERA_CAPABILITIES:I = 0x6

.field private static final blacklist MSG_CHANGE_PEER_DIMENSIONS:I = 0x4

.field private static final blacklist MSG_CHANGE_VIDEO_QUALITY:I = 0x7

.field private static final blacklist MSG_HANDLE_CALL_SESSION_EVENT:I = 0x3

.field private static final blacklist MSG_RECEIVE_SESSION_MODIFY_REQUEST:I = 0x1

.field private static final blacklist MSG_RECEIVE_SESSION_MODIFY_RESPONSE:I = 0x2


# instance fields
.field private final blacklist mBinder:Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;

.field private final blacklist mCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCurrentVideoState:I

.field private blacklist mDataUsageUpdateRegistrants:Lcom/android/ims/RegistrantList;

.field private blacklist mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mIsVideoEnabled:Z

.field private blacklist mUseVideoPauseWorkaround:Z

.field private final blacklist mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

.field private blacklist mVideoPauseTracker:Lcom/android/ims/internal/VideoPauseTracker;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbacks(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mCallbacks:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentVideoState(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)I
    .registers 1

    iget p0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mCurrentVideoState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataUsageUpdateRegistrants(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Lcom/android/ims/RegistrantList;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mDataUsageUpdateRegistrants:Lcom/android/ims/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsVideoEnabled(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mIsVideoEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVideoCallProvider(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Lcom/android/ims/internal/IImsVideoCallProvider;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 60
    const-class v0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-r <init>(Lcom/android/ims/internal/IImsVideoCallProvider;)V
    .registers 6
    .param p1, "videoProvider"    # Lcom/android/ims/internal/IImsVideoCallProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 241
    invoke-direct {p0}, Landroid/telecom/Connection$VideoProvider;-><init>()V

    .line 72
    new-instance v0, Lcom/android/ims/RegistrantList;

    invoke-direct {v0}, Lcom/android/ims/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mDataUsageUpdateRegistrants:Lcom/android/ims/RegistrantList;

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mCallbacks:Ljava/util/Set;

    .line 75
    new-instance v0, Lcom/android/ims/internal/VideoPauseTracker;

    invoke-direct {v0}, Lcom/android/ims/internal/VideoPauseTracker;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoPauseTracker:Lcom/android/ims/internal/VideoPauseTracker;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mUseVideoPauseWorkaround:Z

    .line 78
    iput-boolean v3, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mIsVideoEnabled:Z

    .line 80
    new-instance v1, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$1;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$1;-><init>(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)V

    iput-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 159
    new-instance v1, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;-><init>(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mHandler:Landroid/os/Handler;

    .line 243
    iput-object p1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    .line 244
    const/4 v1, 0x0

    if-eqz p1, :cond_58

    .line 245
    iget-object v2, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v2}, Lcom/android/ims/internal/IImsVideoCallProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v2, v3, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 247
    new-instance v0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;-><init>(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;Lcom/android/ims/internal/ImsVideoCallProviderWrapper-IA;)V

    iput-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mBinder:Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;

    .line 248
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mBinder:Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setCallback(Lcom/android/ims/internal/IImsVideoCallCallback;)V

    goto :goto_5a

    .line 250
    :cond_58
    iput-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mBinder:Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;

    .line 252
    :goto_5a
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/ims/internal/IImsVideoCallProvider;Lcom/android/ims/internal/VideoPauseTracker;)V
    .registers 3
    .param p1, "videoProvider"    # Lcom/android/ims/internal/IImsVideoCallProvider;
    .param p2, "videoPauseTracker"    # Lcom/android/ims/internal/VideoPauseTracker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 258
    invoke-direct {p0, p1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;-><init>(Lcom/android/ims/internal/IImsVideoCallProvider;)V

    .line 259
    iput-object p2, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoPauseTracker:Lcom/android/ims/internal/VideoPauseTracker;

    .line 260
    return-void
.end method

.method public static blacklist isPauseRequest(II)Z
    .registers 5
    .param p0, "from"    # I
    .param p1, "to"    # I

    .line 380
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v0

    .line 381
    .local v0, "fromPaused":Z
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v1

    .line 383
    .local v1, "toPaused":Z
    if-nez v0, :cond_e

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    return v2
.end method

.method public static blacklist isResumeRequest(II)Z
    .registers 5
    .param p0, "from"    # I
    .param p1, "to"    # I

    .line 395
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v0

    .line 396
    .local v0, "fromPaused":Z
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v1

    .line 398
    .local v1, "toPaused":Z
    if-eqz v0, :cond_e

    if-nez v1, :cond_e

    const/4 v2, 0x1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    return v2
.end method

.method public static blacklist isTurnOffCameraRequest(II)Z
    .registers 3
    .param p0, "from"    # I
    .param p1, "to"    # I

    .line 409
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 410
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 409
    :goto_f
    return v0
.end method

.method public static blacklist isTurnOnCameraRequest(II)Z
    .registers 3
    .param p0, "from"    # I
    .param p1, "to"    # I

    .line 421
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 422
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 421
    :goto_f
    return v0
.end method


# virtual methods
.method public blacklist addImsVideoProviderCallback(Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;

    .line 151
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    return-void
.end method

.method public blacklist maybeFilterPauseResume(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;I)Landroid/telecom/VideoProfile;
    .registers 14
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "source"    # I

    .line 445
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    .line 446
    .local v0, "fromVideoState":I
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    .line 456
    .local v1, "toVideoState":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p3, v3, :cond_1a

    .line 457
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 458
    invoke-static {v1}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    move v4, v3

    goto :goto_1b

    :cond_1a
    move v4, v2

    .line 460
    .local v4, "isPauseSpecialCase":Z
    :goto_1b
    invoke-static {v0, v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->isPauseRequest(II)Z

    move-result v5

    if-nez v5, :cond_23

    if-eqz v4, :cond_24

    :cond_23
    move v2, v3

    .line 461
    .local v2, "isPauseRequest":Z
    :cond_24
    invoke-static {v0, v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->isResumeRequest(II)Z

    move-result v3

    .line 462
    .local v3, "isResumeRequest":Z
    if-eqz v2, :cond_58

    .line 463
    sget-object v5, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->LOG_TAG:Ljava/lang/String;

    .line 464
    invoke-static {v0}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v6

    .line 465
    invoke-static {v1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    .line 463
    const-string v7, "maybeFilterPauseResume: isPauseRequest (from=%s, to=%s)"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v5, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoPauseTracker:Lcom/android/ims/internal/VideoPauseTracker;

    invoke-virtual {v5, p3}, Lcom/android/ims/internal/VideoPauseTracker;->shouldPauseVideoFor(I)Z

    move-result v5

    if-nez v5, :cond_ad

    if-nez v4, :cond_ad

    .line 473
    and-int/lit8 v1, v1, -0x5

    .line 474
    new-instance v5, Landroid/telecom/VideoProfile;

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getQuality()I

    move-result v6

    invoke-direct {v5, v1, v6}, Landroid/telecom/VideoProfile;-><init>(II)V

    move-object p2, v5

    goto :goto_ad

    .line 476
    :cond_58
    if-eqz v3, :cond_ad

    .line 477
    invoke-static {v0, v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->isTurnOffCameraRequest(II)Z

    move-result v5

    .line 478
    .local v5, "isTurnOffCameraRequest":Z
    invoke-static {v0, v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->isTurnOnCameraRequest(II)Z

    move-result v6

    .line 490
    .local v6, "isTurnOnCameraRequest":Z
    iget-boolean v7, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mUseVideoPauseWorkaround:Z

    if-eqz v7, :cond_82

    if-nez v5, :cond_6a

    if-eqz v6, :cond_82

    .line 491
    :cond_6a
    sget-object v7, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->LOG_TAG:Ljava/lang/String;

    .line 493
    invoke-static {v0}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v8

    .line 494
    invoke-static {v1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    .line 491
    const-string v9, "maybeFilterPauseResume: isResumeRequest, but camera turning on/off so skipping (from=%s, to=%s)"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    return-object p2

    .line 497
    :cond_82
    sget-object v7, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->LOG_TAG:Ljava/lang/String;

    .line 498
    invoke-static {v0}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v8

    .line 499
    invoke-static {v1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    .line 497
    const-string v9, "maybeFilterPauseResume: isResumeRequest (from=%s, to=%s)"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v7, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoPauseTracker:Lcom/android/ims/internal/VideoPauseTracker;

    invoke-virtual {v7, p3}, Lcom/android/ims/internal/VideoPauseTracker;->shouldResumeVideoFor(I)Z

    move-result v7

    if-nez v7, :cond_ad

    .line 504
    or-int/lit8 v1, v1, 0x4

    .line 505
    new-instance v7, Landroid/telecom/VideoProfile;

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getQuality()I

    move-result v8

    invoke-direct {v7, v1, v8}, Landroid/telecom/VideoProfile;-><init>(II)V

    move-object p2, v7

    .line 509
    .end local v5    # "isTurnOffCameraRequest":Z
    .end local v6    # "isTurnOnCameraRequest":Z
    :cond_ad
    :goto_ad
    return-object p2
.end method

.method public whitelist onRequestCameraCapabilities()V
    .registers 2

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsVideoCallProvider;->requestCameraCapabilities()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 352
    goto :goto_7

    .line 351
    :catch_6
    move-exception v0

    .line 353
    :goto_7
    return-void
.end method

.method public whitelist onRequestConnectionDataUsage()V
    .registers 2

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsVideoCallProvider;->requestCallDataUsage()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 360
    goto :goto_7

    .line 359
    :catch_6
    move-exception v0

    .line 361
    :goto_7
    return-void
.end method

.method public whitelist onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .registers 9
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .line 308
    if-eqz p1, :cond_70

    if-nez p2, :cond_5

    goto :goto_70

    .line 314
    :cond_5
    :try_start_5
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->isResumeRequest(II)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mCurrentVideoState:I

    .line 315
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 317
    sget-object v0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onSendSessionModifyRequest: fromVideoState=%s, toVideoState=%s; skipping resume request - already resumed."

    .line 320
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    invoke-static {v2}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v2

    .line 321
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v3

    invoke-static {v3}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 317
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return-void

    .line 325
    :cond_3b
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->maybeFilterPauseResume(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;I)Landroid/telecom/VideoProfile;

    move-result-object v0

    move-object p2, v0

    .line 328
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    .line 329
    .local v0, "fromVideoState":I
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    .line 330
    .local v1, "toVideoState":I
    sget-object v2, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onSendSessionModifyRequest: fromVideoState=%s, toVideoState=%s; "

    .line 332
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v4

    invoke-static {v4}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v4

    .line 333
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v5

    invoke-static {v5}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 330
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v2, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v2, p1, p2}, Lcom/android/ims/internal/IImsVideoCallProvider;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_6d} :catch_6e

    .line 336
    .end local v0    # "fromVideoState":I
    .end local v1    # "toVideoState":I
    goto :goto_6f

    .line 335
    :catch_6e
    move-exception v0

    .line 337
    :goto_6f
    return-void

    .line 309
    :cond_70
    :goto_70
    sget-object v0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onSendSessionModifyRequest: null profile in request."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-void
.end method

.method public whitelist onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .registers 3
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsVideoCallProvider;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 344
    goto :goto_7

    .line 343
    :catch_6
    move-exception v0

    .line 345
    :goto_7
    return-void
.end method

.method public whitelist onSetCamera(Ljava/lang/String;)V
    .registers 4
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setCamera(Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 267
    goto :goto_b

    .line 266
    :catch_a
    move-exception v0

    .line 268
    :goto_b
    return-void
.end method

.method public whitelist onSetDeviceOrientation(I)V
    .registers 3
    .param p1, "rotation"    # I

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setDeviceOrientation(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 291
    goto :goto_7

    .line 290
    :catch_6
    move-exception v0

    .line 292
    :goto_7
    return-void
.end method

.method public whitelist onSetDisplaySurface(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setDisplaySurface(Landroid/view/Surface;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 283
    goto :goto_7

    .line 282
    :catch_6
    move-exception v0

    .line 284
    :goto_7
    return-void
.end method

.method public whitelist onSetPauseImage(Landroid/net/Uri;)V
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 366
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setPauseImage(Landroid/net/Uri;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 368
    goto :goto_7

    .line 367
    :catch_6
    move-exception v0

    .line 369
    :goto_7
    return-void
.end method

.method public whitelist onSetPreviewSurface(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setPreviewSurface(Landroid/view/Surface;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 275
    goto :goto_7

    .line 274
    :catch_6
    move-exception v0

    .line 276
    :goto_7
    return-void
.end method

.method public whitelist onSetZoom(F)V
    .registers 3
    .param p1, "value"    # F

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setZoom(F)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 299
    goto :goto_7

    .line 298
    :catch_6
    move-exception v0

    .line 300
    :goto_7
    return-void
.end method

.method public blacklist onVideoStateChanged(I)V
    .registers 5
    .param p1, "newVideoState"    # I

    .line 584
    iget v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mCurrentVideoState:I

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {p1}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 586
    sget-object v0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mCurrentVideoState:I

    .line 588
    invoke-static {v1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v1

    .line 589
    invoke-static {p1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 586
    const-string v2, "onVideoStateChanged: currentVideoState=%s, newVideoState=%s, clearing pending pause requests."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoPauseTracker:Lcom/android/ims/internal/VideoPauseTracker;

    invoke-virtual {v0}, Lcom/android/ims/internal/VideoPauseTracker;->clearPauseRequests()V

    goto :goto_46

    .line 592
    :cond_2d
    sget-object v0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mCurrentVideoState:I

    .line 594
    invoke-static {v1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v1

    .line 595
    invoke-static {p1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 593
    const-string v2, "onVideoStateChanged: currentVideoState=%s, newVideoState=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 592
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :goto_46
    iput p1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mCurrentVideoState:I

    .line 598
    return-void
.end method

.method public blacklist pauseVideo(II)V
    .registers 9
    .param p1, "fromVideoState"    # I
    .param p2, "source"    # I

    .line 520
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoPauseTracker:Lcom/android/ims/internal/VideoPauseTracker;

    invoke-virtual {v0, p2}, Lcom/android/ims/internal/VideoPauseTracker;->shouldPauseVideoFor(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 522
    new-instance v0, Landroid/telecom/VideoProfile;

    invoke-direct {v0, p1}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 523
    .local v0, "fromProfile":Landroid/telecom/VideoProfile;
    new-instance v1, Landroid/telecom/VideoProfile;

    or-int/lit8 v2, p1, 0x4

    invoke-direct {v1, v2}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 526
    .local v1, "toProfile":Landroid/telecom/VideoProfile;
    :try_start_14
    sget-object v2, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "pauseVideo: fromVideoState=%s, toVideoState=%s"

    .line 527
    invoke-virtual {v0}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v4

    invoke-static {v4}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v4

    .line 528
    invoke-virtual {v1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v5

    invoke-static {v5}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 526
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v2, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v2, v0, v1}, Lcom/android/ims/internal/IImsVideoCallProvider;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_38} :catch_39

    .line 531
    goto :goto_3a

    .line 530
    :catch_39
    move-exception v2

    .line 532
    .end local v0    # "fromProfile":Landroid/telecom/VideoProfile;
    .end local v1    # "toProfile":Landroid/telecom/VideoProfile;
    :goto_3a
    goto :goto_42

    .line 533
    :cond_3b
    sget-object v0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "pauseVideo: video already paused"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :goto_42
    return-void
.end method

.method public blacklist registerForDataUsageUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mDataUsageUpdateRegistrants:Lcom/android/ims/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 144
    return-void
.end method

.method public blacklist removeImsVideoProviderCallback(Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;

    .line 155
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method

.method public blacklist resumeVideo(II)V
    .registers 9
    .param p1, "fromVideoState"    # I
    .param p2, "source"    # I

    .line 545
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoPauseTracker:Lcom/android/ims/internal/VideoPauseTracker;

    invoke-virtual {v0, p2}, Lcom/android/ims/internal/VideoPauseTracker;->shouldResumeVideoFor(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 547
    new-instance v0, Landroid/telecom/VideoProfile;

    invoke-direct {v0, p1}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 548
    .local v0, "fromProfile":Landroid/telecom/VideoProfile;
    new-instance v1, Landroid/telecom/VideoProfile;

    and-int/lit8 v2, p1, -0x5

    invoke-direct {v1, v2}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 551
    .local v1, "toProfile":Landroid/telecom/VideoProfile;
    :try_start_14
    sget-object v2, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "resumeVideo: fromVideoState=%s, toVideoState=%s"

    .line 552
    invoke-virtual {v0}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v4

    invoke-static {v4}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v4

    .line 553
    invoke-virtual {v1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v5

    invoke-static {v5}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 551
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v2, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v2, v0, v1}, Lcom/android/ims/internal/IImsVideoCallProvider;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_38} :catch_39

    .line 556
    goto :goto_3a

    .line 555
    :catch_39
    move-exception v2

    .line 557
    .end local v0    # "fromProfile":Landroid/telecom/VideoProfile;
    .end local v1    # "toProfile":Landroid/telecom/VideoProfile;
    :goto_3a
    goto :goto_42

    .line 558
    :cond_3b
    sget-object v0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "resumeVideo: remaining paused (paused from other sources)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :goto_42
    return-void
.end method

.method public blacklist setIsVideoEnabled(Z)V
    .registers 2
    .param p1, "isVideoEnabled"    # Z

    .line 607
    iput-boolean p1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mIsVideoEnabled:Z

    .line 608
    return-void
.end method

.method public blacklist setUseVideoPauseWorkaround(Z)V
    .registers 2
    .param p1, "useVideoPauseWorkaround"    # Z

    .line 573
    iput-boolean p1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mUseVideoPauseWorkaround:Z

    .line 574
    return-void
.end method

.method public blacklist tearDown()V
    .registers 4

    .line 614
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-eqz v0, :cond_12

    .line 616
    :try_start_4
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsVideoCallProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_10
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_10} :catch_11

    .line 619
    goto :goto_12

    .line 617
    :catch_11
    move-exception v0

    .line 621
    :cond_12
    :goto_12
    return-void
.end method

.method public blacklist unregisterForDataUsageUpdate(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .line 147
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mDataUsageUpdateRegistrants:Lcom/android/ims/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/ims/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 148
    return-void
.end method

.method public blacklist wasVideoPausedFromSource(I)Z
    .registers 3
    .param p1, "source"    # I

    .line 569
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoPauseTracker:Lcom/android/ims/internal/VideoPauseTracker;

    invoke-virtual {v0, p1}, Lcom/android/ims/internal/VideoPauseTracker;->wasVideoPausedFromSource(I)Z

    move-result v0

    return v0
.end method
