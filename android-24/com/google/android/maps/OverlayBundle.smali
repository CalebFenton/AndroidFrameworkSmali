.class final Lcom/google/android/maps/OverlayBundle;
.super Ljava/lang/Object;
.source "OverlayBundle.java"


# instance fields
.field private final mOverlays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/maps/Overlay;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 36
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    #@e
    .line 35
    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;J)Z
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapView"    # Lcom/google/android/maps/MapView;
    .param p3, "drawTime"    # J

    #@0
    .prologue
    .line 40
    const/4 v6, 0x0

    #@1
    .line 41
    .local v6, "again":Z
    iget-object v1, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    #@3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v7

    #@7
    .end local v6    # "again":Z
    .local v7, "overlay$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/google/android/maps/Overlay;

    #@13
    .line 42
    .local v0, "overlay":Lcom/google/android/maps/Overlay;
    const/4 v3, 0x1

    #@14
    move-object v1, p1

    #@15
    move-object v2, p2

    #@16
    move-wide v4, p3

    #@17
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/Overlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;ZJ)Z

    #@1a
    move-result v1

    #@1b
    or-int/2addr v6, v1

    #@1c
    .local v6, "again":Z
    goto :goto_0

    #@1d
    .line 44
    .end local v0    # "overlay":Lcom/google/android/maps/Overlay;
    .end local v6    # "again":Z
    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    #@1f
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@22
    move-result-object v7

    #@23
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_1

    #@29
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Lcom/google/android/maps/Overlay;

    #@2f
    .line 45
    .restart local v0    # "overlay":Lcom/google/android/maps/Overlay;
    const/4 v3, 0x0

    #@30
    move-object v1, p1

    #@31
    move-object v2, p2

    #@32
    move-wide v4, p3

    #@33
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/Overlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;ZJ)Z

    #@36
    move-result v1

    #@37
    or-int/2addr v6, v1

    #@38
    .restart local v6    # "again":Z
    goto :goto_1

    #@39
    .line 47
    .end local v0    # "overlay":Lcom/google/android/maps/Overlay;
    .end local v6    # "again":Z
    :cond_1
    return v6
.end method

.method public getOverlays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/maps/Overlay;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    #@2
    return-object v0
.end method

.method onKeyDown(ILandroid/view/KeyEvent;Lcom/google/android/maps/MapView;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "mapView"    # Lcom/google/android/maps/MapView;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 98
    iget-object v3, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    #@3
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@6
    move-result v2

    #@7
    .line 102
    .local v2, "size":I
    add-int/lit8 v0, v2, -0x1

    #@9
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@b
    .line 103
    iget-object v3, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    #@d
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/google/android/maps/Overlay;

    #@13
    .line 104
    .local v1, "overlay":Lcom/google/android/maps/Overlay;
    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/maps/Overlay;->onKeyDown(ILandroid/view/KeyEvent;Lcom/google/android/maps/MapView;)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 105
    const/4 v3, 0x1

    #@1a
    return v3

    #@1b
    .line 102
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1d
    goto :goto_0

    #@1e
    .line 108
    .end local v1    # "overlay":Lcom/google/android/maps/Overlay;
    :cond_1
    return v4
.end method

.method onKeyUp(ILandroid/view/KeyEvent;Lcom/google/android/maps/MapView;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "mapView"    # Lcom/google/android/maps/MapView;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 119
    iget-object v3, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    #@3
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@6
    move-result v2

    #@7
    .line 123
    .local v2, "size":I
    add-int/lit8 v0, v2, -0x1

    #@9
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@b
    .line 124
    iget-object v3, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    #@d
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/google/android/maps/Overlay;

    #@13
    .line 125
    .local v1, "overlay":Lcom/google/android/maps/Overlay;
    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/maps/Overlay;->onKeyUp(ILandroid/view/KeyEvent;Lcom/google/android/maps/MapView;)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 126
    const/4 v3, 0x1

    #@1a
    return v3

    #@1b
    .line 123
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1d
    goto :goto_0

    #@1e
    .line 129
    .end local v1    # "overlay":Lcom/google/android/maps/Overlay;
    :cond_1
    return v4
.end method

.method onTap(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/MapView;)Z
    .locals 5
    .param p1, "p"    # Lcom/google/android/maps/GeoPoint;
    .param p2, "mapView"    # Lcom/google/android/maps/MapView;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 77
    iget-object v3, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    #@3
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@6
    move-result v2

    #@7
    .line 81
    .local v2, "size":I
    add-int/lit8 v0, v2, -0x1

    #@9
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@b
    .line 82
    iget-object v3, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    #@d
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/google/android/maps/Overlay;

    #@13
    .line 83
    .local v1, "overlay":Lcom/google/android/maps/Overlay;
    invoke-virtual {v1, p1, p2}, Lcom/google/android/maps/Overlay;->onTap(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/MapView;)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 84
    const/4 v3, 0x1

    #@1a
    return v3

    #@1b
    .line 81
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1d
    goto :goto_0

    #@1e
    .line 87
    .end local v1    # "overlay":Lcom/google/android/maps/Overlay;
    :cond_1
    return v4
.end method

.method onTouchEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lcom/google/android/maps/MapView;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 57
    iget-object v3, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    #@3
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@6
    move-result v2

    #@7
    .line 61
    .local v2, "size":I
    add-int/lit8 v0, v2, -0x1

    #@9
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@b
    .line 62
    iget-object v3, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    #@d
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/google/android/maps/Overlay;

    #@13
    .line 63
    .local v1, "overlay":Lcom/google/android/maps/Overlay;
    invoke-virtual {v1, p1, p2}, Lcom/google/android/maps/Overlay;->onTouchEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 64
    const/4 v3, 0x1

    #@1a
    return v3

    #@1b
    .line 61
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1d
    goto :goto_0

    #@1e
    .line 67
    .end local v1    # "overlay":Lcom/google/android/maps/Overlay;
    :cond_1
    return v4
.end method

.method onTrackballEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lcom/google/android/maps/MapView;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 139
    iget-object v3, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    #@3
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@6
    move-result v2

    #@7
    .line 143
    .local v2, "size":I
    add-int/lit8 v0, v2, -0x1

    #@9
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@b
    .line 144
    iget-object v3, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    #@d
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/google/android/maps/Overlay;

    #@13
    .line 145
    .local v1, "overlay":Lcom/google/android/maps/Overlay;
    invoke-virtual {v1, p1, p2}, Lcom/google/android/maps/Overlay;->onTrackballEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 146
    const/4 v3, 0x1

    #@1a
    return v3

    #@1b
    .line 143
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1d
    goto :goto_0

    #@1e
    .line 149
    .end local v1    # "overlay":Lcom/google/android/maps/Overlay;
    :cond_1
    return v4
.end method
