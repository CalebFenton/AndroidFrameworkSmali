.class public Lcom/android/internal/widget/NumericTextView;
.super Landroid/widget/TextView;
.source "NumericTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;
    }
.end annotation


# static fields
.field private static final LOG_RADIX:D

.field private static final RADIX:I = 0xa


# instance fields
.field private mCount:I

.field private mListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

.field private mMaxCount:I

.field private mMaxValue:I

.field private mMinValue:I

.field private mPreviousValue:I

.field private mShowLeadingZeroes:Z

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 36
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    #@2
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    #@5
    move-result-wide v0

    #@6
    sput-wide v0, Lcom/android/internal/widget/NumericTextView;->LOG_RADIX:D

    #@8
    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@5
    .line 38
    iput v3, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    #@7
    .line 39
    const/16 v1, 0x63

    #@9
    iput v1, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    #@b
    .line 42
    const/4 v1, 0x2

    #@c
    iput v1, p0, Lcom/android/internal/widget/NumericTextView;->mMaxCount:I

    #@e
    .line 44
    iput-boolean v4, p0, Lcom/android/internal/widget/NumericTextView;->mShowLeadingZeroes:Z

    #@10
    .line 60
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    #@13
    move-result-object v1

    #@14
    invoke-static {v3}, Landroid/util/StateSet;->get(I)[I

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@1b
    move-result v0

    #@1c
    .line 61
    .local v0, "textColorDisabled":I
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHintTextColor(I)V

    #@1f
    .line 63
    invoke-virtual {p0, v4}, Landroid/view/View;->setFocusable(Z)V

    #@22
    .line 56
    return-void
.end method

.method private handleKeyUp(I)Z
    .locals 10
    .param p1, "keyCode"    # I

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 262
    const/16 v5, 0x43

    #@4
    if-ne p1, v5, :cond_3

    #@6
    .line 264
    iget v5, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    #@8
    if-lez v5, :cond_0

    #@a
    .line 265
    iget v5, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    #@c
    div-int/lit8 v5, v5, 0xa

    #@e
    iput v5, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    #@10
    .line 266
    iget v5, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    #@12
    add-int/lit8 v5, v5, -0x1

    #@14
    iput v5, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    #@16
    .line 282
    :cond_0
    :goto_0
    iget v5, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    #@18
    if-lez v5, :cond_5

    #@1a
    .line 286
    new-instance v5, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v6, "%0"

    #@22
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v5

    #@26
    iget v6, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    #@28
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v5

    #@2c
    const-string/jumbo v6, "d"

    #@2f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v5

    #@37
    new-array v6, v9, [Ljava/lang/Object;

    #@39
    iget v7, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    #@3b
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3e
    move-result-object v7

    #@3f
    aput-object v7, v6, v8

    #@41
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    .line 291
    .local v0, "formattedValue":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@48
    .line 293
    iget-object v5, p0, Lcom/android/internal/widget/NumericTextView;->mListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    #@4a
    if-eqz v5, :cond_2

    #@4c
    .line 294
    iget v5, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    #@4e
    iget v6, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    #@50
    if-lt v5, v6, :cond_6

    #@52
    const/4 v2, 0x1

    #@53
    .line 295
    .local v2, "isValid":Z
    :goto_2
    iget v5, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    #@55
    iget v6, p0, Lcom/android/internal/widget/NumericTextView;->mMaxCount:I

    #@57
    if-ge v5, v6, :cond_1

    #@59
    iget v5, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    #@5b
    mul-int/lit8 v5, v5, 0xa

    #@5d
    iget v6, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    #@5f
    if-le v5, v6, :cond_7

    #@61
    :cond_1
    const/4 v1, 0x1

    #@62
    .line 296
    .local v1, "isFinished":Z
    :goto_3
    iget-object v5, p0, Lcom/android/internal/widget/NumericTextView;->mListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    #@64
    iget v6, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    #@66
    invoke-interface {v5, p0, v6, v2, v1}, Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;->onValueChanged(Lcom/android/internal/widget/NumericTextView;IZZ)V

    #@69
    .line 299
    .end local v1    # "isFinished":Z
    .end local v2    # "isValid":Z
    :cond_2
    return v9

    #@6a
    .line 268
    .end local v0    # "formattedValue":Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Lcom/android/internal/widget/NumericTextView;->isKeyCodeNumeric(I)Z

    #@6d
    move-result v5

    #@6e
    if-eqz v5, :cond_4

    #@70
    .line 269
    iget v5, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    #@72
    iget v6, p0, Lcom/android/internal/widget/NumericTextView;->mMaxCount:I

    #@74
    if-ge v5, v6, :cond_0

    #@76
    .line 270
    invoke-static {p1}, Lcom/android/internal/widget/NumericTextView;->numericKeyCodeToInt(I)I

    #@79
    move-result v3

    #@7a
    .line 271
    .local v3, "keyValue":I
    iget v5, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    #@7c
    mul-int/lit8 v5, v5, 0xa

    #@7e
    add-int v4, v5, v3

    #@80
    .line 272
    .local v4, "newValue":I
    iget v5, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    #@82
    if-gt v4, v5, :cond_0

    #@84
    .line 273
    iput v4, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    #@86
    .line 274
    iget v5, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    #@88
    add-int/lit8 v5, v5, 0x1

    #@8a
    iput v5, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    #@8c
    goto :goto_0

    #@8d
    .line 278
    .end local v3    # "keyValue":I
    .end local v4    # "newValue":I
    :cond_4
    return v8

    #@8e
    .line 288
    :cond_5
    const-string/jumbo v0, ""

    #@91
    .restart local v0    # "formattedValue":Ljava/lang/String;
    goto :goto_1

    #@92
    .line 294
    :cond_6
    const/4 v2, 0x0

    #@93
    .restart local v2    # "isValid":Z
    goto :goto_2

    #@94
    .line 295
    :cond_7
    const/4 v1, 0x0

    #@95
    .restart local v1    # "isFinished":Z
    goto :goto_3
.end method

.method private static isKeyCodeNumeric(I)Z
    .locals 2
    .param p0, "keyCode"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 303
    const/4 v1, 0x7

    #@2
    if-eq p0, v1, :cond_0

    #@4
    const/16 v1, 0x8

    #@6
    if-ne p0, v1, :cond_1

    #@8
    :cond_0
    :goto_0
    return v0

    #@9
    .line 304
    :cond_1
    const/16 v1, 0x9

    #@b
    if-eq p0, v1, :cond_0

    #@d
    const/16 v1, 0xa

    #@f
    if-eq p0, v1, :cond_0

    #@11
    .line 305
    const/16 v1, 0xb

    #@13
    if-eq p0, v1, :cond_0

    #@15
    const/16 v1, 0xc

    #@17
    if-eq p0, v1, :cond_0

    #@19
    .line 306
    const/16 v1, 0xd

    #@1b
    if-eq p0, v1, :cond_0

    #@1d
    const/16 v1, 0xe

    #@1f
    if-eq p0, v1, :cond_0

    #@21
    .line 307
    const/16 v1, 0xf

    #@23
    if-eq p0, v1, :cond_0

    #@25
    const/16 v1, 0x10

    #@27
    if-eq p0, v1, :cond_0

    #@29
    const/4 v0, 0x0

    #@2a
    goto :goto_0
.end method

.method private static numericKeyCodeToInt(I)I
    .locals 1
    .param p0, "keyCode"    # I

    #@0
    .prologue
    .line 311
    add-int/lit8 v0, p0, -0x7

    #@2
    return v0
.end method

.method private updateDisplayedValue()V
    .locals 4

    #@0
    .prologue
    .line 197
    iget-boolean v1, p0, Lcom/android/internal/widget/NumericTextView;->mShowLeadingZeroes:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "%0"

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    iget v2, p0, Lcom/android/internal/widget/NumericTextView;->mMaxCount:I

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, "d"

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    .line 205
    .local v0, "format":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x1

    #@22
    new-array v1, v1, [Ljava/lang/Object;

    #@24
    iget v2, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    #@26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@29
    move-result-object v2

    #@2a
    const/4 v3, 0x0

    #@2b
    aput-object v2, v1, v3

    #@2d
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@34
    .line 195
    return-void

    #@35
    .line 200
    .end local v0    # "format":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "%d"

    #@38
    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_0
.end method

.method private updateMinimumWidth()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 215
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@4
    move-result-object v2

    #@5
    .line 216
    .local v2, "previousText":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    #@6
    .line 218
    .local v1, "maxWidth":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    #@9
    if-ge v0, v4, :cond_1

    #@b
    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v5, "%0"

    #@13
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    iget v5, p0, Lcom/android/internal/widget/NumericTextView;->mMaxCount:I

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    const-string/jumbo v5, "d"

    #@20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    const/4 v5, 0x1

    #@29
    new-array v5, v5, [Ljava/lang/Object;

    #@2b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2e
    move-result-object v6

    #@2f
    aput-object v6, v5, v7

    #@31
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@38
    .line 220
    invoke-virtual {p0, v7, v7}, Landroid/view/View;->measure(II)V

    #@3b
    .line 222
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    #@3e
    move-result v3

    #@3f
    .line 223
    .local v3, "width":I
    if-le v3, v1, :cond_0

    #@41
    .line 224
    move v1, v3

    #@42
    .line 218
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@44
    goto :goto_0

    #@45
    .line 228
    .end local v3    # "width":I
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@48
    .line 229
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    #@4b
    .line 230
    invoke-virtual {p0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    #@4e
    .line 214
    return-void
.end method


# virtual methods
.method public final getOnDigitEnteredListener()Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;
    .locals 1

    #@0
    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/internal/widget/NumericTextView;->mListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    #@2
    return-object v0
.end method

.method public final getRangeMaximum()I
    .locals 1

    #@0
    .prologue
    .line 160
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    #@2
    return v0
.end method

.method public final getRangeMinimum()I
    .locals 1

    #@0
    .prologue
    .line 153
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    #@2
    return v0
.end method

.method public final getShowLeadingZeroes()Z
    .locals 1

    #@0
    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/android/internal/widget/NumericTextView;->mShowLeadingZeroes:Z

    #@2
    return v0
.end method

.method public final getValue()I
    .locals 1

    #@0
    .prologue
    .line 126
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    #@2
    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 68
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    #@5
    .line 70
    if-eqz p1, :cond_1

    #@7
    .line 71
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    #@9
    iput v0, p0, Lcom/android/internal/widget/NumericTextView;->mPreviousValue:I

    #@b
    .line 72
    iput v1, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    #@d
    .line 73
    iput v1, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    #@f
    .line 76
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    #@16
    .line 77
    const-string/jumbo v0, ""

    #@19
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@1c
    .line 67
    :cond_0
    :goto_0
    return-void

    #@1d
    .line 79
    :cond_1
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    #@1f
    if-nez v0, :cond_2

    #@21
    .line 81
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mPreviousValue:I

    #@23
    iput v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    #@25
    .line 83
    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@2c
    .line 84
    const-string/jumbo v0, ""

    #@2f
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    #@32
    .line 88
    :cond_2
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    #@34
    iget v1, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    #@36
    if-ge v0, v1, :cond_3

    #@38
    .line 89
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    #@3a
    iput v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    #@3c
    .line 92
    :cond_3
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    #@3e
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NumericTextView;->setValue(I)V

    #@41
    .line 94
    iget-object v0, p0, Lcom/android/internal/widget/NumericTextView;->mListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    #@43
    if-eqz v0, :cond_0

    #@45
    .line 95
    iget-object v0, p0, Lcom/android/internal/widget/NumericTextView;->mListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    #@47
    iget v1, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    #@49
    invoke-interface {v0, p0, v1, v2, v2}, Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;->onValueChanged(Lcom/android/internal/widget/NumericTextView;IZZ)V

    #@4c
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 243
    invoke-static {p1}, Lcom/android/internal/widget/NumericTextView;->isKeyCodeNumeric(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 244
    const/16 v0, 0x43

    #@8
    if-ne p1, v0, :cond_1

    #@a
    .line 243
    :cond_0
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    .line 245
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@f
    move-result v0

    #@10
    goto :goto_0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 250
    invoke-static {p1}, Lcom/android/internal/widget/NumericTextView;->isKeyCodeNumeric(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 251
    const/16 v0, 0x43

    #@8
    if-ne p1, v0, :cond_1

    #@a
    .line 250
    :cond_0
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    .line 252
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    #@f
    move-result v0

    #@10
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/android/internal/widget/NumericTextView;->handleKeyUp(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 258
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@9
    move-result v0

    #@a
    .line 257
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method public final setOnDigitEnteredListener(Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    #@0
    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/internal/widget/NumericTextView;->mListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    #@2
    .line 233
    return-void
.end method

.method public final setRange(II)V
    .locals 4
    .param p1, "minValue"    # I
    .param p2, "maxValue"    # I

    #@0
    .prologue
    .line 136
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 137
    iput p1, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    #@6
    .line 140
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    #@8
    if-eq v0, p2, :cond_1

    #@a
    .line 141
    iput p2, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    #@c
    .line 142
    int-to-double v0, p2

    #@d
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    #@10
    move-result-wide v0

    #@11
    sget-wide v2, Lcom/android/internal/widget/NumericTextView;->LOG_RADIX:D

    #@13
    div-double/2addr v0, v2

    #@14
    double-to-int v0, v0

    #@15
    add-int/lit8 v0, v0, 0x1

    #@17
    iput v0, p0, Lcom/android/internal/widget/NumericTextView;->mMaxCount:I

    #@19
    .line 144
    invoke-direct {p0}, Lcom/android/internal/widget/NumericTextView;->updateMinimumWidth()V

    #@1c
    .line 145
    invoke-direct {p0}, Lcom/android/internal/widget/NumericTextView;->updateDisplayedValue()V

    #@1f
    .line 135
    :cond_1
    return-void
.end method

.method public final setShowLeadingZeroes(Z)V
    .locals 1
    .param p1, "showLeadingZeroes"    # Z

    #@0
    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/internal/widget/NumericTextView;->mShowLeadingZeroes:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 179
    iput-boolean p1, p0, Lcom/android/internal/widget/NumericTextView;->mShowLeadingZeroes:Z

    #@6
    .line 181
    invoke-direct {p0}, Lcom/android/internal/widget/NumericTextView;->updateDisplayedValue()V

    #@9
    .line 177
    :cond_0
    return-void
.end method

.method public final setValue(I)V
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 110
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 111
    iput p1, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    #@6
    .line 113
    invoke-direct {p0}, Lcom/android/internal/widget/NumericTextView;->updateDisplayedValue()V

    #@9
    .line 109
    :cond_0
    return-void
.end method
