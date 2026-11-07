.class public abstract Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# static fields
.field private static final blacklist ABS_HORIZONTAL_DIR_FLAGS:I = 0xc0c0c

.field public static final blacklist DEFAULT_DRAG_ANIMATION_DURATION:I = 0xc8

.field public static final blacklist DEFAULT_SWIPE_ANIMATION_DURATION:I = 0xfa

.field private static final blacklist DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS:J = 0x7d0L

.field static final blacklist RELATIVE_DIR_FLAGS:I = 0x303030

.field private static final blacklist sDragScrollInterpolator:Landroid/view/animation/Interpolator;

.field private static final blacklist sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

.field private static final blacklist sUICallback:Lcom/android/internal/widget/helper/ItemTouchUIUtil;


# instance fields
.field private blacklist mCachedMaxScrollSpeed:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1355
    new-instance v0, Lcom/android/internal/widget/helper/ItemTouchUIUtilImpl;

    invoke-direct {v0}, Lcom/android/internal/widget/helper/ItemTouchUIUtilImpl;-><init>()V

    sput-object v0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sUICallback:Lcom/android/internal/widget/helper/ItemTouchUIUtil;

    .line 1361
    new-instance v0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback$1;

    invoke-direct {v0}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sDragScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 1368
    new-instance v0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback$2;

    invoke-direct {v0}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback$2;-><init>()V

    sput-object v0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 1345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1381
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    return-void
.end method

.method public static blacklist convertToRelativeDirection(II)I
    .registers 6
    .param p0, "flags"    # I
    .param p1, "layoutDirection"    # I

    .line 1439
    const v0, 0xc0c0c

    and-int v1, p0, v0

    .line 1440
    .local v1, "masked":I
    if-nez v1, :cond_8

    .line 1441
    return p0

    .line 1443
    :cond_8
    not-int v2, v1

    and-int/2addr p0, v2

    .line 1444
    if-nez p1, :cond_10

    .line 1446
    shl-int/lit8 v0, v1, 0x2

    or-int/2addr p0, v0

    .line 1447
    return p0

    .line 1450
    :cond_10
    shl-int/lit8 v2, v1, 0x1

    const v3, -0xc0c0d

    and-int/2addr v2, v3

    or-int/2addr p0, v2

    .line 1452
    shl-int/lit8 v2, v1, 0x1

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x2

    or-int/2addr p0, v0

    .line 1454
    return p0
.end method

.method public static blacklist getDefaultUIUtil()Lcom/android/internal/widget/helper/ItemTouchUIUtil;
    .registers 1

    .line 1424
    sget-object v0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sUICallback:Lcom/android/internal/widget/helper/ItemTouchUIUtil;

    return-object v0
.end method

.method private blacklist getMaxDragScroll(Lcom/android/internal/widget/RecyclerView;)I
    .registers 4
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;

    .line 1849
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    .line 1850
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    .line 1853
    :cond_12
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    return v0
.end method

.method public static blacklist makeFlag(II)I
    .registers 3
    .param p0, "actionState"    # I
    .param p1, "directions"    # I

    .line 1485
    mul-int/lit8 v0, p0, 0x8

    shl-int v0, p1, v0

    return v0
.end method

