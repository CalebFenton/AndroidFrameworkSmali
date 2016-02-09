.class public Lcom/android/internal/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonBarLayout.java"


# instance fields
.field private mAllowStacking:Z

.field private mLastWidthSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 36
    const/4 v1, -0x1

    #@5
    iput v1, p0, Lcom/android/internal/widget/ButtonBarLayout;->mLastWidthSize:I

    #@7
    .line 41
    sget-object v1, Lcom/android/internal/R$styleable;->ButtonBarLayout:[I

    #@9
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@c
    move-result-object v0

    #@d
    .line 42
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@10
    move-result v1

    #@11
    iput-boolean v1, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    #@13
    .line 43
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@16
    .line 38
    return-void
.end method

.method private isStacked()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 120
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
    .line 103
    if-eqz p1, :cond_0

    #@3
    const/4 v3, 0x1

    #@4
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ButtonBarLayout;->setOrientation(I)V

    #@7
    .line 104
    if-eqz p1, :cond_2

    #@9
    const/4 v3, 0x5

    #@a
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ButtonBarLayout;->setGravity(I)V

    #@d
    .line 106
    const v3, 0x10202f9

    #@10
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ButtonBarLayout;->findViewById(I)Landroid/view/View;

    #@13
    move-result-object v2

    #@14
    .line 107
    .local v2, "spacer":Landroid/view/View;
    if-eqz v2, :cond_1

    #@16
    .line 108
    if-eqz p1, :cond_3

    #@18
    const/16 v3, 0x8

    #@1a
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    #@1d
    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildCount()I

    #@20
    move-result v0

    #@21
    .line 114
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x2

    #@23
    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_4

    #@25
    .line 115
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    #@2c
    .line 114
    add-int/lit8 v1, v1, -0x1

    #@2e
    goto :goto_2

    #@2f
    .line 104
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "spacer":Landroid/view/View;
    :cond_2
    const/16 v3, 0x50

    #@31
    goto :goto_0

    #@32
    .line 108
    .restart local v2    # "spacer":Landroid/view/View;
    :cond_3
    const/4 v3, 0x4

    #@33
    goto :goto_1

    #@34
    .line 102
    .restart local v0    # "childCount":I
    .restart local v1    # "i":I
    :cond_4
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 58
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@3
    move-result v4

    #@4
    .line 60
    .local v4, "widthSize":I
    iget-boolean v5, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    #@6
    if-eqz v5, :cond_1

    #@8
    .line 61
    iget v5, p0, Lcom/android/internal/widget/ButtonBarLayout;->mLastWidthSize:I

    #@a
    if-le v4, v5, :cond_0

    #@c
    invoke-direct {p0}, Lcom/android/internal/widget/ButtonBarLayout;->isStacked()Z

    #@f
    move-result v5

    #@10
    if-eqz v5, :cond_0

    #@12
    .line 63
    const/4 v5, 0x0

    #@13
    invoke-direct {p0, v5}, Lcom/android/internal/widget/ButtonBarLayout;->setStacked(Z)V

    #@16
    .line 66
    :cond_0
    iput v4, p0, Lcom/android/internal/widget/ButtonBarLayout;->mLastWidthSize:I

    #@18
    .line 69
    :cond_1
    const/4 v3, 0x0

    #@19
    .line 75
    .local v3, "needsRemeasure":Z
    invoke-direct {p0}, Lcom/android/internal/widget/ButtonBarLayout;->isStacked()Z

    #@1c
    move-result v5

    #@1d
    if-nez v5, :cond_4

    #@1f
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@22
    move-result v5

    #@23
    const/high16 v6, 0x40000000    # 2.0f

    #@25
    if-ne v5, v6, :cond_4

    #@27
    .line 76
    const/high16 v5, -0x80000000

    #@29
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@2c
    move-result v0

    #@2d
    .line 79
    .local v0, "initialWidthMeasureSpec":I
    const/4 v3, 0x1

    #@2e
    .line 84
    :goto_0
    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    #@31
    .line 86
    iget-boolean v5, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    #@33
    if-eqz v5, :cond_2

    #@35
    invoke-direct {p0}, Lcom/android/internal/widget/ButtonBarLayout;->isStacked()Z

    #@38
    move-result v5

    #@39
    if-eqz v5, :cond_5

    #@3b
    .line 97
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    #@3d
    .line 98
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    #@40
    .line 57
    :cond_3
    return-void

    #@41
    .line 81
    .end local v0    # "initialWidthMeasureSpec":I
    :cond_4
    move v0, p1

    #@42
    .restart local v0    # "initialWidthMeasureSpec":I
    goto :goto_0

    #@43
    .line 87
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getMeasuredWidthAndState()I

    #@46
    move-result v1

    #@47
    .line 88
    .local v1, "measuredWidth":I
    const/high16 v5, -0x1000000

    #@49
    and-int v2, v1, v5

    #@4b
    .line 89
    .local v2, "measuredWidthState":I
    const/high16 v5, 0x1000000

    #@4d
    if-ne v2, v5, :cond_2

    #@4f
    .line 90
    const/4 v5, 0x1

    #@50
    invoke-direct {p0, v5}, Lcom/android/internal/widget/ButtonBarLayout;->setStacked(Z)V

    #@53
    .line 93
    const/4 v3, 0x1

    #@54
    goto :goto_1
.end method

.method public setAllowStacking(Z)V
    .locals 2
    .param p1, "allowStacking"    # Z

    #@0
    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    #@2
    if-eq v0, p1, :cond_1

    #@4
    .line 48
    iput-boolean p1, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    #@6
    .line 49
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
    .line 50
    const/4 v0, 0x0

    #@12
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ButtonBarLayout;->setStacked(Z)V

    #@15
    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->requestLayout()V

    #@18
    .line 46
    :cond_1
    return-void
.end method
