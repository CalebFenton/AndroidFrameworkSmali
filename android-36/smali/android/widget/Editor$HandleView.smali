.class public abstract Landroid/widget/Editor$HandleView;
.super Landroid/view/View;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "HandleView"
.end annotation


# static fields
.field private static final greylist-max-o HISTORY_SIZE:I = 0x5

.field private static final greylist-max-o TOUCH_UP_FILTER_DELAY_AFTER:I = 0x96

.field private static final greylist-max-o TOUCH_UP_FILTER_DELAY_BEFORE:I = 0x15e


# instance fields
.field private final greylist-max-o mContainer:Landroid/widget/PopupWindow;

.field private blacklist mCurrentDragInitialTouchRawX:F

.field protected greylist-max-o mDrawable:Landroid/graphics/drawable/Drawable;

.field protected greylist-max-o mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected greylist-max-o mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field protected greylist-max-o mHorizontalGravity:I

.field protected greylist-max-o mHotspotX:I

.field private final blacklist mIdealFingerToCursorOffset:I

.field private final greylist-max-o mIdealVerticalOffset:F

.field private greylist-max-o mIsDragging:Z

.field private greylist-max-o mLastParentX:I

.field private greylist-max-o mLastParentXOnScreen:I

.field private greylist-max-o mLastParentY:I

.field private greylist-max-o mLastParentYOnScreen:I

.field private greylist-max-o mMinSize:I

.field private greylist-max-o mNumberPreviousOffsets:I

.field private greylist-max-o mPositionHasChanged:Z

.field private greylist-max-o mPositionX:I

.field private greylist-max-o mPositionY:I

.field protected greylist-max-o mPrevLine:I

.field protected greylist-max-o mPreviousLineTouched:I

.field protected greylist-max-o mPreviousOffset:I

.field private greylist-max-o mPreviousOffsetIndex:I

