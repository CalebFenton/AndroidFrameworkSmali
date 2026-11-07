.class public Landroid/media/MediaRouter$UserRouteInfo;
.super Landroid/media/MediaRouter$RouteInfo;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserRouteInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;
    }
.end annotation


# instance fields
.field greylist-max-o mRcc:Landroid/media/RemoteControlClient;

.field greylist-max-o mSvp:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;


# direct methods
.method constructor greylist-max-o <init>(Landroid/media/MediaRouter$RouteCategory;)V
    .registers 3
    .param p1, "category"    # Landroid/media/MediaRouter$RouteCategory;

    .line 2311
    invoke-direct {p0, p1}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    .line 2312
    const/high16 v0, 0x800000

    iput v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSupportedTypes:I

    .line 2313
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackType:I

    .line 2314
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    .line 2315
    return-void
.end method

.method private greylist-max-o configureSessionVolume()V
    .registers 6

    .line 2517
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    const-string v1, "MediaRouter"

    if-nez v0, :cond_27

    .line 2518
    invoke-static {}, Landroid/media/MediaRouter;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Rcc to configure volume for route "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/MediaRouter$UserRouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    :cond_26
    return-void

    .line 2523
    :cond_27
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    invoke-virtual {v0}, Landroid/media/RemoteControlClient;->getMediaSession()Landroid/media/session/MediaSession;

    move-result-object v0

    .line 2524
    .local v0, "session":Landroid/media/session/MediaSession;
    if-nez v0, :cond_3b

    .line 2525
    invoke-static {}, Landroid/media/MediaRouter;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 2526
    const-string v2, "Rcc has no session to configure volume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    :cond_3a
    return-void

    .line 2530
    :cond_3b
    iget v1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_70

    .line 2531
    const/4 v1, 0x0

    .line 2532
    .local v1, "volumeControl":I
    iget v2, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    packed-switch v2, :pswitch_data_86

    goto :goto_49

    .line 2534
    :pswitch_47
    const/4 v1, 0x2

    .line 2535
    nop

    .line 2541
    :goto_49
    iget-object v2, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSvp:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    if-eqz v2, :cond_5f

    iget-object v2, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSvp:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    invoke-virtual {v2}, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;->getVolumeControl()I

    move-result v2

    if-ne v2, v1, :cond_5f

    iget-object v2, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSvp:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    .line 2542
    invoke-virtual {v2}, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;->getMaxVolume()I

    move-result v2

    iget v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeMax:I

    if-eq v2, v3, :cond_6f

    .line 2543
    :cond_5f
    new-instance v2, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    iget v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeMax:I

    iget v4, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolume:I

    invoke-direct {v2, p0, v1, v3, v4}, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;-><init>(Landroid/media/MediaRouter$UserRouteInfo;III)V

    iput-object v2, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSvp:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    .line 2544
    iget-object v2, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSvp:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    invoke-virtual {v0, v2}, Landroid/media/session/MediaSession;->setPlaybackToRemote(Landroid/media/VolumeProvider;)V

    .line 2546
    .end local v1    # "volumeControl":I
    :cond_6f
    goto :goto_84

    .line 2548
    :cond_70
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 2549
    .local v1, "bob":Landroid/media/AudioAttributes$Builder;
    iget v2, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackStream:I

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 2550
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/session/MediaSession;->setPlaybackToLocal(Landroid/media/AudioAttributes;)V

    .line 2551
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSvp:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    .line 2553
    .end local v1    # "bob":Landroid/media/AudioAttributes$Builder;
    :goto_84
    return-void

    nop

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_47
    .end packed-switch
.end method

.method private greylist-max-o updatePlaybackInfoOnRcc()V
    .registers 1

    .line 2513
    invoke-direct {p0}, Landroid/media/MediaRouter$UserRouteInfo;->configureSessionVolume()V

    .line 2514
    return-void
.end method


# virtual methods
.method public whitelist getRemoteControlClient()Landroid/media/RemoteControlClient;
    .registers 2

    .line 2390
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    return-object v0
.end method

.method public whitelist requestSetVolume(I)V
    .registers 4
    .param p1, "volume"    # I

    .line 2468
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 2469
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    if-nez v0, :cond_11

    .line 2470
    const-string v0, "MediaRouter"

    const-string v1, "Cannot requestSetVolume on user route - no volume callback set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    return-void

    .line 2473
    :cond_11
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    iget-object v0, v0, Landroid/media/MediaRouter$VolumeCallbackInfo;->vcb:Landroid/media/MediaRouter$VolumeCallback;

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaRouter$VolumeCallback;->onVolumeSetRequest(Landroid/media/MediaRouter$RouteInfo;I)V

    .line 2475
    :cond_18
    return-void
.end method

