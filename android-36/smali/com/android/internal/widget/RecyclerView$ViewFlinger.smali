.class Lcom/android/internal/widget/RecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewFlinger"
.end annotation


# instance fields
.field private blacklist mEatRunOnAnimationRequest:Z

.field blacklist mInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mLastFlingX:I

.field private blacklist mLastFlingY:I

.field private blacklist mReSchedulePostAnimationCallback:Z

.field private blacklist mScroller:Landroid/widget/OverScroller;

.field final synthetic blacklist this$0:Lcom/android/internal/widget/RecyclerView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/RecyclerView;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/internal/widget/RecyclerView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4760
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4751
    sget-object v0, Lcom/android/internal/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 4755
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 4758
    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 4761
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/internal/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    .line 4762
    return-void
.end method

.method private blacklist computeScrollDuration(IIII)I
    .registers 17
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "vx"    # I
    .param p4, "vy"    # I

    .line 4927
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 4928
    .local v0, "absDx":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 4929
    .local v1, "absDy":I
    if-le v0, v1, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    .line 4930
    .local v2, "horizontal":Z
    :goto_d
    mul-int v3, p3, p3

    mul-int v4, p4, p4

    add-int/2addr v3, v4

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 4931
    .local v3, "velocity":I
    mul-int v4, p1, p1

    mul-int v5, p2, p2

    add-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 4932
    .local v4, "delta":I
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    if-eqz v2, :cond_2c

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v5

    goto :goto_30

    :cond_2c
    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v5

    .line 4933
    .local v5, "containerSize":I
    :goto_30
    div-int/lit8 v6, v5, 0x2

    .line 4934
    .local v6, "halfContainerSize":I
    int-to-float v7, v4

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v7, v8

    int-to-float v9, v5

    div-float/2addr v7, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 4935
    .local v7, "distanceRatio":F
    int-to-float v9, v6

    int-to-float v10, v6

    .line 4936
    invoke-direct {p0, v7}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->distanceInfluenceForSnapDuration(F)F

    move-result v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    .line 4939
    .local v9, "distance":F
    if-lez v3, :cond_57

    .line 4940
    int-to-float v8, v3

    div-float v8, v9, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v10, 0x447a0000    # 1000.0f

    mul-float/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    mul-int/lit8 v8, v8, 0x4

    .local v8, "duration":I
    goto :goto_65

    .line 4942
    .end local v8    # "duration":I
    :cond_57
    if-eqz v2, :cond_5b

    move v10, v0

    goto :goto_5c

    :cond_5b
    move v10, v1

    :goto_5c
    int-to-float v10, v10

    .line 4943
    .local v10, "absDelta":F
    int-to-float v11, v5

    div-float v11, v10, v11

    add-float/2addr v11, v8

    const/high16 v8, 0x43960000    # 300.0f

    mul-float/2addr v11, v8

    float-to-int v8, v11

    .line 4945
    .end local v10    # "absDelta":F
    .restart local v8    # "duration":I
    :goto_65
    const/16 v10, 0x7d0

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    return v10
.end method

.method private blacklist disableRunOnAnimationRequests()V
    .registers 2

    .line 4884
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 4885
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 4886
    return-void
.end method

.method private blacklist distanceInfluenceForSnapDuration(F)F
    .registers 6
    .param p1, "f"    # F

    .line 4921
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 4922
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 4923
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private blacklist enableRunOnAnimationRequests()V
    .registers 2

    .line 4889
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 4890
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-eqz v0, :cond_a

    .line 4891
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 4893
    :cond_a
    return-void
.end method


# virtual methods
.method public blacklist fling(II)V
    .registers 13
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .line 4905
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->setScrollState(I)V

    .line 4906
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 4907
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    move v4, p1

    move v5, p2

    .end local p1    # "velocityX":I
    .end local p2    # "velocityY":I
    .local v4, "velocityX":I
    .local v5, "velocityY":I
    invoke-virtual/range {v1 .. v9}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 4909
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 4910
    return-void
.end method

.method blacklist postOnAnimation()V
    .registers 2

    .line 4896
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    if-eqz v0, :cond_8

    .line 4897
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    goto :goto_12

    .line 4899
    :cond_8
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4900
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4902
    :goto_12
    return-void
.end method

