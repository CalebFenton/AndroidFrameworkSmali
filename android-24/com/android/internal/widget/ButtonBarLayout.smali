.class public Lcom/android/internal/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonBarLayout.java"


# static fields
.field private static final ALLOW_STACKING_MIN_HEIGHT_DP:I = 0x140

.field private static final PEEK_BUTTON_DP:I = 0x10


# instance fields
.field private mAllowStacking:Z

.field private mLastWidthSize:I

.field private mMinimumHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 42
    const/4 v2, -0x1

    #@5
    iput v2, p0, Lcom/android/internal/widget/ButtonBarLayout;->mLastWidthSize:I

    #@7
    .line 44
    iput v4, p0, Lcom/android/internal/widget/ButtonBarLayout;->mMinimumHeight:I

    #@9
    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@10
    move-result-object v2

    #@11
    iget v2, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    #@13
    .line 51
    const/16 v3, 0x140

    #@15
    .line 50
    if-lt v2, v3, :cond_0

    #@17
    const/4 v0, 0x1

    #@18
    .line 52
    .local v0, "allowStackingDefault":Z
    :goto_0
    sget-object v2, Lcom/android/internal/R$styleable;->ButtonBarLayout:[I

    #@1a
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@1d
    move-result-object v1

    #@1e
    .line 53
    .local v1, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@21
    move-result v2

    #@22
    iput-boolean v2, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    #@24
    .line 55
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@27
    .line 46
    return-void

    #@28
    .line 50
    .end local v0    # "allowStackingDefault":Z
    .end local v1    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    const/4 v0, 0x0

    #@29
    .restart local v0    # "allowStackingDefault":Z
    goto :goto_0
.end method

.method private getNextVisibleChildIndex(I)I
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 139
    move v1, p1

    #@1
    .local v1, "i":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildCount()I

    #@4
    move-result v0

    #@5
    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@7
    .line 140
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_0

    #@11
    .line 141
    return v1

    #@12
    .line 139
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 144
    :cond_1
    const/4 v2, -0x1

    #@16
    return v2
.end method

.method private isStacked()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 170
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getOrientation()I

    #@4
    move-result v1

    #@5
    if-ne v1, v0, :cond_0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method private setStacked(Z)V
    .locals 4
    .param p1, "stacked"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 153
    if-eqz p1, :cond_0

    #@3
    const/4 v3, 0x1

    #@4
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ButtonBarLayout;->setOrientation(I)V

    #@7
    .line 154
    if-eqz p1, :cond_2

    #@9
    const/4 v3, 0x5

    #@a
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ButtonBarLayout;->setGravity(I)V

    #@d
    .line 156
    const v3, 0x1020327

    #@10
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ButtonBarLayout;->findViewById(I)Landroid/view/View;

    #@13
    move-result-object v2

    #@14
    .line 157
    .local v2, "spacer":Landroid/view/View;
    if-eqz v2, :cond_1

    #@16
    .line 158
    if-eqz p1, :cond_3

    #@18
    const/16 v3, 0x8

    #@1a
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    #@1d
    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildCount()I

    #@20
    move-result v0

    #@21
    .line 164
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x2

    #@23
    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_4

    #@25
    .line 165
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    #@2c
    .line 164
    add-int/lit8 v1, v1, -0x1

    #@2e
    goto :goto_2

    #@2f
    .line 154
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "spacer":Landroid/view/View;
    :cond_2
    const/16 v3, 0x50

    #@31
    goto :goto_0

    #@32
    .line 158
    .restart local v2    # "spacer":Landroid/view/View;
    :cond_3
    const/4 v3, 0x4

    #@33
    goto :goto_1

    #@34
    .line 152
    .restart local v0    # "childCount":I
    .restart local v1    # "i":I
    :cond_4
    return-void
.end method


# virtual methods
.method public getMinimumHeight()I
    .locals 2

    #@0
    .prologue
    .line 149
    iget v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mMinimumHeight:I

    #@2
    invoke-super {p0}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    #@5
    move-result v1

    #@6
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method protected onMeasure(II)V
    .locals 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 70
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@3
    move-result v10

    #@4
    .line 72
    .local v10, "widthSize":I
    iget-boolean v11, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    #@6
    if-eqz v11, :cond_1

    #@8
    .line 73
    iget v11, p0, Lcom/android/internal/widget/ButtonBarLayout;->mLastWidthSize:I

    #@a
    if-le v10, v11, :cond_0

    #@c
    invoke-direct {p0}, Lcom/android/internal/widget/ButtonBarLayout;->isStacked()Z

    #@f
    move-result v11

    #@10
    if-eqz v11, :cond_0

    #@12
    .line 75
    const/4 v11, 0x0

    #@13
    invoke-direct {p0, v11}, Lcom/android/internal/widget/ButtonBarLayout;->setStacked(Z)V

    #@16
    .line 78
    :cond_0
    iput v10, p0, Lcom/android/internal/widget/ButtonBarLayout;->mLastWidthSize:I

    #@18
    .line 81
    :cond_1
    const/4 v8, 0x0

    #@19
    .line 87
    .local v8, "needsRemeasure":Z
    invoke-direct {p0}, Lcom/android/internal/widget/ButtonBarLayout;->isStacked()Z

    #@1c
    move-result v11

    #@1d
    if-nez v11, :cond_6

    #@1f
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@22
    move-result v11

    #@23
    const/high16 v12, 0x40000000    # 2.0f

    #@25
    if-ne v11, v12, :cond_6

    #@27
    .line 88
    const/high16 v11, -0x80000000

    #@29
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@2c
    move-result v4

    #@2d
    .line 91
    .local v4, "initialWidthMeasureSpec":I
    const/4 v8, 0x1

    #@2e
    .line 96
    :goto_0
    move/from16 v0, p2

    #@30
    invoke-super {p0, v4, v0}, Landroid/widget/LinearLayout;->onMeasure(II)V

    #@33
    .line 98
    iget-boolean v11, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    #@35
    if-eqz v11, :cond_2

    #@37
    invoke-direct {p0}, Lcom/android/internal/widget/ButtonBarLayout;->isStacked()Z

    #@3a
    move-result v11

    #@3b
    if-eqz v11, :cond_7

    #@3d
    .line 109
    :cond_2
    :goto_1
    if-eqz v8, :cond_3

    #@3f
    .line 110
    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    #@42
    .line 115
    :cond_3
    const/4 v7, 0x0

    #@43
    .line 116
    .local v7, "minHeight":I
    const/4 v11, 0x0

    #@44
    invoke-direct {p0, v11}, Lcom/android/internal/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    #@47
    move-result v3

    #@48
    .line 117
    .local v3, "firstVisible":I
    if-ltz v3, :cond_4

    #@4a
    .line 118
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    #@4d
    move-result-object v1

    #@4e
    .line 119
    .local v1, "firstButton":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@51
    move-result-object v2

    #@52
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    #@54
    .line 120
    .local v2, "firstParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getPaddingTop()I

    #@57
    move-result v11

    #@58
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    #@5b
    move-result v12

    #@5c
    add-int/2addr v11, v12

    #@5d
    .line 121
    iget v12, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@5f
    .line 120
    add-int/2addr v11, v12

    #@60
    .line 121
    iget v12, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    #@62
    .line 120
    add-int/2addr v11, v12

    #@63
    add-int/lit8 v7, v11, 0x0

    #@65
    .line 122
    invoke-direct {p0}, Lcom/android/internal/widget/ButtonBarLayout;->isStacked()Z

    #@68
    move-result v11

    #@69
    if-eqz v11, :cond_8

    #@6b
    .line 123
    add-int/lit8 v11, v3, 0x1

    #@6d
    invoke-direct {p0, v11}, Lcom/android/internal/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    #@70
    move-result v9

    #@71
    .line 124
    .local v9, "secondVisible":I
    if-ltz v9, :cond_4

    #@73
    .line 125
    int-to-float v11, v7

    #@74
    invoke-virtual {p0, v9}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    #@77
    move-result-object v12

    #@78
    invoke-virtual {v12}, Landroid/view/View;->getPaddingTop()I

    #@7b
    move-result v12

    #@7c
    int-to-float v12, v12

    #@7d
    .line 126
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    #@80
    move-result-object v13

    #@81
    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@84
    move-result-object v13

    #@85
    iget v13, v13, Landroid/util/DisplayMetrics;->density:F

    #@87
    const/high16 v14, 0x41800000    # 16.0f

    #@89
    mul-float/2addr v13, v14

    #@8a
    .line 125
    add-float/2addr v12, v13

    #@8b
    add-float/2addr v11, v12

    #@8c
    float-to-int v7, v11

    #@8d
    .line 133
    .end local v1    # "firstButton":Landroid/view/View;
    .end local v2    # "firstParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v9    # "secondVisible":I
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getMinimumHeight()I

    #@90
    move-result v11

    #@91
    if-eq v11, v7, :cond_5

    #@93
    .line 134
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ButtonBarLayout;->setMinimumHeight(I)V

    #@96
    .line 69
    :cond_5
    return-void

    #@97
    .line 93
    .end local v3    # "firstVisible":I
    .end local v4    # "initialWidthMeasureSpec":I
    .end local v7    # "minHeight":I
    :cond_6
    move/from16 v4, p1

    #@99
    .restart local v4    # "initialWidthMeasureSpec":I
    goto :goto_0

    #@9a
    .line 99
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getMeasuredWidthAndState()I

    #@9d
    move-result v5

    #@9e
    .line 100
    .local v5, "measuredWidth":I
    const/high16 v11, -0x1000000

    #@a0
    and-int v6, v5, v11

    #@a2
    .line 101
    .local v6, "measuredWidthState":I
    const/high16 v11, 0x1000000

    #@a4
    if-ne v6, v11, :cond_2

    #@a6
    .line 102
    const/4 v11, 0x1

    #@a7
    invoke-direct {p0, v11}, Lcom/android/internal/widget/ButtonBarLayout;->setStacked(Z)V

    #@aa
    .line 105
    const/4 v8, 0x1

    #@ab
    goto :goto_1

    #@ac
    .line 129
    .end local v5    # "measuredWidth":I
    .end local v6    # "measuredWidthState":I
    .restart local v1    # "firstButton":Landroid/view/View;
    .restart local v2    # "firstParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v3    # "firstVisible":I
    .restart local v7    # "minHeight":I
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getPaddingBottom()I

    #@af
    move-result v11

    #@b0
    add-int/2addr v7, v11

    #@b1
    goto :goto_2
.end method

.method public setAllowStacking(Z)V
    .locals 2
    .param p1, "allowStacking"    # Z

    #@0
    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    #@2
    if-eq v0, p1, :cond_1

    #@4
    .line 60
    iput-boolean p1, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    #@6
    .line 61
    iget-boolean v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    #@8
    if-nez v0, :cond_0

    #@a
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getOrientation()I

    #@d
    move-result v0

    #@e
    const/4 v1, 0x1

    #@f
    if-ne v0, v1, :cond_0

    #@11
    .line 62
    const/4 v0, 0x0

    #@12
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ButtonBarLayout;->setStacked(Z)V

    #@15
    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->requestLayout()V

    #@18
    .line 58
    :cond_1
    return-void
.end method
