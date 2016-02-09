.class public Landroid/telecom/VideoCallImpl;
.super Landroid/telecom/InCallService$VideoCall;
.source "VideoCallImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;,
        Landroid/telecom/VideoCallImpl$MessageHandler;,
        Landroid/telecom/VideoCallImpl$1;
    }
.end annotation


# instance fields
.field private final mBinder:Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;

.field private mCall:Landroid/telecom/Call;

.field private mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mHandler:Landroid/os/Handler;

.field private final mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

.field private mVideoQuality:I


# direct methods
.method static synthetic -get0(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/telecom/VideoCallImpl;)Lcom/android/internal/telecom/IVideoProvider;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/telecom/VideoCallImpl;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/telecom/VideoCallImpl;->mVideoQuality:I

    #@2
    return p1
.end method

.method constructor <init>(Lcom/android/internal/telecom/IVideoProvider;Landroid/telecom/Call;)V
    .locals 3
    .param p1, "videoProvider"    # Lcom/android/internal/telecom/IVideoProvider;
    .param p2, "call"    # Landroid/telecom/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 178
    invoke-direct {p0}, Landroid/telecom/InCallService$VideoCall;-><init>()V

    #@4
    .line 44
    iput v2, p0, Landroid/telecom/VideoCallImpl;->mVideoQuality:I

    #@6
    .line 47
    new-instance v0, Landroid/telecom/VideoCallImpl$1;

    #@8
    invoke-direct {v0, p0}, Landroid/telecom/VideoCallImpl$1;-><init>(Landroid/telecom/VideoCallImpl;)V

    #@b
    iput-object v0, p0, Landroid/telecom/VideoCallImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    #@d
    .line 179
    iput-object p1, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    #@f
    .line 180
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    #@11
    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v0

    #@15
    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    #@17
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    #@1a
    .line 182
    new-instance v0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;

    #@1c
    const/4 v1, 0x0

    #@1d
    invoke-direct {v0, p0, v1}, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;-><init>(Landroid/telecom/VideoCallImpl;Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;)V

    #@20
    iput-object v0, p0, Landroid/telecom/VideoCallImpl;->mBinder:Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;

    #@22
    .line 183
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    #@24
    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mBinder:Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;

    #@26
    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IVideoProvider;->addVideoCallback(Landroid/os/IBinder;)V

    #@29
    .line 184
    iput-object p2, p0, Landroid/telecom/VideoCallImpl;->mCall:Landroid/telecom/Call;

    #@2b
    .line 178
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    #@0
    .prologue
    .line 188
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

    #@2
    invoke-virtual {p0, v0}, Landroid/telecom/VideoCallImpl;->unregisterCallback(Landroid/telecom/InCallService$VideoCall$Callback;)V

    #@5
    .line 187
    return-void
.end method

