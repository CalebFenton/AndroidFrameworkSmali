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

.field private mLastParentXOnScreen:I

.field private mLastParentY:I

.field private mLastParentYOnScreen:I

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
.method private constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V
    .locals 8
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;
    .param p4, "id"    # I

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
    .line 4067
    iput-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #@7
    .line 4068
    invoke-static {p1}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@e
    move-result-object v1

    #@f
    invoke-direct {p0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #@12
    .line 4055
    iput v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    #@14
    .line 4057
    iput-boolean v7, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    #@16
    .line 4061
    iput v2, p0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    #@18
    .line 4065
    iput v2, p0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    #@1a
    .line 4128
    new-array v1, v3, [J

    #@1c
    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    #@1e
    .line 4129
    new-array v1, v3, [I

    #@20
    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    #@22
    .line 4130
    iput v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    #@24
    .line 4131
    iput v5, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    #@26
    .line 4069
    invoke-virtual {p0, p4}, Landroid/widget/Editor$HandleView;->setId(I)V

    #@29
    .line 4070
    new-instance v1, Landroid/widget/PopupWindow;

    #@2b
    invoke-static {p1}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@32
    move-result-object v2

    #@33
    const/4 v3, 0x0

    #@34
    .line 4071
    const v4, 0x10102c8

    #@37
    .line 4070
    invoke-direct {v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3a
    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    #@3c
    .line 4072
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    #@3e
    invoke-virtual {v1, v7}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    #@41
    .line 4073
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    #@43
    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    #@46
    .line 4074
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    #@48
    const/16 v2, 0x3ea

    #@4a
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    #@4d
    .line 4075
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    #@4f
    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    #@52
    .line 4076
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    #@54
    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    #@57
    .line 4077
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    #@59
    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    #@5c
    .line 4079
    iput-object p2, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    #@5e
    .line 4080
    iput-object p3, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    #@60
    .line 4081
    invoke-static {p1}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@67
    move-result-object v1

    #@68
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6b
    move-result-object v1

    #@6c
    .line 4082
    const v2, 0x10500a7

    #@6f
    .line 4081
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@72
    move-result v1

    #@73
    iput v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    #@75
    .line 4084
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    #@78
    .line 4086
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    #@7b
    move-result v0

    #@7c
    .line 4087
    .local v0, "handleHeight":I
    int-to-float v1, v0

    #@7d
    const v2, -0x41666666    # -0.3f

    #@80
    mul-float/2addr v1, v2

    #@81
    iput v1, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    #@83
    .line 4088
    int-to-float v1, v0

    #@84
    const v2, 0x3f333333    # 0.7f

    #@87
    mul-float/2addr v1, v2

    #@88
    iput v1, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    #@8a
    .line 4067
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/widget/Editor$HandleView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;
    .param p4, "id"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    #@3
    return-void
.end method

.method private addPositionToTouchUpFilter(I)V
    .locals 4
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 4139
    iget v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    rem-int/lit8 v0, v0, 0x5

    #@6
    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    #@8
    .line 4140
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    #@a
    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    #@c
    aput p1, v0, v1

    #@e
    .line 4141
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
    .line 4142
    iget v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    #@1a
    add-int/lit8 v0, v0, 0x1

    #@1c
    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    #@1e
    .line 4138
    return-void
.end method

.method private filterOnTouchUp()V
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 4146
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@4
    move-result-wide v4

    #@5
    .line 4147
    .local v4, "now":J
    const/4 v0, 0x0

    #@6
    .line 4148
    .local v0, "i":I
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    #@8
    .line 4149
    .local v2, "index":I
    iget v3, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    #@a
    const/4 v6, 0x5

    #@b
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    #@e
    move-result v1

    #@f
    .line 4150
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
    .line 4151
    add-int/lit8 v0, v0, 0x1

    #@1f
    .line 4152
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
    .line 4155
    :cond_0
    if-lez v0, :cond_1

    #@29
    if-ge v0, v1, :cond_1

    #@2b
    .line 4156
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
    .line 4157
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    #@39
    aget v3, v3, v2

    #@3b
    invoke-virtual {p0, v3, v10}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    #@3e
    .line 4145
    :cond_1
    return-void
.end method

.method private getHorizontalOffset()I
    .locals 4

    #@0
    .prologue
    .line 4340
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    #@3
    move-result v2

    #@4
    .line 4341
    .local v2, "width":I
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@9
    move-result v0

    #@a
    .line 4343
    .local v0, "drawWidth":I
    iget v3, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    #@c
    sparse-switch v3, :sswitch_data_0

    #@f
    .line 4349
    :sswitch_0
    sub-int v3, v2, v0

    #@11
    div-int/lit8 v1, v3, 0x2

    #@13
    .line 4355
    .local v1, "left":I
    :goto_0
    return v1

    #@14
    .line 4345
    .end local v1    # "left":I
    :sswitch_1
    const/4 v1, 0x0

    #@15
    .line 4346
    .restart local v1    # "left":I
    goto :goto_0

    #@16
    .line 4352
    .end local v1    # "left":I
    :sswitch_2
    sub-int v1, v2, v0

    #@18
    .line 4353
    .restart local v1    # "left":I
    goto :goto_0

    #@19
    .line 4343
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
    .line 4183
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
    .line 4179
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
    .line 4214
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 4215
    const/4 v0, 0x1

    #@5
    return v0

    #@6
    .line 4218
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #@8
    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 4219
    const/4 v0, 0x0

    #@13
    return v0

    #@14
    .line 4222
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
    .line 4134
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    #@3
    .line 4135
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    #@6
    .line 4133
    return-void
.end method


# virtual methods
.method protected dismiss()V
    .locals 1

    #@0
    .prologue
    .line 4197
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    #@3
    .line 4198
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    #@5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    #@8
    .line 4199
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    #@b
    .line 4196
    return-void
.end method

.method public abstract getCurrentCursorOffset()I
.end method

.method getCursorHorizontalPosition(Landroid/text/Layout;I)I
    .locals 2
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 4289
    invoke-virtual {p0, p1, p2}, Landroid/widget/Editor$HandleView;->getHorizontal(Landroid/text/Layout;I)F

    #@3
    move-result v0

    #@4
    const/high16 v1, 0x3f000000    # 0.5f

    #@6
    sub-float/2addr v0, v1

    #@7
    float-to-int v0, v0

    #@8
    return v0
.end method

.method protected getCursorOffset()I
    .locals 1

    #@0
    .prologue
    .line 4359
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getHorizontal(Landroid/text/Layout;I)F
    .locals 1
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 4237
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    #@3
    move-result v0

    #@4
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
    .line 4092
    iget v0, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    #@2
    return v0
.end method

.method protected getOffsetAtCoordinate(Landroid/text/Layout;IF)I
    .locals 1
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "line"    # I
    .param p3, "x"    # F

    #@0
    .prologue
    .line 4241
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #@2
    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p2, p3}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public hide()V
    .locals 1

    #@0
    .prologue
    .line 4203
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    #@3
    .line 4205
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #@5
    invoke-static {v0}, Landroid/widget/Editor;->-wrap2(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    #@c
    .line 4202
    return-void
.end method

.method public invalidate()V
    .locals 2

    #@0
    .prologue
    .line 4172
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    #@3
    .line 4173
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 4174
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    #@c
    move-result v0

    #@d
    const/4 v1, 0x1

    #@e
    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    #@11
    .line 4171
    :cond_0
    return-void
.end method

.method protected isAtRtlRun(Landroid/text/Layout;I)Z
    .locals 1
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 4232
    invoke-virtual {p1, p2}, Landroid/text/Layout;->isRtlCharAt(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isDragging()Z
    .locals 1

    #@0
    .prologue
    .line 4426
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    #@2
    return v0
.end method

.method public isShowing()Z
    .locals 1

    #@0
    .prologue
    .line 4209
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
    .line 4162
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
    .line 4431
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 4332
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@5
    move-result v0

    #@6
    .line 4333
    .local v0, "drawWidth":I
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    #@9
    move-result v1

    #@a
    .line 4335
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
    .line 4336
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@1a
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@1d
    .line 4331
    return-void
.end method

.method onHandleMoved()V
    .locals 0

    #@0
    .prologue
    .line 4429
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 4167
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
    .line 4166
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
    .line 4364
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #@4
    invoke-static {v8, p1}, Landroid/widget/Editor;->-wrap21(Landroid/widget/Editor;Landroid/view/MotionEvent;)V

    #@7
    .line 4366
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@a
    move-result v8

    #@b
    packed-switch v8, :pswitch_data_0

    #@e
    .line 4422
    :goto_0
    return v10

    #@f
    .line 4368
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    #@12
    move-result v8

    #@13
    invoke-direct {p0, v8}, Landroid/widget/Editor$HandleView;->startTouchUpFilter(I)V

    #@16
    .line 4370
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #@18
    invoke-static {v8}, Landroid/widget/Editor;->-wrap2(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    #@1b
    move-result-object v4

    #@1c
    .line 4371
    .local v4, "positionListener":Landroid/widget/Editor$PositionListener;
    invoke-virtual {v4}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    #@1f
    move-result v8

    #@20
    iput v8, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    #@22
    .line 4372
    invoke-virtual {v4}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    #@25
    move-result v8

    #@26
    iput v8, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    #@28
    .line 4373
    invoke-virtual {v4}, Landroid/widget/Editor$PositionListener;->getPositionXOnScreen()I

    #@2b
    move-result v8

    #@2c
    iput v8, p0, Landroid/widget/Editor$HandleView;->mLastParentXOnScreen:I

    #@2e
    .line 4374
    invoke-virtual {v4}, Landroid/widget/Editor$PositionListener;->getPositionYOnScreen()I

    #@31
    move-result v8

    #@32
    iput v8, p0, Landroid/widget/Editor$HandleView;->mLastParentYOnScreen:I

    #@34
    .line 4376
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    #@37
    move-result v8

    #@38
    iget v9, p0, Landroid/widget/Editor$HandleView;->mLastParentXOnScreen:I

    #@3a
    int-to-float v9, v9

    #@3b
    sub-float/2addr v8, v9

    #@3c
    iget v9, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    #@3e
    int-to-float v9, v9

    #@3f
    add-float v6, v8, v9

    #@41
    .line 4377
    .local v6, "xInWindow":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    #@44
    move-result v8

    #@45
    iget v9, p0, Landroid/widget/Editor$HandleView;->mLastParentYOnScreen:I

    #@47
    int-to-float v9, v9

    #@48
    sub-float/2addr v8, v9

    #@49
    iget v9, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    #@4b
    int-to-float v9, v9

    #@4c
    add-float v7, v8, v9

    #@4e
    .line 4378
    .local v7, "yInWindow":F
    iget v8, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    #@50
    int-to-float v8, v8

    #@51
    sub-float v8, v6, v8

    #@53
    iput v8, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    #@55
    .line 4379
    iget v8, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    #@57
    int-to-float v8, v8

    #@58
    sub-float v8, v7, v8

    #@5a
    iput v8, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    #@5c
    .line 4381
    iput-boolean v10, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    #@5e
    .line 4382
    const/4 v8, -0x1

    #@5f
    iput v8, p0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    #@61
    goto :goto_0

    #@62
    .line 4387
    .end local v4    # "positionListener":Landroid/widget/Editor$PositionListener;
    .end local v6    # "xInWindow":F
    .end local v7    # "yInWindow":F
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    #@65
    move-result v8

    #@66
    iget v9, p0, Landroid/widget/Editor$HandleView;->mLastParentXOnScreen:I

    #@68
    int-to-float v9, v9

    #@69
    sub-float/2addr v8, v9

    #@6a
    iget v9, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    #@6c
    int-to-float v9, v9

    #@6d
    add-float v6, v8, v9

    #@6f
    .line 4388
    .restart local v6    # "xInWindow":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    #@72
    move-result v8

    #@73
    iget v9, p0, Landroid/widget/Editor$HandleView;->mLastParentYOnScreen:I

    #@75
    int-to-float v9, v9

    #@76
    sub-float/2addr v8, v9

    #@77
    iget v9, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    #@79
    int-to-float v9, v9

    #@7a
    add-float v7, v8, v9

    #@7c
    .line 4391
    .restart local v7    # "yInWindow":F
    iget v8, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    #@7e
    iget v9, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    #@80
    int-to-float v9, v9

    #@81
    sub-float v5, v8, v9

    #@83
    .line 4392
    .local v5, "previousVerticalOffset":F
    iget v8, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    #@85
    int-to-float v8, v8

    #@86
    sub-float v8, v7, v8

    #@88
    iget v9, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    #@8a
    int-to-float v9, v9

    #@8b
    sub-float v0, v8, v9

    #@8d
    .line 4394
    .local v0, "currentVerticalOffset":F
    iget v8, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    #@8f
    cmpg-float v8, v5, v8

    #@91
    if-gez v8, :cond_0

    #@93
    .line 4395
    iget v8, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    #@95
    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    #@98
    move-result v3

    #@99
    .line 4396
    .local v3, "newVerticalOffset":F
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    #@9c
    move-result v3

    #@9d
    .line 4401
    :goto_1
    iget v8, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    #@9f
    int-to-float v8, v8

    #@a0
    add-float/2addr v8, v3

    #@a1
    iput v8, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    #@a3
    .line 4404
    iget v8, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    #@a5
    sub-float v8, v6, v8

    #@a7
    iget v9, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    #@a9
    int-to-float v9, v9

    #@aa
    add-float/2addr v8, v9

    #@ab
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    #@ae
    move-result v9

    #@af
    int-to-float v9, v9

    #@b0
    add-float v1, v8, v9

    #@b2
    .line 4405
    .local v1, "newPosX":F
    iget v8, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    #@b4
    sub-float v8, v7, v8

    #@b6
    iget v9, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    #@b8
    add-float v2, v8, v9

    #@ba
    .line 4407
    .local v2, "newPosY":F
    invoke-virtual {p0, v1, v2}, Landroid/widget/Editor$HandleView;->updatePosition(FF)V

    #@bd
    goto/16 :goto_0

    #@bf
    .line 4398
    .end local v1    # "newPosX":F
    .end local v2    # "newPosY":F
    .end local v3    # "newVerticalOffset":F
    :cond_0
    iget v8, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    #@c1
    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    #@c4
    move-result v3

    #@c5
    .line 4399
    .restart local v3    # "newVerticalOffset":F
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    #@c8
    move-result v3

    #@c9
    goto :goto_1

    #@ca
    .line 4412
    .end local v0    # "currentVerticalOffset":F
    .end local v3    # "newVerticalOffset":F
    .end local v5    # "previousVerticalOffset":F
    .end local v6    # "xInWindow":F
    .end local v7    # "yInWindow":F
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->filterOnTouchUp()V

    #@cd
    .line 4413
    iput-boolean v9, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    #@cf
    .line 4414
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    #@d2
    goto/16 :goto_0

    #@d4
    .line 4418
    :pswitch_3
    iput-boolean v9, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    #@d6
    .line 4419
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    #@d9
    goto/16 :goto_0

    #@db
    .line 4366
    nop

    #@dc
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "forceUpdatePosition"    # Z

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 4251
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #@3
    invoke-static {v4}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@6
    move-result-object v4

    #@7
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@a
    move-result-object v0

    #@b
    .line 4252
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_0

    #@d
    .line 4254
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #@f
    invoke-virtual {v3}, Landroid/widget/Editor;->prepareCursorControllers()V

    #@12
    .line 4255
    return-void

    #@13
    .line 4257
    :cond_0
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #@15
    invoke-static {v4}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@1c
    move-result-object v0

    #@1d
    .line 4259
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    #@1f
    if-eq p1, v4, :cond_4

    #@21
    move v2, v3

    #@22
    .line 4260
    .local v2, "offsetChanged":Z
    :goto_0
    if-nez v2, :cond_1

    #@24
    if-eqz p2, :cond_3

    #@26
    .line 4261
    :cond_1
    if-eqz v2, :cond_2

    #@28
    .line 4262
    invoke-virtual {p0, p1}, Landroid/widget/Editor$HandleView;->updateSelection(I)V

    #@2b
    .line 4263
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    #@2e
    .line 4265
    :cond_2
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    #@31
    move-result v1

    #@32
    .line 4266
    .local v1, "line":I
    iput v1, p0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    #@34
    .line 4268
    invoke-virtual {p0, v0, p1}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    #@37
    move-result v4

    #@38
    iget v5, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    #@3a
    sub-int/2addr v4, v5

    #@3b
    .line 4269
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    #@3e
    move-result v5

    #@3f
    .line 4268
    sub-int/2addr v4, v5

    #@40
    .line 4269
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    #@43
    move-result v5

    #@44
    .line 4268
    add-int/2addr v4, v5

    #@45
    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    #@47
    .line 4270
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    #@4a
    move-result v4

    #@4b
    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    #@4d
    .line 4273
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    #@4f
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #@51
    invoke-static {v5}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@54
    move-result-object v5

    #@55
    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    #@58
    move-result v5

    #@59
    add-int/2addr v4, v5

    #@5a
    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    #@5c
    .line 4274
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    #@5e
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #@60
    invoke-static {v5}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@63
    move-result-object v5

    #@64
    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    #@67
    move-result v5

    #@68
    add-int/2addr v4, v5

    #@69
    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    #@6b
    .line 4276
    iput p1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    #@6d
    .line 4277
    iput-boolean v3, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    #@6f
    .line 4249
    .end local v1    # "line":I
    :cond_3
    return-void

    #@70
    .line 4259
    .end local v2    # "offsetChanged":Z
    :cond_4
    const/4 v2, 0x0

    #@71
    goto :goto_0
.end method

.method public show()V
    .locals 2

    #@0
    .prologue
    .line 4187
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    return-void

    #@7
    .line 4189
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
    .line 4192
    const/4 v0, -0x1

    #@12
    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    #@14
    .line 4193
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    #@17
    move-result v0

    #@18
    const/4 v1, 0x0

    #@19
    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    #@1c
    .line 4186
    return-void
.end method

.method protected updateDrawable()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 4096
    iget-boolean v4, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    #@3
    if-eqz v4, :cond_0

    #@5
    .line 4098
    return-void

    #@6
    .line 4100
    :cond_0
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #@8
    invoke-static {v4}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@f
    move-result-object v1

    #@10
    .line 4101
    .local v1, "layout":Landroid/text/Layout;
    if-nez v1, :cond_1

    #@12
    .line 4102
    return-void

    #@13
    .line 4104
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    #@16
    move-result v2

    #@17
    .line 4105
    .local v2, "offset":I
    invoke-virtual {p0, v1, v2}, Landroid/widget/Editor$HandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    #@1a
    move-result v0

    #@1b
    .line 4106
    .local v0, "isRtlCharAtOffset":Z
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@1d
    .line 4107
    .local v3, "oldDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    #@1f
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    #@21
    :goto_0
    iput-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@23
    .line 4108
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@25
    invoke-virtual {p0, v4, v0}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    #@28
    move-result v4

    #@29
    iput v4, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    #@2b
    .line 4109
    invoke-virtual {p0, v0}, Landroid/widget/Editor$HandleView;->getHorizontalGravity(Z)I

    #@2e
    move-result v4

    #@2f
    iput v4, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    #@31
    .line 4110
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@33
    if-eq v3, v4, :cond_2

    #@35
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    #@38
    move-result v4

    #@39
    if-eqz v4, :cond_2

    #@3b
    .line 4112
    invoke-virtual {p0, v1, v2}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    #@3e
    move-result v4

    #@3f
    iget v5, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    #@41
    sub-int/2addr v4, v5

    #@42
    .line 4113
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    #@45
    move-result v5

    #@46
    .line 4112
    sub-int/2addr v4, v5

    #@47
    .line 4113
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    #@4a
    move-result v5

    #@4b
    .line 4112
    add-int/2addr v4, v5

    #@4c
    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    #@4e
    .line 4114
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    #@50
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #@52
    invoke-static {v5}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@55
    move-result-object v5

    #@56
    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    #@59
    move-result v5

    #@5a
    add-int/2addr v4, v5

    #@5b
    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    #@5d
    .line 4115
    const/4 v4, 0x1

    #@5e
    iput-boolean v4, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    #@60
    .line 4116
    iget v4, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    #@62
    iget v5, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    #@64
    invoke-virtual {p0, v4, v5, v6, v6}, Landroid/widget/Editor$HandleView;->updatePosition(IIZZ)V

    #@67
    .line 4117
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->postInvalidate()V

    #@6a
    .line 4095
    :cond_2
    return-void

    #@6b
    .line 4107
    :cond_3
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    #@6d
    goto :goto_0
.end method

.method public abstract updatePosition(FF)V
.end method

.method public updatePosition(IIZZ)V
    .locals 7
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 4295
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    #@6
    move-result v1

    #@7
    invoke-virtual {p0, v1, p4}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    #@a
    .line 4296
    if-nez p3, :cond_0

    #@c
    iget-boolean v1, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    #@e
    if-eqz v1, :cond_5

    #@10
    .line 4297
    :cond_0
    iget-boolean v1, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    #@12
    if-eqz v1, :cond_3

    #@14
    .line 4299
    iget v1, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    #@16
    if-ne p1, v1, :cond_1

    #@18
    iget v1, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    #@1a
    if-eq p2, v1, :cond_2

    #@1c
    .line 4300
    :cond_1
    iget v1, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    #@1e
    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    #@20
    sub-int v2, p1, v2

    #@22
    int-to-float v2, v2

    #@23
    add-float/2addr v1, v2

    #@24
    iput v1, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    #@26
    .line 4301
    iget v1, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    #@28
    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    #@2a
    sub-int v2, p2, v2

    #@2c
    int-to-float v2, v2

    #@2d
    add-float/2addr v1, v2

    #@2e
    iput v1, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    #@30
    .line 4302
    iput p1, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    #@32
    .line 4303
    iput p2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    #@34
    .line 4306
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onHandleMoved()V

    #@37
    .line 4309
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->isVisible()Z

    #@3a
    move-result v1

    #@3b
    if-eqz v1, :cond_7

    #@3d
    .line 4311
    const/4 v1, 0x2

    #@3e
    new-array v0, v1, [I

    #@40
    iget v1, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    #@42
    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    #@44
    add-int/2addr v1, v2

    #@45
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    #@48
    move-result v2

    #@49
    add-int/2addr v1, v2

    #@4a
    aput v1, v0, v5

    #@4c
    iget v1, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    #@4e
    aput v1, v0, v4

    #@50
    .line 4312
    .local v0, "pts":[I
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #@52
    invoke-static {v1}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@55
    move-result-object v1

    #@56
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->transformFromViewToWindowSpace([I)V

    #@59
    .line 4313
    aget v1, v0, v5

    #@5b
    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    #@5d
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    #@60
    move-result v3

    #@61
    add-int/2addr v2, v3

    #@62
    sub-int/2addr v1, v2

    #@63
    aput v1, v0, v5

    #@65
    .line 4315
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    #@68
    move-result v1

    #@69
    if-eqz v1, :cond_6

    #@6b
    .line 4316
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    #@6d
    aget v2, v0, v5

    #@6f
    aget v3, v0, v4

    #@71
    invoke-virtual {v1, v2, v3, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    #@74
    .line 4326
    .end local v0    # "pts":[I
    :cond_4
    :goto_0
    iput-boolean v5, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    #@76
    .line 4294
    :cond_5
    return-void

    #@77
    .line 4318
    .restart local v0    # "pts":[I
    :cond_6
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    #@79
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #@7b
    invoke-static {v2}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@7e
    move-result-object v2

    #@7f
    aget v3, v0, v5

    #@81
    aget v4, v0, v4

    #@83
    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    #@86
    goto :goto_0

    #@87
    .line 4321
    .end local v0    # "pts":[I
    :cond_7
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    #@8a
    move-result v1

    #@8b
    if-eqz v1, :cond_4

    #@8d
    .line 4322
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    #@90
    goto :goto_0
.end method

.method protected abstract updateSelection(I)V
.end method
