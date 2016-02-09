.class public abstract Landroid/widget/CompoundButton;
.super Landroid/widget/Button;
.source "CompoundButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CompoundButton$OnCheckedChangeListener;,
        Landroid/widget/CompoundButton$SavedState;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mBroadcasting:Z

.field private mButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mButtonTintList:Landroid/content/res/ColorStateList;

.field private mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mChecked:Z

.field private mHasButtonTint:Z

.field private mHasButtonTintMode:Z

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 67
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [I

    #@3
    .line 68
    const v1, 0x10100a0

    #@6
    const/4 v2, 0x0

    #@7
    aput v1, v0, v2

    #@9
    .line 67
    sput-object v0, Landroid/widget/CompoundButton;->CHECKED_STATE_SET:[I

    #@b
    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 72
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 76
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 80
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    const/4 v7, 0x2

    #@2
    const/4 v3, 0x0

    #@3
    const/4 v6, 0x1

    #@4
    const/4 v5, 0x0

    #@5
    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@8
    .line 59
    iput-object v3, p0, Landroid/widget/CompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    #@a
    .line 60
    iput-object v3, p0, Landroid/widget/CompoundButton;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    #@c
    .line 61
    iput-boolean v5, p0, Landroid/widget/CompoundButton;->mHasButtonTint:Z

    #@e
    .line 62
    iput-boolean v5, p0, Landroid/widget/CompoundButton;->mHasButtonTintMode:Z

    #@10
    .line 87
    sget-object v3, Lcom/android/internal/R$styleable;->CompoundButton:[I

    #@12
    .line 86
    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@15
    move-result-object v0

    #@16
    .line 89
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@19
    move-result-object v2

    #@1a
    .line 90
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@1c
    .line 91
    invoke-virtual {p0, v2}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1f
    .line 94
    :cond_0
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_1

    #@25
    .line 96
    const/4 v3, -0x1

    #@26
    .line 95
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@29
    move-result v3

    #@2a
    .line 96
    iget-object v4, p0, Landroid/widget/CompoundButton;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2c
    .line 95
    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@2f
    move-result-object v3

    #@30
    iput-object v3, p0, Landroid/widget/CompoundButton;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    #@32
    .line 97
    iput-boolean v6, p0, Landroid/widget/CompoundButton;->mHasButtonTintMode:Z

    #@34
    .line 100
    :cond_1
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@37
    move-result v3

    #@38
    if-eqz v3, :cond_2

    #@3a
    .line 101
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@3d
    move-result-object v3

    #@3e
    iput-object v3, p0, Landroid/widget/CompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    #@40
    .line 102
    iput-boolean v6, p0, Landroid/widget/CompoundButton;->mHasButtonTint:Z

    #@42
    .line 105
    :cond_2
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@45
    move-result v1

    #@46
    .line 107
    .local v1, "checked":Z
    invoke-virtual {p0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    #@49
    .line 109
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@4c
    .line 111
    invoke-direct {p0}, Landroid/widget/CompoundButton;->applyButtonTint()V

    #@4f
    .line 83
    return-void
.end method

.method private applyButtonTint()V
    .locals 2

    #@0
    .prologue
    .line 329
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_3

    #@4
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mHasButtonTint:Z

    #@6
    if-nez v0, :cond_0

    #@8
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mHasButtonTintMode:Z

    #@a
    if-eqz v0, :cond_3

    #@c
    .line 330
    :cond_0
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    #@e
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    #@14
    .line 332
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mHasButtonTint:Z

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 333
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    #@1a
    iget-object v1, p0, Landroid/widget/CompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    #@1c
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    #@1f
    .line 336
    :cond_1
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mHasButtonTintMode:Z

    #@21
    if-eqz v0, :cond_2

    #@23
    .line 337
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    #@25
    iget-object v1, p0, Landroid/widget/CompoundButton;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    #@27
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@2a
    .line 342
    :cond_2
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    #@2c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_3

    #@32
    .line 343
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    #@34
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@3b
    .line 328
    :cond_3
    return-void
.end method


# virtual methods
.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 472
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->drawableHotspotChanged(FF)V

    #@3
    .line 474
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 475
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    #@c
    .line 471
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    #@0
    .prologue
    .line 458
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    #@3
    .line 460
    iget-object v1, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 461
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    #@a
    move-result-object v0

    #@b
    .line 464
    .local v0, "myDrawableState":[I
    iget-object v1, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    #@d
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@10
    .line 466
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    #@13
    .line 457
    .end local v0    # "myDrawableState":[I
    :cond_0
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    #@0
    .prologue
    .line 555
    invoke-super {p0, p1}, Landroid/widget/Button;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    #@3
    .line 556
    const-string/jumbo v0, "checked"

    #@6
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    #@9
    move-result v1

    #@a
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    #@d
    .line 554
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 350
    const-class v0, Landroid/widget/CompoundButton;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getButtonDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 265
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getButtonTintList()Landroid/content/res/ColorStateList;
    .locals 1

    #@0
    .prologue
    .line 297
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    #@0
    .prologue
    .line 325
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    return-object v0
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    #@0
    .prologue
    .line 370
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingLeft()I

    #@3
    move-result v1

    #@4
    .line 371
    .local v1, "padding":I
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isLayoutRtl()Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 372
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    #@c
    .line 373
    .local v0, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@e
    .line 374
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@11
    move-result v2

    #@12
    add-int/2addr v1, v2

    #@13
    .line 377
    .end local v0    # "buttonDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return v1
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    #@0
    .prologue
    .line 382
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingRight()I

    #@3
    move-result v1

    #@4
    .line 383
    .local v1, "padding":I
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isLayoutRtl()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 384
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    #@c
    .line 385
    .local v0, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@e
    .line 386
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@11
    move-result v2

    #@12
    add-int/2addr v1, v2

    #@13
    .line 389
    .end local v0    # "buttonDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return v1
.end method

.method public getHorizontalOffsetForDrawables()I
    .locals 2

    #@0
    .prologue
    .line 397
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    .line 398
    .local v0, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@7
    move-result v1

    #@8
    :goto_0
    return v1

    #@9
    :cond_0
    const/4 v1, 0x0

    #@a
    goto :goto_0
.end method

.method public isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    #@0
    .prologue
    .line 134
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    #@2
    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    #@0
    .prologue
    .line 486
    invoke-super {p0}, Landroid/widget/Button;->jumpDrawablesToCurrentState()V

    #@3
    .line 487
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    #@c
    .line 485
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    #@0
    .prologue
    .line 449
    add-int/lit8 v1, p1, 0x1

    #@2
    invoke-super {p0, v1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    #@5
    move-result-object v0

    #@6
    .line 450
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 451
    sget-object v1, Landroid/widget/CompoundButton;->CHECKED_STATE_SET:[I

    #@e
    invoke-static {v0, v1}, Landroid/widget/CompoundButton;->mergeDrawableStates([I[I)[I

    #@11
    .line 453
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 403
    iget-object v2, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    .line 404
    .local v2, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@4
    .line 405
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getGravity()I

    #@7
    move-result v11

    #@8
    and-int/lit8 v10, v11, 0x70

    #@a
    .line 406
    .local v10, "verticalGravity":I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@d
    move-result v3

    #@e
    .line 407
    .local v3, "drawableHeight":I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@11
    move-result v4

    #@12
    .line 410
    .local v4, "drawableWidth":I
    sparse-switch v10, :sswitch_data_0

    #@15
    .line 418
    const/4 v9, 0x0

    #@16
    .line 420
    .local v9, "top":I
    :goto_0
    add-int v1, v9, v3

    #@18
    .line 421
    .local v1, "bottom":I
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isLayoutRtl()Z

    #@1b
    move-result v11

    #@1c
    if-eqz v11, :cond_2

    #@1e
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWidth()I

    #@21
    move-result v11

    #@22
    sub-int v5, v11, v4

    #@24
    .line 422
    .local v5, "left":I
    :goto_1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isLayoutRtl()Z

    #@27
    move-result v11

    #@28
    if-eqz v11, :cond_3

    #@2a
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWidth()I

    #@2d
    move-result v6

    #@2e
    .line 424
    .local v6, "right":I
    :goto_2
    invoke-virtual {v2, v5, v9, v6, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@31
    .line 426
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;

    #@34
    move-result-object v0

    #@35
    .line 427
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@37
    .line 428
    invoke-virtual {v0, v5, v9, v6, v1}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    #@3a
    .line 432
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v1    # "bottom":I
    .end local v3    # "drawableHeight":I
    .end local v4    # "drawableWidth":I
    .end local v5    # "left":I
    .end local v6    # "right":I
    .end local v9    # "top":I
    .end local v10    # "verticalGravity":I
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    #@3d
    .line 434
    if-eqz v2, :cond_1

    #@3f
    .line 435
    iget v7, p0, Landroid/widget/CompoundButton;->mScrollX:I

    #@41
    .line 436
    .local v7, "scrollX":I
    iget v8, p0, Landroid/widget/CompoundButton;->mScrollY:I

    #@43
    .line 437
    .local v8, "scrollY":I
    if-nez v7, :cond_4

    #@45
    if-nez v8, :cond_4

    #@47
    .line 438
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@4a
    .line 402
    .end local v7    # "scrollX":I
    .end local v8    # "scrollY":I
    :cond_1
    :goto_3
    return-void

    #@4b
    .line 412
    .restart local v3    # "drawableHeight":I
    .restart local v4    # "drawableWidth":I
    .restart local v10    # "verticalGravity":I
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    #@4e
    move-result v11

    #@4f
    sub-int v9, v11, v3

    #@51
    .line 413
    .restart local v9    # "top":I
    goto :goto_0

    #@52
    .line 415
    .end local v9    # "top":I
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    #@55
    move-result v11

    #@56
    sub-int/2addr v11, v3

    #@57
    div-int/lit8 v9, v11, 0x2

    #@59
    .restart local v9    # "top":I
    goto :goto_0

    #@5a
    .line 421
    .restart local v1    # "bottom":I
    :cond_2
    const/4 v5, 0x0

    #@5b
    .restart local v5    # "left":I
    goto :goto_1

    #@5c
    .line 422
    :cond_3
    move v6, v4

    #@5d
    .restart local v6    # "right":I
    goto :goto_2

    #@5e
    .line 440
    .end local v1    # "bottom":I
    .end local v3    # "drawableHeight":I
    .end local v4    # "drawableWidth":I
    .end local v5    # "left":I
    .end local v6    # "right":I
    .end local v9    # "top":I
    .end local v10    # "verticalGravity":I
    .restart local v7    # "scrollX":I
    .restart local v8    # "scrollY":I
    :cond_4
    int-to-float v11, v7

    #@5f
    int-to-float v12, v8

    #@60
    invoke-virtual {p1, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    #@63
    .line 441
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@66
    .line 442
    neg-int v11, v7

    #@67
    int-to-float v11, v11

    #@68
    neg-int v12, v8

    #@69
    int-to-float v12, v12

    #@6a
    invoke-virtual {p1, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    #@6d
    goto :goto_3

    #@6e
    .line 410
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 356
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 357
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    #@5
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    #@8
    .line 355
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    .line 363
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    .line 364
    const/4 v0, 0x1

    #@4
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    #@7
    .line 365
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    #@9
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    #@c
    .line 362
    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 252
    invoke-super {p0, p1}, Landroid/widget/Button;->onResolveDrawables(I)V

    #@3
    .line 253
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 254
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@c
    .line 251
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 545
    check-cast v0, Landroid/widget/CompoundButton$SavedState;

    #@3
    .line 547
    .local v0, "ss":Landroid/widget/CompoundButton$SavedState;
    invoke-virtual {v0}, Landroid/widget/CompoundButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@6
    move-result-object v1

    #@7
    invoke-super {p0, v1}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@a
    .line 548
    iget-boolean v1, v0, Landroid/widget/CompoundButton$SavedState;->checked:Z

    #@c
    invoke-virtual {p0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    #@f
    .line 549
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    #@12
    .line 544
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    #@0
    .prologue
    .line 535
    invoke-super {p0}, Landroid/widget/Button;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v1

    #@4
    .line 537
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/CompoundButton$SavedState;

    #@6
    invoke-direct {v0, v1}, Landroid/widget/CompoundButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@9
    .line 539
    .local v0, "ss":Landroid/widget/CompoundButton$SavedState;
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    #@c
    move-result v2

    #@d
    iput-boolean v2, v0, Landroid/widget/CompoundButton$SavedState;->checked:Z

    #@f
    .line 540
    return-object v0
.end method

.method public performClick()Z
    .locals 2

    #@0
    .prologue
    .line 120
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->toggle()V

    #@3
    .line 122
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    #@6
    move-result v0

    #@7
    .line 123
    .local v0, "handled":Z
    if-nez v0, :cond_0

    #@9
    .line 126
    const/4 v1, 0x0

    #@a
    invoke-virtual {p0, v1}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    #@d
    .line 129
    :cond_0
    return v0
.end method

.method public setButtonDrawable(I)V
    .locals 2
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 210
    if-eqz p1, :cond_0

    #@2
    .line 211
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v0

    #@a
    .line 215
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    #@d
    .line 208
    return-void

    #@e
    .line 213
    :cond_0
    const/4 v0, 0x0

    #@f
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 226
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    #@4
    if-eq v0, p1, :cond_2

    #@6
    .line 227
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 228
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    #@c
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@f
    .line 229
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    #@11
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    #@14
    .line 232
    :cond_0
    iput-object p1, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    #@16
    .line 234
    if-eqz p1, :cond_2

    #@18
    .line 235
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@1b
    .line 236
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getLayoutDirection()I

    #@1e
    move-result v0

    #@1f
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@22
    .line 237
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_1

    #@28
    .line 238
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@2f
    .line 240
    :cond_1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getVisibility()I

    #@32
    move-result v0

    #@33
    if-nez v0, :cond_3

    #@35
    const/4 v0, 0x1

    #@36
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@39
    .line 241
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@3c
    move-result v0

    #@3d
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setMinHeight(I)V

    #@40
    .line 242
    invoke-direct {p0}, Landroid/widget/CompoundButton;->applyButtonTint()V

    #@43
    .line 225
    :cond_2
    return-void

    #@44
    :cond_3
    move v0, v1

    #@45
    .line 240
    goto :goto_0
.end method

.method public setButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 284
    iput-object p1, p0, Landroid/widget/CompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    #@2
    .line 285
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/widget/CompoundButton;->mHasButtonTint:Z

    #@5
    .line 287
    invoke-direct {p0}, Landroid/widget/CompoundButton;->applyButtonTint()V

    #@8
    .line 283
    return-void
.end method

.method public setButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 312
    iput-object p1, p0, Landroid/widget/CompoundButton;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    .line 313
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/widget/CompoundButton;->mHasButtonTintMode:Z

    #@5
    .line 315
    invoke-direct {p0}, Landroid/widget/CompoundButton;->applyButtonTint()V

    #@8
    .line 311
    return-void
.end method

.method public setChecked(Z)V
    .locals 3
    .param p1, "checked"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 143
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    #@3
    if-eq v0, p1, :cond_3

    #@5
    .line 144
    iput-boolean p1, p0, Landroid/widget/CompoundButton;->mChecked:Z

    #@7
    .line 145
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->refreshDrawableState()V

    #@a
    .line 146
    invoke-virtual {p0, v2}, Landroid/widget/CompoundButton;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    #@d
    .line 150
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mBroadcasting:Z

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 151
    return-void

    #@12
    .line 154
    :cond_0
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Landroid/widget/CompoundButton;->mBroadcasting:Z

    #@15
    .line 155
    iget-object v0, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 156
    iget-object v0, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    #@1b
    iget-boolean v1, p0, Landroid/widget/CompoundButton;->mChecked:Z

    #@1d
    invoke-interface {v0, p0, v1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    #@20
    .line 158
    :cond_1
    iget-object v0, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    #@22
    if-eqz v0, :cond_2

    #@24
    .line 159
    iget-object v0, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    #@26
    iget-boolean v1, p0, Landroid/widget/CompoundButton;->mChecked:Z

    #@28
    invoke-interface {v0, p0, v1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    #@2b
    .line 162
    :cond_2
    iput-boolean v2, p0, Landroid/widget/CompoundButton;->mBroadcasting:Z

    #@2d
    .line 142
    :cond_3
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    #@0
    .prologue
    .line 173
    iput-object p1, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    #@2
    .line 172
    return-void
.end method

.method setOnCheckedChangeWidgetListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    #@0
    .prologue
    .line 184
    iput-object p1, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    #@2
    .line 183
    return-void
.end method

.method public toggle()V
    .locals 1

    #@0
    .prologue
    .line 115
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    #@8
    .line 114
    return-void

    #@9
    .line 115
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 481
    invoke-super {p0, p1}, Landroid/widget/Button;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    iget-object v1, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    #@9
    if-ne p1, v1, :cond_1

    #@b
    :cond_0
    :goto_0
    return v0

    #@c
    :cond_1
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method
