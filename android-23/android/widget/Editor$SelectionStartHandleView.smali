.class Landroid/widget/Editor$SelectionStartHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionStartHandleView"
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
    .line 4069
    iput-object p1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #@3
    .line 4070
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@6
    .line 4056
    iput-boolean v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->mInWord:Z

    #@8
    .line 4062
    iput-boolean v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->mLanguageDirectionChanged:Z

    #@a
    .line 4067
    const/4 v1, 0x2

    #@b
    new-array v1, v1, [I

    #@d
    iput-object v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewLocation:[I

    #@f
    .line 4072
    invoke-static {p1}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@16
    move-result-object v1

    #@17
    .line 4071
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@1a
    move-result-object v0

    #@1b
    .line 4073
    .local v0, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@1e
    move-result v1

    #@1f
    mul-int/lit8 v1, v1, 0x4

    #@21
    int-to-float v1, v1

    #@22
    iput v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewEdgeSlop:F

    #@24
    .line 4069
    return-void
.end method

.method private positionAndAdjustForCrossingHandles(I)V
    .locals 3
    .param p1, "offset"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4248
    iget-object v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #@3
    invoke-static {v1}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    #@a
    move-result v0

    #@b
    .line 4249
    .local v0, "selectionEnd":I
    if-lt p1, v0, :cond_0

    #@d
    .line 4251
    iget-object v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #@f
    invoke-static {v1, v0, v2}, Landroid/widget/Editor;->-wrap12(Landroid/widget/Editor;IZ)I

    #@12
    move-result p1

    #@13
    .line 4252
    const/4 v1, 0x0

    #@14
    iput v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    #@16
    .line 4254
    :cond_0
    invoke-virtual {p0, p1, v2}, Landroid/widget/Editor$SelectionStartHandleView;->positionAtCursorOffset(IZ)V

    #@19
    .line 4247
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
    .line 4276
    iget-object v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #@3
    invoke-static {v3}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@6
    move-result-object v3

    #@7
    iget-object v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewLocation:[I

    #@9
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    #@c
    .line 4278
    if-eqz p2, :cond_1

    #@e
    .line 4279
    iget-object v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewLocation:[I

    #@10
    aget v3, v3, v5

    #@12
    iget-object v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #@14
    invoke-static {v4}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    #@1b
    move-result v4

    #@1c
    add-int/2addr v3, v4

    #@1d
    .line 4280
    iget-object v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #@1f
    invoke-static {v4}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    #@26
    move-result v4

    #@27
    .line 4279
    sub-int v2, v3, v4

    #@29
    .line 4281
    .local v2, "rightEdge":I
    int-to-float v3, v2

    #@2a
    iget v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewEdgeSlop:F

    #@2c
    sub-float/2addr v3, v4

    #@2d
    cmpl-float v3, p1, v3

    #@2f
    if-lez v3, :cond_0

    #@31
    const/4 v1, 0x1

    #@32
    .line 4286
    .end local v2    # "rightEdge":I
    .local v1, "nearEdge":Z
    :goto_0
    return v1

    #@33
    .line 4281
    .end local v1    # "nearEdge":Z
    .restart local v2    # "rightEdge":I
    :cond_0
    const/4 v1, 0x0

    #@34
    .restart local v1    # "nearEdge":Z
    goto :goto_0

    #@35
    .line 4283
    .end local v1    # "nearEdge":Z
    .end local v2    # "rightEdge":I
    :cond_1
    iget-object v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewLocation:[I

    #@37
    aget v3, v3, v5

    #@39
    iget-object v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #@3b
    invoke-static {v4}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    #@42
    move-result v4

    #@43
    add-int v0, v3, v4

    #@45
    .line 4284
    .local v0, "leftEdge":I
    int-to-float v3, v0

    #@46
    iget v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewEdgeSlop:F

    #@48
    add-float/2addr v3, v4

    #@49
    cmpg-float v3, p1, v3

    #@4b
    if-gez v3, :cond_2

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
    .line 4092
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #@2
    invoke-static {v0}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

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
    .line 4087
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x3

    #@3
    :goto_0
    return v0

    #@4
    :cond_0
    const/4 v0, 0x5

    #@5
    goto :goto_0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    #@0
    .prologue
    .line 4078
    if-eqz p2, :cond_0

    #@2
    .line 4079
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@5
    move-result v0

    #@6
    div-int/lit8 v0, v0, 0x4

    #@8
    return v0

    #@9
    .line 4081
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@c
    move-result v0

    #@d
    mul-int/lit8 v0, v0, 0x3

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
    .line 4265
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@3
    move-result v0

    #@4
    .line 4266
    .local v0, "superResult":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 4269
    const/4 v1, 0x0

    #@b
    iput v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    #@d
    .line 4270
    const/high16 v1, -0x40800000    # -1.0f

    #@f
    iput v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPrevX:F

    #@11
    .line 4272
    :cond_0
    return v0
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "parentScrolled"    # Z

    #@0
    .prologue
    .line 4259
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    #@3
    .line 4260
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

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
    iput-boolean v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->mInWord:Z

    #@12
    .line 4258
    return-void

    #@13
    .line 4260
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
    .line 4107
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

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
    .line 4108
    .local v11, "layout":Landroid/text/Layout;
    if-nez v11, :cond_0

    #@10
    .line 4111
    move-object/from16 v0, p0

    #@12
    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

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
    invoke-direct {v0, v1}, Landroid/widget/Editor$SelectionStartHandleView;->positionAndAdjustForCrossingHandles(I)V

    #@2b
    .line 4112
    return-void

    #@2c
    .line 4115
    :cond_0
    move-object/from16 v0, p0

    #@2e
    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousLineTouched:I

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
    .line 4116
    move-object/from16 v0, p0

    #@3c
    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

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
    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousLineTouched:I

    #@52
    .line 4119
    :cond_1
    const/4 v15, 0x0

    #@53
    .line 4120
    .local v15, "positionCursor":Z
    move-object/from16 v0, p0

    #@55
    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #@57
    move-object/from16 v22, v0

    #@59
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@5c
    move-result-object v22

    #@5d
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getSelectionEnd()I

    #@60
    move-result v16

    #@61
    .line 4121
    .local v16, "selectionEnd":I
    move-object/from16 v0, p0

    #@63
    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #@65
    move-object/from16 v22, v0

    #@67
    move-object/from16 v0, p0

    #@69
    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousLineTouched:I

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
    .line 4122
    .local v6, "currLine":I
    move-object/from16 v0, p0

    #@79
    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

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
    .line 4124
    .local v8, "initialOffset":I
    move/from16 v0, v16

    #@8b
    if-lt v8, v0, :cond_2

    #@8d
    .line 4127
    move/from16 v0, v16

    #@8f
    invoke-virtual {v11, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    #@92
    move-result v6

    #@93
    .line 4128
    move-object/from16 v0, p0

    #@95
    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

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
    .line 4131
    :cond_2
    move v13, v8

    #@a6
    .line 4132
    .local v13, "offset":I
    move-object/from16 v0, p0

    #@a8
    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #@aa
    move-object/from16 v22, v0

    #@ac
    move-object/from16 v0, v22

    #@ae
    invoke-static {v0, v13}, Landroid/widget/Editor;->-wrap13(Landroid/widget/Editor;I)I

    #@b1
    move-result v7

    #@b2
    .line 4133
    .local v7, "end":I
    move-object/from16 v0, p0

    #@b4
    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #@b6
    move-object/from16 v22, v0

    #@b8
    move-object/from16 v0, v22

    #@ba
    invoke-static {v0, v13}, Landroid/widget/Editor;->-wrap14(Landroid/widget/Editor;I)I

    #@bd
    move-result v19

    #@be
    .line 4135
    .local v19, "start":I
    move-object/from16 v0, p0

    #@c0
    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPrevX:F

    #@c2
    move/from16 v22, v0

    #@c4
    const/high16 v23, -0x40800000    # -1.0f

    #@c6
    cmpl-float v22, v22, v23

    #@c8
    if-nez v22, :cond_3

    #@ca
    .line 4136
    move/from16 v0, p1

    #@cc
    move-object/from16 v1, p0

    #@ce
    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mPrevX:F

    #@d0
    .line 4139
    :cond_3
    move-object/from16 v0, p0

    #@d2
    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #@d4
    move-object/from16 v22, v0

    #@d6
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@d9
    move-result-object v22

    #@da
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getSelectionStart()I

    #@dd
    move-result v17

    #@de
    .line 4140
    .local v17, "selectionStart":I
    move/from16 v0, v17

    #@e0
    invoke-virtual {v11, v0}, Landroid/text/Layout;->isRtlCharAt(I)Z

    #@e3
    move-result v18

    #@e4
    .line 4141
    .local v18, "selectionStartRtl":Z
    invoke-virtual {v11, v13}, Landroid/text/Layout;->isRtlCharAt(I)Z

    #@e7
    move-result v5

    #@e8
    .line 4142
    .local v5, "atRtl":Z
    invoke-virtual {v11, v13}, Landroid/text/Layout;->isLevelBoundary(I)Z

    #@eb
    move-result v10

    #@ec
    .line 4148
    .local v10, "isLvlBoundary":Z
    if-nez v10, :cond_5

    #@ee
    if-eqz v18, :cond_4

    #@f0
    if-eqz v5, :cond_5

    #@f2
    :cond_4
    if-nez v18, :cond_6

    #@f4
    if-eqz v5, :cond_6

    #@f6
    .line 4151
    :cond_5
    const/16 v22, 0x1

    #@f8
    move/from16 v0, v22

    #@fa
    move-object/from16 v1, p0

    #@fc
    iput-boolean v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mLanguageDirectionChanged:Z

    #@fe
    .line 4152
    const/16 v22, 0x0

    #@100
    move/from16 v0, v22

    #@102
    move-object/from16 v1, p0

    #@104
    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    #@106
    .line 4153
    move-object/from16 v0, p0

    #@108
    invoke-direct {v0, v13}, Landroid/widget/Editor$SelectionStartHandleView;->positionAndAdjustForCrossingHandles(I)V

    #@10b
    .line 4154
    return-void

    #@10c
    .line 4155
    :cond_6
    move-object/from16 v0, p0

    #@10e
    iget-boolean v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mLanguageDirectionChanged:Z

    #@110
    move/from16 v22, v0

    #@112
    if-eqz v22, :cond_7

    #@114
    if-eqz v10, :cond_a

    #@116
    .line 4163
    :cond_7
    move-object/from16 v0, p0

    #@118
    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPrevX:F

    #@11a
    move/from16 v22, v0

    #@11c
    sub-float v21, p1, v22

    #@11e
    .line 4164
    .local v21, "xDiff":F
    if-eqz v5, :cond_c

    #@120
    .line 4165
    const/16 v22, 0x0

    #@122
    cmpl-float v22, v21, v22

    #@124
    if-gtz v22, :cond_8

    #@126
    move-object/from16 v0, p0

    #@128
    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousLineTouched:I

    #@12a
    move/from16 v22, v0

    #@12c
    move/from16 v0, v22

    #@12e
    if-le v6, v0, :cond_b

    #@130
    :cond_8
    const/4 v9, 0x1

    #@131
    .line 4171
    .local v9, "isExpanding":Z
    :goto_0
    move-object/from16 v0, p0

    #@133
    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

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
    if-eqz v22, :cond_10

    #@141
    .line 4172
    move-object/from16 v0, p0

    #@143
    move/from16 v1, p1

    #@145
    invoke-direct {v0, v1, v5}, Landroid/widget/Editor$SelectionStartHandleView;->positionNearEdgeOfScrollingView(FZ)Z

    #@148
    move-result v22

    #@149
    if-eqz v22, :cond_10

    #@14b
    .line 4173
    move-object/from16 v0, p0

    #@14d
    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #@14f
    move-object/from16 v22, v0

    #@151
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@154
    move-result-object v22

    #@155
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getScrollX()I

    #@158
    move-result v22

    #@159
    if-eqz v22, :cond_10

    #@15b
    .line 4174
    if-eqz v9, :cond_f

    #@15d
    move/from16 v0, v17

    #@15f
    if-ge v13, v0, :cond_f

    #@161
    .line 4178
    :cond_9
    const/16 v22, 0x0

    #@163
    move/from16 v0, v22

    #@165
    move-object/from16 v1, p0

    #@167
    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    #@169
    .line 4179
    if-eqz v5, :cond_17

    #@16b
    move-object/from16 v0, p0

    #@16d
    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousOffset:I

    #@16f
    move/from16 v22, v0

    #@171
    move/from16 v0, v22

    #@173
    invoke-virtual {v11, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    #@176
    move-result v12

    #@177
    .line 4181
    .local v12, "nextOffset":I
    :goto_1
    move-object/from16 v0, p0

    #@179
    invoke-direct {v0, v12}, Landroid/widget/Editor$SelectionStartHandleView;->positionAndAdjustForCrossingHandles(I)V

    #@17c
    .line 4182
    return-void

    #@17d
    .line 4158
    .end local v9    # "isExpanding":Z
    .end local v12    # "nextOffset":I
    .end local v21    # "xDiff":F
    :cond_a
    move-object/from16 v0, p0

    #@17f
    invoke-direct {v0, v13}, Landroid/widget/Editor$SelectionStartHandleView;->positionAndAdjustForCrossingHandles(I)V

    #@182
    .line 4159
    const/16 v22, 0x0

    #@184
    move/from16 v0, v22

    #@186
    move-object/from16 v1, p0

    #@188
    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    #@18a
    .line 4160
    const/16 v22, 0x0

    #@18c
    move/from16 v0, v22

    #@18e
    move-object/from16 v1, p0

    #@190
    iput-boolean v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mLanguageDirectionChanged:Z

    #@192
    .line 4161
    return-void

    #@193
    .line 4165
    .restart local v21    # "xDiff":F
    :cond_b
    const/4 v9, 0x0

    #@194
    .restart local v9    # "isExpanding":Z
    goto :goto_0

    #@195
    .line 4167
    .end local v9    # "isExpanding":Z
    :cond_c
    const/16 v22, 0x0

    #@197
    cmpg-float v22, v21, v22

    #@199
    if-ltz v22, :cond_d

    #@19b
    move-object/from16 v0, p0

    #@19d
    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousLineTouched:I

    #@19f
    move/from16 v22, v0

    #@1a1
    move/from16 v0, v22

    #@1a3
    if-ge v6, v0, :cond_e

    #@1a5
    :cond_d
    const/4 v9, 0x1

    #@1a6
    .restart local v9    # "isExpanding":Z
    goto :goto_0

    #@1a7
    .end local v9    # "isExpanding":Z
    :cond_e
    const/4 v9, 0x0

    #@1a8
    .restart local v9    # "isExpanding":Z
    goto :goto_0

    #@1a9
    .line 4174
    :cond_f
    if-eqz v9, :cond_9

    #@1ab
    .line 4186
    :cond_10
    if-eqz v9, :cond_1a

    #@1ad
    .line 4188
    move-object/from16 v0, p0

    #@1af
    iget-boolean v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mInWord:Z

    #@1b1
    move/from16 v22, v0

    #@1b3
    if-eqz v22, :cond_11

    #@1b5
    move-object/from16 v0, p0

    #@1b7
    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPrevLine:I

    #@1b9
    move/from16 v22, v0

    #@1bb
    move/from16 v0, v22

    #@1bd
    if-ge v6, v0, :cond_14

    #@1bf
    .line 4192
    :cond_11
    move/from16 v20, v19

    #@1c1
    .line 4193
    .local v20, "wordStartOnCurrLine":I
    if-eqz v11, :cond_12

    #@1c3
    move/from16 v0, v19

    #@1c5
    invoke-virtual {v11, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    #@1c8
    move-result v22

    #@1c9
    move/from16 v0, v22

    #@1cb
    if-eq v0, v6, :cond_12

    #@1cd
    .line 4194
    invoke-virtual {v11, v6}, Landroid/text/Layout;->getLineStart(I)I

    #@1d0
    move-result v20

    #@1d1
    .line 4196
    :cond_12
    sub-int v22, v7, v20

    #@1d3
    div-int/lit8 v22, v22, 0x2

    #@1d5
    sub-int v14, v7, v22

    #@1d7
    .line 4197
    .local v14, "offsetThresholdToSnap":I
    if-le v13, v14, :cond_13

    #@1d9
    move-object/from16 v0, p0

    #@1db
    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPrevLine:I

    #@1dd
    move/from16 v22, v0

    #@1df
    move/from16 v0, v22

    #@1e1
    if-ge v6, v0, :cond_18

    #@1e3
    .line 4200
    :cond_13
    move/from16 v13, v19

    #@1e5
    .line 4205
    .end local v14    # "offsetThresholdToSnap":I
    .end local v20    # "wordStartOnCurrLine":I
    :cond_14
    :goto_2
    if-eqz v11, :cond_19

    #@1e7
    if-ge v13, v8, :cond_19

    #@1e9
    .line 4206
    invoke-virtual {v11, v13}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    #@1ec
    move-result v4

    #@1ed
    .line 4208
    .local v4, "adjustedX":F
    move-object/from16 v0, p0

    #@1ef
    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #@1f1
    move-object/from16 v22, v0

    #@1f3
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@1f6
    move-result-object v22

    #@1f7
    move-object/from16 v0, v22

    #@1f9
    move/from16 v1, p1

    #@1fb
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    #@1fe
    move-result v22

    #@1ff
    sub-float v22, v22, v4

    #@201
    .line 4207
    move/from16 v0, v22

    #@203
    move-object/from16 v1, p0

    #@205
    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    #@207
    .line 4212
    .end local v4    # "adjustedX":F
    :goto_3
    const/4 v15, 0x1

    #@208
    .line 4240
    :cond_15
    :goto_4
    if-eqz v15, :cond_16

    #@20a
    .line 4241
    move-object/from16 v0, p0

    #@20c
    iput v6, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousLineTouched:I

    #@20e
    .line 4242
    move-object/from16 v0, p0

    #@210
    invoke-direct {v0, v13}, Landroid/widget/Editor$SelectionStartHandleView;->positionAndAdjustForCrossingHandles(I)V

    #@213
    .line 4244
    :cond_16
    move/from16 v0, p1

    #@215
    move-object/from16 v1, p0

    #@217
    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mPrevX:F

    #@219
    .line 4106
    return-void

    #@21a
    .line 4180
    :cond_17
    move-object/from16 v0, p0

    #@21c
    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousOffset:I

    #@21e
    move/from16 v22, v0

    #@220
    move/from16 v0, v22

    #@222
    invoke-virtual {v11, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    #@225
    move-result v12

    #@226
    .restart local v12    # "nextOffset":I
    goto/16 :goto_1

    #@228
    .line 4202
    .end local v12    # "nextOffset":I
    .restart local v14    # "offsetThresholdToSnap":I
    .restart local v20    # "wordStartOnCurrLine":I
    :cond_18
    move-object/from16 v0, p0

    #@22a
    iget v13, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousOffset:I

    #@22c
    goto :goto_2

    #@22d
    .line 4210
    .end local v14    # "offsetThresholdToSnap":I
    .end local v20    # "wordStartOnCurrLine":I
    :cond_19
    const/16 v22, 0x0

    #@22f
    move/from16 v0, v22

    #@231
    move-object/from16 v1, p0

    #@233
    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    #@235
    goto :goto_3

    #@236
    .line 4215
    :cond_1a
    move-object/from16 v0, p0

    #@238
    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #@23a
    move-object/from16 v22, v0

    #@23c
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@23f
    move-result-object v22

    #@240
    move-object/from16 v0, p0

    #@242
    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    #@244
    move/from16 v23, v0

    #@246
    sub-float v23, p1, v23

    #@248
    move-object/from16 v0, v22

    #@24a
    move/from16 v1, v23

    #@24c
    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    #@24f
    move-result v3

    #@250
    .line 4216
    .local v3, "adjustedOffset":I
    move-object/from16 v0, p0

    #@252
    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousOffset:I

    #@254
    move/from16 v22, v0

    #@256
    move/from16 v0, v22

    #@258
    if-gt v3, v0, :cond_1b

    #@25a
    move-object/from16 v0, p0

    #@25c
    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPrevLine:I

    #@25e
    move/from16 v22, v0

    #@260
    move/from16 v0, v22

    #@262
    if-le v6, v0, :cond_1e

    #@264
    .line 4218
    :cond_1b
    move-object/from16 v0, p0

    #@266
    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPrevLine:I

    #@268
    move/from16 v22, v0

    #@26a
    move/from16 v0, v22

    #@26c
    if-le v6, v0, :cond_1d

    #@26e
    .line 4220
    move/from16 v13, v19

    #@270
    .line 4221
    if-eqz v11, :cond_1c

    #@272
    if-ge v13, v8, :cond_1c

    #@274
    .line 4222
    invoke-virtual {v11, v13}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    #@277
    move-result v4

    #@278
    .line 4224
    .restart local v4    # "adjustedX":F
    move-object/from16 v0, p0

    #@27a
    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #@27c
    move-object/from16 v22, v0

    #@27e
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@281
    move-result-object v22

    #@282
    move-object/from16 v0, v22

    #@284
    move/from16 v1, p1

    #@286
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    #@289
    move-result v22

    #@28a
    sub-float v22, v22, v4

    #@28c
    .line 4223
    move/from16 v0, v22

    #@28e
    move-object/from16 v1, p0

    #@290
    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    #@292
    .line 4231
    .end local v4    # "adjustedX":F
    :goto_5
    const/4 v15, 0x1

    #@293
    .line 4216
    goto/16 :goto_4

    #@295
    .line 4226
    :cond_1c
    const/16 v22, 0x0

    #@297
    move/from16 v0, v22

    #@299
    move-object/from16 v1, p0

    #@29b
    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    #@29d
    goto :goto_5

    #@29e
    .line 4229
    :cond_1d
    move v13, v3

    #@29f
    goto :goto_5

    #@2a0
    .line 4232
    :cond_1e
    move-object/from16 v0, p0

    #@2a2
    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousOffset:I

    #@2a4
    move/from16 v22, v0

    #@2a6
    move/from16 v0, v22

    #@2a8
    if-ge v3, v0, :cond_15

    #@2aa
    .line 4235
    move-object/from16 v0, p0

    #@2ac
    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #@2ae
    move-object/from16 v22, v0

    #@2b0
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@2b3
    move-result-object v22

    #@2b4
    move-object/from16 v0, v22

    #@2b6
    move/from16 v1, p1

    #@2b8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    #@2bb
    move-result v22

    #@2bc
    .line 4236
    move-object/from16 v0, p0

    #@2be
    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousOffset:I

    #@2c0
    move/from16 v23, v0

    #@2c2
    move/from16 v0, v23

    #@2c4
    invoke-virtual {v11, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    #@2c7
    move-result v23

    #@2c8
    .line 4235
    sub-float v22, v22, v23

    #@2ca
    move/from16 v0, v22

    #@2cc
    move-object/from16 v1, p0

    #@2ce
    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    #@2d0
    goto/16 :goto_4
.end method

.method public updateSelection(I)V
    .locals 2
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 4097
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

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
    .line 4098
    iget-object v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #@e
    invoke-static {v1}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    #@15
    move-result v1

    #@16
    .line 4097
    invoke-static {v0, p1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@19
    .line 4099
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->updateDrawable()V

    #@1c
    .line 4100
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #@1e
    iget-object v0, v0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@20
    if-eqz v0, :cond_0

    #@22
    .line 4101
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #@24
    iget-object v0, v0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@26
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    #@29
    .line 4096
    :cond_0
    return-void
.end method
