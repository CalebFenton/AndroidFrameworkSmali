.class Lcom/android/internal/widget/RecyclerView$4;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lcom/android/internal/widget/ViewInfoStore$ProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/RecyclerView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/RecyclerView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/widget/RecyclerView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 493
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$4;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist processAppeared(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 5
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "preInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "info"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 503
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$4;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView;->animateAppearance(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 504
    return-void
.end method

.method public blacklist processDisappeared(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 5
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "info"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "postInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 497
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$4;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$Recycler;->unscrapView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 498
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$4;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView;->animateDisappearance(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 499
    return-void
.end method

.method public blacklist processPersistent(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 5
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "preInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "postInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 509
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 510
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$4;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_1a

    .line 514
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$4;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->animateChange(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 515
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$4;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->postAnimationRunner()V

    goto :goto_29

    .line 517
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$4;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->animatePersistence(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 518
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$4;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->postAnimationRunner()V

    .line 520
    :cond_29
    :goto_29
    return-void
.end method

.method public blacklist unused(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 5
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 523
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$4;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$4;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 524
    return-void
.end method
