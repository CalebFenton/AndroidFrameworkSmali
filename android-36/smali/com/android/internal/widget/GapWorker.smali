.class final Lcom/android/internal/widget/GapWorker;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;,
        Lcom/android/internal/widget/GapWorker$Task;
    }
.end annotation


# static fields
.field static final blacklist sGapWorker:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/android/internal/widget/GapWorker;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sTaskComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/widget/GapWorker$Task;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist mFrameIntervalNs:J

.field blacklist mPostTimeNs:J

.field blacklist mRecyclerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/GapWorker$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/internal/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    .line 183
    new-instance v0, Lcom/android/internal/widget/GapWorker$1;

    invoke-direct {v0}, Lcom/android/internal/widget/GapWorker$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/GapWorker;->sTaskComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    return-void
.end method

.method private blacklist buildTaskList()V
    .registers 13

    .line 210
    iget-object v0, p0, Lcom/android/internal/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 211
    .local v0, "viewCount":I
    const/4 v1, 0x0

    .line 212
    .local v1, "totalTaskCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    const/4 v3, 0x0

    if-ge v2, v0, :cond_20

    .line 213
    iget-object v4, p0, Lcom/android/internal/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/RecyclerView;

    .line 214
    .local v4, "view":Lcom/android/internal/widget/RecyclerView;
    iget-object v5, v4, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v5, v4, v3}, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->collectPrefetchPositionsFromView(Lcom/android/internal/widget/RecyclerView;Z)V

    .line 215
    iget-object v3, v4, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    iget v3, v3, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    add-int/2addr v1, v3

    .line 212
    .end local v4    # "view":Lcom/android/internal/widget/RecyclerView;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 219
    .end local v2    # "i":I
    :cond_20
    iget-object v2, p0, Lcom/android/internal/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 220
    const/4 v2, 0x0

    .line 221
    .local v2, "totalTaskIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_27
    if-ge v4, v0, :cond_84

    .line 222
    iget-object v5, p0, Lcom/android/internal/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/RecyclerView;

    .line 223
    .local v5, "view":Lcom/android/internal/widget/RecyclerView;
    iget-object v6, v5, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    .line 224
    .local v6, "prefetchRegistry":Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;
    iget v7, v6, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, v6, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    .line 225
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v7, v8

    .line 226
    .local v7, "viewVelocity":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_41
    iget v9, v6, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v9, v9, 0x2

    if-ge v8, v9, :cond_81

    .line 228
    iget-object v9, p0, Lcom/android/internal/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v2, v9, :cond_5a

    .line 229
    new-instance v9, Lcom/android/internal/widget/GapWorker$Task;

    invoke-direct {v9}, Lcom/android/internal/widget/GapWorker$Task;-><init>()V

    .line 230
    .local v9, "task":Lcom/android/internal/widget/GapWorker$Task;
    iget-object v10, p0, Lcom/android/internal/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_62

    .line 232
    .end local v9    # "task":Lcom/android/internal/widget/GapWorker$Task;
    :cond_5a
    iget-object v9, p0, Lcom/android/internal/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/GapWorker$Task;

    .line 234
    .restart local v9    # "task":Lcom/android/internal/widget/GapWorker$Task;
    :goto_62
    iget-object v10, v6, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    add-int/lit8 v11, v8, 0x1

    aget v10, v10, v11

    .line 236
    .local v10, "distanceToItem":I
    if-gt v10, v7, :cond_6c

    const/4 v11, 0x1

    goto :goto_6d

    :cond_6c
    move v11, v3

    :goto_6d
    iput-boolean v11, v9, Lcom/android/internal/widget/GapWorker$Task;->immediate:Z

    .line 237
    iput v7, v9, Lcom/android/internal/widget/GapWorker$Task;->viewVelocity:I

    .line 238
    iput v10, v9, Lcom/android/internal/widget/GapWorker$Task;->distanceToItem:I

    .line 239
    iput-object v5, v9, Lcom/android/internal/widget/GapWorker$Task;->view:Lcom/android/internal/widget/RecyclerView;

    .line 240
    iget-object v11, v6, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aget v11, v11, v8

    iput v11, v9, Lcom/android/internal/widget/GapWorker$Task;->position:I

    .line 242
    nop

    .end local v9    # "task":Lcom/android/internal/widget/GapWorker$Task;
    .end local v10    # "distanceToItem":I
    add-int/lit8 v2, v2, 0x1

    .line 226
    add-int/lit8 v8, v8, 0x2

    goto :goto_41

    .line 221
    .end local v5    # "view":Lcom/android/internal/widget/RecyclerView;
    .end local v6    # "prefetchRegistry":Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;
    .end local v7    # "viewVelocity":I
    .end local v8    # "j":I
    :cond_81
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 247
    .end local v4    # "i":I
    :cond_84
    iget-object v3, p0, Lcom/android/internal/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/internal/widget/GapWorker;->sTaskComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 248
    return-void