.method public whitelist test-api run()V
    .registers 17

    .line 4766
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_c

    .line 4767
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->stop()V

    .line 4768
    return-void

    .line 4770
    :cond_c
    invoke-direct {v0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->disableRunOnAnimationRequests()V

    .line 4771
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 4774
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    .line 4775
    .local v1, "scroller":Landroid/widget/OverScroller;
    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    .line 4776
    .local v2, "smoothScroller":Lcom/android/internal/widget/RecyclerView$SmoothScroller;
    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_196

    .line 4777
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v3

    .line 4778
    .local v3, "x":I
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v5

    .line 4779
    .local v5, "y":I
    iget v6, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    sub-int v6, v3, v6

    .line 4780
    .local v6, "dx":I
    iget v7, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    sub-int v7, v5, v7

    .line 4781
    .local v7, "dy":I
    const/4 v8, 0x0

    .line 4782
    .local v8, "hresult":I
    const/4 v9, 0x0

    .line 4783
    .local v9, "vresult":I
    iput v3, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 4784
    iput v5, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    .line 4785
    const/4 v10, 0x0

    .local v10, "overscrollX":I
    const/4 v11, 0x0

    .line 4786
    .local v11, "overscrollY":I
    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v12, v12, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v12, :cond_c0

    .line 4787
    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    .line 4788
    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 4789
    const-string v12, "RV Scroll"

    invoke-static {v12}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4790
    if-eqz v6, :cond_64

    .line 4791
    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v12, v12, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v13, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v13, v13, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v14, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v14, v14, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v12, v6, v13, v14}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v8

    .line 4792
    sub-int v10, v6, v8

    .line 4794
    :cond_64
    if-eqz v7, :cond_78

    .line 4795
    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v12, v12, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v13, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v13, v13, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v14, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v14, v14, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v12, v7, v13, v14}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v9

    .line 4796
    sub-int v11, v7, v9

    .line 4798
    :cond_78
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 4799
    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView;->repositionShadowingViews()V

    .line 4801
    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 4802
    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v12, v4}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 4804
    if-eqz v2, :cond_c0

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v12

    if-nez v12, :cond_c0

    .line 4805
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v12

    if-eqz v12, :cond_c0

    .line 4806
    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v12, v12, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v12

    .line 4807
    .local v12, "adapterSize":I
    if-nez v12, :cond_a6

    .line 4808
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->stop()V

    goto :goto_c0

    .line 4809
    :cond_a6
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v13

    if-lt v13, v12, :cond_b9

    .line 4810
    add-int/lit8 v13, v12, -0x1

    invoke-virtual {v2, v13}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 4811
    sub-int v13, v6, v10

    sub-int v14, v7, v11

    invoke-static {v2, v13, v14}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->-$$Nest$monAnimation(Lcom/android/internal/widget/RecyclerView$SmoothScroller;II)V

    goto :goto_c0

    .line 4813
    :cond_b9
    sub-int v13, v6, v10

    sub-int v14, v7, v11

    invoke-static {v2, v13, v14}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->-$$Nest$monAnimation(Lcom/android/internal/widget/RecyclerView$SmoothScroller;II)V

    .line 4817
    .end local v12    # "adapterSize":I
    :cond_c0
    :goto_c0
    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v12, v12, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_cf

    .line 4818
    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView;->invalidate()V

    .line 4820
    :cond_cf
    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView;->getOverScrollMode()I

    move-result v12

    const/4 v13, 0x2

    if-eq v12, v13, :cond_dd

    .line 4821
    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v12, v6, v7}, Lcom/android/internal/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 4823
    :cond_dd
    if-nez v10, :cond_e1

    if-eqz v11, :cond_124

    .line 4824
    :cond_e1
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v12

    float-to-int v12, v12

    .line 4826
    .local v12, "vel":I
    const/4 v14, 0x0

    .line 4827
    .local v14, "velX":I
    if-eq v10, v3, :cond_f3

    .line 4828
    if-gez v10, :cond_ed

    neg-int v15, v12

    goto :goto_f2

    :cond_ed
    if-lez v10, :cond_f1

    move v15, v12

    goto :goto_f2

    :cond_f1
    move v15, v4

    :goto_f2
    move v14, v15

    .line 4831
    :cond_f3
    const/4 v15, 0x0

    .line 4832
    .local v15, "velY":I
    if-eq v11, v5, :cond_100

    .line 4833
    if-gez v11, :cond_fa

    neg-int v4, v12

    goto :goto_ff

    :cond_fa
    if-lez v11, :cond_fe

    move v4, v12

    goto :goto_ff

    :cond_fe
    const/4 v4, 0x0

    :goto_ff
    move v15, v4

    .line 4836
    :cond_100
    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView;->getOverScrollMode()I

    move-result v4

    if-eq v4, v13, :cond_10d

    .line 4837
    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v4, v14, v15}, Lcom/android/internal/widget/RecyclerView;->absorbGlows(II)V

    .line 4839
    :cond_10d
    if-nez v14, :cond_117

    if-eq v10, v3, :cond_117

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v4

    if-nez v4, :cond_124

    :cond_117
    if-nez v15, :cond_121

    if-eq v11, v5, :cond_121

    .line 4840
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v4

    if-nez v4, :cond_124

    .line 4841
    :cond_121
    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 4844
    .end local v12    # "vel":I
    .end local v14    # "velX":I
    .end local v15    # "velY":I
    :cond_124
    if-nez v8, :cond_128

    if-eqz v9, :cond_12d

    .line 4845
    :cond_128
    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v4, v8, v9}, Lcom/android/internal/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 4848
    :cond_12d
    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    # invokes: Lcom/android/internal/widget/RecyclerView;->awakenScrollBars()Z
    invoke-static {v4}, Lcom/android/internal/widget/RecyclerView;->access$200(Lcom/android/internal/widget/RecyclerView;)Z

    move-result v4

    if-nez v4, :cond_13a

    .line 4849
    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView;->invalidate()V

    .line 4852
    :cond_13a
    const/4 v4, 0x1

    if-eqz v7, :cond_14b

    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v12, v12, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v12

    if-eqz v12, :cond_14b

    if-ne v9, v7, :cond_14b

    move v12, v4

    goto :goto_14c

    :cond_14b
    const/4 v12, 0x0

    .line 4854
    .local v12, "fullyConsumedVertical":Z
    :goto_14c
    if-eqz v6, :cond_15c

    iget-object v13, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v13, v13, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v13}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v13

    if-eqz v13, :cond_15c

    if-ne v8, v6, :cond_15c

    move v13, v4

    goto :goto_15d

    :cond_15c
    const/4 v13, 0x0

    .line 4856
    .local v13, "fullyConsumedHorizontal":Z
    :goto_15d
    if-nez v6, :cond_161

    if-eqz v7, :cond_167

    :cond_161
    if-nez v13, :cond_167

    if-eqz v12, :cond_166

    goto :goto_167

    :cond_166
    const/4 v4, 0x0

    .line 4859
    .local v4, "fullyConsumedAny":Z
    :cond_167
    :goto_167
    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v14

    if-nez v14, :cond_183

    if-nez v4, :cond_170

    goto :goto_183

    .line 4865
    :cond_170
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 4866
    iget-object v14, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v14, v14, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    if-eqz v14, :cond_196

    .line 4867
    iget-object v14, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v14, v14, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    iget-object v15, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v14, v15, v6, v7}, Lcom/android/internal/widget/GapWorker;->postFromTraversal(Lcom/android/internal/widget/RecyclerView;II)V

    goto :goto_196

    .line 4860
    :cond_183
    :goto_183
    iget-object v14, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/internal/widget/RecyclerView;->setScrollState(I)V

    .line 4861
    invoke-static {}, Lcom/android/internal/widget/RecyclerView;->-$$Nest$sfgetALLOW_THREAD_GAP_WORK()Z

    move-result v14

    if-eqz v14, :cond_196

    .line 4862
    iget-object v14, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v14, v14, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v14}, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->clearPrefetchPositions()V

    .line 4872
    .end local v3    # "x":I
    .end local v4    # "fullyConsumedAny":Z
    .end local v5    # "y":I
    .end local v6    # "dx":I
    .end local v7    # "dy":I
    .end local v8    # "hresult":I
    .end local v9    # "vresult":I
    .end local v10    # "overscrollX":I
    .end local v11    # "overscrollY":I
    .end local v12    # "fullyConsumedVertical":Z
    .end local v13    # "fullyConsumedHorizontal":Z
    :cond_196
    :goto_196
    if-eqz v2, :cond_1a9

    .line 4873
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v3

    if-eqz v3, :cond_1a2

    .line 4874
    const/4 v15, 0x0

    invoke-static {v2, v15, v15}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->-$$Nest$monAnimation(Lcom/android/internal/widget/RecyclerView$SmoothScroller;II)V

    .line 4876
    :cond_1a2
    iget-boolean v3, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-nez v3, :cond_1a9

    .line 4877
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->stop()V

    .line 4880
    :cond_1a9
    invoke-direct {v0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->enableRunOnAnimationRequests()V

    .line 4881
    return-void
.end method

.method public blacklist smoothScrollBy(II)V
    .registers 4
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 4913
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIII)V

    .line 4914
    return-void
