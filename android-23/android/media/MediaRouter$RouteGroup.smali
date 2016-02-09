.class public Landroid/media/MediaRouter$RouteGroup;
.super Landroid/media/MediaRouter$RouteInfo;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RouteGroup"
.end annotation


# instance fields
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

.field private mUpdateName:Z


# direct methods
.method constructor <init>(Landroid/media/MediaRouter$RouteCategory;)V
    .locals 1
    .param p1, "category"    # Landroid/media/MediaRouter$RouteCategory;

    #@0
    .prologue
    .line 2279
    invoke-direct {p0, p1}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    #@3
    .line 2275
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    #@a
    .line 2280
    iput-object p0, p0, Landroid/media/MediaRouter$RouteGroup;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    #@c
    .line 2281
    const/4 v0, 0x0

    #@d
    iput v0, p0, Landroid/media/MediaRouter$RouteGroup;->mVolumeHandling:I

    #@f
    .line 2278
    return-void
.end method


# virtual methods
.method public addRoute(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 4
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;

    #@0
    .prologue
    .line 2296
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getGroup()Landroid/media/MediaRouter$RouteGroup;

    #@3
    move-result-object v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 2297
    new-instance v1, Ljava/lang/IllegalStateException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Route "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    const-string/jumbo v3, " is already part of a group."

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1

    #@27
    .line 2299
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    #@2a
    move-result-object v1

    #@2b
    iget-object v2, p0, Landroid/media/MediaRouter$RouteGroup;->mCategory:Landroid/media/MediaRouter$RouteCategory;

    #@2d
    if-eq v1, v2, :cond_1

    #@2f
    .line 2300
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@31
    .line 2301
    new-instance v2, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v3, "Route cannot be added to a group with a different category. (Route category="

    #@39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    .line 2302
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    #@40
    move-result-object v3

    #@41
    .line 2301
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    .line 2303
    const-string/jumbo v3, " group category="

    #@48
    .line 2301
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    .line 2303
    iget-object v3, p0, Landroid/media/MediaRouter$RouteGroup;->mCategory:Landroid/media/MediaRouter$RouteCategory;

    #@4e
    .line 2301
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v2

    #@52
    .line 2303
    const-string/jumbo v3, ")"

    #@55
    .line 2301
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v2

    #@59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v2

    #@5d
    .line 2300
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@60
    throw v1

    #@61
    .line 2305
    :cond_1
    iget-object v1, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    #@63
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@66
    move-result v0

    #@67
    .line 2306
    .local v0, "at":I
    iget-object v1, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    #@69
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6c
    .line 2307
    iput-object p0, p1, Landroid/media/MediaRouter$RouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    #@6e
    .line 2308
    const/4 v1, 0x1

    #@6f
    iput-boolean v1, p0, Landroid/media/MediaRouter$RouteGroup;->mUpdateName:Z

    #@71
    .line 2309
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->updateVolume()V

    #@74
    .line 2310
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->routeUpdated()V

    #@77
    .line 2311
    invoke-static {p1, p0, v0}, Landroid/media/MediaRouter;->dispatchRouteGrouped(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V

    #@7a
    .line 2295
    return-void
.end method

.method public addRoute(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 3
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;
    .param p2, "insertAt"    # I

    #@0
    .prologue
    .line 2321
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getGroup()Landroid/media/MediaRouter$RouteGroup;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2322
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Route "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, " is already part of a group."

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 2324
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    #@2a
    move-result-object v0

    #@2b
    iget-object v1, p0, Landroid/media/MediaRouter$RouteGroup;->mCategory:Landroid/media/MediaRouter$RouteCategory;

    #@2d
    if-eq v0, v1, :cond_1

    #@2f
    .line 2325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@31
    .line 2326
    new-instance v1, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v2, "Route cannot be added to a group with a different category. (Route category="

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    .line 2327
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    #@40
    move-result-object v2

    #@41
    .line 2326
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    .line 2328
    const-string/jumbo v2, " group category="

    #@48
    .line 2326
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    .line 2328
    iget-object v2, p0, Landroid/media/MediaRouter$RouteGroup;->mCategory:Landroid/media/MediaRouter$RouteCategory;

    #@4e
    .line 2326
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v1

    #@52
    .line 2328
    const-string/jumbo v2, ")"

    #@55
    .line 2326
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v1

    #@5d
    .line 2325
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@60
    throw v0

    #@61
    .line 2330
    :cond_1
    iget-object v0, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    #@63
    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@66
    .line 2331
    iput-object p0, p1, Landroid/media/MediaRouter$RouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    #@68
    .line 2332
    const/4 v0, 0x1

    #@69
    iput-boolean v0, p0, Landroid/media/MediaRouter$RouteGroup;->mUpdateName:Z

    #@6b
    .line 2333
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->updateVolume()V

    #@6e
    .line 2334
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->routeUpdated()V

    #@71
    .line 2335
    invoke-static {p1, p0, p2}, Landroid/media/MediaRouter;->dispatchRouteGrouped(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V

    #@74
    .line 2320
    return-void
.end method

.method getName(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 2286
    iget-boolean v0, p0, Landroid/media/MediaRouter$RouteGroup;->mUpdateName:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->updateName()V

    #@7
    .line 2287
    :cond_0
    invoke-super {p0, p1}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 2384
    iget-object v0, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    #@8
    return-object v0
.end method

.method public getRouteCount()I
    .locals 1

    #@0
    .prologue
    .line 2374
    iget-object v0, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method memberNameChanged(Landroid/media/MediaRouter$RouteInfo;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "info"    # Landroid/media/MediaRouter$RouteInfo;
    .param p2, "name"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2451
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/media/MediaRouter$RouteGroup;->mUpdateName:Z

    #@3
    .line 2452
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->routeUpdated()V

    #@6
    .line 2450
    return-void
.end method

.method memberStatusChanged(Landroid/media/MediaRouter$RouteInfo;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "info"    # Landroid/media/MediaRouter$RouteInfo;
    .param p2, "status"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2456
    invoke-virtual {p0, p2}, Landroid/media/MediaRouter$RouteGroup;->setStatusInt(Ljava/lang/CharSequence;)V

    #@3
    .line 2455
    return-void
.end method

.method memberVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/media/MediaRouter$RouteInfo;

    #@0
    .prologue
    .line 2460
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->updateVolume()V

    #@3
    .line 2459
    return-void
.end method

.method public removeRoute(I)V
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 2362
    iget-object v1, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    #@8
    .line 2363
    .local v0, "route":Landroid/media/MediaRouter$RouteInfo;
    const/4 v1, 0x0

    #@9
    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    #@b
    .line 2364
    const/4 v1, 0x1

    #@c
    iput-boolean v1, p0, Landroid/media/MediaRouter$RouteGroup;->mUpdateName:Z

    #@e
    .line 2365
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->updateVolume()V

    #@11
    .line 2366
    invoke-static {v0, p0}, Landroid/media/MediaRouter;->dispatchRouteUngrouped(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V

    #@14
    .line 2367
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->routeUpdated()V

    #@17
    .line 2361
    return-void
.end method

.method public removeRoute(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 3
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;

    #@0
    .prologue
    .line 2344
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getGroup()Landroid/media/MediaRouter$RouteGroup;

    #@3
    move-result-object v0

    #@4
    if-eq v0, p0, :cond_0

    #@6
    .line 2345
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Route "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    .line 2346
    const-string/jumbo v2, " is not a member of this group."

    #@1b
    .line 2345
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 2348
    :cond_0
    iget-object v0, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@2c
    .line 2349
    const/4 v0, 0x0

    #@2d
    iput-object v0, p1, Landroid/media/MediaRouter$RouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    #@2f
    .line 2350
    const/4 v0, 0x1

    #@30
    iput-boolean v0, p0, Landroid/media/MediaRouter$RouteGroup;->mUpdateName:Z

    #@32
    .line 2351
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->updateVolume()V

    #@35
    .line 2352
    invoke-static {p1, p0}, Landroid/media/MediaRouter;->dispatchRouteUngrouped(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V

    #@38
    .line 2353
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->routeUpdated()V

    #@3b
    .line 2343
    return-void
.end method

.method public requestSetVolume(I)V
    .locals 8
    .param p1, "volume"    # I

    #@0
    .prologue
    .line 2409
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->getVolumeMax()I

    #@3
    move-result v1

    #@4
    .line 2410
    .local v1, "maxVol":I
    if-nez v1, :cond_0

    #@6
    .line 2411
    return-void

    #@7
    .line 2414
    :cond_0
    int-to-float v6, p1

    #@8
    int-to-float v7, v1

    #@9
    div-float v5, v6, v7

    #@b
    .line 2415
    .local v5, "scaledVolume":F
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->getRouteCount()I

    #@e
    move-result v3

    #@f
    .line 2416
    .local v3, "routeCount":I
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    #@12
    .line 2417
    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$RouteGroup;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    #@15
    move-result-object v2

    #@16
    .line 2418
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getVolumeMax()I

    #@19
    move-result v6

    #@1a
    int-to-float v6, v6

    #@1b
    mul-float/2addr v6, v5

    #@1c
    float-to-int v4, v6

    #@1d
    .line 2419
    .local v4, "routeVol":I
    invoke-virtual {v2, v4}, Landroid/media/MediaRouter$RouteInfo;->requestSetVolume(I)V

    #@20
    .line 2416
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 2421
    .end local v2    # "route":Landroid/media/MediaRouter$RouteInfo;
    .end local v4    # "routeVol":I
    :cond_1
    iget v6, p0, Landroid/media/MediaRouter$RouteGroup;->mVolume:I

    #@25
    if-eq p1, v6, :cond_2

    #@27
    .line 2422
    iput p1, p0, Landroid/media/MediaRouter$RouteGroup;->mVolume:I

    #@29
    .line 2423
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    #@2c
    .line 2408
    :cond_2
    return-void
.end method

.method public requestUpdateVolume(I)V
    .locals 7
    .param p1, "direction"    # I

    #@0
    .prologue
    .line 2429
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->getVolumeMax()I

    #@3
    move-result v1

    #@4
    .line 2430
    .local v1, "maxVol":I
    if-nez v1, :cond_0

    #@6
    .line 2431
    return-void

    #@7
    .line 2434
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->getRouteCount()I

    #@a
    move-result v3

    #@b
    .line 2435
    .local v3, "routeCount":I
    const/4 v5, 0x0

    #@c
    .line 2436
    .local v5, "volume":I
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    #@f
    .line 2437
    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$RouteGroup;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    #@12
    move-result-object v2

    #@13
    .line 2438
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v2, p1}, Landroid/media/MediaRouter$RouteInfo;->requestUpdateVolume(I)V

    #@16
    .line 2439
    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    #@19
    move-result v4

    #@1a
    .line 2440
    .local v4, "routeVol":I
    if-le v4, v5, :cond_1

    #@1c
    .line 2441
    move v5, v4

    #@1d
    .line 2436
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 2444
    .end local v2    # "route":Landroid/media/MediaRouter$RouteInfo;
    .end local v4    # "routeVol":I
    :cond_2
    iget v6, p0, Landroid/media/MediaRouter$RouteGroup;->mVolume:I

    #@22
    if-eq v5, v6, :cond_3

    #@24
    .line 2445
    iput v5, p0, Landroid/media/MediaRouter$RouteGroup;->mVolume:I

    #@26
    .line 2446
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    #@29
    .line 2428
    :cond_3
    return-void
.end method

.method routeUpdated()V
    .locals 11

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 2481
    const/4 v7, 0x0

    #@3
    .line 2482
    .local v7, "types":I
    iget-object v8, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v0

    #@9
    .line 2483
    .local v0, "count":I
    if-nez v0, :cond_0

    #@b
    .line 2485
    invoke-static {p0}, Landroid/media/MediaRouter;->removeRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    #@e
    .line 2486
    return-void

    #@f
    .line 2489
    :cond_0
    const/4 v4, 0x0

    #@10
    .line 2490
    .local v4, "maxVolume":I
    const/4 v3, 0x1

    #@11
    .line 2491
    .local v3, "isLocal":Z
    const/4 v2, 0x1

    #@12
    .line 2492
    .local v2, "isFixedVolume":Z
    const/4 v1, 0x0

    #@13
    .end local v2    # "isFixedVolume":Z
    .end local v3    # "isLocal":Z
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    #@15
    .line 2493
    iget-object v8, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v5

    #@1b
    check-cast v5, Landroid/media/MediaRouter$RouteInfo;

    #@1d
    .line 2494
    .local v5, "route":Landroid/media/MediaRouter$RouteInfo;
    iget v8, v5, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    #@1f
    or-int/2addr v7, v8

    #@20
    .line 2495
    invoke-virtual {v5}, Landroid/media/MediaRouter$RouteInfo;->getVolumeMax()I

    #@23
    move-result v6

    #@24
    .line 2496
    .local v6, "routeMaxVolume":I
    if-le v6, v4, :cond_1

    #@26
    .line 2497
    move v4, v6

    #@27
    .line 2499
    :cond_1
    invoke-virtual {v5}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackType()I

    #@2a
    move-result v8

    #@2b
    if-nez v8, :cond_2

    #@2d
    move v8, v9

    #@2e
    :goto_1
    and-int/2addr v3, v8

    #@2f
    .line 2500
    .local v3, "isLocal":Z
    invoke-virtual {v5}, Landroid/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    #@32
    move-result v8

    #@33
    if-nez v8, :cond_3

    #@35
    move v8, v9

    #@36
    :goto_2
    and-int/2addr v2, v8

    #@37
    .line 2492
    .local v2, "isFixedVolume":Z
    add-int/lit8 v1, v1, 0x1

    #@39
    goto :goto_0

    #@3a
    .end local v2    # "isFixedVolume":Z
    .end local v3    # "isLocal":Z
    :cond_2
    move v8, v10

    #@3b
    .line 2499
    goto :goto_1

    #@3c
    .restart local v3    # "isLocal":Z
    :cond_3
    move v8, v10

    #@3d
    .line 2500
    goto :goto_2

    #@3e
    .line 2502
    .end local v3    # "isLocal":Z
    .end local v5    # "route":Landroid/media/MediaRouter$RouteInfo;
    .end local v6    # "routeMaxVolume":I
    :cond_4
    if-eqz v3, :cond_5

    #@40
    move v8, v10

    #@41
    :goto_3
    iput v8, p0, Landroid/media/MediaRouter$RouteGroup;->mPlaybackType:I

    #@43
    .line 2503
    if-eqz v2, :cond_6

    #@45
    move v8, v10

    #@46
    :goto_4
    iput v8, p0, Landroid/media/MediaRouter$RouteGroup;->mVolumeHandling:I

    #@48
    .line 2504
    iput v7, p0, Landroid/media/MediaRouter$RouteGroup;->mSupportedTypes:I

    #@4a
    .line 2505
    iput v4, p0, Landroid/media/MediaRouter$RouteGroup;->mVolumeMax:I

    #@4c
    .line 2506
    if-ne v0, v9, :cond_7

    #@4e
    iget-object v8, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    #@50
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@53
    move-result-object v8

    #@54
    check-cast v8, Landroid/media/MediaRouter$RouteInfo;

    #@56
    invoke-virtual {v8}, Landroid/media/MediaRouter$RouteInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    #@59
    move-result-object v8

    #@5a
    :goto_5
    iput-object v8, p0, Landroid/media/MediaRouter$RouteGroup;->mIcon:Landroid/graphics/drawable/Drawable;

    #@5c
    .line 2507
    invoke-super {p0}, Landroid/media/MediaRouter$RouteInfo;->routeUpdated()V

    #@5f
    .line 2480
    return-void

    #@60
    :cond_5
    move v8, v9

    #@61
    .line 2502
    goto :goto_3

    #@62
    :cond_6
    move v8, v9

    #@63
    .line 2503
    goto :goto_4

    #@64
    .line 2506
    :cond_7
    const/4 v8, 0x0

    #@65
    goto :goto_5
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 2394
    iput-object p1, p0, Landroid/media/MediaRouter$RouteGroup;->mIcon:Landroid/graphics/drawable/Drawable;

    #@2
    .line 2393
    return-void
.end method

.method public setIconResource(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 2404
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@2
    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$RouteGroup;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    #@b
    .line 2403
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 2525
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-super {p0}, Landroid/media/MediaRouter$RouteInfo;->toString()Ljava/lang/String;

    #@5
    move-result-object v3

    #@6
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@9
    .line 2526
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@e
    .line 2527
    iget-object v3, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@13
    move-result v0

    #@14
    .line 2528
    .local v0, "count":I
    const/4 v1, 0x0

    #@15
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@17
    .line 2529
    if-lez v1, :cond_0

    #@19
    const-string/jumbo v3, ", "

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 2530
    :cond_0
    iget-object v3, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    .line 2528
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 2532
    :cond_1
    const/16 v3, 0x5d

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@30
    .line 2533
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    return-object v3
.end method

.method updateName()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2511
    new-instance v3, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 2512
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v0

    #@c
    .line 2513
    .local v0, "count":I
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@f
    .line 2514
    iget-object v4, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Landroid/media/MediaRouter$RouteInfo;

    #@17
    .line 2516
    .local v2, "info":Landroid/media/MediaRouter$RouteInfo;
    if-lez v1, :cond_0

    #@19
    const-string/jumbo v4, ", "

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 2517
    :cond_0
    iget-object v4, v2, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@24
    .line 2513
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 2519
    .end local v2    # "info":Landroid/media/MediaRouter$RouteInfo;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    iput-object v4, p0, Landroid/media/MediaRouter$RouteGroup;->mName:Ljava/lang/CharSequence;

    #@2d
    .line 2520
    iput-boolean v5, p0, Landroid/media/MediaRouter$RouteGroup;->mUpdateName:Z

    #@2f
    .line 2510
    return-void
.end method

.method updateVolume()V
    .locals 5

    #@0
    .prologue
    .line 2465
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->getRouteCount()I

    #@3
    move-result v1

    #@4
    .line 2466
    .local v1, "routeCount":I
    const/4 v3, 0x0

    #@5
    .line 2467
    .local v3, "volume":I
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@8
    .line 2468
    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$RouteGroup;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {v4}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    #@f
    move-result v2

    #@10
    .line 2469
    .local v2, "routeVol":I
    if-le v2, v3, :cond_0

    #@12
    .line 2470
    move v3, v2

    #@13
    .line 2467
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 2473
    .end local v2    # "routeVol":I
    :cond_1
    iget v4, p0, Landroid/media/MediaRouter$RouteGroup;->mVolume:I

    #@18
    if-eq v3, v4, :cond_2

    #@1a
    .line 2474
    iput v3, p0, Landroid/media/MediaRouter$RouteGroup;->mVolume:I

    #@1c
    .line 2475
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    #@1f
    .line 2463
    :cond_2
    return-void
.end method
