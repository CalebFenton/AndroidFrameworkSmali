.class Landroid/widget/Editor$SelectionEndHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionEndHandleView"
.end annotation


# instance fields
.field private mInWord:Z

.field private mLanguageDirectionChanged:Z

.field private mPrevX:F

.field private final mTextViewEdgeSlop:F

.field private final mTextViewLocation:[I

.field private mTouchWordDelta:F

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 4305
    iput-object p1, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    #@3
    .line 4306
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@6
    .line 4292
    iput-boolean v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mInWord:Z

    #@8
    .line 4298
    iput-boolean v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mLanguageDirectionChanged:Z

    #@a
    .line 4303
    const/4 v1, 0x2

    #@b
    new-array v1, v1, [I

    #@d
    iput-object v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewLocation:[I

    #@f
    .line 4308
    invoke-static {p1}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@16
    move-result-object v1

    #@17
    .line 4307
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@1a
    move-result-object v0

    #@1b
    .line 4309
    .local v0, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@1e
    move-result v1

    #@1f
    mul-int/lit8 v1, v1, 0x4

    #@21
    int-to-float v1, v1

    #@22
    iput v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewEdgeSlop:F

    #@24
    .line 4305
    return-void
.end method

.method private positionAndAdjustForCrossingHandles(I)V
    .locals 3
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 4484
    iget-object v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    #@2
    invoke-static {v1}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    #@9
    move-result v0

    #@a
    .line 4485
    .local v0, "selectionStart":I
    if-gt p1, v0, :cond_0

    #@c
    .line 4487
    iget-object v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    #@e
    const/4 v2, 0x1

    #@f
    invoke-static {v1, v0, v2}, Landroid/widget/Editor;->-wrap12(Landroid/widget/Editor;IZ)I

    #@12
    move-result p1

    #@13
    .line 4488
    const/4 v1, 0x0

    #@14
    iput v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    #@16
    .line 4490
    :cond_0
    const/4 v1, 0x0

    #@17
    invoke-virtual {p0, p1, v1}, Landroid/widget/Editor$SelectionEndHandleView;->positionAtCursorOffset(IZ)V

    #@1a
    .line 4483
    return-void
.end method

.method private positionNearEdgeOfScrollingView(FZ)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "atRtl"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 4512
    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    #@3
    invoke-static {v3}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@6
    move-result-object v3

    #@7
    iget-object v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewLocation:[I

    #@9
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    #@c
    .line 4514
    if-eqz p2, :cond_1

    #@e
    .line 4515
    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewLocation:[I

    #@10
    aget v3, v3, v5

    #@12
    iget-object v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    #@14
    invoke-static {v4}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    #@1b
    move-result v4

    #@1c
    add-int v0, v3, v4

    #@1e
    .line 4516
    .local v0, "leftEdge":I
    int-to-float v3, v0

    #@1f
    iget v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewEdgeSlop:F

    #@21
    add-float/2addr v3, v4

    #@22
    cmpg-float v3, p1, v3

    #@24
    if-gez v3, :cond_0

    #@26
    const/4 v1, 0x1

    #@27
    .line 4522
    .end local v0    # "leftEdge":I
    .local v1, "nearEdge":Z
    :goto_0
    return v1

    #@28
    .line 4516
    .end local v1    # "nearEdge":Z
    .restart local v0    # "leftEdge":I
    :cond_0
    const/4 v1, 0x0

    #@29
    .restart local v1    # "nearEdge":Z
    goto :goto_0

    #@2a
    .line 4518
    .end local v0    # "leftEdge":I
    .end local v1    # "nearEdge":Z
    :cond_1
    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewLocation:[I

    #@2c
    aget v3, v3, v5

    #@2e
    iget-object v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    #@30
    invoke-static {v4}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    #@37
    move-result v4

    #@38
    add-int/2addr v3, v4

    #@39
    .line 4519
    iget-object v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    #@3b
    invoke-static {v4}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    #@42
    move-result v4

    #@43
    .line 4518
    sub-int v2, v3, v4

    #@45
    .line 4520
    .local v2, "rightEdge":I
    int-to-float v3, v2

    #@46
    iget v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewEdgeSlop:F

    #@48
    sub-float/2addr v3, v4

    #@49
    cmpl-float v3, p1, v3

    #@4b
    if-lez v3, :cond_2

    #@4d
    const/4 v1, 0x1

    #@4e
    .restart local v1    # "nearEdge":Z
    goto :goto_0

    #@4f
    .end local v1    # "nearEdge":Z
    :cond_2
    const/4 v1, 0x0

    #@50
    .restart local v1    # "nearEdge":Z
    goto :goto_0
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    #@0
    .prologue
    .line 4328
    iget-object v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    #@2
    invoke-static {v0}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method protected getHorizontalGravity(Z)I
    .locals 1
    .param p1, "isRtlRun"    # Z

    #@0
    .prologue
    .line 4323
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x5

    #@3
    :goto_0
    return v0

    #@4
    :cond_0
    const/4 v0, 0x3

    #@5
    goto :goto_0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    #@0
    .prologue
    .line 4314
    if-eqz p2, :cond_0

    #@2
    .line 4315
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@5
    move-result v0

    #@6
    mul-int/lit8 v0, v0, 0x3

    #@8
    div-int/lit8 v0, v0, 0x4

    #@a
    return v0

    #@b
    .line 4317
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@e
    move-result v0

    #@f
    div-int/lit8 v0, v0, 0x4

    #@11
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 4501
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@3
    move-result v0

    #@4
    .line 4502
    .local v0, "superResult":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 4505
    const/4 v1, 0x0

    #@b
    iput v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    #@d
    .line 4506
    const/high16 v1, -0x40800000    # -1.0f

    #@f
    iput v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mPrevX:F

    #@11
    .line 4508
    :cond_0
    return v0
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "parentScrolled"    # Z

    #@0
    .prologue
    .line 4495
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    #@3
    .line 4496
    iget-object v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    #@5
    invoke-static {v0}, Landroid/widget/Editor;->-wrap1(Landroid/widget/Editor;)Landroid/text/method/WordIterator;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->isBoundary(I)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    const/4 v0, 0x0

    #@10
    :goto_0
    iput-boolean v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->mInWord:Z

    #@12
    .line 4494
    return-void

    #@13
    .line 4496
    :cond_0
    const/4 v0, 0x1

    #@14
    goto :goto_0
.end method

.method public updatePosition(FF)V
    .locals 24
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 4343
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    #@4
    move-object/from16 v22, v0

    #@6
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@9
    move-result-object v22

    #@a
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@d
    move-result-object v11

    #@e
    .line 4344
    .local v11, "layout":Landroid/text/Layout;
    if-nez v11, :cond_0

    #@10
    .line 4347
    move-object/from16 v0, p0

    #@12
    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    #@14
    move-object/from16 v22, v0

    #@16
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@19
    move-result-object v22

    #@1a
    move-object/from16 v0, v22

    #@1c
    move/from16 v1, p1

    #@1e
    move/from16 v2, p2

    #@20
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    #@23
    move-result v22

    #@24
    move-object/from16 v0, p0

    #@26
    move/from16 v1, v22

    #@28
    invoke-direct {v0, v1}, Landroid/widget/Editor$SelectionEndHandleView;->positionAndAdjustForCrossingHandles(I)V

    #@2b
    .line 4348
    return-void

    #@2c
    .line 4351
    :cond_0
    move-object/from16 v0, p0

    #@2e
    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousLineTouched:I

    #@30
    move/from16 v22, v0

    #@32
    const/16 v23, -0x1

    #@34
    move/from16 v0, v22

    #@36
    move/from16 v1, v23

    #@38
    if-ne v0, v1, :cond_1

    #@3a
    .line 4352
    move-object/from16 v0, p0

    #@3c
    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    #@3e
    move-object/from16 v22, v0

    #@40
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@43
    move-result-object v22

    #@44
    move-object/from16 v0, v22

    #@46
    move/from16 v1, p2

    #@48
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    #@4b
    move-result v22

    #@4c
    move/from16 v0, v22

    #@4e
    move-object/from16 v1, p0

    #@50
    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousLineTouched:I

    #@52
    .line 4355
    :cond_1
    const/4 v15, 0x0

    #@53
    .line 4356
    .local v15, "positionCursor":Z
    move-object/from16 v0, p0

    #@55
    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    #@57
    move-object/from16 v22, v0

    #@59
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@5c
    move-result-object v22

    #@5d
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getSelectionStart()I

    #@60
    move-result v18

    #@61
    .line 4357
    .local v18, "selectionStart":I
    move-object/from16 v0, p0

    #@63
    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    #@65
    move-object/from16 v22, v0

    #@67
    move-object/from16 v0, p0

    #@69
    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousLineTouched:I

    #@6b
    move/from16 v23, v0

    #@6d
    move-object/from16 v0, v22

    #@6f
    move/from16 v1, v23

    #@71
    move/from16 v2, p2

    #@73
    invoke-static {v0, v11, v1, v2}, Landroid/widget/Editor;->-wrap11(Landroid/widget/Editor;Landroid/text/Layout;IF)I

    #@76
    move-result v6

    #@77
    .line 4358
    .local v6, "currLine":I
    move-object/from16 v0, p0

    #@79
    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    #@7b
    move-object/from16 v22, v0

    #@7d
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@80
    move-result-object v22

    #@81
    move-object/from16 v0, v22

    #@83
    move/from16 v1, p1

    #@85
    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    #@88
    move-result v8

    #@89
    .line 4360
    .local v8, "initialOffset":I
    move/from16 v0, v18

    #@8b
    if-gt v8, v0, :cond_2

    #@8d
    .line 4363
    move/from16 v0, v18

    #@8f
    invoke-virtual {v11, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    #@92
    move-result v6

    #@93
    .line 4364
    move-object/from16 v0, p0

    #@95
    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    #@97
    move-object/from16 v22, v0

    #@99
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@9c
    move-result-object v22

    #@9d
    move-object/from16 v0, v22

    #@9f
    move/from16 v1, p1

    #@a1
    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    #@a4
    move-result v8

    #@a5
    .line 4367
    :cond_2
    move v13, v8

    #@a6
    .line 4368
    .local v13, "offset":I
    move-object/from16 v0, p0

    #@a8
    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    #@aa
    move-object/from16 v22, v0

    #@ac
    move-object/from16 v0, v22

    #@ae
    invoke-static {v0, v13}, Landroid/widget/Editor;->-wrap13(Landroid/widget/Editor;I)I

    #@b1
    move-result v7

    #@b2
    .line 4369
    .local v7, "end":I
    move-object/from16 v0, p0

    #@b4
    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    #@b6
    move-object/from16 v22, v0

    #@b8
    move-object/from16 v0, v22

    #@ba
    invoke-static {v0, v13}, Landroid/widget/Editor;->-wrap14(Landroid/widget/Editor;I)I

    #@bd
    move-result v19

    #@be
    .line 4371
    .local v19, "start":I
    move-object/from16 v0, p0

    #@c0
    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPrevX:F

    #@c2
    move/from16 v22, v0

    #@c4
    const/high16 v23, -0x40800000    # -1.0f

    #@c6
    cmpl-float v22, v22, v23

    #@c8
    if-nez v22, :cond_3

    #@ca
    .line 4372
    move/from16 v0, p1

    #@cc
    move-object/from16 v1, p0

    #@ce
    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mPrevX:F

    #@d0
    .line 4375
    :cond_3
    move-object/from16 v0, p0

    #@d2
    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    #@d4
    move-object/from16 v22, v0

    #@d6
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@d9
    move-result-object v22

    #@da
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getSelectionEnd()I

    #@dd
    move-result v16

    #@de
    .line 4376
    .local v16, "selectionEnd":I
    move/from16 v0, v16

    #@e0
    invoke-virtual {v11, v0}, Landroid/text/Layout;->isRtlCharAt(I)Z

    #@e3
    move-result v17

    #@e4
    .line 4377
    .local v17, "selectionEndRtl":Z
    invoke-virtual {v11, v13}, Landroid/text/Layout;->isRtlCharAt(I)Z

    #@e7
    move-result v5

    #@e8
    .line 4378
    .local v5, "atRtl":Z
    invoke-virtual {v11, v13}, Landroid/text/Layout;->isLevelBoundary(I)Z

    #@eb
    move-result v10

    #@ec
    .line 4384
    .local v10, "isLvlBoundary":Z
    if-nez v10, :cond_5

    #@ee
    if-eqz v17, :cond_4

    #@f0
    if-eqz v5, :cond_5

    #@f2
    :cond_4
    if-nez v17, :cond_6

    #@f4
    if-eqz v5, :cond_6

    #@f6
    .line 4387
    :cond_5
    const/16 v22, 0x1

    #@f8
    move/from16 v0, v22

    #@fa
    move-object/from16 v1, p0

    #@fc
    iput-boolean v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mLanguageDirectionChanged:Z

    #@fe
    .line 4388
    const/16 v22, 0x0

    #@100
    move/from16 v0, v22

    #@102
    move-object/from16 v1, p0

    #@104
    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    #@106
    .line 4389
    move-object/from16 v0, p0

    #@108
    invoke-direct {v0, v13}, Landroid/widget/Editor$SelectionEndHandleView;->positionAndAdjustForCrossingHandles(I)V

    #@10b
    .line 4390
    return-void

    #@10c
    .line 4391
    :cond_6
    move-object/from16 v0, p0

    #@10e
    iget-boolean v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mLanguageDirectionChanged:Z

    #@110
    move/from16 v22, v0

    #@112
    if-eqz v22, :cond_7

    #@114
    if-eqz v10, :cond_a

    #@116
    .line 4399
    :cond_7
    move-object/from16 v0, p0

    #@118
    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPrevX:F

    #@11a
    move/from16 v22, v0

    #@11c
    sub-float v21, p1, v22

    #@11e
    .line 4400
    .local v21, "xDiff":F
    if-eqz v5, :cond_c

    #@120
    .line 4401
    const/16 v22, 0x0

    #@122
    cmpg-float v22, v21, v22

    #@124
    if-ltz v22, :cond_8

    #@126
    move-object/from16 v0, p0

    #@128
    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousLineTouched:I

    #@12a
    move/from16 v22, v0

    #@12c
    move/from16 v0, v22

    #@12e
    if-ge v6, v0, :cond_b

    #@130
    :cond_8
    const/4 v9, 0x1

    #@131
    .line 4407
    .local v9, "isExpanding":Z
    :goto_0
    move-object/from16 v0, p0

    #@133
    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    #@135
    move-object/from16 v22, v0

    #@137
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@13a
    move-result-object v22

    #@13b
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    #@13e
    move-result v22

    #@13f
    if-eqz v22, :cond_11

    #@141
    .line 4408
    move-object/from16 v0, p0

    #@143
    move/from16 v1, p1

    #@145
    invoke-direct {v0, v1, v5}, Landroid/widget/Editor$SelectionEndHandleView;->positionNearEdgeOfScrollingView(FZ)Z

    #@148
    move-result v22

    #@149
    if-eqz v22, :cond_11

    #@14b
    .line 4409
    move-object/from16 v0, p0

    #@14d
    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    #@14f
    move-object/from16 v22, v0

    #@151
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@154
    move-result-object v23

    #@155
    if-eqz v5, :cond_f

    #@157
    const/16 v22, -0x1

    #@159
    :goto_1
    move-object/from16 v0, v23

    #@15b
    move/from16 v1, v22

    #@15d
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->canScrollHorizontally(I)Z

    #@160
    move-result v22

    #@161
    .line 4408
    if-eqz v22, :cond_11

    #@163
    .line 4410
    if-eqz v9, :cond_10

    #@165
    move/from16 v0, v16

    #@167
    if-le v13, v0, :cond_10

    #@169
    .line 4414
    :cond_9
    const/16 v22, 0x0

    #@16b
    move/from16 v0, v22

    #@16d
    move-object/from16 v1, p0

    #@16f
    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    #@171
    .line 4415
    if-eqz v5, :cond_18

    #@173
    move-object/from16 v0, p0

    #@175
    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousOffset:I

    #@177
    move/from16 v22, v0

    #@179
    move/from16 v0, v22

    #@17b
    invoke-virtual {v11, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    #@17e
    move-result v12

    #@17f
    .line 4417
    .local v12, "nextOffset":I
    :goto_2
    move-object/from16 v0, p0

    #@181
    invoke-direct {v0, v12}, Landroid/widget/Editor$SelectionEndHandleView;->positionAndAdjustForCrossingHandles(I)V

    #@184
    .line 4418
    return-void

    #@185
    .line 4394
    .end local v9    # "isExpanding":Z
    .end local v12    # "nextOffset":I
    .end local v21    # "xDiff":F
    :cond_a
    move-object/from16 v0, p0

    #@187
    invoke-direct {v0, v13}, Landroid/widget/Editor$SelectionEndHandleView;->positionAndAdjustForCrossingHandles(I)V

    #@18a
    .line 4395
    const/16 v22, 0x0

    #@18c
    move/from16 v0, v22

    #@18e
    move-object/from16 v1, p0

    #@190
    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    #@192
    .line 4396
    const/16 v22, 0x0

    #@194
    move/from16 v0, v22

    #@196
    move-object/from16 v1, p0

    #@198
    iput-boolean v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mLanguageDirectionChanged:Z

    #@19a
    .line 4397
    return-void

    #@19b
    .line 4401
    .restart local v21    # "xDiff":F
    :cond_b
    const/4 v9, 0x0

    #@19c
    .restart local v9    # "isExpanding":Z
    goto :goto_0

    #@19d
    .line 4403
    .end local v9    # "isExpanding":Z
    :cond_c
    const/16 v22, 0x0

    #@19f
    cmpl-float v22, v21, v22

    #@1a1
    if-gtz v22, :cond_d

    #@1a3
    move-object/from16 v0, p0

    #@1a5
    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousLineTouched:I

    #@1a7
    move/from16 v22, v0

    #@1a9
    move/from16 v0, v22

    #@1ab
    if-le v6, v0, :cond_e

    #@1ad
    :cond_d
    const/4 v9, 0x1

    #@1ae
    .restart local v9    # "isExpanding":Z
    goto :goto_0

    #@1af
    .end local v9    # "isExpanding":Z
    :cond_e
    const/4 v9, 0x0

    #@1b0
    .restart local v9    # "isExpanding":Z
    goto :goto_0

    #@1b1
    .line 4409
    :cond_f
    const/16 v22, 0x1

    #@1b3
    goto :goto_1

    #@1b4
    .line 4410
    :cond_10
    if-eqz v9, :cond_9

    #@1b6
    .line 4422
    :cond_11
    if-eqz v9, :cond_1b

    #@1b8
    .line 4424
    move-object/from16 v0, p0

    #@1ba
    iget-boolean v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mInWord:Z

    #@1bc
    move/from16 v22, v0

    #@1be
    if-eqz v22, :cond_12

    #@1c0
    move-object/from16 v0, p0

    #@1c2
    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPrevLine:I

    #@1c4
    move/from16 v22, v0

    #@1c6
    move/from16 v0, v22

    #@1c8
    if-le v6, v0, :cond_15

    #@1ca
    .line 4428
    :cond_12
    move/from16 v20, v7

    #@1cc
    .line 4429
    .local v20, "wordEndOnCurrLine":I
    if-eqz v11, :cond_13

    #@1ce
    invoke-virtual {v11, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    #@1d1
    move-result v22

    #@1d2
    move/from16 v0, v22

    #@1d4
    if-eq v0, v6, :cond_13

    #@1d6
    .line 4430
    invoke-virtual {v11, v6}, Landroid/text/Layout;->getLineEnd(I)I

    #@1d9
    move-result v20

    #@1da
    .line 4432
    :cond_13
    sub-int v22, v20, v19

    #@1dc
    div-int/lit8 v22, v22, 0x2

    #@1de
    add-int v14, v19, v22

    #@1e0
    .line 4433
    .local v14, "offsetThresholdToSnap":I
    if-ge v13, v14, :cond_14

    #@1e2
    move-object/from16 v0, p0

    #@1e4
    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPrevLine:I

    #@1e6
    move/from16 v22, v0

    #@1e8
    move/from16 v0, v22

    #@1ea
    if-le v6, v0, :cond_19

    #@1ec
    .line 4436
    :cond_14
    move v13, v7

    #@1ed
    .line 4441
    .end local v14    # "offsetThresholdToSnap":I
    .end local v20    # "wordEndOnCurrLine":I
    :cond_15
    :goto_3
    if-le v13, v8, :cond_1a

    #@1ef
    .line 4442
    invoke-virtual {v11, v13}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    #@1f2
    move-result v4

    #@1f3
    .line 4444
    .local v4, "adjustedX":F
    move-object/from16 v0, p0

    #@1f5
    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    #@1f7
    move-object/from16 v22, v0

    #@1f9
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@1fc
    move-result-object v22

    #@1fd
    move-object/from16 v0, v22

    #@1ff
    move/from16 v1, p1

    #@201
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    #@204
    move-result v22

    #@205
    sub-float v22, v4, v22

    #@207
    .line 4443
    move/from16 v0, v22

    #@209
    move-object/from16 v1, p0

    #@20b
    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    #@20d
    .line 4448
    .end local v4    # "adjustedX":F
    :goto_4
    const/4 v15, 0x1

    #@20e
    .line 4476
    :cond_16
    :goto_5
    if-eqz v15, :cond_17

    #@210
    .line 4477
    move-object/from16 v0, p0

    #@212
    iput v6, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousLineTouched:I

    #@214
    .line 4478
    move-object/from16 v0, p0

    #@216
    invoke-direct {v0, v13}, Landroid/widget/Editor$SelectionEndHandleView;->positionAndAdjustForCrossingHandles(I)V

    #@219
    .line 4480
    :cond_17
    move/from16 v0, p1

    #@21b
    move-object/from16 v1, p0

    #@21d
    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mPrevX:F

    #@21f
    .line 4342
    return-void

    #@220
    .line 4416
    :cond_18
    move-object/from16 v0, p0

    #@222
    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousOffset:I

    #@224
    move/from16 v22, v0

    #@226
    move/from16 v0, v22

    #@228
    invoke-virtual {v11, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    #@22b
    move-result v12

    #@22c
    .restart local v12    # "nextOffset":I
    goto/16 :goto_2

    #@22e
    .line 4438
    .end local v12    # "nextOffset":I
    .restart local v14    # "offsetThresholdToSnap":I
    .restart local v20    # "wordEndOnCurrLine":I
    :cond_19
    move-object/from16 v0, p0

    #@230
    iget v13, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousOffset:I

    #@232
    goto :goto_3

    #@233
    .line 4446
    .end local v14    # "offsetThresholdToSnap":I
    .end local v20    # "wordEndOnCurrLine":I
    :cond_1a
    const/16 v22, 0x0

    #@235
    move/from16 v0, v22

    #@237
    move-object/from16 v1, p0

    #@239
    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    #@23b
    goto :goto_4

    #@23c
    .line 4451
    :cond_1b
    move-object/from16 v0, p0

    #@23e
    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    #@240
    move-object/from16 v22, v0

    #@242
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@245
    move-result-object v22

    #@246
    move-object/from16 v0, p0

    #@248
    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    #@24a
    move/from16 v23, v0

    #@24c
    add-float v23, v23, p1

    #@24e
    move-object/from16 v0, v22

    #@250
    move/from16 v1, v23

    #@252
    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    #@255
    move-result v3

    #@256
    .line 4452
    .local v3, "adjustedOffset":I
    move-object/from16 v0, p0

    #@258
    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousOffset:I

    #@25a
    move/from16 v22, v0

    #@25c
    move/from16 v0, v22

    #@25e
    if-lt v3, v0, :cond_1c

    #@260
    move-object/from16 v0, p0

    #@262
    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPrevLine:I

    #@264
    move/from16 v22, v0

    #@266
    move/from16 v0, v22

    #@268
    if-ge v6, v0, :cond_1f

    #@26a
    .line 4454
    :cond_1c
    move-object/from16 v0, p0

    #@26c
    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPrevLine:I

    #@26e
    move/from16 v22, v0

    #@270
    move/from16 v0, v22

    #@272
    if-ge v6, v0, :cond_1e

    #@274
    .line 4456
    move v13, v7

    #@275
    .line 4457
    if-le v13, v8, :cond_1d

    #@277
    .line 4458
    invoke-virtual {v11, v13}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    #@27a
    move-result v4

    #@27b
    .line 4460
    .restart local v4    # "adjustedX":F
    move-object/from16 v0, p0

    #@27d
    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    #@27f
    move-object/from16 v22, v0

    #@281
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@284
    move-result-object v22

    #@285
    move-object/from16 v0, v22

    #@287
    move/from16 v1, p1

    #@289
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    #@28c
    move-result v22

    #@28d
    sub-float v22, v4, v22

    #@28f
    .line 4459
    move/from16 v0, v22

    #@291
    move-object/from16 v1, p0

    #@293
    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    #@295
    .line 4467
    .end local v4    # "adjustedX":F
    :goto_6
    const/4 v15, 0x1

    #@296
    .line 4452
    goto/16 :goto_5

    #@298
    .line 4462
    :cond_1d
    const/16 v22, 0x0

    #@29a
    move/from16 v0, v22

    #@29c
    move-object/from16 v1, p0

    #@29e
    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    #@2a0
    goto :goto_6

    #@2a1
    .line 4465
    :cond_1e
    move v13, v3

    #@2a2
    goto :goto_6

    #@2a3
    .line 4468
    :cond_1f
    move-object/from16 v0, p0

    #@2a5
    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousOffset:I

    #@2a7
    move/from16 v22, v0

    #@2a9
    move/from16 v0, v22

    #@2ab
    if-le v3, v0, :cond_16

    #@2ad
    .line 4471
    move-object/from16 v0, p0

    #@2af
    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousOffset:I

    #@2b1
    move/from16 v22, v0

    #@2b3
    move/from16 v0, v22

    #@2b5
    invoke-virtual {v11, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    #@2b8
    move-result v22

    #@2b9
    .line 4472
    move-object/from16 v0, p0

    #@2bb
    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    #@2bd
    move-object/from16 v23, v0

    #@2bf
    invoke-static/range {v23 .. v23}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@2c2
    move-result-object v23

    #@2c3
    move-object/from16 v0, v23

    #@2c5
    move/from16 v1, p1

    #@2c7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    #@2ca
    move-result v23

    #@2cb
    .line 4471
    sub-float v22, v22, v23

    #@2cd
    move/from16 v0, v22

    #@2cf
    move-object/from16 v1, p0

    #@2d1
    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    #@2d3
    goto/16 :goto_5
.end method

.method public updateSelection(I)V
    .locals 2
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 4333
    iget-object v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    #@2
    invoke-static {v0}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/text/Spannable;

    #@c
    .line 4334
    iget-object v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    #@e
    invoke-static {v1}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    #@15
    move-result v1

    #@16
    .line 4333
    invoke-static {v0, v1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@19
    .line 4335
    iget-object v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    #@1b
    iget-object v0, v0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@1d
    if-eqz v0, :cond_0

    #@1f
    .line 4336
    iget-object v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    #@21
    iget-object v0, v0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@23
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    #@26
    .line 4338
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->updateDrawable()V

    #@29
    .line 4332
    return-void
.end method
