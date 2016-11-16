.class public Lcom/android/ims/internal/ImsVideoCallProviderWrapper;
.super Landroid/telecom/Connection$VideoProvider;
.source "ImsVideoCallProviderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/ImsVideoCallProviderWrapper$1;,
        Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;,
        Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;,
        Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;
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

.field private final mCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mDataUsageUpdateRegistrants:Landroid/os/RegistrantList;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mHandler:Landroid/os/Handler;

.field private final mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;


# direct methods
.method static synthetic -get0(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Ljava/util/Set;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mCallbacks:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Landroid/os/RegistrantList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mDataUsageUpdateRegistrants:Landroid/os/RegistrantList;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    #@2
    return-object v0
.end method

.method public constructor <init>(Lcom/android/ims/internal/IImsVideoCallProvider;)V
    .locals 4
    .param p1, "VideoProvider"    # Lcom/android/ims/internal/IImsVideoCallProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 207
    invoke-direct {p0}, Landroid/telecom/Connection$VideoProvider;-><init>()V

    #@3
    .line 64
    new-instance v0, Landroid/os/RegistrantList;

    #@5
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mDataUsageUpdateRegistrants:Landroid/os/RegistrantList;

    #@a
    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@c
    const/16 v1, 0x8

    #@e
    const v2, 0x3f666666    # 0.9f

    #@11
    const/4 v3, 0x1

    #@12
    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    #@15
    .line 65
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mCallbacks:Ljava/util/Set;

    #@1b
    .line 68
    new-instance v0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$1;

    #@1d
    invoke-direct {v0, p0}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$1;-><init>(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)V

    #@20
    iput-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    #@22
    .line 143
    new-instance v0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;

    #@24
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@27
    move-result-object v1

    #@28
    invoke-direct {v0, p0, v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;-><init>(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;Landroid/os/Looper;)V

    #@2b
    iput-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mHandler:Landroid/os/Handler;

    #@2d
    .line 209
    iput-object p1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    #@2f
    .line 210
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    #@31
    invoke-interface {v0}, Lcom/android/ims/internal/IImsVideoCallProvider;->asBinder()Landroid/os/IBinder;

    #@34
    move-result-object v0

    #@35
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    #@37
    const/4 v2, 0x0

    #@38
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    #@3b
    .line 212
    new-instance v0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;

    #@3d
    const/4 v1, 0x0

    #@3e
    invoke-direct {v0, p0, v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;-><init>(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;)V

    #@41
    iput-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mBinder:Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;

    #@43
    .line 213
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    #@45
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mBinder:Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;

    #@47
    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setCallback(Lcom/android/ims/internal/IImsVideoCallCallback;)V

    #@4a
    .line 208
    return-void
.end method


# virtual methods
.method public addImsVideoProviderCallback(Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mCallbacks:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5
    .line 134
    return-void
.end method

.method public onRequestCameraCapabilities()V
    .locals 2

    #@0
    .prologue
    .line 275
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    #@2
    invoke-interface {v1}, Lcom/android/ims/internal/IImsVideoCallProvider;->requestCameraCapabilities()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 273
    :goto_0
    return-void

    #@6
    .line 276
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
    .line 283
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    #@2
    invoke-interface {v1}, Lcom/android/ims/internal/IImsVideoCallProvider;->requestCallDataUsage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 281
    :goto_0
    return-void

    #@6
    .line 284
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
    .line 259
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    #@2
    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IImsVideoCallProvider;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 257
    :goto_0
    return-void

    #@6
    .line 260
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
    .line 267
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    #@2
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsVideoCallProvider;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 265
    :goto_0
    return-void

    #@6
    .line 268
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
    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    #@2
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setCamera(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 217
    :goto_0
    return-void

    #@6
    .line 220
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
    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    #@2
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setDeviceOrientation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 241
    :goto_0
    return-void

    #@6
    .line 244
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
    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    #@2
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setDisplaySurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 233
    :goto_0
    return-void

    #@6
    .line 236
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
    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    #@2
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setPauseImage(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 289
    :goto_0
    return-void

    #@6
    .line 292
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
    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    #@2
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setPreviewSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 225
    :goto_0
    return-void

    #@6
    .line 228
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
    .line 251
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    #@2
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setZoom(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 249
    :goto_0
    return-void

    #@6
    .line 252
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public registerForDataUsageUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mDataUsageUpdateRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 126
    return-void
.end method

.method public removeImsVideoProviderCallback(Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mCallbacks:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@5
    .line 138
    return-void
.end method

.method public unregisterForDataUsageUpdate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mDataUsageUpdateRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 130
    return-void
.end method
