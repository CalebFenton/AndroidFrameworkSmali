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
        Landroid/media/MediaRouter$Static$Client;
    }
.end annotation


# instance fields
.field greylist-max-o mActivelyScanningWifiDisplays:Z

.field final greylist-max-o mAudioRoutesObserver:Landroid/media/IAudioRoutesObserver$Stub;

.field final greylist-max-o mAudioService:Landroid/media/IAudioService;

.field greylist-max-o mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

.field final greylist-max-o mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/media/MediaRouter$CallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mCanConfigureWifiDisplays:Z

.field final greylist-max-o mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaRouter$RouteCategory;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mClient:Landroid/media/IMediaRouterClient;

.field greylist-max-o mClientState:Landroid/media/MediaRouterClientState;

.field final greylist-max-o mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

.field greylist-max-o mCurrentUserId:I

.field greylist-max-o mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

.field greylist-max-o mDiscoverRequestActiveScan:Z

.field greylist-max-o mDiscoveryRequestRouteTypes:I

.field final greylist-max-o mDisplayService:Landroid/hardware/display/DisplayManager;

.field final greylist-max-o mHandler:Landroid/os/Handler;

.field blacklist mIsBluetoothA2dpOn:Z

.field final greylist-max-o mMediaRouterService:Landroid/media/IMediaRouterService;

.field final greylist-max-o mPackageName:Ljava/lang/String;

.field greylist-max-o mPreviousActiveWifiDisplayAddress:Ljava/lang/String;

.field final greylist-max-o mResources:Landroid/content/res/Resources;

.field final greylist-max-o mRoutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

.field blacklist mStreamVolume:Landroid/util/SparseIntArray;

.field final greylist-max-o mSystemCategory:Landroid/media/MediaRouter$RouteCategory;


# direct methods
.method constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "appContext"    # Landroid/content/Context;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Landroid/media/AudioRoutesInfo;

    invoke-direct {v0}, Landroid/media/AudioRoutesInfo;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/MediaRouter$Static;->mCurrentUserId:I

    .line 118
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mStreamVolume:Landroid/util/SparseIntArray;

    .line 120
    new-instance v0, Landroid/media/MediaRouter$Static$1;

    invoke-direct {v0, p0}, Landroid/media/MediaRouter$Static$1;-><init>(Landroid/media/MediaRouter$Static;)V

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mAudioRoutesObserver:Landroid/media/IAudioRoutesObserver$Stub;

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mPackageName:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    .line 141
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mHandler:Landroid/os/Handler;

    .line 143
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 144
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    .line 146
    const-string v1, "display"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    .line 148
    nop

    .line 149
    const-string v1, "media_router"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 148
    invoke-static {v1}, Landroid/media/IMediaRouterService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    .line 151
    new-instance v1, Landroid/media/MediaRouter$RouteCategory;

    const v2, 0x1040343

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/media/MediaRouter$RouteCategory;-><init>(IIZ)V

    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    .line 154
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/media/MediaRouter$RouteCategory;->mIsSystem:Z

    .line 159
    nop

    .line 161
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 159
    const-string v5, "android.permission.CONFIGURE_WIFI_DISPLAY"

    invoke-virtual {p1, v5, v1, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_8d

    move v4, v2

    :cond_8d
    iput-boolean v4, p0, Landroid/media/MediaRouter$Static;->mCanConfigureWifiDisplays:Z

    .line 162
    return-void
.end method

.method private greylist-max-o updatePresentationDisplays(I)V
    .registers 6
    .param p1, "changedDisplayId"    # I

    .line 415
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 416
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_29

    .line 417
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter$RouteInfo;

    .line 418
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->updatePresentationDisplay()Z

    move-result v3

    if-nez v3, :cond_23

    iget-object v3, v2, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    if-eqz v3, :cond_26

    iget-object v3, v2, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    .line 419
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    if-ne v3, p1, :cond_26

    .line 420
    :cond_23
    invoke-static {v2}, Landroid/media/MediaRouter;->dispatchRoutePresentationDisplayChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 416
    .end local v2    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 423
    .end local v1    # "i":I
    :cond_29
    return-void
.end method


# virtual methods
.method greylist-max-o findGlobalRoute(Ljava/lang/String;)Landroid/media/MediaRouter$RouteInfo;
    .registers 6
    .param p1, "globalRouteId"    # Ljava/lang/String;

    .line 651
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 652
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1d

    .line 653
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter$RouteInfo;

    .line 654
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    iget-object v3, v2, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 655
    return-object v2

    .line 652
    .end local v2    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 658
    .end local v1    # "i":I
    :cond_1d
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist-max-o getAllPresentationDisplays()[Landroid/view/Display;
    .registers 4

    .line 407
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    const-string v1, "android.hardware.display.category.PRESENTATION"

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 408
    :catch_9
    move-exception v0

    .line 409
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "MediaRouter"

    const-string v2, "Unable to get displays."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 410
    const/4 v1, 0x0

    return-object v1
.end method

.method blacklist getStreamVolume(I)I
    .registers 7
    .param p1, "streamType"    # I

    .line 294
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mStreamVolume:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 295
    .local v0, "idx":I
    if-gez v0, :cond_22

    .line 296
    const/4 v1, 0x0

    .line 298
    .local v1, "volume":I
    :try_start_9
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v2, p1}, Landroid/media/IAudioService;->getStreamVolume(I)I

    move-result v2

    move v1, v2

    .line 299
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mStreamVolume:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_15} :catch_18
    .catchall {:try_start_9 .. :try_end_15} :catchall_16

    .line 303
    return v1

    :catchall_16
    move-exception v2

    goto :goto_21

    .line 300
    :catch_18
    move-exception v2

    .line 301
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string v3, "MediaRouter"

    const-string v4, "Error getting local stream volume"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_16

    .line 303
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_21
    return v1

    .line 306
    .end local v1    # "volume":I
    :cond_22
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mStreamVolume:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    return v1
.end method