.method public whitelist requestUpdateVolume(I)V
    .registers 4
    .param p1, "direction"    # I

    .line 2479
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 2480
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    if-nez v0, :cond_11

    .line 2481
    const-string v0, "MediaRouter"

    const-string v1, "Cannot requestChangeVolume on user route - no volumec callback set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    return-void

    .line 2484
    :cond_11
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    iget-object v0, v0, Landroid/media/MediaRouter$VolumeCallbackInfo;->vcb:Landroid/media/MediaRouter$VolumeCallback;

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaRouter$VolumeCallback;->onVolumeUpdateRequest(Landroid/media/MediaRouter$RouteInfo;I)V

    .line 2486
    :cond_18
    return-void
.end method

.method public whitelist setDescription(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 2352
    iput-object p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mDescription:Ljava/lang/CharSequence;

    .line 2353
    invoke-virtual {p0}, Landroid/media/MediaRouter$UserRouteInfo;->routeUpdated()V

    .line 2354
    return-void
.end method

.method public whitelist setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 2400
    iput-object p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 2401
    return-void
.end method

.method public whitelist setIconResource(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 2410
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$UserRouteInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2411
    return-void
.end method

.method public whitelist setName(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 2337
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mNameResId:I

    .line 2338
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mName:Ljava/lang/CharSequence;

    .line 2339
    invoke-virtual {p0}, Landroid/media/MediaRouter$UserRouteInfo;->routeUpdated()V

    .line 2340
    return-void
.end method

.method public whitelist setName(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 2322
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mNameResId:I

    .line 2323
    iput-object p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mName:Ljava/lang/CharSequence;

    .line 2324
    invoke-virtual {p0}, Landroid/media/MediaRouter$UserRouteInfo;->routeUpdated()V

    .line 2325
    return-void
.end method

.method public whitelist setPlaybackStream(I)V
    .registers 3
    .param p1, "stream"    # I

    .line 2506
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackStream:I

    if-eq v0, p1, :cond_9

    .line 2507
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackStream:I

    .line 2508
    invoke-direct {p0}, Landroid/media/MediaRouter$UserRouteInfo;->configureSessionVolume()V

    .line 2510
    :cond_9
    return-void
.end method

.method public whitelist setPlaybackType(I)V
    .registers 3
    .param p1, "type"    # I

    .line 2428
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackType:I

    if-eq v0, p1, :cond_9

    .line 2429
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackType:I

    .line 2430
    invoke-direct {p0}, Landroid/media/MediaRouter$UserRouteInfo;->configureSessionVolume()V

    .line 2432
    :cond_9
    return-void
.end method

.method public whitelist setRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .registers 2
    .param p1, "rcc"    # Landroid/media/RemoteControlClient;

    .line 2379
    iput-object p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    .line 2380
    invoke-direct {p0}, Landroid/media/MediaRouter$UserRouteInfo;->updatePlaybackInfoOnRcc()V

    .line 2381
    return-void
.end method

.method public whitelist setStatus(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "status"    # Ljava/lang/CharSequence;

    .line 2362
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setStatusInt(Ljava/lang/CharSequence;)V

    .line 2363
    return-void
.end method

.method public whitelist setVolume(I)V
    .registers 4
    .param p1, "volume"    # I

    .line 2453
    invoke-virtual {p0}, Landroid/media/MediaRouter$UserRouteInfo;->getVolumeMax()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2454
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolume:I

    if-eq v0, p1, :cond_2a

    .line 2455
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolume:I

    .line 2456
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSvp:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    if-eqz v0, :cond_1e

    .line 2457
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSvp:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    iget v1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolume:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;->setCurrentVolume(I)V

    .line 2459
    :cond_1e
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 2460
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    if-eqz v0, :cond_2a

    .line 2461
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    invoke-virtual {v0, p0}, Landroid/media/MediaRouter$RouteGroup;->memberVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 2464
    :cond_2a
    return-void
.end method

.method public whitelist setVolumeCallback(Landroid/media/MediaRouter$VolumeCallback;)V
    .registers 3
    .param p1, "vcb"    # Landroid/media/MediaRouter$VolumeCallback;

    .line 2418
    new-instance v0, Landroid/media/MediaRouter$VolumeCallbackInfo;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaRouter$VolumeCallbackInfo;-><init>(Landroid/media/MediaRouter$VolumeCallback;Landroid/media/MediaRouter$RouteInfo;)V

    iput-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    .line 2419
    return-void
.end method

.method public whitelist setVolumeHandling(I)V
    .registers 3
    .param p1, "volumeHandling"    # I

    .line 2441
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    if-eq v0, p1, :cond_9

    .line 2442
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    .line 2443
    invoke-direct {p0}, Landroid/media/MediaRouter$UserRouteInfo;->configureSessionVolume()V

    .line 2445
    :cond_9
    return-void
.end method

.method public whitelist setVolumeMax(I)V
    .registers 3
    .param p1, "volumeMax"    # I

    .line 2495
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeMax:I

    if-eq v0, p1, :cond_9

    .line 2496
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeMax:I

    .line 2497
    invoke-direct {p0}, Landroid/media/MediaRouter$UserRouteInfo;->configureSessionVolume()V

    .line 2499
    :cond_9
    return-void
.end method
