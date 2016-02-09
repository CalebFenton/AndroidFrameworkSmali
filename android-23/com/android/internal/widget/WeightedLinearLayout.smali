.class public Lcom/android/internal/widget/WeightedLinearLayout;
.super Landroid/widget/LinearLayout;
.source "WeightedLinearLayout.java"


# instance fields
.field private mMajorWeightMax:F

.field private mMajorWeightMin:F

.field private mMinorWeightMax:F

.field private mMinorWeightMin:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@3
    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 46
    sget-object v1, Lcom/android/internal/R$styleable;->WeightedLinearLayout:[I

    #@6
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@9
    move-result-object v0

    #@a
    .line 48
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    #@b
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@e
    move-result v1

    #@f
    iput v1, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMajorWeightMin:F

    #@11
    .line 49
    const/4 v1, 0x1

    #@12
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@15
    move-result v1

    #@16
    iput v1, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMinorWeightMin:F

    #@18
    .line 50
    const/4 v1, 0x2

    #@19
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@1c
    move-result v1

    #@1d
    iput v1, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMajorWeightMax:F

    #@1f
    .line 51
    const/4 v1, 0x3

    #@20
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@23
    move-result v1

    #@24
    iput v1, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMinorWeightMax:F

    #@26
    .line 53
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@29
    .line 42
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    const/high16 v11, 0x40000000    # 2.0f

    #@3
    .line 58
    invoke-virtual {p0}, Lcom/android/internal/widget/WeightedLinearLayout;->getContext()Landroid/content/Context;

    #@6
    move-result-object v10

    #@7
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@a
    move-result-object v10

    #@b
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@e
    move-result-object v2

    #@f
    .line 59
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    #@11
    .line 60
    .local v3, "screenWidth":I
    iget v10, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    #@13
    if-ge v3, v10, :cond_2

    #@15
    const/4 v0, 0x1

    #@16
    .line 62
    .local v0, "isPortrait":Z
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@19
    move-result v7

    #@1a
    .line 64
    .local v7, "widthMode":I
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    #@1d
    .line 66
    invoke-virtual {p0}, Lcom/android/internal/widget/WeightedLinearLayout;->getMeasuredWidth()I

    #@20
    move-result v6

    #@21
    .line 67
    .local v6, "width":I
    const/4 v1, 0x0

    #@22
    .line 69
    .local v1, "measure":Z
    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@25
    move-result p1

    #@26
    .line 71
    if-eqz v0, :cond_3

    #@28
    iget v9, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMinorWeightMin:F

    #@2a
    .line 72
    .local v9, "widthWeightMin":F
    :goto_1
    if-eqz v0, :cond_4

    #@2c
    iget v8, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMinorWeightMax:F

    #@2e
    .line 73
    .local v8, "widthWeightMax":F
    :goto_2
    const/high16 v10, -0x80000000

    #@30
    if-ne v7, v10, :cond_0

    #@32
    .line 74
    int-to-float v10, v3

    #@33
    mul-float/2addr v10, v9

    #@34
    float-to-int v5, v10

    #@35
    .line 75
    .local v5, "weightedMin":I
    int-to-float v10, v3

    #@36
    mul-float/2addr v10, v9

    #@37
    float-to-int v4, v10

    #@38
    .line 76
    .local v4, "weightedMax":I
    cmpl-float v10, v9, v12

    #@3a
    if-lez v10, :cond_5

    #@3c
    if-ge v6, v5, :cond_5

    #@3e
    .line 77
    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@41
    move-result p1

    #@42
    .line 78
    const/4 v1, 0x1

    #@43
    .line 87
    .end local v4    # "weightedMax":I
    .end local v5    # "weightedMin":I
    :cond_0
    :goto_3
    if-eqz v1, :cond_1

    #@45
    .line 88
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    #@48
    .line 57
    :cond_1
    return-void

    #@49
    .line 60
    .end local v0    # "isPortrait":Z
    .end local v1    # "measure":Z
    .end local v6    # "width":I
    .end local v7    # "widthMode":I
    .end local v8    # "widthWeightMax":F
    .end local v9    # "widthWeightMin":F
    :cond_2
    const/4 v0, 0x0

    #@4a
    .restart local v0    # "isPortrait":Z
    goto :goto_0

    #@4b
    .line 71
    .restart local v1    # "measure":Z
    .restart local v6    # "width":I
    .restart local v7    # "widthMode":I
    :cond_3
    iget v9, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMajorWeightMin:F

    #@4d
    .restart local v9    # "widthWeightMin":F
    goto :goto_1

    #@4e
    .line 72
    :cond_4
    iget v8, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMajorWeightMax:F

    #@50
    .restart local v8    # "widthWeightMax":F
    goto :goto_2

    #@51
    .line 79
    .restart local v4    # "weightedMax":I
    .restart local v5    # "weightedMin":I
    :cond_5
    cmpl-float v10, v8, v12

    #@53
    if-lez v10, :cond_0

    #@55
    if-le v6, v4, :cond_0

    #@57
    .line 80
    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@5a
    move-result p1

    #@5b
    .line 81
    const/4 v1, 0x1

    #@5c
    goto :goto_3
.end method