.method blacklist handleGroupRouteSelected(Ljava/lang/String;)V
    .registers 7
    .param p1, "routeId"    # Ljava/lang/String;

    .line 426
    invoke-virtual {p0}, Landroid/media/MediaRouter$Static;->isBluetoothA2dpOn()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 427
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    goto :goto_b

    :cond_9
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    .line 428
    .local v0, "routeToSelect":Landroid/media/MediaRouter$RouteInfo;
    :goto_b
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 429
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v1, :cond_28

    .line 430
    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRouter$RouteInfo;

    .line 431
    .local v3, "route":Landroid/media/MediaRouter$RouteInfo;
    iget-object v4, v3, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 432
    move-object v0, v3

    .line 429
    .end local v3    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 435
    .end local v2    # "i":I
    :cond_28
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eq v0, v2, :cond_32

    .line 436
    iget v2, v0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    .line 438
    :cond_32
    return-void
.end method

.method greylist-max-o isBluetoothA2dpOn()Z
    .registers 2

    .line 310
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/media/MediaRouter$Static;->mIsBluetoothA2dpOn:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method greylist-max-o isPlaybackActive()Z
    .registers 3

    .line 662
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-eqz v0, :cond_11

    .line 664
    :try_start_4
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    invoke-interface {v0, v1}, Landroid/media/IMediaRouterService;->isPlaybackActive(Landroid/media/IMediaRouterClient;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    .line 665
    :catch_d
    move-exception v0

    .line 666
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 669
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o makeGlobalRoute(Landroid/media/MediaRouterClientState$RouteInfo;)Landroid/media/MediaRouter$RouteInfo;
    .registers 4
    .param p1, "globalRoute"    # Landroid/media/MediaRouterClientState$RouteInfo;

    .line 565
    new-instance v0, Landroid/media/MediaRouter$RouteInfo;

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    invoke-direct {v0, v1}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    .line 566
    .local v0, "route":Landroid/media/MediaRouter$RouteInfo;
    iget-object v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    .line 567
    iget-object v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    .line 568
    iget-object v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/CharSequence;

    .line 569
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    .line 570
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->deviceType:I

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mDeviceType:I

    .line 571
    iget-boolean v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    iput-boolean v1, v0, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    .line 572
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$RouteInfo;->setRealStatusCode(I)Z

    .line 573
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    .line 574
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    .line 575
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    .line 576
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    .line 577
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    .line 578
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    .line 579
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->updatePresentationDisplay()Z

    .line 580
    return-object v0
.end method

.method public whitelist onDisplayAdded(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 382
    invoke-direct {p0, p1}, Landroid/media/MediaRouter$Static;->updatePresentationDisplays(I)V

    .line 383
    return-void
.end method

.method public whitelist onDisplayChanged(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 387
    invoke-direct {p0, p1}, Landroid/media/MediaRouter$Static;->updatePresentationDisplays(I)V

    .line 388
    return-void
.end method

.method public whitelist onDisplayRemoved(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 392
    invoke-direct {p0, p1}, Landroid/media/MediaRouter$Static;->updatePresentationDisplays(I)V

    .line 393
    return-void
.end method

.method greylist-max-o publishClientDiscoveryRequest()V
    .registers 5

    .line 474
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-eqz v0, :cond_14

    .line 476
    :try_start_4
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    iget v2, p0, Landroid/media/MediaRouter$Static;->mDiscoveryRequestRouteTypes:I

    iget-boolean v3, p0, Landroid/media/MediaRouter$Static;->mDiscoverRequestActiveScan:Z

    invoke-interface {v0, v1, v2, v3}, Landroid/media/IMediaRouterService;->setDiscoveryRequest(Landroid/media/IMediaRouterClient;IZ)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_10

    .line 480
    goto :goto_14

    .line 478
    :catch_10
    move-exception v0

    .line 479
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 482
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    return-void
.end method

.method greylist-max-o publishClientSelectedRoute(Z)V
    .registers 5
    .param p1, "explicit"    # Z

    .line 485
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-eqz v0, :cond_1a

    .line 487
    :try_start_4
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    .line 488
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v2, :cond_11

    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    iget-object v2, v2, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    .line 487
    :goto_12
    invoke-interface {v0, v1, v2, p1}, Landroid/media/IMediaRouterService;->setSelectedRoute(Landroid/media/IMediaRouterClient;Ljava/lang/String;Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_15} :catch_16

    .line 492
    goto :goto_1a

    .line 490
    :catch_16
    move-exception v0

    .line 491
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 494
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_1a
    :goto_1a
    return-void
.end method

.method greylist-max-o rebindAsUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 447
    iget v0, p0, Landroid/media/MediaRouter$Static;->mCurrentUserId:I

    if-ne v0, p1, :cond_a

    if-ltz p1, :cond_a

    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-nez v0, :cond_40

    .line 448
    :cond_a
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-eqz v0, :cond_1d

    .line 450
    :try_start_e
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    invoke-interface {v0, v1}, Landroid/media/IMediaRouterService;->unregisterClient(Landroid/media/IMediaRouterClient;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_16

    .line 453
    goto :goto_1a

    .line 451
    :catch_16
    move-exception v0

    .line 452
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 454
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1a
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    .line 457
    :cond_1d
    iput p1, p0, Landroid/media/MediaRouter$Static;->mCurrentUserId:I

    .line 460
    :try_start_1f
    new-instance v0, Landroid/media/MediaRouter$Static$Client;

    invoke-direct {v0, p0}, Landroid/media/MediaRouter$Static$Client;-><init>(Landroid/media/MediaRouter$Static;)V

    .line 461
    .local v0, "client":Landroid/media/MediaRouter$Static$Client;
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v0, v2, p1}, Landroid/media/IMediaRouterService;->registerClientAsUser(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V

    .line 462
    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2d} :catch_2e

    .line 465
    .end local v0    # "client":Landroid/media/MediaRouter$Static$Client;
    goto :goto_36

    .line 463
    :catch_2e
    move-exception v0

    .line 464
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MediaRouter"

    const-string v2, "Unable to register media router client."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 467
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_36
    invoke-virtual {p0}, Landroid/media/MediaRouter$Static;->publishClientDiscoveryRequest()V

    .line 468
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$Static;->publishClientSelectedRoute(Z)V

    .line 469
    invoke-virtual {p0}, Landroid/media/MediaRouter$Static;->updateClientState()V

    .line 471
    :cond_40
    return-void
.end method

.method greylist-max-o requestSetVolume(Landroid/media/MediaRouter$RouteInfo;I)V
    .registers 6
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;
    .param p2, "volume"    # I

    .line 543
    iget-object v0, p1, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-eqz v0, :cond_16

    .line 545
    :try_start_8
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    iget-object v2, p1, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p2}, Landroid/media/IMediaRouterService;->requestSetVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    .line 549
    goto :goto_16

    .line 547
    :catch_12
    move-exception v0

    .line 548
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 551
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method greylist-max-o requestUpdateVolume(Landroid/media/MediaRouter$RouteInfo;I)V
    .registers 6
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;
    .param p2, "direction"    # I

    .line 554
    iget-object v0, p1, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-eqz v0, :cond_16

    .line 556
    :try_start_8
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    iget-object v2, p1, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p2}, Landroid/media/IMediaRouterService;->requestUpdateVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    .line 560
    goto :goto_16

    .line 558
    :catch_12
    move-exception v0

    .line 559
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 562
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public blacklist setRouterGroupId(Ljava/lang/String;)V
    .registers 4
    .param p1, "groupId"    # Ljava/lang/String;

    .line 396
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-eqz v0, :cond_10

    .line 398
    :try_start_4
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    invoke-interface {v0, v1, p1}, Landroid/media/IMediaRouterService;->registerClientGroupId(Landroid/media/IMediaRouterClient;Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 401
    goto :goto_10

    .line 399
    :catch_c
    move-exception v0

    .line 400
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 403
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_10
    :goto_10
    return-void
.end method

.method greylist-max-o setSelectedRoute(Landroid/media/MediaRouter$RouteInfo;Z)V
    .registers 3
    .param p1, "info"    # Landroid/media/MediaRouter$RouteInfo;
    .param p2, "explicit"    # Z

    .line 442
    iput-object p1, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 443
    invoke-virtual {p0, p2}, Landroid/media/MediaRouter$Static;->publishClientSelectedRoute(Z)V

    .line 444
    return-void
.end method

.method greylist-max-o startMonitoringRoutes(Landroid/content/Context;)V
    .registers 6
    .param p1, "appContext"    # Landroid/content/Context;

    .line 166
    new-instance v0, Landroid/media/MediaRouter$RouteInfo;

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    invoke-direct {v0, v1}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    .line 167
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    const v1, 0x1040345

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mNameResId:I

    .line 168
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    const/4 v1, 0x3

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    .line 169
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->updatePresentationDisplay()Z

    .line 170
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 171
    invoke-virtual {v0}, Landroid/media/AudioManager;->isVolumeFixed()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 172
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    const/4 v1, 0x0

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    .line 174
    :cond_2d
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    const v2, 0x1040344

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    .line 176
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v0}, Landroid/media/MediaRouter;->addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 179
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaRouter;->updateWifiDisplayStatus(Landroid/hardware/display/WifiDisplayStatus;)V

    .line 181
    new-instance v0, Landroid/media/MediaRouter$WifiDisplayStatusChangedReceiver;

    invoke-direct {v0}, Landroid/media/MediaRouter$WifiDisplayStatusChangedReceiver;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 183
    new-instance v0, Landroid/media/MediaRouter$VolumeChangeReceiver;

    invoke-direct {v0}, Landroid/media/MediaRouter$VolumeChangeReceiver;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 187
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->displayListenerPerformanceImprovements()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 189
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->delayImplicitRrRegistrationUntilRrAccessed()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 190
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    goto :goto_85

    .line 195
    :cond_7e
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 198
    :goto_85
    const/4 v0, 0x0

    .line 200
    .local v0, "newAudioRoutes":Landroid/media/AudioRoutesInfo;
    :try_start_86
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v1}, Landroid/media/IAudioService;->isBluetoothA2dpOn()Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/MediaRouter$Static;->mIsBluetoothA2dpOn:Z

    .line 201
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mAudioRoutesObserver:Landroid/media/IAudioRoutesObserver$Stub;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v1
    :try_end_96
    .catch Landroid/os/RemoteException; {:try_start_86 .. :try_end_96} :catch_98

    move-object v0, v1

    .line 203
    goto :goto_99

    .line 202
    :catch_98
    move-exception v1

    .line 204
    :goto_99
    if-eqz v0, :cond_9e

    .line 208
    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$Static;->updateAudioRoutes(Landroid/media/AudioRoutesInfo;)V

    .line 212
    :cond_9e
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/MediaRouter$Static;->rebindAsUser(I)V

    .line 216
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-nez v1, :cond_ac

    .line 217
    invoke-static {}, Landroid/media/MediaRouter;->selectDefaultRouteStatic()V

    .line 219
    :cond_ac
    return-void
.end method

.method greylist-max-o updateAudioRoutes(Landroid/media/AudioRoutesInfo;)V
    .registers 8
    .param p1, "newRoutes"    # Landroid/media/AudioRoutesInfo;

    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, "audioRoutesChanged":Z
    const/4 v1, 0x0

    .line 225
    .local v1, "forceUseDefaultRoute":Z
    iget v2, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget v3, v3, Landroid/media/AudioRoutesInfo;->mainType:I

    const/4 v4, 0x1

    if-eq v2, v3, :cond_53

    .line 226
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget v3, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    iput v3, v2, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 228
    iget v2, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3f

    iget v2, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_1d

    goto :goto_3f

    .line 231
    :cond_1d
    iget v2, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_27

    .line 232
    const v2, 0x1040346

    .local v2, "name":I
    goto :goto_42

    .line 233
    .end local v2    # "name":I
    :cond_27
    iget v2, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_31

    .line 234
    const v2, 0x1040347

    .restart local v2    # "name":I
    goto :goto_42

    .line 235
    .end local v2    # "name":I
    :cond_31
    iget v2, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_3b

    .line 236
    const v2, 0x1040349

    .restart local v2    # "name":I
    goto :goto_42

    .line 238
    .end local v2    # "name":I
    :cond_3b
    const v2, 0x1040345

    .restart local v2    # "name":I
    goto :goto_42

    .line 230
    .end local v2    # "name":I
    :cond_3f
    :goto_3f
    const v2, 0x1040348

    .line 240
    .restart local v2    # "name":I
    :goto_42
    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    iput v2, v3, Landroid/media/MediaRouter$RouteInfo;->mNameResId:I

    .line 241
    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v3}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 243
    iget v3, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/lit8 v3, v3, 0x13

    if-eqz v3, :cond_52

    .line 245
    const/4 v1, 0x1

    .line 247
    :cond_52
    const/4 v0, 0x1

    .line 250
    .end local v2    # "name":I
    :cond_53
    iget-object v2, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget-object v3, v3, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b1

    .line 251
    const/4 v1, 0x0

    .line 252
    iget-object v2, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    if-eqz v2, :cond_a4

    .line 253
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-nez v2, :cond_98

    .line 255
    new-instance v2, Landroid/media/MediaRouter$RouteInfo;

    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    invoke-direct {v2, v3}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    .line 256
    .local v2, "info":Landroid/media/MediaRouter$RouteInfo;
    iget-object v3, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    iput-object v3, v2, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    .line 257
    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    const v5, 0x10401b7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Landroid/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/CharSequence;

    .line 259
    iput v4, v2, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    .line 260
    const/4 v3, 0x3

    iput v3, v2, Landroid/media/MediaRouter$RouteInfo;->mDeviceType:I

    .line 261
    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    const v5, 0x10401b6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    .line 264
    iput-object v2, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 265
    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v3}, Landroid/media/MediaRouter;->addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 266
    .end local v2    # "info":Landroid/media/MediaRouter$RouteInfo;
    goto :goto_b0

    .line 267
    :cond_98
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    iget-object v3, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    iput-object v3, v2, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    .line 268
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v2}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_b0

    .line 270
    :cond_a4
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v2, :cond_b0

    .line 272
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 273
    .local v2, "btRoute":Landroid/media/MediaRouter$RouteInfo;
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 274
    invoke-static {v2}, Landroid/media/MediaRouter;->removeRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 276
    .end local v2    # "btRoute":Landroid/media/MediaRouter$RouteInfo;
    :cond_b0
    :goto_b0
    const/4 v0, 0x1

    .line 279
    :cond_b1
    if-eqz v0, :cond_100

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio routes updated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", a2dp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/media/MediaRouter$Static;->isBluetoothA2dpOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaRouter"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v2, :cond_ed

    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v2

    if-nez v2, :cond_ed

    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 282
    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->isBluetooth()Z

    move-result v2

    if-eqz v2, :cond_100

    .line 283
    :cond_ed
    const/4 v2, 0x0

    if-nez v1, :cond_fb

    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-nez v3, :cond_f5

    goto :goto_fb

    .line 286
    :cond_f5
    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v4, v3, v2}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    goto :goto_100

    .line 284
    :cond_fb
    :goto_fb
    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v4, v3, v2}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    .line 290
    :cond_100
    :goto_100
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget-object v3, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    iput-object v3, v2, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 291
    return-void