.end method

.method private blacklist flushTaskWithDeadline(Lcom/android/internal/widget/GapWorker$Task;J)V
    .registers 8
    .param p1, "task"    # Lcom/android/internal/widget/GapWorker$Task;
    .param p2, "deadlineNs"    # J

    .line 324
    iget-boolean v0, p1, Lcom/android/internal/widget/GapWorker$Task;->immediate:Z

    if-eqz v0, :cond_a

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_b

    :cond_a
    move-wide v0, p2

    .line 325
    .local v0, "taskDeadlineNs":J
    :goto_b
    iget-object v2, p1, Lcom/android/internal/widget/GapWorker$Task;->view:Lcom/android/internal/widget/RecyclerView;

    iget v3, p1, Lcom/android/internal/widget/GapWorker$Task;->position:I

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/internal/widget/GapWorker;->prefetchPositionWithDeadline(Lcom/android/internal/widget/RecyclerView;IJ)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 327
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_24

    iget-object v3, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_24

    .line 328
    iget-object v3, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView;

    invoke-direct {p0, v3, p2, p3}, Lcom/android/internal/widget/GapWorker;->prefetchInnerRecyclerViewWithDeadline(Lcom/android/internal/widget/RecyclerView;J)V

    .line 330
    :cond_24
    return-void
.end method

.method private blacklist flushTasksWithDeadline(J)V
    .registers 6
    .param p1, "deadlineNs"    # J

    .line 333
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 334
    iget-object v1, p0, Lcom/android/internal/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/GapWorker$Task;

    .line 335
    .local v1, "task":Lcom/android/internal/widget/GapWorker$Task;
    iget-object v2, v1, Lcom/android/internal/widget/GapWorker$Task;->view:Lcom/android/internal/widget/RecyclerView;

    if-nez v2, :cond_16

    .line 336
    goto :goto_1f

    .line 338
    :cond_16
    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/widget/GapWorker;->flushTaskWithDeadline(Lcom/android/internal/widget/GapWorker$Task;J)V

    .line 339
    invoke-virtual {v1}, Lcom/android/internal/widget/GapWorker$Task;->clear()V

    .line 333
    .end local v1    # "task":Lcom/android/internal/widget/GapWorker$Task;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 341
    .end local v0    # "i":I
    :cond_1f
    :goto_1f
    return-void
.end method

.method static blacklist isPrefetchPositionAttached(Lcom/android/internal/widget/RecyclerView;I)Z
    .registers 7
    .param p0, "view"    # Lcom/android/internal/widget/RecyclerView;
    .param p1, "position"    # I

    .line 251
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 252
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_22

    .line 253
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 254
    .local v2, "attachedView":Landroid/view/View;
    invoke-static {v2}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 256
    .local v3, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    iget v4, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v4, p1, :cond_1f

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 257
    const/4 v4, 0x1

    return v4

    .line 252
    .end local v2    # "attachedView":Landroid/view/View;
    .end local v3    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 260
    .end local v1    # "i":I
    :cond_22
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist prefetchInnerRecyclerViewWithDeadline(Lcom/android/internal/widget/RecyclerView;J)V
    .registers 7
    .param p1, "innerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "deadlineNs"    # J

    .line 292
    if-nez p1, :cond_3

    .line 293
    return-void

    .line 296
    :cond_3
    iget-boolean v0, p1, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_12

    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    .line 297
    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    if-eqz v0, :cond_12

    .line 300
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->removeAndRecycleViews()V

    .line 304
    :cond_12
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    .line 305
    .local v0, "innerPrefetchRegistry":Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->collectPrefetchPositionsFromView(Lcom/android/internal/widget/RecyclerView;Z)V

    .line 307
    iget v1, v0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    if-eqz v1, :cond_43

    .line 309
    :try_start_1c
    const-string v1, "RV Nested Prefetch"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 310
    iget-object v1, p1, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v2, p1, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RecyclerView$State;->prepareForNestedPrefetch(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    .line 311
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_29
    iget v2, v0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_3a

    .line 314
    iget-object v2, v0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aget v2, v2, v1

    .line 315
    .local v2, "innerPosition":I
    invoke-direct {p0, p1, v2, p2, p3}, Lcom/android/internal/widget/GapWorker;->prefetchPositionWithDeadline(Lcom/android/internal/widget/RecyclerView;IJ)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :try_end_36
    .catchall {:try_start_1c .. :try_end_36} :catchall_3e

    .line 311
    nop

    .end local v2    # "innerPosition":I
    add-int/lit8 v1, v1, 0x2

    goto :goto_29

    .line 318
    .end local v1    # "i":I
    :cond_3a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 319
    goto :goto_43

    .line 318
    :catchall_3e
    move-exception v1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 319
    throw v1

    .line 321
    :cond_43
    :goto_43
    return-void
.end method

.method private blacklist prefetchPositionWithDeadline(Lcom/android/internal/widget/RecyclerView;IJ)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 9
    .param p1, "view"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "position"    # I
    .param p3, "deadlineNs"    # J

    .line 265
    invoke-static {p1, p2}, Lcom/android/internal/widget/GapWorker;->isPrefetchPositionAttached(Lcom/android/internal/widget/RecyclerView;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 267
    const/4 v0, 0x0

    return-object v0

    .line 270
    :cond_8
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    .line 271
    .local v0, "recycler":Lcom/android/internal/widget/RecyclerView$Recycler;
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p3, p4}, Lcom/android/internal/widget/RecyclerView$Recycler;->tryGetViewHolderForPositionByDeadline(IZJ)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 274
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_20

    .line 275
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 278
    iget-object v1, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    goto :goto_20

    .line 284
    :cond_1d
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V

    .line 287
    :cond_20
    :goto_20
    return-object v2
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/widget/RecyclerView;)V
    .registers 3
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;

    .line 156
    iget-object v0, p0, Lcom/android/internal/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    return-void
