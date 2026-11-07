.class public final Lcom/android/internal/widget/RecyclerView$Recycler;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Recycler"
.end annotation


# static fields
.field static final blacklist DEFAULT_CACHE_SIZE:I = 0x2


# instance fields
.field final blacklist mAttachedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mCachedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mChangedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

.field private blacklist mRequestedCacheMax:I

.field private final blacklist mUnmodifiableAttachedScrap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mViewCacheExtension:Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;

.field blacklist mViewCacheMax:I

.field final synthetic blacklist this$0:Lcom/android/internal/widget/RecyclerView;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/RecyclerView;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/widget/RecyclerView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 5290
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    .line 5292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 5294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    .line 5296
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    .line 5297
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    .line 5299
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRequestedCacheMax:I

    .line 5300
    iput v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mViewCacheMax:I

    return-void
.end method

.method private blacklist attachAccessibilityDelegate(Landroid/view/View;)V
    .registers 3
    .param p1, "itemView"    # Landroid/view/View;

    .line 5687
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 5688
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_12

    .line 5690
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 5693
    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    if-nez v0, :cond_23

    .line 5694
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAccessibilityDelegate:Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->getItemDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 5697
    :cond_23
    return-void
.end method

.method private blacklist invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V
    .registers 7
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "invalidateThis"    # Z

    .line 5706
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_19

    .line 5707
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5708
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_16

    .line 5709
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    .line 5706
    .end local v2    # "view":Landroid/view/View;
    :cond_16
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 5712
    .end local v0    # "i":I
    :cond_19
    if-nez p2, :cond_1c

    .line 5713
    return-void

    .line 5716
    :cond_1c
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2b

    .line 5717
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5718
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_35

    .line 5720
    :cond_2b
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    .line 5721
    .local v0, "visibility":I
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5722
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5724
    .end local v0    # "visibility":I
    :goto_35
    return-void
.end method

