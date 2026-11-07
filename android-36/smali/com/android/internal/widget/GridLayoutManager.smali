.class public Lcom/android/internal/widget/GridLayoutManager;
.super Lcom/android/internal/widget/LinearLayoutManager;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/GridLayoutManager$DefaultSpanSizeLookup;,
        Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;,
        Lcom/android/internal/widget/GridLayoutManager$LayoutParams;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final blacklist DEFAULT_SPAN_COUNT:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "GridLayoutManager"


# instance fields
.field blacklist mCachedBorders:[I

.field final blacklist mDecorInsets:Landroid/graphics/Rect;

.field blacklist mPendingSpanCountChange:Z

.field final blacklist mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

.field final blacklist mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

.field blacklist mSet:[Landroid/view/View;

.field blacklist mSpanCount:I

.field blacklist mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spanCount"    # I

    .line 86
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    .line 60
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 61
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 62
    new-instance v0, Lcom/android/internal/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Lcom/android/internal/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 87
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/GridLayoutManager;->setSpanCount(I)V

    .line 88
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;IIZ)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spanCount"    # I
    .param p3, "orientation"    # I
    .param p4, "reverseLayout"    # Z

    .line 99
    invoke-direct {p0, p1, p3, p4}, Lcom/android/internal/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    .line 60
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 61
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 62
    new-instance v0, Lcom/android/internal/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Lcom/android/internal/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 100
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/GridLayoutManager;->setSpanCount(I)V

    .line 101
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    .line 60
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 61
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 62
    new-instance v0, Lcom/android/internal/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Lcom/android/internal/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 75
    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/widget/GridLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;

    move-result-object v0

    .line 76
    .local v0, "properties":Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;
    iget v1, v0, Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/GridLayoutManager;->setSpanCount(I)V

    .line 77
    return-void
.end method

.method private blacklist assignSpans(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;IIZ)V
    .registers 14
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p3, "count"    # I
    .param p4, "consumedSpanCount"    # I
    .param p5, "layingOutInPrimaryDirection"    # Z

    .line 762
    if-eqz p5, :cond_6

    .line 763
    const/4 v0, 0x0

    .line 764
    .local v0, "start":I
    move v1, p3

    .line 765
    .local v1, "end":I
    const/4 v2, 0x1

    .local v2, "diff":I
    goto :goto_a

    .line 767
    .end local v0    # "start":I
    .end local v1    # "end":I
    .end local v2    # "diff":I
    :cond_6
    add-int/lit8 v0, p3, -0x1

    .line 768
    .restart local v0    # "start":I
    const/4 v1, -0x1

    .line 769
    .restart local v1    # "end":I
    const/4 v2, -0x1

    .line 771
    .restart local v2    # "diff":I
    :goto_a
    const/4 v3, 0x0

    .line 772
    .local v3, "span":I
    move v4, v0

    .local v4, "i":I
    :goto_c
    if-eq v4, v1, :cond_29

    .line 773
    iget-object v5, p0, Lcom/android/internal/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v5, v5, v4

    .line 774
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    .line 775
    .local v6, "params":Lcom/android/internal/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    invoke-direct {p0, p1, p2, v7}, Lcom/android/internal/widget/GridLayoutManager;->getSpanSize(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I

    move-result v7

    iput v7, v6, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 776
    iput v3, v6, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 777
    iget v7, v6, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int/2addr v3, v7

    .line 772
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "params":Lcom/android/internal/widget/GridLayoutManager$LayoutParams;
    add-int/2addr v4, v2

    goto :goto_c

    .line 779
    .end local v4    # "i":I
    :cond_29
    return-void
.end method

.method private blacklist cachePreLayoutSpanMapping()V
    .registers 7

    .line 188
    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    .line 189
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_2a

    .line 190
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    .line 191
    .local v2, "lp":Lcom/android/internal/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v2}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v3

    .line 192
    .local v3, "viewPosition":I
    iget-object v4, p0, Lcom/android/internal/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 193
    iget-object v4, p0, Lcom/android/internal/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 189
    .end local v2    # "lp":Lcom/android/internal/widget/GridLayoutManager$LayoutParams;
    .end local v3    # "viewPosition":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 195
    .end local v1    # "i":I
    :cond_2a
    return-void
.end method

.method private blacklist calculateItemBorders(I)V
    .registers 4
    .param p1, "totalSpace"    # I

    .line 308
    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/widget/GridLayoutManager;->calculateItemBorders([III)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    .line 309
    return-void
.end method

.method static blacklist calculateItemBorders([III)[I
    .registers 10
    .param p0, "cachedBorders"    # [I
    .param p1, "spanCount"    # I
    .param p2, "totalSpace"    # I

    .line 319
    if-eqz p0, :cond_e

    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_e

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget v0, p0, v0

    if-eq v0, p2, :cond_12

    .line 321
    :cond_e
    add-int/lit8 v0, p1, 0x1

    new-array p0, v0, [I

    .line 323
    :cond_12
    const/4 v0, 0x0

    aput v0, p0, v0

    .line 324
    div-int v0, p2, p1

    .line 325
    .local v0, "sizePerSpan":I
    rem-int v1, p2, p1

    .line 326
    .local v1, "sizePerSpanRemainder":I
    const/4 v2, 0x0

    .line 327
    .local v2, "consumedPixels":I
    const/4 v3, 0x0

    .line 328
    .local v3, "additionalSize":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1c
    if-gt v4, p1, :cond_2f

    .line 329
    move v5, v0

    .line 330
    .local v5, "itemSize":I
    add-int/2addr v3, v1

    .line 331
    if-lez v3, :cond_29

    sub-int v6, p1, v3

    if-ge v6, v1, :cond_29

    .line 332
    add-int/lit8 v5, v5, 0x1

    .line 333
    sub-int/2addr v3, p1

    .line 335
    :cond_29
    add-int/2addr v2, v5

    .line 336
    aput v2, p0, v4

    .line 328
    .end local v5    # "itemSize":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 338
    .end local v4    # "i":I
    :cond_2f
    return-object p0
.end method

.method private blacklist clearPreLayoutSpanMappingCache()V
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 184
    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 185
    return-void
.end method

.method private blacklist ensureAnchorIsInCorrectSpan(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;I)V
    .registers 11
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p3, "anchorInfo"    # Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;
    .param p4, "itemDirection"    # I

    .line 385
    const/4 v0, 0x1

    if-ne p4, v0, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    .line 387
    .local v1, "layingOutInPrimaryDirection":Z
    :goto_6
    iget v2, p3, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/widget/GridLayoutManager;->getSpanIndex(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I

    move-result v2

    .line 388
    .local v2, "span":I
    if-eqz v1, :cond_20

    .line 390
    :goto_e
    if-lez v2, :cond_38

    iget v3, p3, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    if-lez v3, :cond_38

    .line 391
    iget v3, p3, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    sub-int/2addr v3, v0

    iput v3, p3, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 392
    iget v3, p3, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v3}, Lcom/android/internal/widget/GridLayoutManager;->getSpanIndex(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I

    move-result v2

    goto :goto_e

    .line 396
    :cond_20
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v0

    .line 397
    .local v3, "indexLimit":I
    iget v0, p3, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 398
    .local v0, "pos":I
    move v4, v2

    .line 399
    .local v4, "bestSpan":I
    :goto_28
    if-ge v0, v3, :cond_36

    .line 400
    add-int/lit8 v5, v0, 0x1

    invoke-direct {p0, p1, p2, v5}, Lcom/android/internal/widget/GridLayoutManager;->getSpanIndex(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I

    move-result v5

    .line 401
    .local v5, "next":I
    if-le v5, v4, :cond_36

    .line 402
    add-int/lit8 v0, v0, 0x1

    .line 403
    move v4, v5

    .line 407
    .end local v5    # "next":I
    goto :goto_28

    .line 408
    :cond_36
    iput v0, p3, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 410
    .end local v0    # "pos":I
    .end local v3    # "indexLimit":I
    .end local v4    # "bestSpan":I
    :cond_38
    return-void
.end method

.method private blacklist ensureViewSet()V
    .registers 3

    .line 362
    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    if-eq v0, v1, :cond_11

    .line 363
    :cond_b
    iget v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 365
    :cond_11
    return-void
.end method

.method private blacklist getSpanGroupIndex(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I
    .registers 7
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p3, "viewPosition"    # I

    .line 448
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_f

    .line 449
    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    iget v1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v0, p3, v1}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v0

    return v0

    .line 451
    :cond_f
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v0

    .line 452
    .local v0, "adapterPosition":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_30

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find span size for pre layout position. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GridLayoutManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/4 v1, 0x0

    return v1

    .line 460
    :cond_30
    iget-object v1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    iget v2, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v1

    return v1
.end method

.method private blacklist getSpanIndex(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I
    .registers 8
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p3, "pos"    # I

    .line 464
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_f

    .line 465
    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    iget v1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v0, p3, v1}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v0

    return v0

    .line 467
    :cond_f
    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 468
    .local v0, "cached":I
    if-eq v0, v1, :cond_19

    .line 469
    return v0

    .line 471
    :cond_19
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v2

    .line 472
    .local v2, "adapterPosition":I
    if-ne v2, v1, :cond_39

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GridLayoutManager"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const/4 v1, 0x0

    return v1

    .line 481
    :cond_39
    iget-object v1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    iget v3, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v1

    return v1
.end method

.method private blacklist getSpanSize(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I
    .registers 8
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p3, "pos"    # I

    .line 485
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_d

    .line 486
    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0, p3}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    return v0

    .line 488
    :cond_d
    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 489
    .local v0, "cached":I
    if-eq v0, v1, :cond_17

    .line 490
    return v0

    .line 492
    :cond_17
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v2

    .line 493
    .local v2, "adapterPosition":I
    if-ne v2, v1, :cond_37

    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GridLayoutManager"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/4 v1, 0x1

    return v1

    .line 502
    :cond_37
    iget-object v1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v1

    return v1
.end method

.method private blacklist guessMeasurement(FI)V
    .registers 5
    .param p1, "maxSizeInOther"    # F
    .param p2, "currentOtherDirSize"    # I

    .line 737
    iget v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 739
    .local v0, "contentSize":I
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/GridLayoutManager;->calculateItemBorders(I)V

    .line 740
    return-void
.end method

.method private blacklist measureChild(Landroid/view/View;IZ)V
    .registers 14
    .param p1, "view"    # Landroid/view/View;
    .param p2, "otherDirParentSpecMode"    # I
    .param p3, "alreadyMeasured"    # Z

    .line 702
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    .line 703
    .local v0, "lp":Lcom/android/internal/widget/GridLayoutManager$LayoutParams;
    iget-object v1, v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 704
    .local v1, "decorInsets":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 706
    .local v2, "verticalInsets":I
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget v4, v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    .line 708
    .local v3, "horizontalInsets":I
    iget v4, v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v5, v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v4

    .line 711
    .local v4, "availableSpaceInOther":I
    iget v5, p0, Lcom/android/internal/widget/GridLayoutManager;->mOrientation:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v5, v7, :cond_43

    .line 712
    iget v5, v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v4, p2, v3, v5, v6}, Lcom/android/internal/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v5

    .line 714
    .local v5, "wSpec":I
    iget-object v6, p0, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v6}, Lcom/android/internal/widget/OrientationHelper;->getTotalSpace()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getHeightMode()I

    move-result v8

    iget v9, v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v6, v8, v2, v9, v7}, Lcom/android/internal/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v6

    .local v6, "hSpec":I
    goto :goto_59

    .line 717
    .end local v5    # "wSpec":I
    .end local v6    # "hSpec":I
    :cond_43
    iget v5, v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v4, p2, v2, v5, v6}, Lcom/android/internal/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v6

    .line 719
    .restart local v6    # "hSpec":I
    iget-object v5, p0, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v5}, Lcom/android/internal/widget/OrientationHelper;->getTotalSpace()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getWidthMode()I

    move-result v8

    iget v9, v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v5, v8, v3, v9, v7}, Lcom/android/internal/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v5

    .line 722
    .restart local v5    # "wSpec":I
    :goto_59
    invoke-direct {p0, p1, v5, v6, p3}, Lcom/android/internal/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 723
    return-void
.end method

.method private blacklist measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthSpec"    # I
    .param p3, "heightSpec"    # I
    .param p4, "alreadyMeasured"    # Z

    .line 744
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 746
    .local v0, "lp":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    if-eqz p4, :cond_d

    .line 747
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/GridLayoutManager;->shouldReMeasureChild(Landroid/view/View;IILcom/android/internal/widget/RecyclerView$LayoutParams;)Z

    move-result v1

    .local v1, "measure":Z
    goto :goto_11

    .line 749
    .end local v1    # "measure":Z
    :cond_d
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/GridLayoutManager;->shouldMeasureChild(Landroid/view/View;IILcom/android/internal/widget/RecyclerView$LayoutParams;)Z

    move-result v1

    .line 751
    .restart local v1    # "measure":Z
    :goto_11
    if-eqz v1, :cond_16

    .line 752
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 754
    :cond_16
    return-void
.end method

.method private blacklist updateMeasurements()V
    .registers 3

    .line 274
    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 275
    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .local v0, "totalSpace":I
    goto :goto_24

    .line 277
    .end local v0    # "totalSpace":I
    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 279
    .restart local v0    # "totalSpace":I
    :goto_24
    invoke-direct {p0, v0}, Lcom/android/internal/widget/GridLayoutManager;->calculateItemBorders(I)V

    .line 280
    return-void
.end method


# virtual methods
.method public blacklist checkLayoutParams(Lcom/android/internal/widget/RecyclerView$LayoutParams;)Z
    .registers 3
    .param p1, "lp"    # Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 250
    instance-of v0, p1, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    return v0
.end method

.method blacklist collectPrefetchPositionsForLayoutState(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .registers 10
    .param p1, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p2, "layoutState"    # Lcom/android/internal/widget/LinearLayoutManager$LayoutState;
    .param p3, "layoutPrefetchRegistry"    # Lcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .line 508
    iget v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    .line 509
    .local v0, "remainingSpan":I
    const/4 v1, 0x0

    .line 510
    .local v1, "count":I
    :goto_3
    iget v2, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_2d

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->hasMore(Lcom/android/internal/widget/RecyclerView$State;)Z

    move-result v2

    if-eqz v2, :cond_2d

    if-lez v0, :cond_2d

    .line 511
    iget v2, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 512
    .local v2, "pos":I
    const/4 v3, 0x0

    iget v4, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-interface {p3, v2, v3}, Lcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 513
    iget-object v3, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v3

    .line 514
    .local v3, "spanSize":I
    sub-int/2addr v0, v3

    .line 515
    iget v4, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v5, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v4, v5

    iput v4, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 516
    nop

    .end local v2    # "pos":I
    .end local v3    # "spanSize":I
    add-int/lit8 v1, v1, 0x1

    .line 517
    goto :goto_3

    .line 518
    :cond_2d
    return-void
.end method

.method blacklist findReferenceChild(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;III)Landroid/view/View;
    .registers 16
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "itemCount"    # I

    .line 415
    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->ensureLayoutState()V

    .line 416
    const/4 v0, 0x0

    .line 417
    .local v0, "invalidMatch":Landroid/view/View;
    const/4 v1, 0x0

    .line 418
    .local v1, "outOfBoundsMatch":Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v2}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    .line 419
    .local v2, "boundsStart":I
    iget-object v3, p0, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v3}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    .line 420
    .local v3, "boundsEnd":I
    if-le p4, p3, :cond_15

    const/4 v4, 0x1

    goto :goto_16

    :cond_15
    const/4 v4, -0x1

    .line 421
    .local v4, "diff":I
    :goto_16
    move v5, p3

    .local v5, "i":I
    :goto_17
    if-eq v5, p4, :cond_53

    .line 422
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 423
    .local v6, "view":Landroid/view/View;
    invoke-virtual {p0, v6}, Lcom/android/internal/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    .line 424
    .local v7, "position":I
    if-ltz v7, :cond_51

    if-ge v7, p5, :cond_51

    .line 425
    invoke-direct {p0, p1, p2, v7}, Lcom/android/internal/widget/GridLayoutManager;->getSpanIndex(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I

    move-result v8

    .line 426
    .local v8, "span":I
    if-eqz v8, :cond_2c

    .line 427
    goto :goto_51

    .line 429
    :cond_2c
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    invoke-virtual {v9}, Lcom/android/internal/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v9

    if-eqz v9, :cond_3c

    .line 430
    if-nez v0, :cond_51

    .line 431
    move-object v0, v6

    goto :goto_51

    .line 433
    :cond_3c
    iget-object v9, p0, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v9, v6}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    if-ge v9, v3, :cond_4e

    iget-object v9, p0, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 434
    invoke-virtual {v9, v6}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v9

    if-ge v9, v2, :cond_4d

    goto :goto_4e

    .line 439
    :cond_4d
    return-object v6

    .line 435
    :cond_4e
    :goto_4e
    if-nez v1, :cond_51

    .line 436
    move-object v1, v6

    .line 421
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "position":I
    .end local v8    # "span":I
    :cond_51
    :goto_51
    add-int/2addr v5, v4

    goto :goto_17

    .line 443
    .end local v5    # "i":I
    :cond_53
    if-eqz v1, :cond_57

    move-object v5, v1

    goto :goto_58

    :cond_57
    move-object v5, v0

    :goto_58
    return-object v5
