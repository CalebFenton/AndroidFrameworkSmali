.class public Landroid/widget/ToggleButton;
.super Landroid/widget/CompoundButton;
.source "ToggleButton.java"


# static fields
.field private static final NO_ALPHA:I = 0xff


# instance fields
.field private mDisabledAlpha:F

.field private mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 66
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 62
    const v0, 0x101004b

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 58
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 49
    sget-object v1, Lcom/android/internal/R$styleable;->ToggleButton:[I

    #@5
    .line 48
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@8
    move-result-object v0

    #@9
    .line 50
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    #@a
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Landroid/widget/ToggleButton;->mTextOn:Ljava/lang/CharSequence;

    #@10
    .line 51
    const/4 v1, 0x2

    #@11
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@14
    move-result-object v1

    #@15
    iput-object v1, p0, Landroid/widget/ToggleButton;->mTextOff:Ljava/lang/CharSequence;

    #@17
    .line 52
    const/4 v1, 0x0

    #@18
    const/high16 v2, 0x3f000000    # 0.5f

    #@1a
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@1d
    move-result v1

    #@1e
    iput v1, p0, Landroid/widget/ToggleButton;->mDisabledAlpha:F

    #@20
    .line 53
    invoke-direct {p0}, Landroid/widget/ToggleButton;->syncTextState()V

    #@23
    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@26
    .line 45
    return-void
.end method

.method private syncTextState()V
    .locals 2

    #@0
    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/widget/ToggleButton;->isChecked()Z

    #@3
    move-result v0

    #@4
    .line 78
    .local v0, "checked":Z
    if-eqz v0, :cond_1

    #@6
    iget-object v1, p0, Landroid/widget/ToggleButton;->mTextOn:Ljava/lang/CharSequence;

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 79
    iget-object v1, p0, Landroid/widget/ToggleButton;->mTextOn:Ljava/lang/CharSequence;

    #@c
    invoke-virtual {p0, v1}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    #@f
    .line 76
    :cond_0
    :goto_0
    return-void

    #@10
    .line 80
    :cond_1
    if-nez v0, :cond_0

    #@12
    iget-object v1, p0, Landroid/widget/ToggleButton;->mTextOff:Ljava/lang/CharSequence;

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 81
    iget-object v1, p0, Landroid/widget/ToggleButton;->mTextOff:Ljava/lang/CharSequence;

    #@18
    invoke-virtual {p0, v1}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    #@1b
    goto :goto_0
.end method

.method private updateReferenceToIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "backgroundDrawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 136
    instance-of v1, p1, Landroid/graphics/drawable/LayerDrawable;

    #@2
    if-eqz v1, :cond_0

    #@4
    move-object v0, p1

    #@5
    .line 137
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    #@7
    .line 139
    .local v0, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const v1, 0x1020017

    #@a
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object v1

    #@e
    .line 138
    iput-object v1, p0, Landroid/widget/ToggleButton;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    #@10
    .line 135
    .end local v0    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    :goto_0
    return-void

    #@11
    .line 141
    :cond_0
    const/4 v1, 0x0

    #@12
    iput-object v1, p0, Landroid/widget/ToggleButton;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    #@14
    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 3

    #@0
    .prologue
    .line 147
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    #@3
    .line 149
    iget-object v0, p0, Landroid/widget/ToggleButton;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 150
    iget-object v1, p0, Landroid/widget/ToggleButton;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {p0}, Landroid/widget/ToggleButton;->isEnabled()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    const/16 v0, 0xff

    #@11
    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@14
    .line 146
    :cond_0
    return-void

    #@15
    .line 150
    :cond_1
    iget v0, p0, Landroid/widget/ToggleButton;->mDisabledAlpha:F

    #@17
    const/high16 v2, 0x437f0000    # 255.0f

    #@19
    mul-float/2addr v0, v2

    #@1a
    float-to-int v0, v0

    #@1b
    goto :goto_0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 156
    const-class v0, Landroid/widget/ToggleButton;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Landroid/widget/ToggleButton;->mTextOff:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Landroid/widget/ToggleButton;->mTextOn:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    #@0
    .prologue
    .line 123
    invoke-super {p0}, Landroid/widget/CompoundButton;->onFinishInflate()V

    #@3
    .line 125
    invoke-virtual {p0}, Landroid/widget/ToggleButton;->getBackground()Landroid/graphics/drawable/Drawable;

    #@6
    move-result-object v0

    #@7
    invoke-direct {p0, v0}, Landroid/widget/ToggleButton;->updateReferenceToIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    #@a
    .line 122
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@3
    .line 132
    invoke-direct {p0, p1}, Landroid/widget/ToggleButton;->updateReferenceToIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    #@6
    .line 129
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    #@0
    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    #@3
    .line 73
    invoke-direct {p0}, Landroid/widget/ToggleButton;->syncTextState()V

    #@6
    .line 70
    return-void
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "textOff"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 118
    iput-object p1, p0, Landroid/widget/ToggleButton;->mTextOff:Ljava/lang/CharSequence;

    #@2
    .line 117
    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "textOn"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 100
    iput-object p1, p0, Landroid/widget/ToggleButton;->mTextOn:Ljava/lang/CharSequence;

    #@2
    .line 99
    return-void
.end method
