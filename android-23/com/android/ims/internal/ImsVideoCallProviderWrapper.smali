.class public Lcom/android/ims/internal/ImsVideoCallProviderWrapper;
.super Landroid/telecom/Connection$VideoProvider;
.source "ImsVideoCallProviderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;,
        Lcom/android/ims/internal/ImsVideoCallProviderWrapper$1;,
        Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;
    }
.end annotation


# static fields
.field private static final MSG_CHANGE_CALL_DATA_USAGE:I = 0x5

.field private static final MSG_CHANGE_CAMERA_CAPABILITIES:I = 0x6

.field private static final MSG_CHANGE_PEER_DIMENSIONS:I = 0x4

.field private static final MSG_CHANGE_VIDEO_QUALITY:I = 0x7

.field private static final MSG_HANDLE_CALL_SESSION_EVENT:I = 0x3

.field private static final MSG_RECEIVE_SESSION_MODIFY_REQUEST:I = 0x1

.field private static final MSG_RECEIVE_SESSION_MODIFY_RESPONSE:I = 0x2


# instance fields
.field private final mBinder:Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mHandler:Landroid/os/Handler;

.field private final mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;


# direct methods
.method static synthetic -get0(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    #@2
    return-object v0
.end method

.method public constructor <init>(Lcom/android/ims/internal/IImsVideoCallProvider;)V
    .locals 3
    .param p1, "VideoProvider"    # Lcom/android/ims/internal/IImsVideoCallProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 168
    invoke-direct {p0}, Landroid/telecom/Connection$VideoProvider;-><init>()V

    #@3
    .line 55
    new-instance v0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$1;

    #@5
    invoke-direct {v0, p0}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$1;-><init>(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)V

    #@8
    iput-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    #@a
    .line 114
    new-instance v0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;

    #@c
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, p0, v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;-><init>(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;Landroid/os/Looper;)V

    #@13
    iput-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mHandler:Landroid/os/Handler;

    #@15
    .line 170
    iput-object p1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    #@17
    .line 171
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    #@19
    invoke-interface {v0}, Lcom/android/ims/internal/IImsVideoCallProvider;->asBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v0

    #@1d
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    #@1f
    const/4 v2, 0x0

    #@20
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    #@23
    .line 173
    new-instance v0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;

    #@25
    const/4 v1, 0x0

    #@26
    invoke-direct {v0, p0, v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;-><init>(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;)V

    #@29
    iput-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mBinder:Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;

    #@2b
    .line 174
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    #@2d
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mBinder:Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;

    #@2f
    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setCallback(Lcom/android/ims/internal/IImsVideoCallCallback;)V

    #@32
    .line 169
    return-void
.end method


# virtual methods
.method public onRequestCameraCapabilities()V
    .locals 2

    #@0
    .prologue
    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    #@2
    invoke-interface {v1}, Lcom/android/ims/internal/IImsVideoCallProvider;->requestCameraCapabilities()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 234
    :goto_0
    return-void

    #@6
    .line 237
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onRequestConnectionDataUsage()V
    .locals 2

    #@0
    .prologue
    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    #@2
    invoke-interface {v1}, Lcom/android/ims/internal/IImsVideoCallProvider;->requestCallDataUsage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 242
    :goto_0
    return-void

    #@6
    .line 245
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 2
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    #@0
    .prologue
    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    #@2
    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IImsVideoCallProvider;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 218
    :goto_0
    return-void

    #@6
    .line 221
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 2
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    #@0
    .prologue
    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    #@2
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsVideoCallProvider;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 226
    :goto_0
    return-void

    #@6
    .line 229
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onSetCamera(Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    #@2
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setCamera(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 178
    :goto_0
    return-void

    #@6
    .line 181
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onSetDeviceOrientation(I)V
    .locals 2
    .param p1, "rotation"    # I

    #@0
    .prologue
    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    #@2
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setDeviceOrientation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 202
    :goto_0
    return-void

    #@6
    .line 205
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onSetDisplaySurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    #@2
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setDisplaySurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 194
    :goto_0
    return-void

    #@6
    .line 197
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onSetPauseImage(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 252
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    #@2
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setPauseImage(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 250
    :goto_0
    return-void

    #@6
    .line 253
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onSetPreviewSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    #@2
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setPreviewSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 186
    :goto_0
    return-void

    #@6
    .line 189
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onSetZoom(F)V
    .locals 2
    .param p1, "value"    # F

    #@0
    .prologue
    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    #@2
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setZoom(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 210
    :goto_0
    return-void

    #@6
    .line 213
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
