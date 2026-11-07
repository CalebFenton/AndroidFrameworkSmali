.class public Lcom/android/internal/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonBarLayout.java"


# static fields
.field private static final blacklist PEEK_BUTTON_DP:I = 0x10


# instance fields
.field private blacklist mAllowStacking:Z

.field private blacklist mLastWidthSize:I

.field private blacklist mMinimumHeight:I


# direct methods
.method public constructor greylist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mMinimumHeight:I

    .line 48
    sget-object v1, Lcom/android/internal/R$styleable;->ButtonBarLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 49
    .local v1, "ta":Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 50
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    return-void
.end method

.method private blacklist getNextVisibleChildIndex(I)I
    .registers 5
    .param p1, "index"    # I

    .line 134
    move v0, p1

    .local v0, "i":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_5
    if-ge v0, v1, :cond_15

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_12

    .line 136
    return v0

    .line 134
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 139
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist isStacked()Z
    .registers 3

    .line 165
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method private blacklist setStacked(Z)V
    .registers 6
    .param p1, "stacked"    # Z

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ButtonBarLayout;->setOrientation(I)V

    .line 149
    if-eqz p1, :cond_9

    const v0, 0x800005

    goto :goto_b

    :cond_9
    const/16 v0, 0x50

    :goto_b
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ButtonBarLayout;->setGravity(I)V

    .line 151
    const v0, 0x102053a

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 152
    .local v0, "spacer":Landroid/view/View;
    if-eqz v0, :cond_20

    .line 153
    if-eqz p1, :cond_1c

    const/16 v1, 0x8

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x4

    :goto_1d
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    :cond_20
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildCount()I

    move-result v1

    .line 159
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x2

    .local v2, "i":I
    :goto_26
    if-ltz v2, :cond_32

    .line 160
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 159
    add-int/lit8 v2, v2, -0x1

    goto :goto_26

    .line 162
    .end local v2    # "i":I
    :cond_32
    return-void
.end method


# virtual methods
.method public whitelist getMinimumHeight()I
    .registers 3

    .line 144
    iget v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mMinimumHeight:I

    invoke-super {p0}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected whitelist onMeasure(II)V
    .registers 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 65
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 67
    .local v0, "widthSize":I
    iget-boolean v1, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 68
    iget v1, p0, Lcom/android/internal/widget/ButtonBarLayout;->mLastWidthSize:I

    if-le v0, v1, :cond_16

    invoke-direct {p0}, Lcom/android/internal/widget/ButtonBarLayout;->isStacked()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 70
    invoke-direct {p0, v2}, Lcom/android/internal/widget/ButtonBarLayout;->setStacked(Z)V

    .line 73
    :cond_16
    iput v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 76
    :cond_18
    const/4 v1, 0x0

    .line 82
    .local v1, "needsRemeasure":Z
    invoke-direct {p0}, Lcom/android/internal/widget/ButtonBarLayout;->isStacked()Z

    move-result v3

    if-nez v3, :cond_2f

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v3, v4, :cond_2f

    .line 83
    const/high16 v3, -0x80000000

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 86
    .local v3, "initialWidthMeasureSpec":I
    const/4 v1, 0x1

    goto :goto_30

    .line 88
    .end local v3    # "initialWidthMeasureSpec":I
    :cond_2f
    move v3, p1

    .line 91
    .restart local v3    # "initialWidthMeasureSpec":I
    :goto_30
    invoke-super {p0, v3, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 93
    iget-boolean v4, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v4, :cond_4d

    invoke-direct {p0}, Lcom/android/internal/widget/ButtonBarLayout;->isStacked()Z

    move-result v4

    if-nez v4, :cond_4d

    .line 94
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getMeasuredWidthAndState()I

    move-result v4

    .line 95
    .local v4, "measuredWidth":I
    const/high16 v5, -0x1000000

    and-int/2addr v5, v4

    .line 96
    .local v5, "measuredWidthState":I
    const/high16 v6, 0x1000000

    if-ne v5, v6, :cond_4d

    .line 97
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/internal/widget/ButtonBarLayout;->setStacked(Z)V

    .line 100
    const/4 v1, 0x1

    .line 104
    .end local v4    # "measuredWidth":I
    .end local v5    # "measuredWidthState":I
    :cond_4d
    if-eqz v1, :cond_52

    .line 105
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 110
    :cond_52
    const/4 v4, 0x0

    .line 111
    .local v4, "minHeight":I
    invoke-direct {p0, v2}, Lcom/android/internal/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    move-result v2

    .line 112
    .local v2, "firstVisible":I
    if-ltz v2, :cond_a1

    .line 113
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 114
    .local v5, "firstButton":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 115
    .local v6, "firstParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getPaddingTop()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v8

    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    add-int/2addr v4, v7

    .line 117
    invoke-direct {p0}, Lcom/android/internal/widget/ButtonBarLayout;->isStacked()Z

    move-result v7

    if-eqz v7, :cond_9c

    .line 118
    add-int/lit8 v7, v2, 0x1

    invoke-direct {p0, v7}, Lcom/android/internal/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    move-result v7

    .line 119
    .local v7, "secondVisible":I
    if-ltz v7, :cond_9b

    .line 120
    int-to-float v8, v4

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    int-to-float v9, v9

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    const/high16 v11, 0x41800000    # 16.0f

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v4, v8

    .line 123
    .end local v7    # "secondVisible":I
    :cond_9b
    goto :goto_a1

    .line 124
    :cond_9c
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getPaddingBottom()I

    move-result v7

    add-int/2addr v4, v7

    .line 128
    .end local v5    # "firstButton":Landroid/view/View;
    .end local v6    # "firstParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_a1
    :goto_a1
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getMinimumHeight()I

    move-result v5

    if-eq v5, v4, :cond_aa

    .line 129
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ButtonBarLayout;->setMinimumHeight(I)V

    .line 131
    :cond_aa
    return-void
.end method

.method public blacklist setAllowStacking(Z)V
    .registers 4
    .param p1, "allowStacking"    # Z

    .line 54
    iget-boolean v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eq v0, p1, :cond_18

    .line 55
    iput-boolean p1, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 56
    iget-boolean v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ButtonBarLayout;->setStacked(Z)V

    .line 59
    :cond_15
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->requestLayout()V

    .line 61
    :cond_18
    return-void
.end method
