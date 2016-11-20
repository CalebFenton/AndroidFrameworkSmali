.class Landroid/widget/Editor$InsertionHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertionHandleView"
.end annotation


# static fields
.field private static final DELAY_BEFORE_HANDLE_FADES_OUT:I = 0xfa0

.field private static final RECENT_CUT_COPY_DURATION:I = 0x3a98


# instance fields
.field private mDownPositionX:F

.field private mDownPositionY:F

.field private mHider:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 4442
    iput-object p1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@2
    .line 4443
    const v4, 0x102005a

    #@5
    const/4 v5, 0x0

    #@6
    move-object v0, p0

    #@7
    move-object v1, p1

    #@8
    move-object v2, p2

    #@9
    move-object v3, p2

    #@a
    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/widget/Editor$HandleView;)V

    #@d
    .line 4442
    return-void
.end method

.method private hideAfterDelay()V
    .locals 4

    #@0
    .prologue
    .line 4486
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 4487
    new-instance v0, Landroid/widget/Editor$InsertionHandleView$2;

    #@6
    invoke-direct {v0, p0}, Landroid/widget/Editor$InsertionHandleView$2;-><init>(Landroid/widget/Editor$InsertionHandleView;)V

    #@9
    iput-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    #@b
    .line 4495
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@d
    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    #@13
    const-wide/16 v2, 0xfa0

    #@15
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    #@18
    .line 4485
    return-void

    #@19
    .line 4493
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    #@1c
    goto :goto_0
.end method

.method private removeHiderCallback()V
    .locals 2

    #@0
    .prologue
    .line 4499
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 4500
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@6
    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@9
    move-result-object v0

    #@a
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    #@c
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@f
    .line 4498
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    #@0
    .prologue
    .line 4584
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@2
    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method getCursorHorizontalPosition(Landroid/text/Layout;I)I
    .locals 4
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 4527
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@4
    iget v2, v2, Landroid/widget/Editor;->mCursorCount:I

    #@6
    if-lez v2, :cond_0

    #@8
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@a
    iget-object v2, v2, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    #@c
    aget-object v0, v2, v3

    #@e
    .line 4528
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    if-eqz v0, :cond_1

    #@10
    .line 4529
    invoke-virtual {p0, p1, p2}, Landroid/widget/Editor$InsertionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    #@13
    move-result v1

    #@14
    .line 4530
    .local v1, "horizontal":F
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@16
    invoke-static {v2, v0, v1}, Landroid/widget/Editor;->-wrap12(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;F)I

    #@19
    move-result v2

    #@1a
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@1c
    invoke-static {v3}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/graphics/Rect;

    #@1f
    move-result-object v3

    #@20
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@22
    add-int/2addr v2, v3

    #@23
    return v2

    #@24
    .line 4532
    .end local v1    # "horizontal":F
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    #@27
    move-result v2

    #@28
    return v2
.end method

.method protected getCursorOffset()I
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 4516
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    #@5
    move-result v1

    #@6
    .line 4517
    .local v1, "offset":I
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@8
    iget v2, v2, Landroid/widget/Editor;->mCursorCount:I

    #@a
    if-lez v2, :cond_0

    #@c
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@e
    iget-object v2, v2, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    #@10
    aget-object v0, v2, v3

    #@12
    .line 4518
    .local v0, "cursor":Landroid/graphics/drawable/Drawable;
    :cond_0
    if-eqz v0, :cond_1

    #@14
    .line 4519
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@16
    invoke-static {v2}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/graphics/Rect;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@1d
    .line 4520
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@20
    move-result v2

    #@21
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@23
    invoke-static {v3}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/graphics/Rect;

    #@26
    move-result-object v3

    #@27
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@29
    sub-int/2addr v2, v3

    #@2a
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@2c
    invoke-static {v3}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/graphics/Rect;

    #@2f
    move-result-object v3

    #@30
    iget v3, v3, Landroid/graphics/Rect;->right:I

    #@32
    sub-int/2addr v2, v3

    #@33
    div-int/lit8 v2, v2, 0x2

    #@35
    add-int/2addr v1, v2

    #@36
    .line 4522
    :cond_1
    return v1
.end method

.method protected getHorizontalGravity(Z)I
    .locals 1
    .param p1, "isRtlRun"    # Z

    #@0
    .prologue
    .line 4511
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    #@0
    .prologue
    .line 4506
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@3
    move-result v0

    #@4
    div-int/lit8 v0, v0, 0x2

    #@6
    return v0
.end method

.method public onDetached()V
    .locals 0

    #@0
    .prologue
    .line 4620
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    #@3
    .line 4621
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    #@6
    .line 4619
    return-void
.end method