.end method

.method greylist-max-o updateClientState()V
    .registers 9

    .line 498
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mClientState:Landroid/media/MediaRouterClientState;

    .line 499
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-eqz v1, :cond_16

    .line 501
    :try_start_7
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    invoke-interface {v1, v2}, Landroid/media/IMediaRouterService;->getState(Landroid/media/IMediaRouterClient;)Landroid/media/MediaRouterClientState;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mClientState:Landroid/media/MediaRouterClientState;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_12

    .line 504
    goto :goto_16

    .line 502
    :catch_12
    move-exception v1

    .line 503
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 507
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mClientState:Landroid/media/MediaRouterClientState;

    if-eqz v1, :cond_1e

    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClientState:Landroid/media/MediaRouterClientState;

    iget-object v0, v0, Landroid/media/MediaRouterClientState;->routes:Ljava/util/ArrayList;

    .line 510
    .local v0, "globalRoutes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MediaRouterClientState$RouteInfo;>;"
    :cond_1e
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    .line 511
    .local v1, "globalRouteCount":I
    :goto_26
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_27
    if-ge v2, v1, :cond_45

    .line 512
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRouterClientState$RouteInfo;

    .line 513
    .local v3, "globalRoute":Landroid/media/MediaRouterClientState$RouteInfo;
    iget-object v4, v3, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroid/media/MediaRouter$Static;->findGlobalRoute(Ljava/lang/String;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v4

    .line 514
    .local v4, "route":Landroid/media/MediaRouter$RouteInfo;
    if-nez v4, :cond_3f

    .line 515
    invoke-virtual {p0, v3}, Landroid/media/MediaRouter$Static;->makeGlobalRoute(Landroid/media/MediaRouterClientState$RouteInfo;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v4

    .line 516
    invoke-static {v4}, Landroid/media/MediaRouter;->addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_42

    .line 518
    :cond_3f
    invoke-virtual {p0, v4, v3}, Landroid/media/MediaRouter$Static;->updateGlobalRoute(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouterClientState$RouteInfo;)V

    .line 511
    .end local v3    # "globalRoute":Landroid/media/MediaRouterClientState$RouteInfo;
    .end local v4    # "route":Landroid/media/MediaRouter$RouteInfo;
    :goto_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 523
    .end local v2    # "i":I
    :cond_45
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .restart local v2    # "i":I
    :goto_4b
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "i":I
    .local v3, "i":I
    if-lez v2, :cond_83

    .line 524
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter$RouteInfo;

    .line 525
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    iget-object v4, v2, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    .line 526
    .local v4, "globalRouteId":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v5

    if-nez v5, :cond_81

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->isBluetooth()Z

    move-result v5

    if-eqz v5, :cond_66

    .line 527
    goto :goto_81

    .line 529
    :cond_66
    if-eqz v4, :cond_80

    .line 530
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_69
    if-ge v5, v1, :cond_7d

    .line 531
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/MediaRouterClientState$RouteInfo;

    .line 532
    .local v6, "globalRoute":Landroid/media/MediaRouterClientState$RouteInfo;
    iget-object v7, v6, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7a

    .line 533
    goto :goto_81

    .line 530
    .end local v6    # "globalRoute":Landroid/media/MediaRouterClientState$RouteInfo;
    :cond_7a
    add-int/lit8 v5, v5, 0x1

    goto :goto_69

    .line 537
    .end local v5    # "j":I
    :cond_7d
    invoke-static {v2}, Landroid/media/MediaRouter;->removeRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 539
    .end local v2    # "route":Landroid/media/MediaRouter$RouteInfo;
    .end local v4    # "globalRouteId":Ljava/lang/String;
    :cond_80
    nop

    .line 523
    :cond_81
    :goto_81
    move v2, v3

    goto :goto_4b

    .line 540
    .end local v3    # "i":I
    :cond_83
    return-void
.end method

.method greylist-max-o updateDiscoveryRequest()V
    .registers 11

    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, "routeTypes":I
    const/4 v1, 0x0

    .line 317
    .local v1, "passiveRouteTypes":I
    const/4 v2, 0x0

    .line 318
    .local v2, "activeScan":Z
    const/4 v3, 0x0

    .line 319
    .local v3, "activeScanWifiDisplay":Z
    iget-object v4, p0, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    .line 320
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_b
    const/4 v6, 0x4

    const/4 v7, 0x1

    if-ge v5, v4, :cond_3d

    .line 321
    iget-object v8, p0, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/MediaRouter$CallbackInfo;

    .line 322
    .local v8, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    iget v9, v8, Landroid/media/MediaRouter$CallbackInfo;->flags:I

    and-int/lit8 v9, v9, 0x5

    if-eqz v9, :cond_21

    .line 325
    iget v9, v8, Landroid/media/MediaRouter$CallbackInfo;->type:I

    or-int/2addr v0, v9

    goto :goto_2e

    .line 326
    :cond_21
    iget v9, v8, Landroid/media/MediaRouter$CallbackInfo;->flags:I

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_2b

    .line 328
    iget v9, v8, Landroid/media/MediaRouter$CallbackInfo;->type:I

    or-int/2addr v1, v9

    goto :goto_2e

    .line 333
    :cond_2b
    iget v9, v8, Landroid/media/MediaRouter$CallbackInfo;->type:I

    or-int/2addr v0, v9

    .line 335
    :goto_2e
    iget v9, v8, Landroid/media/MediaRouter$CallbackInfo;->flags:I

    and-int/2addr v7, v9

    if-eqz v7, :cond_3a

    .line 336
    const/4 v2, 0x1

    .line 337
    iget v7, v8, Landroid/media/MediaRouter$CallbackInfo;->type:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_3a

    .line 338
    const/4 v3, 0x1

    .line 320
    .end local v8    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    :cond_3a
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 342
    .end local v5    # "i":I
    :cond_3d
    if-nez v0, :cond_41

    if-eqz v2, :cond_42

    .line 346
    :cond_41
    or-int/2addr v0, v1

    .line 351
    :cond_42
    iget-boolean v5, p0, Landroid/media/MediaRouter$Static;->mCanConfigureWifiDisplays:Z

    if-eqz v5, :cond_6d

    .line 352
    iget-object v5, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v5, :cond_53

    iget-object v5, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 353
    invoke-virtual {v5, v6}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 356
    const/4 v3, 0x0

    .line 358
    :cond_53
    if-eqz v3, :cond_61

    .line 359
    iget-boolean v5, p0, Landroid/media/MediaRouter$Static;->mActivelyScanningWifiDisplays:Z

    if-nez v5, :cond_6d

    .line 360
    iput-boolean v7, p0, Landroid/media/MediaRouter$Static;->mActivelyScanningWifiDisplays:Z

    .line 361
    iget-object v5, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v5}, Landroid/hardware/display/DisplayManager;->startWifiDisplayScan()V

    goto :goto_6d

    .line 364
    :cond_61
    iget-boolean v5, p0, Landroid/media/MediaRouter$Static;->mActivelyScanningWifiDisplays:Z

    if-eqz v5, :cond_6d

    .line 365
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/media/MediaRouter$Static;->mActivelyScanningWifiDisplays:Z

    .line 366
    iget-object v5, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v5}, Landroid/hardware/display/DisplayManager;->stopWifiDisplayScan()V

    .line 372
    :cond_6d
    :goto_6d
    iget v5, p0, Landroid/media/MediaRouter$Static;->mDiscoveryRequestRouteTypes:I

    if-ne v0, v5, :cond_75

    iget-boolean v5, p0, Landroid/media/MediaRouter$Static;->mDiscoverRequestActiveScan:Z

    if-eq v2, v5, :cond_7c

    .line 374
    :cond_75
    iput v0, p0, Landroid/media/MediaRouter$Static;->mDiscoveryRequestRouteTypes:I

    .line 375
    iput-boolean v2, p0, Landroid/media/MediaRouter$Static;->mDiscoverRequestActiveScan:Z

    .line 376
    invoke-virtual {p0}, Landroid/media/MediaRouter$Static;->publishClientDiscoveryRequest()V

    .line 378
    :cond_7c
    return-void
