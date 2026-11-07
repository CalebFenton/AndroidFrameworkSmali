.class Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;
.super Landroid/database/Observable;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdapterDataObservable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable<",
        "Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 11153
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist hasObservers()Z
    .registers 2

    .line 11155
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist notifyChanged()V
    .registers 3

    .line 11163
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 11164
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 11163
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 11166
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method public blacklist notifyItemMoved(II)V
    .registers 6
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .line 11203
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 11204
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;->onItemRangeMoved(III)V

    .line 11203
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 11206
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method public blacklist notifyItemRangeChanged(II)V
    .registers 4
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 11169
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 11170
    return-void
.end method

.method public blacklist notifyItemRangeChanged(IILjava/lang/Object;)V
    .registers 6
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 11177
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 11178
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(IILjava/lang/Object;)V

    .line 11177
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 11180
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method public blacklist notifyItemRangeInserted(II)V
    .registers 5
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 11187
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 11188
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    .line 11187
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 11190
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method public blacklist notifyItemRangeRemoved(II)V
    .registers 5
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 11197
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 11198
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    .line 11197
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 11200
    .end local v0    # "i":I
    :cond_18
    return-void
.end method
