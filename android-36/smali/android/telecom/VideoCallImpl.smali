.class public Landroid/telecom/VideoCallImpl;
.super Landroid/telecom/InCallService$VideoCall;
.source "VideoCallImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;,
        Landroid/telecom/VideoCallImpl$MessageHandler;
    }
.end annotation


# instance fields
.field private final greylist-max-o mBinder:Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;

.field private greylist-max-o mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

.field private final greylist-max-o mCallingPackageName:Ljava/lang/String;

.field private greylist-max-o mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mTargetSdkVersion:I

.field private final greylist-max-o mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

.field private greylist-max-o mVideoQuality:I

.field private greylist-max-o mVideoState:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;
    .registers 1

    iget-object p0, p0, Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/telecom/VideoCallImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVideoProvider(Landroid/telecom/VideoCallImpl;)Lcom/android/internal/telecom/IVideoProvider;
    .registers 1

    iget-object p0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVideoQuality(Landroid/telecom/VideoCallImpl;I)V
    .registers 2

    iput p1, p0, Landroid/telecom/VideoCallImpl;->mVideoQuality:I

    return-void
.end method

.method constructor greylist-max-o <init>(Lcom/android/internal/telecom/IVideoProvider;Ljava/lang/String;I)V
    .registers 7
    .param p1, "videoProvider"    # Lcom/android/internal/telecom/IVideoProvider;
    .param p2, "callingPackageName"    # Ljava/lang/String;
    .param p3, "targetSdkVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    invoke-direct {p0}, Landroid/telecom/InCallService$VideoCall;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Landroid/telecom/VideoCallImpl;->mVideoQuality:I

    .line 50
    iput v0, p0, Landroid/telecom/VideoCallImpl;->mVideoState:I

    .line 55
    new-instance v1, Landroid/telecom/VideoCallImpl$1;

    invoke-direct {v1, p0}, Landroid/telecom/VideoCallImpl$1;-><init>(Landroid/telecom/VideoCallImpl;)V

    iput-object v1, p0, Landroid/telecom/VideoCallImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 214
    iput-object p1, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    .line 215
    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v1}, Lcom/android/internal/telecom/IVideoProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/VideoCallImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 217
    new-instance v0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;-><init>(Landroid/telecom/VideoCallImpl;Landroid/telecom/VideoCallImpl-IA;)V

    iput-object v0, p0, Landroid/telecom/VideoCallImpl;->mBinder:Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;

    .line 218
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mBinder:Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IVideoProvider;->addVideoCallback(Landroid/os/IBinder;)V

    .line 219
    iput-object p2, p0, Landroid/telecom/VideoCallImpl;->mCallingPackageName:Ljava/lang/String;

    .line 220
    invoke-virtual {p0, p3}, Landroid/telecom/VideoCallImpl;->setTargetSdkVersion(I)V

    .line 221
    return-void
.end method


# virtual methods
.method public greylist-max-p destroy()V
    .registers 4

    .line 230
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

    invoke-virtual {p0, v0}, Landroid/telecom/VideoCallImpl;->unregisterCallback(Landroid/telecom/InCallService$VideoCall$Callback;)V

    .line 232
    :try_start_5
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_11
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_11} :catch_12

    .line 235
    goto :goto_13

    .line 233
    :catch_12
    move-exception v0

    .line 236
    :goto_13
    return-void
.end method

.method public blacklist getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;
    .registers 2

    .line 373
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    return-object v0
.end method

.method public whitelist registerCallback(Landroid/telecom/InCallService$VideoCall$Callback;)V
    .registers 3
    .param p1, "callback"    # Landroid/telecom/InCallService$VideoCall$Callback;

    .line 240
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/telecom/VideoCallImpl;->registerCallback(Landroid/telecom/InCallService$VideoCall$Callback;Landroid/os/Handler;)V

    .line 241
    return-void
.end method

