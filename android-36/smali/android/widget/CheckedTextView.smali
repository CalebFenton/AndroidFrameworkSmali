.class public Landroid/widget/CheckedTextView;
.super Landroid/widget/TextView;
.source "CheckedTextView.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CheckedTextView$SavedState;
    }
.end annotation


# static fields
.field private static final greylist-max-o CHECKED_STATE_SET:[I


# instance fields
.field private greylist-max-o mBasePadding:I

.field private blacklist mCheckMarkBlendMode:Landroid/graphics/BlendMode;

.field private greylist mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist mCheckMarkGravity:I

.field private greylist-max-o mCheckMarkResource:I

.field private greylist-max-o mCheckMarkTintList:Landroid/content/res/ColorStateList;

.field private greylist-max-o mCheckMarkWidth:I

.field private greylist-max-o mChecked:Z

.field private greylist-max-o mHasCheckMarkTint:Z

.field private greylist-max-o mHasCheckMarkTintMode:Z

.field private greylist-max-o mNeedRequestlayout:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 75
    const v0, 0x10100a0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 84
    const v0, 0x10103c8

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 89
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    .line 64
    iput-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkBlendMode:Landroid/graphics/BlendMode;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTint:Z

    .line 66
    iput-boolean v0, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTintMode:Z

    .line 70
    const v1, 0x800005

    iput v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkGravity:I

    .line 94
    sget-object v2, Lcom/android/internal/R$styleable;->CheckedTextView:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 96
    .local v7, "a":Landroid/content/res/TypedArray;
    sget-object v5, Lcom/android/internal/R$styleable;->CheckedTextView:[I

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move v8, p3

    move v9, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    .local v4, "context":Landroid/content/Context;
    .local v6, "attrs":Landroid/util/AttributeSet;
    .local v8, "defStyleAttr":I
    .local v9, "defStyleRes":I
    invoke-virtual/range {v3 .. v9}, Landroid/widget/CheckedTextView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 99
    const/4 p1, 0x1

    invoke-virtual {v7, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 100
    .local p2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_2c

    .line 101
    invoke-virtual {p0, p2}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    :cond_2c
    const/4 p3, 0x3

    invoke-virtual {v7, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_42

    .line 105
    const/4 p4, -0x1

    invoke-virtual {v7, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iget-object p4, v3, Landroid/widget/CheckedTextView;->mCheckMarkBlendMode:Landroid/graphics/BlendMode;

    invoke-static {p3, p4}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object p3

    iput-object p3, v3, Landroid/widget/CheckedTextView;->mCheckMarkBlendMode:Landroid/graphics/BlendMode;

    .line 108
    iput-boolean p1, v3, Landroid/widget/CheckedTextView;->mHasCheckMarkTintMode:Z

    .line 111
    :cond_42
    const/4 p3, 0x2

    invoke-virtual {v7, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_51

    .line 112
    invoke-virtual {v7, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, v3, Landroid/widget/CheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    .line 113
    iput-boolean p1, v3, Landroid/widget/CheckedTextView;->mHasCheckMarkTint:Z

    .line 116
    :cond_51
    const/4 p1, 0x4

    invoke-virtual {v7, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, v3, Landroid/widget/CheckedTextView;->mCheckMarkGravity:I

    .line 118
    invoke-virtual {v7, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 119
    .local p1, "checked":Z
    invoke-virtual {p0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 121
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->applyCheckMarkTint()V

    .line 124
    return-void
.end method

.method private greylist-max-o applyCheckMarkTint()V
    .registers 3

    .line 324
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTint:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTintMode:Z

    if-eqz v0, :cond_3b

    .line 325
    :cond_c
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 327
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTint:Z

    if-eqz v0, :cond_1f

    .line 328
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 331
    :cond_1f
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTintMode:Z

    if-eqz v0, :cond_2a

    .line 332
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 337
    :cond_2a
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 338
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 341
    :cond_3b
    return-void
.end method

.method private greylist-max-o isCheckMarkAtStart()Z
    .registers 4

    .line 423
    iget v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkGravity:I

    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getLayoutDirection()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 424
    .local v0, "gravity":I
    and-int/lit8 v1, v0, 0x7

    .line 425
    .local v1, "hgrav":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    return v2
.end method

.method private greylist-max-o setBasePadding(Z)V
    .registers 3
    .param p1, "checkmarkAtStart"    # Z

    .line 415
    if-eqz p1, :cond_7

    .line 416
    iget v0, p0, Landroid/widget/CheckedTextView;->mPaddingLeft:I

    iput v0, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    goto :goto_b

    .line 418
    :cond_7
    iget v0, p0, Landroid/widget/CheckedTextView;->mPaddingRight:I

    iput v0, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    .line 420
    :goto_b
    return-void
.end method

.method private greylist-max-o setCheckMarkDrawableInternal(Landroid/graphics/drawable/Drawable;I)V
    .registers 6
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "resId"    # I

    .line 192
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    .line 193
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 194
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    :cond_f
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_17

    move v0, v1

    goto :goto_18

    :cond_17
    move v0, v2

    :goto_18
    iput-boolean v0, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    .line 199
    if-eqz p1, :cond_44

    .line 200
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 201
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_26

    goto :goto_27

    :cond_26
    move v1, v2

    :goto_27
    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 202
    sget-object v0, Landroid/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 205
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setMinHeight(I)V

    .line 206
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    .line 208
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_46

    .line 210
    :cond_44
    iput v2, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    .line 213
    :goto_46
    iput-object p1, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 214
    iput p2, p0, Landroid/widget/CheckedTextView;->mCheckMarkResource:I

    .line 216
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->applyCheckMarkTint()V

    .line 220
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->resolvePadding()V

    .line 221
    return-void
.end method

.method private greylist-max-o updatePadding()V
    .registers 6

    .line 398
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->resetPaddingToInitialValues()V

    .line 399
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    .line 400
    iget v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    iget v1, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    add-int/2addr v0, v1

    goto :goto_f

    :cond_d
    iget v0, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    .line 401
    .local v0, "newPadding":I
    :goto_f
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->isCheckMarkAtStart()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_25

    .line 402
    iget-boolean v1, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    iget v4, p0, Landroid/widget/CheckedTextView;->mPaddingLeft:I

    if-eq v4, v0, :cond_1e

    goto :goto_1f

    :cond_1e
    move v2, v3

    :goto_1f
    or-int/2addr v1, v2

    iput-boolean v1, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    .line 403
    iput v0, p0, Landroid/widget/CheckedTextView;->mPaddingLeft:I

    goto :goto_32

    .line 405
    :cond_25
    iget-boolean v1, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    iget v4, p0, Landroid/widget/CheckedTextView;->mPaddingRight:I

    if-eq v4, v0, :cond_2c

    goto :goto_2d

    :cond_2c
    move v2, v3

    :goto_2d
    or-int/2addr v1, v2

    iput-boolean v1, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    .line 406
    iput v0, p0, Landroid/widget/CheckedTextView;->mPaddingRight:I

    .line 408
    :goto_32
    iget-boolean v1, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    if-eqz v1, :cond_3b

    .line 409
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->requestLayout()V

    .line 410
    iput-boolean v3, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    .line 412
    :cond_3b
    return-void
.end method


# virtual methods
.method public whitelist drawableHotspotChanged(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 493
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->drawableHotspotChanged(FF)V

    .line 495
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 496
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 498
    :cond_c
    return-void
.end method

.method protected whitelist drawableStateChanged()V
    .registers 3

    .line 482
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 484
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 485
    .local v0, "checkMarkDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 486
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 487
    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 489
    :cond_1a
    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    .line 590
    invoke-super {p0, p1}, Landroid/widget/TextView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 591
    const-string/jumbo v0, "text:checked"

    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 592
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 502
    const-class v0, Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 379
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getCheckMarkTintBlendMode()Landroid/graphics/BlendMode;
    .registers 2

    .line 320
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkBlendMode:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public whitelist getCheckMarkTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 255
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getCheckMarkTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 304
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkBlendMode:Landroid/graphics/BlendMode;

    if-eqz v0, :cond_b

    .line 305
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkBlendMode:Landroid/graphics/BlendMode;

    invoke-static {v0}, Landroid/graphics/BlendMode;->blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 304
    :goto_c
    return-object v0
.end method

.method protected greylist-max-o internalSetPadding(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 387
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->internalSetPadding(IIII)V

    .line 388
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->isCheckMarkAtStart()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/CheckedTextView;->setBasePadding(Z)V

    .line 389
    return-void
.end method

.method public whitelist isChecked()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 133
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    return v0
.end method

.method public whitelist jumpDrawablesToCurrentState()V
    .registers 2

    .line 355
    invoke-super {p0}, Landroid/widget/TextView;->jumpDrawablesToCurrentState()V

    .line 357
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 358
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 360
    :cond_c
    return-void
.end method

.method protected whitelist onCreateDrawableState(I)[I
    .registers 4
    .param p1, "extraSpace"    # I

    .line 473
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 474
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 475
    sget-object v1, Landroid/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/widget/CheckedTextView;->mergeDrawableStates([I[I)[I

    .line 477
    :cond_11
    return-object v0
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 430
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 432
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 433
    .local v0, "checkMarkDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_5a

    .line 434
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, 0x70

    .line 435
    .local v1, "verticalGravity":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 437
    .local v2, "height":I
    const/4 v3, 0x0

    .line 439
    .local v3, "y":I
    sparse-switch v1, :sswitch_data_5c

    goto :goto_24

    .line 441
    :sswitch_16
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getHeight()I

    move-result v4

    sub-int v3, v4, v2

    .line 442
    goto :goto_24

    .line 444
    :sswitch_1d
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    div-int/lit8 v3, v4, 0x2

    .line 448
    :goto_24
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->isCheckMarkAtStart()Z

    move-result v4

    .line 449
    .local v4, "checkMarkAtStart":Z
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getWidth()I

    move-result v5

    .line 450
    .local v5, "width":I
    move v6, v3

    .line 451
    .local v6, "top":I
    add-int v7, v6, v2

    .line 454
    .local v7, "bottom":I
    if-eqz v4, :cond_37

    .line 455
    iget v8, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    .line 456
    .local v8, "left":I
    iget v9, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    add-int/2addr v9, v8

    .local v9, "right":I
    goto :goto_3f

    .line 458
    .end local v8    # "left":I
    .end local v9    # "right":I
    :cond_37
    iget v8, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    sub-int v9, v5, v8

    .line 459
    .restart local v9    # "right":I
    iget v8, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    sub-int v8, v9, v8

    .line 461
    .restart local v8    # "left":I
    :goto_3f
    iget v10, p0, Landroid/widget/CheckedTextView;->mScrollX:I

    add-int/2addr v10, v8

    iget v11, p0, Landroid/widget/CheckedTextView;->mScrollX:I

    add-int/2addr v11, v9

    invoke-virtual {v0, v10, v6, v11, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 462
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 464
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 465
    .local v10, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_5a

    .line 466
    iget v11, p0, Landroid/widget/CheckedTextView;->mScrollX:I

    add-int/2addr v11, v8

    iget v12, p0, Landroid/widget/CheckedTextView;->mScrollX:I

    add-int/2addr v12, v9

    invoke-virtual {v10, v11, v6, v12, v7}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 469
    .end local v1    # "verticalGravity":I
    .end local v2    # "height":I
    .end local v3    # "y":I
    .end local v4    # "checkMarkAtStart":Z
    .end local v5    # "width":I
    .end local v6    # "top":I
    .end local v7    # "bottom":I
    .end local v8    # "left":I
    .end local v9    # "right":I
    .end local v10    # "background":Landroid/graphics/drawable/Drawable;
    :cond_5a
    return-void

    nop

    :sswitch_data_5c
    .sparse-switch
        0x10 -> :sswitch_1d
        0x50 -> :sswitch_16
    .end sparse-switch
.end method

.method public greylist-max-o onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 570
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 571
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 572
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 577
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 578
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 579
    invoke-static {}, Landroid/view/accessibility/Flags;->triStateChecked()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 580
    iget-boolean v1, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    if-eqz v1, :cond_12

    goto :goto_13

    .line 581
    :cond_12
    const/4 v0, 0x0

    .line 580
    :goto_13
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(I)V

    goto :goto_1c

    .line 583
    :cond_17
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 585
    :goto_1c
    return-void
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 560
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckedTextView$SavedState;

    .line 562
    .local v0, "ss":Landroid/widget/CheckedTextView$SavedState;
    invoke-virtual {v0}, Landroid/widget/CheckedTextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 563
    iget-boolean v1, v0, Landroid/widget/CheckedTextView$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 564
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->requestLayout()V

    .line 565
    return-void
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .registers 2
    .param p1, "layoutDirection"    # I

    .line 393
    invoke-super {p0, p1}, Landroid/widget/TextView;->onRtlPropertiesChanged(I)V

    .line 394
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->updatePadding()V

    .line 395
    return-void
.end method

.method public whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 550
    invoke-super {p0}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 552
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/CheckedTextView$SavedState;

    invoke-direct {v1, v0}, Landroid/widget/CheckedTextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 554
    .local v1, "ss":Landroid/widget/CheckedTextView$SavedState;
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Landroid/widget/CheckedTextView$SavedState;->checked:Z

    .line 555
    return-object v1
.end method

.method public whitelist setCheckMarkDrawable(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 168
    if-eqz p1, :cond_7

    iget v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkResource:I

    if-ne p1, v0, :cond_7

    .line 169
    return-void

    .line 172
    :cond_7
    if-eqz p1, :cond_12

    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 173
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_13
    invoke-direct {p0, v0, p1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawableInternal(Landroid/graphics/drawable/Drawable;I)V

    .line 174
    return-void
.end method

.method public whitelist setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CheckedTextView;->setCheckMarkDrawableInternal(Landroid/graphics/drawable/Drawable;I)V

    .line 189
    return-void
.end method

.method public whitelist setCheckMarkTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/BlendMode;

    .line 286
    iput-object p1, p0, Landroid/widget/CheckedTextView;->mCheckMarkBlendMode:Landroid/graphics/BlendMode;

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTintMode:Z

    .line 289
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->applyCheckMarkTint()V

    .line 290
    return-void
.end method

.method public whitelist setCheckMarkTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 239
    iput-object p1, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTint:Z

    .line 242
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->applyCheckMarkTint()V

    .line 243
    return-void
.end method

.method public whitelist setCheckMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 270
    if-eqz p1, :cond_9

    .line 271
    iget v0, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 270
    :goto_a
    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setCheckMarkTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 272
    return-void
.end method

.method public whitelist setChecked(Z)V
    .registers 3
    .param p1, "checked"    # Z

    .line 143
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    if-eq v0, p1, :cond_18

    .line 144
    iput-boolean p1, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    .line 145
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->refreshDrawableState()V

    .line 146
    invoke-static {}, Landroid/view/accessibility/Flags;->triStateChecked()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 147
    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 150
    :cond_14
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 153
    :cond_18
    return-void
.end method

.method public whitelist setVisibility(I)V
    .registers 5
    .param p1, "visibility"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 346
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    .line 349
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez p1, :cond_e

    const/4 v2, 0x1

    goto :goto_f

    :cond_e
    move v2, v1

    :goto_f
    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 351
    :cond_12
    return-void
.end method

.method public whitelist toggle()V
    .registers 2

    .line 127
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 128
    return-void
.end method

.method protected whitelist verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 364
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_d

    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method
