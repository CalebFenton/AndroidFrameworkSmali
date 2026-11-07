.class Landroid/widget/AbsListView$RecycleBin;
.super Ljava/lang/Object;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private greylist-max-o mActiveViews:[Landroid/view/View;

.field private greylist-max-o mCurrentScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFirstActivePosition:I

.field private greylist mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

.field private greylist-max-o mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSkippedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mTransientStateViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mTransientStateViewsById:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mViewTypeCount:I

.field final synthetic blacklist this$0:Landroid/widget/AbsListView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmRecyclerListener(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;
    .registers 1

    iget-object p0, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRecyclerListener(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/AbsListView;)V
    .registers 3
    .param p1, "this$0"    # Landroid/widget/AbsListView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 7166
    iput-object p1, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7181
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-void
.end method

.method private greylist-max-o clearScrap(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 7676
    .local p1, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7677
    .local v0, "scrapCount":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_5
    if-ge v1, v0, :cond_17

    .line 7678
    add-int/lit8 v2, v0, -0x1

    sub-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 7677
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 7680
    .end local v1    # "j":I
    :cond_17
    return-void
.end method

.method private greylist-max-o clearScrapForRebind(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 7683
    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 7684
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 7685
    invoke-virtual {p1}, Landroid/view/View;->resetSubtreeAutofillIds()V

    .line 7686
    return-void
.end method

.method private greylist-max-o getSkippedScrap()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 7453
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 7454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    .line 7456
    :cond_b
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    return-object v0
.end method

.method private greylist-max-o pruneScrapViews()V
    .registers 10

    .line 7561
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v0, v0

    .line 7562
    .local v0, "maxViews":I
    iget v1, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 7563
    .local v1, "viewTypeCount":I
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 7564
    .local v2, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    if-ge v3, v1, :cond_1b

    .line 7565
    aget-object v4, v2, v3

    .line 7566
    .local v4, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 7567
    .local v5, "size":I
    :goto_10
    if-le v5, v0, :cond_18

    .line 7568
    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_10

    .line 7564
    .end local v4    # "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "size":I
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 7572
    .end local v3    # "i":I
    :cond_1b
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 7573
    .local v3, "transViewsByPos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    const/4 v4, 0x0

    if-eqz v3, :cond_3e

    .line 7574
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_21
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_3e

    .line 7575
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 7576
    .local v6, "v":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->hasTransientState()Z

    move-result v7

    if-nez v7, :cond_3b

    .line 7577
    invoke-direct {p0, v6, v4}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 7578
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->removeAt(I)V

    .line 7579
    add-int/lit8 v5, v5, -0x1

    .line 7574
    .end local v6    # "v":Landroid/view/View;
    :cond_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 7584
    .end local v5    # "i":I
    :cond_3e
    iget-object v5, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 7585
    .local v5, "transViewsById":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/View;>;"
    if-eqz v5, :cond_60

    .line 7586
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_43
    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_60

    .line 7587
    invoke-virtual {v5, v6}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 7588
    .local v7, "v":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->hasTransientState()Z

    move-result v8

    if-nez v8, :cond_5d

    .line 7589
    invoke-direct {p0, v7, v4}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 7590
    invoke-virtual {v5, v6}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 7591
    add-int/lit8 v6, v6, -0x1

    .line 7586
    .end local v7    # "v":Landroid/view/View;
    :cond_5d
    add-int/lit8 v6, v6, 0x1

    goto :goto_43

    .line 7595
    .end local v6    # "i":I
    :cond_60
    return-void
.end method

.method private greylist-max-o removeDetachedView(Landroid/view/View;Z)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .line 7689
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 7690
    invoke-virtual {p1}, Landroid/view/View;->resetSubtreeAutofillIds()V

    .line 7691
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    # invokes: Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v0, p1, p2}, Landroid/widget/AbsListView;->access$1600(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 7692
    return-void
.end method

.method private greylist-max-o retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;
    .registers 11
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 7647
    .local p1, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7648
    .local v0, "size":I
    if-lez v0, :cond_51

    .line 7651
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_45

    .line 7652
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 7653
    .local v2, "view":Landroid/view/View;
    nop

    .line 7654
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 7656
    .local v3, "params":Landroid/widget/AbsListView$LayoutParams;
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v4, v4, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v4, :cond_33

    .line 7657
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v4, v4, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 7658
    .local v4, "id":J
    iget-wide v6, v3, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    cmp-long v6, v4, v6

    if-nez v6, :cond_32

    .line 7659
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    return-object v6

    .line 7658
    .end local v4    # "id":J
    :cond_32
    goto :goto_41

    .line 7661
    :cond_33
    iget v4, v3, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    if-ne v4, p2, :cond_41

    .line 7662
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 7663
    .local v4, "scrap":Landroid/view/View;
    invoke-direct {p0, v4}, Landroid/widget/AbsListView$RecycleBin;->clearScrapForRebind(Landroid/view/View;)V

    .line 7664
    return-object v4

    .line 7661
    .end local v4    # "scrap":Landroid/view/View;
    :cond_41
    :goto_41
    nop

    .line 7651
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "params":Landroid/widget/AbsListView$LayoutParams;
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 7667
    .end local v1    # "i":I
    :cond_45
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 7668
    .local v1, "scrap":Landroid/view/View;
    invoke-direct {p0, v1}, Landroid/widget/AbsListView$RecycleBin;->clearScrapForRebind(Landroid/view/View;)V

    .line 7669
    return-object v1

    .line 7671
    .end local v1    # "scrap":Landroid/view/View;
    :cond_51
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method greylist-max-o addScrapView(Landroid/view/View;I)V
    .registers 9
    .param p1, "scrap"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 7385
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 7386
    .local v0, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-nez v0, :cond_9

    .line 7389
    return-void

    .line 7392
    :cond_9
    iput p2, v0, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    .line 7396
    iget v1, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 7397
    .local v1, "viewType":I
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 7401
    const/4 v2, -0x2

    if-eq v1, v2, :cond_1d

    .line 7402
    invoke-direct {p0}, Landroid/widget/AbsListView$RecycleBin;->getSkippedScrap()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7404
    :cond_1d
    return-void

    .line 7407
    :cond_1e
    invoke-virtual {p1}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 7413
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 7417
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v2

    .line 7418
    .local v2, "scrapHasTransientState":Z
    if-eqz v2, :cond_6e

    .line 7419
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_4c

    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v3, v3, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v3, :cond_4c

    .line 7422
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-nez v3, :cond_44

    .line 7423
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 7425
    :cond_44
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    iget-wide v4, v0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    invoke-virtual {v3, v4, v5, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_8b

    .line 7426
    :cond_4c
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v3, v3, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v3, :cond_63

    .line 7429
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v3, :cond_5d

    .line 7430
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 7432
    :cond_5d
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_8b

    .line 7435
    :cond_63
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$RecycleBin;->clearScrapForRebind(Landroid/view/View;)V

    .line 7436
    invoke-direct {p0}, Landroid/widget/AbsListView$RecycleBin;->getSkippedScrap()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8b

    .line 7439
    :cond_6e
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$RecycleBin;->clearScrapForRebind(Landroid/view/View;)V

    .line 7440
    iget v4, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    if-ne v4, v3, :cond_7b

    .line 7441
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_82

    .line 7443
    :cond_7b
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7446
    :goto_82
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    if-eqz v3, :cond_8b

    .line 7447
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    invoke-interface {v3, p1}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 7450
    :cond_8b
    :goto_8b
    return-void
.end method

.method greylist clear()V
    .registers 4

    .line 7251
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 7252
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 7253
    .local v0, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v0}, Landroid/widget/AbsListView$RecycleBin;->clearScrap(Ljava/util/ArrayList;)V

    .line 7254
    .end local v0    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    goto :goto_1a

    .line 7255
    :cond_b
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 7256
    .local v0, "typeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_1a

    .line 7257
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v2, v1

    .line 7258
    .local v2, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v2}, Landroid/widget/AbsListView$RecycleBin;->clearScrap(Ljava/util/ArrayList;)V

    .line 7256
    .end local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 7262
    .end local v0    # "typeCount":I
    .end local v1    # "i":I
    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Landroid/widget/AbsListView$RecycleBin;->clearTransientStateViews()V

    .line 7263
    return-void
.end method

.method greylist-max-o clearTransientStateViews()V
    .registers 7

    .line 7340
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 7341
    .local v0, "viewsByPos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 7342
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 7343
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v2, :cond_18

    .line 7344
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-direct {p0, v4, v1}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 7343
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 7346
    .end local v3    # "i":I
    :cond_18
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 7349
    .end local v2    # "N":I
    :cond_1b
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 7350
    .local v2, "viewsById":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/View;>;"
    if-eqz v2, :cond_35

    .line 7351
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    .line 7352
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_24
    if-ge v4, v3, :cond_32

    .line 7353
    invoke-virtual {v2, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-direct {p0, v5, v1}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 7352
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 7355
    .end local v4    # "i":I
    :cond_32
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 7357
    .end local v3    # "N":I
    :cond_35
    return-void
.end method

.method greylist-max-o fillActiveViews(II)V
    .registers 9
    .param p1, "childCount"    # I
    .param p2, "firstActivePosition"    # I

    .line 7273
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v0, v0

    if-ge v0, p1, :cond_9

    .line 7274
    new-array v0, p1, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 7276
    :cond_9
    iput p2, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    .line 7279
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 7280
    .local v0, "activeViews":[Landroid/view/View;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, p1, :cond_2c

    .line 7281
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7282
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 7284
    .local v3, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v3, :cond_29

    iget v4, v3, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_29

    .line 7287
    aput-object v2, v0, v1

    .line 7289
    add-int v4, p2, v1

    iput v4, v3, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    .line 7280
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 7293
    .end local v1    # "i":I
    :cond_2c
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-static {v1}, Landroid/widget/AbsListView;->-$$Nest$fgetmReportChildrenToContentCaptureOnNextUpdate(Landroid/widget/AbsListView;)Z

    move-result v1

    if-eqz v1, :cond_41

    if-lez p1, :cond_41

    .line 7294
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-static {v1}, Landroid/widget/AbsListView;->-$$Nest$mreportActiveViewsToContentCapture(Landroid/widget/AbsListView;)V

    .line 7295
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/widget/AbsListView;->-$$Nest$fputmReportChildrenToContentCaptureOnNextUpdate(Landroid/widget/AbsListView;Z)V

    .line 7297
    :cond_41
    return-void
.end method

.method greylist-max-o fullyDetachScrapViews()V
    .registers 8

    .line 7541
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 7542
    .local v0, "viewTypeCount":I
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 7543
    .local v1, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_27

    .line 7544
    aget-object v3, v1, v2

    .line 7545
    .local v3, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_f
    if-ltz v4, :cond_24

    .line 7546
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 7547
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->isTemporarilyDetached()Z

    move-result v6

    if-eqz v6, :cond_21

    .line 7548
    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 7545
    .end local v5    # "view":Landroid/view/View;
    :cond_21
    add-int/lit8 v4, v4, -0x1

    goto :goto_f

    .line 7543
    .end local v3    # "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "j":I
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 7552
    .end local v2    # "i":I
    :cond_27
    return-void
.end method

.method greylist-max-o getActiveView(I)Landroid/view/View;
    .registers 6
    .param p1, "position"    # I

    .line 7307
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    sub-int v0, p1, v0

    .line 7308
    .local v0, "index":I
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 7309
    .local v1, "activeViews":[Landroid/view/View;
    const/4 v2, 0x0

    if-ltz v0, :cond_11

    array-length v3, v1

    if-ge v0, v3, :cond_11

    .line 7310
    aget-object v3, v1, v0

    .line 7311
    .local v3, "match":Landroid/view/View;
    aput-object v2, v1, v0

    .line 7312
    return-object v3

    .line 7314
    .end local v3    # "match":Landroid/view/View;
    :cond_11
    return-object v2
.end method

.method greylist-max-o getScrapView(I)Landroid/view/View;
    .registers 6
    .param p1, "position"    # I

    .line 7363
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 7364
    .local v0, "whichScrap":I
    const/4 v1, 0x0

    if-gez v0, :cond_c

    .line 7365
    return-object v1

    .line 7367
    :cond_c
    iget v2, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    .line 7368
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Landroid/widget/AbsListView$RecycleBin;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 7369
    :cond_18
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    array-length v2, v2

    if-ge v0, v2, :cond_26

    .line 7370
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1}, Landroid/widget/AbsListView$RecycleBin;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 7372
    :cond_26
    return-object v1
.end method

.method greylist-max-o getTransientStateView(I)Landroid/view/View;
    .registers 6
    .param p1, "position"    # I

    .line 7318
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_26

    .line 7319
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 7320
    .local v0, "id":J
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 7321
    .local v2, "result":Landroid/view/View;
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    .line 7322
    return-object v2

    .line 7324
    .end local v0    # "id":J
    .end local v2    # "result":Landroid/view/View;
    :cond_26
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v0, :cond_40

    .line 7325
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 7326
    .local v0, "index":I
    if-ltz v0, :cond_40

    .line 7327
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 7328
    .local v1, "result":Landroid/view/View;
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 7329
    return-object v1

    .line 7332
    .end local v0    # "index":I
    .end local v1    # "result":Landroid/view/View;
    :cond_40
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o markChildrenDirty()V
    .registers 7

    .line 7212
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 7213
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 7214
    .local v0, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7215
    .local v1, "scrapCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_1a

    .line 7216
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->forceLayout()V

    .line 7215
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 7218
    .end local v0    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v1    # "scrapCount":I
    .end local v2    # "i":I
    :cond_1a
    goto :goto_3a

    .line 7219
    :cond_1b
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 7220
    .local v0, "typeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    if-ge v1, v0, :cond_3a

    .line 7221
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v2, v1

    .line 7222
    .local v2, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 7223
    .local v3, "scrapCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_29
    if-ge v4, v3, :cond_37

    .line 7224
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->forceLayout()V

    .line 7223
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 7220
    .end local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "scrapCount":I
    .end local v4    # "j":I
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 7228
    .end local v0    # "typeCount":I
    .end local v1    # "i":I
    :cond_3a
    :goto_3a
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v0, :cond_55

    .line 7229
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 7230
    .local v0, "count":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_45
    if-ge v1, v0, :cond_55

    .line 7231
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 7230
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 7234
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_55
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_70

    .line 7235
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 7236
    .restart local v0    # "count":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_60
    if-ge v1, v0, :cond_70

    .line 7237
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 7236
    add-int/lit8 v1, v1, 0x1

    goto :goto_60

    .line 7240
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_70
    return-void
.end method

.method greylist-max-o reclaimScrapViews(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 7601
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 7602
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1a

    .line 7604
    :cond_b
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 7605
    .local v0, "viewTypeCount":I
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 7606
    .local v1, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v0, :cond_1a

    .line 7607
    aget-object v3, v1, v2

    .line 7608
    .local v3, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-interface {p1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7606
    .end local v3    # "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 7611
    .end local v0    # "viewTypeCount":I
    .end local v1    # "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2    # "i":I
    :cond_1a
    :goto_1a
    return-void
.end method

.method greylist-max-o removeSkippedScrap()V
    .registers 5

    .line 7463
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 7464
    return-void

    .line 7466
    :cond_5
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7467
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_1d

    .line 7468
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 7467
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 7470
    .end local v1    # "i":I
    :cond_1d
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 7471
    return-void
.end method

.method greylist-max-o scrapActiveViews()V
    .registers 14

    .line 7477
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 7478
    .local v0, "activeViews":[Landroid/view/View;
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    move v1, v2

    goto :goto_b

    :cond_a
    move v1, v3

    .line 7479
    .local v1, "hasListener":Z
    :goto_b
    iget v4, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    if-le v4, v2, :cond_10

    goto :goto_11

    :cond_10
    move v2, v3

    .line 7481
    .local v2, "multipleScraps":Z
    :goto_11
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 7482
    .local v4, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v5, v0

    .line 7483
    .local v5, "count":I
    add-int/lit8 v6, v5, -0x1

    .local v6, "i":I
    :goto_16
    if-ltz v6, :cond_a2

    .line 7484
    aget-object v7, v0, v6

    .line 7485
    .local v7, "victim":Landroid/view/View;
    if-eqz v7, :cond_9e

    .line 7486
    nop

    .line 7487
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/AbsListView$LayoutParams;

    .line 7488
    .local v8, "lp":Landroid/widget/AbsListView$LayoutParams;
    iget v9, v8, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 7490
    .local v9, "whichScrap":I
    const/4 v10, 0x0

    aput-object v10, v0, v6

    .line 7492
    invoke-virtual {v7}, Landroid/view/View;->hasTransientState()Z

    move-result v10

    const/4 v11, -0x2

    if-eqz v10, :cond_7a

    .line 7494
    invoke-virtual {v7}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 7496
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v10, v10, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_5a

    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v10, v10, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v10, :cond_5a

    .line 7497
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-nez v10, :cond_49

    .line 7498
    new-instance v10, Landroid/util/LongSparseArray;

    invoke-direct {v10}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 7500
    :cond_49
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v10, v10, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v11, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v11, v6

    invoke-interface {v10, v11}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v10

    .line 7501
    .local v10, "id":J
    iget-object v12, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v12, v10, v11, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 7502
    .end local v10    # "id":J
    goto :goto_9e

    :cond_5a
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v10, v10, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v10, :cond_74

    .line 7503
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v10, :cond_6b

    .line 7504
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    iput-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 7506
    :cond_6b
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    iget v11, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v11, v6

    invoke-virtual {v10, v11, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_9e

    .line 7507
    :cond_74
    if-eq v9, v11, :cond_9e

    .line 7509
    invoke-direct {p0, v7, v3}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    goto :goto_9e

    .line 7511
    :cond_7a
    invoke-virtual {p0, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-nez v10, :cond_86

    .line 7513
    if-eq v9, v11, :cond_9e

    .line 7514
    invoke-direct {p0, v7, v3}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    goto :goto_9e

    .line 7518
    :cond_86
    if-eqz v2, :cond_8c

    .line 7519
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v4, v10, v9

    .line 7522
    :cond_8c
    iget v10, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v10, v6

    iput v10, v8, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    .line 7523
    invoke-direct {p0, v7, v3}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 7524
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7526
    if-eqz v1, :cond_9e

    .line 7527
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    invoke-interface {v10, v7}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 7483
    .end local v7    # "victim":Landroid/view/View;
    .end local v8    # "lp":Landroid/widget/AbsListView$LayoutParams;
    .end local v9    # "whichScrap":I
    :cond_9e
    :goto_9e
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_16

    .line 7532
    .end local v6    # "i":I
    :cond_a2
    invoke-direct {p0}, Landroid/widget/AbsListView$RecycleBin;->pruneScrapViews()V

    .line 7533
    return-void
.end method

.method greylist-max-o setCacheColorHint(I)V
    .registers 8
    .param p1, "color"    # I

    .line 7619
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 7620
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 7621
    .local v0, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7622
    .local v1, "scrapCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_1a

    .line 7623
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 7622
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 7625
    .end local v0    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v1    # "scrapCount":I
    .end local v2    # "i":I
    :cond_1a
    goto :goto_3a

    .line 7626
    :cond_1b
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 7627
    .local v0, "typeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    if-ge v1, v0, :cond_3a

    .line 7628
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v2, v1

    .line 7629
    .local v2, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 7630
    .local v3, "scrapCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_29
    if-ge v4, v3, :cond_37

    .line 7631
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 7630
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 7627
    .end local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "scrapCount":I
    .end local v4    # "j":I
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 7636
    .end local v0    # "typeCount":I
    .end local v1    # "i":I
    :cond_3a
    :goto_3a
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 7637
    .local v0, "activeViews":[Landroid/view/View;
    array-length v1, v0

    .line 7638
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3e
    if-ge v2, v1, :cond_4a

    .line 7639
    aget-object v3, v0, v2

    .line 7640
    .local v3, "victim":Landroid/view/View;
    if-eqz v3, :cond_47

    .line 7641
    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 7638
    .end local v3    # "victim":Landroid/view/View;
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 7644
    .end local v2    # "i":I
    :cond_4a
    return-void
.end method

.method public greylist-max-o setViewTypeCount(I)V
    .registers 5
    .param p1, "viewTypeCount"    # I

    .line 7198
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1c

    .line 7202
    new-array v0, p1, [Ljava/util/ArrayList;

    .line 7203
    .local v0, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, p1, :cond_12

    .line 7204
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v0, v1

    .line 7203
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 7206
    .end local v1    # "i":I
    :cond_12
    iput p1, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 7207
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 7208
    iput-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 7209
    return-void

    .line 7199
    .end local v0    # "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o shouldRecycleViewType(I)Z
    .registers 3
    .param p1, "viewType"    # I

    .line 7243
    if-ltz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method