.end method

.method public blacklist smoothScrollBy(III)V
    .registers 5
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I

    .line 4949
    sget-object v0, Lcom/android/internal/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 4950
    return-void
.end method

.method public blacklist smoothScrollBy(IIII)V
    .registers 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "vx"    # I
    .param p4, "vy"    # I

    .line 4917
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    .line 4918
    return-void
.end method

.method public blacklist smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .registers 12
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 4958
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_13

    .line 4959
    iput-object p4, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 4960
    new-instance v0, Landroid/widget/OverScroller;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    .line 4962
    :cond_13
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->setScrollState(I)V

    .line 4963
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 4964
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, p1

    move v5, p2

    move v6, p3

    .end local p1    # "dx":I
    .end local p2    # "dy":I
    .end local p3    # "duration":I
    .local v4, "dx":I
    .local v5, "dy":I
    .local v6, "duration":I
    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 4965
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 4966
    return-void
.end method

.method public blacklist smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .registers 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 4953
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result v0

    .line 4954
    if-nez p3, :cond_a

    sget-object v1, Lcom/android/internal/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_b

    :cond_a
    move-object v1, p3

    .line 4953
    :goto_b
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 4955
    return-void
.end method

.method public blacklist stop()V
    .registers 2

    .line 4969
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4970
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 4971
    return-void
.end method
