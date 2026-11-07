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
.field private static final blacklist LOG_RADIX:D

.field private static final blacklist RADIX:I = 0xa


# instance fields
.field private blacklist mCount:I

.field private blacklist mListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

.field private blacklist mMaxCount:I

.field private blacklist mMaxValue:I

.field private blacklist mMinValue:I

.field private blacklist mPreviousValue:I

.field private blacklist mShowLeadingZeroes:Z

.field private blacklist mValue:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 38
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/widget/NumericTextView;->LOG_RADIX:D

    return-void
.end method

.method public constructor greylist-max-r <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    .line 41
    const/16 v1, 0x63

    iput v1, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    .line 44
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/widget/NumericTextView;->mMaxCount:I

    .line 46
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/NumericTextView;->mShowLeadingZeroes:Z

    .line 63
    invoke-virtual {p0}, Lcom/android/internal/widget/NumericTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 64
    .local v0, "textColorDisabled":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NumericTextView;->setHintTextColor(I)V

    .line 66
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/NumericTextView;->setFocusable(Z)V

    .line 67
    return-void
.end method

.method private blacklist handleKeyUp(I)Z
    .registers 8
    .param p1, "keyCode"    # I

    .line 265
    const/16 v0, 0x43

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_16

    .line 267
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    if-lez v0, :cond_37

    .line 268
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    .line 269
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    goto :goto_37

    .line 271
    :cond_16
    invoke-static {p1}, Lcom/android/internal/widget/NumericTextView;->isKeyCodeNumeric(I)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 272
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    iget v3, p0, Lcom/android/internal/widget/NumericTextView;->mMaxCount:I

    if-ge v0, v3, :cond_37

    .line 273
    invoke-static {p1}, Lcom/android/internal/widget/NumericTextView;->numericKeyCodeToInt(I)I

    move-result v0

    .line 274
    .local v0, "keyValue":I
    iget v3, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v0

    .line 275
    .local v3, "newValue":I
    iget v4, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    if-gt v3, v4, :cond_36

    .line 276
    iput v3, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    .line 277
    iget v4, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    .line 279
    .end local v0    # "keyValue":I
    .end local v3    # "newValue":I
    :cond_36
    nop

    .line 285
    :cond_37
    :goto_37
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    if-lez v0, :cond_65

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "d"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "formattedValue":Ljava/lang/String;
    goto :goto_67

    .line 291
    .end local v0    # "formattedValue":Ljava/lang/String;
    :cond_65
    const-string v0, ""

    .line 294
    .restart local v0    # "formattedValue":Ljava/lang/String;
    :goto_67
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NumericTextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v3, p0, Lcom/android/internal/widget/NumericTextView;->mListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    if-eqz v3, :cond_8d

    .line 297
    iget v3, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    iget v4, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    if-lt v3, v4, :cond_76

    move v3, v2

    goto :goto_77

    :cond_76
    move v3, v1

    .line 298
    .local v3, "isValid":Z
    :goto_77
    iget v4, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    iget v5, p0, Lcom/android/internal/widget/NumericTextView;->mMaxCount:I

    if-ge v4, v5, :cond_85

    iget v4, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    mul-int/lit8 v4, v4, 0xa

    iget v5, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    if-le v4, v5, :cond_86

    :cond_85
    move v1, v2

    .line 299
    .local v1, "isFinished":Z
    :cond_86
    iget-object v4, p0, Lcom/android/internal/widget/NumericTextView;->mListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    iget v5, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    invoke-interface {v4, p0, v5, v3, v1}, Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;->onValueChanged(Lcom/android/internal/widget/NumericTextView;IZZ)V

    .line 302
    .end local v1    # "isFinished":Z
    .end local v3    # "isValid":Z
    :cond_8d
    return v2

    .line 281
    .end local v0    # "formattedValue":Ljava/lang/String;
    :cond_8e
    return v1
.end method

.method private static blacklist isKeyCodeNumeric(I)Z
    .registers 2
    .param p0, "keyCode"    # I

    .line 306
    const/4 v0, 0x7

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x8

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x9

    if-eq p0, v0, :cond_2a

    const/16 v0, 0xa

    if-eq p0, v0, :cond_2a

    const/16 v0, 0xb

    if-eq p0, v0, :cond_2a

    const/16 v0, 0xc

    if-eq p0, v0, :cond_2a

    const/16 v0, 0xd

    if-eq p0, v0, :cond_2a

    const/16 v0, 0xe

    if-eq p0, v0, :cond_2a

    const/16 v0, 0xf

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x10

    if-ne p0, v0, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v0, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 v0, 0x1

    :goto_2b
    return v0
.end method

.method private static blacklist numericKeyCodeToInt(I)I
    .registers 2
    .param p0, "keyCode"    # I

    .line 314
    add-int/lit8 v0, p0, -0x7

    return v0
.end method

.method private blacklist updateDisplayedValue()V
    .registers 3

    .line 200
    iget-boolean v0, p0, Lcom/android/internal/widget/NumericTextView;->mShowLeadingZeroes:Z

    if-eqz v0, :cond_20

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/NumericTextView;->mMaxCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "format":Ljava/lang/String;
    goto :goto_22

    .line 203
    .end local v0    # "format":Ljava/lang/String;
    :cond_20
    const-string v0, "%d"

    .line 208
    .restart local v0    # "format":Ljava/lang/String;
    :goto_22
    iget v1, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/NumericTextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    return-void
.end method