.method public static blacklist makeMovementFlags(II)I
    .registers 4
    .param p0, "dragFlags"    # I
    .param p1, "swipeFlags"    # I

    .line 1469
    const/4 v0, 0x0

    or-int v1, p1, p0

    invoke-static {v0, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result v0

    .line 1470
    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result v1

    or-int/2addr v0, v1

    .line 1471
    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result v1

    or-int/2addr v0, v1

    .line 1469
    return v0
.end method


# virtual methods
.method public blacklist canDropOver(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .registers 5
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "current"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 1580
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist chooseDropTarget(Lcom/android/internal/widget/RecyclerView$ViewHolder;Ljava/util/List;II)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 17
    .param p1, "selected"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p3, "curX"    # I
    .param p4, "curY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;II)",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;"
        }
    .end annotation

    .line 1750
    .local p2, "dropTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, p3

    .line 1751
    .local v0, "right":I
    iget-object v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int v1, p4, v1

    .line 1752
    .local v1, "bottom":I
    const/4 v2, 0x0

    .line 1753
    .local v2, "winner":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    const/4 v3, -0x1

    .line 1754
    .local v3, "winnerScore":I
    iget-object v4, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v4, p3, v4

    .line 1755
    .local v4, "dx":I
    iget-object v5, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v5, p4, v5

    .line 1756
    .local v5, "dy":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    .line 1757
    .local v6, "targetsSize":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_26
    if-ge v7, v6, :cond_b7

    .line 1758
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 1759
    .local v8, "target":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-lez v4, :cond_4f

    .line 1760
    iget-object v9, v8, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int/2addr v9, v0

    .line 1761
    .local v9, "diff":I
    if-gez v9, :cond_4f

    iget-object v10, v8, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    iget-object v11, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    if-le v10, v11, :cond_4f

    .line 1762
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 1763
    .local v10, "score":I
    if-le v10, v3, :cond_4f

    .line 1764
    move v3, v10

    .line 1765
    move-object v2, v8

    .line 1769
    .end local v9    # "diff":I
    .end local v10    # "score":I
    :cond_4f
    if-gez v4, :cond_70

    .line 1770
    iget-object v9, v8, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v9, p3

    .line 1771
    .restart local v9    # "diff":I
    if-lez v9, :cond_70

    iget-object v10, v8, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    iget-object v11, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    if-ge v10, v11, :cond_70

    .line 1772
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 1773
    .restart local v10    # "score":I
    if-le v10, v3, :cond_70

    .line 1774
    move v3, v10

    .line 1775
    move-object v2, v8

    .line 1779
    .end local v9    # "diff":I
    .end local v10    # "score":I
    :cond_70
    if-gez v5, :cond_92

    .line 1780
    iget-object v9, v8, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v9, p4

    .line 1781
    .restart local v9    # "diff":I
    if-lez v9, :cond_92

    iget-object v10, v8, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    iget-object v11, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    if-ge v10, v11, :cond_92

    .line 1782
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 1783
    .restart local v10    # "score":I
    if-le v10, v3, :cond_92

    .line 1784
    move v3, v10

    .line 1785
    move-object v2, v8

    .line 1790
    .end local v9    # "diff":I
    .end local v10    # "score":I
    :cond_92
    if-lez v5, :cond_b3

    .line 1791
    iget-object v9, v8, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    sub-int/2addr v9, v1

    .line 1792
    .restart local v9    # "diff":I
    if-gez v9, :cond_b3

    iget-object v10, v8, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    iget-object v11, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v11

    if-le v10, v11, :cond_b3

    .line 1793
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 1794
    .restart local v10    # "score":I
    if-le v10, v3, :cond_b3

    .line 1795
    move v3, v10

    .line 1796
    move-object v2, v8

    .line 1757
    .end local v8    # "target":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v9    # "diff":I
    .end local v10    # "score":I
    :cond_b3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_26

    .line 1801
    .end local v7    # "i":I
    :cond_b7
    return-object v2
.end method

.method public blacklist clearView(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 5
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 1986
    sget-object v0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sUICallback:Lcom/android/internal/widget/helper/ItemTouchUIUtil;

    iget-object v1, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/helper/ItemTouchUIUtil;->clearView(Landroid/view/View;)V

    .line 1987
    return-void
.end method

.method public blacklist convertToAbsoluteDirection(II)I
    .registers 7
    .param p1, "flags"    # I
    .param p2, "layoutDirection"    # I

    .line 1528
    const v0, 0x303030

    and-int v1, p1, v0

    .line 1529
    .local v1, "masked":I
    if-nez v1, :cond_8

    .line 1530
    return p1

    .line 1532
    :cond_8
    not-int v2, v1

    and-int/2addr p1, v2

    .line 1533
    if-nez p2, :cond_10

    .line 1535
    shr-int/lit8 v0, v1, 0x2

    or-int/2addr p1, v0

    .line 1536
    return p1

    .line 1539
    :cond_10
    shr-int/lit8 v2, v1, 0x1

    const v3, -0x303031

    and-int/2addr v2, v3

    or-int/2addr p1, v2

    .line 1541
    shr-int/lit8 v2, v1, 0x1

    and-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x2

    or-int/2addr p1, v0

    .line 1543
    return p1
.end method

.method final blacklist getAbsoluteMovementFlags(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I
    .registers 5
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 1548
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getMovementFlags(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 1549
    .local v0, "flags":I
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getLayoutDirection()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result v1

    return v1
.end method

.method public blacklist getAnimationDuration(Lcom/android/internal/widget/RecyclerView;IFF)J
    .registers 8
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "animationType"    # I
    .param p3, "animateDx"    # F
    .param p4, "animateDy"    # F

    .line 2079
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getItemAnimator()Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 2080
    .local v0, "itemAnimator":Lcom/android/internal/widget/RecyclerView$ItemAnimator;
    const/16 v1, 0x8

    if-nez v0, :cond_10

    .line 2081
    if-ne p2, v1, :cond_d

    const-wide/16 v1, 0xc8

    goto :goto_f

    .line 2082
    :cond_d
    const-wide/16 v1, 0xfa

    .line 2081
    :goto_f
    return-wide v1

    .line 2084
    :cond_10
    if-ne p2, v1, :cond_17

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->getMoveDuration()J

    move-result-wide v1

    goto :goto_1b

    .line 2085
    :cond_17
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->getRemoveDuration()J

    move-result-wide v1

    .line 2084
    :goto_1b
    return-wide v1
.end method

.method public blacklist getBoundingBoxMargin()I
    .registers 2

    .line 1643
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMoveThreshold(Lcom/android/internal/widget/RecyclerView$ViewHolder;)F
    .registers 3
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 1671
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public abstract blacklist getMovementFlags(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I
.end method

.method public blacklist getSwipeEscapeVelocity(F)F
    .registers 2
    .param p1, "defaultValue"    # F

    .line 1696
    return p1
.end method

.method public blacklist getSwipeThreshold(Lcom/android/internal/widget/RecyclerView$ViewHolder;)F
    .registers 3
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 1658
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public blacklist getSwipeVelocityThreshold(F)F
    .registers 2
    .param p1, "defaultValue"    # F

    .line 1719
    return p1
.end method

.method blacklist hasDragFlag(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .registers 5
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 1553
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 1554
    .local v0, "flags":I
    const/high16 v1, 0xff0000

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method blacklist hasSwipeFlag(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .registers 5
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 1559
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 1560
    .local v0, "flags":I
    const v1, 0xff00

    and-int/2addr v1, v0

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public blacklist interpolateOutOfBoundsScroll(Lcom/android/internal/widget/RecyclerView;IIIJ)I
    .registers 15
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "viewSize"    # I
    .param p3, "viewSizeOutOfBounds"    # I
    .param p4, "totalSize"    # I
    .param p5, "msSinceStartScroll"    # J

    .line 2112
    invoke-direct {p0, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getMaxDragScroll(Lcom/android/internal/widget/RecyclerView;)I

    move-result v0

    .line 2113
    .local v0, "maxScroll":I
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 2114
    .local v1, "absOutOfBounds":I
    int-to-float v2, p3

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    .line 2116
    .local v2, "direction":I
    int-to-float v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    int-to-float v5, p2

    div-float/2addr v3, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 2117
    .local v3, "outOfBoundsRatio":F
    mul-int v4, v2, v0

    int-to-float v4, v4

    sget-object v5, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

    .line 2118
    invoke-interface {v5, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 2120
    .local v4, "cappedScroll":I
    const-wide/16 v5, 0x7d0

    cmp-long v5, p5, v5

    if-lez v5, :cond_2c

    .line 2121
    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "timeRatio":F
    goto :goto_30

    .line 2123
    .end local v5    # "timeRatio":F
    :cond_2c
    long-to-float v5, p5

    const/high16 v6, 0x44fa0000    # 2000.0f

    div-float/2addr v5, v6

    .line 2125
    .restart local v5    # "timeRatio":F
    :goto_30
    int-to-float v6, v4

    sget-object v7, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sDragScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 2126
    invoke-interface {v7, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 2127
    .local v6, "value":I
    if-nez v6, :cond_41

    .line 2128
    if-lez p3, :cond_3f

    const/4 v7, 0x1

    goto :goto_40

    :cond_3f
    const/4 v7, -0x1

    :goto_40
    return v7

    .line 2130
    :cond_41
    return v6
.end method

.method public blacklist isItemViewSwipeEnabled()Z
    .registers 2

    .line 1632
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isLongPressDragEnabled()Z
    .registers 2

    .line 1617
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist onChildDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;FFIZ)V
    .registers 16
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p3, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .line 2019
    sget-object v0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sUICallback:Lcom/android/internal/widget/helper/ItemTouchUIUtil;

    iget-object v3, p3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .end local p1    # "c":Landroid/graphics/Canvas;
    .end local p2    # "recyclerView":Lcom/android/internal/widget/RecyclerView;
    .end local p4    # "dX":F
    .end local p5    # "dY":F
    .end local p6    # "actionState":I
    .end local p7    # "isCurrentlyActive":Z
    .local v1, "c":Landroid/graphics/Canvas;
    .local v2, "recyclerView":Lcom/android/internal/widget/RecyclerView;
    .local v4, "dX":F
    .local v5, "dY":F
    .local v6, "actionState":I
    .local v7, "isCurrentlyActive":Z
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/widget/helper/ItemTouchUIUtil;->onDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Landroid/view/View;FFIZ)V

    .line 2021
    return-void
.end method

.method public blacklist onChildDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;FFIZ)V
    .registers 16
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p3, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .line 2053
    sget-object v0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sUICallback:Lcom/android/internal/widget/helper/ItemTouchUIUtil;

    iget-object v3, p3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .end local p1    # "c":Landroid/graphics/Canvas;
    .end local p2    # "recyclerView":Lcom/android/internal/widget/RecyclerView;
    .end local p4    # "dX":F
    .end local p5    # "dY":F
    .end local p6    # "actionState":I
    .end local p7    # "isCurrentlyActive":Z
    .local v1, "c":Landroid/graphics/Canvas;
    .local v2, "recyclerView":Lcom/android/internal/widget/RecyclerView;
    .local v4, "dX":F
    .local v5, "dY":F
    .local v6, "actionState":I
    .local v7, "isCurrentlyActive":Z
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/widget/helper/ItemTouchUIUtil;->onDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Landroid/view/View;FFIZ)V

    .line 2055
    return-void
.end method

.method blacklist onDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V
    .registers 21
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/android/internal/widget/RecyclerView;
    .param p3, "selected"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p5, "actionState"    # I
    .param p6, "dX"    # F
    .param p7, "dY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/android/internal/widget/RecyclerView;",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;",
            ">;IFF)V"
        }
    .end annotation

    .line 1926
    .local p4, "recoverAnimationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;>;"
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v8

    .line 1927
    .local v8, "recoverAnimSize":I
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_6
    if-ge v9, v8, :cond_2d

    .line 1928
    move-object/from16 v10, p4

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 1929
    .local v11, "anim":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    invoke-virtual {v11}, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->update()V

    .line 1930
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v12

    .line 1931
    .local v12, "count":I
    iget-object v3, v11, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget v4, v11, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    iget v5, v11, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    iget v6, v11, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mActionState:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 1933
    invoke-virtual {p1, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1927
    .end local v11    # "anim":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    .end local v12    # "count":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_2d
    move-object/from16 v10, p4

    .line 1935
    .end local v9    # "i":I
    if-eqz p3, :cond_47

    .line 1936
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 1937
    .local v9, "count":I
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v6, p5

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 1938
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1940
    .end local v9    # "count":I
    :cond_47
    return-void
.end method

.method blacklist onDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V
    .registers 21
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/android/internal/widget/RecyclerView;
    .param p3, "selected"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p5, "actionState"    # I
    .param p6, "dX"    # F
    .param p7, "dY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/android/internal/widget/RecyclerView;",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;",
            ">;IFF)V"
        }
    .end annotation

    .line 1945
    .local p4, "recoverAnimationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;>;"
    move-object/from16 v8, p4

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 1946
    .local v9, "recoverAnimSize":I
    const/4 v0, 0x0

    move v10, v0

    .local v10, "i":I
    :goto_8
    if-ge v10, v9, :cond_2a

    .line 1947
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 1948
    .local v11, "anim":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v12

    .line 1949
    .local v12, "count":I
    iget-object v3, v11, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget v4, v11, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    iget v5, v11, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    iget v6, v11, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mActionState:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 1951
    invoke-virtual {p1, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1946
    .end local v11    # "anim":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    .end local v12    # "count":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 1953
    .end local v10    # "i":I
    :cond_2a
    if-eqz p3, :cond_42

    .line 1954
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 1955
    .local v10, "count":I
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v6, p5

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 1956
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1958
    .end local v10    # "count":I
    :cond_42
    const/4 v0, 0x0

    .line 1959
    .local v0, "hasRunningAnimation":Z
    add-int/lit8 v2, v9, -0x1

    .local v2, "i":I
    :goto_45
    if-ltz v2, :cond_61

    .line 1960
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 1961
    .local v3, "anim":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    iget-boolean v4, v3, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-eqz v4, :cond_59

    iget-boolean v4, v3, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mIsPendingCleanup:Z

    if-nez v4, :cond_59

    .line 1962
    invoke-interface {v8, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_5e

    .line 1963
    :cond_59
    iget-boolean v4, v3, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-nez v4, :cond_5e

    .line 1964
    const/4 v0, 0x1

    .line 1959
    .end local v3    # "anim":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    :cond_5e
    :goto_5e
    add-int/lit8 v2, v2, -0x1

    goto :goto_45

    .line 1967
    .end local v2    # "i":I
    :cond_61
    if-eqz v0, :cond_66

    .line 1968
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView;->invalidate()V

    .line 1970
    :cond_66
    return-void
.end method

.method public abstract blacklist onMove(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
.end method

.method public blacklist onMoved(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;ILcom/android/internal/widget/RecyclerView$ViewHolder;III)V
    .registers 13
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p3, "fromPos"    # I
    .param p4, "target"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p5, "toPos"    # I
    .param p6, "x"    # I
    .param p7, "y"    # I

    .line 1892
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 1893
    .local v0, "layoutManager":Lcom/android/internal/widget/RecyclerView$LayoutManager;
    instance-of v1, v0, Lcom/android/internal/widget/helper/ItemTouchHelper$ViewDropHandler;

    if-eqz v1, :cond_13

    .line 1894
    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/helper/ItemTouchHelper$ViewDropHandler;

    iget-object v2, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v3, p4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v1, v2, v3, p6, p7}, Lcom/android/internal/widget/helper/ItemTouchHelper$ViewDropHandler;->prepareForDrop(Landroid/view/View;Landroid/view/View;II)V

    .line 1896
    return-void

    .line 1900
    :cond_13
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1901
    iget-object v1, p4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v1

    .line 1902
    .local v1, "minLeft":I
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    if-gt v1, v2, :cond_28

    .line 1903
    invoke-virtual {p1, p5}, Lcom/android/internal/widget/RecyclerView;->scrollToPosition(I)V

    .line 1905
    :cond_28
    iget-object v2, p4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v2

    .line 1906
    .local v2, "maxRight":I
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt v2, v3, :cond_3c

    .line 1907
    invoke-virtual {p1, p5}, Lcom/android/internal/widget/RecyclerView;->scrollToPosition(I)V

    .line 1911
    .end local v1    # "minLeft":I
    .end local v2    # "maxRight":I
    :cond_3c
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 1912
    iget-object v1, p4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v1

    .line 1913
    .local v1, "minTop":I
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    if-gt v1, v2, :cond_51

    .line 1914
    invoke-virtual {p1, p5}, Lcom/android/internal/widget/RecyclerView;->scrollToPosition(I)V

    .line 1916
    :cond_51
    iget-object v2, p4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v2

    .line 1917
    .local v2, "maxBottom":I
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt v2, v3, :cond_65

    .line 1918
    invoke-virtual {p1, p5}, Lcom/android/internal/widget/RecyclerView;->scrollToPosition(I)V

    .line 1921
    .end local v1    # "minTop":I
    .end local v2    # "maxBottom":I
    :cond_65
    return-void
.end method

.method public blacklist onSelectedChanged(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .registers 5
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .line 1843
    if-eqz p1, :cond_9

    .line 1844
    sget-object v0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sUICallback:Lcom/android/internal/widget/helper/ItemTouchUIUtil;

    iget-object v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/helper/ItemTouchUIUtil;->onSelected(Landroid/view/View;)V

    .line 1846
    :cond_9
    return-void
.end method

.method public abstract blacklist onSwiped(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
.end method
