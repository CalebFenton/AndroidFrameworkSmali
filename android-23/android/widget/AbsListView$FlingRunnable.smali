.class Landroid/widget/AbsListView$FlingRunnable;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListView$FlingRunnable$1;
    }
.end annotation


# static fields
.field private static final FLYWHEEL_TIMEOUT:I = 0x28


# instance fields
.field private final mCheckFlywheel:Ljava/lang/Runnable;

.field private mLastFlingY:I

.field private final mScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method static synthetic -get0(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    #@2
    return-object v0
.end method

.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 2
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    #@0
    .prologue
    .line 4422
    iput-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 4395
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable$1;

    #@7
    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable$1;-><init>(Landroid/widget/AbsListView$FlingRunnable;)V

    #@a
    iput-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    #@c
    .line 4423
    new-instance v0, Landroid/widget/OverScroller;

    #@e
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    #@11
    move-result-object v1

    #@12
    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    #@15
    iput-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    #@17
    .line 4422
    return-void
.end method


# virtual methods
.method edgeReached(I)V
    .locals 6
    .param p1, "delta"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 4468
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    #@3
    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@5
    invoke-static {v3}, Landroid/widget/AbsListView;->-get14(Landroid/widget/AbsListView;)I

    #@8
    move-result v3

    #@9
    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@b
    iget v4, v4, Landroid/widget/AbsListView;->mOverflingDistance:I

    #@d
    invoke-virtual {v2, v3, v5, v4}, Landroid/widget/OverScroller;->notifyVerticalEdgeReached(III)V

    #@10
    .line 4469
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@12
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getOverScrollMode()I

    #@15
    move-result v0

    #@16
    .line 4470
    .local v0, "overscrollMode":I
    if-eqz v0, :cond_2

    #@18
    .line 4471
    const/4 v2, 0x1

    #@19
    if-ne v0, v2, :cond_0

    #@1b
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@1d
    invoke-static {v2}, Landroid/widget/AbsListView;->-wrap1(Landroid/widget/AbsListView;)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_2

    #@23
    .line 4480
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@25
    const/4 v3, -0x1

    #@26
    iput v3, v2, Landroid/widget/AbsListView;->mTouchMode:I

    #@28
    .line 4481
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@2a
    iget-object v2, v2, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@2c
    if-eqz v2, :cond_1

    #@2e
    .line 4482
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@30
    iget-object v2, v2, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@32
    invoke-virtual {v2}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    #@35
    .line 4485
    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@37
    invoke-virtual {v2}, Landroid/widget/AbsListView;->invalidate()V

    #@3a
    .line 4486
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@3c
    invoke-virtual {v2, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    #@3f
    .line 4467
    return-void

    #@40
    .line 4472
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@42
    const/4 v3, 0x6

    #@43
    iput v3, v2, Landroid/widget/AbsListView;->mTouchMode:I

    #@45
    .line 4473
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    #@47
    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    #@4a
    move-result v2

    #@4b
    float-to-int v1, v2

    #@4c
    .line 4474
    .local v1, "vel":I
    if-lez p1, :cond_3

    #@4e
    .line 4475
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@50
    invoke-static {v2}, Landroid/widget/AbsListView;->-get4(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    #@57
    goto :goto_0

    #@58
    .line 4477
    :cond_3
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@5a
    invoke-static {v2}, Landroid/widget/AbsListView;->-get3(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    #@61
    goto :goto_0
.end method

.method endFling()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4499
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@3
    const/4 v1, -0x1

    #@4
    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    #@6
    .line 4501
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@8
    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@b
    .line 4502
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@d
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    #@f
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@12
    .line 4504
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@14
    const/4 v1, 0x0

    #@15
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    #@18
    .line 4505
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@1a
    invoke-static {v0}, Landroid/widget/AbsListView;->-wrap4(Landroid/widget/AbsListView;)V

    #@1d
    .line 4506
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    #@1f
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    #@22
    .line 4508
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@24
    invoke-static {v0}, Landroid/widget/AbsListView;->-get6(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    #@27
    move-result-object v0

    #@28
    if-eqz v0, :cond_0

    #@2a
    .line 4509
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@2c
    invoke-static {v0}, Landroid/widget/AbsListView;->-get6(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    #@33
    .line 4510
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@35
    invoke-static {v0, v2}, Landroid/widget/AbsListView;->-set0(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    #@38
    .line 4498
    :cond_0
    return-void
.end method

.method flywheelTouch()V
    .locals 4

    #@0
    .prologue
    .line 4515
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@2
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    #@4
    const-wide/16 v2, 0x28

    #@6
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    #@9
    .line 4514
    return-void
.end method

.method public run()V
    .locals 30

    #@0
    .prologue
    .line 4520
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@4
    iget v2, v2, Landroid/widget/AbsListView;->mTouchMode:I

    #@6
    packed-switch v2, :pswitch_data_0

    #@9
    .line 4522
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    #@c
    .line 4523
    return-void

    #@d
    .line 4526
    :pswitch_1
    move-object/from16 v0, p0

    #@f
    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    #@11
    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 4527
    return-void

    #@18
    .line 4531
    :cond_0
    :pswitch_2
    move-object/from16 v0, p0

    #@1a
    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@1c
    iget-boolean v2, v2, Landroid/widget/AbsListView;->mDataChanged:Z

    #@1e
    if-eqz v2, :cond_1

    #@20
    .line 4532
    move-object/from16 v0, p0

    #@22
    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@24
    invoke-virtual {v2}, Landroid/widget/AbsListView;->layoutChildren()V

    #@27
    .line 4535
    :cond_1
    move-object/from16 v0, p0

    #@29
    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@2b
    iget v2, v2, Landroid/widget/AbsListView;->mItemCount:I

    #@2d
    if-eqz v2, :cond_2

    #@2f
    move-object/from16 v0, p0

    #@31
    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@33
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    #@36
    move-result v2

    #@37
    if-nez v2, :cond_3

    #@39
    .line 4536
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    #@3c
    .line 4537
    return-void

    #@3d
    .line 4540
    :cond_3
    move-object/from16 v0, p0

    #@3f
    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    #@41
    move-object/from16 v27, v0

    #@43
    .line 4541
    .local v27, "scroller":Landroid/widget/OverScroller;
    invoke-virtual/range {v27 .. v27}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    #@46
    move-result v23

    #@47
    .line 4542
    .local v23, "more":Z
    invoke-virtual/range {v27 .. v27}, Landroid/widget/OverScroller;->getCurrY()I

    #@4a
    move-result v29

    #@4b
    .line 4546
    .local v29, "y":I
    move-object/from16 v0, p0

    #@4d
    iget v2, v0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    #@4f
    sub-int v20, v2, v29

    #@51
    .line 4549
    .local v20, "delta":I
    if-lez v20, :cond_7

    #@53
    .line 4551
    move-object/from16 v0, p0

    #@55
    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@57
    move-object/from16 v0, p0

    #@59
    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@5b
    iget v3, v3, Landroid/widget/AbsListView;->mFirstPosition:I

    #@5d
    iput v3, v2, Landroid/widget/AbsListView;->mMotionPosition:I

    #@5f
    .line 4552
    move-object/from16 v0, p0

    #@61
    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@63
    const/4 v3, 0x0

    #@64
    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@67
    move-result-object v21

    #@68
    .line 4553
    .local v21, "firstView":Landroid/view/View;
    move-object/from16 v0, p0

    #@6a
    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@6c
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    #@6f
    move-result v3

    #@70
    iput v3, v2, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    #@72
    .line 4556
    move-object/from16 v0, p0

    #@74
    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@76
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getHeight()I

    #@79
    move-result v2

    #@7a
    move-object/from16 v0, p0

    #@7c
    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@7e
    invoke-static {v3}, Landroid/widget/AbsListView;->-get10(Landroid/widget/AbsListView;)I

    #@81
    move-result v3

    #@82
    sub-int/2addr v2, v3

    #@83
    move-object/from16 v0, p0

    #@85
    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@87
    invoke-static {v3}, Landroid/widget/AbsListView;->-get11(Landroid/widget/AbsListView;)I

    #@8a
    move-result v3

    #@8b
    sub-int/2addr v2, v3

    #@8c
    add-int/lit8 v2, v2, -0x1

    #@8e
    move/from16 v0, v20

    #@90
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    #@93
    move-result v20

    #@94
    .line 4570
    .end local v21    # "firstView":Landroid/view/View;
    :goto_0
    move-object/from16 v0, p0

    #@96
    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@98
    move-object/from16 v0, p0

    #@9a
    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@9c
    iget v3, v3, Landroid/widget/AbsListView;->mMotionPosition:I

    #@9e
    move-object/from16 v0, p0

    #@a0
    iget-object v5, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@a2
    iget v5, v5, Landroid/widget/AbsListView;->mFirstPosition:I

    #@a4
    sub-int/2addr v3, v5

    #@a5
    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@a8
    move-result-object v24

    #@a9
    .line 4571
    .local v24, "motionView":Landroid/view/View;
    const/16 v26, 0x0

    #@ab
    .line 4572
    .local v26, "oldTop":I
    if-eqz v24, :cond_4

    #@ad
    .line 4573
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    #@b0
    move-result v26

    #@b1
    .line 4577
    :cond_4
    move-object/from16 v0, p0

    #@b3
    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@b5
    move/from16 v0, v20

    #@b7
    move/from16 v1, v20

    #@b9
    invoke-virtual {v2, v0, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    #@bc
    move-result v15

    #@bd
    .line 4578
    .local v15, "atEdge":Z
    if-eqz v15, :cond_8

    #@bf
    if-eqz v20, :cond_8

    #@c1
    const/16 v16, 0x1

    #@c3
    .line 4579
    .local v16, "atEnd":Z
    :goto_1
    if-eqz v16, :cond_9

    #@c5
    .line 4580
    if-eqz v24, :cond_5

    #@c7
    .line 4582
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    #@ca
    move-result v2

    #@cb
    sub-int v2, v2, v26

    #@cd
    sub-int v2, v20, v2

    #@cf
    neg-int v4, v2

    #@d0
    .line 4583
    .local v4, "overshoot":I
    move-object/from16 v0, p0

    #@d2
    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@d4
    move-object/from16 v0, p0

    #@d6
    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@d8
    invoke-static {v3}, Landroid/widget/AbsListView;->-get14(Landroid/widget/AbsListView;)I

    #@db
    move-result v6

    #@dc
    .line 4584
    move-object/from16 v0, p0

    #@de
    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@e0
    iget v10, v3, Landroid/widget/AbsListView;->mOverflingDistance:I

    #@e2
    .line 4583
    const/4 v3, 0x0

    #@e3
    const/4 v5, 0x0

    #@e4
    const/4 v7, 0x0

    #@e5
    const/4 v8, 0x0

    #@e6
    .line 4584
    const/4 v9, 0x0

    #@e7
    const/4 v11, 0x0

    #@e8
    .line 4583
    invoke-static/range {v2 .. v11}, Landroid/widget/AbsListView;->-wrap2(Landroid/widget/AbsListView;IIIIIIIIZ)Z

    #@eb
    .line 4586
    .end local v4    # "overshoot":I
    :cond_5
    if-eqz v23, :cond_6

    #@ed
    .line 4587
    move-object/from16 v0, p0

    #@ef
    move/from16 v1, v20

    #@f1
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;->edgeReached(I)V

    #@f4
    .line 4519
    .end local v15    # "atEdge":Z
    .end local v16    # "atEnd":Z
    .end local v20    # "delta":I
    .end local v23    # "more":Z
    .end local v24    # "motionView":Landroid/view/View;
    .end local v26    # "oldTop":I
    .end local v29    # "y":I
    :cond_6
    :goto_2
    return-void

    #@f5
    .line 4559
    .restart local v20    # "delta":I
    .restart local v23    # "more":Z
    .restart local v29    # "y":I
    :cond_7
    move-object/from16 v0, p0

    #@f7
    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@f9
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    #@fc
    move-result v2

    #@fd
    add-int/lit8 v25, v2, -0x1

    #@ff
    .line 4560
    .local v25, "offsetToLast":I
    move-object/from16 v0, p0

    #@101
    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@103
    move-object/from16 v0, p0

    #@105
    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@107
    iget v3, v3, Landroid/widget/AbsListView;->mFirstPosition:I

    #@109
    add-int v3, v3, v25

    #@10b
    iput v3, v2, Landroid/widget/AbsListView;->mMotionPosition:I

    #@10d
    .line 4562
    move-object/from16 v0, p0

    #@10f
    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@111
    move/from16 v0, v25

    #@113
    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@116
    move-result-object v22

    #@117
    .line 4563
    .local v22, "lastView":Landroid/view/View;
    move-object/from16 v0, p0

    #@119
    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@11b
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    #@11e
    move-result v3

    #@11f
    iput v3, v2, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    #@121
    .line 4566
    move-object/from16 v0, p0

    #@123
    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@125
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getHeight()I

    #@128
    move-result v2

    #@129
    move-object/from16 v0, p0

    #@12b
    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@12d
    invoke-static {v3}, Landroid/widget/AbsListView;->-get10(Landroid/widget/AbsListView;)I

    #@130
    move-result v3

    #@131
    sub-int/2addr v2, v3

    #@132
    move-object/from16 v0, p0

    #@134
    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@136
    invoke-static {v3}, Landroid/widget/AbsListView;->-get11(Landroid/widget/AbsListView;)I

    #@139
    move-result v3

    #@13a
    sub-int/2addr v2, v3

    #@13b
    add-int/lit8 v2, v2, -0x1

    #@13d
    neg-int v2, v2

    #@13e
    move/from16 v0, v20

    #@140
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    #@143
    move-result v20

    #@144
    goto/16 :goto_0

    #@146
    .line 4578
    .end local v22    # "lastView":Landroid/view/View;
    .end local v25    # "offsetToLast":I
    .restart local v15    # "atEdge":Z
    .restart local v24    # "motionView":Landroid/view/View;
    .restart local v26    # "oldTop":I
    :cond_8
    const/16 v16, 0x0

    #@148
    .restart local v16    # "atEnd":Z
    goto/16 :goto_1

    #@14a
    .line 4592
    :cond_9
    if-eqz v23, :cond_a

    #@14c
    if-eqz v16, :cond_b

    #@14e
    .line 4597
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    #@151
    goto :goto_2

    #@152
    .line 4593
    :cond_b
    if-eqz v15, :cond_c

    #@154
    move-object/from16 v0, p0

    #@156
    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@158
    invoke-virtual {v2}, Landroid/widget/AbsListView;->invalidate()V

    #@15b
    .line 4594
    :cond_c
    move/from16 v0, v29

    #@15d
    move-object/from16 v1, p0

    #@15f
    iput v0, v1, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    #@161
    .line 4595
    move-object/from16 v0, p0

    #@163
    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@165
    move-object/from16 v0, p0

    #@167
    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    #@16a
    goto :goto_2

    #@16b
    .line 4615
    .end local v15    # "atEdge":Z
    .end local v16    # "atEnd":Z
    .end local v20    # "delta":I
    .end local v23    # "more":Z
    .end local v24    # "motionView":Landroid/view/View;
    .end local v26    # "oldTop":I
    .end local v27    # "scroller":Landroid/widget/OverScroller;
    .end local v29    # "y":I
    :pswitch_3
    move-object/from16 v0, p0

    #@16d
    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    #@16f
    move-object/from16 v27, v0

    #@171
    .line 4616
    .restart local v27    # "scroller":Landroid/widget/OverScroller;
    invoke-virtual/range {v27 .. v27}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    #@174
    move-result v2

    #@175
    if-eqz v2, :cond_13

    #@177
    .line 4617
    move-object/from16 v0, p0

    #@179
    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@17b
    invoke-static {v2}, Landroid/widget/AbsListView;->-get14(Landroid/widget/AbsListView;)I

    #@17e
    move-result v9

    #@17f
    .line 4618
    .local v9, "scrollY":I
    invoke-virtual/range {v27 .. v27}, Landroid/widget/OverScroller;->getCurrY()I

    #@182
    move-result v19

    #@183
    .line 4619
    .local v19, "currY":I
    sub-int v7, v19, v9

    #@185
    .line 4620
    .local v7, "deltaY":I
    move-object/from16 v0, p0

    #@187
    iget-object v5, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@189
    .line 4621
    move-object/from16 v0, p0

    #@18b
    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@18d
    iget v13, v2, Landroid/widget/AbsListView;->mOverflingDistance:I

    #@18f
    .line 4620
    const/4 v6, 0x0

    #@190
    const/4 v8, 0x0

    #@191
    const/4 v10, 0x0

    #@192
    const/4 v11, 0x0

    #@193
    .line 4621
    const/4 v12, 0x0

    #@194
    const/4 v14, 0x0

    #@195
    .line 4620
    invoke-static/range {v5 .. v14}, Landroid/widget/AbsListView;->-wrap2(Landroid/widget/AbsListView;IIIIIIIIZ)Z

    #@198
    move-result v2

    #@199
    if-eqz v2, :cond_12

    #@19b
    .line 4622
    if-gtz v9, :cond_f

    #@19d
    if-lez v19, :cond_f

    #@19f
    const/16 v17, 0x1

    #@1a1
    .line 4623
    .local v17, "crossDown":Z
    :goto_3
    if-ltz v9, :cond_10

    #@1a3
    if-gez v19, :cond_10

    #@1a5
    const/16 v18, 0x1

    #@1a7
    .line 4624
    .local v18, "crossUp":Z
    :goto_4
    if-nez v17, :cond_d

    #@1a9
    if-eqz v18, :cond_11

    #@1ab
    .line 4625
    :cond_d
    invoke-virtual/range {v27 .. v27}, Landroid/widget/OverScroller;->getCurrVelocity()F

    #@1ae
    move-result v2

    #@1af
    float-to-int v0, v2

    #@1b0
    move/from16 v28, v0

    #@1b2
    .line 4626
    .local v28, "velocity":I
    if-eqz v18, :cond_e

    #@1b4
    move/from16 v0, v28

    #@1b6
    neg-int v0, v0

    #@1b7
    move/from16 v28, v0

    #@1b9
    .line 4629
    :cond_e
    invoke-virtual/range {v27 .. v27}, Landroid/widget/OverScroller;->abortAnimation()V

    #@1bc
    .line 4630
    move-object/from16 v0, p0

    #@1be
    move/from16 v1, v28

    #@1c0
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    #@1c3
    goto/16 :goto_2

    #@1c5
    .line 4622
    .end local v17    # "crossDown":Z
    .end local v18    # "crossUp":Z
    .end local v28    # "velocity":I
    :cond_f
    const/16 v17, 0x0

    #@1c7
    .restart local v17    # "crossDown":Z
    goto :goto_3

    #@1c8
    .line 4623
    :cond_10
    const/16 v18, 0x0

    #@1ca
    .restart local v18    # "crossUp":Z
    goto :goto_4

    #@1cb
    .line 4632
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    #@1ce
    goto/16 :goto_2

    #@1d0
    .line 4635
    .end local v17    # "crossDown":Z
    .end local v18    # "crossUp":Z
    :cond_12
    move-object/from16 v0, p0

    #@1d2
    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@1d4
    invoke-virtual {v2}, Landroid/widget/AbsListView;->invalidate()V

    #@1d7
    .line 4636
    move-object/from16 v0, p0

    #@1d9
    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@1db
    move-object/from16 v0, p0

    #@1dd
    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    #@1e0
    goto/16 :goto_2

    #@1e2
    .line 4639
    .end local v7    # "deltaY":I
    .end local v9    # "scrollY":I
    .end local v19    # "currY":I
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    #@1e5
    goto/16 :goto_2

    #@1e7
    .line 4520
    nop

    #@1e8
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method start(I)V
    .locals 9
    .param p1, "initialVelocity"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const v6, 0x7fffffff

    #@4
    const/4 v1, 0x0

    #@5
    .line 4427
    if-gez p1, :cond_1

    #@7
    const v2, 0x7fffffff

    #@a
    .line 4428
    .local v2, "initialY":I
    :goto_0
    iput v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    #@c
    .line 4429
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    #@e
    invoke-virtual {v0, v3}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@11
    .line 4430
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    #@13
    move v3, v1

    #@14
    move v4, p1

    #@15
    move v5, v1

    #@16
    move v7, v1

    #@17
    move v8, v6

    #@18
    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    #@1b
    .line 4432
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@1d
    const/4 v1, 0x4

    #@1e
    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    #@20
    .line 4433
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@22
    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    #@25
    .line 4442
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@27
    invoke-static {v0}, Landroid/widget/AbsListView;->-get6(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    #@2a
    move-result-object v0

    #@2b
    if-nez v0, :cond_0

    #@2d
    .line 4443
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@2f
    const-string/jumbo v1, "AbsListView-fling"

    #@32
    invoke-static {v1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    #@35
    move-result-object v1

    #@36
    invoke-static {v0, v1}, Landroid/widget/AbsListView;->-set0(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    #@39
    .line 4426
    :cond_0
    return-void

    #@3a
    .line 4427
    .end local v2    # "initialY":I
    :cond_1
    const/4 v2, 0x0

    #@3b
    .restart local v2    # "initialY":I
    goto :goto_0
.end method

.method startOverfling(I)V
    .locals 11
    .param p1, "initialVelocity"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 4459
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    #@3
    const/4 v2, 0x0

    #@4
    invoke-virtual {v0, v2}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@7
    .line 4460
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    #@9
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@b
    invoke-static {v2}, Landroid/widget/AbsListView;->-get14(Landroid/widget/AbsListView;)I

    #@e
    move-result v2

    #@f
    .line 4461
    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@11
    invoke-virtual {v3}, Landroid/widget/AbsListView;->getHeight()I

    #@14
    move-result v10

    #@15
    const/high16 v7, -0x80000000

    #@17
    const v8, 0x7fffffff

    #@1a
    move v3, v1

    #@1b
    move v4, p1

    #@1c
    move v5, v1

    #@1d
    move v6, v1

    #@1e
    move v9, v1

    #@1f
    .line 4460
    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    #@22
    .line 4462
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@24
    const/4 v1, 0x6

    #@25
    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    #@27
    .line 4463
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@29
    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    #@2c
    .line 4464
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@2e
    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    #@31
    .line 4458
    return-void
.end method

.method startScroll(IIZ)V
    .locals 6
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 4490
    if-gez p1, :cond_0

    #@3
    const v2, 0x7fffffff

    #@6
    .line 4491
    .local v2, "initialY":I
    :goto_0
    iput v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    #@8
    .line 4492
    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    #@a
    if-eqz p3, :cond_1

    #@c
    sget-object v0, Landroid/widget/AbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    #@e
    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@11
    .line 4493
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    #@13
    move v3, v1

    #@14
    move v4, p1

    #@15
    move v5, p2

    #@16
    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    #@19
    .line 4494
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@1b
    const/4 v1, 0x4

    #@1c
    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    #@1e
    .line 4495
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@20
    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    #@23
    .line 4489
    return-void

    #@24
    .line 4490
    .end local v2    # "initialY":I
    :cond_0
    const/4 v2, 0x0

    #@25
    .restart local v2    # "initialY":I
    goto :goto_0

    #@26
    .line 4492
    :cond_1
    const/4 v0, 0x0

    #@27
    goto :goto_1
.end method

.method startSpringback()V
    .locals 7

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 4448
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    #@3
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@5
    invoke-static {v2}, Landroid/widget/AbsListView;->-get14(Landroid/widget/AbsListView;)I

    #@8
    move-result v2

    #@9
    move v3, v1

    #@a
    move v4, v1

    #@b
    move v5, v1

    #@c
    move v6, v1

    #@d
    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 4449
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@15
    const/4 v1, 0x6

    #@16
    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    #@18
    .line 4450
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@1a
    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    #@1d
    .line 4451
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@1f
    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    #@22
    .line 4447
    :goto_0
    return-void

    #@23
    .line 4453
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@25
    const/4 v2, -0x1

    #@26
    iput v2, v0, Landroid/widget/AbsListView;->mTouchMode:I

    #@28
    .line 4454
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #@2a
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    #@2d
    goto :goto_0
.end method
