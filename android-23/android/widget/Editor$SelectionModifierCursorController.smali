.class Landroid/widget/Editor$SelectionModifierCursorController;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectionModifierCursorController"
.end annotation


# instance fields
.field private mDownPositionX:F

.field private mDownPositionY:F

.field private mDragAcceleratorActive:Z

.field private mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

.field private mGestureStayedInTapRegion:Z

.field private mHaventMovedEnoughToStartDrag:Z

.field private mLineSelectionIsOn:I

.field private mMaxTouchOffset:I

.field private mMinTouchOffset:I

.field private mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

.field private mStartOffset:I

.field private mSwitchedLines:Z

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method static synthetic -get0(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionStartHandleView;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/Editor$SelectionModifierCursorController;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initDrawables()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/Editor$SelectionModifierCursorController;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initHandles()V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/widget/Editor;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/Editor;

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 4650
    iput-object p1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 4641
    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    #@8
    .line 4646
    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    #@a
    .line 4648
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    #@d
    .line 4651
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    #@10
    .line 4650
    return-void
.end method

.method private initDrawables()V
    .locals 3

    #@0
    .prologue
    .line 4664
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@2
    invoke-static {v0}, Landroid/widget/Editor;->-get2(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 4665
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@a
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@c
    invoke-static {v1}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@13
    move-result-object v1

    #@14
    .line 4666
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@16
    invoke-static {v2}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@19
    move-result-object v2

    #@1a
    iget v2, v2, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    #@1c
    .line 4665
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@1f
    move-result-object v1

    #@20
    invoke-static {v0, v1}, Landroid/widget/Editor;->-set2(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@23
    .line 4668
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@25
    invoke-static {v0}, Landroid/widget/Editor;->-get3(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    #@28
    move-result-object v0

    #@29
    if-nez v0, :cond_1

    #@2b
    .line 4669
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@2d
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@2f
    invoke-static {v1}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@36
    move-result-object v1

    #@37
    .line 4670
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@39
    invoke-static {v2}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@3c
    move-result-object v2

    #@3d
    iget v2, v2, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    #@3f
    .line 4669
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@42
    move-result-object v1

    #@43
    invoke-static {v0, v1}, Landroid/widget/Editor;->-set3(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@46
    .line 4663
    :cond_1
    return-void
.end method

.method private initHandles()V
    .locals 4

    #@0
    .prologue
    .line 4676
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 4677
    new-instance v0, Landroid/widget/Editor$SelectionStartHandleView;

    #@6
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@8
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@a
    invoke-static {v2}, Landroid/widget/Editor;->-get2(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object v2

    #@e
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@10
    invoke-static {v3}, Landroid/widget/Editor;->-get3(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    #@13
    move-result-object v3

    #@14
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor$SelectionStartHandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@17
    iput-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    #@19
    .line 4679
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    #@1b
    if-nez v0, :cond_1

    #@1d
    .line 4680
    new-instance v0, Landroid/widget/Editor$SelectionEndHandleView;

    #@1f
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@21
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@23
    invoke-static {v2}, Landroid/widget/Editor;->-get3(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    #@26
    move-result-object v2

    #@27
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@29
    invoke-static {v3}, Landroid/widget/Editor;->-get2(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    #@2c
    move-result-object v3

    #@2d
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor$SelectionEndHandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@30
    iput-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    #@32
    .line 4683
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    #@34
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->show()V

    #@37
    .line 4684
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    #@39
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->show()V

    #@3c
    .line 4686
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@3e
    invoke-virtual {v0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    #@41
    .line 4674
    return-void
.end method

.method private updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 4878
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@3
    move-result v2

    #@4
    .line 4879
    .local v2, "pointerCount":I
    const/4 v0, 0x0

    #@5
    .local v0, "index":I
    :goto_0
    if-ge v0, v2, :cond_2

    #@7
    .line 4880
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@9
    invoke-static {v3}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@c
    move-result-object v3

    #@d
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    #@10
    move-result v4

    #@11
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    #@14
    move-result v5

    #@15
    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    #@18
    move-result v1

    #@19
    .line 4881
    .local v1, "offset":I
    iget v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    #@1b
    if-ge v1, v3, :cond_0

    #@1d
    iput v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    #@1f
    .line 4882
    :cond_0
    iget v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    #@21
    if-le v1, v3, :cond_1

    #@23
    iput v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    #@25
    .line 4879
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_0

    #@28
    .line 4877
    .end local v1    # "offset":I
    :cond_2
    return-void
.end method


# virtual methods
.method public enterDrag()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 4696
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    #@4
    .line 4697
    iput-boolean v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorActive:Z

    #@6
    .line 4699
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@8
    invoke-static {v0}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@e
    iget v1, v1, Landroid/widget/Editor;->mLastDownPositionX:F

    #@10
    .line 4700
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@12
    iget v2, v2, Landroid/widget/Editor;->mLastDownPositionY:F

    #@14
    .line 4699
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    #@17
    move-result v0

    #@18
    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    #@1a
    .line 4701
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@1c
    invoke-static {v0}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@1f
    move-result-object v0

    #@20
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@22
    iget v1, v1, Landroid/widget/Editor;->mLastDownPositionY:F

    #@24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    #@27
    move-result v0

    #@28
    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    #@2a
    .line 4703
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    #@2d
    .line 4708
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@2f
    invoke-static {v0}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    #@36
    move-result-object v0

    #@37
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@3a
    .line 4694
    return-void
.end method

.method public getMaxTouchOffset()I
    .locals 1

    #@0
    .prologue
    .line 4891
    iget v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    #@2
    return v0
.end method

.method public getMinTouchOffset()I
    .locals 1

    #@0
    .prologue
    .line 4887
    iget v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    #@2
    return v0
.end method

.method public hide()V
    .locals 1

    #@0
    .prologue
    .line 4690
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    #@6
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->hide()V

    #@9
    .line 4691
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    #@b
    if-eqz v0, :cond_1

    #@d
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    #@f
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->hide()V

    #@12
    .line 4689
    :cond_1
    return-void
.end method

.method public isDragAcceleratorActive()Z
    .locals 1

    #@0
    .prologue
    .line 4912
    iget-boolean v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorActive:Z

    #@2
    return v0
.end method

.method public isSelectionStartDragged()Z
    .locals 1

    #@0
    .prologue
    .line 4905
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    #@6
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->isDragging()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public onDetached()V
    .locals 2

    #@0
    .prologue
    .line 4923
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@2
    invoke-static {v1}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@9
    move-result-object v0

    #@a
    .line 4924
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    #@d
    .line 4926
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    #@f
    if-eqz v1, :cond_0

    #@11
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    #@13
    invoke-virtual {v1}, Landroid/widget/Editor$SelectionStartHandleView;->onDetached()V

    #@16
    .line 4927
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    #@18
    if-eqz v1, :cond_1

    #@1a
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    #@1c
    invoke-virtual {v1}, Landroid/widget/Editor$SelectionEndHandleView;->onDetached()V

    #@1f
    .line 4922
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 25
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 4714
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    #@3
    move-result v11

    #@4
    .line 4715
    .local v11, "eventX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    #@7
    move-result v12

    #@8
    .line 4716
    .local v12, "eventY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@b
    move-result v22

    #@c
    packed-switch v22, :pswitch_data_0

    #@f
    .line 4711
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@10
    .line 4718
    :pswitch_1
    move-object/from16 v0, p0

    #@12
    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@14
    move-object/from16 v22, v0

    #@16
    invoke-virtual/range {v22 .. v22}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    #@19
    move-result v22

    #@1a
    if-eqz v22, :cond_1

    #@1c
    .line 4720
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    #@1f
    goto :goto_0

    #@20
    .line 4723
    :cond_1
    move-object/from16 v0, p0

    #@22
    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@24
    move-object/from16 v22, v0

    #@26
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@29
    move-result-object v22

    #@2a
    move-object/from16 v0, v22

    #@2c
    invoke-virtual {v0, v11, v12}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    #@2f
    move-result v22

    #@30
    move/from16 v0, v22

    #@32
    move-object/from16 v1, p0

    #@34
    iput v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    #@36
    move/from16 v0, v22

    #@38
    move-object/from16 v1, p0

    #@3a
    iput v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    #@3c
    .line 4727
    move-object/from16 v0, p0

    #@3e
    iget-boolean v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    #@40
    move/from16 v22, v0

    #@42
    if-eqz v22, :cond_2

    #@44
    .line 4728
    move-object/from16 v0, p0

    #@46
    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@48
    move-object/from16 v22, v0

    #@4a
    move-object/from16 v0, v22

    #@4c
    iget-boolean v0, v0, Landroid/widget/Editor;->mDoubleTap:Z

    #@4e
    move/from16 v22, v0

    #@50
    if-eqz v22, :cond_2

    #@52
    .line 4729
    move-object/from16 v0, p0

    #@54
    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionX:F

    #@56
    move/from16 v22, v0

    #@58
    sub-float v5, v11, v22

    #@5a
    .line 4730
    .local v5, "deltaX":F
    move-object/from16 v0, p0

    #@5c
    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionY:F

    #@5e
    move/from16 v22, v0

    #@60
    sub-float v6, v12, v22

    #@62
    .line 4731
    .local v6, "deltaY":F
    mul-float v22, v5, v5

    #@64
    mul-float v23, v6, v6

    #@66
    add-float v7, v22, v23

    #@68
    .line 4734
    .local v7, "distanceSquared":F
    move-object/from16 v0, p0

    #@6a
    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@6c
    move-object/from16 v22, v0

    #@6e
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@71
    move-result-object v22

    #@72
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@75
    move-result-object v22

    #@76
    .line 4733
    invoke-static/range {v22 .. v22}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@79
    move-result-object v20

    #@7a
    .line 4735
    .local v20, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    #@7d
    move-result v8

    #@7e
    .line 4737
    .local v8, "doubleTapSlop":I
    mul-int v22, v8, v8

    #@80
    move/from16 v0, v22

    #@82
    int-to-float v0, v0

    #@83
    move/from16 v22, v0

    #@85
    cmpg-float v22, v7, v22

    #@87
    if-gez v22, :cond_3

    #@89
    const/16 v16, 0x1

    #@8b
    .line 4739
    .local v16, "stayedInArea":Z
    :goto_1
    if-eqz v16, :cond_2

    #@8d
    move-object/from16 v0, p0

    #@8f
    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@91
    move-object/from16 v22, v0

    #@93
    move-object/from16 v0, v22

    #@95
    invoke-static {v0, v11, v12}, Landroid/widget/Editor;->-wrap5(Landroid/widget/Editor;FF)Z

    #@98
    move-result v22

    #@99
    if-eqz v22, :cond_2

    #@9b
    .line 4740
    move-object/from16 v0, p0

    #@9d
    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@9f
    move-object/from16 v22, v0

    #@a1
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-wrap8(Landroid/widget/Editor;)Z

    #@a4
    .line 4741
    move-object/from16 v0, p0

    #@a6
    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@a8
    move-object/from16 v22, v0

    #@aa
    const/16 v23, 0x1

    #@ac
    move/from16 v0, v23

    #@ae
    move-object/from16 v1, v22

    #@b0
    iput-boolean v0, v1, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    #@b2
    .line 4746
    .end local v5    # "deltaX":F
    .end local v6    # "deltaY":F
    .end local v7    # "distanceSquared":F
    .end local v8    # "doubleTapSlop":I
    .end local v16    # "stayedInArea":Z
    .end local v20    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_2
    move-object/from16 v0, p0

    #@b4
    iput v11, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionX:F

    #@b6
    .line 4747
    move-object/from16 v0, p0

    #@b8
    iput v12, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionY:F

    #@ba
    .line 4748
    const/16 v22, 0x1

    #@bc
    move/from16 v0, v22

    #@be
    move-object/from16 v1, p0

    #@c0
    iput-boolean v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    #@c2
    .line 4749
    const/16 v22, 0x1

    #@c4
    move/from16 v0, v22

    #@c6
    move-object/from16 v1, p0

    #@c8
    iput-boolean v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    #@ca
    goto/16 :goto_0

    #@cc
    .line 4737
    .restart local v5    # "deltaX":F
    .restart local v6    # "deltaY":F
    .restart local v7    # "distanceSquared":F
    .restart local v8    # "doubleTapSlop":I
    .restart local v20    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_3
    const/16 v16, 0x0

    #@ce
    .restart local v16    # "stayedInArea":Z
    goto :goto_1

    #@cf
    .line 4757
    .end local v5    # "deltaX":F
    .end local v6    # "deltaY":F
    .end local v7    # "distanceSquared":F
    .end local v8    # "doubleTapSlop":I
    .end local v16    # "stayedInArea":Z
    .end local v20    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :pswitch_2
    move-object/from16 v0, p0

    #@d1
    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@d3
    move-object/from16 v22, v0

    #@d5
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@d8
    move-result-object v22

    #@d9
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@dc
    move-result-object v22

    #@dd
    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@e0
    move-result-object v22

    #@e1
    .line 4758
    const-string/jumbo v23, "android.hardware.touchscreen.multitouch.distinct"

    #@e4
    .line 4757
    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@e7
    move-result v22

    #@e8
    if-eqz v22, :cond_0

    #@ea
    .line 4759
    invoke-direct/range {p0 .. p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V

    #@ed
    goto/16 :goto_0

    #@ef
    .line 4765
    :pswitch_3
    move-object/from16 v0, p0

    #@f1
    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@f3
    move-object/from16 v22, v0

    #@f5
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@f8
    move-result-object v22

    #@f9
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@fc
    move-result-object v22

    #@fd
    .line 4764
    invoke-static/range {v22 .. v22}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@100
    move-result-object v19

    #@101
    .line 4766
    .local v19, "viewConfig":Landroid/view/ViewConfiguration;
    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@104
    move-result v18

    #@105
    .line 4768
    .local v18, "touchSlop":I
    move-object/from16 v0, p0

    #@107
    iget-boolean v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    #@109
    move/from16 v22, v0

    #@10b
    if-nez v22, :cond_4

    #@10d
    move-object/from16 v0, p0

    #@10f
    iget-boolean v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    #@111
    move/from16 v22, v0

    #@113
    if-eqz v22, :cond_6

    #@115
    .line 4769
    :cond_4
    move-object/from16 v0, p0

    #@117
    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionX:F

    #@119
    move/from16 v22, v0

    #@11b
    sub-float v5, v11, v22

    #@11d
    .line 4770
    .restart local v5    # "deltaX":F
    move-object/from16 v0, p0

    #@11f
    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionY:F

    #@121
    move/from16 v22, v0

    #@123
    sub-float v6, v12, v22

    #@125
    .line 4771
    .restart local v6    # "deltaY":F
    mul-float v22, v5, v5

    #@127
    mul-float v23, v6, v6

    #@129
    add-float v7, v22, v23

    #@12b
    .line 4773
    .restart local v7    # "distanceSquared":F
    move-object/from16 v0, p0

    #@12d
    iget-boolean v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    #@12f
    move/from16 v22, v0

    #@131
    if-eqz v22, :cond_5

    #@133
    .line 4774
    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewConfiguration;->getScaledDoubleTapTouchSlop()I

    #@136
    move-result v9

    #@137
    .line 4776
    .local v9, "doubleTapTouchSlop":I
    mul-int v22, v9, v9

    #@139
    move/from16 v0, v22

    #@13b
    int-to-float v0, v0

    #@13c
    move/from16 v22, v0

    #@13e
    cmpg-float v22, v7, v22

    #@140
    if-gtz v22, :cond_9

    #@142
    const/16 v22, 0x1

    #@144
    .line 4775
    :goto_2
    move/from16 v0, v22

    #@146
    move-object/from16 v1, p0

    #@148
    iput-boolean v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    #@14a
    .line 4778
    .end local v9    # "doubleTapTouchSlop":I
    :cond_5
    move-object/from16 v0, p0

    #@14c
    iget-boolean v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    #@14e
    move/from16 v22, v0

    #@150
    if-eqz v22, :cond_6

    #@152
    .line 4781
    mul-int v22, v18, v18

    #@154
    move/from16 v0, v22

    #@156
    int-to-float v0, v0

    #@157
    move/from16 v22, v0

    #@159
    cmpg-float v22, v7, v22

    #@15b
    if-gtz v22, :cond_a

    #@15d
    const/16 v22, 0x1

    #@15f
    .line 4780
    :goto_3
    move/from16 v0, v22

    #@161
    move-object/from16 v1, p0

    #@163
    iput-boolean v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    #@165
    .line 4785
    .end local v5    # "deltaX":F
    .end local v6    # "deltaY":F
    .end local v7    # "distanceSquared":F
    :cond_6
    move-object/from16 v0, p0

    #@167
    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    #@169
    move-object/from16 v22, v0

    #@16b
    if-eqz v22, :cond_7

    #@16d
    move-object/from16 v0, p0

    #@16f
    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    #@171
    move-object/from16 v22, v0

    #@173
    invoke-virtual/range {v22 .. v22}, Landroid/widget/Editor$SelectionStartHandleView;->isShowing()Z

    #@176
    move-result v22

    #@177
    if-nez v22, :cond_0

    #@179
    .line 4790
    :cond_7
    move-object/from16 v0, p0

    #@17b
    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    #@17d
    move/from16 v22, v0

    #@17f
    const/16 v23, -0x1

    #@181
    move/from16 v0, v22

    #@183
    move/from16 v1, v23

    #@185
    if-eq v0, v1, :cond_0

    #@187
    move-object/from16 v0, p0

    #@189
    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@18b
    move-object/from16 v22, v0

    #@18d
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@190
    move-result-object v22

    #@191
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@194
    move-result-object v22

    #@195
    if-eqz v22, :cond_0

    #@197
    .line 4791
    move-object/from16 v0, p0

    #@199
    iget-boolean v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    #@19b
    move/from16 v22, v0

    #@19d
    if-nez v22, :cond_0

    #@19f
    .line 4793
    move/from16 v21, v12

    #@1a1
    .line 4794
    .local v21, "y":F
    move-object/from16 v0, p0

    #@1a3
    iget-boolean v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    #@1a5
    move/from16 v22, v0

    #@1a7
    if-eqz v22, :cond_8

    #@1a9
    .line 4799
    move-object/from16 v0, p0

    #@1ab
    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    #@1ad
    move-object/from16 v22, v0

    #@1af
    if-eqz v22, :cond_b

    #@1b1
    .line 4800
    move-object/from16 v0, p0

    #@1b3
    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    #@1b5
    move-object/from16 v22, v0

    #@1b7
    invoke-virtual/range {v22 .. v22}, Landroid/widget/Editor$SelectionStartHandleView;->getIdealVerticalOffset()F

    #@1ba
    move-result v13

    #@1bb
    .line 4802
    .local v13, "fingerOffset":F
    :goto_4
    sub-float v21, v12, v13

    #@1bd
    .line 4805
    .end local v13    # "fingerOffset":F
    :cond_8
    move-object/from16 v0, p0

    #@1bf
    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@1c1
    move-object/from16 v22, v0

    #@1c3
    .line 4806
    move-object/from16 v0, p0

    #@1c5
    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@1c7
    move-object/from16 v23, v0

    #@1c9
    invoke-static/range {v23 .. v23}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@1cc
    move-result-object v23

    #@1cd
    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@1d0
    move-result-object v23

    #@1d1
    .line 4807
    move-object/from16 v0, p0

    #@1d3
    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    #@1d5
    move/from16 v24, v0

    #@1d7
    .line 4805
    move-object/from16 v0, v22

    #@1d9
    move-object/from16 v1, v23

    #@1db
    move/from16 v2, v24

    #@1dd
    move/from16 v3, v21

    #@1df
    invoke-static {v0, v1, v2, v3}, Landroid/widget/Editor;->-wrap11(Landroid/widget/Editor;Landroid/text/Layout;IF)I

    #@1e2
    move-result v4

    #@1e3
    .line 4808
    .local v4, "currLine":I
    move-object/from16 v0, p0

    #@1e5
    iget-boolean v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    #@1e7
    move/from16 v22, v0

    #@1e9
    if-nez v22, :cond_c

    #@1eb
    move-object/from16 v0, p0

    #@1ed
    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    #@1ef
    move/from16 v22, v0

    #@1f1
    move/from16 v0, v22

    #@1f3
    if-eq v4, v0, :cond_c

    #@1f5
    .line 4813
    const/16 v22, 0x1

    #@1f7
    move/from16 v0, v22

    #@1f9
    move-object/from16 v1, p0

    #@1fb
    iput-boolean v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    #@1fd
    goto/16 :goto_0

    #@1ff
    .line 4776
    .end local v4    # "currLine":I
    .end local v21    # "y":F
    .restart local v5    # "deltaX":F
    .restart local v6    # "deltaY":F
    .restart local v7    # "distanceSquared":F
    .restart local v9    # "doubleTapTouchSlop":I
    :cond_9
    const/16 v22, 0x0

    #@201
    goto/16 :goto_2

    #@203
    .line 4781
    .end local v9    # "doubleTapTouchSlop":I
    :cond_a
    const/16 v22, 0x0

    #@205
    goto/16 :goto_3

    #@207
    .line 4801
    .end local v5    # "deltaX":F
    .end local v6    # "deltaY":F
    .end local v7    # "distanceSquared":F
    .restart local v21    # "y":F
    :cond_b
    move/from16 v0, v18

    #@209
    int-to-float v13, v0

    #@20a
    .restart local v13    # "fingerOffset":F
    goto :goto_4

    #@20b
    .line 4818
    .end local v13    # "fingerOffset":F
    .restart local v4    # "currLine":I
    :cond_c
    move-object/from16 v0, p0

    #@20d
    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@20f
    move-object/from16 v22, v0

    #@211
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@214
    move-result-object v22

    #@215
    move-object/from16 v0, v22

    #@217
    invoke-virtual {v0, v4, v11}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    #@21a
    move-result v14

    #@21b
    .line 4820
    .local v14, "offset":I
    move-object/from16 v0, p0

    #@21d
    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    #@21f
    move/from16 v22, v0

    #@221
    move/from16 v0, v22

    #@223
    if-ge v0, v14, :cond_d

    #@225
    .line 4822
    move-object/from16 v0, p0

    #@227
    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@229
    move-object/from16 v22, v0

    #@22b
    move-object/from16 v0, v22

    #@22d
    invoke-static {v0, v14}, Landroid/widget/Editor;->-wrap13(Landroid/widget/Editor;I)I

    #@230
    move-result v14

    #@231
    .line 4823
    move-object/from16 v0, p0

    #@233
    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@235
    move-object/from16 v22, v0

    #@237
    move-object/from16 v0, p0

    #@239
    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    #@23b
    move/from16 v23, v0

    #@23d
    invoke-static/range {v22 .. v23}, Landroid/widget/Editor;->-wrap14(Landroid/widget/Editor;I)I

    #@240
    move-result v15

    #@241
    .line 4829
    .local v15, "startOffset":I
    :goto_5
    move-object/from16 v0, p0

    #@243
    iput v4, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    #@245
    .line 4830
    move-object/from16 v0, p0

    #@247
    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@249
    move-object/from16 v22, v0

    #@24b
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@24e
    move-result-object v22

    #@24f
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@252
    move-result-object v22

    #@253
    check-cast v22, Landroid/text/Spannable;

    #@255
    move-object/from16 v0, v22

    #@257
    invoke-static {v0, v15, v14}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@25a
    goto/16 :goto_0

    #@25c
    .line 4826
    .end local v15    # "startOffset":I
    :cond_d
    move-object/from16 v0, p0

    #@25e
    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@260
    move-object/from16 v22, v0

    #@262
    move-object/from16 v0, v22

    #@264
    invoke-static {v0, v14}, Landroid/widget/Editor;->-wrap14(Landroid/widget/Editor;I)I

    #@267
    move-result v14

    #@268
    .line 4827
    move-object/from16 v0, p0

    #@26a
    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@26c
    move-object/from16 v22, v0

    #@26e
    move-object/from16 v0, p0

    #@270
    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    #@272
    move/from16 v23, v0

    #@274
    invoke-static/range {v22 .. v23}, Landroid/widget/Editor;->-wrap13(Landroid/widget/Editor;I)I

    #@277
    move-result v15

    #@278
    .restart local v15    # "startOffset":I
    goto :goto_5

    #@279
    .line 4837
    .end local v4    # "currLine":I
    .end local v14    # "offset":I
    .end local v15    # "startOffset":I
    .end local v18    # "touchSlop":I
    .end local v19    # "viewConfig":Landroid/view/ViewConfiguration;
    .end local v21    # "y":F
    :pswitch_4
    move-object/from16 v0, p0

    #@27b
    iget-boolean v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorActive:Z

    #@27d
    move/from16 v22, v0

    #@27f
    if-eqz v22, :cond_0

    #@281
    .line 4839
    move-object/from16 v0, p0

    #@283
    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@285
    move-object/from16 v22, v0

    #@287
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@28a
    move-result-object v22

    #@28b
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    #@28e
    move-result-object v22

    #@28f
    const/16 v23, 0x0

    #@291
    invoke-interface/range {v22 .. v23}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@294
    .line 4841
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    #@297
    .line 4842
    move-object/from16 v0, p0

    #@299
    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@29b
    move-object/from16 v22, v0

    #@29d
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@2a0
    move-result-object v22

    #@2a1
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getSelectionStart()I

    #@2a4
    move-result v15

    #@2a5
    .line 4843
    .restart local v15    # "startOffset":I
    move-object/from16 v0, p0

    #@2a7
    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@2a9
    move-object/from16 v22, v0

    #@2ab
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@2ae
    move-result-object v22

    #@2af
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getSelectionEnd()I

    #@2b2
    move-result v10

    #@2b3
    .line 4848
    .local v10, "endOffset":I
    if-ge v10, v15, :cond_e

    #@2b5
    .line 4849
    move/from16 v17, v10

    #@2b7
    .line 4850
    .local v17, "tmp":I
    move v10, v15

    #@2b8
    .line 4851
    move/from16 v15, v17

    #@2ba
    .line 4854
    move-object/from16 v0, p0

    #@2bc
    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@2be
    move-object/from16 v22, v0

    #@2c0
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@2c3
    move-result-object v22

    #@2c4
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@2c7
    move-result-object v22

    #@2c8
    check-cast v22, Landroid/text/Spannable;

    #@2ca
    move-object/from16 v0, v22

    #@2cc
    invoke-static {v0, v15, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@2cf
    .line 4859
    .end local v17    # "tmp":I
    :cond_e
    move-object/from16 v0, p0

    #@2d1
    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    #@2d3
    move-object/from16 v22, v0

    #@2d5
    move-object/from16 v0, v22

    #@2d7
    invoke-virtual {v0, v15}, Landroid/widget/Editor$SelectionStartHandleView;->showAtLocation(I)V

    #@2da
    .line 4860
    move-object/from16 v0, p0

    #@2dc
    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    #@2de
    move-object/from16 v22, v0

    #@2e0
    move-object/from16 v0, v22

    #@2e2
    invoke-virtual {v0, v10}, Landroid/widget/Editor$SelectionEndHandleView;->showAtLocation(I)V

    #@2e5
    .line 4863
    move-object/from16 v0, p0

    #@2e7
    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@2e9
    move-object/from16 v22, v0

    #@2eb
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@2ee
    move-result-object v22

    #@2ef
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->isInExtractedMode()Z

    #@2f2
    move-result v22

    #@2f3
    if-nez v22, :cond_f

    #@2f5
    .line 4864
    move-object/from16 v0, p0

    #@2f7
    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@2f9
    move-object/from16 v22, v0

    #@2fb
    invoke-virtual/range {v22 .. v22}, Landroid/widget/Editor;->startSelectionActionMode()Z

    #@2fe
    .line 4866
    :cond_f
    const/16 v22, 0x0

    #@300
    move/from16 v0, v22

    #@302
    move-object/from16 v1, p0

    #@304
    iput-boolean v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorActive:Z

    #@306
    .line 4867
    const/16 v22, -0x1

    #@308
    move/from16 v0, v22

    #@30a
    move-object/from16 v1, p0

    #@30c
    iput v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    #@30e
    .line 4868
    const/16 v22, 0x0

    #@310
    move/from16 v0, v22

    #@312
    move-object/from16 v1, p0

    #@314
    iput-boolean v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    #@316
    goto/16 :goto_0

    #@318
    .line 4716
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 0
    .param p1, "isInTouchMode"    # Z

    #@0
    .prologue
    .line 4916
    if-nez p1, :cond_0

    #@2
    .line 4917
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    #@5
    .line 4915
    :cond_0
    return-void
.end method

.method public resetTouchOffsets()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, -0x1

    #@2
    .line 4895
    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    #@4
    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    #@6
    .line 4896
    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    #@8
    .line 4897
    iput-boolean v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorActive:Z

    #@a
    .line 4898
    iput-boolean v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    #@c
    .line 4894
    return-void
.end method

.method public show()V
    .locals 1

    #@0
    .prologue
    .line 4655
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@2
    invoke-static {v0}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 4656
    return-void

    #@d
    .line 4658
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initDrawables()V

    #@10
    .line 4659
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initHandles()V

    #@13
    .line 4660
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@15
    invoke-virtual {v0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    #@18
    .line 4654
    return-void
.end method