.end method

.method blacklist postFromTraversal(Lcom/android/internal/widget/RecyclerView;II)V
    .registers 8
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "prefetchDx"    # I
    .param p3, "prefetchDy"    # I

    .line 170
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 174
    iget-wide v0, p0, Lcom/android/internal/widget/GapWorker;->mPostTimeNs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_17

    .line 175
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/GapWorker;->mPostTimeNs:J

    .line 176
    invoke-virtual {p1, p0}, Lcom/android/internal/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 180
    :cond_17
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->setPrefetchVector(II)V

    .line 181
    return-void
.end method

.method blacklist prefetch(J)V
    .registers 3
    .param p1, "deadlineNs"    # J

    .line 344
    invoke-direct {p0}, Lcom/android/internal/widget/GapWorker;->buildTaskList()V

    .line 345
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/GapWorker;->flushTasksWithDeadline(J)V

    .line 346
    return-void
.end method

.method public blacklist remove(Lcom/android/internal/widget/RecyclerView;)V
    .registers 3
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;

    .line 160
    iget-object v0, p0, Lcom/android/internal/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 164
    .local v0, "removeSuccess":Z
    return-void
.end method

.method public whitelist test-api run()V
    .registers 7

    .line 351
    const-wide/16 v0, 0x0

    :try_start_2
    const-string v2, "RV Prefetch"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 353
    iget-object v2, p0, Lcom/android/internal/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_3f

    if-eqz v2, :cond_15

    .line 375
    iput-wide v0, p0, Lcom/android/internal/widget/GapWorker;->mPostTimeNs:J

    .line 376
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 355
    return-void

    .line 360
    :cond_15
    :try_start_15
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/android/internal/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    .line 361
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView;->getDrawingTime()J

    move-result-wide v3

    .line 360
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_3f

    .line 362
    .local v2, "lastFrameVsyncNs":J
    cmp-long v4, v2, v0

    if-nez v4, :cond_32

    .line 375
    iput-wide v0, p0, Lcom/android/internal/widget/GapWorker;->mPostTimeNs:J

    .line 376
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 364
    return-void

    .line 369
    :cond_32
    :try_start_32
    iget-wide v4, p0, Lcom/android/internal/widget/GapWorker;->mFrameIntervalNs:J

    add-long/2addr v4, v2

    .line 371
    .local v4, "nextFrameNs":J
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/widget/GapWorker;->prefetch(J)V
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_3f

    .line 375
    .end local v2    # "lastFrameVsyncNs":J
    .end local v4    # "nextFrameNs":J
    iput-wide v0, p0, Lcom/android/internal/widget/GapWorker;->mPostTimeNs:J

    .line 376
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 377
    nop

    .line 378
    return-void

    .line 375
    :catchall_3f
    move-exception v2

    iput-wide v0, p0, Lcom/android/internal/widget/GapWorker;->mPostTimeNs:J

    .line 376
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 377
    throw v2
.end method
