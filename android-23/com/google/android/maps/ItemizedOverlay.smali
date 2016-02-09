.class public abstract Lcom/google/android/maps/ItemizedOverlay;
.super Lcom/google/android/maps/Overlay;
.source "ItemizedOverlay.java"

# interfaces
.implements Lcom/google/android/maps/Overlay$Snappable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/maps/ItemizedOverlay$OnFocusChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Lcom/google/android/maps/OverlayItem;",
        ">",
        "Lcom/google/android/maps/Overlay;",
        "Lcom/google/android/maps/Overlay$Snappable;"
    }
.end annotation


# static fields
.field private static final MINIMUM_TOUCH_DIAMETER:I


# instance fields
.field private final mBalloon:Landroid/graphics/drawable/Drawable;

.field private mCurrentlyPressedItemRank:I

.field private mCurrentlySelectedItemRank:I

.field private mDrawFocusedItem:Z

.field private mFocused:Lcom/google/android/maps/OverlayItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TItem;"
        }
    .end annotation
.end field

.field private mInGestureMask:I

.field private mItemState:[I

.field private mItemsOrderedByRank:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TItem;>;"
        }
    .end annotation
.end field

.field protected mLastFocusedIndex:I

.field private mLastSelectedItemRank:I

.field private mLatSpanE6:I

.field private mLonSpanE6:I

.field private mOnFocusChangeListener:Lcom/google/android/maps/ItemizedOverlay$OnFocusChangeListener;

