.class abstract Landroid/widget/Editor$HandleView;
.super Landroid/view/View;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HandleView"
.end annotation


# static fields
.field private static final HISTORY_SIZE:I = 0x5

.field private static final TOUCH_UP_FILTER_DELAY_AFTER:I = 0x96

.field private static final TOUCH_UP_FILTER_DELAY_BEFORE:I = 0x15e


# instance fields
.field private final mContainer:Landroid/widget/PopupWindow;

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field protected mHorizontalGravity:I

.field protected mHotspotX:I

.field private mIdealVerticalOffset:F

.field private mIsDragging:Z

.field private mLastParentX:I

.field private mLastParentY:I

.field private mMinSize:I

.field private mNumberPreviousOffsets:I

.field private mPositionHasChanged:Z

.field private mPositionX:I

.field private mPositionY:I

.field protected mPrevLine:I

.field protected mPreviousLineTouched:I

.field protected mPreviousOffset:I

.field private mPreviousOffsetIndex:I

.field private final mPreviousOffsets:[I

.field private final mPreviousOffsetsTimes:[J

.field private mTouchOffsetY:F

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v3, 0x5

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v6, -0x2

    #@3
    const/4 v5, 0x0

    #@4
    const/4 v2, -0x1

    #@5
    .line 3522
    iput-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #@7
    .line 3523
    invoke-static {p1}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@e
    move-result-object v1

    #@f
    invoke-direct {p0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #@12
    .line 3510
    iput v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    #@14
    .line 3512
    iput-boolean v7, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    #@16
    .line 3516
    iput v2, p0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    #@18
    .line 3520
    iput v2, p0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    #@1a
    .line 3579
    new-array v1, v3, [J

    #@1c
    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    #@1e
    .line 3580
    new-array v1, v3, [I

    #@20
    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    #@22
    .line 3581
    iput v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    #@24
    .line 3582
    iput v5, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    #@26
    .line 3524
    new-instance v1, Landroid/widget/PopupWindow;

    #@28
    invoke-static {p1}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@2f
    move-result-object v2

    #@30
    const/4 v3, 0x0

    #@31
    .line 3525
    const v4, 0x10102c8

    #@34
    .line 3524
    invoke-direct {v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@37
    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    #@39
    .line 3526
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    #@3b
    invoke-virtual {v1, v7}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    #@3e
    .line 3527
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    #@40
    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    #@43
    .line 3528
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    #@45
    const/16 v2, 0x3ea

    #@47
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    #@4a
    .line 3529
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    #@4c
    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    #@4f
    .line 3530
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    #@51
    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    #@54
    .line 3531
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    #@56
    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    #@59
    .line 3533
    iput-object p2, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    #@5b
    .line 3534
    iput-object p3, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    #@5d
    .line 3535
    invoke-static {p1}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@60
    move-result-object v1

    #@61
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@64
    move-result-object v1

    #@65
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@68
    move-result-object v1

    #@69
    .line 3536
    const v2, 0x105008f

    #@6c
    .line 3535
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@6f
    move-result v1

    #@70
    iput v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    #@72
    .line 3538
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    #@75
    .line 3540
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    #@78
    move-result v0

    #@79
    .line 3541
    .local v0, "handleHeight":I
    int-to-float v1, v0

    #@7a
    const v2, -0x41666666    # -0.3f

    #@7d
    mul-float/2addr v1, v2

    #@7e
    iput v1, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    #@80
    .line 3542
    int-to-float v1, v0

    #@81
    const v2, 0x3f333333    # 0.7f

    #@84
    mul-float/2addr v1, v2

    #@85
    iput v1, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    #@87
    .line 3522
    return-void
.end method

.method private addPositionToTouchUpFilter(I)V
    .locals 4
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 3590
    iget v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    rem-int/lit8 v0, v0, 0x5

    #@6
    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    #@8
    .line 3591
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    #@a
    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    #@c
    aput p1, v0, v1

    #@e
    .line 3592
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    #@10
    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    #@12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@15
    move-result-wide v2

    #@16
    aput-wide v2, v0, v1

    #@18
    .line 3593
    iget v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    #@1a
    add-int/lit8 v0, v0, 0x1

    #@1c
    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    #@1e
    .line 3589
    return-void
.end method

.method private filterOnTouchUp()V
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 3597
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@4
    move-result-wide v4

    #@5
    .line 3598
    .local v4, "now":J
    const/4 v0, 0x0

    #@6
    .line 3599
    .local v0, "i":I
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    #@8
    .line 3600
    .local v2, "index":I
    iget v3, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    #@a
    const/4 v6, 0x5

    #@b
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    #@e
    move-result v1

    #@f
    .line 3601
    .local v1, "iMax":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@11
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    #@13
    aget-wide v6, v3, v2

    #@15
    sub-long v6, v4, v6

    #@17
    const-wide/16 v8, 0x96

    #@19
    cmp-long v3, v6, v8

    #@1b
    if-gez v3, :cond_0

    #@1d
    .line 3602
    add-int/lit8 v0, v0, 0x1

    #@1f
    .line 3603
    iget v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    #@21
    sub-int/2addr v3, v0

    #@22
    add-int/lit8 v3, v3, 0x5

    #@24
    rem-int/lit8 v2, v3, 0x5

    #@26
    goto :goto_0

    #@27
    .line 3606
    :cond_0
    if-lez v0, :cond_1

    #@29
    if-ge v0, v1, :cond_1

    #@2b
    .line 3607
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    #@2d
    aget-wide v6, v3, v2

    #@2f
    sub-long v6, v4, v6

    #@31
    const-wide/16 v8, 0x15e

    #@33
    cmp-long v3, v6, v8

    #@35
    if-lez v3, :cond_1

    #@37
    .line 3608
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    #@39
    aget v3, v3, v2

    #@3b
    invoke-virtual {p0, v3, v10}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    #@3e
    .line 3596
    :cond_1
    return-void
.end method

.method private getHorizontalOffset()I
    .locals 4

    #@0
    .prologue
    .line 3775
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    #@3
    move-result v2

    #@4
    .line 3776
    .local v2, "width":I
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@9
    move-result v0

    #@a
    .line 3778
    .local v0, "drawWidth":I
    iget v3, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    #@c
    sparse-switch v3, :sswitch_data_0

    #@f
    .line 3784
    :sswitch_0
    sub-int v3, v2, v0

    #@11
    div-int/lit8 v1, v3, 0x2

    #@13
    .line 3790
    .local v1, "left":I
    :goto_0
    return v1

    #@14
    .line 3780
    .end local v1    # "left":I
    :sswitch_1
    const/4 v1, 0x0

    #@15
    .line 3781
    .restart local v1    # "left":I
    goto :goto_0

    #@16
    .line 3787
    .end local v1    # "left":I
    :sswitch_2
    sub-int v1, v2, v0

    #@18
    .line 3788
    .restart local v1    # "left":I
    goto :goto_0

    #@19
    .line 3778
    nop

    #@1a
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x5 -> :sswitch_2
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method private getPreferredHeight()I
    .locals 2

    #@0
    .prologue
    .line 3626
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    #@8
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method private getPreferredWidth()I
    .locals 2

    #@0
    .prologue
    .line 3622
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    #@8
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method private isVisible()Z
    .locals 3

    #@0
    .prologue
    .line 3657
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3658
    const/4 v0, 0x1

    #@5
    return v0

    #@6
    .line 3661
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #@8
    invoke-static {v0}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 3662
    const/4 v0, 0x0

    #@13
    return v0

    #@14
    .line 3665
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #@16
    iget v1, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    #@18
    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    #@1a
    add-int/2addr v1, v2

    #@1b
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    #@1e
    move-result v2

    #@1f
    add-int/2addr v1, v2

    #@20
    int-to-float v1, v1

    #@21
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    #@23
    int-to-float v2, v2

    #@24
    invoke-static {v0, v1, v2}, Landroid/widget/Editor;->-wrap6(Landroid/widget/Editor;FF)Z

    #@27
    move-result v0

    #@28
    return v0
.end method

.method private startTouchUpFilter(I)V
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 3585
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    #@3
    .line 3586
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    #@6
    .line 3584
    return-void
.end method


# virtual methods
.method protected dismiss()V
    .locals 1

    #@0
    .prologue
    .line 3640
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    #@3
    .line 3641
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    #@5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    #@8
    .line 3642
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    #@b
    .line 3639
    return-void
.end method

.method public abstract getCurrentCursorOffset()I
.end method

.method protected getCursorOffset()I
    .locals 1

    #@0
    .prologue
    .line 3794
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected abstract getHorizontalGravity(Z)I
.end method

.method protected abstract getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method public getIdealVerticalOffset()F
    .locals 1

    #@0
    .prologue
    .line 3546
    iget v0, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    #@2
    return v0
.end method

.method public hide()V
    .locals 1

    #@0
    .prologue
    .line 3646
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    #@3
    .line 3648
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #@5
    invoke-static {v0}, Landroid/widget/Editor;->-wrap2(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    #@c
    .line 3645
    return-void
.end method

.method public isDragging()Z
    .locals 1

    #@0
    .prologue
    .line 3855
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    #@2
    return v0
.end method

.method public isShowing()Z
    .locals 1

    #@0
    .prologue
    .line 3652
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    #@2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public offsetHasBeenChanged()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 3613
    iget v1, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    #@3
    if-le v1, v0, :cond_0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public onDetached()V
    .locals 0

    #@0
    .prologue
    .line 3860
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 3767
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@5
    move-result v0

    #@6
    .line 3768
    .local v0, "drawWidth":I
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    #@9
    move-result v1

    #@a
    .line 3770
    .local v1, "left":I
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@c
    add-int v3, v1, v0

    #@e
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@10
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@13
    move-result v4

    #@14
    const/4 v5, 0x0

    #@15
    invoke-virtual {v2, v1, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@18
    .line 3771
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@1a
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@1d
    .line 3766
    return-void
.end method

.method onHandleMoved()V
    .locals 0

    #@0
    .prologue
    .line 3858
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 3618
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    #@3
    move-result v0

    #@4
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    #@7
    move-result v1

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->setMeasuredDimension(II)V

    #@b
    .line 3617
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 3799
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #@4
    invoke-static {v8, p1}, Landroid/widget/Editor;->-wrap16(Landroid/widget/Editor;Landroid/view/MotionEvent;)V

    #@7
    .line 3801
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@a
    move-result v8

    #@b
    packed-switch v8, :pswitch_data_0

    #@e
    .line 3851
    :goto_0
    return v10

    #@f
    .line 3803
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    #@12
    move-result v8

    #@13
    invoke-direct {p0, v8}, Landroid/widget/Editor$HandleView;->startTouchUpFilter(I)V

    #@16
    .line 3804
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    #@19
    move-result v8

    #@1a
    iget v9, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    #@1c
    int-to-float v9, v9

    #@1d
    sub-float/2addr v8, v9

    #@1e
    iput v8, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    #@20
    .line 3805
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    #@23
    move-result v8

    #@24
    iget v9, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    #@26
    int-to-float v9, v9

    #@27
    sub-float/2addr v8, v9

    #@28
    iput v8, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    #@2a
    .line 3807
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #@2c
    invoke-static {v8}, Landroid/widget/Editor;->-wrap2(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    #@2f
    move-result-object v4

    #@30
    .line 3808
    .local v4, "positionListener":Landroid/widget/Editor$PositionListener;
    invoke-virtual {v4}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    #@33
    move-result v8

    #@34
    iput v8, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    #@36
    .line 3809
    invoke-virtual {v4}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    #@39
    move-result v8

    #@3a
    iput v8, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    #@3c
    .line 3810
    iput-boolean v10, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    #@3e
    .line 3811
    const/4 v8, -0x1

    #@3f
    iput v8, p0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    #@41
    goto :goto_0

    #@42
    .line 3816
    .end local v4    # "positionListener":Landroid/widget/Editor$PositionListener;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    #@45
    move-result v6

    #@46
    .line 3817
    .local v6, "rawX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    #@49
    move-result v7

    #@4a
    .line 3820
    .local v7, "rawY":F
    iget v8, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    #@4c
    iget v9, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    #@4e
    int-to-float v9, v9

    #@4f
    sub-float v5, v8, v9

    #@51
    .line 3821
    .local v5, "previousVerticalOffset":F
    iget v8, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    #@53
    int-to-float v8, v8

    #@54
    sub-float v8, v7, v8

    #@56
    iget v9, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    #@58
    int-to-float v9, v9

    #@59
    sub-float v0, v8, v9

    #@5b
    .line 3823
    .local v0, "currentVerticalOffset":F
    iget v8, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    #@5d
    cmpg-float v8, v5, v8

    #@5f
    if-gez v8, :cond_0

    #@61
    .line 3824
    iget v8, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    #@63
    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    #@66
    move-result v3

    #@67
    .line 3825
    .local v3, "newVerticalOffset":F
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    #@6a
    move-result v3

    #@6b
    .line 3830
    :goto_1
    iget v8, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    #@6d
    int-to-float v8, v8

    #@6e
    add-float/2addr v8, v3

    #@6f
    iput v8, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    #@71
    .line 3833
    iget v8, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    #@73
    sub-float v8, v6, v8

    #@75
    iget v9, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    #@77
    int-to-float v9, v9

    #@78
    add-float/2addr v8, v9

    #@79
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    #@7c
    move-result v9

    #@7d
    int-to-float v9, v9

    #@7e
    add-float v1, v8, v9

    #@80
    .line 3834
    .local v1, "newPosX":F
    iget v8, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    #@82
    sub-float v8, v7, v8

    #@84
    iget v9, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    #@86
    add-float v2, v8, v9

    #@88
    .line 3836
    .local v2, "newPosY":F
    invoke-virtual {p0, v1, v2}, Landroid/widget/Editor$HandleView;->updatePosition(FF)V

    #@8b
    goto :goto_0

    #@8c
    .line 3827
    .end local v1    # "newPosX":F
    .end local v2    # "newPosY":F
    .end local v3    # "newVerticalOffset":F
    :cond_0
    iget v8, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    #@8e
    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    #@91
    move-result v3

    #@92
    .line 3828
    .restart local v3    # "newVerticalOffset":F
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    #@95
    move-result v3

    #@96
    goto :goto_1

    #@97
    .line 3841
    .end local v0    # "currentVerticalOffset":F
    .end local v3    # "newVerticalOffset":F
    .end local v5    # "previousVerticalOffset":F
    .end local v6    # "rawX":F
    .end local v7    # "rawY":F
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->filterOnTouchUp()V

    #@9a
    .line 3842
    iput-boolean v9, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    #@9c
    .line 3843
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    #@9f
    goto/16 :goto_0

    #@a1
    .line 3847
    :pswitch_3
    iput-boolean v9, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    #@a3
    .line 3848
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    #@a6
    goto/16 :goto_0

    #@a8
    .line 3801
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 5
    .param p1, "offset"    # I
    .param p2, "parentScrolled"    # Z

    #@0
    .prologue
    .line 3676
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #@2
    invoke-static {v3}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@9
    move-result-object v0

    #@a
    .line 3677
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_0

    #@c
    .line 3679
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #@e
    invoke-virtual {v3}, Landroid/widget/Editor;->prepareCursorControllers()V

    #@11
    .line 3680
    return-void

    #@12
    .line 3682
    :cond_0
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #@14
    invoke-static {v3}, Landroid/widget/Editor;->-wrap0(Landroid/widget/Editor;)Landroid/text/Layout;

    #@17
    move-result-object v0

    #@18
    .line 3684
    iget v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    #@1a
    if-eq p1, v3, :cond_4

    #@1c
    const/4 v2, 0x1

    #@1d
    .line 3685
    .local v2, "offsetChanged":Z
    :goto_0
    if-nez v2, :cond_1

    #@1f
    if-eqz p2, :cond_3

    #@21
    .line 3686
    :cond_1
    if-eqz v2, :cond_2

    #@23
    .line 3687
    invoke-virtual {p0, p1}, Landroid/widget/Editor$HandleView;->updateSelection(I)V

    #@26
    .line 3688
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    #@29
    .line 3690
    :cond_2
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    #@2c
    move-result v1

    #@2d
    .line 3691
    .local v1, "line":I
    iput v1, p0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    #@2f
    .line 3693
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    #@32
    move-result v3

    #@33
    const/high16 v4, 0x3f000000    # 0.5f

    #@35
    sub-float/2addr v3, v4

    #@36
    iget v4, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    #@38
    int-to-float v4, v4

    #@39
    sub-float/2addr v3, v4

    #@3a
    .line 3694
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    #@3d
    move-result v4

    #@3e
    int-to-float v4, v4

    #@3f
    .line 3693
    sub-float/2addr v3, v4

    #@40
    .line 3694
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    #@43
    move-result v4

    #@44
    int-to-float v4, v4

    #@45
    .line 3693
    add-float/2addr v3, v4

    #@46
    float-to-int v3, v3

    #@47
    iput v3, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    #@49
    .line 3695
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    #@4c
    move-result v3

    #@4d
    iput v3, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    #@4f
    .line 3698
    iget v3, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    #@51
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #@53
    invoke-static {v4}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@56
    move-result-object v4

    #@57
    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    #@5a
    move-result v4

    #@5b
    add-int/2addr v3, v4

    #@5c
    iput v3, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    #@5e
    .line 3699
    iget v3, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    #@60
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #@62
    invoke-static {v4}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@65
    move-result-object v4

    #@66
    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    #@69
    move-result v4

    #@6a
    add-int/2addr v3, v4

    #@6b
    iput v3, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    #@6d
    .line 3701
    iput p1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    #@6f
    .line 3702
    const/4 v3, 0x1

    #@70
    iput-boolean v3, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    #@72
    .line 3674
    .end local v1    # "line":I
    :cond_3
    return-void

    #@73
    .line 3684
    .end local v2    # "offsetChanged":Z
    :cond_4
    const/4 v2, 0x0

    #@74
    .restart local v2    # "offsetChanged":Z
    goto :goto_0
.end method

.method public show()V
    .locals 2

    #@0
    .prologue
    .line 3630
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    return-void

    #@7
    .line 3632
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #@9
    invoke-static {v0}, Landroid/widget/Editor;->-wrap2(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    #@c
    move-result-object v0

    #@d
    const/4 v1, 0x1

    #@e
    invoke-virtual {v0, p0, v1}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    #@11
    .line 3635
    const/4 v0, -0x1

    #@12
    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    #@14
    .line 3636
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    #@17
    move-result v0

    #@18
    const/4 v1, 0x0

    #@19
    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    #@1c
    .line 3629
    return-void
.end method

.method public showAtLocation(I)V
    .locals 12
    .param p1, "offset"    # I

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 3744
    const/4 v7, 0x2

    #@2
    new-array v6, v7, [I

    #@4
    .line 3745
    .local v6, "tmpCords":[I
    iget-object v7, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #@6
    invoke-static {v7}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@9
    move-result-object v7

    #@a
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->getLocationInWindow([I)V

    #@d
    .line 3747
    iget-object v7, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #@f
    invoke-static {v7}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@12
    move-result-object v7

    #@13
    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@16
    move-result-object v0

    #@17
    .line 3748
    .local v0, "layout":Landroid/text/Layout;
    aget v2, v6, v11

    #@19
    .line 3749
    .local v2, "posX":I
    const/4 v7, 0x1

    #@1a
    aget v3, v6, v7

    #@1c
    .line 3751
    .local v3, "posY":I
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    #@1f
    move-result v1

    #@20
    .line 3753
    .local v1, "line":I
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    #@23
    move-result v7

    #@24
    const/high16 v8, 0x3f000000    # 0.5f

    #@26
    sub-float/2addr v7, v8

    #@27
    .line 3754
    iget v8, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    #@29
    int-to-float v8, v8

    #@2a
    .line 3753
    sub-float/2addr v7, v8

    #@2b
    .line 3754
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    #@2e
    move-result v8

    #@2f
    int-to-float v8, v8

    #@30
    .line 3753
    sub-float/2addr v7, v8

    #@31
    .line 3754
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    #@34
    move-result v8

    #@35
    int-to-float v8, v8

    #@36
    .line 3753
    add-float/2addr v7, v8

    #@37
    float-to-int v4, v7

    #@38
    .line 3755
    .local v4, "startX":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    #@3b
    move-result v5

    #@3c
    .line 3758
    .local v5, "startY":I
    iget-object v7, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #@3e
    invoke-static {v7}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@41
    move-result-object v7

    #@42
    invoke-virtual {v7}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    #@45
    move-result v7

    #@46
    add-int/2addr v4, v7

    #@47
    .line 3759
    iget-object v7, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #@49
    invoke-static {v7}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@4c
    move-result-object v7

    #@4d
    invoke-virtual {v7}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    #@50
    move-result v7

    #@51
    add-int/2addr v5, v7

    #@52
    .line 3761
    iget-object v7, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    #@54
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #@56
    invoke-static {v8}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@59
    move-result-object v8

    #@5a
    .line 3762
    add-int v9, v4, v2

    #@5c
    add-int v10, v5, v3

    #@5e
    .line 3761
    invoke-virtual {v7, v8, v11, v9, v10}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    #@61
    .line 3741
    return-void
.end method

.method protected updateDrawable()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 3550
    iget-boolean v4, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    #@3
    if-eqz v4, :cond_0

    #@5
    .line 3552
    return-void

    #@6
    .line 3554
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    #@9
    move-result v2

    #@a
    .line 3555
    .local v2, "offset":I
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #@c
    invoke-static {v4}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v4, v2}, Landroid/text/Layout;->isRtlCharAt(I)Z

    #@17
    move-result v0

    #@18
    .line 3556
    .local v0, "isRtlCharAtOffset":Z
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@1a
    .line 3557
    .local v3, "oldDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    #@1c
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    #@1e
    :goto_0
    iput-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@20
    .line 3558
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@22
    invoke-virtual {p0, v4, v0}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    #@25
    move-result v4

    #@26
    iput v4, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    #@28
    .line 3559
    invoke-virtual {p0, v0}, Landroid/widget/Editor$HandleView;->getHorizontalGravity(Z)I

    #@2b
    move-result v4

    #@2c
    iput v4, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    #@2e
    .line 3560
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #@30
    invoke-static {v4}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@37
    move-result-object v1

    #@38
    .line 3561
    .local v1, "layout":Landroid/text/Layout;
    if-eqz v1, :cond_1

    #@3a
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@3c
    if-eq v3, v4, :cond_1

    #@3e
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    #@41
    move-result v4

    #@42
    if-eqz v4, :cond_1

    #@44
    .line 3563
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    #@47
    move-result v4

    #@48
    const/high16 v5, 0x3f000000    # 0.5f

    #@4a
    sub-float/2addr v4, v5

    #@4b
    iget v5, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    #@4d
    int-to-float v5, v5

    #@4e
    sub-float/2addr v4, v5

    #@4f
    .line 3564
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    #@52
    move-result v5

    #@53
    int-to-float v5, v5

    #@54
    .line 3563
    sub-float/2addr v4, v5

    #@55
    .line 3564
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    #@58
    move-result v5

    #@59
    int-to-float v5, v5

    #@5a
    .line 3563
    add-float/2addr v4, v5

    #@5b
    float-to-int v4, v4

    #@5c
    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    #@5e
    .line 3565
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    #@60
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #@62
    invoke-static {v5}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@65
    move-result-object v5

    #@66
    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    #@69
    move-result v5

    #@6a
    add-int/2addr v4, v5

    #@6b
    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    #@6d
    .line 3566
    const/4 v4, 0x1

    #@6e
    iput-boolean v4, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    #@70
    .line 3567
    iget v4, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    #@72
    iget v5, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    #@74
    invoke-virtual {p0, v4, v5, v6, v6}, Landroid/widget/Editor$HandleView;->updatePosition(IIZZ)V

    #@77
    .line 3568
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->postInvalidate()V

    #@7a
    .line 3549
    :cond_1
    return-void

    #@7b
    .line 3557
    .end local v1    # "layout":Landroid/text/Layout;
    :cond_2
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    #@7d
    goto :goto_0
.end method

.method public abstract updatePosition(FF)V
.end method

.method public updatePosition(IIZZ)V
    .locals 6
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, -0x1

    #@2
    .line 3708
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    #@5
    move-result v2

    #@6
    invoke-virtual {p0, v2, p4}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    #@9
    .line 3709
    if-nez p3, :cond_0

    #@b
    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    #@d
    if-eqz v2, :cond_5

    #@f
    .line 3710
    :cond_0
    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    #@11
    if-eqz v2, :cond_3

    #@13
    .line 3712
    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    #@15
    if-ne p1, v2, :cond_1

    #@17
    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    #@19
    if-eq p2, v2, :cond_2

    #@1b
    .line 3713
    :cond_1
    iget v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    #@1d
    iget v3, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    #@1f
    sub-int v3, p1, v3

    #@21
    int-to-float v3, v3

    #@22
    add-float/2addr v2, v3

    #@23
    iput v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    #@25
    .line 3714
    iget v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    #@27
    iget v3, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    #@29
    sub-int v3, p2, v3

    #@2b
    int-to-float v3, v3

    #@2c
    add-float/2addr v2, v3

    #@2d
    iput v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    #@2f
    .line 3715
    iput p1, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    #@31
    .line 3716
    iput p2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    #@33
    .line 3719
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onHandleMoved()V

    #@36
    .line 3722
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->isVisible()Z

    #@39
    move-result v2

    #@3a
    if-eqz v2, :cond_7

    #@3c
    .line 3723
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    #@3e
    add-int v0, p1, v2

    #@40
    .line 3724
    .local v0, "positionX":I
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    #@42
    add-int v1, p2, v2

    #@44
    .line 3725
    .local v1, "positionY":I
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    #@47
    move-result v2

    #@48
    if-eqz v2, :cond_6

    #@4a
    .line 3726
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    #@4c
    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    #@4f
    .line 3737
    .end local v0    # "positionX":I
    .end local v1    # "positionY":I
    :cond_4
    :goto_0
    iput-boolean v5, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    #@51
    .line 3707
    :cond_5
    return-void

    #@52
    .line 3728
    .restart local v0    # "positionX":I
    .restart local v1    # "positionY":I
    :cond_6
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    #@54
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #@56
    invoke-static {v3}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v2, v3, v5, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    #@5d
    goto :goto_0

    #@5e
    .line 3732
    .end local v0    # "positionX":I
    .end local v1    # "positionY":I
    :cond_7
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    #@61
    move-result v2

    #@62
    if-eqz v2, :cond_4

    #@64
    .line 3733
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    #@67
    goto :goto_0
.end method

.method protected abstract updateSelection(I)V
.end method
