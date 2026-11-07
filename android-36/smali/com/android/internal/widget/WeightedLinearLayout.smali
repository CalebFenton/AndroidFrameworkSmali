.class public Lcom/android/internal/widget/WeightedLinearLayout;
.super Landroid/widget/LinearLayout;
.source "WeightedLinearLayout.java"


# instance fields
.field private blacklist mMajorWeightMax:F

.field private blacklist mMajorWeightMin:F

.field private blacklist mMinorWeightMax:F

.field private blacklist mMinorWeightMin:F


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    sget-object v0, Lcom/android/internal/R$styleable;->WeightedLinearLayout:[I

    .line 46
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMajorWeightMin:F

    .line 49
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMinorWeightMin:F

    .line 50
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMajorWeightMax:F

    .line 51
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMinorWeightMax:F

    .line 53
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    return-void
.end method


# virtual methods
.method protected whitelist onMeasure(II)V
    .registers 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 58
    invoke-virtual {p0}, Lcom/android/internal/widget/WeightedLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 59
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 60
    .local v1, "screenWidth":I
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v2, :cond_14

    const/4 v2, 0x1

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    .line 62
    .local v2, "isPortrait":Z
    :goto_15
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 64
    .local v3, "widthMode":I
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 66
    invoke-virtual {p0}, Lcom/android/internal/widget/WeightedLinearLayout;->getMeasuredWidth()I

    move-result v4

    .line 67
    .local v4, "width":I
    const/4 v5, 0x0

    .line 69
    .local v5, "measure":Z
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 71
    if-eqz v2, :cond_2c

    iget v7, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMinorWeightMin:F

    goto :goto_2e

    :cond_2c
    iget v7, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMajorWeightMin:F

    .line 72
    .local v7, "widthWeightMin":F
    :goto_2e
    if-eqz v2, :cond_33

    iget v8, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMinorWeightMax:F

    goto :goto_35

    :cond_33
    iget v8, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMajorWeightMax:F

    .line 73
    .local v8, "widthWeightMax":F
    :goto_35
    const/high16 v9, -0x80000000

    if-ne v3, v9, :cond_57

    .line 74
    int-to-float v9, v1

    mul-float/2addr v9, v7

    float-to-int v9, v9

    .line 75
    .local v9, "weightedMin":I
    int-to-float v10, v1

    mul-float/2addr v10, v7

    float-to-int v10, v10

    .line 76
    .local v10, "weightedMax":I
    const/4 v11, 0x0

    cmpl-float v12, v7, v11

    if-lez v12, :cond_4c

    if-ge v4, v9, :cond_4c

    .line 77
    invoke-static {v9, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 78
    const/4 v5, 0x1

    goto :goto_57

    .line 79
    :cond_4c
    cmpl-float v11, v8, v11

    if-lez v11, :cond_57

    if-le v4, v10, :cond_57

    .line 80
    invoke-static {v10, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 81
    const/4 v5, 0x1

    .line 87
    .end local v9    # "weightedMin":I
    .end local v10    # "weightedMax":I
    :cond_57
    :goto_57
    if-eqz v5, :cond_5c

    .line 88
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 90
    :cond_5c
    return-void
.end method