.field private final greylist-max-o mPreviousOffsets:[I

.field private final greylist-max-o mPreviousOffsetsTimes:[J

.field private blacklist mTextViewScaleX:F

.field private blacklist mTextViewScaleY:F

.field private greylist-max-o mTouchOffsetY:F

.field private greylist-max-o mTouchToWindowOffsetX:F

.field private greylist-max-o mTouchToWindowOffsetY:F

.field final synthetic blacklist this$0:Landroid/widget/Editor;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V
    .registers 12
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;
    .param p4, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x10
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 5095
    iput-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 5096
    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 5071
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 5073
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 5077
    iput v0, p0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    .line 5081
    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    .line 5084
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/widget/Editor$HandleView;->mCurrentDragInitialTouchRawX:F

    .line 5174
    const/4 v2, 0x5

    new-array v3, v2, [J

    iput-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    .line 5175
    new-array v2, v2, [I

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    .line 5176
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 5177
    iput v2, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 5097
    invoke-virtual {p0, p4}, Landroid/widget/Editor$HandleView;->setId(I)V

    .line 5098
    new-instance v3, Landroid/widget/PopupWindow;

    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x10102c8

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 5100
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 5101
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 5102
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 5103
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 5104
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 5105
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 5107
    invoke-virtual {p0, p2, p3}, Landroid/widget/Editor$HandleView;->setDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 5109
    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050376

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    .line 5112
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result v2

    .line 5113
    .local v2, "handleHeight":I
    const v3, -0x41666666    # -0.3f

    int-to-float v4, v2

    mul-float/2addr v4, v3

    iput v4, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    .line 5114
    const-string/jumbo v3, "widget__finger_to_cursor_distance"

    invoke-static {v3, v0}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    .line 5117
    .local v0, "distance":I
    if-ltz v0, :cond_b2

    const/16 v3, 0x64

    if-le v0, v3, :cond_91

    goto :goto_b2

    .line 5121
    :cond_91
    int-to-float v3, v0

    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    .line 5123
    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 5121
    invoke-static {v1, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/Editor$HandleView;->mIdealFingerToCursorOffset:I

    .line 5124
    iget v1, p0, Landroid/widget/Editor$HandleView;->mIdealFingerToCursorOffset:I

    int-to-float v1, v1

    iget v3, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    add-float/2addr v1, v3

    iput v1, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    goto :goto_c1

    .line 5118
    :cond_b2
    :goto_b2
    const v1, 0x3f333333    # 0.7f

    int-to-float v3, v2

    mul-float/2addr v3, v1

    iput v3, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    .line 5119
    iget v1, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    iget v3, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/Editor$HandleView;->mIdealFingerToCursorOffset:I

    .line 5126
    :goto_c1
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/widget/Editor-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method private greylist-max-o addPositionToTouchUpFilter(I)V
    .registers 6
    .param p1, "offset"    # I

    .line 5185
    iget v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 5186
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    aput p1, v0, v1

    .line 5187
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 5188
    iget v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 5189
    return-void
.end method

.method private blacklist checkForTransforms()Z
    .registers 8

    .line 5471
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifierIsShowing(Landroid/widget/Editor$MagnifierMotionAnimator;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 5473
    return v1

    .line 5476
    :cond_e
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getRotation()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    const/4 v3, 0x0

    if-nez v0, :cond_99

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getRotationX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_99

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 5477
    invoke-virtual {v0}, Landroid/widget/TextView;->getRotationY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3b

    goto :goto_99

    .line 5480
    :cond_3b
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getScaleX()F

    move-result v0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mTextViewScaleX:F

    .line 5481
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getScaleY()F

    move-result v0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mTextViewScaleY:F

    .line 5483
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 5484
    .local v0, "viewParent":Landroid/view/ViewParent;
    :goto_5d
    if-eqz v0, :cond_98

    .line 5485
    instance-of v4, v0, Landroid/view/View;

    if-eqz v4, :cond_93

    .line 5486
    move-object v4, v0

    check-cast v4, Landroid/view/View;

    .line 5487
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getRotation()F

    move-result v5

    cmpl-float v5, v5, v2

    if-nez v5, :cond_92

    invoke-virtual {v4}, Landroid/view/View;->getRotationX()F

    move-result v5

    cmpl-float v5, v5, v2

    if-nez v5, :cond_92

    .line 5488
    invoke-virtual {v4}, Landroid/view/View;->getRotationY()F

    move-result v5

    cmpl-float v5, v5, v2

    if-eqz v5, :cond_7f

    goto :goto_92

    .line 5491
    :cond_7f
    iget v5, p0, Landroid/widget/Editor$HandleView;->mTextViewScaleX:F

    invoke-virtual {v4}, Landroid/view/View;->getScaleX()F

    move-result v6

    mul-float/2addr v5, v6

    iput v5, p0, Landroid/widget/Editor$HandleView;->mTextViewScaleX:F

    .line 5492
    iget v5, p0, Landroid/widget/Editor$HandleView;->mTextViewScaleY:F

    invoke-virtual {v4}, Landroid/view/View;->getScaleY()F

    move-result v6

    mul-float/2addr v5, v6

    iput v5, p0, Landroid/widget/Editor$HandleView;->mTextViewScaleY:F

    goto :goto_93

    .line 5489
    :cond_92
    :goto_92
    return v3

    .line 5494
    .end local v4    # "view":Landroid/view/View;
    :cond_93
    :goto_93
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_5d

    .line 5496
    :cond_98
    return v1

    .line 5478
    .end local v0    # "viewParent":Landroid/view/ViewParent;
    :cond_99
    :goto_99
    return v3
.end method

.method private greylist-max-o filterOnTouchUp(Z)V
    .registers 12
    .param p1, "fromTouchScreen"    # Z

    .line 5192
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 5193
    .local v0, "now":J
    const/4 v2, 0x0

    .line 5194
    .local v2, "i":I
    iget v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 5195
    .local v3, "index":I
    iget v4, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    const/4 v5, 0x5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 5196
    .local v4, "iMax":I
    :goto_e
    if-ge v2, v4, :cond_25

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v6, v6, v3

    sub-long v6, v0, v6

    const-wide/16 v8, 0x96

    cmp-long v6, v6, v8

    if-gez v6, :cond_25

    .line 5197
    add-int/lit8 v2, v2, 0x1

    .line 5198
    iget v6, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    sub-int/2addr v6, v2

    add-int/2addr v6, v5

    rem-int/lit8 v3, v6, 0x5

    goto :goto_e

    .line 5201
    :cond_25
    if-lez v2, :cond_3d

    if-ge v2, v4, :cond_3d

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v5, v5, v3

    sub-long v5, v0, v5

    const-wide/16 v7, 0x15e

    cmp-long v5, v5, v7

    if-lez v5, :cond_3d

    .line 5203
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    aget v5, v5, v3

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, p1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    .line 5205
    :cond_3d
    return-void
.end method

.method private greylist-max-o getHorizontalOffset()I
    .registers 4

    .line 5425
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result v0

    .line 5426
    .local v0, "width":I
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 5428
    .local v1, "drawWidth":I
    iget v2, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    packed-switch v2, :pswitch_data_1a

    .line 5434
    :pswitch_f
    sub-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 5435
    .local v2, "left":I
    goto :goto_19

    .line 5437
    .end local v2    # "left":I
    :pswitch_14
    sub-int v2, v0, v1

    .restart local v2    # "left":I
    goto :goto_19

    .line 5430
    .end local v2    # "left":I
    :pswitch_17
    const/4 v2, 0x0

    .line 5431
    .restart local v2    # "left":I
    nop

    .line 5440
    :goto_19
    return v2

    :pswitch_data_1a
    .packed-switch 0x3
        :pswitch_17
        :pswitch_f
        :pswitch_14
    .end packed-switch
.end method

.method private greylist-max-o getOtherSelectionHandle()Landroid/widget/Editor$HandleView;
    .registers 3

    .line 5628
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    .line 5629
    .local v0, "controller":Landroid/widget/Editor$SelectionModifierCursorController;
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->isActive()Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_1f

    .line 5632
    :cond_f
    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->-$$Nest$fgetmStartHandle(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionHandleView;

    move-result-object v1

    if-eq v1, p0, :cond_1a

    .line 5633
    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->-$$Nest$fgetmStartHandle(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionHandleView;

    move-result-object v1

    goto :goto_1e

    .line 5634
    :cond_1a
    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->-$$Nest$fgetmEndHandle(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionHandleView;

    move-result-object v1

    .line 5632
    :goto_1e
    return-object v1

    .line 5630
    :cond_1f
    :goto_1f
    const/4 v1, 0x0

    return-object v1
.end method

.method private greylist-max-o handleOverlapsMagnifier(Landroid/widget/Editor$HandleView;Landroid/graphics/Rect;)Z
    .registers 10
    .param p1, "handle"    # Landroid/widget/Editor$HandleView;
    .param p2, "magnifierRect"    # Landroid/graphics/Rect;

    .line 5615
    iget-object v0, p1, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 5616
    .local v0, "window":Landroid/widget/PopupWindow;
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->hasDecorView()Z

    move-result v1

    if-nez v1, :cond_a

    .line 5617
    const/4 v1, 0x0

    return v1

    .line 5619
    :cond_a
    new-instance v1, Landroid/graphics/Rect;

    .line 5620
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 5621
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 5622
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    .line 5623
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5624
    .local v1, "handleRect":Landroid/graphics/Rect;
    invoke-static {v1, p2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    return v2
.end method

.method private greylist-max-o obtainMagnifierShowCoordinates(Landroid/view/MotionEvent;Landroid/graphics/PointF;)Z
    .registers 23
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "showPosInView"    # Landroid/graphics/PointF;

    .line 5508
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->getMagnifierHandleTrigger()I

    move-result v2

    .line 5511
    .local v2, "trigger":I
    packed-switch v2, :pswitch_data_20e

    .line 5525
    const/4 v3, -0x1

    .line 5526
    .local v3, "offset":I
    const/4 v4, -0x1

    .local v4, "otherHandleOffset":I
    goto :goto_44

    .line 5521
    .end local v3    # "offset":I
    .end local v4    # "otherHandleOffset":I
    :pswitch_e
    iget-object v3, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 5522
    .restart local v3    # "offset":I
    iget-object v4, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 5523
    .restart local v4    # "otherHandleOffset":I
    goto :goto_44

    .line 5517
    .end local v3    # "offset":I
    .end local v4    # "otherHandleOffset":I
    :pswitch_23
    iget-object v3, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 5518
    .restart local v3    # "offset":I
    iget-object v4, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 5519
    .restart local v4    # "otherHandleOffset":I
    goto :goto_44

    .line 5513
    .end local v3    # "offset":I
    .end local v4    # "otherHandleOffset":I
    :pswitch_38
    iget-object v3, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 5514
    .restart local v3    # "offset":I
    const/4 v4, -0x1

    .line 5515
    .restart local v4    # "otherHandleOffset":I
    nop

    .line 5530
    :goto_44
    const/4 v5, -0x1

    const/4 v6, 0x0

    if-ne v3, v5, :cond_49

    .line 5531
    return v6

    .line 5534
    :cond_49
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_57

    .line 5535
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iput v7, v0, Landroid/widget/Editor$HandleView;->mCurrentDragInitialTouchRawX:F

    goto :goto_61

    .line 5536
    :cond_57
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    if-ne v7, v8, :cond_61

    .line 5537
    const/high16 v7, -0x40800000    # -1.0f

    iput v7, v0, Landroid/widget/Editor$HandleView;->mCurrentDragInitialTouchRawX:F

    .line 5540
    :cond_61
    :goto_61
    iget-object v7, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    .line 5541
    .local v7, "layout":Landroid/text/Layout;
    invoke-virtual {v0, v7, v3}, Landroid/widget/Editor$HandleView;->getLineForOffset(Landroid/text/Layout;I)I

    move-result v9

    .line 5544
    .local v9, "lineNumber":I
    if-eq v4, v5, :cond_79

    .line 5545
    invoke-virtual {v0, v7, v3}, Landroid/widget/Editor$HandleView;->getLineForOffset(Landroid/text/Layout;I)I

    move-result v5

    if-ne v9, v5, :cond_79

    move v5, v8

    goto :goto_7a

    :cond_79
    move v5, v6

    .line 5546
    .local v5, "sameLineSelection":Z
    :goto_7a
    if-eqz v5, :cond_a8

    if-ge v3, v4, :cond_80

    move v10, v8

    goto :goto_81

    :cond_80
    move v10, v6

    :goto_81
    iget-object v11, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    .line 5548
    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    invoke-virtual {v0, v11, v3}, Landroid/widget/Editor$HandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v11

    iget-object v12, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v12}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    .line 5549
    invoke-virtual {v12}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v12

    invoke-virtual {v0, v12, v4}, Landroid/widget/Editor$HandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_a3

    move v11, v8

    goto :goto_a4

    :cond_a3
    move v11, v6

    :goto_a4
    if-eq v10, v11, :cond_a8

    move v10, v8

    goto :goto_a9

    :cond_a8
    move v10, v6

    .line 5552
    .local v10, "rtl":Z
    :goto_a9
    const/4 v11, 0x2

    new-array v12, v11, [I

    .line 5553
    .local v12, "textViewLocationOnScreen":[I
    iget-object v13, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v13}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 5554
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v13

    aget v14, v12, v6

    int-to-float v14, v14

    sub-float/2addr v13, v14

    .line 5556
    .local v13, "touchXInView":F
    iget-object v14, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-$$Nest$fgetmNewMagnifierEnabled(Landroid/widget/Editor;)Z

    move-result v14

    if-eqz v14, :cond_e1

    .line 5557
    const/4 v11, 0x0

    .line 5558
    .local v11, "leftBound":F
    iget-object v14, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getWidth()I

    move-result v14

    int-to-float v14, v14

    .line 5559
    .local v14, "rightBound":F
    cmpg-float v16, v13, v11

    if-ltz v16, :cond_e0

    cmpl-float v16, v13, v14

    if-lez v16, :cond_da

    goto :goto_e0

    :cond_da
    move/from16 v17, v6

    const/high16 v16, 0x40000000    # 2.0f

    goto/16 :goto_1a0

    .line 5561
    :cond_e0
    :goto_e0
    return v6

    .line 5564
    .end local v11    # "leftBound":F
    .end local v14    # "rightBound":F
    :cond_e1
    iget-object v14, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v14

    const/high16 v16, 0x40000000    # 2.0f

    iget-object v15, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v15}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getScrollX()I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v14, v14

    .line 5565
    .local v14, "leftBound":F
    iget-object v15, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v15}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v15

    move/from16 v17, v6

    iget-object v6, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getScrollX()I

    move-result v6

    sub-int/2addr v15, v6

    int-to-float v6, v15

    .line 5566
    .local v6, "rightBound":F
    if-eqz v5, :cond_12c

    if-ne v2, v11, :cond_117

    move v11, v8

    goto :goto_119

    :cond_117
    move/from16 v11, v17

    :goto_119
    xor-int/2addr v11, v10

    if-eqz v11, :cond_12c

    .line 5568
    iget-object v11, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    invoke-virtual {v0, v11, v4}, Landroid/widget/Editor$HandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v11

    add-float/2addr v14, v11

    goto :goto_13b

    .line 5570
    :cond_12c
    iget-object v11, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    add-float/2addr v14, v11

    .line 5572
    :goto_13b
    if-eqz v5, :cond_156

    if-ne v2, v8, :cond_141

    move v11, v8

    goto :goto_143

    :cond_141
    move/from16 v11, v17

    :goto_143
    xor-int/2addr v11, v10

    if-eqz v11, :cond_156

    .line 5574
    iget-object v11, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    invoke-virtual {v0, v11, v4}, Landroid/widget/Editor$HandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v11

    add-float/2addr v6, v11

    goto :goto_165

    .line 5576
    :cond_156
    iget-object v11, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    add-float/2addr v6, v11

    .line 5578
    :goto_165
    iget v11, v0, Landroid/widget/Editor$HandleView;->mTextViewScaleX:F

    mul-float/2addr v11, v14

    .line 5579
    .end local v14    # "leftBound":F
    .restart local v11    # "leftBound":F
    iget v14, v0, Landroid/widget/Editor$HandleView;->mTextViewScaleX:F

    mul-float/2addr v14, v6

    .line 5580
    .end local v6    # "rightBound":F
    .local v14, "rightBound":F
    iget-object v6, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v6

    invoke-static {v6}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Magnifier;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v15, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v15}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v15

    invoke-static {v15}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v15

    .line 5581
    invoke-virtual {v15}, Landroid/widget/Magnifier;->getZoom()F

    move-result v15

    div-float/2addr v6, v15

    .line 5580
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    .line 5582
    .local v6, "contentWidth":F
    div-float v15, v6, v16

    sub-float v15, v11, v15

    cmpg-float v15, v13, v15

    if-ltz v15, :cond_209

    div-float v15, v6, v16

    add-float/2addr v15, v14

    cmpl-float v15, v13, v15

    if-lez v15, :cond_1a0

    move/from16 v19, v2

    goto :goto_20b

    .line 5590
    .end local v6    # "contentWidth":F
    :cond_1a0
    :goto_1a0
    iget v6, v0, Landroid/widget/Editor$HandleView;->mTextViewScaleX:F

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v15

    if-nez v6, :cond_1aa

    .line 5597
    move v6, v13

    .local v6, "scaledTouchXInView":F
    goto :goto_1bb

    .line 5599
    .end local v6    # "scaledTouchXInView":F
    :cond_1aa
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iget v15, v0, Landroid/widget/Editor$HandleView;->mCurrentDragInitialTouchRawX:F

    sub-float/2addr v6, v15

    iget v15, v0, Landroid/widget/Editor$HandleView;->mTextViewScaleX:F

    mul-float/2addr v6, v15

    iget v15, v0, Landroid/widget/Editor$HandleView;->mCurrentDragInitialTouchRawX:F

    add-float/2addr v6, v15

    aget v15, v12, v17

    int-to-float v15, v15

    sub-float/2addr v6, v15

    .line 5603
    .restart local v6    # "scaledTouchXInView":F
    :goto_1bb
    invoke-static {v14, v6}, Ljava/lang/Math;->min(FF)F

    move-result v15

    invoke-static {v11, v15}, Ljava/lang/Math;->max(FF)F

    move-result v15

    iput v15, v1, Landroid/graphics/PointF;->x:F

    .line 5606
    iget-object v15, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v15}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v15

    invoke-virtual {v15, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v15

    move/from16 v18, v8

    iget-object v8, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    .line 5607
    invoke-virtual {v8}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v8

    .line 5608
    move/from16 v19, v2

    move/from16 v2, v17

    .end local v2    # "trigger":I
    .local v19, "trigger":I
    invoke-virtual {v8, v9, v2}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v2

    add-int/2addr v15, v2

    int-to-float v2, v15

    div-float v2, v2, v16

    iget-object v8, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    .line 5609
    invoke-virtual {v8}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v2, v8

    iget-object v8, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getScrollY()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v2, v8

    iget v8, v0, Landroid/widget/Editor$HandleView;->mTextViewScaleY:F

    mul-float/2addr v2, v8

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 5610
    return v18

    .line 5582
    .end local v19    # "trigger":I
    .restart local v2    # "trigger":I
    .local v6, "contentWidth":F
    :cond_209
    move/from16 v19, v2

    .line 5585
    .end local v2    # "trigger":I
    .restart local v19    # "trigger":I
    :goto_20b
    const/16 v17, 0x0

    return v17

    :pswitch_data_20e
    .packed-switch 0x0
        :pswitch_38
        :pswitch_23
        :pswitch_e
    .end packed-switch
.end method

.method private greylist-max-o setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 5283
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_a

    const/4 v1, 0x0

    goto :goto_b

    :cond_a
    const/4 v1, 0x4

    :goto_b
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5284
    return-void
.end method

.method private greylist-max-o shouldShow()Z
    .registers 4

    .line 5270
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_6

    .line 5271
    const/4 v0, 0x1

    return v0

    .line 5274
    :cond_6
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5275
    const/4 v0, 0x0

    return v0

    .line 5278
    :cond_14
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v1, v2

    .line 5279
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v2, v2

    .line 5278
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->isPositionVisible(FF)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o startTouchUpFilter(I)V
    .registers 3
    .param p1, "offset"    # I

    .line 5180
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 5181
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    .line 5182
    return-void
.end method

.method private greylist-max-o tooLargeTextForMagnifier()Z
    .registers 7

    .line 5448
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmNewMagnifierEnabled(Landroid/widget/Editor;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_30

    .line 5449
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 5450
    .local v0, "layout":Landroid/text/Layout;
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Landroid/widget/Editor$HandleView;->getLineForOffset(Landroid/text/Layout;I)I

    move-result v3

    .line 5451
    .local v3, "line":I
    invoke-virtual {v0, v3, v2}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v4

    .line 5452
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmMaxLineHeightForMagnifier(Landroid/widget/Editor;)I

    move-result v5

    if-lt v4, v5, :cond_2e

    goto :goto_2f

    :cond_2e
    move v1, v2

    .line 5451
    :goto_2f
    return v1

    .line 5454
    .end local v0    # "layout":Landroid/text/Layout;
    .end local v3    # "line":I
    :cond_30
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v0

    .line 5455
    invoke-virtual {v0}, Landroid/widget/Magnifier;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v3

    invoke-static {v3}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v3

    .line 5456
    invoke-virtual {v3}, Landroid/widget/Magnifier;->getZoom()F

    move-result v3

    div-float/2addr v0, v3

    .line 5454
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    .line 5457
    .local v0, "magnifierContentHeight":F
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    .line 5458
    .local v3, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v4, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v5, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v4, v5

    .line 5459
    .local v4, "glyphHeight":F
    iget v5, p0, Landroid/widget/Editor$HandleView;->mTextViewScaleY:F

    mul-float/2addr v5, v4

    cmpl-float v5, v5, v0

    if-lez v5, :cond_6e

    goto :goto_6f

    :cond_6e
    move v1, v2

    :goto_6f
    return v1
.end method

.method private blacklist updateHandlesVisibility()V
    .registers 8

    .line 5638
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Magnifier;->getPosition()Landroid/graphics/Point;

    move-result-object v0

    .line 5639
    .local v0, "magnifierTopLeft":Landroid/graphics/Point;
    if-nez v0, :cond_11

    .line 5640
    return-void

    .line 5642
    :cond_11
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v5

    invoke-static {v5}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v5

    .line 5643
    invoke-virtual {v5}, Landroid/widget/Magnifier;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v6

    invoke-static {v6}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v6

    .line 5644
    invoke-virtual {v6}, Landroid/widget/Magnifier;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5645
    .local v1, "magnifierRect":Landroid/graphics/Rect;
    invoke-direct {p0, p0, v1}, Landroid/widget/Editor$HandleView;->handleOverlapsMagnifier(Landroid/widget/Editor$HandleView;Landroid/graphics/Rect;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_4d

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmDrawCursorOnMagnifier(Landroid/widget/Editor;)Z

    move-result v2

    if-nez v2, :cond_4d

    move v2, v3

    goto :goto_4e

    :cond_4d
    const/4 v2, 0x0

    :goto_4e
    invoke-direct {p0, v2}, Landroid/widget/Editor$HandleView;->setVisible(Z)V

    .line 5647
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getOtherSelectionHandle()Landroid/widget/Editor$HandleView;

    move-result-object v2

    .line 5648
    .local v2, "otherHandle":Landroid/widget/Editor$HandleView;
    if-eqz v2, :cond_5f

    .line 5649
    invoke-direct {p0, v2, v1}, Landroid/widget/Editor$HandleView;->handleOverlapsMagnifier(Landroid/widget/Editor$HandleView;Landroid/graphics/Rect;)Z

    move-result v4

    xor-int/2addr v3, v4

    invoke-direct {v2, v3}, Landroid/widget/Editor$HandleView;->setVisible(Z)V

    .line 5651
    :cond_5f
    return-void
.end method


# virtual methods
.method protected greylist-max-o dismiss()V
    .registers 2

    .line 5248
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 5249
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 5250
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    .line 5251
    return-void
.end method

.method protected final greylist-max-o dismissMagnifier()V
    .registers 3

    .line 5710
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 5711
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$mdismiss(Landroid/widget/Editor$MagnifierMotionAnimator;)V

    .line 5712
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/Editor;->-$$Nest$fputmRenderCursorRegardlessTiming(Landroid/widget/Editor;Z)V

    .line 5713
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0, v1}, Landroid/widget/Editor;->-$$Nest$fputmDrawCursorOnMagnifier(Landroid/widget/Editor;Z)V

    .line 5714
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mCursorVisible:Z

    const/4 v1, 0x1

    if-nez v0, :cond_30

    .line 5715
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iput-boolean v1, v0, Landroid/widget/Editor;->mCursorVisible:Z

    .line 5716
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 5718
    :cond_30
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mresumeBlink(Landroid/widget/Editor;)V

    .line 5719
    invoke-direct {p0, v1}, Landroid/widget/Editor$HandleView;->setVisible(Z)V

    .line 5720
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getOtherSelectionHandle()Landroid/widget/Editor$HandleView;

    move-result-object v0

    .line 5721
    .local v0, "otherHandle":Landroid/widget/Editor$HandleView;
    if-eqz v0, :cond_41

    .line 5722
    invoke-direct {v0, v1}, Landroid/widget/Editor$HandleView;->setVisible(Z)V

    .line 5725
    .end local v0    # "otherHandle":Landroid/widget/Editor$HandleView;
    :cond_41
    return-void
.end method

.method public abstract greylist-max-o getCurrentCursorOffset()I
.end method

.method greylist-max-o getCursorHorizontalPosition(Landroid/text/Layout;I)I
    .registers 5
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .line 5374
    invoke-virtual {p0, p1, p2}, Landroid/widget/Editor$HandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected greylist-max-o getCursorOffset()I
    .registers 2

    .line 5444
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getHorizontal(Landroid/text/Layout;I)F
    .registers 5
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .line 5303
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 5304
    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v0

    .line 5305
    .local v0, "transformedOffset":I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    return v1
.end method

.method protected abstract greylist-max-o getHorizontalGravity(Z)I
.end method

.method protected abstract greylist-max-o getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method final blacklist getIdealFingerToCursorOffset()I
    .registers 2

    .line 5133
    iget v0, p0, Landroid/widget/Editor$HandleView;->mIdealFingerToCursorOffset:I

    return v0
.end method

.method public greylist-max-o getIdealVerticalOffset()F
    .registers 2

    .line 5129
    iget v0, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    return v0
.end method

.method public blacklist getLineForOffset(Landroid/text/Layout;I)I
    .registers 5
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .line 5315
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 5316
    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v0

    .line 5317
    .local v0, "transformedOffset":I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    return v1
.end method

.method protected abstract greylist-max-o getMagnifierHandleTrigger()I
.end method

.method protected greylist-max-o getOffsetAtCoordinate(Landroid/text/Layout;IF)I
    .registers 5
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "line"    # I
    .param p3, "x"    # F

    .line 5321
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v0

    return v0
.end method

.method protected final greylist-max-o getPreferredHeight()I
    .registers 3

    .line 5229
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected final greylist-max-o getPreferredWidth()I
    .registers 3

    .line 5225
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public greylist-max-o hide()V
    .registers 2

    .line 5259
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    .line 5261
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mgetPositionListener(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 5262
    return-void
.end method

.method public whitelist invalidate()V
    .registers 4

    .line 5218
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 5219
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 5220
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    .line 5222
    :cond_12
    return-void
.end method

.method protected greylist-max-o isAtRtlRun(Landroid/text/Layout;I)Z
    .registers 5
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .line 5296
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 5297
    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v0

    .line 5298
    .local v0, "transformedOffset":I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v1

    return v1
.end method

.method public greylist-max-o isDragging()Z
    .registers 2

    .line 5797
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    return v0
.end method

.method public greylist-max-o isShowing()Z
    .registers 2

    .line 5265
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o offsetHasBeenChanged()Z
    .registers 3

    .line 5208
    iget v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public greylist-max-o onDetached()V
    .registers 1

    .line 5806
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismissMagnifier()V

    .line 5807
    return-void
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 5417
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 5418
    .local v0, "drawWidth":I
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v1

    .line 5420
    .local v1, "left":I
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    add-int v3, v1, v0

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5421
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5422
    return-void
.end method

.method greylist-max-o onHandleMoved()V
    .registers 1

    .line 5800
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 5213
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->setMeasuredDimension(II)V

    .line 5214
    return-void
.end method

.method protected whitelist onSizeChanged(IIII)V
    .registers 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 5811
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 5812
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Editor$HandleView;->setSystemGestureExclusionRects(Ljava/util/List;)V

    .line 5813
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 5737
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0, p1}, Landroid/widget/Editor;->-$$Nest$mupdateFloatingToolbarVisibility(Landroid/widget/Editor;Landroid/view/MotionEvent;)V

    .line 5739
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x1002

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_d8

    goto/16 :goto_d6

    .line 5760
    :pswitch_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v3, p0, Landroid/widget/Editor$HandleView;->mLastParentXOnScreen:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget v3, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    .line 5761
    .local v0, "xInWindow":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Landroid/widget/Editor$HandleView;->mLastParentYOnScreen:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 5764
    .local v3, "yInWindow":F
    iget v4, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v5, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 5765
    .local v4, "previousVerticalOffset":F
    iget v5, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v5, v5

    sub-float v5, v3, v5

    iget v6, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 5767
    .local v5, "currentVerticalOffset":F
    iget v6, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    cmpg-float v6, v4, v6

    if-gez v6, :cond_49

    .line 5768
    iget v6, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 5769
    .local v6, "newVerticalOffset":F
    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v6

    goto :goto_53

    .line 5771
    .end local v6    # "newVerticalOffset":F
    :cond_49
    iget v6, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 5772
    .restart local v6    # "newVerticalOffset":F
    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 5774
    :goto_53
    iget v7, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v7, v7

    add-float/2addr v7, v6

    iput v7, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 5776
    iget v7, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    sub-float v7, v0, v7

    iget v8, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    .line 5777
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    .line 5778
    .local v7, "newPosX":F
    iget v8, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    sub-float v8, v3, v8

    iget v9, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    add-float/2addr v8, v9

    .line 5780
    .local v8, "newPosY":F
    nop

    .line 5781
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    .line 5780
    invoke-virtual {p0, v7, v8, v1}, Landroid/widget/Editor$HandleView;->updatePosition(FFZ)V

    .line 5782
    goto :goto_d6

    .line 5786
    .end local v0    # "xInWindow":F
    .end local v3    # "yInWindow":F
    .end local v4    # "previousVerticalOffset":F
    .end local v5    # "currentVerticalOffset":F
    .end local v6    # "newVerticalOffset":F
    .end local v7    # "newPosX":F
    .end local v8    # "newPosY":F
    :pswitch_77
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/Editor$HandleView;->filterOnTouchUp(Z)V

    .line 5789
    :pswitch_7e
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 5790
    invoke-virtual {p0, v0}, Landroid/widget/Editor$HandleView;->updateDrawable(Z)V

    goto :goto_d6

    .line 5741
    :pswitch_85
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/Editor$HandleView;->startTouchUpFilter(I)V

    .line 5743
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mgetPositionListener(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    .line 5744
    .local v0, "positionListener":Landroid/widget/Editor$PositionListener;
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 5745
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 5746
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionXOnScreen()I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$HandleView;->mLastParentXOnScreen:I

    .line 5747
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionYOnScreen()I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$HandleView;->mLastParentYOnScreen:I

    .line 5749
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v3, p0, Landroid/widget/Editor$HandleView;->mLastParentXOnScreen:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v3, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    .line 5750
    .local v1, "xInWindow":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Landroid/widget/Editor$HandleView;->mLastParentYOnScreen:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 5751
    .restart local v3    # "yInWindow":F
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    int-to-float v4, v4

    sub-float v4, v1, v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 5752
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v4, v4

    sub-float v4, v3, v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 5754
    iput-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 5755
    const/4 v4, -0x1

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    .line 5756
    nop

    .line 5793
    .end local v0    # "positionListener":Landroid/widget/Editor$PositionListener;
    .end local v1    # "xInWindow":F
    .end local v3    # "yInWindow":F
    :goto_d6
    return v2

    nop

    :pswitch_data_d8
    .packed-switch 0x0
        :pswitch_85
        :pswitch_77
        :pswitch_11
        :pswitch_7e
    .end packed-switch
.end method

.method protected greylist-max-o positionAtCursorOffset(IZZ)V
    .registers 11
    .param p1, "offset"    # I
    .param p2, "forceUpdatePosition"    # Z
    .param p3, "fromTouchScreen"    # Z

    .line 5334
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 5335
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_12

    .line 5337
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 5338
    return-void

    .line 5341
    :cond_12
    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v1, :cond_1a

    move v1, v2

    goto :goto_1b

    :cond_1a
    move v1, v3

    .line 5342
    .local v1, "offsetChanged":Z
    :goto_1b
    if-nez v1, :cond_1f

    if-eqz p2, :cond_7d

    .line 5343
    :cond_1f
    if-eqz v1, :cond_3c

    .line 5344
    invoke-virtual {p0, p1}, Landroid/widget/Editor$HandleView;->updateSelection(I)V

    .line 5345
    if-eqz p3, :cond_39

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmHapticTextHandleEnabled(Landroid/widget/Editor;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 5346
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    .line 5348
    :cond_39
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    .line 5350
    :cond_3c
    invoke-virtual {p0, v0, p1}, Landroid/widget/Editor$HandleView;->getLineForOffset(Landroid/text/Layout;I)I

    move-result v4

    .line 5351
    .local v4, "line":I
    iput v4, p0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    .line 5353
    invoke-virtual {p0, v0, p1}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result v5

    iget v6, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    sub-int/2addr v5, v6

    .line 5354
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 5355
    invoke-virtual {v0, v4, v3}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v3

    iput v3, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 5358
    iget v3, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v3, v5

    iput v3, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 5359
    iget v3, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    add-int/2addr v3, v5

    iput v3, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 5361
    iput p1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 5362
    iput-boolean v2, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 5364
    .end local v4    # "line":I
    :cond_7d
    return-void
.end method

.method blacklist setDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p2, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .line 5137
    iput-object p1, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    .line 5138
    iput-object p2, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    .line 5139
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Editor$HandleView;->updateDrawable(Z)V

    .line 5140
    return-void
.end method

.method public greylist-max-o show()V
    .registers 3

    .line 5238
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 5240
    :cond_7
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mgetPositionListener(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 5243
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 5244
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    .line 5245
    return-void
.end method

.method protected blacklist updateDrawable(Z)V
    .registers 9
    .param p1, "updateDrawableWhenDragging"    # Z

    .line 5143
    if-nez p1, :cond_7

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_7

    .line 5144
    return-void

    .line 5146
    :cond_7
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 5147
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_14

    .line 5148
    return-void

    .line 5150
    :cond_14
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v1

    .line 5151
    .local v1, "offset":I
    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v2

    .line 5152
    .local v2, "isRtlCharAtOffset":Z
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5153
    .local v3, "oldDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_23

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    goto :goto_25

    :cond_23
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    :goto_25
    iput-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5154
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4, v2}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    .line 5155
    invoke-virtual {p0, v2}, Landroid/widget/Editor$HandleView;->getHorizontalGravity(Z)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    .line 5156
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v3, v4, :cond_6f

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 5158
    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result v4

    iget v5, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    sub-int/2addr v4, v5

    .line 5159
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 5160
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 5161
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 5162
    iget v4, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    iget v5, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6, v6}, Landroid/widget/Editor$HandleView;->updatePosition(IIZZ)V

    .line 5163
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->postInvalidate()V

    .line 5165
    :cond_6f
    return-void
.end method

.method protected final greylist-max-o updateMagnifier(Landroid/view/MotionEvent;)V
    .registers 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 5654
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mgetMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    if-nez v0, :cond_9

    .line 5655
    return-void

    .line 5658
    :cond_9
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 5659
    .local v0, "showPosInView":Landroid/graphics/PointF;
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->checkForTransforms()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_30

    .line 5660
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->tooLargeTextForMagnifier()Z

    move-result v1

    if-nez v1, :cond_30

    .line 5661
    invoke-direct {p0, p1, v0}, Landroid/widget/Editor$HandleView;->obtainMagnifierShowCoordinates(Landroid/view/MotionEvent;Landroid/graphics/PointF;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    .line 5662
    invoke-virtual {v1}, Landroid/widget/TextView;->showUIForTouchScreen()Z

    move-result v1

    if-eqz v1, :cond_30

    move v1, v3

    goto :goto_31

    :cond_30
    move v1, v2

    .line 5663
    .local v1, "shouldShow":Z
    :goto_31
    if-eqz v1, :cond_137

    .line 5665
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4, v3}, Landroid/widget/Editor;->-$$Nest$fputmRenderCursorRegardlessTiming(Landroid/widget/Editor;Z)V

    .line 5666
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->invalidateCursorPath()V

    .line 5667
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$msuspendBlink(Landroid/widget/Editor;)V

    .line 5669
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmNewMagnifierEnabled(Landroid/widget/Editor;)Z

    move-result v4

    if-eqz v4, :cond_126

    .line 5671
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 5672
    .local v4, "layout":Landroid/text/Layout;
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/widget/Editor$HandleView;->getLineForOffset(Landroid/text/Layout;I)I

    move-result v5

    .line 5673
    .local v5, "line":I
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    float-to-int v6, v6

    .line 5674
    .local v6, "lineLeft":I
    iget-object v7, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v7

    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getScrollX()I

    move-result v8

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 5675
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v7

    float-to-int v7, v7

    .line 5676
    .local v7, "lineRight":I
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v8

    iget-object v9, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getScrollX()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    .line 5677
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget v9, v0, Landroid/graphics/PointF;->x:F

    add-int/lit8 v10, v6, -0x14

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_ad

    iget v9, v0, Landroid/graphics/PointF;->x:F

    add-int/lit8 v10, v7, 0x14

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_ab

    goto :goto_ad

    :cond_ab
    move v9, v2

    goto :goto_ae

    :cond_ad
    :goto_ad
    move v9, v3

    :goto_ae
    invoke-static {v8, v9}, Landroid/widget/Editor;->-$$Nest$fputmDrawCursorOnMagnifier(Landroid/widget/Editor;Z)V

    .line 5680
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v8

    invoke-static {v8}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-$$Nest$fgetmDrawCursorOnMagnifier(Landroid/widget/Editor;)Z

    move-result v9

    iget-object v10, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v10, v10, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9, v10}, Landroid/widget/Magnifier;->setDrawCursor(ZLandroid/graphics/drawable/Drawable;)V

    .line 5682
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-boolean v8, v8, Landroid/widget/Editor;->mCursorVisible:Z

    .line 5685
    .local v8, "cursorVisible":Z
    iget-object v9, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v10, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-$$Nest$fgetmDrawCursorOnMagnifier(Landroid/widget/Editor;)Z

    move-result v10

    xor-int/2addr v3, v10

    iput-boolean v3, v9, Landroid/widget/Editor;->mCursorVisible:Z

    .line 5686
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-boolean v3, v3, Landroid/widget/Editor;->mCursorVisible:Z

    if-eqz v3, :cond_e4

    if-nez v8, :cond_e4

    .line 5689
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->updateCursorPosition()V

    .line 5691
    :cond_e4
    nop

    .line 5692
    invoke-virtual {v4, v5, v2}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v2

    .line 5693
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 5694
    .local v2, "lineHeight":I
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmInitialZoom(Landroid/widget/Editor;)F

    move-result v3

    .line 5695
    .local v3, "zoom":F
    iget-object v9, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-$$Nest$fgetmMinLineHeightForMagnifier(Landroid/widget/Editor;)I

    move-result v9

    if-ge v2, v9, :cond_107

    .line 5696
    iget-object v9, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-$$Nest$fgetmMinLineHeightForMagnifier(Landroid/widget/Editor;)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v3

    int-to-float v10, v2

    div-float v3, v9, v10

    .line 5698
    :cond_107
    iget-object v9, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v9

    invoke-static {v9}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Landroid/widget/Magnifier;->updateSourceFactors(IF)V

    .line 5699
    iget-object v9, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v9

    invoke-static {v9}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v9

    iget v10, v0, Landroid/graphics/PointF;->x:F

    iget v11, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v9, v10, v11}, Landroid/widget/Magnifier;->show(FF)V

    .line 5700
    .end local v2    # "lineHeight":I
    .end local v3    # "zoom":F
    .end local v4    # "layout":Landroid/text/Layout;
    .end local v5    # "line":I
    .end local v6    # "lineLeft":I
    .end local v7    # "lineRight":I
    .end local v8    # "cursorVisible":Z
    goto :goto_133

    .line 5701
    :cond_126
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v2

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v2, v3, v4}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$mshow(Landroid/widget/Editor$MagnifierMotionAnimator;FF)V

    .line 5703
    :goto_133
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->updateHandlesVisibility()V

    goto :goto_13a

    .line 5705
    :cond_137
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismissMagnifier()V

    .line 5707
    :goto_13a
    return-void
.end method

.method protected abstract greylist-max-o updatePosition(FFZ)V
.end method

.method public greylist-max-o updatePosition(IIZZ)V
    .registers 11
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .line 5380
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p4, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    .line 5381
    if-nez p3, :cond_e

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    if-eqz v0, :cond_8d

    .line 5382
    :cond_e
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_35

    .line 5384
    iget v0, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    if-ne p1, v0, :cond_1a

    iget v0, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    if-eq p2, v0, :cond_32

    .line 5385
    :cond_1a
    iget v0, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    sub-int v2, p1, v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 5386
    iget v0, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 5387
    iput p1, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 5388
    iput p2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 5391
    :cond_32
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onHandleMoved()V

    .line 5394
    :cond_35
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->shouldShow()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 5396
    iget v0, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v0, v2

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    filled-new-array {v0, v2}, [I

    move-result-object v0

    .line 5397
    .local v0, "pts":[I
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->transformFromViewToWindowSpace([I)V

    .line 5398
    aget v2, v0, v1

    iget v3, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    aput v2, v0, v1

    .line 5400
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_72

    .line 5401
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    aget v4, v0, v1

    aget v3, v0, v3

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v3, v5, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_81

    .line 5403
    :cond_72
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    aget v5, v0, v1

    aget v3, v0, v3

    invoke-virtual {v2, v4, v1, v5, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 5405
    .end local v0    # "pts":[I
    :goto_81
    goto :goto_8b

    .line 5406
    :cond_82
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 5407
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    .line 5411
    :cond_8b
    :goto_8b
    iput-boolean v1, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 5413
    :cond_8d
    return-void
.end method

.method protected abstract greylist-max-o updateSelection(I)V
.end method
