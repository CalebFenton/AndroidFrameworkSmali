.class Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Lcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/GapWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutPrefetchRegistryImpl"
.end annotation


# instance fields
.field blacklist mCount:I

.field blacklist mPrefetchArray:[I

.field blacklist mPrefetchDx:I

.field blacklist mPrefetchDy:I


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addPosition(II)V
    .registers 8
    .param p1, "layoutPosition"    # I
    .param p2, "pixelDistance"    # I

    .line 110
    if-ltz p2, :cond_3b

    .line 115
    iget v0, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v0, v0, 0x2

    .line 116
    .local v0, "storagePosition":I
    iget-object v1, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    if-nez v1, :cond_16

    .line 117
    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    .line 118
    iget-object v1, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    goto :goto_2a

    .line 119
    :cond_16
    iget-object v1, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    array-length v1, v1

    if-lt v0, v1, :cond_2a

    .line 120
    iget-object v1, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    .line 121
    .local v1, "oldArray":[I
    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    .line 122
    iget-object v2, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    .end local v1    # "oldArray":[I
    :cond_2a
    :goto_2a
    iget-object v1, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aput p1, v1, v0

    .line 127
    iget-object v1, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    add-int/lit8 v2, v0, 0x1

    aput p2, v1, v2

    .line 129
    iget v1, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    .line 130
    return-void

    .line 111
    .end local v0    # "storagePosition":I
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pixel distance must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist clearPrefetchPositions()V
    .registers 3

    .line 146
    iget-object v0, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    if-eqz v0, :cond_a

    .line 147
    iget-object v0, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 149
    :cond_a
    return-void
.end method

.method blacklist collectPrefetchPositionsFromView(Lcom/android/internal/widget/RecyclerView;Z)V
    .registers 7
    .param p1, "view"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "nested"    # Z

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    .line 78
    iget-object v0, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    if-eqz v0, :cond_d

    .line 79
    iget-object v0, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 82
    :cond_d
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 83
    .local v0, "layout":Lcom/android/internal/widget/RecyclerView$LayoutManager;
    iget-object v1, p1, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_4f

    if-eqz v0, :cond_4f

    .line 85
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->isItemPrefetchEnabled()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 86
    if-eqz p2, :cond_2f

    .line 89
    iget-object v1, p1, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v1}, Lcom/android/internal/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 90
    iget-object v1, p1, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->collectInitialPrefetchPositions(ILcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    goto :goto_3e

    .line 94
    :cond_2f
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 95
    iget v1, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    iget v2, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    iget-object v3, p1, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->collectAdjacentPrefetchPositions(IILcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    .line 100
    :cond_3e
    :goto_3e
    iget v1, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    iget v2, v0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    if-le v1, v2, :cond_4f

    .line 101
    iget v1, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    iput v1, v0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 102
    iput-boolean p2, v0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    .line 103
    iget-object v1, p1, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 106
    :cond_4f
    return-void
.end method

.method blacklist lastPrefetchIncludedPosition(I)Z
    .registers 5
    .param p1, "position"    # I

    .line 133
    iget-object v0, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    if-eqz v0, :cond_16

    .line 134
    iget v0, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v0, v0, 0x2

    .line 135
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_16

    .line 136
    iget-object v2, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_13

    const/4 v2, 0x1

    return v2

    .line 135
    :cond_13
    add-int/lit8 v1, v1, 0x2

    goto :goto_9

    .line 139
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method blacklist setPrefetchVector(II)V
    .registers 3
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 72
    iput p1, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    .line 73
    iput p2, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    .line 74
    return-void
.end method