.method public whitelist registerCallback(Landroid/telecom/InCallService$VideoCall$Callback;Landroid/os/Handler;)V
    .registers 5
    .param p1, "callback"    # Landroid/telecom/InCallService$VideoCall$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 245
    iput-object p1, p0, Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

    .line 246
    if-nez p2, :cond_10

    .line 247
    new-instance v0, Landroid/telecom/VideoCallImpl$MessageHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/VideoCallImpl$MessageHandler;-><init>(Landroid/telecom/VideoCallImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/VideoCallImpl;->mHandler:Landroid/os/Handler;

    goto :goto_1b

    .line 249
    :cond_10
    new-instance v0, Landroid/telecom/VideoCallImpl$MessageHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/VideoCallImpl$MessageHandler;-><init>(Landroid/telecom/VideoCallImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/VideoCallImpl;->mHandler:Landroid/os/Handler;

    .line 251
    :goto_1b
    return-void
.end method

.method public whitelist requestCallDataUsage()V
    .registers 2

    .line 347
    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->requestCallDataUsage()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 349
    goto :goto_7

    .line 348
    :catch_6
    move-exception v0

    .line 350
    :goto_7
    return-void
.end method

.method public whitelist requestCameraCapabilities()V
    .registers 2

    .line 339
    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->requestCameraCapabilities()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 341
    goto :goto_7

    .line 340
    :catch_6
    move-exception v0

    .line 342
    :goto_7
    return-void
.end method

.method public whitelist sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .registers 5
    .param p1, "requestProfile"    # Landroid/telecom/VideoProfile;

    .line 321
    :try_start_0
    new-instance v0, Landroid/telecom/VideoProfile;

    iget v1, p0, Landroid/telecom/VideoCallImpl;->mVideoState:I

    iget v2, p0, Landroid/telecom/VideoCallImpl;->mVideoQuality:I

    invoke-direct {v0, v1, v2}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 323
    .local v0, "originalProfile":Landroid/telecom/VideoProfile;
    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v1, v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 325
    .end local v0    # "originalProfile":Landroid/telecom/VideoProfile;
    goto :goto_10

    .line 324
    :catch_f
    move-exception v0

    .line 326
    :goto_10
    return-void
.end method

.method public whitelist sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .registers 3
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 331
    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 333
    goto :goto_7

    .line 332
    :catch_6
    move-exception v0

    .line 334
    :goto_7
    return-void
.end method

.method public whitelist setCamera(Ljava/lang/String;)V
    .registers 5
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 269
    :try_start_0
    const-string/jumbo v0, "setCamera: cameraId=%s, calling=%s"

    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mCallingPackageName:Ljava/lang/String;

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mCallingPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/telecom/VideoCallImpl;->mTargetSdkVersion:I

    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telecom/IVideoProvider;->setCamera(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    .line 272
    goto :goto_17

    .line 271
    :catch_16
    move-exception v0

    .line 273
    :goto_17
    return-void
.end method

.method public whitelist setDeviceOrientation(I)V
    .registers 3
    .param p1, "rotation"    # I

    .line 294
    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setDeviceOrientation(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 296
    goto :goto_7

    .line 295
    :catch_6
    move-exception v0

    .line 297
    :goto_7
    return-void
.end method

.method public whitelist setDisplaySurface(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 286
    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setDisplaySurface(Landroid/view/Surface;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 288
    goto :goto_7

    .line 287
    :catch_6
    move-exception v0

    .line 289
    :goto_7
    return-void
.end method

.method public whitelist setPauseImage(Landroid/net/Uri;)V
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 355
    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setPauseImage(Landroid/net/Uri;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 357
    goto :goto_7

    .line 356
    :catch_6
    move-exception v0

    .line 358
    :goto_7
    return-void
.end method

.method public whitelist setPreviewSurface(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 278
    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setPreviewSurface(Landroid/view/Surface;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 280
    goto :goto_7

    .line 279
    :catch_6
    move-exception v0

    .line 281
    :goto_7
    return-void
.end method

.method public greylist-max-o setTargetSdkVersion(I)V
    .registers 2
    .param p1, "sdkVersion"    # I

    .line 225
    iput p1, p0, Landroid/telecom/VideoCallImpl;->mTargetSdkVersion:I

    .line 226
    return-void
.end method

.method public greylist-max-o setVideoState(I)V
    .registers 2
    .param p1, "videoState"    # I

    .line 365
    iput p1, p0, Landroid/telecom/VideoCallImpl;->mVideoState:I

    .line 366
    return-void
.end method

.method public whitelist setZoom(F)V
    .registers 3
    .param p1, "value"    # F

    .line 302
    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setZoom(F)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 304
    goto :goto_7

    .line 303
    :catch_6
    move-exception v0

    .line 305
    :goto_7
    return-void
.end method

.method public whitelist unregisterCallback(Landroid/telecom/InCallService$VideoCall$Callback;)V
    .registers 4
    .param p1, "callback"    # Landroid/telecom/InCallService$VideoCall$Callback;

    .line 255
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

    if-eq p1, v0, :cond_5

    .line 256
    return-void

    .line 259
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

    .line 261
    :try_start_8
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mBinder:Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IVideoProvider;->removeVideoCallback(Landroid/os/IBinder;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_10

    .line 263
    goto :goto_11

    .line 262
    :catch_10
    move-exception v0

    .line 264
    :goto_11
    return-void
.end method
