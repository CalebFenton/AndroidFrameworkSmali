.class Landroid/media/MediaRouter$Static;
.super Ljava/lang/Object;
.source "MediaRouter.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Static"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRouter$Static$1;,
        Landroid/media/MediaRouter$Static$Client;
    }
.end annotation


# instance fields
.field mActivelyScanningWifiDisplays:Z

.field final mAppContext:Landroid/content/Context;

.field final mAudioRoutesObserver:Landroid/media/IAudioRoutesObserver$Stub;

.field final mAudioService:Landroid/media/IAudioService;

.field mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

.field final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/media/MediaRouter$CallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mCanConfigureWifiDisplays:Z

.field final mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaRouter$RouteCategory;",
            ">;"
        }
    .end annotation
.end field

.field mClient:Landroid/media/IMediaRouterClient;

.field mClientState:Landroid/media/MediaRouterClientState;

.field final mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

.field mCurrentUserId:I

.field mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

.field mDiscoverRequestActiveScan:Z

.field mDiscoveryRequestRouteTypes:I

.field final mDisplayService:Landroid/hardware/display/DisplayManager;

.field final mHandler:Landroid/os/Handler;

.field final mMediaRouterService:Landroid/media/IMediaRouterService;

.field mPreviousActiveWifiDisplayAddress:Ljava/lang/String;

.field final mResources:Landroid/content/res/Resources;

.field final mRoutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