.end method

.method public blacklist generateDefaultLayoutParams()Lcom/android/internal/widget/RecyclerView$LayoutParams;
    .registers 4

    .line 225
    iget v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-nez v0, :cond_c

    .line 226
    new-instance v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0

    .line 229
    :cond_c
    new-instance v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v2, v1}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public blacklist generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/android/internal/widget/RecyclerView$LayoutParams;
    .registers 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 236
    new-instance v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public blacklist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/widget/RecyclerView$LayoutParams;
    .registers 4
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 241
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_d

    .line 242
    new-instance v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 244
    :cond_d
    new-instance v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public blacklist getColumnCountForAccessibility(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .registers 5
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 133
    iget v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 134
    iget v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    return v0

    .line 136
    :cond_8
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge v0, v1, :cond_10

    .line 137
    const/4 v0, 0x0

    return v0

    .line 140
    :cond_10
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/GridLayoutManager;->getSpanGroupIndex(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist getRowCountForAccessibility(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .registers 5
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 120
    iget v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_7

    .line 121
    iget v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    return v0

    .line 123
    :cond_7
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_10

    .line 124
    const/4 v0, 0x0

    return v0

    .line 127
    :cond_10
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/GridLayoutManager;->getSpanGroupIndex(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method blacklist getSpaceForSpanRange(II)I
    .registers 6
    .param p1, "startSpan"    # I
    .param p2, "spanSize"    # I

    .line 342
    iget v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 343
    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    sub-int/2addr v1, p1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    iget v2, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    aget v1, v1, v2

    sub-int/2addr v0, v1

    return v0

    .line 346
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    add-int v1, p1, p2

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    aget v1, v1, p1

    sub-int/2addr v0, v1

    return v0
.end method

.method public blacklist getSpanCount()I
    .registers 2

    .line 788
    iget v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    return v0
.end method

.method public blacklist getSpanSizeLookup()Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;
    .registers 2

    .line 269
    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    return-object v0
.end method

.method blacklist layoutChunk(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;)V
    .registers 30
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p3, "layoutState"    # Lcom/android/internal/widget/LinearLayoutManager$LayoutState;
    .param p4, "result"    # Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;

    .line 523
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    iget-object v3, v0, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v3}, Lcom/android/internal/widget/OrientationHelper;->getModeInOther()I

    move-result v8

    .line 524
    .local v8, "otherDirSpecMode":I
    const/4 v10, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    if-eq v8, v11, :cond_17

    move v3, v10

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    :goto_18
    move v12, v3

    .line 525
    .local v12, "flexibleInOtherDir":Z
    invoke-virtual {v0}, Lcom/android/internal/widget/GridLayoutManager;->getChildCount()I

    move-result v3

    if-lez v3, :cond_26

    iget-object v3, v0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    iget v4, v0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    aget v3, v3, v4

    goto :goto_27

    :cond_26
    const/4 v3, 0x0

    :goto_27
    move v13, v3

    .line 529
    .local v13, "currentOtherDirSize":I
    if-eqz v12, :cond_2d

    .line 530
    invoke-direct {v0}, Lcom/android/internal/widget/GridLayoutManager;->updateMeasurements()V

    .line 532
    :cond_2d
    iget v3, v6, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    if-ne v3, v10, :cond_33

    move v5, v10

    goto :goto_34

    :cond_33
    const/4 v5, 0x0

    .line 534
    .local v5, "layingOutInPrimaryDirection":Z
    :goto_34
    const/4 v3, 0x0

    .line 535
    .local v3, "count":I
    const/4 v4, 0x0

    .line 536
    .local v4, "consumedSpanCount":I
    iget v14, v0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    .line 537
    .local v14, "remainingSpan":I
    if-nez v5, :cond_48

    .line 538
    iget v15, v6, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-direct {v0, v1, v2, v15}, Lcom/android/internal/widget/GridLayoutManager;->getSpanIndex(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I

    move-result v15

    .line 539
    .local v15, "itemSpanIndex":I
    iget v11, v6, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-direct {v0, v1, v2, v11}, Lcom/android/internal/widget/GridLayoutManager;->getSpanSize(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I

    move-result v11

    .line 540
    .local v11, "itemSpanSize":I
    add-int v14, v15, v11

    .line 542
    .end local v11    # "itemSpanSize":I
    .end local v15    # "itemSpanIndex":I
    :cond_48
    :goto_48
    iget v11, v0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    if-ge v3, v11, :cond_a8

    invoke-virtual {v6, v2}, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->hasMore(Lcom/android/internal/widget/RecyclerView$State;)Z

    move-result v11

    if-eqz v11, :cond_a8

    if-lez v14, :cond_a8

    .line 543
    iget v11, v6, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 544
    .local v11, "pos":I
    invoke-direct {v0, v1, v2, v11}, Lcom/android/internal/widget/GridLayoutManager;->getSpanSize(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I

    move-result v15

    .line 545
    .local v15, "spanSize":I
    iget v9, v0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    if-gt v15, v9, :cond_73

    .line 550
    sub-int/2addr v14, v15

    .line 551
    if-gez v14, :cond_62

    .line 552
    goto :goto_a8

    .line 554
    :cond_62
    invoke-virtual {v6, v1}, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->next(Lcom/android/internal/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v9

    .line 555
    .local v9, "view":Landroid/view/View;
    if-nez v9, :cond_69

    .line 556
    goto :goto_a8

    .line 558
    :cond_69
    add-int/2addr v4, v15

    .line 559
    iget-object v10, v0, Lcom/android/internal/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aput-object v9, v10, v3

    .line 560
    nop

    .end local v9    # "view":Landroid/view/View;
    .end local v11    # "pos":I
    .end local v15    # "spanSize":I
    add-int/lit8 v3, v3, 0x1

    .line 561
    const/4 v10, 0x1

    goto :goto_48

    .line 546
    .restart local v11    # "pos":I
    .restart local v15    # "spanSize":I
    :cond_73
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item at position "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, " requires "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, " spans but GridLayoutManager has only "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v10, v0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, " spans."

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 562
    .end local v11    # "pos":I
    .end local v15    # "spanSize":I
    :cond_a8
    :goto_a8
    if-nez v3, :cond_ae

    .line 563
    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 564
    return-void

    .line 566
    :cond_ae
    const/4 v9, 0x0

    .line 567
    .local v9, "maxSize":I
    const/4 v10, 0x0

    .line 569
    .local v10, "maxSizeInOther":F
    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/GridLayoutManager;->assignSpans(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;IIZ)V

    .line 570
    move v15, v3

    move/from16 v18, v4

    move v11, v5

    .end local v3    # "count":I
    .end local v4    # "consumedSpanCount":I
    .end local v5    # "layingOutInPrimaryDirection":Z
    .local v11, "layingOutInPrimaryDirection":Z
    .local v15, "count":I
    .local v18, "consumedSpanCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_ba
    if-ge v1, v15, :cond_10c

    .line 571
    iget-object v2, v0, Lcom/android/internal/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v2, v2, v1

    .line 572
    .local v2, "view":Landroid/view/View;
    iget-object v3, v6, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v3, :cond_d0

    .line 573
    if-eqz v11, :cond_cb

    .line 574
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/GridLayoutManager;->addView(Landroid/view/View;)V

    const/4 v3, 0x0

    goto :goto_da

    .line 576
    :cond_cb
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/GridLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_da

    .line 579
    :cond_d0
    const/4 v3, 0x0

    if-eqz v11, :cond_d7

    .line 580
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_da

    .line 582
    :cond_d7
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 585
    :goto_da
    iget-object v4, v0, Lcom/android/internal/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/widget/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 586
    invoke-direct {v0, v2, v8, v3}, Lcom/android/internal/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    .line 587
    iget-object v3, v0, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    .line 588
    .local v3, "size":I
    if-le v3, v9, :cond_ec

    .line 589
    move v4, v3

    move v9, v4

    .line 591
    :cond_ec
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    .line 592
    .local v4, "lp":Lcom/android/internal/widget/GridLayoutManager$LayoutParams;
    iget-object v5, v0, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v5

    int-to-float v5, v5

    const/high16 v19, 0x3f800000    # 1.0f

    mul-float v5, v5, v19

    move/from16 v19, v1

    .end local v1    # "i":I
    .local v19, "i":I
    iget v1, v4, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    int-to-float v1, v1

    div-float/2addr v5, v1

    .line 594
    .local v5, "otherSize":F
    cmpl-float v1, v5, v10

    if-lez v1, :cond_109

    .line 595
    move v1, v5

    move v10, v1

    .line 570
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "size":I
    .end local v4    # "lp":Lcom/android/internal/widget/GridLayoutManager$LayoutParams;
    .end local v5    # "otherSize":F
    :cond_109
    add-int/lit8 v1, v19, 0x1

    .end local v19    # "i":I
    .restart local v1    # "i":I
    goto :goto_ba

    :cond_10c
    move/from16 v19, v1

    .line 598
    .end local v1    # "i":I
    if-eqz v12, :cond_12e

    .line 600
    invoke-direct {v0, v10, v13}, Lcom/android/internal/widget/GridLayoutManager;->guessMeasurement(FI)V

    .line 602
    const/4 v1, 0x0

    .line 603
    .end local v9    # "maxSize":I
    .local v1, "maxSize":I
    const/4 v2, 0x0

    move v9, v1

    .end local v1    # "maxSize":I
    .local v2, "i":I
    .restart local v9    # "maxSize":I
    :goto_116
    if-ge v2, v15, :cond_12e

    .line 604
    iget-object v1, v0, Lcom/android/internal/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v1, v1, v2

    .line 605
    .local v1, "view":Landroid/view/View;
    const/4 v3, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v4, v3}, Lcom/android/internal/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    .line 606
    iget-object v3, v0, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    .line 607
    .restart local v3    # "size":I
    if-le v3, v9, :cond_12b

    .line 608
    move v9, v3

    .line 603
    .end local v1    # "view":Landroid/view/View;
    .end local v3    # "size":I
    :cond_12b
    add-int/lit8 v2, v2, 0x1

    goto :goto_116

    .line 614
    .end local v2    # "i":I
    :cond_12e
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12f
    if-ge v1, v15, :cond_1ba

    .line 615
    iget-object v2, v0, Lcom/android/internal/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v2, v2, v1

    .line 616
    .local v2, "view":Landroid/view/View;
    iget-object v3, v0, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    if-eq v3, v9, :cond_1a6

    .line 617
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    .line 618
    .local v3, "lp":Lcom/android/internal/widget/GridLayoutManager$LayoutParams;
    iget-object v4, v3, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 619
    .local v4, "decorInsets":Landroid/graphics/Rect;
    iget v5, v4, Landroid/graphics/Rect;->top:I

    move/from16 v19, v1

    .end local v1    # "i":I
    .restart local v19    # "i":I
    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v1

    iget v1, v3, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v5, v1

    iget v1, v3, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v1

    .line 621
    .local v5, "verticalInsets":I
    iget v1, v4, Landroid/graphics/Rect;->left:I

    move/from16 v20, v1

    iget v1, v4, Landroid/graphics/Rect;->right:I

    add-int v1, v20, v1

    move/from16 v20, v1

    iget v1, v3, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int v1, v20, v1

    move/from16 v20, v1

    iget v1, v3, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int v1, v20, v1

    .line 623
    .local v1, "horizontalInsets":I
    move-object/from16 v20, v4

    .end local v4    # "decorInsets":Landroid/graphics/Rect;
    .local v20, "decorInsets":Landroid/graphics/Rect;
    iget v4, v3, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v21, v8

    .end local v8    # "otherDirSpecMode":I
    .local v21, "otherDirSpecMode":I
    iget v8, v3, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    invoke-virtual {v0, v4, v8}, Lcom/android/internal/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v4

    .line 626
    .local v4, "totalSpaceInOther":I
    iget v8, v0, Lcom/android/internal/widget/GridLayoutManager;->mOrientation:I

    move/from16 v22, v10

    const/4 v10, 0x1

    .end local v10    # "maxSizeInOther":F
    .local v22, "maxSizeInOther":F
    if-ne v8, v10, :cond_18e

    .line 627
    iget v8, v3, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->width:I

    move/from16 v16, v11

    const/4 v10, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    .end local v11    # "layingOutInPrimaryDirection":Z
    .local v16, "layingOutInPrimaryDirection":Z
    invoke-static {v4, v11, v1, v8, v10}, Lcom/android/internal/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v8

    .line 629
    .local v8, "wSpec":I
    sub-int v10, v9, v5

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    move/from16 v23, v1

    const/4 v1, 0x0

    .local v10, "hSpec":I
    goto :goto_1a1

    .line 632
    .end local v8    # "wSpec":I
    .end local v10    # "hSpec":I
    .end local v16    # "layingOutInPrimaryDirection":Z
    .restart local v11    # "layingOutInPrimaryDirection":Z
    :cond_18e
    move/from16 v16, v11

    const/high16 v11, 0x40000000    # 2.0f

    .end local v11    # "layingOutInPrimaryDirection":Z
    .restart local v16    # "layingOutInPrimaryDirection":Z
    sub-int v8, v9, v1

    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 634
    .restart local v8    # "wSpec":I
    iget v10, v3, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->height:I

    move/from16 v23, v1

    const/4 v1, 0x0

    .end local v1    # "horizontalInsets":I
    .local v23, "horizontalInsets":I
    invoke-static {v4, v11, v5, v10, v1}, Lcom/android/internal/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v10

    .line 637
    .restart local v10    # "hSpec":I
    :goto_1a1
    const/4 v1, 0x1

    invoke-direct {v0, v2, v8, v10, v1}, Lcom/android/internal/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_1b0

    .line 616
    .end local v3    # "lp":Lcom/android/internal/widget/GridLayoutManager$LayoutParams;
    .end local v4    # "totalSpaceInOther":I
    .end local v5    # "verticalInsets":I
    .end local v16    # "layingOutInPrimaryDirection":Z
    .end local v19    # "i":I
    .end local v20    # "decorInsets":Landroid/graphics/Rect;
    .end local v21    # "otherDirSpecMode":I
    .end local v22    # "maxSizeInOther":F
    .end local v23    # "horizontalInsets":I
    .local v1, "i":I
    .local v8, "otherDirSpecMode":I
    .local v10, "maxSizeInOther":F
    .restart local v11    # "layingOutInPrimaryDirection":Z
    :cond_1a6
    move/from16 v19, v1

    move/from16 v21, v8

    move/from16 v22, v10

    move/from16 v16, v11

    const/high16 v11, 0x40000000    # 2.0f

    .line 614
    .end local v1    # "i":I
    .end local v2    # "view":Landroid/view/View;
    .end local v8    # "otherDirSpecMode":I
    .end local v10    # "maxSizeInOther":F
    .end local v11    # "layingOutInPrimaryDirection":Z
    .restart local v16    # "layingOutInPrimaryDirection":Z
    .restart local v19    # "i":I
    .restart local v21    # "otherDirSpecMode":I
    .restart local v22    # "maxSizeInOther":F
    :goto_1b0
    add-int/lit8 v1, v19, 0x1

    move/from16 v11, v16

    move/from16 v8, v21

    move/from16 v10, v22

    .end local v19    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_12f

    .end local v16    # "layingOutInPrimaryDirection":Z
    .end local v21    # "otherDirSpecMode":I
    .end local v22    # "maxSizeInOther":F
    .restart local v8    # "otherDirSpecMode":I
    .restart local v10    # "maxSizeInOther":F
    .restart local v11    # "layingOutInPrimaryDirection":Z
    :cond_1ba
    move/from16 v19, v1

    move/from16 v21, v8

    move/from16 v22, v10

    move/from16 v16, v11

    .line 640
    .end local v1    # "i":I
    .end local v8    # "otherDirSpecMode":I
    .end local v10    # "maxSizeInOther":F
    .end local v11    # "layingOutInPrimaryDirection":Z
    .restart local v16    # "layingOutInPrimaryDirection":Z
    .restart local v21    # "otherDirSpecMode":I
    .restart local v22    # "maxSizeInOther":F
    iput v9, v7, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 641
    const/4 v1, 0x0

    .local v1, "left":I
    const/4 v2, 0x0

    .local v2, "right":I
    const/4 v3, 0x0

    .local v3, "top":I
    const/4 v4, 0x0

    .line 642
    .local v4, "bottom":I
    iget v5, v0, Lcom/android/internal/widget/GridLayoutManager;->mOrientation:I

    const/4 v8, -0x1

    const/4 v10, 0x1

    if-ne v5, v10, :cond_1dc

    .line 643
    iget v5, v6, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v5, v8, :cond_1d7

    .line 644
    iget v4, v6, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 645
    sub-int v3, v4, v9

    goto :goto_1e9

    .line 647
    :cond_1d7
    iget v3, v6, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 648
    add-int v4, v3, v9

    goto :goto_1e9

    .line 651
    :cond_1dc
    iget v5, v6, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v5, v8, :cond_1e5

    .line 652
    iget v2, v6, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 653
    sub-int v1, v2, v9

    goto :goto_1e9

    .line 655
    :cond_1e5
    iget v1, v6, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 656
    add-int v2, v1, v9

    .line 659
    :goto_1e9
    const/4 v5, 0x0

    move v8, v5

    .local v8, "i":I
    :goto_1eb
    if-ge v8, v15, :cond_287

    .line 660
    iget-object v5, v0, Lcom/android/internal/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v5, v5, v8

    .line 661
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    .line 662
    .local v10, "params":Lcom/android/internal/widget/GridLayoutManager$LayoutParams;
    iget v11, v0, Lcom/android/internal/widget/GridLayoutManager;->mOrientation:I

    move/from16 v17, v1

    const/4 v1, 0x1

    .end local v1    # "left":I
    .local v17, "left":I
    if-ne v11, v1, :cond_246

    .line 663
    invoke-virtual {v0}, Lcom/android/internal/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-eqz v1, :cond_228

    .line 664
    invoke-virtual {v0}, Lcom/android/internal/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v1

    iget-object v11, v0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    move/from16 v19, v1

    iget v1, v0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v20, v1

    iget v1, v10, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    sub-int v1, v20, v1

    aget v1, v11, v1

    add-int v2, v19, v1

    .line 665
    iget-object v1, v0, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v1

    sub-int v1, v2, v1

    move/from16 v24, v2

    move v2, v1

    move-object v1, v5

    move v5, v4

    move/from16 v4, v24

    .end local v17    # "left":I
    .restart local v1    # "left":I
    goto :goto_261

    .line 667
    .end local v1    # "left":I
    .restart local v17    # "left":I
    :cond_228
    invoke-virtual {v0}, Lcom/android/internal/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v1

    iget-object v11, v0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    move/from16 v19, v1

    iget v1, v10, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    aget v1, v11, v1

    add-int v1, v19, v1

    .line 668
    .end local v17    # "left":I
    .restart local v1    # "left":I
    iget-object v11, v0, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v11, v5}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v11

    add-int v2, v1, v11

    move/from16 v24, v2

    move v2, v1

    move-object v1, v5

    move v5, v4

    move/from16 v4, v24

    goto :goto_261

    .line 671
    .end local v1    # "left":I
    .restart local v17    # "left":I
    :cond_246
    invoke-virtual {v0}, Lcom/android/internal/widget/GridLayoutManager;->getPaddingTop()I

    move-result v1

    iget-object v11, v0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    move/from16 v19, v1

    iget v1, v10, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    aget v1, v11, v1

    add-int v3, v19, v1

    .line 672
    iget-object v1, v0, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v1

    add-int v4, v3, v1

    move-object v1, v5

    move v5, v4

    move v4, v2

    move/from16 v2, v17

    .line 676
    .end local v17    # "left":I
    .local v1, "view":Landroid/view/View;
    .local v2, "left":I
    .local v4, "right":I
    .local v5, "bottom":I
    :goto_261
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/GridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 684
    invoke-virtual {v10}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v11

    if-nez v11, :cond_273

    invoke-virtual {v10}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v11

    if-eqz v11, :cond_271

    goto :goto_273

    :cond_271
    const/4 v11, 0x1

    goto :goto_276

    .line 685
    :cond_273
    :goto_273
    const/4 v11, 0x1

    iput-boolean v11, v7, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 687
    :goto_276
    iget-boolean v11, v7, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v17

    or-int v11, v11, v17

    iput-boolean v11, v7, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 659
    .end local v1    # "view":Landroid/view/View;
    .end local v10    # "params":Lcom/android/internal/widget/GridLayoutManager$LayoutParams;
    add-int/lit8 v8, v8, 0x1

    move v1, v2

    move v2, v4

    move v4, v5

    goto/16 :goto_1eb

    .end local v5    # "bottom":I
    .local v1, "left":I
    .local v2, "right":I
    .local v4, "bottom":I
    :cond_287
    move/from16 v17, v1

    .line 689
    .end local v1    # "left":I
    .end local v8    # "i":I
    .restart local v17    # "left":I
    iget-object v1, v0, Lcom/android/internal/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    const/4 v5, 0x0

    invoke-static {v1, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 690
    return-void
.end method

.method blacklist onAnchorReady(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;I)V
    .registers 6
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p3, "anchorInfo"    # Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;
    .param p4, "itemDirection"    # I

    .line 353
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/LinearLayoutManager;->onAnchorReady(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 354
    invoke-direct {p0}, Lcom/android/internal/widget/GridLayoutManager;->updateMeasurements()V

    .line 355
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-lez v0, :cond_15

    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_15

    .line 356
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/GridLayoutManager;->ensureAnchorIsInCorrectSpan(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 358
    :cond_15
    invoke-direct {p0}, Lcom/android/internal/widget/GridLayoutManager;->ensureViewSet()V

    .line 359
    return-void
.end method

.method public blacklist onInitializeAccessibilityNodeInfoForItem(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 14
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p3, "host"    # Landroid/view/View;
    .param p4, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 146
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 147
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    if-nez v1, :cond_c

    .line 148
    invoke-super {p0, p3, p4}, Lcom/android/internal/widget/LinearLayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 149
    return-void

    .line 151
    :cond_c
    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    .line 152
    .local v1, "glp":Lcom/android/internal/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v1}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v2

    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/widget/GridLayoutManager;->getSpanGroupIndex(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I

    move-result v3

    .line 153
    .local v3, "spanGroupIndex":I
    iget v2, p0, Lcom/android/internal/widget/GridLayoutManager;->mOrientation:I

    if-nez v2, :cond_30

    .line 154
    nop

    .line 155
    move v5, v3

    .end local v3    # "spanGroupIndex":I
    .local v5, "spanGroupIndex":I
    invoke-virtual {v1}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v4

    .line 154
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    goto :goto_45

    .line 158
    .end local v5    # "spanGroupIndex":I
    .restart local v3    # "spanGroupIndex":I
    :cond_30
    move v5, v3

    .line 160
    .end local v3    # "spanGroupIndex":I
    .restart local v5    # "spanGroupIndex":I
    nop

    .end local v5    # "spanGroupIndex":I
    .restart local v3    # "spanGroupIndex":I
    invoke-virtual {v1}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v5

    invoke-virtual {v1}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v6

    .line 158
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v2

    move v5, v3

    .end local v3    # "spanGroupIndex":I
    .restart local v5    # "spanGroupIndex":I
    invoke-virtual {p4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 162
    :goto_45
    return-void
.end method

.method public blacklist onItemsAdded(Lcom/android/internal/widget/RecyclerView;II)V
    .registers 5
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 199
    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 200
    return-void
.end method

.method public blacklist onItemsChanged(Lcom/android/internal/widget/RecyclerView;)V
    .registers 3
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;

    .line 204
    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 205
    return-void
.end method

.method public blacklist onItemsMoved(Lcom/android/internal/widget/RecyclerView;III)V
    .registers 6
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "itemCount"    # I

    .line 220
    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 221
    return-void
.end method

.method public blacklist onItemsRemoved(Lcom/android/internal/widget/RecyclerView;II)V
    .registers 5
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 209
    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 210
    return-void
.end method

.method public blacklist onItemsUpdated(Lcom/android/internal/widget/RecyclerView;IILjava/lang/Object;)V
    .registers 6
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .line 215
    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 216
    return-void
.end method

.method public blacklist onLayoutChildren(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)V
    .registers 4
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 166
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 167
    invoke-direct {p0}, Lcom/android/internal/widget/GridLayoutManager;->cachePreLayoutSpanMapping()V

    .line 169
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->onLayoutChildren(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)V

    .line 173
    invoke-direct {p0}, Lcom/android/internal/widget/GridLayoutManager;->clearPreLayoutSpanMappingCache()V

    .line 174
    return-void
.end method

.method public blacklist onLayoutCompleted(Lcom/android/internal/widget/RecyclerView$State;)V
    .registers 3
    .param p1, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 178
    invoke-super {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->onLayoutCompleted(Lcom/android/internal/widget/RecyclerView$State;)V

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 180
    return-void
.end method

.method public blacklist scrollHorizontallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .registers 5
    .param p1, "dx"    # I
    .param p2, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p3, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 370
    invoke-direct {p0}, Lcom/android/internal/widget/GridLayoutManager;->updateMeasurements()V

    .line 371
    invoke-direct {p0}, Lcom/android/internal/widget/GridLayoutManager;->ensureViewSet()V

    .line 372
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/widget/LinearLayoutManager;->scrollHorizontallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public blacklist scrollVerticallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .registers 5
    .param p1, "dy"    # I
    .param p2, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p3, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 378
    invoke-direct {p0}, Lcom/android/internal/widget/GridLayoutManager;->updateMeasurements()V

    .line 379
    invoke-direct {p0}, Lcom/android/internal/widget/GridLayoutManager;->ensureViewSet()V

    .line 380
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/widget/LinearLayoutManager;->scrollVerticallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public blacklist setMeasuredDimension(Landroid/graphics/Rect;II)V
    .registers 11
    .param p1, "childrenBounds"    # Landroid/graphics/Rect;
    .param p2, "wSpec"    # I
    .param p3, "hSpec"    # I

    .line 284
    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    if-nez v0, :cond_7

    .line 285
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/widget/LinearLayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    .line 288
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 289
    .local v0, "horizontalPadding":I
    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 290
    .local v1, "verticalPadding":I
    iget v2, p0, Lcom/android/internal/widget/GridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3d

    .line 291
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v2, v1

    .line 292
    .local v2, "usedHeight":I
    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v4

    invoke-static {p3, v2, v4}, Lcom/android/internal/widget/GridLayoutManager;->chooseSize(III)I

    move-result v4

    .line 293
    .local v4, "height":I
    iget-object v5, p0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    iget-object v6, p0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v6, v6

    sub-int/2addr v6, v3

    aget v3, v5, v6

    add-int/2addr v3, v0

    .line 294
    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v5

    .line 293
    invoke-static {p2, v3, v5}, Lcom/android/internal/widget/GridLayoutManager;->chooseSize(III)I

    move-result v2

    .line 295
    .local v2, "width":I
    goto :goto_5d

    .line 296
    .end local v2    # "width":I
    .end local v4    # "height":I
    :cond_3d
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v2, v0

    .line 297
    .local v2, "usedWidth":I
    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v4

    invoke-static {p2, v2, v4}, Lcom/android/internal/widget/GridLayoutManager;->chooseSize(III)I

    move-result v4

    .line 298
    .local v4, "width":I
    iget-object v5, p0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    iget-object v6, p0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v6, v6

    sub-int/2addr v6, v3

    aget v3, v5, v6

    add-int/2addr v3, v1

    .line 299
    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v5

    .line 298
    invoke-static {p3, v3, v5}, Lcom/android/internal/widget/GridLayoutManager;->chooseSize(III)I

    move-result v3

    move v2, v4

    move v4, v3

    .line 301
    .local v2, "width":I
    .local v4, "height":I
    :goto_5d
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/widget/GridLayoutManager;->setMeasuredDimension(II)V

    .line 302
    return-void
.end method

.method public blacklist setSpanCount(I)V
    .registers 5
    .param p1, "spanCount"    # I

    .line 801
    iget v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    if-ne p1, v0, :cond_5

    .line 802
    return-void

    .line 804
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 805
    if-lt p1, v0, :cond_15

    .line 809
    iput p1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    .line 810
    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 811
    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->requestLayout()V

    .line 812
    return-void

    .line 806
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Span count should be at least 1. Provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setSpanSizeLookup(Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;)V
    .registers 2
    .param p1, "spanSizeLookup"    # Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    .line 260
    iput-object p1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    .line 261
    return-void
.end method

.method public blacklist setStackFromEnd(Z)V
    .registers 4
    .param p1, "stackFromEnd"    # Z

    .line 109
    if-nez p1, :cond_7

    .line 114
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 115
    return-void

    .line 110
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist supportsPredictiveItemAnimations()Z
    .registers 2

    .line 982
    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
