.class public abstract Lcom/android/ims/internal/ImsVideoCallProvider;
.super Ljava/lang/Object;
.source "ImsVideoCallProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;,
        Lcom/android/ims/internal/ImsVideoCallProvider$1;
    }
.end annotation


# static fields
.field private static final MSG_REQUEST_CALL_DATA_USAGE:I = 0xa

.field private static final MSG_REQUEST_CAMERA_CAPABILITIES:I = 0x9

.field private static final MSG_SEND_SESSION_MODIFY_REQUEST:I = 0x7

.field private static final MSG_SEND_SESSION_MODIFY_RESPONSE:I = 0x8

.field private static final MSG_SET_CALLBACK:I = 0x1

.field private static final MSG_SET_CAMERA:I = 0x2

.field private static final MSG_SET_DEVICE_ORIENTATION:I = 0x5

.field private static final MSG_SET_DISPLAY_SURFACE:I = 0x4

.field private static final MSG_SET_PAUSE_IMAGE:I = 0xb

.field private static final MSG_SET_PREVIEW_SURFACE:I = 0x3

.field private static final MSG_SET_ZOOM:I = 0x6


# instance fields
.field private final mBinder:Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;

.field private mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

.field private final mProviderHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider;->mProviderHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/ims/internal/ImsVideoCallProvider;Lcom/android/ims/internal/IImsVideoCallCallback;)Lcom/android/ims/internal/IImsVideoCallCallback;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/ims/internal/ImsVideoCallProvider;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    #@2
    return-object p1
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    new-instance v0, Lcom/android/ims/internal/ImsVideoCallProvider$1;

    #@5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, p0, v1}, Lcom/android/ims/internal/ImsVideoCallProvider$1;-><init>(Lcom/android/ims/internal/ImsVideoCallProvider;Landroid/os/Looper;)V

    #@c
    iput-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider;->mProviderHandler:Landroid/os/Handler;

    #@e
    .line 157
    new-instance v0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;

    #@10
    const/4 v1, 0x0

    #@11
    invoke-direct {v0, p0, v1}, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;-><init>(Lcom/android/ims/internal/ImsVideoCallProvider;Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;)V

    #@14
    iput-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider;->mBinder:Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;

    #@16
    .line 156
    return-void
.end method


# virtual methods
.method public changeCallDataUsage(J)V
    .locals 3
    .param p1, "dataUsage"    # J

    #@0
    .prologue
    .line 241
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProvider;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProvider;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    #@6
    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IImsVideoCallCallback;->changeCallDataUsage(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 240
    :cond_0
    :goto_0
    return-void

    #@a
    .line 244
    :catch_0
    move-exception v0

    #@b
    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    .locals 2
    .param p1, "CameraCapabilities"    # Landroid/telecom/VideoProfile$CameraCapabilities;

    #@0
    .prologue
    .line 251
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProvider;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProvider;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    #@6
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 250
    :cond_0
    :goto_0
    return-void

    #@a
    .line 254
    :catch_0
    move-exception v0

    #@b
    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public changePeerDimensions(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 231
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProvider;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProvider;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    #@6
    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IImsVideoCallCallback;->changePeerDimensions(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 230
    :cond_0
    :goto_0
    return-void

    #@a
    .line 234
    :catch_0
    move-exception v0

    #@b
    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public changeVideoQuality(I)V
    .locals 2
    .param p1, "videoQuality"    # I

    #@0
    .prologue
    .line 261
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProvider;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 263
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProvider;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    #@6
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->changeVideoQuality(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 260
    :cond_0
    :goto_0
    return-void

    #@a
    .line 264
    :catch_0
    move-exception v0

    #@b
    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public final getInterface()Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 1

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider;->mBinder:Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;

    #@2
    return-object v0
.end method

.method public handleCallSessionEvent(I)V
    .locals 2
    .param p1, "event"    # I

    #@0
    .prologue
    .line 221
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProvider;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProvider;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    #@6
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 220
    :cond_0
    :goto_0
    return-void

    #@a
    .line 224
    :catch_0
    move-exception v0

    #@b
    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public abstract onRequestCallDataUsage()V
.end method

.method public abstract onRequestCameraCapabilities()V
.end method

.method public abstract onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
.end method

.method public abstract onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
.end method

.method public abstract onSetCamera(Ljava/lang/String;)V
.end method

.method public abstract onSetDeviceOrientation(I)V
.end method

.method public abstract onSetDisplaySurface(Landroid/view/Surface;)V
.end method

.method public abstract onSetPauseImage(Landroid/net/Uri;)V
.end method

.method public abstract onSetPreviewSurface(Landroid/view/Surface;)V
.end method

.method public abstract onSetZoom(F)V
.end method

.method public receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .locals 2
    .param p1, "VideoProfile"    # Landroid/telecom/VideoProfile;

    #@0
    .prologue
    .line 200
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProvider;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProvider;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    #@6
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 199
    :cond_0
    :goto_0
    return-void

    #@a
    .line 203
    :catch_0
    move-exception v0

    #@b
    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "requestedProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    #@0
    .prologue
    .line 211
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProvider;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProvider;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    #@6
    invoke-interface {v1, p1, p2, p3}, Lcom/android/ims/internal/IImsVideoCallCallback;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 210
    :cond_0
    :goto_0
    return-void

    #@a
    .line 214
    :catch_0
    move-exception v0

    #@b
    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method