.method onHandleMoved()V
    .locals 0

    #@0
    .prologue
    .line 4614
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->onHandleMoved()V

    #@3
    .line 4615
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    #@6
    .line 4613
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 4537
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@3
    move-result v3

    #@4
    .line 4539
    .local v3, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@7
    move-result v6

    #@8
    packed-switch v6, :pswitch_data_0

    #@b
    .line 4579
    :goto_0
    :pswitch_0
    return v3

    #@c
    .line 4541
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    #@f
    move-result v6

    #@10
    iput v6, p0, Landroid/widget/Editor$InsertionHandleView;->mDownPositionX:F

    #@12
    .line 4542
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    #@15
    move-result v6

    #@16
    iput v6, p0, Landroid/widget/Editor$InsertionHandleView;->mDownPositionY:F

    #@18
    goto :goto_0

    #@19
    .line 4546
    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->offsetHasBeenChanged()Z

    #@1c
    move-result v6

    #@1d
    if-nez v6, :cond_2

    #@1f
    .line 4547
    iget v6, p0, Landroid/widget/Editor$InsertionHandleView;->mDownPositionX:F

    #@21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    #@24
    move-result v7

    #@25
    sub-float v0, v6, v7

    #@27
    .line 4548
    .local v0, "deltaX":F
    iget v6, p0, Landroid/widget/Editor$InsertionHandleView;->mDownPositionY:F

    #@29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    #@2c
    move-result v7

    #@2d
    sub-float v1, v6, v7

    #@2f
    .line 4549
    .local v1, "deltaY":F
    mul-float v6, v0, v0

    #@31
    mul-float v7, v1, v1

    #@33
    add-float v2, v6, v7

    #@35
    .line 4552
    .local v2, "distanceSquared":F
    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@37
    invoke-static {v6}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@3a
    move-result-object v6

    #@3b
    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@3e
    move-result-object v6

    #@3f
    .line 4551
    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@42
    move-result-object v5

    #@43
    .line 4553
    .local v5, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@46
    move-result v4

    #@47
    .line 4555
    .local v4, "touchSlop":I
    mul-int v6, v4, v4

    #@49
    int-to-float v6, v6

    #@4a
    cmpg-float v6, v2, v6

    #@4c
    if-gez v6, :cond_0

    #@4e
    .line 4557
    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@50
    iget-object v6, v6, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@52
    if-eqz v6, :cond_1

    #@54
    .line 4558
    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@56
    invoke-virtual {v6}, Landroid/widget/Editor;->stopTextActionMode()V

    #@59
    .line 4568
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    .end local v2    # "distanceSquared":F
    .end local v4    # "touchSlop":I
    .end local v5    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_0
    :goto_1
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    #@5c
    goto :goto_0

    #@5d
    .line 4560
    .restart local v0    # "deltaX":F
    .restart local v1    # "deltaY":F
    .restart local v2    # "distanceSquared":F
    .restart local v4    # "touchSlop":I
    .restart local v5    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_1
    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@5f
    invoke-virtual {v6}, Landroid/widget/Editor;->startInsertionActionMode()V

    #@62
    goto :goto_1

    #@63
    .line 4564
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    .end local v2    # "distanceSquared":F
    .end local v4    # "touchSlop":I
    .end local v5    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_2
    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@65
    iget-object v6, v6, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@67
    if-eqz v6, :cond_0

    #@69
    .line 4565
    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@6b
    iget-object v6, v6, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@6d
    invoke-virtual {v6}, Landroid/view/ActionMode;->invalidateContentRect()V

    #@70
    goto :goto_1

    #@71
    .line 4572
    :pswitch_3
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    #@74
    goto :goto_0

    #@75
    .line 4539
    nop

    #@76
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public show()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x3

    #@1
    const/4 v6, 0x2

    #@2
    .line 4448
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->show()V

    #@5
    .line 4451
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@8
    move-result-wide v2

    #@9
    sget-wide v4, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    #@b
    sub-long v0, v2, v4

    #@d
    .line 4454
    .local v0, "durationSinceCutOrCopy":J
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@f
    invoke-static {v2}, Landroid/widget/Editor;->-get0(Landroid/widget/Editor;)Ljava/lang/Runnable;

    #@12
    move-result-object v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 4455
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@17
    invoke-static {v2}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)I

    #@1a
    move-result v2

    #@1b
    if-eq v2, v6, :cond_0

    #@1d
    .line 4456
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@1f
    invoke-static {v2}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)I

    #@22
    move-result v2

    #@23
    if-ne v2, v7, :cond_3

    #@25
    .line 4458
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@27
    invoke-static {v2}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@2a
    move-result-object v2

    #@2b
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@2d
    invoke-static {v3}, Landroid/widget/Editor;->-get0(Landroid/widget/Editor;)Ljava/lang/Runnable;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@34
    .line 4463
    :cond_1
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@36
    invoke-static {v2}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)I

    #@39
    move-result v2

    #@3a
    if-eq v2, v6, :cond_2

    #@3c
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@3e
    invoke-static {v2}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)I

    #@41
    move-result v2

    #@42
    if-eq v2, v7, :cond_2

    #@44
    .line 4464
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@46
    invoke-static {v2}, Landroid/widget/Editor;->-wrap3(Landroid/widget/Editor;)Z

    #@49
    move-result v2

    #@4a
    if-eqz v2, :cond_4

    #@4c
    .line 4482
    :cond_2
    :goto_1
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    #@4f
    .line 4447
    return-void

    #@50
    .line 4457
    :cond_3
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@52
    invoke-static {v2}, Landroid/widget/Editor;->-wrap3(Landroid/widget/Editor;)Z

    #@55
    move-result v2

    #@56
    .line 4454
    if-eqz v2, :cond_1

    #@58
    goto :goto_0

    #@59
    .line 4465
    :cond_4
    const-wide/16 v2, 0x3a98

    #@5b
    cmp-long v2, v0, v2

    #@5d
    if-gez v2, :cond_2

    #@5f
    .line 4466
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@61
    iget-object v2, v2, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@63
    if-nez v2, :cond_2

    #@65
    .line 4467
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@67
    invoke-static {v2}, Landroid/widget/Editor;->-get0(Landroid/widget/Editor;)Ljava/lang/Runnable;

    #@6a
    move-result-object v2

    #@6b
    if-nez v2, :cond_5

    #@6d
    .line 4468
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@6f
    new-instance v3, Landroid/widget/Editor$InsertionHandleView$1;

    #@71
    invoke-direct {v3, p0}, Landroid/widget/Editor$InsertionHandleView$1;-><init>(Landroid/widget/Editor$InsertionHandleView;)V

    #@74
    invoke-static {v2, v3}, Landroid/widget/Editor;->-set0(Landroid/widget/Editor;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    #@77
    .line 4475
    :cond_5
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@79
    invoke-static {v2}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@7c
    move-result-object v2

    #@7d
    .line 4476
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@7f
    invoke-static {v3}, Landroid/widget/Editor;->-get0(Landroid/widget/Editor;)Ljava/lang/Runnable;

    #@82
    move-result-object v3

    #@83
    .line 4477
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    #@86
    move-result v4

    #@87
    add-int/lit8 v4, v4, 0x1

    #@89
    int-to-long v4, v4

    #@8a
    .line 4475
    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    #@8d
    goto :goto_1
.end method

.method public updatePosition(FF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 4594
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@2
    invoke-static {v3}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@9
    move-result-object v1

    #@a
    .line 4596
    .local v1, "layout":Landroid/text/Layout;
    if-eqz v1, :cond_2

    #@c
    .line 4597
    iget v3, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    #@e
    const/4 v4, -0x1

    #@f
    if-ne v3, v4, :cond_0

    #@11
    .line 4598
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@13
    invoke-static {v3}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    #@1a
    move-result v3

    #@1b
    iput v3, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    #@1d
    .line 4600
    :cond_0
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@1f
    iget v4, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    #@21
    invoke-static {v3, v1, v4, p2}, Landroid/widget/Editor;->-wrap13(Landroid/widget/Editor;Landroid/text/Layout;IF)I

    #@24
    move-result v0

    #@25
    .line 4601
    .local v0, "currLine":I
    invoke-virtual {p0, v1, v0, p1}, Landroid/widget/Editor$InsertionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    #@28
    move-result v2

    #@29
    .line 4602
    .local v2, "offset":I
    iput v0, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    #@2b
    .line 4606
    .end local v0    # "currLine":I
    :goto_0
    const/4 v3, 0x0

    #@2c
    invoke-virtual {p0, v2, v3}, Landroid/widget/Editor$InsertionHandleView;->positionAtCursorOffset(IZ)V

    #@2f
    .line 4607
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@31
    iget-object v3, v3, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@33
    if-eqz v3, :cond_1

    #@35
    .line 4608
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@37
    iget-object v3, v3, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@39
    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidate()V

    #@3c
    .line 4593
    :cond_1
    return-void

    #@3d
    .line 4604
    .end local v2    # "offset":I
    :cond_2
    const/4 v2, -0x1

    #@3e
    .restart local v2    # "offset":I
    goto :goto_0
.end method

.method public updateSelection(I)V
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 4589
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@2
    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/text/Spannable;

    #@c
    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@f
    .line 4588
    return-void
.end method