.field private mRanksOrderedByLat:[I

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTouchableBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 99
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    #@3
    move-result v0

    #@4
    mul-int/lit8 v0, v0, 0x4

    #@6
    sput v0, Lcom/google/android/maps/ItemizedOverlay;->MINIMUM_TOUCH_DIAMETER:I

    #@8
    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "defaultMarker"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .local p0, "this":Lcom/google/android/maps/ItemizedOverlay;, "Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    const/4 v2, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 122
    invoke-direct {p0}, Lcom/google/android/maps/Overlay;-><init>()V

    #@5
    .line 40
    iput-object v1, p0, Lcom/google/android/maps/ItemizedOverlay;->mRanksOrderedByLat:[I

    #@7
    .line 41
    iput-object v1, p0, Lcom/google/android/maps/ItemizedOverlay;->mItemsOrderedByRank:Ljava/util/ArrayList;

    #@9
    .line 46
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mDrawFocusedItem:Z

    #@c
    .line 53
    iput v2, p0, Lcom/google/android/maps/ItemizedOverlay;->mLastSelectedItemRank:I

    #@e
    .line 58
    iput-object v1, p0, Lcom/google/android/maps/ItemizedOverlay;->mFocused:Lcom/google/android/maps/OverlayItem;

    #@10
    .line 69
    iput v2, p0, Lcom/google/android/maps/ItemizedOverlay;->mLastFocusedIndex:I

    #@12
    .line 93
    new-instance v0, Landroid/graphics/Rect;

    #@14
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@17
    iput-object v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mTouchableBounds:Landroid/graphics/Rect;

    #@19
    .line 104
    new-instance v0, Landroid/graphics/Point;

    #@1b
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    #@1e
    iput-object v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mTempPoint:Landroid/graphics/Point;

    #@20
    .line 123
    iput-object p1, p0, Lcom/google/android/maps/ItemizedOverlay;->mBalloon:Landroid/graphics/drawable/Drawable;

    #@22
    .line 122
    return-void
.end method

.method protected static boundCenter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p0, "balloon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 173
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@3
    move-result v3

    #@4
    .line 174
    .local v3, "width":I
    div-int/lit8 v2, v3, 0x2

    #@6
    .line 175
    .local v2, "w2":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@9
    move-result v1

    #@a
    .line 176
    .local v1, "height":I
    div-int/lit8 v0, v1, 0x2

    #@c
    .line 177
    .local v0, "h2":I
    neg-int v4, v2

    #@d
    neg-int v5, v0

    #@e
    sub-int v6, v3, v2

    #@10
    sub-int v7, v1, v0

    #@12
    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@15
    .line 178
    return-object p0
.end method

.method protected static boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "balloon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 158
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@3
    move-result v2

    #@4
    .line 159
    .local v2, "width":I
    div-int/lit8 v1, v2, 0x2

    #@6
    .line 160
    .local v1, "w2":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@9
    move-result v0

    #@a
    .line 161
    .local v0, "height":I
    neg-int v3, v1

    #@b
    rsub-int/lit8 v4, v0, 0x1

    #@d
    sub-int v5, v2, v1

    #@f
    const/4 v6, 0x1

    #@10
    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@13
    .line 162
    return-object p0
.end method

.method private drawItem(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;ZI)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapView"    # Lcom/google/android/maps/MapView;
    .param p3, "shadow"    # Z
    .param p4, "rank"    # I

    #@0
    .prologue
    .line 256
    .local p0, "this":Lcom/google/android/maps/ItemizedOverlay;, "Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    invoke-virtual {p0, p4}, Lcom/google/android/maps/ItemizedOverlay;->getItem(I)Lcom/google/android/maps/OverlayItem;

    #@3
    move-result-object v0

    #@4
    .line 257
    .local v0, "item":Lcom/google/android/maps/OverlayItem;, "TItem;"
    invoke-direct {p0, v0, p4}, Lcom/google/android/maps/ItemizedOverlay;->getDrawable(Lcom/google/android/maps/OverlayItem;I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v1

    #@8
    .line 258
    .local v1, "marker":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v0}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    #@f
    move-result-object v3

    #@10
    iget-object v4, p0, Lcom/google/android/maps/ItemizedOverlay;->mTempPoint:Landroid/graphics/Point;

    #@12
    invoke-interface {v2, v3, v4}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    #@15
    .line 259
    iget-object v2, p0, Lcom/google/android/maps/ItemizedOverlay;->mTempPoint:Landroid/graphics/Point;

    #@17
    iget v2, v2, Landroid/graphics/Point;->x:I

    #@19
    iget-object v3, p0, Lcom/google/android/maps/ItemizedOverlay;->mTempPoint:Landroid/graphics/Point;

    #@1b
    iget v3, v3, Landroid/graphics/Point;->y:I

    #@1d
    invoke-static {p1, v1, v2, v3, p3}, Lcom/google/android/maps/ItemizedOverlay;->drawAt(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIZ)V

    #@20
    .line 255
    return-void
.end method

.method private focus(I)V
    .locals 2
    .param p1, "hit"    # I

    #@0
    .prologue
    .line 538
    .local p0, "this":Lcom/google/android/maps/ItemizedOverlay;, "Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    const/4 v1, -0x1

    #@1
    if-eq p1, v1, :cond_0

    #@3
    invoke-virtual {p0, p1}, Lcom/google/android/maps/ItemizedOverlay;->getItem(I)Lcom/google/android/maps/OverlayItem;

    #@6
    move-result-object v0

    #@7
    .line 539
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/ItemizedOverlay;->setFocus(ILcom/google/android/maps/OverlayItem;)V

    #@a
    .line 537
    return-void

    #@b
    .line 538
    :cond_0
    const/4 v0, 0x0

    #@c
    .local v0, "hitItem":Lcom/google/android/maps/OverlayItem;, "TItem;"
    goto :goto_0
.end method

.method private getDrawable(Lcom/google/android/maps/OverlayItem;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p2, "rank"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;I)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    #@0
    .prologue
    .line 263
    .local p0, "this":Lcom/google/android/maps/ItemizedOverlay;, "Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    .local p1, "item":Lcom/google/android/maps/OverlayItem;, "TItem;"
    iget-object v2, p0, Lcom/google/android/maps/ItemizedOverlay;->mItemState:[I

    #@2
    aget v1, v2, p2

    #@4
    .line 264
    .local v1, "itemState":I
    invoke-virtual {p1, v1}, Lcom/google/android/maps/OverlayItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    .line 265
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    #@a
    .line 266
    iget-object v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mBalloon:Landroid/graphics/drawable/Drawable;

    #@c
    .line 267
    invoke-static {v0, v1}, Lcom/google/android/maps/OverlayItem;->setState(Landroid/graphics/drawable/Drawable;I)V

    #@f
    .line 269
    :cond_0
    return-object v0
.end method

.method private getItemAtLocation(IILcom/google/android/maps/MapView;)I
    .locals 17
    .param p1, "hitX"    # I
    .param p2, "hitY"    # I
    .param p3, "mapView"    # Lcom/google/android/maps/MapView;

    #@0
    .prologue
    .line 586
    .local p0, "this":Lcom/google/android/maps/ItemizedOverlay;, "Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    invoke-direct/range {p0 .. p3}, Lcom/google/android/maps/ItemizedOverlay;->getItemsAtLocation(IILcom/google/android/maps/MapView;)Ljava/util/ArrayList;

    #@3
    move-result-object v7

    #@4
    .line 587
    .local v7, "hitItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, -0x1

    #@5
    .line 588
    .local v3, "closestRank":I
    const v2, 0x7fffffff

    #@8
    .line 589
    .local v2, "closestDistanceSquared":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v13

    #@c
    .local v13, "rank$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v14

    #@10
    if-eqz v14, :cond_1

    #@12
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v14

    #@16
    check-cast v14, Ljava/lang/Integer;

    #@18
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    #@1b
    move-result v12

    #@1c
    .line 590
    .local v12, "rank":I
    move-object/from16 v0, p0

    #@1e
    iget-object v14, v0, Lcom/google/android/maps/ItemizedOverlay;->mItemsOrderedByRank:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v8

    #@24
    check-cast v8, Lcom/google/android/maps/OverlayItem;

    #@26
    .line 591
    .local v8, "item":Lcom/google/android/maps/OverlayItem;, "TItem;"
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    #@29
    move-result-object v14

    #@2a
    invoke-virtual {v8}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    #@2d
    move-result-object v15

    #@2e
    move-object/from16 v0, p0

    #@30
    iget-object v0, v0, Lcom/google/android/maps/ItemizedOverlay;->mTempPoint:Landroid/graphics/Point;

    #@32
    move-object/from16 v16, v0

    #@34
    invoke-interface/range {v14 .. v16}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    #@37
    .line 592
    move-object/from16 v0, p0

    #@39
    iget-object v14, v0, Lcom/google/android/maps/ItemizedOverlay;->mTempPoint:Landroid/graphics/Point;

    #@3b
    iget v14, v14, Landroid/graphics/Point;->x:I

    #@3d
    sub-int v10, p1, v14

    #@3f
    .line 593
    .local v10, "offsetX":I
    move-object/from16 v0, p0

    #@41
    iget-object v14, v0, Lcom/google/android/maps/ItemizedOverlay;->mTempPoint:Landroid/graphics/Point;

    #@43
    iget v14, v14, Landroid/graphics/Point;->y:I

    #@45
    sub-int v11, p2, v14

    #@47
    .line 594
    .local v11, "offsetY":I
    move-object/from16 v0, p0

    #@49
    invoke-direct {v0, v8, v12}, Lcom/google/android/maps/ItemizedOverlay;->getDrawable(Lcom/google/android/maps/OverlayItem;I)Landroid/graphics/drawable/Drawable;

    #@4c
    move-result-object v9

    #@4d
    .line 595
    .local v9, "marker":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@50
    move-result-object v14

    #@51
    move-object/from16 v0, p0

    #@53
    invoke-direct {v0, v14}, Lcom/google/android/maps/ItemizedOverlay;->getTouchableBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    #@56
    move-result-object v1

    #@57
    .line 596
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    #@5a
    move-result v14

    #@5b
    sub-int v5, v14, v10

    #@5d
    .line 597
    .local v5, "dx":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    #@60
    move-result v14

    #@61
    sub-int v6, v14, v11

    #@63
    .line 598
    .local v6, "dy":I
    mul-int v14, v5, v5

    #@65
    mul-int v15, v6, v6

    #@67
    add-int v4, v14, v15

    #@69
    .line 599
    .local v4, "distanceSquared":I
    if-ge v4, v2, :cond_0

    #@6b
    .line 600
    move v2, v4

    #@6c
    .line 601
    move v3, v12

    #@6d
    goto :goto_0

    #@6e
    .line 604
    .end local v1    # "bounds":Landroid/graphics/Rect;
    .end local v4    # "distanceSquared":I
    .end local v5    # "dx":I
    .end local v6    # "dy":I
    .end local v8    # "item":Lcom/google/android/maps/OverlayItem;, "TItem;"
    .end local v9    # "marker":Landroid/graphics/drawable/Drawable;
    .end local v10    # "offsetX":I
    .end local v11    # "offsetY":I
    .end local v12    # "rank":I
    :cond_1
    move-object/from16 v0, p0

    #@70
    iput v3, v0, Lcom/google/android/maps/ItemizedOverlay;->mLastSelectedItemRank:I

    #@72
    .line 605
    move-object/from16 v0, p0

    #@74
    iget v14, v0, Lcom/google/android/maps/ItemizedOverlay;->mLastSelectedItemRank:I

    #@76
    return v14
.end method

.method private getItemsAtLocation(IILcom/google/android/maps/MapView;)Ljava/util/ArrayList;
    .locals 14
    .param p1, "hitX"    # I
    .param p2, "hitY"    # I
    .param p3, "mapView"    # Lcom/google/android/maps/MapView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/google/android/maps/MapView;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 615
    .local p0, "this":Lcom/google/android/maps/ItemizedOverlay;, "Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    iget-object v4, p0, Lcom/google/android/maps/ItemizedOverlay;->mItemsOrderedByRank:Ljava/util/ArrayList;

    #@2
    .line 616
    .local v4, "itemsByRank":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TItem;>;"
    iget-object v10, p0, Lcom/google/android/maps/ItemizedOverlay;->mRanksOrderedByLat:[I

    #@4
    .line 617
    .local v10, "ranksOrderedByLat":[I
    array-length v5, v10

    #@5
    .line 623
    .local v5, "length":I
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    #@a
    .line 624
    .local v0, "hitItemRanks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    add-int/lit8 v1, v5, -0x1

    #@c
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    #@e
    .line 625
    aget v9, v10, v1

    #@10
    .line 626
    .local v9, "rank":I
    iget-object v11, p0, Lcom/google/android/maps/ItemizedOverlay;->mItemState:[I

    #@12
    aget v3, v11, v9

    #@14
    .line 627
    .local v3, "itemState":I
    iget-boolean v11, p0, Lcom/google/android/maps/ItemizedOverlay;->mDrawFocusedItem:Z

    #@16
    if-nez v11, :cond_0

    #@18
    and-int/lit8 v11, v3, 0x4

    #@1a
    if-nez v11, :cond_1

    #@1c
    .line 628
    :cond_0
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Lcom/google/android/maps/OverlayItem;

    #@22
    .line 629
    .local v2, "item":Lcom/google/android/maps/OverlayItem;, "TItem;"
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    #@25
    move-result-object v11

    #@26
    invoke-virtual {v2}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    #@29
    move-result-object v12

    #@2a
    iget-object v13, p0, Lcom/google/android/maps/ItemizedOverlay;->mTempPoint:Landroid/graphics/Point;

    #@2c
    invoke-interface {v11, v12, v13}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    #@2f
    .line 630
    iget-object v11, p0, Lcom/google/android/maps/ItemizedOverlay;->mTempPoint:Landroid/graphics/Point;

    #@31
    iget v11, v11, Landroid/graphics/Point;->x:I

    #@33
    sub-int v7, p1, v11

    #@35
    .line 631
    .local v7, "offsetX":I
    iget-object v11, p0, Lcom/google/android/maps/ItemizedOverlay;->mTempPoint:Landroid/graphics/Point;

    #@37
    iget v11, v11, Landroid/graphics/Point;->y:I

    #@39
    sub-int v8, p2, v11

    #@3b
    .line 632
    .local v8, "offsetY":I
    invoke-direct {p0, v2, v9}, Lcom/google/android/maps/ItemizedOverlay;->getDrawable(Lcom/google/android/maps/OverlayItem;I)Landroid/graphics/drawable/Drawable;

    #@3e
    move-result-object v6

    #@3f
    .line 633
    .local v6, "marker":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2, v6, v7, v8}, Lcom/google/android/maps/ItemizedOverlay;->hitTest(Lcom/google/android/maps/OverlayItem;Landroid/graphics/drawable/Drawable;II)Z

    #@42
    move-result v11

    #@43
    if-eqz v11, :cond_1

    #@45
    .line 634
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@48
    move-result-object v11

    #@49
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4c
    .line 624
    .end local v2    # "item":Lcom/google/android/maps/OverlayItem;, "TItem;"
    .end local v6    # "marker":Landroid/graphics/drawable/Drawable;
    .end local v7    # "offsetX":I
    .end local v8    # "offsetY":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@4e
    goto :goto_0

    #@4f
    .line 652
    .end local v3    # "itemState":I
    .end local v9    # "rank":I
    :cond_2
    return-object v0
.end method

.method private getTouchableBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 11
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 135
    .local p0, "this":Lcom/google/android/maps/ItemizedOverlay;, "Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@3
    move-result v7

    #@4
    .line 136
    .local v7, "w":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@7
    move-result v2

    #@8
    .line 137
    .local v2, "h":I
    sget v8, Lcom/google/android/maps/ItemizedOverlay;->MINIMUM_TOUCH_DIAMETER:I

    #@a
    if-lt v7, v8, :cond_0

    #@c
    sget v8, Lcom/google/android/maps/ItemizedOverlay;->MINIMUM_TOUCH_DIAMETER:I

    #@e
    if-lt v2, v8, :cond_0

    #@10
    .line 138
    return-object p1

    #@11
    .line 140
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    #@14
    move-result v0

    #@15
    .line 141
    .local v0, "cx":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    #@18
    move-result v1

    #@19
    .line 142
    .local v1, "cy":I
    sget v8, Lcom/google/android/maps/ItemizedOverlay;->MINIMUM_TOUCH_DIAMETER:I

    #@1b
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    #@1e
    move-result v6

    #@1f
    .line 143
    .local v6, "touchW":I
    div-int/lit8 v8, v6, 0x2

    #@21
    sub-int v4, v0, v8

    #@23
    .line 144
    .local v4, "touchL":I
    sget v8, Lcom/google/android/maps/ItemizedOverlay;->MINIMUM_TOUCH_DIAMETER:I

    #@25
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    #@28
    move-result v3

    #@29
    .line 145
    .local v3, "touchH":I
    div-int/lit8 v8, v3, 0x2

    #@2b
    sub-int v5, v1, v8

    #@2d
    .line 146
    .local v5, "touchT":I
    iget-object v8, p0, Lcom/google/android/maps/ItemizedOverlay;->mTouchableBounds:Landroid/graphics/Rect;

    #@2f
    add-int v9, v4, v6

    #@31
    add-int v10, v5, v3

    #@33
    invoke-virtual {v8, v4, v5, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    #@36
    .line 147
    iget-object v8, p0, Lcom/google/android/maps/ItemizedOverlay;->mTouchableBounds:Landroid/graphics/Rect;

    #@38
    return-object v8
.end method

.method private handleMotionEvent(ZILandroid/view/MotionEvent;Lcom/google/android/maps/MapView;II)Z
    .locals 9
    .param p1, "trackball"    # Z
    .param p2, "gestureMask"    # I
    .param p3, "event"    # Landroid/view/MotionEvent;
    .param p4, "mapView"    # Lcom/google/android/maps/MapView;
    .param p5, "x"    # I
    .param p6, "y"    # I

    #@0
    .prologue
    .line 495
    .local p0, "this":Lcom/google/android/maps/ItemizedOverlay;, "Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    #@3
    move-result v0

    #@4
    .line 496
    .local v0, "action":I
    if-nez v0, :cond_3

    #@6
    const/4 v4, 0x1

    #@7
    .line 497
    .local v4, "isDown":Z
    :goto_0
    if-nez v4, :cond_0

    #@9
    const/4 v7, 0x2

    #@a
    if-ne v0, v7, :cond_4

    #@c
    :cond_0
    const/4 v5, 0x1

    #@d
    .line 498
    .local v5, "isDownOrMove":Z
    :goto_1
    invoke-direct {p0, p5, p6, p4}, Lcom/google/android/maps/ItemizedOverlay;->getItemAtLocation(IILcom/google/android/maps/MapView;)I

    #@10
    move-result v1

    #@11
    .line 499
    .local v1, "hit":I
    const/4 v7, -0x1

    #@12
    if-eq v1, v7, :cond_5

    #@14
    const/4 v2, 0x1

    #@15
    .line 502
    .local v2, "hitSomething":Z
    :goto_2
    if-eqz p1, :cond_6

    #@17
    move v6, v1

    #@18
    .line 503
    .local v6, "selectHit":I
    :goto_3
    invoke-direct {p0, v6}, Lcom/google/android/maps/ItemizedOverlay;->select(I)V

    #@1b
    .line 505
    if-eqz v4, :cond_1

    #@1d
    .line 506
    if-eqz v2, :cond_7

    #@1f
    .line 507
    iget v7, p0, Lcom/google/android/maps/ItemizedOverlay;->mInGestureMask:I

    #@21
    or-int/2addr v7, p2

    #@22
    iput v7, p0, Lcom/google/android/maps/ItemizedOverlay;->mInGestureMask:I

    #@24
    .line 512
    :cond_1
    :goto_4
    iget v7, p0, Lcom/google/android/maps/ItemizedOverlay;->mInGestureMask:I

    #@26
    and-int/2addr v7, p2

    #@27
    if-eqz v7, :cond_8

    #@29
    const/4 v3, 0x1

    #@2a
    .line 513
    .local v3, "inGesture":Z
    :goto_5
    if-eqz v3, :cond_2

    #@2c
    .line 514
    if-eqz v5, :cond_9

    #@2e
    .line 515
    invoke-direct {p0, v1}, Lcom/google/android/maps/ItemizedOverlay;->press(I)V

    #@31
    .line 534
    :cond_2
    :goto_6
    if-eqz v3, :cond_a

    #@33
    const/4 v7, 0x2

    #@34
    if-eq p2, v7, :cond_a

    #@36
    const/4 v7, 0x1

    #@37
    :goto_7
    return v7

    #@38
    .line 496
    .end local v1    # "hit":I
    .end local v2    # "hitSomething":Z
    .end local v3    # "inGesture":Z
    .end local v4    # "isDown":Z
    .end local v5    # "isDownOrMove":Z
    .end local v6    # "selectHit":I
    :cond_3
    const/4 v4, 0x0

    #@39
    .restart local v4    # "isDown":Z
    goto :goto_0

    #@3a
    .line 497
    :cond_4
    const/4 v5, 0x0

    #@3b
    .restart local v5    # "isDownOrMove":Z
    goto :goto_1

    #@3c
    .line 499
    .restart local v1    # "hit":I
    :cond_5
    const/4 v2, 0x0

    #@3d
    .restart local v2    # "hitSomething":Z
    goto :goto_2

    #@3e
    .line 502
    :cond_6
    const/4 v6, -0x1

    #@3f
    .restart local v6    # "selectHit":I
    goto :goto_3

    #@40
    .line 509
    :cond_7
    iget v7, p0, Lcom/google/android/maps/ItemizedOverlay;->mInGestureMask:I

    #@42
    not-int v8, p2

    #@43
    and-int/2addr v7, v8

    #@44
    iput v7, p0, Lcom/google/android/maps/ItemizedOverlay;->mInGestureMask:I

    #@46
    goto :goto_4

    #@47
    .line 512
    :cond_8
    const/4 v3, 0x0

    #@48
    .restart local v3    # "inGesture":Z
    goto :goto_5

    #@49
    .line 516
    :cond_9
    const/4 v7, 0x1

    #@4a
    if-ne v0, v7, :cond_2

    #@4c
    .line 517
    const/4 v7, -0x1

    #@4d
    invoke-direct {p0, v7}, Lcom/google/android/maps/ItemizedOverlay;->press(I)V

    #@50
    .line 518
    iget v7, p0, Lcom/google/android/maps/ItemizedOverlay;->mInGestureMask:I

    #@52
    not-int v8, p2

    #@53
    and-int/2addr v7, v8

    #@54
    iput v7, p0, Lcom/google/android/maps/ItemizedOverlay;->mInGestureMask:I

    #@56
    .line 523
    const/4 v7, 0x2

    #@57
    if-eq p2, v7, :cond_2

    #@59
    .line 524
    invoke-virtual {p0, v1}, Lcom/google/android/maps/ItemizedOverlay;->onTap(I)Z

    #@5c
    goto :goto_6

    #@5d
    .line 534
    :cond_a
    const/4 v7, 0x0

    #@5e
    goto :goto_7
.end method

.method private maskHelper(III)I
    .locals 4
    .param p1, "oldRank"    # I
    .param p2, "newRank"    # I
    .param p3, "mask"    # I

    #@0
    .prologue
    .local p0, "this":Lcom/google/android/maps/ItemizedOverlay;, "Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    const/4 v3, -0x1

    #@1
    .line 560
    if-eq p1, p2, :cond_1

    #@3
    .line 561
    if-eq p1, v3, :cond_0

    #@5
    .line 562
    iget-object v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mItemState:[I

    #@7
    aget v1, v0, p1

    #@9
    not-int v2, p3

    #@a
    and-int/2addr v1, v2

    #@b
    aput v1, v0, p1

    #@d
    .line 564
    :cond_0
    if-eq p2, v3, :cond_1

    #@f
    .line 565
    iget-object v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mItemState:[I

    #@11
    aget v1, v0, p2

    #@13
    or-int/2addr v1, p3

    #@14
    aput v1, v0, p2

    #@16
    .line 568
    :cond_1
    return p2
.end method

.method private press(I)V
    .locals 2
    .param p1, "rank"    # I

    #@0
    .prologue
    .line 548
    .local p0, "this":Lcom/google/android/maps/ItemizedOverlay;, "Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    iget v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mCurrentlyPressedItemRank:I

    #@2
    .line 549
    const/4 v1, 0x1

    #@3
    .line 548
    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/maps/ItemizedOverlay;->maskHelper(III)I

    #@6
    move-result v0

    #@7
    iput v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mCurrentlyPressedItemRank:I

    #@9
    .line 547
    return-void
.end method

.method private select(I)V
    .locals 2
    .param p1, "rank"    # I

    #@0
    .prologue
    .line 543
    .local p0, "this":Lcom/google/android/maps/ItemizedOverlay;, "Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    iget v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mCurrentlySelectedItemRank:I

    #@2
    .line 544
    const/4 v1, 0x2

    #@3
    .line 543
    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/maps/ItemizedOverlay;->maskHelper(III)I

    #@6
    move-result v0

    #@7
    iput v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mCurrentlySelectedItemRank:I

    #@9
    .line 542
    return-void
.end method

.method private setFocus(ILcom/google/android/maps/OverlayItem;)V
    .locals 3
    .param p1, "rank"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITItem;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 364
    .local p0, "this":Lcom/google/android/maps/ItemizedOverlay;, "Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    .local p2, "item":Lcom/google/android/maps/OverlayItem;, "TItem;"
    iget-object v1, p0, Lcom/google/android/maps/ItemizedOverlay;->mFocused:Lcom/google/android/maps/OverlayItem;

    #@2
    if-eq v1, p2, :cond_2

    #@4
    iget-object v1, p0, Lcom/google/android/maps/ItemizedOverlay;->mOnFocusChangeListener:Lcom/google/android/maps/ItemizedOverlay$OnFocusChangeListener;

    #@6
    if-eqz v1, :cond_2

    #@8
    const/4 v0, 0x1

    #@9
    .line 365
    .local v0, "notify":Z
    :goto_0
    iget v1, p0, Lcom/google/android/maps/ItemizedOverlay;->mLastFocusedIndex:I

    #@b
    .line 366
    const/4 v2, 0x4

    #@c
    .line 365
    invoke-direct {p0, v1, p1, v2}, Lcom/google/android/maps/ItemizedOverlay;->maskHelper(III)I

    #@f
    .line 367
    const/4 v1, -0x1

    #@10
    if-eq p1, v1, :cond_0

    #@12
    .line 368
    iput p1, p0, Lcom/google/android/maps/ItemizedOverlay;->mLastFocusedIndex:I

    #@14
    .line 370
    :cond_0
    iput-object p2, p0, Lcom/google/android/maps/ItemizedOverlay;->mFocused:Lcom/google/android/maps/OverlayItem;

    #@16
    .line 371
    if-eqz v0, :cond_1

    #@18
    .line 372
    iget-object v1, p0, Lcom/google/android/maps/ItemizedOverlay;->mOnFocusChangeListener:Lcom/google/android/maps/ItemizedOverlay$OnFocusChangeListener;

    #@1a
    invoke-interface {v1, p0, p2}, Lcom/google/android/maps/ItemizedOverlay$OnFocusChangeListener;->onFocusChanged(Lcom/google/android/maps/ItemizedOverlay;Lcom/google/android/maps/OverlayItem;)V

    #@1d
    .line 363
    :cond_1
    return-void

    #@1e
    .line 364
    .end local v0    # "notify":Z
    :cond_2
    const/4 v0, 0x0

    #@1f
    .restart local v0    # "notify":Z
    goto :goto_0
.end method


# virtual methods
.method protected abstract createItem(I)Lcom/google/android/maps/OverlayItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapView"    # Lcom/google/android/maps/MapView;
    .param p3, "shadow"    # Z

    #@0
    .prologue
    .line 236
    .local p0, "this":Lcom/google/android/maps/ItemizedOverlay;, "Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    invoke-virtual {p0}, Lcom/google/android/maps/ItemizedOverlay;->size()I

    #@3
    move-result v5

    #@4
    .line 237
    .local v5, "size":I
    const/4 v0, -0x1

    #@5
    .line 238
    .local v0, "focusedItemRank":I
    const/4 v3, 0x4

    #@6
    .line 239
    .local v3, "itemStateFocusedMask":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_1

    #@9
    .line 240
    invoke-virtual {p0, v1}, Lcom/google/android/maps/ItemizedOverlay;->getIndexToDraw(I)I

    #@c
    move-result v4

    #@d
    .line 241
    .local v4, "rank":I
    iget-object v6, p0, Lcom/google/android/maps/ItemizedOverlay;->mItemState:[I

    #@f
    aget v2, v6, v4

    #@11
    .line 242
    .local v2, "itemState":I
    and-int/lit8 v6, v2, 0x4

    #@13
    if-nez v6, :cond_0

    #@15
    .line 243
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/google/android/maps/ItemizedOverlay;->drawItem(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;ZI)V

    #@18
    .line 239
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 245
    :cond_0
    move v0, v4

    #@1c
    goto :goto_1

    #@1d
    .line 250
    .end local v2    # "itemState":I
    .end local v4    # "rank":I
    :cond_1
    iget-boolean v6, p0, Lcom/google/android/maps/ItemizedOverlay;->mDrawFocusedItem:Z

    #@1f
    if-eqz v6, :cond_2

    #@21
    if-ltz v0, :cond_2

    #@23
    .line 251
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/maps/ItemizedOverlay;->drawItem(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;ZI)V

    #@26
    .line 235
    :cond_2
    return-void
.end method

.method public getCenter()Lcom/google/android/maps/GeoPoint;
    .locals 2

    #@0
    .prologue
    .local p0, "this":Lcom/google/android/maps/ItemizedOverlay;, "Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    const/4 v1, 0x0

    #@1
    .line 199
    iget-object v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mRanksOrderedByLat:[I

    #@3
    array-length v0, v0

    #@4
    if-lez v0, :cond_0

    #@6
    .line 200
    invoke-virtual {p0, v1}, Lcom/google/android/maps/ItemizedOverlay;->getItem(I)Lcom/google/android/maps/OverlayItem;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 202
    :cond_0
    const/4 v0, 0x0

    #@10
    return-object v0
.end method

.method public getFocus()Lcom/google/android/maps/OverlayItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TItem;"
        }
    .end annotation

    #@0
    .prologue
    .line 404
    .local p0, "this":Lcom/google/android/maps/ItemizedOverlay;, "Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    iget-object v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mFocused:Lcom/google/android/maps/OverlayItem;

    #@2
    return-object v0
.end method

.method protected getIndexToDraw(I)I
    .locals 1
    .param p1, "drawingOrder"    # I

    #@0
    .prologue
    .line 211
    .local p0, "this":Lcom/google/android/maps/ItemizedOverlay;, "Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    iget-object v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mRanksOrderedByLat:[I

    #@2
    aget v0, v0, p1

    #@4
    return v0
.end method

.method public final getItem(I)Lcom/google/android/maps/OverlayItem;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    #@0
    .prologue
    .line 419
    .local p0, "this":Lcom/google/android/maps/ItemizedOverlay;, "Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    iget-object v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mItemsOrderedByRank:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/maps/OverlayItem;

    #@8
    return-object v0
.end method

.method public final getLastFocusedIndex()I
    .locals 1

    #@0
    .prologue
    .line 412
    .local p0, "this":Lcom/google/android/maps/ItemizedOverlay;, "Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    iget v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mLastFocusedIndex:I

    #@2
    return v0
.end method

.method public getLatSpanE6()I
    .locals 1

    #@0
    .prologue
    .line 278
    .local p0, "this":Lcom/google/android/maps/ItemizedOverlay;, "Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    iget v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mLatSpanE6:I

    #@2
    return v0
.end method

.method public getLonSpanE6()I
    .locals 1

    #@0
    .prologue
    .line 288
    .local p0, "this":Lcom/google/android/maps/ItemizedOverlay;, "Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    iget v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mLonSpanE6:I

    #@2
    return v0
.end method

.method protected hitTest(Lcom/google/android/maps/OverlayItem;Landroid/graphics/drawable/Drawable;II)Z
    .locals 2
    .param p2, "marker"    # Landroid/graphics/drawable/Drawable;
    .param p3, "hitX"    # I
    .param p4, "hitY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;",
            "Landroid/graphics/drawable/Drawable;",
            "II)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 671
    .local p0, "this":Lcom/google/android/maps/ItemizedOverlay;, "Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    .local p1, "item":Lcom/google/android/maps/OverlayItem;, "TItem;"
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@3
    move-result-object v1

    #@4
    invoke-direct {p0, v1}, Lcom/google/android/maps/ItemizedOverlay;->getTouchableBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    #@7
    move-result-object v0

    #@8
    .line 672
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0, p3, p4}, Landroid/graphics/Rect;->contains(II)Z

    #@b
    move-result v1

    #@c
    return v1
.end method

.method public nextFocus(Z)Lcom/google/android/maps/OverlayItem;
    .locals 3
    .param p1, "forwards"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TItem;"
        }
    .end annotation

    #@0
    .prologue
    .line 428
    .local p0, "this":Lcom/google/android/maps/ItemizedOverlay;, "Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    iget v2, p0, Lcom/google/android/maps/ItemizedOverlay;->mLastFocusedIndex:I

    #@2
    if-eqz p1, :cond_0

    #@4
    const/4 v1, 0x1

    #@5
    :goto_0
    add-int v0, v2, v1

    #@7
    .line 429
    .local v0, "rank":I
    if-ltz v0, :cond_1

    #@9
    iget-object v1, p0, Lcom/google/android/maps/ItemizedOverlay;->mRanksOrderedByLat:[I

    #@b
    array-length v1, v1

    #@c
    if-ge v0, v1, :cond_1

    #@e
    .line 430
    invoke-virtual {p0, v0}, Lcom/google/android/maps/ItemizedOverlay;->getItem(I)Lcom/google/android/maps/OverlayItem;

    #@11
    move-result-object v1

    #@12
    return-object v1

    #@13
    .line 428
    .end local v0    # "rank":I
    :cond_0
    const/4 v1, -0x1

    #@14
    goto :goto_0

    #@15
    .line 432
    .restart local v0    # "rank":I
    :cond_1
    const/4 v1, 0x0

    #@16
    return-object v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;Lcom/google/android/maps/MapView;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "mapView"    # Lcom/google/android/maps/MapView;

    #@0
    .prologue
    .line 480
    .local p0, "this":Lcom/google/android/maps/ItemizedOverlay;, "Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 487
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/maps/Overlay;->onKeyUp(ILandroid/view/KeyEvent;Lcom/google/android/maps/MapView;)Z

    #@6
    move-result v0

    #@7
    return v0

    #@8
    .line 483
    :sswitch_0
    invoke-virtual {p0}, Lcom/google/android/maps/ItemizedOverlay;->getFocus()Lcom/google/android/maps/OverlayItem;

    #@b
    move-result-object v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 484
    iget v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mLastFocusedIndex:I

    #@10
    invoke-virtual {p0, v0}, Lcom/google/android/maps/ItemizedOverlay;->onTap(I)Z

    #@13
    move-result v0

    #@14
    return v0

    #@15
    .line 480
    nop

    #@16
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onSnapToItem(IILandroid/graphics/Point;Lcom/google/android/maps/MapView;)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "snapPoint"    # Landroid/graphics/Point;
    .param p4, "mapView"    # Lcom/google/android/maps/MapView;

    #@0
    .prologue
    .line 464
    .local p0, "this":Lcom/google/android/maps/ItemizedOverlay;, "Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/maps/ItemizedOverlay;->getItemAtLocation(IILcom/google/android/maps/MapView;)I

    #@3
    move-result v0

    #@4
    .line 465
    .local v0, "hitRank":I
    const/4 v2, -0x1

    #@5
    if-ne v0, v2, :cond_0

    #@7
    const/4 v2, 0x0

    #@8
    return v2

    #@9
    .line 467
    :cond_0
    iget-object v2, p0, Lcom/google/android/maps/ItemizedOverlay;->mItemsOrderedByRank:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/google/android/maps/OverlayItem;

    #@11
    .line 468
    .local v1, "item":Lcom/google/android/maps/OverlayItem;, "TItem;"
    invoke-virtual {p4}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v1}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    #@18
    move-result-object v3

    #@19
    invoke-interface {v2, v3, p3}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    #@1c
    .line 469
    const/4 v2, 0x1

    #@1d
    return v2
.end method

.method protected onTap(I)Z
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 711
    .local p0, "this":Lcom/google/android/maps/ItemizedOverlay;, "Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onTap(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/MapView;)Z
    .locals 5
    .param p1, "p"    # Lcom/google/android/maps/GeoPoint;
    .param p2, "mapView"    # Lcom/google/android/maps/MapView;

    #@0
    .prologue
    .line 442
    .local p0, "this":Lcom/google/android/maps/ItemizedOverlay;, "Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    #@3
    move-result-object v3

    #@4
    iget-object v4, p0, Lcom/google/android/maps/ItemizedOverlay;->mTempPoint:Landroid/graphics/Point;

    #@6
    invoke-interface {v3, p1, v4}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    #@9
    .line 443
    iget-object v3, p0, Lcom/google/android/maps/ItemizedOverlay;->mTempPoint:Landroid/graphics/Point;

    #@b
    iget v3, v3, Landroid/graphics/Point;->x:I

    #@d
    iget-object v4, p0, Lcom/google/android/maps/ItemizedOverlay;->mTempPoint:Landroid/graphics/Point;

    #@f
    iget v4, v4, Landroid/graphics/Point;->y:I

    #@11
    invoke-direct {p0, v3, v4, p2}, Lcom/google/android/maps/ItemizedOverlay;->getItemAtLocation(IILcom/google/android/maps/MapView;)I

    #@14
    move-result v0

    #@15
    .line 451
    .local v0, "hit":I
    const/4 v1, 0x0

    #@16
    .line 452
    .local v1, "retValue":Z
    const/4 v3, -0x1

    #@17
    if-eq v0, v3, :cond_0

    #@19
    .line 453
    invoke-virtual {p0, v0}, Lcom/google/android/maps/ItemizedOverlay;->onTap(I)Z

    #@1c
    move-result v1

    #@1d
    .line 455
    .end local v1    # "retValue":Z
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/maps/ItemizedOverlay;->focus(I)V

    #@20
    .line 456
    move v2, v0

    #@21
    .line 458
    .local v2, "selectHit":I
    invoke-direct {p0, v2}, Lcom/google/android/maps/ItemizedOverlay;->select(I)V

    #@24
    .line 459
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lcom/google/android/maps/MapView;

    #@0
    .prologue
    .line 574
    .local p0, "this":Lcom/google/android/maps/ItemizedOverlay;, "Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@3
    move-result v0

    #@4
    float-to-int v5, v0

    #@5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@8
    move-result v0

    #@9
    float-to-int v6, v0

    #@a
    .line 572
    const/4 v1, 0x0

    #@b
    .line 573
    const/4 v2, 0x2

    #@c
    move-object v0, p0

    #@d
    move-object v3, p1

    #@e
    move-object v4, p2

    #@f
    .line 572
    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/ItemizedOverlay;->handleMotionEvent(ZILandroid/view/MotionEvent;Lcom/google/android/maps/MapView;II)Z

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lcom/google/android/maps/MapView;

    #@0
    .prologue
    .local p0, "this":Lcom/google/android/maps/ItemizedOverlay;, "Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    const/4 v1, 0x1

    #@1
    .line 475
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getWidth()I

    #@4
    move-result v0

    #@5
    div-int/lit8 v5, v0, 0x2

    #@7
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getHeight()I

    #@a
    move-result v0

    #@b
    div-int/lit8 v6, v0, 0x2

    #@d
    move-object v0, p0

    #@e
    move v2, v1

    #@f
    move-object v3, p1

    #@10
    move-object v4, p2

    #@11
    .line 473
    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/ItemizedOverlay;->handleMotionEvent(ZILandroid/view/MotionEvent;Lcom/google/android/maps/MapView;II)Z

    #@14
    move-result v0

    #@15
    return v0
.end method

.method protected final populate()V
    .locals 17

    #@0
    .prologue
    .line 298
    .local p0, "this":Lcom/google/android/maps/ItemizedOverlay;, "Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/ItemizedOverlay;->size()I

    #@3
    move-result v12

    #@4
    .line 299
    .local v12, "resultCount":I
    const v8, 0x55d4a80

    #@7
    .line 300
    .local v8, "minLat":I
    const v6, -0x55d4a80

    #@a
    .line 301
    .local v6, "maxLat":I
    const v9, 0xaba9500

    #@d
    .line 302
    .local v9, "minLon":I
    const v7, -0xaba9500

    #@10
    .line 306
    .local v7, "maxLon":I
    new-instance v4, Ljava/util/ArrayList;

    #@12
    invoke-direct {v4, v12}, Ljava/util/ArrayList;-><init>(I)V

    #@15
    .line 308
    .local v4, "itemsOrderedByRank":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TItem;>;"
    const/4 v1, 0x0

    #@16
    .local v1, "i":I
    :goto_0
    if-ge v1, v12, :cond_0

    #@18
    .line 309
    move-object/from16 v0, p0

    #@1a
    invoke-virtual {v0, v1}, Lcom/google/android/maps/ItemizedOverlay;->createItem(I)Lcom/google/android/maps/OverlayItem;

    #@1d
    move-result-object v3

    #@1e
    .line 310
    .local v3, "item":Lcom/google/android/maps/OverlayItem;, "TItem;"
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21
    .line 311
    invoke-virtual {v3}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    #@24
    move-result-object v10

    #@25
    .line 312
    .local v10, "point":Lcom/google/android/maps/GeoPoint;
    invoke-virtual {v10}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    #@28
    move-result v15

    #@29
    invoke-static {v8, v15}, Ljava/lang/Math;->min(II)I

    #@2c
    move-result v8

    #@2d
    .line 313
    invoke-virtual {v10}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    #@30
    move-result v15

    #@31
    invoke-static {v6, v15}, Ljava/lang/Math;->max(II)I

    #@34
    move-result v6

    #@35
    .line 314
    invoke-virtual {v10}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    #@38
    move-result v15

    #@39
    invoke-static {v9, v15}, Ljava/lang/Math;->min(II)I

    #@3c
    move-result v9

    #@3d
    .line 315
    invoke-virtual {v10}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    #@40
    move-result v15

    #@41
    invoke-static {v7, v15}, Ljava/lang/Math;->max(II)I

    #@44
    move-result v7

    #@45
    .line 308
    add-int/lit8 v1, v1, 0x1

    #@47
    goto :goto_0

    #@48
    .line 317
    .end local v3    # "item":Lcom/google/android/maps/OverlayItem;, "TItem;"
    .end local v10    # "point":Lcom/google/android/maps/GeoPoint;
    :cond_0
    sub-int v15, v6, v8

    #@4a
    move-object/from16 v0, p0

    #@4c
    iput v15, v0, Lcom/google/android/maps/ItemizedOverlay;->mLatSpanE6:I

    #@4e
    .line 318
    sub-int v15, v7, v9

    #@50
    move-object/from16 v0, p0

    #@52
    iput v15, v0, Lcom/google/android/maps/ItemizedOverlay;->mLonSpanE6:I

    #@54
    .line 321
    new-array v11, v12, [I

    #@56
    .line 322
    .local v11, "ranksOrderedByLat":[I
    const/4 v1, 0x0

    #@57
    :goto_1
    if-ge v1, v12, :cond_4

    #@59
    .line 325
    move v2, v1

    #@5a
    .line 326
    .local v2, "insertRank":I
    const/4 v5, 0x0

    #@5b
    .local v5, "j":I
    :goto_2
    if-gt v5, v1, :cond_3

    #@5d
    .line 327
    aget v15, v11, v5

    #@5f
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@62
    move-result-object v13

    #@63
    check-cast v13, Lcom/google/android/maps/OverlayItem;

    #@65
    .line 328
    .local v13, "sorted":Lcom/google/android/maps/OverlayItem;, "TItem;"
    if-eq v5, v1, :cond_1

    #@67
    .line 329
    invoke-virtual {v13}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    #@6a
    move-result-object v15

    #@6b
    invoke-virtual {v15}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    #@6e
    move-result v16

    #@6f
    .line 330
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@72
    move-result-object v15

    #@73
    check-cast v15, Lcom/google/android/maps/OverlayItem;

    #@75
    invoke-virtual {v15}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    #@78
    move-result-object v15

    #@79
    invoke-virtual {v15}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    #@7c
    move-result v15

    #@7d
    .line 329
    move/from16 v0, v16

    #@7f
    if-ge v0, v15, :cond_2

    #@81
    .line 332
    :cond_1
    aget v14, v11, v5

    #@83
    .line 333
    .local v14, "tmp":I
    aput v2, v11, v5

    #@85
    .line 334
    move v2, v14

    #@86
    .line 326
    .end local v14    # "tmp":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    #@88
    goto :goto_2

    #@89
    .line 322
    .end local v13    # "sorted":Lcom/google/android/maps/OverlayItem;, "TItem;"
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@8b
    goto :goto_1

    #@8c
    .line 338
    .end local v2    # "insertRank":I
    .end local v5    # "j":I
    :cond_4
    move-object/from16 v0, p0

    #@8e
    iput-object v11, v0, Lcom/google/android/maps/ItemizedOverlay;->mRanksOrderedByLat:[I

    #@90
    .line 339
    move-object/from16 v0, p0

    #@92
    iput-object v4, v0, Lcom/google/android/maps/ItemizedOverlay;->mItemsOrderedByRank:Ljava/util/ArrayList;

    #@94
    .line 342
    new-array v15, v12, [I

    #@96
    move-object/from16 v0, p0

    #@98
    iput-object v15, v0, Lcom/google/android/maps/ItemizedOverlay;->mItemState:[I

    #@9a
    .line 343
    const/4 v15, -0x1

    #@9b
    move-object/from16 v0, p0

    #@9d
    iput v15, v0, Lcom/google/android/maps/ItemizedOverlay;->mCurrentlySelectedItemRank:I

    #@9f
    .line 344
    const/4 v15, -0x1

    #@a0
    move-object/from16 v0, p0

    #@a2
    iput v15, v0, Lcom/google/android/maps/ItemizedOverlay;->mCurrentlyPressedItemRank:I

    #@a4
    .line 345
    const/4 v15, 0x0

    #@a5
    move-object/from16 v0, p0

    #@a7
    iput v15, v0, Lcom/google/android/maps/ItemizedOverlay;->mInGestureMask:I

    #@a9
    .line 297
    return-void
.end method

.method public setDrawFocusedItem(Z)V
    .locals 0
    .param p1, "drawFocusedItem"    # Z

    #@0
    .prologue
    .line 685
    .local p0, "this":Lcom/google/android/maps/ItemizedOverlay;, "Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    iput-boolean p1, p0, Lcom/google/android/maps/ItemizedOverlay;->mDrawFocusedItem:Z

    #@2
    .line 684
    return-void
.end method

.method public setFocus(Lcom/google/android/maps/OverlayItem;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Lcom/google/android/maps/ItemizedOverlay;, "Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    .local p1, "item":Lcom/google/android/maps/OverlayItem;, "TItem;"
    const/4 v4, 0x0

    #@1
    .line 385
    if-nez p1, :cond_1

    #@3
    .line 386
    iget v3, p0, Lcom/google/android/maps/ItemizedOverlay;->mLastFocusedIndex:I

    #@5
    invoke-direct {p0, v3, v4}, Lcom/google/android/maps/ItemizedOverlay;->setFocus(ILcom/google/android/maps/OverlayItem;)V

    #@8
    .line 384
    :cond_0
    return-void

    #@9
    .line 388
    :cond_1
    const/4 v2, 0x0

    #@a
    .line 389
    .local v2, "index":I
    iget-object v3, p0, Lcom/google/android/maps/ItemizedOverlay;->mItemsOrderedByRank:Ljava/util/ArrayList;

    #@c
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    .local v1, "candidate$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_0

    #@16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lcom/google/android/maps/OverlayItem;

    #@1c
    .line 390
    .local v0, "candidate":Lcom/google/android/maps/OverlayItem;, "TItem;"
    if-ne v0, p1, :cond_2

    #@1e
    .line 391
    invoke-direct {p0, v2, v0}, Lcom/google/android/maps/ItemizedOverlay;->setFocus(ILcom/google/android/maps/OverlayItem;)V

    #@21
    .line 392
    return-void

    #@22
    .line 394
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@24
    goto :goto_0
.end method

.method protected setLastFocusedIndex(I)V
    .locals 0
    .param p1, "lastFocusedIndex"    # I

    #@0
    .prologue
    .line 357
    .local p0, "this":Lcom/google/android/maps/ItemizedOverlay;, "Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    iput p1, p0, Lcom/google/android/maps/ItemizedOverlay;->mLastFocusedIndex:I

    #@2
    .line 356
    return-void
.end method

.method public setOnFocusChangeListener(Lcom/google/android/maps/ItemizedOverlay$OnFocusChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/google/android/maps/ItemizedOverlay$OnFocusChangeListener;

    #@0
    .prologue
    .line 676
    .local p0, "this":Lcom/google/android/maps/ItemizedOverlay;, "Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    iput-object p1, p0, Lcom/google/android/maps/ItemizedOverlay;->mOnFocusChangeListener:Lcom/google/android/maps/ItemizedOverlay$OnFocusChangeListener;

    #@2
    .line 675
    return-void
.end method

.method public abstract size()I
.end method
