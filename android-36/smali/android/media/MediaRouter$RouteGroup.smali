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
.field final greylist-max-o mRoutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mUpdateName:Z


# direct methods
.method constructor greylist-max-o <init>(Landroid/media/MediaRouter$RouteCategory;)V
    .registers 3
    .param p1, "category"    # Landroid/media/MediaRouter$RouteCategory;

    .line 2595
    invoke-direct {p0, p1}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    .line 2591
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    .line 2596
    iput-object p0, p0, Landroid/media/MediaRouter$RouteGroup;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    .line 2597
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaRouter$RouteGroup;->mVolumeHandling:I

    .line 2598
    return-void
.end method


# virtual methods
.method public whitelist addRoute(Landroid/media/MediaRouter$RouteInfo;)V
    .registers 5
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .line 2612
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getGroup()Landroid/media/MediaRouter$RouteGroup;

    move-result-object v0

    if-nez v0, :cond_57

    .line 2615
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRouter$RouteGroup;->mCategory:Landroid/media/MediaRouter$RouteCategory;

    if-ne v0, v1, :cond_28

    .line 2621
    iget-object v0, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2622
    .local v0, "at":I
    iget-object v1, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2623
    iput-object p0, p1, Landroid/media/MediaRouter$RouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    .line 2624
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaRouter$RouteGroup;->mUpdateName:Z

    .line 2625
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->updateVolume()V

    .line 2626
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->routeUpdated()V

    .line 2627
    invoke-static {p1, p0, v0}, Landroid/media/MediaRouter;->dispatchRouteGrouped(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V

    .line 2628
    return-void

    .line 2616
    .end local v0    # "at":I
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Route cannot be added to a group with a different category. (Route category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2618
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " group category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter$RouteGroup;->mCategory:Landroid/media/MediaRouter$RouteCategory;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2613
    :cond_57
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Route "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already part of a group."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addRoute(Landroid/media/MediaRouter$RouteInfo;I)V
    .registers 6
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;
    .param p2, "insertAt"    # I

    .line 2637
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getGroup()Landroid/media/MediaRouter$RouteGroup;

    move-result-object v0

    if-nez v0, :cond_51

    .line 2640
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRouter$RouteGroup;->mCategory:Landroid/media/MediaRouter$RouteCategory;

    if-ne v0, v1, :cond_22

    .line 2646
    iget-object v0, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2647
    iput-object p0, p1, Landroid/media/MediaRouter$RouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    .line 2648
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaRouter$RouteGroup;->mUpdateName:Z

    .line 2649
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->updateVolume()V

    .line 2650
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->routeUpdated()V

    .line 2651
    invoke-static {p1, p0, p2}, Landroid/media/MediaRouter;->dispatchRouteGrouped(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V

    .line 2652
    return-void

    .line 2641
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Route cannot be added to a group with a different category. (Route category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2643
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " group category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter$RouteGroup;->mCategory:Landroid/media/MediaRouter$RouteCategory;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2638
    :cond_51
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Route "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already part of a group."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o getName(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 2602
    iget-boolean v0, p0, Landroid/media/MediaRouter$RouteGroup;->mUpdateName:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->updateName()V

    .line 2603
    :cond_7
    invoke-super {p0, p1}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;
    .registers 3
    .param p1, "index"    # I

    .line 2700
    iget-object v0, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public whitelist getRouteCount()I
    .registers 2

    .line 2690
    iget-object v0, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method greylist-max-o memberNameChanged(Landroid/media/MediaRouter$RouteInfo;Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "info"    # Landroid/media/MediaRouter$RouteInfo;
    .param p2, "name"    # Ljava/lang/CharSequence;

    .line 2767
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaRouter$RouteGroup;->mUpdateName:Z

    .line 2768
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->routeUpdated()V

    .line 2769
    return-void
.end method

.method greylist-max-o memberStatusChanged(Landroid/media/MediaRouter$RouteInfo;Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "info"    # Landroid/media/MediaRouter$RouteInfo;
    .param p2, "status"    # Ljava/lang/CharSequence;

    .line 2772
    invoke-virtual {p0, p2}, Landroid/media/MediaRouter$RouteGroup;->setStatusInt(Ljava/lang/CharSequence;)V

    .line 2773
    return-void
.end method

.method greylist-max-o memberVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 2776
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->updateVolume()V

    .line 2777
    return-void
.end method

.method public whitelist removeRoute(I)V
    .registers 4
    .param p1, "index"    # I

    .line 2678
    iget-object v0, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    .line 2679
    .local v0, "route":Landroid/media/MediaRouter$RouteInfo;
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    .line 2680
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaRouter$RouteGroup;->mUpdateName:Z

    .line 2681
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->updateVolume()V

    .line 2682
    invoke-static {v0, p0}, Landroid/media/MediaRouter;->dispatchRouteUngrouped(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V

    .line 2683
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->routeUpdated()V

    .line 2684
    return-void
.end method

.method public whitelist removeRoute(Landroid/media/MediaRouter$RouteInfo;)V
    .registers 5
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .line 2660
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getGroup()Landroid/media/MediaRouter$RouteGroup;

    move-result-object v0

    if-ne v0, p0, :cond_1b

    .line 2664
    iget-object v0, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2665
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/media/MediaRouter$RouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    .line 2666
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaRouter$RouteGroup;->mUpdateName:Z

    .line 2667
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->updateVolume()V

    .line 2668
    invoke-static {p1, p0}, Landroid/media/MediaRouter;->dispatchRouteUngrouped(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V

    .line 2669
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->routeUpdated()V

    .line 2670
    return-void

    .line 2661
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Route "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a member of this group."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist requestSetVolume(I)V
    .registers 8
    .param p1, "volume"    # I

    .line 2725
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->getVolumeMax()I

    move-result v0

    .line 2726
    .local v0, "maxVol":I
    if-nez v0, :cond_7

    .line 2727
    return-void

    .line 2730
    :cond_7
    int-to-float v1, p1

    int-to-float v2, v0

    div-float/2addr v1, v2

    .line 2731
    .local v1, "scaledVolume":F
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->getRouteCount()I

    move-result v2

    .line 2732
    .local v2, "routeCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_22

    .line 2733
    invoke-virtual {p0, v3}, Landroid/media/MediaRouter$RouteGroup;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v4

    .line 2734
    .local v4, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v4}, Landroid/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    .line 2735
    .local v5, "routeVol":I
    invoke-virtual {v4, v5}, Landroid/media/MediaRouter$RouteInfo;->requestSetVolume(I)V

    .line 2732
    .end local v4    # "route":Landroid/media/MediaRouter$RouteInfo;
    .end local v5    # "routeVol":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 2737
    .end local v3    # "i":I
    :cond_22
    iget v3, p0, Landroid/media/MediaRouter$RouteGroup;->mVolume:I

    if-eq p1, v3, :cond_2b

    .line 2738
    iput p1, p0, Landroid/media/MediaRouter$RouteGroup;->mVolume:I

    .line 2739
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 2741
    :cond_2b
    return-void
.end method

.method public whitelist requestUpdateVolume(I)V
    .registers 8
    .param p1, "direction"    # I

    .line 2745
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->getVolumeMax()I

    move-result v0

    .line 2746
    .local v0, "maxVol":I
    if-nez v0, :cond_7

    .line 2747
    return-void

    .line 2750
    :cond_7
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->getRouteCount()I

    move-result v1

    .line 2751
    .local v1, "routeCount":I
    const/4 v2, 0x0

    .line 2752
    .local v2, "volume":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v1, :cond_20

    .line 2753
    invoke-virtual {p0, v3}, Landroid/media/MediaRouter$RouteGroup;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v4

    .line 2754
    .local v4, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v4, p1}, Landroid/media/MediaRouter$RouteInfo;->requestUpdateVolume(I)V

    .line 2755
    invoke-virtual {v4}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v5

    .line 2756
    .local v5, "routeVol":I
    if-le v5, v2, :cond_1d

    .line 2757
    move v2, v5

    .line 2752
    .end local v4    # "route":Landroid/media/MediaRouter$RouteInfo;
    .end local v5    # "routeVol":I
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 2760
    .end local v3    # "i":I
    :cond_20
    iget v3, p0, Landroid/media/MediaRouter$RouteGroup;->mVolume:I

    if-eq v2, v3, :cond_29

    .line 2761
    iput v2, p0, Landroid/media/MediaRouter$RouteGroup;->mVolume:I

    .line 2762
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 2764
    :cond_29
    return-void
.end method

.method greylist-max-o routeUpdated()V
    .registers 12

    .line 2797
    const/4 v0, 0x0

    .line 2798
    .local v0, "types":I
    iget-object v1, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2799
    .local v1, "count":I
    if-nez v1, :cond_d

    .line 2801
    invoke-static {p0}, Landroid/media/MediaRouter;->removeRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 2802
    return-void

    .line 2805
    :cond_d
    const/4 v2, 0x0

    .line 2806
    .local v2, "maxVolume":I
    const/4 v3, 0x1

    .line 2807
    .local v3, "isLocal":Z
    const/4 v4, 0x1

    .line 2808
    .local v4, "isFixedVolume":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_11
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v5, v1, :cond_3c

    .line 2809
    iget-object v8, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/MediaRouter$RouteInfo;

    .line 2810
    .local v8, "route":Landroid/media/MediaRouter$RouteInfo;
    iget v9, v8, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    or-int/2addr v0, v9

    .line 2811
    invoke-virtual {v8}, Landroid/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v9

    .line 2812
    .local v9, "routeMaxVolume":I
    if-le v9, v2, :cond_27

    .line 2813
    move v2, v9

    .line 2815
    :cond_27
    invoke-virtual {v8}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v10

    if-nez v10, :cond_2f

    move v10, v7

    goto :goto_30

    :cond_2f
    move v10, v6

    :goto_30
    and-int/2addr v3, v10

    .line 2816
    invoke-virtual {v8}, Landroid/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    move-result v10

    if-nez v10, :cond_38

    move v6, v7

    :cond_38
    and-int/2addr v4, v6

    .line 2808
    .end local v8    # "route":Landroid/media/MediaRouter$RouteInfo;
    .end local v9    # "routeMaxVolume":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 2818
    .end local v5    # "i":I
    :cond_3c
    xor-int/lit8 v5, v3, 0x1

    iput v5, p0, Landroid/media/MediaRouter$RouteGroup;->mPlaybackType:I

    .line 2819
    xor-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroid/media/MediaRouter$RouteGroup;->mVolumeHandling:I

    .line 2820
    iput v0, p0, Landroid/media/MediaRouter$RouteGroup;->mSupportedTypes:I

    .line 2821
    iput v2, p0, Landroid/media/MediaRouter$RouteGroup;->mVolumeMax:I

    .line 2822
    if-ne v1, v7, :cond_57

    iget-object v5, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v5}, Landroid/media/MediaRouter$RouteInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_58

    :cond_57
    const/4 v5, 0x0

    :goto_58
    iput-object v5, p0, Landroid/media/MediaRouter$RouteGroup;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 2823
    invoke-super {p0}, Landroid/media/MediaRouter$RouteInfo;->routeUpdated()V

    .line 2824
    return-void
.end method

.method public whitelist setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 2710
    iput-object p1, p0, Landroid/media/MediaRouter$RouteGroup;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 2711
    return-void
.end method

.method public whitelist setIconResource(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 2720
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$RouteGroup;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2721
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 2843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Landroid/media/MediaRouter$RouteInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2844
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2845
    iget-object v1, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2846
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v1, :cond_2a

    .line 2847
    if-lez v2, :cond_1e

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2848
    :cond_1e
    iget-object v3, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2846
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 2850
    .end local v2    # "i":I
    :cond_2a
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2851
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method greylist-max-o updateName()V
    .registers 6

    .line 2827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2828
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2829
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_27

    .line 2830
    iget-object v3, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRouter$RouteInfo;

    .line 2832
    .local v3, "info":Landroid/media/MediaRouter$RouteInfo;
    if-lez v2, :cond_1d

    .line 2833
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2835
    :cond_1d
    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2829
    .end local v3    # "info":Landroid/media/MediaRouter$RouteInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 2837
    .end local v2    # "i":I
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaRouter$RouteGroup;->mName:Ljava/lang/CharSequence;

    .line 2838
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/MediaRouter$RouteGroup;->mUpdateName:Z

    .line 2839
    return-void
.end method

.method greylist-max-o updateVolume()V
    .registers 5

    .line 2781
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->getRouteCount()I

    move-result v0

    .line 2782
    .local v0, "routeCount":I
    const/4 v1, 0x0

    .line 2783
    .local v1, "volume":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v0, :cond_16

    .line 2784
    invoke-virtual {p0, v2}, Landroid/media/MediaRouter$RouteGroup;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v3

    .line 2785
    .local v3, "routeVol":I
    if-le v3, v1, :cond_13

    .line 2786
    move v1, v3

    .line 2783
    .end local v3    # "routeVol":I
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 2789
    .end local v2    # "i":I
    :cond_16
    iget v2, p0, Landroid/media/MediaRouter$RouteGroup;->mVolume:I

    if-eq v1, v2, :cond_1f

    .line 2790
    iput v1, p0, Landroid/media/MediaRouter$RouteGroup;->mVolume:I

    .line 2791
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 2793
    :cond_1f
    return-void
.end method