.method private blacklist updateMinimumWidth()V
    .registers 6

    .line 218
    invoke-virtual {p0}, Lcom/android/internal/widget/NumericTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 219
    .local v0, "previousText":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 221
    .local v1, "maxWidth":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    iget v3, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    if-ge v2, v3, :cond_42

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/widget/NumericTextView;->mMaxCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/NumericTextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3}, Lcom/android/internal/widget/NumericTextView;->measure(II)V

    .line 225
    invoke-virtual {p0}, Lcom/android/internal/widget/NumericTextView;->getMeasuredWidth()I

    move-result v3

    .line 226
    .local v3, "width":I
    if-le v3, v1, :cond_3f

    .line 227
    move v1, v3

    .line 221
    .end local v3    # "width":I
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 231
    .end local v2    # "i":I
    :cond_42
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NumericTextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/NumericTextView;->setMinWidth(I)V

    .line 233
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/NumericTextView;->setMinimumWidth(I)V

    .line 234
    return-void
.end method


# virtual methods
.method public final blacklist getOnDigitEnteredListener()Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;
    .registers 2

    .line 241
    iget-object v0, p0, Lcom/android/internal/widget/NumericTextView;->mListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    return-object v0
.end method

.method public final blacklist getRangeMaximum()I
    .registers 2

    .line 163
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    return v0
.end method

.method public final blacklist getRangeMinimum()I
    .registers 2

    .line 156
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    return v0
.end method

.method public final blacklist getShowLeadingZeroes()Z
    .registers 2

    .line 189
    iget-boolean v0, p0, Lcom/android/internal/widget/NumericTextView;->mShowLeadingZeroes:Z

    return v0
.end method

.method public final blacklist getValue()I
    .registers 2

    .line 129
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    return v0
.end method

.method protected whitelist onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 7
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 71
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 73
    const-string v0, ""

    if-eqz p1, :cond_1b

    .line 74
    iget v1, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    iput v1, p0, Lcom/android/internal/widget/NumericTextView;->mPreviousValue:I

    .line 75
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    .line 76
    iput v1, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    .line 79
    invoke-virtual {p0}, Lcom/android/internal/widget/NumericTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/NumericTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NumericTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_48

    .line 82
    :cond_1b
    iget v1, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    if-nez v1, :cond_2d

    .line 84
    iget v1, p0, Lcom/android/internal/widget/NumericTextView;->mPreviousValue:I

    iput v1, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    .line 86
    invoke-virtual {p0}, Lcom/android/internal/widget/NumericTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/NumericTextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NumericTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 91
    :cond_2d
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    iget v1, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    if-ge v0, v1, :cond_37

    .line 92
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    iput v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    .line 95
    :cond_37
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NumericTextView;->setValue(I)V

    .line 97
    iget-object v0, p0, Lcom/android/internal/widget/NumericTextView;->mListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    if-eqz v0, :cond_48

    .line 98
    iget-object v0, p0, Lcom/android/internal/widget/NumericTextView;->mListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    iget v1, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    const/4 v2, 0x1

    invoke-interface {v0, p0, v1, v2, v2}, Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;->onValueChanged(Lcom/android/internal/widget/NumericTextView;IZZ)V

    .line 101
    :cond_48
    :goto_48
    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 246
    invoke-static {p1}, Lcom/android/internal/widget/NumericTextView;->isKeyCodeNumeric(I)Z

    move-result v0

    if-nez v0, :cond_13

    const/16 v0, 0x43

    if-eq p1, v0, :cond_13

    .line 248
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 246
    :goto_14
    return v0
.end method

.method public whitelist onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 253
    invoke-static {p1}, Lcom/android/internal/widget/NumericTextView;->isKeyCodeNumeric(I)Z

    move-result v0

    if-nez v0, :cond_13

    const/16 v0, 0x43

    if-eq p1, v0, :cond_13

    .line 255
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 253
    :goto_14
    return v0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 260
    invoke-direct {p0, p1}, Lcom/android/internal/widget/NumericTextView;->handleKeyUp(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 261
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 260
    :goto_10
    return v0
.end method

.method public final blacklist setOnDigitEnteredListener(Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    .line 237
    iput-object p1, p0, Lcom/android/internal/widget/NumericTextView;->mListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    .line 238
    return-void
.end method

.method public final blacklist setRange(II)V
    .registers 7
    .param p1, "minValue"    # I
    .param p2, "maxValue"    # I

    .line 139
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    if-eq v0, p1, :cond_6

    .line 140
    iput p1, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    .line 143
    :cond_6
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    if-eq v0, p2, :cond_1f

    .line 144
    iput p2, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    .line 145
    int-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lcom/android/internal/widget/NumericTextView;->LOG_RADIX:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/NumericTextView;->mMaxCount:I

    .line 147
    invoke-direct {p0}, Lcom/android/internal/widget/NumericTextView;->updateMinimumWidth()V

    .line 148
    invoke-direct {p0}, Lcom/android/internal/widget/NumericTextView;->updateDisplayedValue()V

    .line 150
    :cond_1f
    return-void
.end method

.method public final blacklist setShowLeadingZeroes(Z)V
    .registers 3
    .param p1, "showLeadingZeroes"    # Z

    .line 181
    iget-boolean v0, p0, Lcom/android/internal/widget/NumericTextView;->mShowLeadingZeroes:Z

    if-eq v0, p1, :cond_9

    .line 182
    iput-boolean p1, p0, Lcom/android/internal/widget/NumericTextView;->mShowLeadingZeroes:Z

    .line 184
    invoke-direct {p0}, Lcom/android/internal/widget/NumericTextView;->updateDisplayedValue()V

    .line 186
    :cond_9
    return-void
.end method

.method public final blacklist setValue(I)V
    .registers 3
    .param p1, "value"    # I

    .line 113
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    if-eq v0, p1, :cond_9

    .line 114
    iput p1, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    .line 116
    invoke-direct {p0}, Lcom/android/internal/widget/NumericTextView;->updateDisplayedValue()V

    .line 118
    :cond_9
    return-void
.end method