.method private blacklist invalidateDisplayListInt(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 4
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 5700
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    .line 5701
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    .line 5703
    :cond_e
    return-void
.end method

.method private blacklist tryBindViewHolderByDeadline(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIJ)Z
    .registers 15
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "offsetPosition"    # I
    .param p3, "position"    # I
    .param p4, "deadlineNs"    # J

    .line 5396
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iput-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 5397
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    .line 5398
    .local v2, "viewType":I
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getNanoTime()J

    move-result-wide v3

    .line 5399
    .local v3, "startBindNs":J
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p4, v0

    if-eqz v0, :cond_22

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    .line 5400
    move-wide v5, p4

    .end local p4    # "deadlineNs":J
    .local v5, "deadlineNs":J
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->willBindInTime(IJJ)Z

    move-result p4

    if-nez p4, :cond_23

    .line 5402
    const/4 p4, 0x0

    return p4

    .line 5399
    .end local v5    # "deadlineNs":J
    .restart local p4    # "deadlineNs":J
    :cond_22
    move-wide v5, p4

    .line 5404
    .end local p4    # "deadlineNs":J
    .restart local v5    # "deadlineNs":J
    :cond_23
    iget-object p4, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object p4, p4, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {p4, p1, p2}, Lcom/android/internal/widget/RecyclerView$Adapter;->bindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    .line 5405
    iget-object p4, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {p4}, Lcom/android/internal/widget/RecyclerView;->getNanoTime()J

    move-result-wide p4

    .line 5406
    .local p4, "endBindNs":J
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    sub-long v7, p4, v3

    invoke-virtual {v0, v1, v7, v8}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->factorInBindTime(IJ)V

    .line 5407
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->attachAccessibilityDelegate(Landroid/view/View;)V

    .line 5408
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 5409
    iput p3, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 5411
    :cond_4c
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method blacklist addViewHolderToRecycledViewPool(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V
    .registers 5
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "dispatchRecycled"    # Z

    .line 5892
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 5893
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 5894
    if-eqz p2, :cond_e

    .line 5895
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$Recycler;->dispatchViewRecycled(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 5897
    :cond_e
    iput-object v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 5898
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$Recycler;->getRecycledViewPool()Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->putRecycledView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 5899
    return-void
.end method

.method public blacklist bindViewToPosition(Landroid/view/View;I)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 5430
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 5431
    .local v1, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_9c

    .line 5436
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v2

    .line 5437
    .local v2, "offsetPosition":I
    if-ltz v2, :cond_65

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge v2, v0, :cond_65

    .line 5442
    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v3, p2

    .end local p2    # "position":I
    .local v3, "position":I
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/RecyclerView$Recycler;->tryBindViewHolderByDeadline(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIJ)Z

    .line 5444
    iget-object p2, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 5446
    .local p2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez p2, :cond_3a

    .line 5447
    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 5448
    .local v4, "rvLayoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    iget-object v5, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_53

    .line 5449
    .end local v4    # "rvLayoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    :cond_3a
    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v4, p2}, Lcom/android/internal/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v4

    if-nez v4, :cond_50

    .line 5450
    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v4, p2}, Lcom/android/internal/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 5451
    .restart local v4    # "rvLayoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    iget-object v5, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_53

    .line 5453
    .end local v4    # "rvLayoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    :cond_50
    move-object v4, p2

    check-cast v4, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 5456
    .restart local v4    # "rvLayoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    :goto_53
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 5457
    iput-object v1, v4, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 5458
    iget-object v6, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_61

    goto :goto_62

    :cond_61
    const/4 v5, 0x0

    :goto_62
    iput-boolean v5, v4, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 5459
    return-void

    .line 5437
    .end local v3    # "position":I
    .end local v4    # "rvLayoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    .local p2, "position":I
    :cond_65
    move-object v0, p0

    move v3, p2

    .line 5438
    .end local p2    # "position":I
    .restart local v3    # "position":I
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inconsistency detected. Invalid item position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(offset:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ").state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v5, v5, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    .line 5440
    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p2, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 5432
    .end local v2    # "offsetPosition":I
    .end local v3    # "position":I
    .restart local p2    # "position":I
    :cond_9c
    move v3, p2

    .end local p2    # "position":I
    .restart local v3    # "position":I
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v2, "The view does not have a ViewHolder. You cannot pass arbitrary views to this method, they should be created by the Adapter"

    invoke-direct {p2, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public blacklist clear()V
    .registers 2

    .line 5313
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5314
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    .line 5315
    return-void
.end method

.method blacklist clearOldPositions()V
    .registers 6

    .line 6276
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6277
    .local v0, "cachedCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 6278
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 6279
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 6277
    .end local v2    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 6281
    .end local v1    # "i":I
    :cond_17
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6282
    .local v1, "scrapCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    if-ge v2, v1, :cond_2e

    .line 6283
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 6282
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 6285
    .end local v2    # "i":I
    :cond_2e
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v2, :cond_49

    .line 6286
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6287
    .local v2, "changedScrapCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_39
    if-ge v3, v2, :cond_49

    .line 6288
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 6287
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 6291
    .end local v2    # "changedScrapCount":I
    .end local v3    # "i":I
    :cond_49
    return-void
.end method

.method blacklist clearScrap()V
    .registers 2

    .line 5969
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5970
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    .line 5971
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5973
    :cond_e
    return-void
.end method

.method public blacklist convertPreLayoutPositionToPostLayout(I)I
    .registers 5
    .param p1, "position"    # I

    .line 5480
    if-ltz p1, :cond_20

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_20

    .line 5484
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_17

    .line 5485
    return p1

    .line 5487
    :cond_17
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v0

    return v0

    .line 5481
    :cond_20
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". State item count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    .line 5482
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist dispatchViewRecycled(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 3
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 6120
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mRecyclerListener:Lcom/android/internal/widget/RecyclerView$RecyclerListener;

    if-eqz v0, :cond_d

    .line 6121
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mRecyclerListener:Lcom/android/internal/widget/RecyclerView$RecyclerListener;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/RecyclerView$RecyclerListener;->onViewRecycled(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 6123
    :cond_d
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1a

    .line 6124
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$Adapter;->onViewRecycled(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 6126
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    if-eqz v0, :cond_27

    .line 6127
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ViewInfoStore;->removeViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 6130
    :cond_27
    return-void
.end method

.method blacklist getChangedScrapViewForPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 12
    .param p1, "position"    # I

    .line 5978
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v0

    .local v2, "changedScrapSize":I
    if-nez v0, :cond_f

    goto :goto_76

    .line 5982
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    const/16 v3, 0x20

    if-ge v0, v2, :cond_2f

    .line 5983
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 5984
    .local v4, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v5

    if-nez v5, :cond_2c

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v5

    if-ne v5, p1, :cond_2c

    .line 5985
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5986
    return-object v4

    .line 5982
    .end local v4    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 5990
    .end local v0    # "i":I
    :cond_2f
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 5991
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v0

    .line 5992
    .local v0, "offsetPosition":I
    if-lez v0, :cond_75

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    if-ge v0, v4, :cond_75

    .line 5993
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v4

    .line 5994
    .local v4, "id":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_56
    if-ge v6, v2, :cond_75

    .line 5995
    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 5996
    .local v7, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v8

    if-nez v8, :cond_72

    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v8

    cmp-long v8, v8, v4

    if-nez v8, :cond_72

    .line 5997
    invoke-virtual {v7, v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5998
    return-object v7

    .line 5994
    .end local v7    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_72
    add-int/lit8 v6, v6, 0x1

    goto :goto_56

    .line 6003
    .end local v0    # "offsetPosition":I
    .end local v4    # "id":J
    .end local v6    # "i":I
    :cond_75
    return-object v1

    .line 5979
    .end local v2    # "changedScrapSize":I
    :cond_76
    :goto_76
    return-object v1
.end method

.method blacklist getRecycledViewPool()Lcom/android/internal/widget/RecyclerView$RecycledViewPool;
    .registers 2

    .line 6224
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    if-nez v0, :cond_b

    .line 6225
    new-instance v0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    .line 6227
    :cond_b
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    return-object v0
.end method

.method blacklist getScrapCount()I
    .registers 2

    .line 5961
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getScrapList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .line 5344
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    return-object v0
.end method

.method blacklist getScrapOrCachedViewForId(JIZ)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 12
    .param p1, "id"    # J
    .param p3, "type"    # I
    .param p4, "dryRun"    # Z

    .line 6068
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6069
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_59

    .line 6070
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 6071
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_56

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v3

    if-nez v3, :cond_56

    .line 6072
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-ne p3, v3, :cond_42

    .line 6073
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6074
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 6083
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v3

    if-nez v3, :cond_41

    .line 6084
    const/4 v3, 0x2

    const/16 v4, 0xe

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 6088
    :cond_41
    return-object v2

    .line 6089
    :cond_42
    if-nez p4, :cond_56

    .line 6093
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6094
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v4, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6095
    iget-object v3, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/RecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    .line 6069
    .end local v2    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_56
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 6101
    .end local v1    # "i":I
    :cond_59
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6102
    .local v1, "cacheSize":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_61
    const/4 v3, 0x0

    if-ltz v2, :cond_8b

    .line 6103
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 6104
    .local v4, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v5

    cmp-long v5, v5, p1

    if-nez v5, :cond_88

    .line 6105
    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v5

    if-ne p3, v5, :cond_82

    .line 6106
    if-nez p4, :cond_81

    .line 6107
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6109
    :cond_81
    return-object v4

    .line 6110
    :cond_82
    if-nez p4, :cond_88

    .line 6111
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 6112
    return-object v3

    .line 6102
    .end local v4    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_88
    add-int/lit8 v2, v2, -0x1

    goto :goto_61

    .line 6116
    .end local v2    # "i":I
    :cond_8b
    return-object v3
.end method

.method blacklist getScrapOrHiddenOrCachedHolderForPosition(IZ)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 10
    .param p1, "position"    # I
    .param p2, "dryRun"    # Z

    .line 6014
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6017
    .local v0, "scrapCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_3a

    .line 6018
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 6019
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v3

    if-nez v3, :cond_37

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    if-ne v3, p1, :cond_37

    .line 6020
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_37

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v3, v3, Lcom/android/internal/widget/RecyclerView$State;->mInPreLayout:Z

    if-nez v3, :cond_31

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_37

    .line 6021
    :cond_31
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6022
    return-object v2

    .line 6017
    .end local v2    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 6026
    .end local v1    # "i":I
    :cond_3a
    if-nez p2, :cond_85

    .line 6027
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ChildHelper;->findHiddenNonRemovedView(I)Landroid/view/View;

    move-result-object v1

    .line 6028
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_85

    .line 6031
    invoke-static {v1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 6032
    .local v2, "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/ChildHelper;->unhide(Landroid/view/View;)V

    .line 6033
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 6034
    .local v3, "layoutIndex":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_6c

    .line 6038
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/ChildHelper;->detachViewFromParent(I)V

    .line 6039
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    .line 6040
    const/16 v4, 0x2020

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6042
    return-object v2

    .line 6035
    :cond_6c
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6047
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v3    # "layoutIndex":I
    :cond_85
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6048
    .local v1, "cacheSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8c
    if-ge v2, v1, :cond_ad

    .line 6049
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 6052
    .local v3, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_aa

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_aa

    .line 6053
    if-nez p2, :cond_a9

    .line 6054
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6060
    :cond_a9
    return-object v3

    .line 6048
    .end local v3    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_aa
    add-int/lit8 v2, v2, 0x1

    goto :goto_8c

    .line 6063
    .end local v2    # "i":I
    :cond_ad
    const/4 v2, 0x0

    return-object v2
.end method

.method blacklist getScrapViewAt(I)Landroid/view/View;
    .registers 3
    .param p1, "index"    # I

    .line 5965
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v0
.end method

.method public blacklist getViewForPosition(I)Landroid/view/View;
    .registers 3
    .param p1, "position"    # I

    .line 5505
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->getViewForPosition(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method blacklist getViewForPosition(IZ)Landroid/view/View;
    .registers 5
    .param p1, "position"    # I
    .param p2, "dryRun"    # Z

    .line 5509
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->tryGetViewHolderForPositionByDeadline(IZJ)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v0
.end method

.method blacklist markItemDecorInsetsDirty()V
    .registers 6

    .line 6294
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6295
    .local v0, "cachedCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_21

    .line 6296
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 6297
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    iget-object v3, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 6298
    .local v3, "layoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    if-eqz v3, :cond_1e

    .line 6299
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 6295
    .end local v2    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v3    # "layoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 6302
    .end local v1    # "i":I
    :cond_21
    return-void
.end method

.method blacklist markKnownViewsInvalid()V
    .registers 5

    .line 6260
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 6261
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6262
    .local v0, "cachedCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    if-ge v1, v0, :cond_2e

    .line 6263
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 6264
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_2b

    .line 6265
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6266
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    .line 6262
    .end local v2    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 6269
    .end local v0    # "cachedCount":I
    .end local v1    # "i":I
    :cond_2e
    goto :goto_32

    .line 6271
    :cond_2f
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    .line 6273
    :goto_32
    return-void
.end method

.method blacklist offsetPositionRecordsForInsert(II)V
    .registers 7
    .param p1, "insertedAt"    # I
    .param p2, "count"    # I

    .line 6168
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6169
    .local v0, "cachedCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1e

    .line 6170
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 6171
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_1b

    iget v3, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v3, p1, :cond_1b

    .line 6176
    const/4 v3, 0x1

    invoke-virtual {v2, p2, v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 6169
    .end local v2    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 6179
    .end local v1    # "i":I
    :cond_1e
    return-void
.end method

.method blacklist offsetPositionRecordsForMove(II)V
    .registers 11
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 6140
    if-ge p1, p2, :cond_6

    .line 6141
    move v0, p1

    .line 6142
    .local v0, "start":I
    move v1, p2

    .line 6143
    .local v1, "end":I
    const/4 v2, -0x1

    .local v2, "inBetweenOffset":I
    goto :goto_9

    .line 6145
    .end local v0    # "start":I
    .end local v1    # "end":I
    .end local v2    # "inBetweenOffset":I
    :cond_6
    move v0, p2

    .line 6146
    .restart local v0    # "start":I
    move v1, p1

    .line 6147
    .restart local v1    # "end":I
    const/4 v2, 0x1

    .line 6149
    .restart local v2    # "inBetweenOffset":I
    :goto_9
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6150
    .local v3, "cachedCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_10
    if-ge v4, v3, :cond_36

    .line 6151
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 6152
    .local v5, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v5, :cond_33

    iget v6, v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v6, v0, :cond_33

    iget v6, v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-le v6, v1, :cond_25

    .line 6153
    goto :goto_33

    .line 6155
    :cond_25
    iget v6, v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    const/4 v7, 0x0

    if-ne v6, p1, :cond_30

    .line 6156
    sub-int v6, p2, p1

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_33

    .line 6158
    :cond_30
    invoke-virtual {v5, v2, v7}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 6150
    .end local v5    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_33
    :goto_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 6165
    .end local v4    # "i":I
    :cond_36
    return-void
.end method

.method blacklist offsetPositionRecordsForRemove(IIZ)V
    .registers 9
    .param p1, "removedFrom"    # I
    .param p2, "count"    # I
    .param p3, "applyToPreLayout"    # Z

    .line 6188
    add-int v0, p1, p2

    .line 6189
    .local v0, "removedEnd":I
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6190
    .local v1, "cachedCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_a
    if-ltz v2, :cond_2e

    .line 6191
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 6192
    .local v3, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v3, :cond_2b

    .line 6193
    iget v4, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, v0, :cond_1f

    .line 6199
    neg-int v4, p2

    invoke-virtual {v3, v4, p3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2b

    .line 6200
    :cond_1f
    iget v4, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_2b

    .line 6202
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6203
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 6190
    .end local v3    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_2b
    :goto_2b
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 6207
    .end local v2    # "i":I
    :cond_2e
    return-void
.end method

.method blacklist onAdapterChanged(Lcom/android/internal/widget/RecyclerView$Adapter;Lcom/android/internal/widget/RecyclerView$Adapter;Z)V
    .registers 5
    .param p1, "oldAdapter"    # Lcom/android/internal/widget/RecyclerView$Adapter;
    .param p2, "newAdapter"    # Lcom/android/internal/widget/RecyclerView$Adapter;
    .param p3, "compatibleWithPrevious"    # Z

    .line 6134
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$Recycler;->clear()V

    .line 6135
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$Recycler;->getRecycledViewPool()Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->onAdapterChanged(Lcom/android/internal/widget/RecyclerView$Adapter;Lcom/android/internal/widget/RecyclerView$Adapter;Z)V

    .line 6136
    return-void
.end method

.method blacklist quickRecycleScrapView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 5907
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 5908
    .local v0, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->-$$Nest$fputmScrapContainer(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 5909
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->-$$Nest$fputmInChangeScrap(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V

    .line 5910
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 5911
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 5912
    return-void
.end method

.method blacklist recycleAndClearCachedViews()V
    .registers 3

    .line 5761
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5762
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_10

    .line 5763
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 5762
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 5765
    .end local v1    # "i":I
    :cond_10
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5766
    invoke-static {}, Lcom/android/internal/widget/RecyclerView;->-$$Nest$sfgetALLOW_THREAD_GAP_WORK()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 5767
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v1}, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->clearPrefetchPositions()V

    .line 5769
    :cond_22
    return-void
.end method

.method blacklist recycleCachedViewAt(I)V
    .registers 4
    .param p1, "cachedViewIndex"    # I

    .line 5786
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 5790
    .local v0, "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V

    .line 5791
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5792
    return-void
.end method

.method public blacklist recycleView(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 5739
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 5740
    .local v0, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 5741
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 5743
    :cond_10
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 5744
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->unScrap()V

    goto :goto_23

    .line 5745
    :cond_1a
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 5746
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 5748
    :cond_23
    :goto_23
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 5749
    return-void
.end method

.method blacklist recycleViewHolderInternal(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 12
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 5800
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_d1

    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_12

    goto/16 :goto_d1

    .line 5807
    :cond_12
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v0

    if-nez v0, :cond_b8

    .line 5812
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_b0

    .line 5817
    nop

    .line 5818
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->-$$Nest$mdoesTransientStatePreventRecycling(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    .line 5819
    .local v0, "transientStatePreventsRecycling":Z
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v3, :cond_37

    if-eqz v0, :cond_37

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    .line 5821
    invoke-virtual {v3, p1}, Lcom/android/internal/widget/RecyclerView$Adapter;->onFailedToRecycleView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v3

    if-eqz v3, :cond_37

    move v3, v2

    goto :goto_38

    :cond_37
    move v3, v1

    .line 5822
    .local v3, "forceRecycle":Z
    :goto_38
    const/4 v4, 0x0

    .line 5823
    .local v4, "cached":Z
    const/4 v5, 0x0

    .line 5828
    .local v5, "recycled":Z
    if-nez v3, :cond_42

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result v6

    if-eqz v6, :cond_9f

    .line 5829
    :cond_42
    iget v6, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-lez v6, :cond_99

    .line 5830
    const/16 v6, 0x20e

    invoke-virtual {p1, v6}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v6

    if-nez v6, :cond_99

    .line 5835
    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 5836
    .local v6, "cachedViewSize":I
    iget v7, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-lt v6, v7, :cond_5f

    if-lez v6, :cond_5f

    .line 5837
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 5838
    add-int/lit8 v6, v6, -0x1

    .line 5841
    :cond_5f
    move v1, v6

    .line 5842
    .local v1, "targetCacheIndex":I
    invoke-static {}, Lcom/android/internal/widget/RecyclerView;->-$$Nest$sfgetALLOW_THREAD_GAP_WORK()Z

    move-result v7

    if-eqz v7, :cond_93

    if-lez v6, :cond_93

    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v7, v7, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    iget v8, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 5844
    invoke-virtual {v7, v8}, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->lastPrefetchIncludedPosition(I)Z

    move-result v7

    if-nez v7, :cond_93

    .line 5846
    add-int/lit8 v7, v6, -0x1

    .line 5847
    .local v7, "cacheIndex":I
    :goto_76
    if-ltz v7, :cond_91

    .line 5848
    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget v8, v8, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 5849
    .local v8, "cachedPos":I
    iget-object v9, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v9, v9, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v9, v8}, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->lastPrefetchIncludedPosition(I)Z

    move-result v9

    if-nez v9, :cond_8d

    .line 5850
    goto :goto_91

    .line 5852
    :cond_8d
    nop

    .end local v8    # "cachedPos":I
    add-int/lit8 v7, v7, -0x1

    .line 5853
    goto :goto_76

    .line 5854
    :cond_91
    :goto_91
    add-int/lit8 v1, v7, 0x1

    .line 5856
    .end local v7    # "cacheIndex":I
    :cond_93
    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5857
    const/4 v4, 0x1

    .line 5859
    .end local v1    # "targetCacheIndex":I
    .end local v6    # "cachedViewSize":I
    :cond_99
    if-nez v4, :cond_9f

    .line 5860
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V

    .line 5861
    const/4 v5, 0x1

    .line 5877
    :cond_9f
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ViewInfoStore;->removeViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 5878
    if-nez v4, :cond_af

    if-nez v5, :cond_af

    if-eqz v0, :cond_af

    .line 5879
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 5881
    :cond_af
    return-void

    .line 5813
    .end local v0    # "transientStatePreventsRecycling":Z
    .end local v3    # "forceRecycle":Z
    .end local v4    # "cached":Z
    .end local v5    # "recycled":Z
    :cond_b0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5808
    :cond_b8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5801
    :cond_d1
    :goto_d1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5803
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isAttached:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 5804
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_f5

    move v1, v2

    :cond_f5
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist recycleViewInternal(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 5757
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 5758
    return-void
.end method

.method blacklist scrapView(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 5924
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 5925
    .local v0, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v1

    if-nez v1, :cond_30

    .line 5926
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/RecyclerView;->canReuseUpdatedViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_30

    .line 5935
    :cond_1b
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-nez v1, :cond_26

    .line 5936
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 5938
    :cond_26
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setScrapContainer(Lcom/android/internal/widget/RecyclerView$Recycler;Z)V

    .line 5939
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 5927
    :cond_30
    :goto_30
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_4f

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_47

    goto :goto_4f

    .line 5928
    :cond_47
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5932
    :cond_4f
    :goto_4f
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setScrapContainer(Lcom/android/internal/widget/RecyclerView$Recycler;Z)V

    .line 5933
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5941
    :goto_58
    return-void
.end method

.method blacklist setAdapterPositionsAsUnknown()V
    .registers 5

    .line 6250
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6251
    .local v0, "cachedCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1b

    .line 6252
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 6253
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_18

    .line 6254
    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6251
    .end local v2    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 6257
    .end local v1    # "i":I
    :cond_1b
    return-void
.end method

.method blacklist setRecycledViewPool(Lcom/android/internal/widget/RecyclerView$RecycledViewPool;)V
    .registers 4
    .param p1, "pool"    # Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    .line 6214
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    if-eqz v0, :cond_9

    .line 6215
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->detach()V

    .line 6217
    :cond_9
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    .line 6218
    if-eqz p1, :cond_18

    .line 6219
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->getAdapter()Lcom/android/internal/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->attach(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    .line 6221
    :cond_18
    return-void
.end method

.method blacklist setViewCacheExtension(Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;)V
    .registers 2
    .param p1, "extension"    # Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;

    .line 6210
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mViewCacheExtension:Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;

    .line 6211
    return-void
.end method

.method public blacklist setViewCacheSize(I)V
    .registers 2
    .param p1, "viewCount"    # I

    .line 5323
    iput p1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRequestedCacheMax:I

    .line 5324
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 5325
    return-void
.end method

.method blacklist tryGetViewHolderForPositionByDeadline(IZJ)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 21
    .param p1, "position"    # I
    .param p2, "dryRun"    # Z
    .param p3, "deadlineNs"    # J

    .line 5533
    move-object/from16 v0, p0

    move/from16 v3, p1

    move/from16 v6, p2

    if-ltz v3, :cond_20c

    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    if-ge v3, v1, :cond_20c

    .line 5537
    const/4 v1, 0x0

    .line 5538
    .local v1, "fromScrapOrHiddenOrCache":Z
    const/4 v2, 0x0

    .line 5540
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v4

    const/4 v8, 0x0

    if-eqz v4, :cond_29

    .line 5541
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/widget/RecyclerView$Recycler;->getChangedScrapViewForPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 5542
    if-eqz v2, :cond_27

    const/4 v4, 0x1

    goto :goto_28

    :cond_27
    move v4, v8

    :goto_28
    move v1, v4

    .line 5545
    :cond_29
    if-nez v2, :cond_5d

    .line 5546
    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/widget/RecyclerView$Recycler;->getScrapOrHiddenOrCachedHolderForPosition(IZ)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 5547
    if-eqz v2, :cond_5d

    .line 5548
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/RecyclerView$Recycler;->validateViewHolderForOffsetPosition(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v4

    if-nez v4, :cond_5c

    .line 5550
    if-nez v6, :cond_5a

    .line 5553
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5554
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 5555
    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v5, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5, v8}, Lcom/android/internal/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 5556
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->unScrap()V

    goto :goto_57

    .line 5557
    :cond_4e
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 5558
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 5560
    :cond_57
    :goto_57
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 5562
    :cond_5a
    const/4 v2, 0x0

    goto :goto_5d

    .line 5564
    :cond_5c
    const/4 v1, 0x1

    .line 5568
    :cond_5d
    :goto_5d
    if-nez v2, :cond_15d

    .line 5569
    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v4

    .line 5570
    .local v4, "offsetPosition":I
    if-ltz v4, :cond_128

    iget-object v5, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v5, v5, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    if-ge v4, v5, :cond_128

    .line 5576
    iget-object v5, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v5, v5, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v10

    .line 5578
    .local v10, "type":I
    iget-object v5, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v5, v5, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v5

    if-eqz v5, :cond_96

    .line 5579
    iget-object v5, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v5, v5, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v11

    invoke-virtual {v0, v11, v12, v10, v6}, Lcom/android/internal/widget/RecyclerView$Recycler;->getScrapOrCachedViewForId(JIZ)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 5581
    if-eqz v2, :cond_96

    .line 5583
    iput v4, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 5584
    const/4 v1, 0x1

    .line 5587
    :cond_96
    if-nez v2, :cond_c3

    iget-object v5, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->mViewCacheExtension:Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;

    if-eqz v5, :cond_c3

    .line 5590
    iget-object v5, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->mViewCacheExtension:Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;

    .line 5591
    invoke-virtual {v5, v0, v3, v10}, Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;->getViewForPositionAndType(Lcom/android/internal/widget/RecyclerView$Recycler;II)Landroid/view/View;

    move-result-object v5

    .line 5592
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_c3

    .line 5593
    iget-object v9, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v9, v5}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 5594
    if-eqz v2, :cond_bb

    .line 5597
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v9

    if-nez v9, :cond_b3

    goto :goto_c3

    .line 5598
    :cond_b3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 5595
    :cond_bb
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 5604
    .end local v5    # "view":Landroid/view/View;
    :cond_c3
    :goto_c3
    if-nez v2, :cond_d9

    .line 5609
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->getRecycledViewPool()Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->getRecycledView(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 5610
    if-eqz v2, :cond_d9

    .line 5611
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 5612
    sget-boolean v5, Lcom/android/internal/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    if-eqz v5, :cond_d9

    .line 5613
    invoke-direct {v0, v2}, Lcom/android/internal/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 5617
    :cond_d9
    if-nez v2, :cond_125

    .line 5618
    iget-object v5, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView;->getNanoTime()J

    move-result-wide v11

    .line 5619
    .local v11, "start":J
    const-wide v13, 0x7fffffffffffffffL

    cmp-long v5, p3, v13

    if-eqz v5, :cond_f6

    iget-object v9, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    .line 5620
    move-wide/from16 v13, p3

    invoke-virtual/range {v9 .. v14}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->willCreateInTime(IJJ)Z

    move-result v5

    if-nez v5, :cond_f6

    .line 5622
    const/4 v5, 0x0

    return-object v5

    .line 5624
    :cond_f6
    iget-object v5, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v5, v5, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    iget-object v9, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v5, v9, v10}, Lcom/android/internal/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 5625
    invoke-static {}, Lcom/android/internal/widget/RecyclerView;->-$$Nest$sfgetALLOW_THREAD_GAP_WORK()Z

    move-result v5

    if-eqz v5, :cond_115

    .line 5627
    iget-object v5, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v5}, Lcom/android/internal/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v5

    .line 5628
    .local v5, "innerView":Lcom/android/internal/widget/RecyclerView;
    if-eqz v5, :cond_115

    .line 5629
    new-instance v9, Ljava/lang/ref/WeakReference;

    invoke-direct {v9, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v9, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 5633
    .end local v5    # "innerView":Lcom/android/internal/widget/RecyclerView;
    :cond_115
    iget-object v5, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView;->getNanoTime()J

    move-result-wide v13

    .line 5634
    .local v13, "end":J
    iget-object v5, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    sub-long v7, v13, v11

    invoke-virtual {v5, v10, v7, v8}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->factorInCreateTime(IJ)V

    move v7, v1

    move-object v1, v2

    goto :goto_15f

    .line 5617
    .end local v11    # "start":J
    .end local v13    # "end":J
    :cond_125
    move v7, v1

    move-object v1, v2

    goto :goto_15f

    .line 5571
    .end local v10    # "type":I
    :cond_128
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Inconsistency detected. Invalid item position "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "(offset:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ").state:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v8, v8, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    .line 5573
    invoke-virtual {v8}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5568
    .end local v4    # "offsetPosition":I
    :cond_15d
    move v7, v1

    move-object v1, v2

    .line 5644
    .end local v2    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .local v1, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .local v7, "fromScrapOrHiddenOrCache":Z
    :goto_15f
    if-eqz v7, :cond_19e

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    if-nez v2, :cond_19e

    .line 5645
    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v4

    if-eqz v4, :cond_19c

    .line 5646
    const/4 v15, 0x0

    invoke-virtual {v1, v15, v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 5647
    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v2, v2, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v2, :cond_19f

    .line 5648
    nop

    .line 5649
    invoke-static {v1}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v2

    .line 5650
    .local v2, "changeFlags":I
    or-int/lit16 v2, v2, 0x1000

    .line 5651
    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    iget-object v5, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v5, v5, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    .line 5652
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v8

    .line 5651
    invoke-virtual {v4, v5, v1, v2, v8}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$ViewHolder;ILjava/util/List;)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v4

    .line 5653
    .local v4, "info":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    iget-object v5, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v5, v1, v4}, Lcom/android/internal/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_19f

    .line 5645
    .end local v2    # "changeFlags":I
    .end local v4    # "info":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    :cond_19c
    const/4 v15, 0x0

    goto :goto_19f

    .line 5644
    :cond_19e
    const/4 v15, 0x0

    .line 5657
    :cond_19f
    :goto_19f
    const/4 v8, 0x0

    .line 5658
    .local v8, "bound":Z
    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    if-eqz v2, :cond_1b3

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v2

    if-eqz v2, :cond_1b3

    .line 5660
    iput v3, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    goto :goto_1d3

    .line 5661
    :cond_1b3
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v2

    if-eqz v2, :cond_1c5

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v2

    if-nez v2, :cond_1c5

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v2

    if-eqz v2, :cond_1d3

    .line 5666
    :cond_1c5
    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v2

    .line 5667
    .local v2, "offsetPosition":I
    move-wide/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/RecyclerView$Recycler;->tryBindViewHolderByDeadline(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIJ)Z

    move-result v8

    .line 5670
    .end local v2    # "offsetPosition":I
    :cond_1d3
    :goto_1d3
    iget-object v2, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 5672
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v2, :cond_1e9

    .line 5673
    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 5674
    .local v4, "rvLayoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    iget-object v5, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_202

    .line 5675
    .end local v4    # "rvLayoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    :cond_1e9
    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v4, v2}, Lcom/android/internal/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v4

    if-nez v4, :cond_1ff

    .line 5676
    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v4, v2}, Lcom/android/internal/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 5677
    .restart local v4    # "rvLayoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    iget-object v5, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_202

    .line 5679
    .end local v4    # "rvLayoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    :cond_1ff
    move-object v4, v2

    check-cast v4, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 5681
    .restart local v4    # "rvLayoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    :goto_202
    iput-object v1, v4, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 5682
    if-eqz v7, :cond_209

    if-eqz v8, :cond_209

    const/4 v15, 0x1

    :cond_209
    iput-boolean v15, v4, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 5683
    return-object v1

    .line 5534
    .end local v1    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "rvLayoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    .end local v7    # "fromScrapOrHiddenOrCache":Z
    .end local v8    # "bound":Z
    :cond_20c
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid item position "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "). Item count:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    .line 5535
    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method blacklist unscrapView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 3
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 5950
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->-$$Nest$fgetmInChangeScrap(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5951
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_11

    .line 5953
    :cond_c
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5955
    :goto_11
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->-$$Nest$fputmScrapContainer(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 5956
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->-$$Nest$fputmInChangeScrap(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V

    .line 5957
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 5958
    return-void
.end method

.method blacklist updateViewCacheSize()V
    .registers 5

    .line 5328
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget v0, v0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 5329
    .local v0, "extraCache":I
    :goto_e
    iget v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRequestedCacheMax:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mViewCacheMax:I

    .line 5332
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 5333
    .local v1, "i":I
    :goto_1b
    if-ltz v1, :cond_2d

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-le v2, v3, :cond_2d

    .line 5334
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 5333
    add-int/lit8 v1, v1, -0x1

    goto :goto_1b

    .line 5336
    .end local v1    # "i":I
    :cond_2d
    return-void
.end method

.method blacklist validateViewHolderForOffsetPosition(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .registers 9
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 5358
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5363
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    return v0

    .line 5365
    :cond_f
    iget v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ltz v0, :cond_5b

    iget v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_5b

    .line 5369
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3b

    .line 5371
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    iget v2, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    .line 5372
    .local v0, "type":I
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    if-eq v0, v2, :cond_3b

    .line 5373
    return v1

    .line 5376
    .end local v0    # "type":I
    :cond_3b
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5a

    .line 5377
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v3

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    iget v5, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_59

    move v1, v2

    :cond_59
    return v1

    .line 5379
    :cond_5a
    return v2

    .line 5366
    :cond_5b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist viewRangeUpdate(II)V
    .registers 9
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 6231
    add-int v0, p1, p2

    .line 6232
    .local v0, "positionEnd":I
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6233
    .local v1, "cachedCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_a
    if-ltz v2, :cond_29

    .line 6234
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 6235
    .local v3, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-nez v3, :cond_17

    .line 6236
    goto :goto_26

    .line 6239
    :cond_17
    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    .line 6240
    .local v4, "pos":I
    if-lt v4, p1, :cond_26

    if-ge v4, v0, :cond_26

    .line 6241
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6242
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 6233
    .end local v3    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v4    # "pos":I
    :cond_26
    :goto_26
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 6247
    .end local v2    # "i":I
    :cond_29
    return-void
.end method