.field final mSystemCategory:Landroid/media/MediaRouter$RouteCategory;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "appContext"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 76
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@7
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@a
    .line 75
    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@c
    .line 78
    new-instance v1, Ljava/util/ArrayList;

    #@e
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@11
    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    #@13
    .line 79
    new-instance v1, Ljava/util/ArrayList;

    #@15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@18
    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    #@1a
    .line 83
    new-instance v1, Landroid/media/AudioRoutesInfo;

    #@1c
    invoke-direct {v1}, Landroid/media/AudioRoutesInfo;-><init>()V

    #@1f
    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    #@21
    .line 97
    const/4 v1, -0x1

    #@22
    iput v1, p0, Landroid/media/MediaRouter$Static;->mCurrentUserId:I

    #@24
    .line 101
    new-instance v1, Landroid/media/MediaRouter$Static$1;

    #@26
    invoke-direct {v1, p0}, Landroid/media/MediaRouter$Static$1;-><init>(Landroid/media/MediaRouter$Static;)V

    #@29
    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mAudioRoutesObserver:Landroid/media/IAudioRoutesObserver$Stub;

    #@2b
    .line 113
    iput-object p1, p0, Landroid/media/MediaRouter$Static;->mAppContext:Landroid/content/Context;

    #@2d
    .line 114
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@30
    move-result-object v1

    #@31
    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    #@33
    .line 115
    new-instance v1, Landroid/os/Handler;

    #@35
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@38
    move-result-object v4

    #@39
    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@3c
    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mHandler:Landroid/os/Handler;

    #@3e
    .line 117
    const-string/jumbo v1, "audio"

    #@41
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@44
    move-result-object v0

    #@45
    .line 118
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    #@48
    move-result-object v1

    #@49
    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    #@4b
    .line 120
    const-string/jumbo v1, "display"

    #@4e
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@51
    move-result-object v1

    #@52
    check-cast v1, Landroid/hardware/display/DisplayManager;

    #@54
    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    #@56
    .line 123
    const-string/jumbo v1, "media_router"

    #@59
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@5c
    move-result-object v1

    #@5d
    .line 122
    invoke-static {v1}, Landroid/media/IMediaRouterService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterService;

    #@60
    move-result-object v1

    #@61
    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    #@63
    .line 125
    new-instance v1, Landroid/media/MediaRouter$RouteCategory;

    #@65
    .line 126
    const v4, 0x10404f9

    #@68
    .line 127
    const/4 v5, 0x3

    #@69
    .line 125
    invoke-direct {v1, v4, v5, v3}, Landroid/media/MediaRouter$RouteCategory;-><init>(IIZ)V

    #@6c
    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    #@6e
    .line 128
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    #@70
    iput-boolean v2, v1, Landroid/media/MediaRouter$RouteCategory;->mIsSystem:Z

    #@72
    .line 134
    const-string/jumbo v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    #@75
    .line 135
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@78
    move-result v4

    #@79
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@7c
    move-result v5

    #@7d
    .line 133
    invoke-virtual {p1, v1, v4, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    #@80
    move-result v1

    #@81
    if-nez v1, :cond_0

    #@83
    move v1, v2

    #@84
    :goto_0
    iput-boolean v1, p0, Landroid/media/MediaRouter$Static;->mCanConfigureWifiDisplays:Z

    #@86
    .line 112
    return-void

    #@87
    :cond_0
    move v1, v3

    #@88
    .line 133
    goto :goto_0
.end method

.method private updatePresentationDisplays(I)V
    .locals 4
    .param p1, "changedDisplayId"    # I

    #@0
    .prologue
    .line 328
    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 329
    .local v0, "count":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@9
    .line 330
    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/media/MediaRouter$RouteInfo;

    #@11
    .line 331
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->updatePresentationDisplay()Z

    #@14
    move-result v3

    #@15
    if-nez v3, :cond_0

    #@17
    iget-object v3, v2, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    #@19
    if-eqz v3, :cond_1

    #@1b
    .line 332
    iget-object v3, v2, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    #@1d
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    #@20
    move-result v3

    #@21
    if-ne v3, p1, :cond_1

    #@23
    .line 333
    :cond_0
    invoke-static {v2}, Landroid/media/MediaRouter;->dispatchRoutePresentationDisplayChanged(Landroid/media/MediaRouter$RouteInfo;)V

    #@26
    .line 329
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_0

    #@29
    .line 327
    .end local v2    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_2
    return-void
.end method


# virtual methods
.method findGlobalRoute(Ljava/lang/String;)Landroid/media/MediaRouter$RouteInfo;
    .locals 4
    .param p1, "globalRouteId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 568
    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 569
    .local v0, "count":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 570
    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/media/MediaRouter$RouteInfo;

    #@11
    .line 571
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    iget-object v3, v2, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    #@13
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 572
    return-object v2

    #@1a
    .line 569
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 575
    .end local v2    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_1
    const/4 v3, 0x0

    #@1e
    return-object v3
.end method

.method public getAllPresentationDisplays()[Landroid/view/Display;
    .locals 2

    #@0
    .prologue
    .line 324
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    #@2
    const-string/jumbo v1, "android.hardware.display.category.PRESENTATION"

    #@5
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method isBluetoothA2dpOn()Z
    .locals 3

    #@0
    .prologue
    .line 234
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    #@2
    invoke-interface {v1}, Landroid/media/IAudioService;->isBluetoothA2dpOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 235
    :catch_0
    move-exception v0

    #@8
    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaRouter"

    #@b
    const-string/jumbo v2, "Error querying Bluetooth A2DP state"

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 237
    const/4 v1, 0x0

    #@12
    return v1
.end method

.method makeGlobalRoute(Landroid/media/MediaRouterClientState$RouteInfo;)Landroid/media/MediaRouter$RouteInfo;
    .locals 2
    .param p1, "globalRoute"    # Landroid/media/MediaRouterClientState$RouteInfo;

    #@0
    .prologue
    .line 482
    new-instance v0, Landroid/media/MediaRouter$RouteInfo;

    #@2
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@4
    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    #@6
    invoke-direct {v0, v1}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    #@9
    .line 483
    .local v0, "route":Landroid/media/MediaRouter$RouteInfo;
    iget-object v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    #@b
    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    #@d
    .line 484
    iget-object v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    #@f
    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    #@11
    .line 485
    iget-object v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    #@13
    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/CharSequence;

    #@15
    .line 486
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    #@17
    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    #@19
    .line 487
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->deviceType:I

    #@1b
    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mDeviceType:I

    #@1d
    .line 488
    iget-boolean v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    #@1f
    iput-boolean v1, v0, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    #@21
    .line 489
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    #@23
    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$RouteInfo;->setRealStatusCode(I)Z

    #@26
    .line 490
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    #@28
    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    #@2a
    .line 491
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    #@2c
    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    #@2e
    .line 492
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    #@30
    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    #@32
    .line 493
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    #@34
    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    #@36
    .line 494
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    #@38
    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    #@3a
    .line 495
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    #@3c
    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    #@3e
    .line 496
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->updatePresentationDisplay()Z

    #@41
    .line 497
    return-object v0
.end method

.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 310
    invoke-direct {p0, p1}, Landroid/media/MediaRouter$Static;->updatePresentationDisplays(I)V

    #@3
    .line 309
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 315
    invoke-direct {p0, p1}, Landroid/media/MediaRouter$Static;->updatePresentationDisplays(I)V

    #@3
    .line 314
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 320
    invoke-direct {p0, p1}, Landroid/media/MediaRouter$Static;->updatePresentationDisplays(I)V

    #@3
    .line 319
    return-void
.end method

.method publishClientDiscoveryRequest()V
    .locals 5

    #@0
    .prologue
    .line 373
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 375
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    #@6
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    #@8
    .line 376
    iget v3, p0, Landroid/media/MediaRouter$Static;->mDiscoveryRequestRouteTypes:I

    #@a
    iget-boolean v4, p0, Landroid/media/MediaRouter$Static;->mDiscoverRequestActiveScan:Z

    #@c
    .line 375
    invoke-interface {v1, v2, v3, v4}, Landroid/media/IMediaRouterService;->setDiscoveryRequest(Landroid/media/IMediaRouterClient;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 372
    :cond_0
    :goto_0
    return-void

    #@10
    .line 377
    :catch_0
    move-exception v0

    #@11
    .line 378
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaRouter"

    #@14
    const-string/jumbo v2, "Unable to publish media router client discovery request."

    #@17
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a
    goto :goto_0
.end method

.method publishClientSelectedRoute(Z)V
    .locals 5
    .param p1, "explicit"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 384
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    #@3
    if-eqz v2, :cond_1

    #@5
    .line 386
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    #@7
    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    #@9
    .line 387
    iget-object v4, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    #@b
    if-eqz v4, :cond_0

    #@d
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    #@f
    iget-object v1, v1, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    #@11
    .line 386
    :cond_0
    invoke-interface {v2, v3, v1, p1}, Landroid/media/IMediaRouterService;->setSelectedRoute(Landroid/media/IMediaRouterClient;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 383
    :cond_1
    :goto_0
    return-void

    #@15
    .line 389
    :catch_0
    move-exception v0

    #@16
    .line 390
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaRouter"

    #@19
    const-string/jumbo v2, "Unable to publish media router client selected route."

    #@1c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    goto :goto_0
.end method

.method rebindAsUser(I)V
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 345
    iget v2, p0, Landroid/media/MediaRouter$Static;->mCurrentUserId:I

    #@4
    if-ne v2, p1, :cond_0

    #@6
    if-gez p1, :cond_3

    #@8
    .line 346
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 348
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    #@e
    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    #@10
    invoke-interface {v2, v3}, Landroid/media/IMediaRouterService;->unregisterClient(Landroid/media/IMediaRouterClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 352
    :goto_1
    iput-object v4, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    #@15
    .line 355
    :cond_1
    iput p1, p0, Landroid/media/MediaRouter$Static;->mCurrentUserId:I

    #@17
    .line 358
    :try_start_1
    new-instance v0, Landroid/media/MediaRouter$Static$Client;

    #@19
    invoke-direct {v0, p0}, Landroid/media/MediaRouter$Static$Client;-><init>(Landroid/media/MediaRouter$Static;)V

    #@1c
    .line 359
    .local v0, "client":Landroid/media/MediaRouter$Static$Client;
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    #@1e
    .line 360
    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mAppContext:Landroid/content/Context;

    #@20
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    .line 359
    invoke-interface {v2, v0, v3, p1}, Landroid/media/IMediaRouterService;->registerClientAsUser(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V

    #@27
    .line 361
    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@29
    .line 366
    .end local v0    # "client":Landroid/media/MediaRouter$Static$Client;
    :goto_2
    invoke-virtual {p0}, Landroid/media/MediaRouter$Static;->publishClientDiscoveryRequest()V

    #@2c
    .line 367
    invoke-virtual {p0, v5}, Landroid/media/MediaRouter$Static;->publishClientSelectedRoute(Z)V

    #@2f
    .line 368
    invoke-virtual {p0}, Landroid/media/MediaRouter$Static;->updateClientState()V

    #@32
    .line 344
    :cond_2
    return-void

    #@33
    .line 345
    :cond_3
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    #@35
    if-nez v2, :cond_2

    #@37
    goto :goto_0

    #@38
    .line 349
    :catch_0
    move-exception v1

    #@39
    .line 350
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "MediaRouter"

    #@3c
    const-string/jumbo v3, "Unable to unregister media router client."

    #@3f
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@42
    goto :goto_1

    #@43
    .line 362
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@44
    .line 363
    .restart local v1    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "MediaRouter"

    #@47
    const-string/jumbo v3, "Unable to register media router client."

    #@4a
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4d
    goto :goto_2
.end method

.method requestSetVolume(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 4
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;
    .param p2, "volume"    # I

    #@0
    .prologue
    .line 460
    iget-object v1, p1, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 462
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    #@a
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    #@c
    .line 463
    iget-object v3, p1, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    #@e
    .line 462
    invoke-interface {v1, v2, v3, p2}, Landroid/media/IMediaRouterService;->requestSetVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 459
    :cond_0
    :goto_0
    return-void

    #@12
    .line 464
    :catch_0
    move-exception v0

    #@13
    .line 465
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaRouter"

    #@16
    const-string/jumbo v2, "Unable to request volume change."

    #@19
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c
    goto :goto_0
.end method

.method requestUpdateVolume(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 4
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;
    .param p2, "direction"    # I

    #@0
    .prologue
    .line 471
    iget-object v1, p1, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 473
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    #@a
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    #@c
    .line 474
    iget-object v3, p1, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    #@e
    .line 473
    invoke-interface {v1, v2, v3, p2}, Landroid/media/IMediaRouterService;->requestUpdateVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 470
    :cond_0
    :goto_0
    return-void

    #@12
    .line 475
    :catch_0
    move-exception v0

    #@13
    .line 476
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaRouter"

    #@16
    const-string/jumbo v2, "Unable to request volume change."

    #@19
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c
    goto :goto_0
.end method

.method setSelectedRoute(Landroid/media/MediaRouter$RouteInfo;Z)V
    .locals 0
    .param p1, "info"    # Landroid/media/MediaRouter$RouteInfo;
    .param p2, "explicit"    # Z

    #@0
    .prologue
    .line 340
    iput-object p1, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    #@2
    .line 341
    invoke-virtual {p0, p2}, Landroid/media/MediaRouter$Static;->publishClientSelectedRoute(Z)V

    #@5
    .line 338
    return-void
.end method

.method startMonitoringRoutes(Landroid/content/Context;)V
    .locals 5
    .param p1, "appContext"    # Landroid/content/Context;

    #@0
    .prologue
    .line 140
    new-instance v2, Landroid/media/MediaRouter$RouteInfo;

    #@2
    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    #@4
    invoke-direct {v2, v3}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    #@7
    iput-object v2, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    #@9
    .line 141
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    #@b
    const v3, 0x10404f5

    #@e
    iput v3, v2, Landroid/media/MediaRouter$RouteInfo;->mNameResId:I

    #@10
    .line 142
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    #@12
    const/4 v3, 0x3

    #@13
    iput v3, v2, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    #@15
    .line 143
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    #@17
    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->updatePresentationDisplay()Z

    #@1a
    .line 144
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    #@1c
    invoke-static {v2}, Landroid/media/MediaRouter;->addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    #@1f
    .line 147
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    #@21
    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    #@24
    move-result-object v2

    #@25
    invoke-static {v2}, Landroid/media/MediaRouter;->updateWifiDisplayStatus(Landroid/hardware/display/WifiDisplayStatus;)V

    #@28
    .line 149
    new-instance v2, Landroid/media/MediaRouter$WifiDisplayStatusChangedReceiver;

    #@2a
    invoke-direct {v2}, Landroid/media/MediaRouter$WifiDisplayStatusChangedReceiver;-><init>()V

    #@2d
    .line 150
    new-instance v3, Landroid/content/IntentFilter;

    #@2f
    const-string/jumbo v4, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    #@32
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@35
    .line 149
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@38
    .line 151
    new-instance v2, Landroid/media/MediaRouter$VolumeChangeReceiver;

    #@3a
    invoke-direct {v2}, Landroid/media/MediaRouter$VolumeChangeReceiver;-><init>()V

    #@3d
    .line 152
    new-instance v3, Landroid/content/IntentFilter;

    #@3f
    const-string/jumbo v4, "android.media.VOLUME_CHANGED_ACTION"

    #@42
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@45
    .line 151
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@48
    .line 154
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    #@4a
    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mHandler:Landroid/os/Handler;

    #@4c
    invoke-virtual {v2, p0, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    #@4f
    .line 156
    const/4 v1, 0x0

    #@50
    .line 158
    .local v1, "newAudioRoutes":Landroid/media/AudioRoutesInfo;
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    #@52
    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mAudioRoutesObserver:Landroid/media/IAudioRoutesObserver$Stub;

    #@54
    invoke-interface {v2, v3}, Landroid/media/IAudioService;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@57
    move-result-object v1

    #@58
    .line 161
    .end local v1    # "newAudioRoutes":Landroid/media/AudioRoutesInfo;
    :goto_0
    if-eqz v1, :cond_0

    #@5a
    .line 165
    invoke-virtual {p0, v1}, Landroid/media/MediaRouter$Static;->updateAudioRoutes(Landroid/media/AudioRoutesInfo;)V

    #@5d
    .line 169
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@60
    move-result v2

    #@61
    invoke-virtual {p0, v2}, Landroid/media/MediaRouter$Static;->rebindAsUser(I)V

    #@64
    .line 173
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    #@66
    if-nez v2, :cond_1

    #@68
    .line 174
    invoke-static {}, Landroid/media/MediaRouter;->selectDefaultRouteStatic()V

    #@6b
    .line 139
    :cond_1
    return-void

    #@6c
    .line 159
    .restart local v1    # "newAudioRoutes":Landroid/media/AudioRoutesInfo;
    :catch_0
    move-exception v0

    #@6d
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method updateAudioRoutes(Landroid/media/AudioRoutesInfo;)V
    .locals 10
    .param p1, "newRoutes"    # Landroid/media/AudioRoutesInfo;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    const/4 v7, 0x0

    #@3
    .line 179
    const-string/jumbo v4, "MediaRouter"

    #@6
    new-instance v5, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v6, "Updating audio routes: "

    #@e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v5

    #@12
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v5

    #@16
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v5

    #@1a
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 180
    iget v4, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    #@1f
    iget-object v5, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    #@21
    iget v5, v5, Landroid/media/AudioRoutesInfo;->mainType:I

    #@23
    if-eq v4, v5, :cond_1

    #@25
    .line 181
    iget-object v4, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    #@27
    iget v5, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    #@29
    iput v5, v4, Landroid/media/AudioRoutesInfo;->mainType:I

    #@2b
    .line 183
    iget v4, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    #@2d
    and-int/lit8 v4, v4, 0x2

    #@2f
    if-nez v4, :cond_0

    #@31
    .line 184
    iget v4, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    #@33
    and-int/lit8 v4, v4, 0x1

    #@35
    if-eqz v4, :cond_6

    #@37
    .line 185
    :cond_0
    const v3, 0x10404f6

    #@3a
    .line 193
    .local v3, "name":I
    :goto_0
    sget-object v4, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@3c
    iget-object v4, v4, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    #@3e
    iput v3, v4, Landroid/media/MediaRouter$RouteInfo;->mNameResId:I

    #@40
    .line 194
    sget-object v4, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@42
    iget-object v4, v4, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    #@44
    invoke-static {v4}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V

    #@47
    .line 197
    .end local v3    # "name":I
    :cond_1
    iget-object v4, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    #@49
    iget v2, v4, Landroid/media/AudioRoutesInfo;->mainType:I

    #@4b
    .line 199
    .local v2, "mainType":I
    iget-object v4, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    #@4d
    iget-object v5, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    #@4f
    iget-object v5, v5, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    #@51
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@54
    move-result v4

    #@55
    if-nez v4, :cond_2

    #@57
    .line 200
    iget-object v4, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    #@59
    iget-object v5, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    #@5b
    iput-object v5, v4, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    #@5d
    .line 201
    iget-object v4, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    #@5f
    iget-object v4, v4, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    #@61
    if-eqz v4, :cond_a

    #@63
    .line 202
    sget-object v4, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@65
    iget-object v4, v4, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    #@67
    if-nez v4, :cond_9

    #@69
    .line 203
    new-instance v1, Landroid/media/MediaRouter$RouteInfo;

    #@6b
    sget-object v4, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@6d
    iget-object v4, v4, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    #@6f
    invoke-direct {v1, v4}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    #@72
    .line 204
    .local v1, "info":Landroid/media/MediaRouter$RouteInfo;
    iget-object v4, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    #@74
    iget-object v4, v4, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    #@76
    iput-object v4, v1, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    #@78
    .line 205
    sget-object v4, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@7a
    iget-object v4, v4, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    #@7c
    .line 206
    const v5, 0x10404fa

    #@7f
    .line 205
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@82
    move-result-object v4

    #@83
    iput-object v4, v1, Landroid/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/CharSequence;

    #@85
    .line 207
    iput v9, v1, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    #@87
    .line 208
    const/4 v4, 0x3

    #@88
    iput v4, v1, Landroid/media/MediaRouter$RouteInfo;->mDeviceType:I

    #@8a
    .line 209
    sget-object v4, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@8c
    iput-object v1, v4, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    #@8e
    .line 210
    sget-object v4, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@90
    iget-object v4, v4, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    #@92
    invoke-static {v4}, Landroid/media/MediaRouter;->addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    #@95
    .line 221
    .end local v1    # "info":Landroid/media/MediaRouter$RouteInfo;
    :cond_2
    :goto_1
    iget-object v4, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    #@97
    if-eqz v4, :cond_5

    #@99
    .line 222
    invoke-virtual {p0}, Landroid/media/MediaRouter$Static;->isBluetoothA2dpOn()Z

    #@9c
    move-result v0

    #@9d
    .line 223
    .local v0, "a2dpEnabled":Z
    iget-object v4, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    #@9f
    iget-object v5, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    #@a1
    if-ne v4, v5, :cond_3

    #@a3
    if-eqz v0, :cond_b

    #@a5
    .line 225
    :cond_3
    iget-object v4, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    #@a7
    iget-object v5, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    #@a9
    if-eq v4, v5, :cond_4

    #@ab
    iget-object v4, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    #@ad
    if-nez v4, :cond_5

    #@af
    :cond_4
    if-eqz v0, :cond_5

    #@b1
    .line 227
    iget-object v4, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    #@b3
    invoke-static {v9, v4, v7}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    #@b6
    .line 178
    .end local v0    # "a2dpEnabled":Z
    :cond_5
    :goto_2
    return-void

    #@b7
    .line 186
    .end local v2    # "mainType":I
    :cond_6
    iget v4, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    #@b9
    and-int/lit8 v4, v4, 0x4

    #@bb
    if-eqz v4, :cond_7

    #@bd
    .line 187
    const v3, 0x10404f7

    #@c0
    .restart local v3    # "name":I
    goto/16 :goto_0

    #@c2
    .line 188
    .end local v3    # "name":I
    :cond_7
    iget v4, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    #@c4
    and-int/lit8 v4, v4, 0x8

    #@c6
    if-eqz v4, :cond_8

    #@c8
    .line 189
    const v3, 0x10404f8

    #@cb
    .restart local v3    # "name":I
    goto/16 :goto_0

    #@cd
    .line 191
    .end local v3    # "name":I
    :cond_8
    const v3, 0x10404f5

    #@d0
    .restart local v3    # "name":I
    goto/16 :goto_0

    #@d2
    .line 212
    .end local v3    # "name":I
    .restart local v2    # "mainType":I
    :cond_9
    sget-object v4, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@d4
    iget-object v4, v4, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    #@d6
    iget-object v5, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    #@d8
    iget-object v5, v5, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    #@da
    iput-object v5, v4, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    #@dc
    .line 213
    sget-object v4, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@de
    iget-object v4, v4, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    #@e0
    invoke-static {v4}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V

    #@e3
    goto :goto_1

    #@e4
    .line 215
    :cond_a
    sget-object v4, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@e6
    iget-object v4, v4, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    #@e8
    if-eqz v4, :cond_2

    #@ea
    .line 216
    sget-object v4, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@ec
    iget-object v4, v4, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    #@ee
    invoke-static {v4}, Landroid/media/MediaRouter;->removeRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    #@f1
    .line 217
    sget-object v4, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@f3
    iput-object v8, v4, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    #@f5
    goto :goto_1

    #@f6
    .line 224
    .restart local v0    # "a2dpEnabled":Z
    :cond_b
    iget-object v4, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    #@f8
    invoke-static {v9, v4, v7}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    #@fb
    goto :goto_2
.end method

.method updateClientState()V
    .locals 14

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    const/4 v10, 0x0

    #@2
    .line 397
    iput-object v10, p0, Landroid/media/MediaRouter$Static;->mClientState:Landroid/media/MediaRouterClientState;

    #@4
    .line 398
    iget-object v10, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    #@6
    if-eqz v10, :cond_0

    #@8
    .line 400
    :try_start_0
    iget-object v10, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    #@a
    iget-object v11, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    #@c
    invoke-interface {v10, v11}, Landroid/media/IMediaRouterService;->getState(Landroid/media/IMediaRouterClient;)Landroid/media/MediaRouterClientState;

    #@f
    move-result-object v10

    #@10
    iput-object v10, p0, Landroid/media/MediaRouter$Static;->mClientState:Landroid/media/MediaRouterClientState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 406
    :cond_0
    :goto_0
    iget-object v10, p0, Landroid/media/MediaRouter$Static;->mClientState:Landroid/media/MediaRouterClientState;

    #@14
    if-eqz v10, :cond_1

    #@16
    iget-object v10, p0, Landroid/media/MediaRouter$Static;->mClientState:Landroid/media/MediaRouterClientState;

    #@18
    iget-object v4, v10, Landroid/media/MediaRouterClientState;->routes:Ljava/util/ArrayList;

    #@1a
    .line 407
    :goto_1
    iget-object v10, p0, Landroid/media/MediaRouter$Static;->mClientState:Landroid/media/MediaRouterClientState;

    #@1c
    if-eqz v10, :cond_2

    #@1e
    .line 408
    iget-object v10, p0, Landroid/media/MediaRouter$Static;->mClientState:Landroid/media/MediaRouterClientState;

    #@20
    iget-object v5, v10, Landroid/media/MediaRouterClientState;->globallySelectedRouteId:Ljava/lang/String;

    #@22
    .line 411
    :goto_2
    if-eqz v4, :cond_3

    #@24
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@27
    move-result v2

    #@28
    .line 412
    .local v2, "globalRouteCount":I
    :goto_3
    const/4 v6, 0x0

    #@29
    .local v6, "i":I
    :goto_4
    if-ge v6, v2, :cond_5

    #@2b
    .line 413
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v1

    #@2f
    check-cast v1, Landroid/media/MediaRouterClientState$RouteInfo;

    #@31
    .line 414
    .local v1, "globalRoute":Landroid/media/MediaRouterClientState$RouteInfo;
    iget-object v10, v1, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    #@33
    invoke-virtual {p0, v10}, Landroid/media/MediaRouter$Static;->findGlobalRoute(Ljava/lang/String;)Landroid/media/MediaRouter$RouteInfo;

    #@36
    move-result-object v9

    #@37
    .line 415
    .local v9, "route":Landroid/media/MediaRouter$RouteInfo;
    if-nez v9, :cond_4

    #@39
    .line 416
    invoke-virtual {p0, v1}, Landroid/media/MediaRouter$Static;->makeGlobalRoute(Landroid/media/MediaRouterClientState$RouteInfo;)Landroid/media/MediaRouter$RouteInfo;

    #@3c
    move-result-object v9

    #@3d
    .line 417
    invoke-static {v9}, Landroid/media/MediaRouter;->addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    #@40
    .line 412
    :goto_5
    add-int/lit8 v6, v6, 0x1

    #@42
    goto :goto_4

    #@43
    .line 401
    .end local v1    # "globalRoute":Landroid/media/MediaRouterClientState$RouteInfo;
    .end local v2    # "globalRouteCount":I
    .end local v6    # "i":I
    .end local v9    # "route":Landroid/media/MediaRouter$RouteInfo;
    :catch_0
    move-exception v0

    #@44
    .line 402
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v10, "MediaRouter"

    #@47
    const-string/jumbo v11, "Unable to retrieve media router client state."

    #@4a
    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4d
    goto :goto_0

    #@4e
    .line 406
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_1
    const/4 v4, 0x0

    #@4f
    .local v4, "globalRoutes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MediaRouterClientState$RouteInfo;>;"
    goto :goto_1

    #@50
    .line 408
    .end local v4    # "globalRoutes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MediaRouterClientState$RouteInfo;>;"
    :cond_2
    const/4 v5, 0x0

    #@51
    .local v5, "globallySelectedRouteId":Ljava/lang/String;
    goto :goto_2

    #@52
    .line 411
    .end local v5    # "globallySelectedRouteId":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    #@53
    .restart local v2    # "globalRouteCount":I
    goto :goto_3

    #@54
    .line 419
    .restart local v1    # "globalRoute":Landroid/media/MediaRouterClientState$RouteInfo;
    .restart local v6    # "i":I
    .restart local v9    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_4
    invoke-virtual {p0, v9, v1}, Landroid/media/MediaRouter$Static;->updateGlobalRoute(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouterClientState$RouteInfo;)V

    #@57
    goto :goto_5

    #@58
    .line 424
    .end local v1    # "globalRoute":Landroid/media/MediaRouterClientState$RouteInfo;
    .end local v9    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_5
    if-eqz v5, :cond_a

    #@5a
    .line 425
    invoke-virtual {p0, v5}, Landroid/media/MediaRouter$Static;->findGlobalRoute(Ljava/lang/String;)Landroid/media/MediaRouter$RouteInfo;

    #@5d
    move-result-object v9

    #@5e
    .line 426
    .restart local v9    # "route":Landroid/media/MediaRouter$RouteInfo;
    if-nez v9, :cond_8

    #@60
    .line 427
    const-string/jumbo v10, "MediaRouter"

    #@63
    new-instance v11, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v12, "Could not find new globally selected route: "

    #@6b
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v11

    #@6f
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v11

    #@73
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v11

    #@77
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7a
    .line 443
    .end local v9    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_6
    :goto_6
    iget-object v10, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    #@7c
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@7f
    move-result v6

    #@80
    move v7, v6

    #@81
    .end local v6    # "i":I
    .local v7, "i":I
    :goto_7
    add-int/lit8 v6, v7, -0x1

    #@83
    .end local v7    # "i":I
    .restart local v6    # "i":I
    if-lez v7, :cond_e

    #@85
    .line 444
    iget-object v10, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    #@87
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@8a
    move-result-object v9

    #@8b
    check-cast v9, Landroid/media/MediaRouter$RouteInfo;

    #@8d
    .line 445
    .restart local v9    # "route":Landroid/media/MediaRouter$RouteInfo;
    iget-object v3, v9, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    #@8f
    .line 446
    .local v3, "globalRouteId":Ljava/lang/String;
    if-eqz v3, :cond_7

    #@91
    .line 447
    const/4 v8, 0x0

    #@92
    .local v8, "j":I
    :goto_8
    if-ge v8, v2, :cond_d

    #@94
    .line 448
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@97
    move-result-object v1

    #@98
    check-cast v1, Landroid/media/MediaRouterClientState$RouteInfo;

    #@9a
    .line 449
    .restart local v1    # "globalRoute":Landroid/media/MediaRouterClientState$RouteInfo;
    iget-object v10, v1, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    #@9c
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9f
    move-result v10

    #@a0
    if-eqz v10, :cond_c

    #@a2
    .end local v1    # "globalRoute":Landroid/media/MediaRouterClientState$RouteInfo;
    .end local v8    # "j":I
    :cond_7
    :goto_9
    move v7, v6

    #@a3
    .end local v6    # "i":I
    .restart local v7    # "i":I
    goto :goto_7

    #@a4
    .line 429
    .end local v3    # "globalRouteId":Ljava/lang/String;
    .end local v7    # "i":I
    .restart local v6    # "i":I
    :cond_8
    iget-object v10, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    #@a6
    if-eq v9, v10, :cond_6

    #@a8
    .line 430
    invoke-static {}, Landroid/media/MediaRouter;->-get0()Z

    #@ab
    move-result v10

    #@ac
    if-eqz v10, :cond_9

    #@ae
    .line 431
    const-string/jumbo v10, "MediaRouter"

    #@b1
    new-instance v11, Ljava/lang/StringBuilder;

    #@b3
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@b6
    const-string/jumbo v12, "Selecting new globally selected route: "

    #@b9
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v11

    #@bd
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v11

    #@c1
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c4
    move-result-object v11

    #@c5
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c8
    .line 433
    :cond_9
    iget v10, v9, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    #@ca
    invoke-static {v10, v9, v13}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    #@cd
    goto :goto_6

    #@ce
    .line 435
    .end local v9    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_a
    iget-object v10, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    #@d0
    if-eqz v10, :cond_6

    #@d2
    iget-object v10, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    #@d4
    iget-object v10, v10, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    #@d6
    if-eqz v10, :cond_6

    #@d8
    .line 436
    invoke-static {}, Landroid/media/MediaRouter;->-get0()Z

    #@db
    move-result v10

    #@dc
    if-eqz v10, :cond_b

    #@de
    .line 437
    const-string/jumbo v10, "MediaRouter"

    #@e1
    new-instance v11, Ljava/lang/StringBuilder;

    #@e3
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@e6
    const-string/jumbo v12, "Unselecting previous globally selected route: "

    #@e9
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v11

    #@ed
    iget-object v12, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    #@ef
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v11

    #@f3
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f6
    move-result-object v11

    #@f7
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@fa
    .line 439
    :cond_b
    invoke-static {}, Landroid/media/MediaRouter;->selectDefaultRouteStatic()V

    #@fd
    goto/16 :goto_6

    #@ff
    .line 447
    .restart local v1    # "globalRoute":Landroid/media/MediaRouterClientState$RouteInfo;
    .restart local v3    # "globalRouteId":Ljava/lang/String;
    .restart local v8    # "j":I
    .restart local v9    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_c
    add-int/lit8 v8, v8, 0x1

    #@101
    goto :goto_8

    #@102
    .line 454
    .end local v1    # "globalRoute":Landroid/media/MediaRouterClientState$RouteInfo;
    :cond_d
    invoke-static {v9}, Landroid/media/MediaRouter;->removeRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    #@105
    goto :goto_9

    #@106
    .line 395
    .end local v3    # "globalRouteId":Ljava/lang/String;
    .end local v8    # "j":I
    .end local v9    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_e
    return-void
.end method

.method updateDiscoveryRequest()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 243
    const/4 v6, 0x0

    #@2
    .line 244
    .local v6, "routeTypes":I
    const/4 v5, 0x0

    #@3
    .line 245
    .local v5, "passiveRouteTypes":I
    const/4 v0, 0x0

    #@4
    .line 246
    .local v0, "activeScan":Z
    const/4 v1, 0x0

    #@5
    .line 247
    .local v1, "activeScanWifiDisplay":Z
    iget-object v7, p0, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@7
    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    #@a
    move-result v3

    #@b
    .line 248
    .local v3, "count":I
    const/4 v4, 0x0

    #@c
    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    #@e
    .line 249
    iget-object v7, p0, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@10
    invoke-virtual {v7, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Landroid/media/MediaRouter$CallbackInfo;

    #@16
    .line 250
    .local v2, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    iget v7, v2, Landroid/media/MediaRouter$CallbackInfo;->flags:I

    #@18
    and-int/lit8 v7, v7, 0x5

    #@1a
    if-eqz v7, :cond_1

    #@1c
    .line 253
    iget v7, v2, Landroid/media/MediaRouter$CallbackInfo;->type:I

    #@1e
    or-int/2addr v6, v7

    #@1f
    .line 263
    :goto_1
    iget v7, v2, Landroid/media/MediaRouter$CallbackInfo;->flags:I

    #@21
    and-int/lit8 v7, v7, 0x1

    #@23
    if-eqz v7, :cond_0

    #@25
    .line 264
    const/4 v0, 0x1

    #@26
    .line 265
    iget v7, v2, Landroid/media/MediaRouter$CallbackInfo;->type:I

    #@28
    and-int/lit8 v7, v7, 0x4

    #@2a
    if-eqz v7, :cond_0

    #@2c
    .line 266
    const/4 v1, 0x1

    #@2d
    .line 248
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 254
    :cond_1
    iget v7, v2, Landroid/media/MediaRouter$CallbackInfo;->flags:I

    #@32
    and-int/lit8 v7, v7, 0x8

    #@34
    if-eqz v7, :cond_2

    #@36
    .line 256
    iget v7, v2, Landroid/media/MediaRouter$CallbackInfo;->type:I

    #@38
    or-int/2addr v5, v7

    #@39
    goto :goto_1

    #@3a
    .line 261
    :cond_2
    iget v7, v2, Landroid/media/MediaRouter$CallbackInfo;->type:I

    #@3c
    or-int/2addr v6, v7

    #@3d
    goto :goto_1

    #@3e
    .line 270
    .end local v2    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    :cond_3
    if-nez v6, :cond_4

    #@40
    if-eqz v0, :cond_5

    #@42
    .line 274
    :cond_4
    or-int/2addr v6, v5

    #@43
    .line 279
    :cond_5
    iget-boolean v7, p0, Landroid/media/MediaRouter$Static;->mCanConfigureWifiDisplays:Z

    #@45
    if-eqz v7, :cond_7

    #@47
    .line 280
    iget-object v7, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    #@49
    if-eqz v7, :cond_6

    #@4b
    .line 281
    iget-object v7, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    #@4d
    const/4 v8, 0x4

    #@4e
    invoke-virtual {v7, v8}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    #@51
    move-result v7

    #@52
    .line 280
    if-eqz v7, :cond_6

    #@54
    .line 284
    const/4 v1, 0x0

    #@55
    .line 286
    :cond_6
    if-eqz v1, :cond_a

    #@57
    .line 287
    iget-boolean v7, p0, Landroid/media/MediaRouter$Static;->mActivelyScanningWifiDisplays:Z

    #@59
    if-nez v7, :cond_7

    #@5b
    .line 288
    const/4 v7, 0x1

    #@5c
    iput-boolean v7, p0, Landroid/media/MediaRouter$Static;->mActivelyScanningWifiDisplays:Z

    #@5e
    .line 289
    iget-object v7, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    #@60
    invoke-virtual {v7}, Landroid/hardware/display/DisplayManager;->startWifiDisplayScan()V

    #@63
    .line 300
    :cond_7
    :goto_2
    iget v7, p0, Landroid/media/MediaRouter$Static;->mDiscoveryRequestRouteTypes:I

    #@65
    if-ne v6, v7, :cond_8

    #@67
    .line 301
    iget-boolean v7, p0, Landroid/media/MediaRouter$Static;->mDiscoverRequestActiveScan:Z

    #@69
    if-eq v0, v7, :cond_9

    #@6b
    .line 302
    :cond_8
    iput v6, p0, Landroid/media/MediaRouter$Static;->mDiscoveryRequestRouteTypes:I

    #@6d
    .line 303
    iput-boolean v0, p0, Landroid/media/MediaRouter$Static;->mDiscoverRequestActiveScan:Z

    #@6f
    .line 304
    invoke-virtual {p0}, Landroid/media/MediaRouter$Static;->publishClientDiscoveryRequest()V

    #@72
    .line 241
    :cond_9
    return-void

    #@73
    .line 292
    :cond_a
    iget-boolean v7, p0, Landroid/media/MediaRouter$Static;->mActivelyScanningWifiDisplays:Z

    #@75
    if-eqz v7, :cond_7

    #@77
    .line 293
    iput-boolean v9, p0, Landroid/media/MediaRouter$Static;->mActivelyScanningWifiDisplays:Z

    #@79
    .line 294
    iget-object v7, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    #@7b
    invoke-virtual {v7}, Landroid/hardware/display/DisplayManager;->stopWifiDisplayScan()V

    #@7e
    goto :goto_2
.end method

.method updateGlobalRoute(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouterClientState$RouteInfo;)V
    .locals 6
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;
    .param p2, "globalRoute"    # Landroid/media/MediaRouterClientState$RouteInfo;

    #@0
    .prologue
    .line 501
    const/4 v0, 0x0

    #@1
    .line 502
    .local v0, "changed":Z
    const/4 v3, 0x0

    #@2
    .line 503
    .local v3, "volumeChanged":Z
    const/4 v2, 0x0

    #@3
    .line 505
    .local v2, "presentationDisplayChanged":Z
    iget-object v4, p1, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    #@5
    iget-object v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    #@7
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@a
    move-result v4

    #@b
    if-nez v4, :cond_0

    #@d
    .line 506
    iget-object v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    #@f
    iput-object v4, p1, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    #@11
    .line 507
    const/4 v0, 0x1

    #@12
    .line 509
    :cond_0
    iget-object v4, p1, Landroid/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/CharSequence;

    #@14
    iget-object v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    #@16
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@19
    move-result v4

    #@1a
    if-nez v4, :cond_1

    #@1c
    .line 510
    iget-object v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    #@1e
    iput-object v4, p1, Landroid/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/CharSequence;

    #@20
    .line 511
    const/4 v0, 0x1

    #@21
    .line 513
    :cond_1
    iget v1, p1, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    #@23
    .line 514
    .local v1, "oldSupportedTypes":I
    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    #@25
    if-eq v1, v4, :cond_2

    #@27
    .line 515
    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    #@29
    iput v4, p1, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    #@2b
    .line 516
    const/4 v0, 0x1

    #@2c
    .line 518
    :cond_2
    iget-boolean v4, p1, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    #@2e
    iget-boolean v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    #@30
    if-eq v4, v5, :cond_3

    #@32
    .line 519
    iget-boolean v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    #@34
    iput-boolean v4, p1, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    #@36
    .line 520
    const/4 v0, 0x1

    #@37
    .line 522
    :cond_3
    invoke-static {p1}, Landroid/media/MediaRouter$RouteInfo;->-get0(Landroid/media/MediaRouter$RouteInfo;)I

    #@3a
    move-result v4

    #@3b
    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    #@3d
    if-eq v4, v5, :cond_4

    #@3f
    .line 523
    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    #@41
    invoke-virtual {p1, v4}, Landroid/media/MediaRouter$RouteInfo;->setRealStatusCode(I)Z

    #@44
    .line 524
    const/4 v0, 0x1

    #@45
    .line 526
    :cond_4
    iget v4, p1, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    #@47
    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    #@49
    if-eq v4, v5, :cond_5

    #@4b
    .line 527
    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    #@4d
    iput v4, p1, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    #@4f
    .line 528
    const/4 v0, 0x1

    #@50
    .line 530
    :cond_5
    iget v4, p1, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    #@52
    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    #@54
    if-eq v4, v5, :cond_6

    #@56
    .line 531
    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    #@58
    iput v4, p1, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    #@5a
    .line 532
    const/4 v0, 0x1

    #@5b
    .line 534
    :cond_6
    iget v4, p1, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    #@5d
    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    #@5f
    if-eq v4, v5, :cond_7

    #@61
    .line 535
    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    #@63
    iput v4, p1, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    #@65
    .line 536
    const/4 v0, 0x1

    #@66
    .line 537
    const/4 v3, 0x1

    #@67
    .line 539
    :cond_7
    iget v4, p1, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    #@69
    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    #@6b
    if-eq v4, v5, :cond_8

    #@6d
    .line 540
    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    #@6f
    iput v4, p1, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    #@71
    .line 541
    const/4 v0, 0x1

    #@72
    .line 542
    const/4 v3, 0x1

    #@73
    .line 544
    :cond_8
    iget v4, p1, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    #@75
    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    #@77
    if-eq v4, v5, :cond_9

    #@79
    .line 545
    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    #@7b
    iput v4, p1, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    #@7d
    .line 546
    const/4 v0, 0x1

    #@7e
    .line 547
    const/4 v3, 0x1

    #@7f
    .line 549
    :cond_9
    iget v4, p1, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    #@81
    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    #@83
    if-eq v4, v5, :cond_a

    #@85
    .line 550
    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    #@87
    iput v4, p1, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    #@89
    .line 551
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->updatePresentationDisplay()Z

    #@8c
    .line 552
    const/4 v0, 0x1

    #@8d
    .line 553
    const/4 v2, 0x1

    #@8e
    .line 556
    :cond_a
    if-eqz v0, :cond_b

    #@90
    .line 557
    invoke-static {p1, v1}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;I)V

    #@93
    .line 559
    :cond_b
    if-eqz v3, :cond_c

    #@95
    .line 560
    invoke-static {p1}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    #@98
    .line 562
    :cond_c
    if-eqz v2, :cond_d

    #@9a
    .line 563
    invoke-static {p1}, Landroid/media/MediaRouter;->dispatchRoutePresentationDisplayChanged(Landroid/media/MediaRouter$RouteInfo;)V

    #@9d
    .line 500
    :cond_d
    return-void
.end method
