.class public Landroid/widget/ToggleButton;
.super Landroid/widget/CompoundButton;
.source "ToggleButton.java"


# static fields
.field private static final greylist-max-o NO_ALPHA:I = 0xff


# instance fields
.field private greylist-max-o mDisabledAlpha:F

.field private greylist-max-o mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mTextOff:Ljava/lang/CharSequence;

.field private greylist-max-o mTextOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 72
    const v0, 0x101004b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 69
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    sget-object v0, Lcom/android/internal/R$styleable;->ToggleButton:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 55
    .local v5, "a":Landroid/content/res/TypedArray;
    sget-object v3, Lcom/android/internal/R$styleable;->ToggleButton:[I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v6, p3

    move v7, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    .local v2, "context":Landroid/content/Context;
    .local v4, "attrs":Landroid/util/AttributeSet;
    .local v6, "defStyleAttr":I
    .local v7, "defStyleRes":I
    invoke-virtual/range {v1 .. v7}, Landroid/widget/ToggleButton;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 57
    const/4 p1, 0x1

    invoke-virtual {v5, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v1, Landroid/widget/ToggleButton;->mTextOn:Ljava/lang/CharSequence;

    .line 58
    const/4 p1, 0x2

    invoke-virtual {v5, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v1, Landroid/widget/ToggleButton;->mTextOff:Ljava/lang/CharSequence;

    .line 59
    const/4 p1, 0x0

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual {v5, p1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, v1, Landroid/widget/ToggleButton;->mDisabledAlpha:F

    .line 60
    invoke-direct {p0}, Landroid/widget/ToggleButton;->syncTextState()V

    .line 63
    invoke-virtual {p0}, Landroid/widget/ToggleButton;->setDefaultStateDescription()V

    .line 64
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    return-void
.end method

.method private greylist-max-o syncTextState()V
    .registers 3

    .line 87
    invoke-virtual {p0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    .line 88
    .local v0, "checked":Z
    if-eqz v0, :cond_10

    iget-object v1, p0, Landroid/widget/ToggleButton;->mTextOn:Ljava/lang/CharSequence;

    if-eqz v1, :cond_10

    .line 89
    iget-object v1, p0, Landroid/widget/ToggleButton;->mTextOn:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1b

    .line 90
    :cond_10
    if-nez v0, :cond_1b

    iget-object v1, p0, Landroid/widget/ToggleButton;->mTextOff:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1b

    .line 91
    iget-object v1, p0, Landroid/widget/ToggleButton;->mTextOff:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :cond_1b
    :goto_1b
    return-void
.end method

.method private greylist-max-o updateReferenceToIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "backgroundDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 165
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_12

    .line 166
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 167
    .local v0, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    nop

    .line 168
    const v1, 0x1020017

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ToggleButton;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 169
    .end local v0    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    goto :goto_15

    .line 170
    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ToggleButton;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 172
    :goto_15
    return-void
.end method


# virtual methods
.method protected whitelist drawableStateChanged()V
    .registers 4

    .line 176
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 178
    iget-object v0, p0, Landroid/widget/ToggleButton;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1b

    .line 179
    iget-object v0, p0, Landroid/widget/ToggleButton;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ToggleButton;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0xff

    goto :goto_18

    :cond_12
    const/high16 v1, 0x437f0000    # 255.0f

    iget v2, p0, Landroid/widget/ToggleButton;->mDisabledAlpha:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    :goto_18
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 181
    :cond_1b
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 185
    const-class v0, Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getButtonStateDescription()Ljava/lang/CharSequence;
    .registers 3

    .line 192
    invoke-virtual {p0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 193
    iget-object v0, p0, Landroid/widget/ToggleButton;->mTextOn:Ljava/lang/CharSequence;

    if-nez v0, :cond_16

    invoke-virtual {p0}, Landroid/widget/ToggleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10401db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_16
    iget-object v0, p0, Landroid/widget/ToggleButton;->mTextOn:Ljava/lang/CharSequence;

    :goto_18
    return-object v0

    .line 195
    :cond_19
    iget-object v0, p0, Landroid/widget/ToggleButton;->mTextOff:Ljava/lang/CharSequence;

    if-nez v0, :cond_29

    invoke-virtual {p0}, Landroid/widget/ToggleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10401da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :cond_29
    iget-object v0, p0, Landroid/widget/ToggleButton;->mTextOff:Ljava/lang/CharSequence;

    :goto_2b
    return-object v0
.end method

.method public whitelist getDisabledAlpha()F
    .registers 2

    .line 147
    iget v0, p0, Landroid/widget/ToggleButton;->mDisabledAlpha:F

    return v0
.end method

.method public whitelist getTextOff()Ljava/lang/CharSequence;
    .registers 2

    .line 124
    iget-object v0, p0, Landroid/widget/ToggleButton;->mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTextOn()Ljava/lang/CharSequence;
    .registers 2

    .line 102
    iget-object v0, p0, Landroid/widget/ToggleButton;->mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected whitelist onFinishInflate()V
    .registers 2

    .line 152
    invoke-super {p0}, Landroid/widget/CompoundButton;->onFinishInflate()V

    .line 154
    invoke-virtual {p0}, Landroid/widget/ToggleButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ToggleButton;->updateReferenceToIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    return-void
.end method

.method public whitelist setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 159
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    invoke-direct {p0, p1}, Landroid/widget/ToggleButton;->updateReferenceToIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    return-void
.end method

.method public whitelist setChecked(Z)V
    .registers 2
    .param p1, "checked"    # Z

    .line 81
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 83
    invoke-direct {p0}, Landroid/widget/ToggleButton;->syncTextState()V

    .line 84
    return-void
.end method

.method public whitelist setTextOff(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "textOff"    # Ljava/lang/CharSequence;

    .line 133
    iput-object p1, p0, Landroid/widget/ToggleButton;->mTextOff:Ljava/lang/CharSequence;

    .line 136
    invoke-virtual {p0}, Landroid/widget/ToggleButton;->setDefaultStateDescription()V

    .line 137
    return-void
.end method

.method public whitelist setTextOn(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "textOn"    # Ljava/lang/CharSequence;

    .line 111
    iput-object p1, p0, Landroid/widget/ToggleButton;->mTextOn:Ljava/lang/CharSequence;

    .line 114
    invoke-virtual {p0}, Landroid/widget/ToggleButton;->setDefaultStateDescription()V

    .line 115
    return-void
.end method