.method public registerCallback(Landroid/telecom/InCallService$VideoCall$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/telecom/InCallService$VideoCall$Callback;

    #@0
    .prologue
    .line 193
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/telecom/VideoCallImpl;->registerCallback(Landroid/telecom/InCallService$VideoCall$Callback;Landroid/os/Handler;)V

    #@4
    .line 192
    return-void
.end method

.method public registerCallback(Landroid/telecom/InCallService$VideoCall$Callback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/telecom/InCallService$VideoCall$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 198
    iput-object p1, p0, Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

    #@2
    .line 199
    if-nez p2, :cond_0

    #@4
    .line 200
    new-instance v0, Landroid/telecom/VideoCallImpl$MessageHandler;

    #@6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, p0, v1}, Landroid/telecom/VideoCallImpl$MessageHandler;-><init>(Landroid/telecom/VideoCallImpl;Landroid/os/Looper;)V

    #@d
    iput-object v0, p0, Landroid/telecom/VideoCallImpl;->mHandler:Landroid/os/Handler;

    #@f
    .line 197
    :goto_0
    return-void

    #@10
    .line 202
    :cond_0
    new-instance v0, Landroid/telecom/VideoCallImpl$MessageHandler;

    #@12
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@15
    move-result-object v1

    #@16
    invoke-direct {v0, p0, v1}, Landroid/telecom/VideoCallImpl$MessageHandler;-><init>(Landroid/telecom/VideoCallImpl;Landroid/os/Looper;)V

    #@19
    iput-object v0, p0, Landroid/telecom/VideoCallImpl;->mHandler:Landroid/os/Handler;

    #@1b
    goto :goto_0
.end method

.method public requestCallDataUsage()V
    .locals 2

    #@0
    .prologue
    .line 300
    :try_start_0
    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    #@2
    invoke-interface {v1}, Lcom/android/internal/telecom/IVideoProvider;->requestCallDataUsage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 298
    :goto_0
    return-void

    #@6
    .line 301
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public requestCameraCapabilities()V
    .locals 2

    #@0
    .prologue
    .line 292
    :try_start_0
    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    #@2
    invoke-interface {v1}, Lcom/android/internal/telecom/IVideoProvider;->requestCameraCapabilities()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 290
    :goto_0
    return-void

    #@6
    .line 293
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .locals 4
    .param p1, "requestProfile"    # Landroid/telecom/VideoProfile;

    #@0
    .prologue
    .line 273
    :try_start_0
    new-instance v1, Landroid/telecom/VideoProfile;

    #@2
    iget-object v2, p0, Landroid/telecom/VideoCallImpl;->mCall:Landroid/telecom/Call;

    #@4
    invoke-virtual {v2}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Landroid/telecom/Call$Details;->getVideoState()I

    #@b
    move-result v2

    #@c
    .line 274
    iget v3, p0, Landroid/telecom/VideoCallImpl;->mVideoQuality:I

    #@e
    .line 273
    invoke-direct {v1, v2, v3}, Landroid/telecom/VideoProfile;-><init>(II)V

    #@11
    .line 276
    .local v1, "originalProfile":Landroid/telecom/VideoProfile;
    iget-object v2, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    #@13
    invoke-interface {v2, v1, p1}, Lcom/android/internal/telecom/IVideoProvider;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 271
    .end local v1    # "originalProfile":Landroid/telecom/VideoProfile;
    :goto_0
    return-void

    #@17
    .line 277
    :catch_0
    move-exception v0

    #@18
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 2
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    #@0
    .prologue
    .line 284
    :try_start_0
    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IVideoProvider;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 282
    :goto_0
    return-void

    #@6
    .line 285
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setCamera(Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 222
    :try_start_0
    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IVideoProvider;->setCamera(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 220
    :goto_0
    return-void

    #@6
    .line 223
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setDeviceOrientation(I)V
    .locals 2
    .param p1, "rotation"    # I

    #@0
    .prologue
    .line 246
    :try_start_0
    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IVideoProvider;->setDeviceOrientation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 244
    :goto_0
    return-void

    #@6
    .line 247
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setDisplaySurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 238
    :try_start_0
    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IVideoProvider;->setDisplaySurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 236
    :goto_0
    return-void

    #@6
    .line 239
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setPauseImage(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 308
    :try_start_0
    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IVideoProvider;->setPauseImage(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 306
    :goto_0
    return-void

    #@6
    .line 309
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 230
    :try_start_0
    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IVideoProvider;->setPreviewSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 228
    :goto_0
    return-void

    #@6
    .line 231
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setZoom(F)V
    .locals 2
    .param p1, "value"    # F

    #@0
    .prologue
    .line 254
    :try_start_0
    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IVideoProvider;->setZoom(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 252
    :goto_0
    return-void

    #@6
    .line 255
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public unregisterCallback(Landroid/telecom/InCallService$VideoCall$Callback;)V
    .locals 3
    .param p1, "callback"    # Landroid/telecom/InCallService$VideoCall$Callback;

    #@0
    .prologue
    .line 208
    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

    #@2
    if-eq p1, v1, :cond_0

    #@4
    .line 209
    return-void

    #@5
    .line 212
    :cond_0
    const/4 v1, 0x0

    #@6
    iput-object v1, p0, Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

    #@8
    .line 214
    :try_start_0
    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    #@a
    iget-object v2, p0, Landroid/telecom/VideoCallImpl;->mBinder:Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;

    #@c
    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IVideoProvider;->removeVideoCallback(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 207
    :goto_0
    return-void

    #@10
    .line 215
    :catch_0
    move-exception v0

    #@11
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
