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
.field private static final greylist-max-o CHECKED_STATE_SET:[I

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String;


# instance fields
.field private greylist mBroadcasting:Z

.field private blacklist mButtonBlendMode:Landroid/graphics/BlendMode;

.field private greylist mButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mButtonTintList:Landroid/content/res/ColorStateList;

.field private greylist-max-o mChecked:Z

.field private greylist-max-o mCheckedFromResource:Z

.field private blacklist mCustomStateDescription:Ljava/lang/CharSequence;

.field private blacklist mHasButtonBlendMode:Z

.field private greylist-max-o mHasButtonTint:Z

.field private greylist mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private greylist-max-o mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$Tw3bCttQIslKoH1amu7og2UrOh0(Landroid/widget/CompoundButton;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/CompoundButton;->lambda$setButtonIconAsync$1(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$cXrKv5hs1cL0siq3n9LJ8GVwBD0(Landroid/widget/CompoundButton;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/CompoundButton;->lambda$setButtonDrawableAsync$0(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 66
    const-class v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/CompoundButton;->LOG_TAG:Ljava/lang/String;

    .line 89
    const v0, 0x10100a0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/widget/CompoundButton;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 103
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 106
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/CompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    .line 75
    iput-object v0, p0, Landroid/widget/CompoundButton;->mButtonBlendMode:Landroid/graphics/BlendMode;

    .line 76
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/CompoundButton;->mHasButtonTint:Z

    .line 77
    iput-boolean v1, p0, Landroid/widget/CompoundButton;->mHasButtonBlendMode:Z

    .line 85
    iput-boolean v1, p0, Landroid/widget/CompoundButton;->mCheckedFromResource:Z

    .line 87
    iput-object v0, p0, Landroid/widget/CompoundButton;->mCustomStateDescription:Ljava/lang/CharSequence;

    .line 108
    sget-object v0, Lcom/android/internal/R$styleable;->CompoundButton:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 110
    .local v6, "a":Landroid/content/res/TypedArray;
    sget-object v4, Lcom/android/internal/R$styleable;->CompoundButton:[I

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v7, p3

    move v8, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    .local v3, "context":Landroid/content/Context;
    .local v5, "attrs":Landroid/util/AttributeSet;
    .local v7, "defStyleAttr":I
    .local v8, "defStyleRes":I
    invoke-virtual/range {v2 .. v8}, Landroid/widget/CompoundButton;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 113
    const/4 p1, 0x1

    invoke-virtual {v6, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 114
    .local p2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_2b

    .line 115
    invoke-virtual {p0, p2}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    :cond_2b
    const/4 p3, 0x3

    invoke-virtual {v6, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_41

    .line 119
    const/4 p4, -0x1

    invoke-virtual {v6, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iget-object p4, v2, Landroid/widget/CompoundButton;->mButtonBlendMode:Landroid/graphics/BlendMode;

    invoke-static {p3, p4}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object p3

    iput-object p3, v2, Landroid/widget/CompoundButton;->mButtonBlendMode:Landroid/graphics/BlendMode;

    .line 121
    iput-boolean p1, v2, Landroid/widget/CompoundButton;->mHasButtonBlendMode:Z

    .line 124
    :cond_41
    const/4 p3, 0x2

    invoke-virtual {v6, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_50

    .line 125
    invoke-virtual {v6, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, v2, Landroid/widget/CompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    .line 126
    iput-boolean p1, v2, Landroid/widget/CompoundButton;->mHasButtonTint:Z

    .line 129
    :cond_50
    invoke-virtual {v6, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 131
    .local p3, "checked":Z
    invoke-virtual {p0, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 132
    iput-boolean p1, v2, Landroid/widget/CompoundButton;->mCheckedFromResource:Z

    .line 134
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 136
    invoke-direct {p0}, Landroid/widget/CompoundButton;->applyButtonTint()V

    .line 137
    return-void
.end method

.method private greylist-max-o applyButtonTint()V
    .registers 3

    .line 463
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mHasButtonTint:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mHasButtonBlendMode:Z

    if-eqz v0, :cond_3b

    .line 464
    :cond_c
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 466
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mHasButtonTint:Z

    if-eqz v0, :cond_1f

    .line 467
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/CompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 470
    :cond_1f
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mHasButtonBlendMode:Z

    if-eqz v0, :cond_2a

    .line 471
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/CompoundButton;->mButtonBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 476
    :cond_2a
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 477
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 480
    :cond_3b
    return-void
.end method

.method private synthetic blacklist lambda$setButtonDrawableAsync$0(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 300
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic blacklist lambda$setButtonIconAsync$1(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "button"    # Landroid/graphics/drawable/Drawable;

    .line 367
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public whitelist autofill(Landroid/view/autofill/AutofillValue;)V
    .registers 5
    .param p1, "value"    # Landroid/view/autofill/AutofillValue;

    .line 712
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 714
    :cond_7
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isToggle()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 715
    sget-object v0, Landroid/widget/CompoundButton;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " could not be autofilled into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    return-void

    .line 719
    :cond_2a
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getToggleValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 720
    return-void
.end method

.method public whitelist drawableHotspotChanged(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 608
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->drawableHotspotChanged(FF)V

    .line 610
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 611
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 613
    :cond_c
    return-void
.end method

.method protected whitelist drawableStateChanged()V
    .registers 3

    .line 597
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 599
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 600
    .local v0, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 601
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 602
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 604
    :cond_1a
    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    .line 694
    invoke-super {p0, p1}, Landroid/widget/Button;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 695
    const-string v0, "checked"

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 696
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 484
    const-class v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAutofillType()I
    .registers 2

    .line 724
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist getAutofillValue()Landroid/view/autofill/AutofillValue;
    .registers 2

    .line 729
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-static {v0}, Landroid/view/autofill/AutofillValue;->forToggle(Z)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method public whitelist getButtonDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 350
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected blacklist getButtonStateDescription()Ljava/lang/CharSequence;
    .registers 3

    .line 168
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 169
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10401e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 171
    :cond_12
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10406b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getButtonTintBlendMode()Landroid/graphics/BlendMode;
    .registers 2

    .line 459
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonBlendMode:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public whitelist getButtonTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 401
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 446
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonBlendMode:Landroid/graphics/BlendMode;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonBlendMode:Landroid/graphics/BlendMode;

    invoke-static {v0}, Landroid/graphics/BlendMode;->blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_c

    .line 447
    :cond_b
    const/4 v0, 0x0

    .line 446
    :goto_c
    return-object v0
.end method

.method public whitelist getCompoundPaddingLeft()I
    .registers 4

    .line 509
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingLeft()I

    move-result v0

    .line 510
    .local v0, "padding":I
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isLayoutRtl()Z

    move-result v1

    if-nez v1, :cond_13

    .line 511
    iget-object v1, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 512
    .local v1, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_13

    .line 513
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v0, v2

    .line 516
    .end local v1    # "buttonDrawable":Landroid/graphics/drawable/Drawable;
    :cond_13
    return v0
.end method

.method public whitelist getCompoundPaddingRight()I
    .registers 4

    .line 521
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingRight()I

    move-result v0

    .line 522
    .local v0, "padding":I
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 523
    iget-object v1, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 524
    .local v1, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_13

    .line 525
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v0, v2

    .line 528
    .end local v1    # "buttonDrawable":Landroid/graphics/drawable/Drawable;
    :cond_13
    return v0
.end method

.method public greylist-max-o getHorizontalOffsetForDrawables()I
    .registers 3

    .line 536
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 537
    .local v0, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public whitelist isChecked()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 162
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    return v0
.end method

.method public whitelist jumpDrawablesToCurrentState()V
    .registers 2

    .line 622
    invoke-super {p0}, Landroid/widget/Button;->jumpDrawablesToCurrentState()V

    .line 623
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 624
    :cond_c
    return-void
.end method

.method protected whitelist onCreateDrawableState(I)[I
    .registers 4
    .param p1, "extraSpace"    # I

    .line 588
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 589
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 590
    sget-object v1, Landroid/widget/CompoundButton;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/widget/CompoundButton;->mergeDrawableStates([I[I)[I

    .line 592
    :cond_11
    return-object v0
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 542
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 543
    .local v0, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4c

    .line 544
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, 0x70

    .line 545
    .local v1, "verticalGravity":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 546
    .local v2, "drawableHeight":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 549
    .local v3, "drawableWidth":I
    sparse-switch v1, :sswitch_data_6e

    .line 557
    const/4 v4, 0x0

    .local v4, "top":I
    goto :goto_25

    .line 551
    .end local v4    # "top":I
    :sswitch_17
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    .line 552
    .restart local v4    # "top":I
    goto :goto_25

    .line 554
    .end local v4    # "top":I
    :sswitch_1d
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    .line 555
    .restart local v4    # "top":I
    nop

    .line 559
    :goto_25
    add-int v5, v4, v2

    .line 560
    .local v5, "bottom":I
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_33

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWidth()I

    move-result v6

    sub-int/2addr v6, v3

    goto :goto_34

    :cond_33
    const/4 v6, 0x0

    .line 561
    .local v6, "left":I
    :goto_34
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isLayoutRtl()Z

    move-result v7

    if-eqz v7, :cond_3f

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWidth()I

    move-result v7

    goto :goto_40

    :cond_3f
    move v7, v3

    .line 563
    .local v7, "right":I
    :goto_40
    invoke-virtual {v0, v6, v4, v7, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 565
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 566
    .local v8, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_4c

    .line 567
    invoke-virtual {v8, v6, v4, v7, v5}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 571
    .end local v1    # "verticalGravity":I
    .end local v2    # "drawableHeight":I
    .end local v3    # "drawableWidth":I
    .end local v4    # "top":I
    .end local v5    # "bottom":I
    .end local v6    # "left":I
    .end local v7    # "right":I
    .end local v8    # "background":Landroid/graphics/drawable/Drawable;
    :cond_4c
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 573
    if-eqz v0, :cond_6c

    .line 574
    iget v1, p0, Landroid/widget/CompoundButton;->mScrollX:I

    .line 575
    .local v1, "scrollX":I
    iget v2, p0, Landroid/widget/CompoundButton;->mScrollY:I

    .line 576
    .local v2, "scrollY":I
    if-nez v1, :cond_5d

    if-nez v2, :cond_5d

    .line 577
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_6c

    .line 579
    :cond_5d
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 580
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 581
    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 584
    .end local v1    # "scrollX":I
    .end local v2    # "scrollY":I
    :cond_6c
    :goto_6c
    return-void

    nop

    :sswitch_data_6e
    .sparse-switch
        0x10 -> :sswitch_1d
        0x50 -> :sswitch_17
    .end sparse-switch
.end method

.method public greylist-max-o onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 490
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 491
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 492
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 497
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 498
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 499
    invoke-static {}, Landroid/view/accessibility/Flags;->triStateChecked()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 500
    iget-boolean v1, p0, Landroid/widget/CompoundButton;->mChecked:Z

    if-eqz v1, :cond_12

    goto :goto_13

    .line 501
    :cond_12
    const/4 v0, 0x0

    .line 500
    :goto_13
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(I)V

    goto :goto_1c

    .line 503
    :cond_17
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 505
    :goto_1c
    return-void
.end method

.method protected blacklist onProvideStructure(Landroid/view/ViewStructure;II)V
    .registers 6
    .param p1, "structure"    # Landroid/view/ViewStructure;
    .param p2, "viewFor"    # I
    .param p3, "flags"    # I

    .line 703
    invoke-super {p0, p1, p2, p3}, Landroid/widget/Button;->onProvideStructure(Landroid/view/ViewStructure;II)V

    .line 705
    const/4 v0, 0x1

    if-ne p2, v0, :cond_c

    .line 706
    iget-boolean v1, p0, Landroid/widget/CompoundButton;->mCheckedFromResource:Z

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setDataIsSensitive(Z)V

    .line 708
    :cond_c
    return-void
.end method

.method public greylist-max-o onResolveDrawables(I)V
    .registers 3
    .param p1, "layoutDirection"    # I

    .line 336
    invoke-super {p0, p1}, Landroid/widget/Button;->onResolveDrawables(I)V

    .line 337
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 338
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 340
    :cond_c
    return-void
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 684
    move-object v0, p1

    check-cast v0, Landroid/widget/CompoundButton$SavedState;

    .line 686
    .local v0, "ss":Landroid/widget/CompoundButton$SavedState;
    invoke-virtual {v0}, Landroid/widget/CompoundButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 687
    iget-boolean v1, v0, Landroid/widget/CompoundButton$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 688
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    .line 689
    return-void
.end method

.method public whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 674
    invoke-super {p0}, Landroid/widget/Button;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 676
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/CompoundButton$SavedState;

    invoke-direct {v1, v0}, Landroid/widget/CompoundButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 678
    .local v1, "ss":Landroid/widget/CompoundButton$SavedState;
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Landroid/widget/CompoundButton$SavedState;->checked:Z

    .line 679
    return-object v1
.end method

.method public whitelist performClick()Z
    .registers 3

    .line 146
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->toggle()V

    .line 148
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    .line 149
    .local v0, "handled":Z
    if-nez v0, :cond_d

    .line 152
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    .line 155
    :cond_d
    return v0
.end method

.method public whitelist setButtonDrawable(I)V
    .registers 3
    .param p1, "resId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setButtonDrawableAsync"
    .end annotation

    .line 289
    if-eqz p1, :cond_b

    .line 290
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "d":Landroid/graphics/drawable/Drawable;
    goto :goto_c

    .line 292
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_b
    const/4 v0, 0x0

    .line 294
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_c
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 295
    return-void
.end method

.method public whitelist setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 310
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_45

    .line 311
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_13

    .line 312
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 313
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 316
    :cond_13
    iput-object p1, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 318
    if-eqz p1, :cond_45

    .line 319
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 320
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 321
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 322
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 324
    :cond_2e
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_37

    const/4 v0, 0x1

    goto :goto_38

    :cond_37
    move v0, v1

    :goto_38
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 325
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setMinHeight(I)V

    .line 326
    invoke-direct {p0}, Landroid/widget/CompoundButton;->applyButtonTint()V

    .line 329
    :cond_45
    return-void
.end method

.method public blacklist setButtonDrawableAsync(I)Ljava/lang/Runnable;
    .registers 4
    .param p1, "resId"    # I

    .line 299
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 300
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_c
    new-instance v1, Landroid/widget/CompoundButton$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Landroid/widget/CompoundButton$$ExternalSyntheticLambda1;-><init>(Landroid/widget/CompoundButton;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public whitelist setButtonIcon(Landroid/graphics/drawable/Icon;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setButtonIconAsync"
    .end annotation

    .line 361
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_c
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 362
    return-void
.end method

.method public blacklist setButtonIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 366
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 367
    .local v0, "button":Landroid/graphics/drawable/Drawable;
    :goto_c
    new-instance v1, Landroid/widget/CompoundButton$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Landroid/widget/CompoundButton$$ExternalSyntheticLambda0;-><init>(Landroid/widget/CompoundButton;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public whitelist setButtonTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/BlendMode;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 432
    iput-object p1, p0, Landroid/widget/CompoundButton;->mButtonBlendMode:Landroid/graphics/BlendMode;

    .line 433
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/CompoundButton;->mHasButtonBlendMode:Z

    .line 435
    invoke-direct {p0}, Landroid/widget/CompoundButton;->applyButtonTint()V

    .line 436
    return-void
.end method

.method public whitelist setButtonTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 387
    iput-object p1, p0, Landroid/widget/CompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    .line 388
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/CompoundButton;->mHasButtonTint:Z

    .line 390
    invoke-direct {p0}, Landroid/widget/CompoundButton;->applyButtonTint()V

    .line 391
    return-void
.end method

.method public whitelist setButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 416
    if-eqz p1, :cond_9

    iget v0, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setButtonTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 417
    return-void
.end method

.method public whitelist setChecked(Z)V
    .registers 5
    .param p1, "checked"    # Z

    .line 210
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    if-eq v0, p1, :cond_49

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/CompoundButton;->mCheckedFromResource:Z

    .line 212
    iput-boolean p1, p0, Landroid/widget/CompoundButton;->mChecked:Z

    .line 213
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->refreshDrawableState()V

    .line 214
    invoke-static {}, Landroid/view/accessibility/Flags;->triStateChecked()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 215
    const/16 v1, 0x2000

    invoke-virtual {p0, v1}, Landroid/widget/CompoundButton;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 220
    :cond_17
    iget-boolean v1, p0, Landroid/widget/CompoundButton;->mBroadcasting:Z

    if-eqz v1, :cond_1f

    .line 222
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->setDefaultStateDescription()V

    .line 223
    return-void

    .line 226
    :cond_1f
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/CompoundButton;->mBroadcasting:Z

    .line 227
    iget-object v1, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v1, :cond_2d

    .line 228
    iget-object v1, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-boolean v2, p0, Landroid/widget/CompoundButton;->mChecked:Z

    invoke-interface {v1, p0, v2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 230
    :cond_2d
    iget-object v1, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v1, :cond_38

    .line 231
    iget-object v1, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-boolean v2, p0, Landroid/widget/CompoundButton;->mChecked:Z

    invoke-interface {v1, p0, v2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 233
    :cond_38
    iget-object v1, p0, Landroid/widget/CompoundButton;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillManager;

    .line 234
    .local v1, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v1, :cond_47

    .line 235
    invoke-virtual {v1, p0}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;)V

    .line 238
    :cond_47
    iput-boolean v0, p0, Landroid/widget/CompoundButton;->mBroadcasting:Z

    .line 241
    .end local v1    # "afm":Landroid/view/autofill/AutofillManager;
    :cond_49
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->setDefaultStateDescription()V

    .line 242
    return-void
.end method

.method protected blacklist setDefaultStateDescription()V
    .registers 2

    .line 198
    iget-object v0, p0, Landroid/widget/CompoundButton;->mCustomStateDescription:Ljava/lang/CharSequence;

    if-nez v0, :cond_b

    .line 199
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getButtonStateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/Button;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 201
    :cond_b
    return-void
.end method

.method public whitelist setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 251
    iput-object p1, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 252
    return-void
.end method

.method greylist-max-o setOnCheckedChangeWidgetListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 262
    iput-object p1, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 263
    return-void
.end method

.method public whitelist setStateDescription(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "stateDescription"    # Ljava/lang/CharSequence;

    .line 188
    iput-object p1, p0, Landroid/widget/CompoundButton;->mCustomStateDescription:Ljava/lang/CharSequence;

    .line 189
    if-nez p1, :cond_8

    .line 190
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->setDefaultStateDescription()V

    goto :goto_b

    .line 192
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/Button;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 194
    :goto_b
    return-void
.end method

.method public whitelist toggle()V
    .registers 2

    .line 141
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 142
    return-void
.end method

.method protected whitelist verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 617
    invoke-super {p0, p1}, Landroid/widget/Button;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_b

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
