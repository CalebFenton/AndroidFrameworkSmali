.class Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;
.super Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecyclerViewDataObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/RecyclerView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/RecyclerView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 4995
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;-><init>()V

    .line 4996
    return-void
.end method


# virtual methods
.method public blacklist onChanged()V
    .registers 3

    .line 5000
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5001
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    .line 5003
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->setDataSetChangedAfterLayout()V

    .line 5004
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-nez v0, :cond_21

    .line 5005
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 5007
    :cond_21
    return-void
.end method

.method public blacklist onItemRangeChanged(IILjava/lang/Object;)V
    .registers 6
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 5011
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5012
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/AdapterHelper;->onItemRangeChanged(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 5013
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 5015
    :cond_13
    return-void
.end method

.method public blacklist onItemRangeInserted(II)V
    .registers 5
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 5019
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5020
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/AdapterHelper;->onItemRangeInserted(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 5021
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 5023
    :cond_13
    return-void
.end method

.method public blacklist onItemRangeMoved(III)V
    .registers 6
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .line 5035
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5036
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/AdapterHelper;->onItemRangeMoved(III)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 5037
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 5039
    :cond_13
    return-void
.end method

.method public blacklist onItemRangeRemoved(II)V
    .registers 5
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 5027
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5028
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/AdapterHelper;->onItemRangeRemoved(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 5029
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 5031
    :cond_13
    return-void
.end method

.method blacklist triggerUpdateProcessor()V
    .registers 3

    .line 5042
    sget-boolean v0, Lcom/android/internal/widget/RecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView;->mHasFixedSize:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_1a

    .line 5043
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_24

    .line 5045
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 5046
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 5048
    :goto_24
    return-void
.end method
