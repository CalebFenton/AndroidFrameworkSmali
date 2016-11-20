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


# static fields
.field private static final DRAG_ACCELERATOR_MODE_CHARACTER:I = 0x1

.field private static final DRAG_ACCELERATOR_MODE_INACTIVE:I = 0x0

.field private static final DRAG_ACCELERATOR_MODE_PARAGRAPH:I = 0x3

.field private static final DRAG_ACCELERATOR_MODE_WORD:I = 0x2


# instance fields
.field private mDownPositionX:F

.field private mDownPositionY:F

.field private mDragAcceleratorMode:I

.field private mEndHandle:Landroid/widget/Editor$SelectionHandleView;

.field private mGestureStayedInTapRegion:Z

.field private mHaventMovedEnoughToStartDrag:Z

.field private mLineSelectionIsOn:I

.field private mMaxTouchOffset:I

.field private mMinTouchOffset:I

.field private mStartHandle:Landroid/widget/Editor$SelectionHandleView;

.field private mStartOffset:I

.field private mSwitchedLines:Z

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method static synthetic -get0(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionHandleView;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

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
    .locals 2
    .param p1, "this$0"    # Landroid/widget/Editor;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, -0x1

    #@2
    .line 5134
    iput-object p1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 5115
    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    #@9
    .line 5119
    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    #@b
    .line 5121
    iput-boolean v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    #@d
    .line 5124
    iput v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorMode:I

    #@f
    .line 5135
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    #@12
    .line 5134
    return-void
.end method

.method private initDrawables()V
    .locals 3

    #@0
    .prologue
    .line 5147
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@2
    invoke-static {v0}, Landroid/widget/Editor;->-get3(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 5148
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@a
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@c
    invoke-static {v1}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@13
    move-result-object v1

    #@14
    .line 5149
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@16
    invoke-static {v2}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@19
    move-result-object v2

    #@1a
    iget v2, v2, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    #@1c
    .line 5148
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@1f
    move-result-object v1

    #@20
    invoke-static {v0, v1}, Landroid/widget/Editor;->-set3(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@23
    .line 5151
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@25
    invoke-static {v0}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    #@28
    move-result-object v0

    #@29
    if-nez v0, :cond_1

    #@2b
    .line 5152
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@2d
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@2f
    invoke-static {v1}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@36
    move-result-object v1

    #@37
    .line 5153
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@39
    invoke-static {v2}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@3c
    move-result-object v2

    #@3d
    iget v2, v2, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    #@3f
    .line 5152
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@42
    move-result-object v1

    #@43
    invoke-static {v0, v1}, Landroid/widget/Editor;->-set4(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@46
    .line 5146
    :cond_1
    return-void
.end method

.method private initHandles()V
    .locals 6

    #@0
    .prologue
    .line 5159
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5160
    new-instance v0, Landroid/widget/Editor$SelectionHandleView;

    #@6
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@8
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@a
    invoke-static {v2}, Landroid/widget/Editor;->-get3(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object v2

    #@e
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@10
    invoke-static {v3}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    #@13
    move-result-object v3

    #@14
    .line 5161
    const v4, 0x1020058

    #@17
    .line 5162
    const/4 v5, 0x0

    #@18
    .line 5160
    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor$SelectionHandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    #@1b
    iput-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    #@1d
    .line 5164
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    #@1f
    if-nez v0, :cond_1

    #@21
    .line 5165
    new-instance v0, Landroid/widget/Editor$SelectionHandleView;

    #@23
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@25
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@27
    invoke-static {v2}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    #@2a
    move-result-object v2

    #@2b
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@2d
    invoke-static {v3}, Landroid/widget/Editor;->-get3(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    #@30
    move-result-object v3

    #@31
    .line 5166
    const v4, 0x1020059

    #@34
    .line 5167
    const/4 v5, 0x1

    #@35
    .line 5165
    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor$SelectionHandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    #@38
    iput-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    #@3a
    .line 5170
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    #@3c
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->show()V

    #@3f
    .line 5171
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    #@41
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->show()V

    #@44
    .line 5173
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@46
    invoke-virtual {v0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    #@49
    .line 5157
    return-void
.end method

.method private resetDragAcceleratorState()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 5456
    const/4 v2, -0x1

    #@2
    iput v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    #@4
    .line 5457
    iput v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorMode:I

    #@6
    .line 5458
    iput-boolean v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    #@8
    .line 5459
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@a
    invoke-static {v2}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    #@11
    move-result v1

    #@12
    .line 5460
    .local v1, "selectionStart":I
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@14
    invoke-static {v2}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    #@1b
    move-result v0

    #@1c
    .line 5461
    .local v0, "selectionEnd":I
    if-le v1, v0, :cond_0

    #@1e
    .line 5462
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@20
    invoke-static {v2}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Landroid/text/Spannable;

    #@2a
    invoke-static {v2, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@2d
    .line 5455
    :cond_0
    return-void
.end method

.method private selectCurrentParagraphAndStartDrag()Z
    .locals 2

    #@0
    .prologue
    .line 5347
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@2
    invoke-static {v0}, Landroid/widget/Editor;->-get0(Landroid/widget/Editor;)Ljava/lang/Runnable;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 5348
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@a
    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@10
    invoke-static {v1}, Landroid/widget/Editor;->-get0(Landroid/widget/Editor;)Ljava/lang/Runnable;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@17
    .line 5350
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@19
    invoke-virtual {v0}, Landroid/widget/Editor;->stopTextActionMode()V

    #@1c
    .line 5351
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@1e
    invoke-static {v0}, Landroid/widget/Editor;->-wrap8(Landroid/widget/Editor;)Z

    #@21
    move-result v0

    #@22
    if-nez v0, :cond_1

    #@24
    .line 5352
    const/4 v0, 0x0

    #@25
    return v0

    #@26
    .line 5354
    :cond_1
    const/4 v0, 0x3

    #@27
    invoke-virtual {p0, v0}, Landroid/widget/Editor$SelectionModifierCursorController;->enterDrag(I)V

    #@2a
    .line 5355
    const/4 v0, 0x1

    #@2b
    return v0
.end method

.method private updateCharacterBasedSelection(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 5359
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@2
    invoke-static {v1}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@9
    move-result v2

    #@a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@d
    move-result v3

    #@e
    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    #@11
    move-result v0

    #@12
    .line 5360
    .local v0, "offset":I
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@14
    invoke-static {v1}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Landroid/text/Spannable;

    #@1e
    iget v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    #@20
    invoke-static {v1, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@23
    .line 5358
    return-void
.end method

.method private updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 5434
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@3
    move-result v2

    #@4
    .line 5435
    .local v2, "pointerCount":I
    const/4 v0, 0x0

    #@5
    .local v0, "index":I
    :goto_0
    if-ge v0, v2, :cond_2

    #@7
    .line 5436
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@9
    invoke-static {v3}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

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
    .line 5437
    .local v1, "offset":I
    iget v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    #@1b
    if-ge v1, v3, :cond_0

    #@1d
    iput v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    #@1f
    .line 5438
    :cond_0
    iget v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    #@21
    if-le v1, v3, :cond_1

    #@23
    iput v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    #@25
    .line 5435
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_0

    #@28
    .line 5433
    .end local v1    # "offset":I
    :cond_2
    return-void
.end method

.method private updateParagraphBasedSelection(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 5420
    iget-object v7, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@2
    invoke-static {v7}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@5
    move-result-object v7

    #@6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@9
    move-result v8

    #@a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@d
    move-result v9

    #@e
    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    #@11
    move-result v1

    #@12
    .line 5422
    .local v1, "offset":I
    iget v7, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    #@14
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    #@17
    move-result v6

    #@18
    .line 5423
    .local v6, "start":I
    iget v7, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    #@1a
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    #@1d
    move-result v0

    #@1e
    .line 5424
    .local v0, "end":I
    iget-object v7, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@20
    invoke-static {v7, v6, v0}, Landroid/widget/Editor;->-wrap17(Landroid/widget/Editor;II)J

    #@23
    move-result-wide v2

    #@24
    .line 5425
    .local v2, "paragraphsRange":J
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    #@27
    move-result v5

    #@28
    .line 5426
    .local v5, "selectionStart":I
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    #@2b
    move-result v4

    #@2c
    .line 5427
    .local v4, "selectionEnd":I
    iget-object v7, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@2e
    invoke-static {v7}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@31
    move-result-object v7

    #@32
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@35
    move-result-object v7

    #@36
    check-cast v7, Landroid/text/Spannable;

    #@38
    invoke-static {v7, v5, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@3b
    .line 5419
    return-void
.end method

.method private updateSelection(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 5326
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@2
    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 5327
    iget v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorMode:I

    #@e
    packed-switch v0, :pswitch_data_0

    #@11
    .line 5325
    :cond_0
    :goto_0
    return-void

    #@12
    .line 5329
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateCharacterBasedSelection(Landroid/view/MotionEvent;)V

    #@15
    goto :goto_0

    #@16
    .line 5332
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateWordBasedSelection(Landroid/view/MotionEvent;)V

    #@19
    goto :goto_0

    #@1a
    .line 5335
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateParagraphBasedSelection(Landroid/view/MotionEvent;)V

    #@1d
    goto :goto_0

    #@1e
    .line 5327
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateWordBasedSelection(Landroid/view/MotionEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 5364
    iget-boolean v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    #@2
    if-eqz v10, :cond_0

    #@4
    .line 5365
    return-void

    #@5
    .line 5367
    :cond_0
    const/16 v10, 0x2002

    #@7
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->isFromSource(I)Z

    #@a
    move-result v4

    #@b
    .line 5369
    .local v4, "isMouse":Z
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@d
    invoke-static {v10}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@10
    move-result-object v10

    #@11
    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@14
    move-result-object v10

    #@15
    .line 5368
    invoke-static {v10}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@18
    move-result-object v8

    #@19
    .line 5370
    .local v8, "viewConfig":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@1c
    move-result v1

    #@1d
    .line 5371
    .local v1, "eventX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@20
    move-result v2

    #@21
    .line 5373
    .local v2, "eventY":F
    if-eqz v4, :cond_2

    #@23
    .line 5375
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@25
    invoke-static {v10}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@28
    move-result-object v10

    #@29
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    #@2c
    move-result v0

    #@2d
    .line 5403
    .local v0, "currLine":I
    :cond_1
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@2f
    invoke-static {v10}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@32
    move-result-object v10

    #@33
    invoke-virtual {v10, v0, v1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    #@36
    move-result v5

    #@37
    .line 5405
    .local v5, "offset":I
    iget v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    #@39
    if-ge v10, v5, :cond_5

    #@3b
    .line 5407
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@3d
    invoke-static {v10, v5}, Landroid/widget/Editor;->-wrap15(Landroid/widget/Editor;I)I

    #@40
    move-result v5

    #@41
    .line 5408
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@43
    iget v11, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    #@45
    invoke-static {v10, v11}, Landroid/widget/Editor;->-wrap16(Landroid/widget/Editor;I)I

    #@48
    move-result v6

    #@49
    .line 5414
    .local v6, "startOffset":I
    :goto_0
    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    #@4b
    .line 5415
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@4d
    invoke-static {v10}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@50
    move-result-object v10

    #@51
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@54
    move-result-object v10

    #@55
    check-cast v10, Landroid/text/Spannable;

    #@57
    invoke-static {v10, v6, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@5a
    .line 5363
    return-void

    #@5b
    .line 5377
    .end local v0    # "currLine":I
    .end local v5    # "offset":I
    .end local v6    # "startOffset":I
    :cond_2
    move v9, v2

    #@5c
    .line 5378
    .local v9, "y":F
    iget-boolean v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    #@5e
    if-eqz v10, :cond_3

    #@60
    .line 5383
    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@63
    move-result v7

    #@64
    .line 5384
    .local v7, "touchSlop":I
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    #@66
    if-eqz v10, :cond_4

    #@68
    .line 5385
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    #@6a
    invoke-virtual {v10}, Landroid/widget/Editor$SelectionHandleView;->getIdealVerticalOffset()F

    #@6d
    move-result v3

    #@6e
    .line 5387
    .local v3, "fingerOffset":F
    :goto_1
    sub-float v9, v2, v3

    #@70
    .line 5390
    .end local v3    # "fingerOffset":F
    .end local v7    # "touchSlop":I
    :cond_3
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@72
    iget-object v11, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@74
    invoke-static {v11}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@77
    move-result-object v11

    #@78
    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@7b
    move-result-object v11

    #@7c
    iget v12, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    #@7e
    invoke-static {v10, v11, v12, v9}, Landroid/widget/Editor;->-wrap13(Landroid/widget/Editor;Landroid/text/Layout;IF)I

    #@81
    move-result v0

    #@82
    .line 5392
    .restart local v0    # "currLine":I
    iget-boolean v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    #@84
    if-nez v10, :cond_1

    #@86
    iget v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    #@88
    if-eq v0, v10, :cond_1

    #@8a
    .line 5397
    const/4 v10, 0x1

    #@8b
    iput-boolean v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    #@8d
    .line 5398
    return-void

    #@8e
    .line 5386
    .end local v0    # "currLine":I
    .restart local v7    # "touchSlop":I
    :cond_4
    int-to-float v3, v7

    #@8f
    goto :goto_1

    #@90
    .line 5411
    .end local v7    # "touchSlop":I
    .end local v9    # "y":F
    .restart local v0    # "currLine":I
    .restart local v5    # "offset":I
    :cond_5
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@92
    invoke-static {v10, v5}, Landroid/widget/Editor;->-wrap16(Landroid/widget/Editor;I)I

    #@95
    move-result v5

    #@96
    .line 5412
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@98
    iget v11, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    #@9a
    invoke-static {v10, v11}, Landroid/widget/Editor;->-wrap15(Landroid/widget/Editor;I)I

    #@9d
    move-result v6

    #@9e
    .restart local v6    # "startOffset":I
    goto :goto_0
.end method


# virtual methods
.method public enterDrag(I)V
    .locals 3
    .param p1, "dragAcceleratorMode"    # I

    #@0
    .prologue
    .line 5183
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    #@3
    .line 5184
    iput p1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorMode:I

    #@5
    .line 5186
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@7
    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@a
    move-result-object v0

    #@b
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@d
    iget v1, v1, Landroid/widget/Editor;->mLastDownPositionX:F

    #@f
    .line 5187
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@11
    iget v2, v2, Landroid/widget/Editor;->mLastDownPositionY:F

    #@13
    .line 5186
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    #@16
    move-result v0

    #@17
    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    #@19
    .line 5188
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@1b
    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@1e
    move-result-object v0

    #@1f
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@21
    iget v1, v1, Landroid/widget/Editor;->mLastDownPositionY:F

    #@23
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    #@26
    move-result v0

    #@27
    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    #@29
    .line 5190
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    #@2c
    .line 5195
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@2e
    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    #@35
    move-result-object v0

    #@36
    const/4 v1, 0x1

    #@37
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@3a
    .line 5196
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@3c
    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0}, Landroid/widget/TextView;->cancelLongPress()V

    #@43
    .line 5181
    return-void
.end method

.method public getMaxTouchOffset()I
    .locals 1

    #@0
    .prologue
    .line 5447
    iget v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    #@2
    return v0
.end method

.method public getMinTouchOffset()I
    .locals 1

    #@0
    .prologue
    .line 5443
    iget v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    #@2
    return v0
.end method

.method public hide()V
    .locals 1

    #@0
    .prologue
    .line 5177
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    #@6
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->hide()V

    #@9
    .line 5178
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    #@b
    if-eqz v0, :cond_1

    #@d
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    #@f
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->hide()V

    #@12
    .line 5176
    :cond_1
    return-void
.end method

.method public invalidateHandles()V
    .locals 1

    #@0
    .prologue
    .line 5508
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5509
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    #@6
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->invalidate()V

    #@9
    .line 5511
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 5512
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    #@f
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->invalidate()V

    #@12
    .line 5507
    :cond_1
    return-void
.end method

.method public isActive()Z
    .locals 1

    #@0
    .prologue
    .line 5504
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    #@6
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->isShowing()Z

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

.method public isCursorBeingModified()Z
    .locals 1

    #@0
    .prologue
    .line 5476
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->isDragAcceleratorActive()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->isSelectionStartDragged()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 5477
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    #@e
    if-eqz v0, :cond_1

    #@10
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    #@12
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->isDragging()Z

    #@15
    move-result v0

    #@16
    .line 5476
    :goto_0
    return v0

    #@17
    :cond_0
    const/4 v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 5477
    :cond_1
    const/4 v0, 0x0

    #@1a
    goto :goto_0
.end method

.method public isDragAcceleratorActive()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 5484
    iget v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorMode:I

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public isSelectionStartDragged()Z
    .locals 1

    #@0
    .prologue
    .line 5471
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    #@6
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->isDragging()Z

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
    .line 5495
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@2
    invoke-static {v1}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@9
    move-result-object v0

    #@a
    .line 5496
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    #@d
    .line 5498
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    #@f
    if-eqz v1, :cond_0

    #@11
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    #@13
    invoke-virtual {v1}, Landroid/widget/Editor$SelectionHandleView;->onDetached()V

    #@16
    .line 5499
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    #@18
    if-eqz v1, :cond_1

    #@1a
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    #@1c
    invoke-virtual {v1}, Landroid/widget/Editor$SelectionHandleView;->onDetached()V

    #@1f
    .line 5494
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 5202
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    #@3
    move-result v6

    #@4
    .line 5203
    .local v6, "eventX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    #@7
    move-result v7

    #@8
    .line 5204
    .local v7, "eventY":F
    const/16 v14, 0x2002

    #@a
    move-object/from16 v0, p1

    #@c
    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->isFromSource(I)Z

    #@f
    move-result v8

    #@10
    .line 5205
    .local v8, "isMouse":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@13
    move-result v14

    #@14
    packed-switch v14, :pswitch_data_0

    #@17
    .line 5199
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@18
    .line 5207
    :pswitch_1
    move-object/from16 v0, p0

    #@1a
    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@1c
    invoke-virtual {v14}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    #@1f
    move-result v14

    #@20
    if-eqz v14, :cond_1

    #@22
    .line 5209
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    #@25
    goto :goto_0

    #@26
    .line 5212
    :cond_1
    move-object/from16 v0, p0

    #@28
    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@2a
    invoke-static {v14}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@2d
    move-result-object v14

    #@2e
    invoke-virtual {v14, v6, v7}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    #@31
    move-result v14

    #@32
    move-object/from16 v0, p0

    #@34
    iput v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    #@36
    move-object/from16 v0, p0

    #@38
    iput v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    #@3a
    .line 5216
    move-object/from16 v0, p0

    #@3c
    iget-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    #@3e
    if-eqz v14, :cond_5

    #@40
    .line 5217
    move-object/from16 v0, p0

    #@42
    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@44
    invoke-static {v14}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)I

    #@47
    move-result v14

    #@48
    const/4 v15, 0x2

    #@49
    if-eq v14, v15, :cond_2

    #@4b
    .line 5218
    move-object/from16 v0, p0

    #@4d
    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@4f
    invoke-static {v14}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)I

    #@52
    move-result v14

    #@53
    const/4 v15, 0x3

    #@54
    if-ne v14, v15, :cond_5

    #@56
    .line 5219
    :cond_2
    move-object/from16 v0, p0

    #@58
    iget v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionX:F

    #@5a
    sub-float v1, v6, v14

    #@5c
    .line 5220
    .local v1, "deltaX":F
    move-object/from16 v0, p0

    #@5e
    iget v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionY:F

    #@60
    sub-float v2, v7, v14

    #@62
    .line 5221
    .local v2, "deltaY":F
    mul-float v14, v1, v1

    #@64
    mul-float v15, v2, v2

    #@66
    add-float v3, v14, v15

    #@68
    .line 5224
    .local v3, "distanceSquared":F
    move-object/from16 v0, p0

    #@6a
    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@6c
    invoke-static {v14}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@6f
    move-result-object v14

    #@70
    invoke-virtual {v14}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@73
    move-result-object v14

    #@74
    .line 5223
    invoke-static {v14}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@77
    move-result-object v13

    #@78
    .line 5225
    .local v13, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v13}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    #@7b
    move-result v4

    #@7c
    .line 5227
    .local v4, "doubleTapSlop":I
    mul-int v14, v4, v4

    #@7e
    int-to-float v14, v14

    #@7f
    cmpg-float v14, v3, v14

    #@81
    if-gez v14, :cond_6

    #@83
    const/4 v10, 0x1

    #@84
    .line 5229
    .local v10, "stayedInArea":Z
    :goto_1
    if-eqz v10, :cond_5

    #@86
    if-nez v8, :cond_3

    #@88
    move-object/from16 v0, p0

    #@8a
    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@8c
    invoke-static {v14, v6, v7}, Landroid/widget/Editor;->-wrap5(Landroid/widget/Editor;FF)Z

    #@8f
    move-result v14

    #@90
    if-eqz v14, :cond_5

    #@92
    .line 5230
    :cond_3
    move-object/from16 v0, p0

    #@94
    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@96
    invoke-static {v14}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)I

    #@99
    move-result v14

    #@9a
    const/4 v15, 0x2

    #@9b
    if-ne v14, v15, :cond_7

    #@9d
    .line 5231
    move-object/from16 v0, p0

    #@9f
    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@a1
    invoke-static {v14}, Landroid/widget/Editor;->-wrap9(Landroid/widget/Editor;)Z

    #@a4
    .line 5235
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    #@a6
    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@a8
    const/4 v15, 0x1

    #@a9
    iput-boolean v15, v14, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    #@ab
    .line 5240
    .end local v1    # "deltaX":F
    .end local v2    # "deltaY":F
    .end local v3    # "distanceSquared":F
    .end local v4    # "doubleTapSlop":I
    .end local v10    # "stayedInArea":Z
    .end local v13    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_5
    move-object/from16 v0, p0

    #@ad
    iput v6, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionX:F

    #@af
    .line 5241
    move-object/from16 v0, p0

    #@b1
    iput v7, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionY:F

    #@b3
    .line 5242
    const/4 v14, 0x1

    #@b4
    move-object/from16 v0, p0

    #@b6
    iput-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    #@b8
    .line 5243
    const/4 v14, 0x1

    #@b9
    move-object/from16 v0, p0

    #@bb
    iput-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    #@bd
    goto/16 :goto_0

    #@bf
    .line 5227
    .restart local v1    # "deltaX":F
    .restart local v2    # "deltaY":F
    .restart local v3    # "distanceSquared":F
    .restart local v4    # "doubleTapSlop":I
    .restart local v13    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_6
    const/4 v10, 0x0

    #@c0
    goto :goto_1

    #@c1
    .line 5232
    .restart local v10    # "stayedInArea":Z
    :cond_7
    move-object/from16 v0, p0

    #@c3
    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@c5
    invoke-static {v14}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)I

    #@c8
    move-result v14

    #@c9
    const/4 v15, 0x3

    #@ca
    if-ne v14, v15, :cond_4

    #@cc
    .line 5233
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionModifierCursorController;->selectCurrentParagraphAndStartDrag()Z

    #@cf
    goto :goto_2

    #@d0
    .line 5251
    .end local v1    # "deltaX":F
    .end local v2    # "deltaY":F
    .end local v3    # "distanceSquared":F
    .end local v4    # "doubleTapSlop":I
    .end local v10    # "stayedInArea":Z
    .end local v13    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :pswitch_2
    move-object/from16 v0, p0

    #@d2
    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@d4
    invoke-static {v14}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@d7
    move-result-object v14

    #@d8
    invoke-virtual {v14}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@db
    move-result-object v14

    #@dc
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@df
    move-result-object v14

    #@e0
    .line 5252
    const-string/jumbo v15, "android.hardware.touchscreen.multitouch.distinct"

    #@e3
    .line 5251
    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@e6
    move-result v14

    #@e7
    if-eqz v14, :cond_0

    #@e9
    .line 5253
    invoke-direct/range {p0 .. p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V

    #@ec
    goto/16 :goto_0

    #@ee
    .line 5259
    :pswitch_3
    move-object/from16 v0, p0

    #@f0
    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@f2
    invoke-static {v14}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@f5
    move-result-object v14

    #@f6
    invoke-virtual {v14}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@f9
    move-result-object v14

    #@fa
    .line 5258
    invoke-static {v14}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@fd
    move-result-object v12

    #@fe
    .line 5260
    .local v12, "viewConfig":Landroid/view/ViewConfiguration;
    invoke-virtual {v12}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@101
    move-result v11

    #@102
    .line 5262
    .local v11, "touchSlop":I
    move-object/from16 v0, p0

    #@104
    iget-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    #@106
    if-nez v14, :cond_8

    #@108
    move-object/from16 v0, p0

    #@10a
    iget-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    #@10c
    if-eqz v14, :cond_a

    #@10e
    .line 5263
    :cond_8
    move-object/from16 v0, p0

    #@110
    iget v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionX:F

    #@112
    sub-float v1, v6, v14

    #@114
    .line 5264
    .restart local v1    # "deltaX":F
    move-object/from16 v0, p0

    #@116
    iget v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionY:F

    #@118
    sub-float v2, v7, v14

    #@11a
    .line 5265
    .restart local v2    # "deltaY":F
    mul-float v14, v1, v1

    #@11c
    mul-float v15, v2, v2

    #@11e
    add-float v3, v14, v15

    #@120
    .line 5267
    .restart local v3    # "distanceSquared":F
    move-object/from16 v0, p0

    #@122
    iget-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    #@124
    if-eqz v14, :cond_9

    #@126
    .line 5268
    invoke-virtual {v12}, Landroid/view/ViewConfiguration;->getScaledDoubleTapTouchSlop()I

    #@129
    move-result v5

    #@12a
    .line 5270
    .local v5, "doubleTapTouchSlop":I
    mul-int v14, v5, v5

    #@12c
    int-to-float v14, v14

    #@12d
    cmpg-float v14, v3, v14

    #@12f
    if-gtz v14, :cond_d

    #@131
    const/4 v14, 0x1

    #@132
    .line 5269
    :goto_3
    move-object/from16 v0, p0

    #@134
    iput-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    #@136
    .line 5272
    .end local v5    # "doubleTapTouchSlop":I
    :cond_9
    move-object/from16 v0, p0

    #@138
    iget-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    #@13a
    if-eqz v14, :cond_a

    #@13c
    .line 5275
    mul-int v14, v11, v11

    #@13e
    int-to-float v14, v14

    #@13f
    cmpg-float v14, v3, v14

    #@141
    if-gtz v14, :cond_e

    #@143
    const/4 v14, 0x1

    #@144
    .line 5274
    :goto_4
    move-object/from16 v0, p0

    #@146
    iput-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    #@148
    .line 5279
    .end local v1    # "deltaX":F
    .end local v2    # "deltaY":F
    .end local v3    # "distanceSquared":F
    :cond_a
    if-eqz v8, :cond_b

    #@14a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionModifierCursorController;->isDragAcceleratorActive()Z

    #@14d
    move-result v14

    #@14e
    if-eqz v14, :cond_f

    #@150
    .line 5298
    :cond_b
    :goto_5
    move-object/from16 v0, p0

    #@152
    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    #@154
    if-eqz v14, :cond_c

    #@156
    move-object/from16 v0, p0

    #@158
    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    #@15a
    invoke-virtual {v14}, Landroid/widget/Editor$SelectionHandleView;->isShowing()Z

    #@15d
    move-result v14

    #@15e
    if-nez v14, :cond_0

    #@160
    .line 5303
    :cond_c
    invoke-direct/range {p0 .. p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateSelection(Landroid/view/MotionEvent;)V

    #@163
    goto/16 :goto_0

    #@165
    .line 5270
    .restart local v1    # "deltaX":F
    .restart local v2    # "deltaY":F
    .restart local v3    # "distanceSquared":F
    .restart local v5    # "doubleTapTouchSlop":I
    :cond_d
    const/4 v14, 0x0

    #@166
    goto :goto_3

    #@167
    .line 5275
    .end local v5    # "doubleTapTouchSlop":I
    :cond_e
    const/4 v14, 0x0

    #@168
    goto :goto_4

    #@169
    .line 5280
    .end local v1    # "deltaX":F
    .end local v2    # "deltaY":F
    .end local v3    # "distanceSquared":F
    :cond_f
    move-object/from16 v0, p0

    #@16b
    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@16d
    invoke-static {v14}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@170
    move-result-object v14

    #@171
    invoke-virtual {v14, v6, v7}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    #@174
    move-result v9

    #@175
    .line 5281
    .local v9, "offset":I
    move-object/from16 v0, p0

    #@177
    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@179
    invoke-static {v14}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@17c
    move-result-object v14

    #@17d
    invoke-virtual {v14}, Landroid/widget/TextView;->hasSelection()Z

    #@180
    move-result v14

    #@181
    if-eqz v14, :cond_11

    #@183
    .line 5282
    move-object/from16 v0, p0

    #@185
    iget-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    #@187
    if-eqz v14, :cond_10

    #@189
    move-object/from16 v0, p0

    #@18b
    iget v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    #@18d
    if-eq v14, v9, :cond_11

    #@18f
    .line 5283
    :cond_10
    move-object/from16 v0, p0

    #@191
    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@193
    invoke-static {v14}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@196
    move-result-object v14

    #@197
    invoke-virtual {v14}, Landroid/widget/TextView;->getSelectionStart()I

    #@19a
    move-result v14

    #@19b
    if-lt v9, v14, :cond_11

    #@19d
    .line 5284
    move-object/from16 v0, p0

    #@19f
    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@1a1
    invoke-static {v14}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@1a4
    move-result-object v14

    #@1a5
    invoke-virtual {v14}, Landroid/widget/TextView;->getSelectionEnd()I

    #@1a8
    move-result v14

    #@1a9
    if-gt v9, v14, :cond_11

    #@1ab
    .line 5285
    move-object/from16 v0, p0

    #@1ad
    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@1af
    invoke-static {v14}, Landroid/widget/Editor;->-wrap20(Landroid/widget/Editor;)V

    #@1b2
    goto/16 :goto_0

    #@1b4
    .line 5289
    :cond_11
    move-object/from16 v0, p0

    #@1b6
    iget v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    #@1b8
    if-eq v14, v9, :cond_b

    #@1ba
    .line 5291
    move-object/from16 v0, p0

    #@1bc
    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@1be
    invoke-virtual {v14}, Landroid/widget/Editor;->stopTextActionMode()V

    #@1c1
    .line 5292
    const/4 v14, 0x1

    #@1c2
    move-object/from16 v0, p0

    #@1c4
    invoke-virtual {v0, v14}, Landroid/widget/Editor$SelectionModifierCursorController;->enterDrag(I)V

    #@1c7
    .line 5293
    move-object/from16 v0, p0

    #@1c9
    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@1cb
    const/4 v15, 0x1

    #@1cc
    iput-boolean v15, v14, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    #@1ce
    .line 5294
    const/4 v14, 0x0

    #@1cf
    move-object/from16 v0, p0

    #@1d1
    iput-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    #@1d3
    goto/16 :goto_5

    #@1d5
    .line 5307
    .end local v9    # "offset":I
    .end local v11    # "touchSlop":I
    .end local v12    # "viewConfig":Landroid/view/ViewConfiguration;
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionModifierCursorController;->isDragAcceleratorActive()Z

    #@1d8
    move-result v14

    #@1d9
    if-eqz v14, :cond_0

    #@1db
    .line 5310
    invoke-direct/range {p0 .. p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateSelection(Landroid/view/MotionEvent;)V

    #@1de
    .line 5313
    move-object/from16 v0, p0

    #@1e0
    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@1e2
    invoke-static {v14}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@1e5
    move-result-object v14

    #@1e6
    invoke-virtual {v14}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    #@1e9
    move-result-object v14

    #@1ea
    const/4 v15, 0x0

    #@1eb
    invoke-interface {v14, v15}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@1ee
    .line 5316
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetDragAcceleratorState()V

    #@1f1
    .line 5318
    move-object/from16 v0, p0

    #@1f3
    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@1f5
    invoke-static {v14}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@1f8
    move-result-object v14

    #@1f9
    invoke-virtual {v14}, Landroid/widget/TextView;->hasSelection()Z

    #@1fc
    move-result v14

    #@1fd
    if-eqz v14, :cond_0

    #@1ff
    .line 5319
    move-object/from16 v0, p0

    #@201
    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@203
    invoke-virtual {v14}, Landroid/widget/Editor;->startSelectionActionMode()Z

    #@206
    goto/16 :goto_0

    #@208
    .line 5205
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
    .line 5488
    if-nez p1, :cond_0

    #@2
    .line 5489
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    #@5
    .line 5487
    :cond_0
    return-void
.end method

.method public resetTouchOffsets()V
    .locals 1

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 5451
    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    #@3
    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    #@5
    .line 5452
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetDragAcceleratorState()V

    #@8
    .line 5450
    return-void
.end method

.method public show()V
    .locals 1

    #@0
    .prologue
    .line 5139
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #@2
    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 5140
    return-void

    #@d
    .line 5142
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initDrawables()V

    #@10
    .line 5143
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initHandles()V

    #@13
    .line 5138
    return-void
.end method
