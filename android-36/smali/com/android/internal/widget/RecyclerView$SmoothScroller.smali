.class public abstract Lcom/android/internal/widget/RecyclerView$SmoothScroller;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SmoothScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;,
        Lcom/android/internal/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;
    }
.end annotation


# instance fields
.field private blacklist mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

.field private blacklist mPendingInitialRun:Z

.field private blacklist mRecyclerView:Lcom/android/internal/widget/RecyclerView;

.field private final blacklist mRecyclingAction:Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;

.field private blacklist mRunning:Z

.field private blacklist mTargetPosition:I

.field private blacklist mTargetView:Landroid/view/View;


# direct methods
.method static bridge synthetic blacklist -$$Nest$monAnimation(Lcom/android/internal/widget/RecyclerView$SmoothScroller;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 10736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10722
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 10737
    new-instance v0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;-><init>(II)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;

    .line 10738
    return-void
.end method

.method private blacklist onAnimation(II)V
    .registers 7
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 10832
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 10833
    .local v0, "recyclerView":Lcom/android/internal/widget/RecyclerView;
    iget-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v1, :cond_d

    iget v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    if-nez v0, :cond_10

    .line 10834
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->stop()V

    .line 10836
    :cond_10
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 10837
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    if-eqz v1, :cond_3d

    .line 10839
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    if-ne v1, v2, :cond_33

    .line 10840
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->onTargetFound(Landroid/view/View;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;)V

    .line 10841
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->runIfNecessary(Lcom/android/internal/widget/RecyclerView;)V

    .line 10842
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->stop()V

    goto :goto_3d

    .line 10844
    :cond_33
    const-string v1, "RecyclerView"

    const-string v2, "Passed over target position while smooth scrolling."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10845
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 10848
    :cond_3d
    :goto_3d
    iget-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v1, :cond_65

    .line 10849
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->onSeekTargetStep(IILcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;)V

    .line 10850
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->hasJumpTarget()Z

    move-result v1

    .line 10851
    .local v1, "hadJumpTarget":Z
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->runIfNecessary(Lcom/android/internal/widget/RecyclerView;)V

    .line 10852
    if-eqz v1, :cond_65

    .line 10854
    iget-boolean v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v2, :cond_62

    .line 10855
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 10856
    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView;->mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    goto :goto_65

    .line 10858
    :cond_62
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->stop()V

    .line 10862
    .end local v1    # "hadJumpTarget":Z
    :cond_65
    :goto_65
    return-void
.end method


# virtual methods
.method public blacklist findViewByPosition(I)Landroid/view/View;
    .registers 3
    .param p1, "position"    # I

    .line 10882
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getChildCount()I
    .registers 2

    .line 10875
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    return v0
.end method

.method public blacklist getChildPosition(Landroid/view/View;)I
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 10868
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public blacklist getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;
    .registers 2

    .line 10776
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public blacklist getTargetPosition()I
    .registers 2

    .line 10828
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    return v0
.end method

.method public blacklist instantScrollToPosition(I)V
    .registers 3
    .param p1, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10891
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->scrollToPosition(I)V

    .line 10892
    return-void
.end method

.method public blacklist isPendingInitialRun()Z
    .registers 2

    .line 10810
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    return v0
.end method

.method public blacklist isRunning()Z
    .registers 2

    .line 10818
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRunning:Z

    return v0
.end method

.method protected blacklist normalize(Landroid/graphics/PointF;)V
    .registers 6
    .param p1, "scrollVector"    # Landroid/graphics/PointF;

    .line 10908
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 10910
    .local v0, "magnitude":D
    iget v2, p1, Landroid/graphics/PointF;->x:F

    float-to-double v2, v2

    div-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p1, Landroid/graphics/PointF;->x:F

    .line 10911
    iget v2, p1, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    div-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p1, Landroid/graphics/PointF;->y:F

    .line 10912
    return-void
.end method

.method protected blacklist onChildAttachedToWindow(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 10895
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 10896
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 10901
    :cond_c
    return-void
.end method

.method protected abstract blacklist onSeekTargetStep(IILcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;)V
.end method

.method protected abstract blacklist onStart()V
.end method

.method protected abstract blacklist onStop()V
.end method

.method protected abstract blacklist onTargetFound(Landroid/view/View;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;)V
.end method

.method public blacklist setTargetPosition(I)V
    .registers 2
    .param p1, "targetPosition"    # I

    .line 10767
    iput p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 10768
    return-void
.end method

.method blacklist start(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$LayoutManager;)V
    .registers 5
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "layoutManager"    # Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 10753
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 10754
    iput-object p2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 10755
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2c

    .line 10758
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    invoke-static {v0, v1}, Lcom/android/internal/widget/RecyclerView$State;->-$$Nest$fputmTargetPosition(Lcom/android/internal/widget/RecyclerView$State;I)V

    .line 10759
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRunning:Z

    .line 10760
    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 10761
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 10762
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->onStart()V

    .line 10763
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 10764
    return-void

    .line 10756
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid target position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final blacklist stop()V
    .registers 3

    .line 10786
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-nez v0, :cond_5

    .line 10787
    return-void

    .line 10789
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->onStop()V

    .line 10790
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/internal/widget/RecyclerView$State;->-$$Nest$fputmTargetPosition(Lcom/android/internal/widget/RecyclerView$State;I)V

    .line 10791
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 10792
    iput v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 10793
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 10794
    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRunning:Z

    .line 10796
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-static {v1, p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->-$$Nest$monSmoothScrollerStopped(Lcom/android/internal/widget/RecyclerView$LayoutManager;Lcom/android/internal/widget/RecyclerView$SmoothScroller;)V

    .line 10798
    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 10799
    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 10800
    return-void
.end method