.end method

.method greylist-max-o updateGlobalRoute(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouterClientState$RouteInfo;)V
    .registers 9
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;
    .param p2, "globalRoute"    # Landroid/media/MediaRouterClientState$RouteInfo;

    .line 584
    const/4 v0, 0x0

    .line 585
    .local v0, "changed":Z
    const/4 v1, 0x0

    .line 586
    .local v1, "volumeChanged":Z
    const/4 v2, 0x0

    .line 588
    .local v2, "presentationDisplayChanged":Z
    iget-object v3, p1, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    iget-object v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 589
    iget-object v3, p2, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    iput-object v3, p1, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    .line 590
    const/4 v0, 0x1

    .line 592
    :cond_12
    iget-object v3, p1, Landroid/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/CharSequence;

    iget-object v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 593
    iget-object v3, p2, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    iput-object v3, p1, Landroid/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/CharSequence;

    .line 594
    const/4 v0, 0x1

    .line 596
    :cond_21
    iget v3, p1, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    .line 597
    .local v3, "oldSupportedTypes":I
    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    if-eq v3, v4, :cond_2c

    .line 598
    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    iput v4, p1, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    .line 599
    const/4 v0, 0x1

    .line 601
    :cond_2c
    iget-boolean v4, p1, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    iget-boolean v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    if-eq v4, v5, :cond_37

    .line 602
    iget-boolean v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    iput-boolean v4, p1, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    .line 603
    const/4 v0, 0x1

    .line 605
    :cond_37
    invoke-static {p1}, Landroid/media/MediaRouter$RouteInfo;->-$$Nest$fgetmRealStatusCode(Landroid/media/MediaRouter$RouteInfo;)I

    move-result v4

    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    if-eq v4, v5, :cond_45

    .line 606
    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    invoke-virtual {p1, v4}, Landroid/media/MediaRouter$RouteInfo;->setRealStatusCode(I)Z

    .line 607
    const/4 v0, 0x1

    .line 609
    :cond_45
    iget v4, p1, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    if-eq v4, v5, :cond_50

    .line 610
    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    iput v4, p1, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    .line 611
    const/4 v0, 0x1

    .line 613
    :cond_50
    iget v4, p1, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    if-eq v4, v5, :cond_5b

    .line 614
    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    iput v4, p1, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    .line 615
    const/4 v0, 0x1

    .line 617
    :cond_5b
    iget v4, p1, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    if-eq v4, v5, :cond_67

    .line 618
    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    iput v4, p1, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    .line 619
    const/4 v0, 0x1

    .line 620
    const/4 v1, 0x1

    .line 622
    :cond_67
    iget v4, p1, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    if-eq v4, v5, :cond_73

    .line 623
    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    iput v4, p1, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    .line 624
    const/4 v0, 0x1

    .line 625
    const/4 v1, 0x1

    .line 627
    :cond_73
    iget v4, p1, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    if-eq v4, v5, :cond_7f

    .line 628
    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    iput v4, p1, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    .line 629
    const/4 v0, 0x1

    .line 630
    const/4 v1, 0x1

    .line 632
    :cond_7f
    iget v4, p1, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    if-eq v4, v5, :cond_8e

    .line 633
    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    iput v4, p1, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    .line 634
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->updatePresentationDisplay()Z

    .line 635
    const/4 v0, 0x1

    .line 636
    const/4 v2, 0x1

    .line 639
    :cond_8e
    if-eqz v0, :cond_93

    .line 640
    invoke-static {p1, v3}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;I)V

    .line 642
    :cond_93
    if-eqz v1, :cond_98

    .line 643
    invoke-static {p1}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 645
    :cond_98
    if-eqz v2, :cond_9d

    .line 646
    invoke-static {p1}, Landroid/media/MediaRouter;->dispatchRoutePresentationDisplayChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 648
    :cond_9d
    return-void
.end method
