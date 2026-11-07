.class public abstract Lcom/android/internal/widget/RecyclerView$Adapter;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private blacklist mHasStableIds:Z

.field private final blacklist mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 6347
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6348
    new-instance v0, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-direct {v0}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    .line 6349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mHasStableIds:Z

    return-void
.end method


# virtual methods
.method public final blacklist bindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .registers 6
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 6451
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;, "TVH;"
    iput p2, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 6452
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 6453
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 6455
    :cond_e
    const/16 v0, 0x207

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 6458
    const-string v0, "RV OnBindView"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 6459
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 6460
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearPayload()V

    .line 6461
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 6462
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    if-eqz v2, :cond_32

    .line 6463
    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iput-boolean v1, v2, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 6465
    :cond_32
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 6466
    return-void
.end method

.method public final blacklist createViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .line 6436
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    const-string v0, "RV CreateView"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 6437
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 6438
    .local v0, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;, "TVH;"
    iput p2, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 6439
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 6440
    return-object v0
.end method

.method public abstract blacklist getItemCount()I
.end method

.method public blacklist getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .line 6509
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .line 6481
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist hasObservers()Z
    .registers 2

    .line 6619
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->hasObservers()Z

    move-result v0

    return v0
.end method

.method public final blacklist hasStableIds()Z
    .registers 2

    .line 6527
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mHasStableIds:Z

    return v0
.end method

.method public final blacklist notifyDataSetChanged()V
    .registers 2

    .line 6706
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyChanged()V

    .line 6707
    return-void
.end method

.method public final blacklist notifyItemChanged(I)V
    .registers 4
    .param p1, "position"    # I

    .line 6722
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    .line 6723
    return-void
.end method

.method public final blacklist notifyItemChanged(ILjava/lang/Object;)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "payload"    # Ljava/lang/Object;

    .line 6750
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 6751
    return-void
.end method

.method public final blacklist notifyItemInserted(I)V
    .registers 4
    .param p1, "position"    # I

    .line 6815
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    .line 6816
    return-void
.end method

.method public final blacklist notifyItemMoved(II)V
    .registers 4
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .line 6830
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemMoved(II)V

    .line 6831
    return-void
.end method

.method public final blacklist notifyItemRangeChanged(II)V
    .registers 4
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 6768
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    .line 6769
    return-void
.end method

.method public final blacklist notifyItemRangeChanged(IILjava/lang/Object;)V
    .registers 5
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 6798
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 6799
    return-void
.end method

.method public final blacklist notifyItemRangeInserted(II)V
    .registers 4
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 6849
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    .line 6850
    return-void
.end method

.method public final blacklist notifyItemRangeRemoved(II)V
    .registers 4
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 6883
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    .line 6884
    return-void
.end method

.method public final blacklist notifyItemRemoved(I)V
    .registers 4
    .param p1, "position"    # I

    .line 6866
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    .line 6867
    return-void
.end method

.method public blacklist onAttachedToRecyclerView(Lcom/android/internal/widget/RecyclerView;)V
    .registers 2
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;

    .line 6665
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    return-void
.end method

.method public abstract blacklist onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public blacklist onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .registers 4
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 6426
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;, "TVH;"
    .local p3, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$Adapter;->onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    .line 6427
    return-void
.end method

.method public abstract blacklist onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public blacklist onDetachedFromRecyclerView(Lcom/android/internal/widget/RecyclerView;)V
    .registers 2
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;

    .line 6674
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    return-void
.end method

.method public blacklist onFailedToRecycleView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    .line 6585
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;, "TVH;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onViewAttachedToWindow(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 6599
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public blacklist onViewDetachedFromWindow(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 6611
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public blacklist onViewRecycled(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 6548
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public blacklist registerAdapterDataObserver(Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;)V
    .registers 3
    .param p1, "observer"    # Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;

    .line 6639
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->registerObserver(Ljava/lang/Object;)V

    .line 6640
    return-void
.end method

.method public blacklist setHasStableIds(Z)V
    .registers 4
    .param p1, "hasStableIds"    # Z

    .line 6493
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasObservers()Z

    move-result v0

    if-nez v0, :cond_9

    .line 6497
    iput-boolean p1, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mHasStableIds:Z

    .line 6498
    return-void

    .line 6494
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist unregisterAdapterDataObserver(Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;)V
    .registers 3
    .param p1, "observer"    # Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;

    .line 6653
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 6654
    return-void
.end method
