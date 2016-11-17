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
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mBasePadding:I

.field private mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

.field private mCheckMarkGravity:I

.field private mCheckMarkResource:I

.field private mCheckMarkTintList:Landroid/content/res/ColorStateList;

.field private mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mCheckMarkWidth:I

.field private mChecked:Z

.field private mHasCheckMarkTint:Z

.field private mHasCheckMarkTintMode:Z

.field private mNeedRequestlayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 68
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [I

    #@3
    .line 69
    const v1, 0x10100a0

    #@6
    const/4 v2, 0x0

    #@7
    aput v1, v0, v2

    #@9
    .line 68
    sput-object v0, Landroid/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    #@b
    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 73
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 77
    const v0, 0x10103c8

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 81
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 80
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
    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@8
    .line 57
    iput-object v3, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    #@a
    .line 58
    iput-object v3, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    #@c
    .line 59
    iput-boolean v5, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTint:Z

    #@e
    .line 60
    iput-boolean v5, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTintMode:Z

    #@10
    .line 64
    const v3, 0x800005

    #@13
    iput v3, p0, Landroid/widget/CheckedTextView;->mCheckMarkGravity:I

    #@15
    .line 88
    sget-object v3, Lcom/android/internal/R$styleable;->CheckedTextView:[I

    #@17
    .line 87
    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@1a
    move-result-object v0

    #@1b
    .line 90
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@1e
    move-result-object v2

    #@1f
    .line 91
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@21
    .line 92
    invoke-virtual {p0, v2}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    #@24
    .line 95
    :cond_0
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_1

    #@2a
    .line 97
    const/4 v3, -0x1

    #@2b
    .line 96
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@2e
    move-result v3

    #@2f
    .line 97
    iget-object v4, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    #@31
    .line 96
    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@34
    move-result-object v3

    #@35
    iput-object v3, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    #@37
    .line 98
    iput-boolean v6, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTintMode:Z

    #@39
    .line 101
    :cond_1
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@3c
    move-result v3

    #@3d
    if-eqz v3, :cond_2

    #@3f
    .line 102
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@42
    move-result-object v3

    #@43
    iput-object v3, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    #@45
    .line 103
    iput-boolean v6, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTint:Z

    #@47
    .line 106
    :cond_2
    const/4 v3, 0x4

    #@48
    const v4, 0x800005

    #@4b
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@4e
    move-result v3

    #@4f
    iput v3, p0, Landroid/widget/CheckedTextView;->mCheckMarkGravity:I

    #@51
    .line 108
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@54
    move-result v1

    #@55
    .line 109
    .local v1, "checked":Z
    invoke-virtual {p0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    #@58
    .line 111
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@5b
    .line 113
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->applyCheckMarkTint()V

    #@5e
    .line 84
    return-void
.end method

.method private applyCheckMarkTint()V
    .locals 2

    #@0
    .prologue
    .line 275
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_3

    #@4
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTint:Z

    #@6
    if-nez v0, :cond_0

    #@8
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTintMode:Z

    #@a
    if-eqz v0, :cond_3

    #@c
    .line 276
    :cond_0
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    #@e
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    #@14
    .line 278
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTint:Z

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 279
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    #@1a
    iget-object v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    #@1c
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    #@1f
    .line 282
    :cond_1
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTintMode:Z

    #@21
    if-eqz v0, :cond_2

    #@23
    .line 283
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    #@25
    iget-object v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    #@27
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@2a
    .line 288
    :cond_2
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    #@2c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_3

    #@32
    .line 289
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    #@34
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getDrawableState()[I

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@3b
    .line 274
    :cond_3
    return-void
.end method

.method private isCheckMarkAtStart()Z
    .locals 4

    #@0
    .prologue
    .line 373
    iget v2, p0, Landroid/widget/CheckedTextView;->mCheckMarkGravity:I

    #@2
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getLayoutDirection()I

    #@5
    move-result v3

    #@6
    invoke-static {v2, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    #@9
    move-result v0

    #@a
    .line 374
    .local v0, "gravity":I
    and-int/lit8 v1, v0, 0x7

    #@c
    .line 375
    .local v1, "hgrav":I
    const/4 v2, 0x3

    #@d
    if-ne v1, v2, :cond_0

    #@f
    const/4 v2, 0x1

    #@10
    :goto_0
    return v2

    #@11
    :cond_0
    const/4 v2, 0x0

    #@12
    goto :goto_0
.end method

.method private setBasePadding(Z)V
    .locals 1
    .param p1, "checkmarkAtStart"    # Z

    #@0
    .prologue
    .line 365
    if-eqz p1, :cond_0

    #@2
    .line 366
    iget v0, p0, Landroid/widget/CheckedTextView;->mPaddingLeft:I

    #@4
    iput v0, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    #@6
    .line 364
    :goto_0
    return-void

    #@7
    .line 368
    :cond_0
    iget v0, p0, Landroid/widget/CheckedTextView;->mPaddingRight:I

    #@9
    iput v0, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    #@b
    goto :goto_0
.end method

.method private setCheckMarkDrawableInternal(Landroid/graphics/drawable/Drawable;I)V
    .locals 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "resId"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 177
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 178
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@c
    .line 179
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    #@e
    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    #@11
    .line 182
    :cond_0
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    #@13
    if-eq p1, v0, :cond_1

    #@15
    move v0, v1

    #@16
    :goto_0
    iput-boolean v0, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    #@18
    .line 184
    if-eqz p1, :cond_3

    #@1a
    .line 185
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@1d
    .line 186
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getVisibility()I

    #@20
    move-result v0

    #@21
    if-nez v0, :cond_2

    #@23
    :goto_1
    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@26
    .line 187
    sget-object v0, Landroid/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    #@28
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@2b
    .line 190
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@2e
    move-result v0

    #@2f
    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setMinHeight(I)V

    #@32
    .line 191
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@35
    move-result v0

    #@36
    iput v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    #@38
    .line 193
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getDrawableState()[I

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@3f
    .line 198
    :goto_2
    iput-object p1, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    #@41
    .line 199
    iput p2, p0, Landroid/widget/CheckedTextView;->mCheckMarkResource:I

    #@43
    .line 201
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->applyCheckMarkTint()V

    #@46
    .line 205
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->resolvePadding()V

    #@49
    .line 176
    return-void

    #@4a
    :cond_1
    move v0, v2

    #@4b
    .line 182
    goto :goto_0

    #@4c
    :cond_2
    move v1, v2

    #@4d
    .line 186
    goto :goto_1

    #@4e
    .line 195
    :cond_3
    iput v2, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    #@50
    goto :goto_2
.end method

.method private updatePadding()V
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 348
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->resetPaddingToInitialValues()V

    #@5
    .line 349
    iget-object v3, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    #@7
    if-eqz v3, :cond_1

    #@9
    .line 350
    iget v3, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    #@b
    iget v4, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    #@d
    add-int v0, v3, v4

    #@f
    .line 351
    .local v0, "newPadding":I
    :goto_0
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->isCheckMarkAtStart()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_3

    #@15
    .line 352
    iget-boolean v3, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    #@17
    iget v4, p0, Landroid/widget/CheckedTextView;->mPaddingLeft:I

    #@19
    if-eq v4, v0, :cond_2

    #@1b
    :goto_1
    or-int/2addr v1, v3

    #@1c
    iput-boolean v1, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    #@1e
    .line 353
    iput v0, p0, Landroid/widget/CheckedTextView;->mPaddingLeft:I

    #@20
    .line 358
    :goto_2
    iget-boolean v1, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    #@22
    if-eqz v1, :cond_0

    #@24
    .line 359
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->requestLayout()V

    #@27
    .line 360
    iput-boolean v2, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    #@29
    .line 347
    :cond_0
    return-void

    #@2a
    .line 350
    .end local v0    # "newPadding":I
    :cond_1
    iget v0, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    #@2c
    .restart local v0    # "newPadding":I
    goto :goto_0

    #@2d
    :cond_2
    move v1, v2

    #@2e
    .line 352
    goto :goto_1

    #@2f
    .line 355
    :cond_3
    iget-boolean v3, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    #@31
    iget v4, p0, Landroid/widget/CheckedTextView;->mPaddingRight:I

    #@33
    if-eq v4, v0, :cond_4

    #@35
    :goto_3
    or-int/2addr v1, v3

    #@36
    iput-boolean v1, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    #@38
    .line 356
    iput v0, p0, Landroid/widget/CheckedTextView;->mPaddingRight:I

    #@3a
    goto :goto_2

    #@3b
    :cond_4
    move v1, v2

    #@3c
    .line 355
    goto :goto_3
.end method


# virtual methods
.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 443
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->drawableHotspotChanged(FF)V

    #@3
    .line 445
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 446
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    #@c
    .line 442
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    #@0
    .prologue
    .line 432
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    #@3
    .line 434
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    .line 435
    .local v0, "checkMarkDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 436
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getDrawableState()[I

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@14
    move-result v1

    #@15
    .line 435
    if-eqz v1, :cond_0

    #@17
    .line 437
    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1a
    .line 431
    :cond_0
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    #@0
    .prologue
    .line 535
    invoke-super {p0, p1}, Landroid/widget/TextView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    #@3
    .line 536
    const-string/jumbo v0, "text:checked"

    #@6
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    #@9
    move-result v1

    #@a
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    #@d
    .line 534
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 452
    const-class v0, Landroid/widget/CheckedTextView;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 329
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getCheckMarkTintList()Landroid/content/res/ColorStateList;
    .locals 1

    #@0
    .prologue
    .line 239
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getCheckMarkTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    #@0
    .prologue
    .line 271
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    return-object v0
.end method

.method protected internalSetPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 337
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->internalSetPadding(IIII)V

    #@3
    .line 338
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->isCheckMarkAtStart()Z

    #@6
    move-result v0

    #@7
    invoke-direct {p0, v0}, Landroid/widget/CheckedTextView;->setBasePadding(Z)V

    #@a
    .line 336
    return-void
.end method

.method public isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    #@0
    .prologue
    .line 122
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    #@2
    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    #@0
    .prologue
    .line 306
    invoke-super {p0}, Landroid/widget/TextView;->jumpDrawablesToCurrentState()V

    #@3
    .line 308
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 309
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    #@c
    .line 305
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    #@0
    .prologue
    .line 423
    add-int/lit8 v1, p1, 0x1

    #@2
    invoke-super {p0, v1}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    #@5
    move-result-object v0

    #@6
    .line 424
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 425
    sget-object v1, Landroid/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    #@e
    invoke-static {v0, v1}, Landroid/widget/CheckedTextView;->mergeDrawableStates([I[I)[I

    #@11
    .line 427
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 380
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    #@3
    .line 382
    iget-object v3, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    .line 383
    .local v3, "checkMarkDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    #@7
    .line 384
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getGravity()I

    #@a
    move-result v11

    #@b
    and-int/lit8 v8, v11, 0x70

    #@d
    .line 385
    .local v8, "verticalGravity":I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@10
    move-result v4

    #@11
    .line 387
    .local v4, "height":I
    const/4 v10, 0x0

    #@12
    .line 389
    .local v10, "y":I
    sparse-switch v8, :sswitch_data_0

    #@15
    .line 398
    :goto_0
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->isCheckMarkAtStart()Z

    #@18
    move-result v2

    #@19
    .line 399
    .local v2, "checkMarkAtStart":Z
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getWidth()I

    #@1c
    move-result v9

    #@1d
    .line 400
    .local v9, "width":I
    move v7, v10

    #@1e
    .line 401
    .local v7, "top":I
    add-int v1, v10, v4

    #@20
    .line 404
    .local v1, "bottom":I
    if-eqz v2, :cond_1

    #@22
    .line 405
    iget v5, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    #@24
    .line 406
    .local v5, "left":I
    iget v11, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    #@26
    add-int v6, v5, v11

    #@28
    .line 411
    .local v6, "right":I
    :goto_1
    iget v11, p0, Landroid/widget/CheckedTextView;->mScrollX:I

    #@2a
    add-int/2addr v11, v5

    #@2b
    iget v12, p0, Landroid/widget/CheckedTextView;->mScrollX:I

    #@2d
    add-int/2addr v12, v6

    #@2e
    invoke-virtual {v3, v11, v7, v12, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@31
    .line 412
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@34
    .line 414
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    #@37
    move-result-object v0

    #@38
    .line 415
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@3a
    .line 416
    iget v11, p0, Landroid/widget/CheckedTextView;->mScrollX:I

    #@3c
    add-int/2addr v11, v5

    #@3d
    iget v12, p0, Landroid/widget/CheckedTextView;->mScrollX:I

    #@3f
    add-int/2addr v12, v6

    #@40
    invoke-virtual {v0, v11, v7, v12, v1}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    #@43
    .line 379
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v1    # "bottom":I
    .end local v2    # "checkMarkAtStart":Z
    .end local v4    # "height":I
    .end local v5    # "left":I
    .end local v6    # "right":I
    .end local v7    # "top":I
    .end local v8    # "verticalGravity":I
    .end local v9    # "width":I
    .end local v10    # "y":I
    :cond_0
    return-void

    #@44
    .line 391
    .restart local v4    # "height":I
    .restart local v8    # "verticalGravity":I
    .restart local v10    # "y":I
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getHeight()I

    #@47
    move-result v11

    #@48
    sub-int v10, v11, v4

    #@4a
    .line 392
    goto :goto_0

    #@4b
    .line 394
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getHeight()I

    #@4e
    move-result v11

    #@4f
    sub-int/2addr v11, v4

    #@50
    div-int/lit8 v10, v11, 0x2

    #@52
    goto :goto_0

    #@53
    .line 408
    .restart local v1    # "bottom":I
    .restart local v2    # "checkMarkAtStart":Z
    .restart local v7    # "top":I
    .restart local v9    # "width":I
    :cond_1
    iget v11, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    #@55
    sub-int v6, v9, v11

    #@57
    .line 409
    .restart local v6    # "right":I
    iget v11, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    #@59
    sub-int v5, v6, v11

    #@5b
    .restart local v5    # "left":I
    goto :goto_1

    #@5c
    .line 389
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
    .line 520
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 521
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    #@5
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    #@8
    .line 519
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    .line 527
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    .line 528
    const/4 v0, 0x1

    #@4
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    #@7
    .line 529
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    #@9
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    #@c
    .line 526
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 510
    check-cast v0, Landroid/widget/CheckedTextView$SavedState;

    #@3
    .line 512
    .local v0, "ss":Landroid/widget/CheckedTextView$SavedState;
    invoke-virtual {v0}, Landroid/widget/CheckedTextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@6
    move-result-object v1

    #@7
    invoke-super {p0, v1}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@a
    .line 513
    iget-boolean v1, v0, Landroid/widget/CheckedTextView$SavedState;->checked:Z

    #@c
    invoke-virtual {p0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    #@f
    .line 514
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->requestLayout()V

    #@12
    .line 509
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 343
    invoke-super {p0, p1}, Landroid/widget/TextView;->onRtlPropertiesChanged(I)V

    #@3
    .line 344
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->updatePadding()V

    #@6
    .line 342
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    #@0
    .prologue
    .line 500
    invoke-super {p0}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v1

    #@4
    .line 502
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/CheckedTextView$SavedState;

    #@6
    invoke-direct {v0, v1}, Landroid/widget/CheckedTextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@9
    .line 504
    .local v0, "ss":Landroid/widget/CheckedTextView$SavedState;
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    #@c
    move-result v2

    #@d
    iput-boolean v2, v0, Landroid/widget/CheckedTextView$SavedState;->checked:Z

    #@f
    .line 505
    return-object v0
.end method

.method public setCheckMarkDrawable(I)V
    .locals 2
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 153
    if-eqz p1, :cond_0

    #@2
    iget v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkResource:I

    #@4
    if-ne p1, v1, :cond_0

    #@6
    .line 154
    return-void

    #@7
    .line 157
    :cond_0
    if-eqz p1, :cond_1

    #@9
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getContext()Landroid/content/Context;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@10
    move-result-object v0

    #@11
    .line 158
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-direct {p0, v0, p1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawableInternal(Landroid/graphics/drawable/Drawable;I)V

    #@14
    .line 152
    return-void

    #@15
    .line 157
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v0, 0x0

    #@16
    goto :goto_0
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 173
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/CheckedTextView;->setCheckMarkDrawableInternal(Landroid/graphics/drawable/Drawable;I)V

    #@4
    .line 172
    return-void
.end method

.method public setCheckMarkTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 224
    iput-object p1, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    #@2
    .line 225
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTint:Z

    #@5
    .line 227
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->applyCheckMarkTint()V

    #@8
    .line 223
    return-void
.end method

.method public setCheckMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 254
    iput-object p1, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    .line 255
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTintMode:Z

    #@5
    .line 257
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->applyCheckMarkTint()V

    #@8
    .line 253
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    #@0
    .prologue
    .line 132
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 133
    iput-boolean p1, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    #@6
    .line 134
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->refreshDrawableState()V

    #@9
    .line 136
    const/4 v0, 0x0

    #@a
    .line 135
    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    #@d
    .line 131
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 297
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    #@4
    .line 299
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 300
    iget-object v2, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    #@a
    if-nez p1, :cond_1

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@10
    .line 296
    :cond_0
    return-void

    #@11
    :cond_1
    move v0, v1

    #@12
    .line 300
    goto :goto_0
.end method

.method public toggle()V
    .locals 1

    #@0
    .prologue
    .line 117
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    #@8
    .line 116
    return-void

    #@9
    .line 117
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 315
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eq p1, v0, :cond_0

    #@4
    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0
.end method
