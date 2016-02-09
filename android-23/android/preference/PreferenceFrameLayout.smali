.class public Landroid/preference/PreferenceFrameLayout;
.super Landroid/widget/FrameLayout;
.source "PreferenceFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceFrameLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_BORDER_BOTTOM:I

.field private static final DEFAULT_BORDER_LEFT:I

.field private static final DEFAULT_BORDER_RIGHT:I

.field private static final DEFAULT_BORDER_TOP:I


# instance fields
.field private final mBorderBottom:I

.field private final mBorderLeft:I

.field private final mBorderRight:I

.field private final mBorderTop:I

.field private mPaddingApplied:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 40
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/preference/PreferenceFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 44
    const v0, 0x116002f

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/preference/PreferenceFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 48
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/PreferenceFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    #@2
    const/4 v7, 0x0

    #@3
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@6
    .line 55
    sget-object v6, Lcom/android/internal/R$styleable;->PreferenceFrameLayout:[I

    #@8
    .line 54
    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@b
    move-result-object v0

    #@c
    .line 57
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@f
    move-result-object v6

    #@10
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@13
    move-result-object v6

    #@14
    iget v5, v6, Landroid/util/DisplayMetrics;->density:F

    #@16
    .line 58
    .local v5, "density":F
    mul-float v6, v5, v7

    #@18
    add-float/2addr v6, v8

    #@19
    float-to-int v1, v6

    #@1a
    .line 59
    .local v1, "defaultBorderTop":I
    mul-float v6, v5, v7

    #@1c
    add-float/2addr v6, v8

    #@1d
    float-to-int v2, v6

    #@1e
    .line 60
    .local v2, "defaultBottomPadding":I
    mul-float v6, v5, v7

    #@20
    add-float/2addr v6, v8

    #@21
    float-to-int v3, v6

    #@22
    .line 61
    .local v3, "defaultLeftPadding":I
    mul-float v6, v5, v7

    #@24
    add-float/2addr v6, v8

    #@25
    float-to-int v4, v6

    #@26
    .line 64
    .local v4, "defaultRightPadding":I
    const/4 v6, 0x0

    #@27
    .line 63
    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@2a
    move-result v6

    #@2b
    iput v6, p0, Landroid/preference/PreferenceFrameLayout;->mBorderTop:I

    #@2d
    .line 67
    const/4 v6, 0x1

    #@2e
    .line 66
    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@31
    move-result v6

    #@32
    iput v6, p0, Landroid/preference/PreferenceFrameLayout;->mBorderBottom:I

    #@34
    .line 70
    const/4 v6, 0x2

    #@35
    .line 69
    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@38
    move-result v6

    #@39
    iput v6, p0, Landroid/preference/PreferenceFrameLayout;->mBorderLeft:I

    #@3b
    .line 73
    const/4 v6, 0x3

    #@3c
    .line 72
    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@3f
    move-result v6

    #@40
    iput v6, p0, Landroid/preference/PreferenceFrameLayout;->mBorderRight:I

    #@42
    .line 76
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@45
    .line 52
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 11
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/preference/PreferenceFrameLayout;->getPaddingTop()I

    #@3
    move-result v3

    #@4
    .line 90
    .local v3, "borderTop":I
    invoke-virtual {p0}, Landroid/preference/PreferenceFrameLayout;->getPaddingBottom()I

    #@7
    move-result v0

    #@8
    .line 91
    .local v0, "borderBottom":I
    invoke-virtual {p0}, Landroid/preference/PreferenceFrameLayout;->getPaddingLeft()I

    #@b
    move-result v1

    #@c
    .line 92
    .local v1, "borderLeft":I
    invoke-virtual {p0}, Landroid/preference/PreferenceFrameLayout;->getPaddingRight()I

    #@f
    move-result v2

    #@10
    .line 94
    .local v2, "borderRight":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@13
    move-result-object v5

    #@14
    .line 95
    .local v5, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v10, v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    #@16
    if-eqz v10, :cond_3

    #@18
    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1b
    move-result-object v4

    #@1c
    check-cast v4, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    #@1e
    .line 98
    :goto_0
    if-eqz v4, :cond_4

    #@20
    iget-boolean v10, v4, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    #@22
    if-eqz v10, :cond_4

    #@24
    .line 99
    iget-boolean v10, p0, Landroid/preference/PreferenceFrameLayout;->mPaddingApplied:Z

    #@26
    if-eqz v10, :cond_0

    #@28
    .line 100
    iget v10, p0, Landroid/preference/PreferenceFrameLayout;->mBorderTop:I

    #@2a
    sub-int/2addr v3, v10

    #@2b
    .line 101
    iget v10, p0, Landroid/preference/PreferenceFrameLayout;->mBorderBottom:I

    #@2d
    sub-int/2addr v0, v10

    #@2e
    .line 102
    iget v10, p0, Landroid/preference/PreferenceFrameLayout;->mBorderLeft:I

    #@30
    sub-int/2addr v1, v10

    #@31
    .line 103
    iget v10, p0, Landroid/preference/PreferenceFrameLayout;->mBorderRight:I

    #@33
    sub-int/2addr v2, v10

    #@34
    .line 104
    const/4 v10, 0x0

    #@35
    iput-boolean v10, p0, Landroid/preference/PreferenceFrameLayout;->mPaddingApplied:Z

    #@37
    .line 118
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/preference/PreferenceFrameLayout;->getPaddingTop()I

    #@3a
    move-result v9

    #@3b
    .line 119
    .local v9, "previousTop":I
    invoke-virtual {p0}, Landroid/preference/PreferenceFrameLayout;->getPaddingBottom()I

    #@3e
    move-result v6

    #@3f
    .line 120
    .local v6, "previousBottom":I
    invoke-virtual {p0}, Landroid/preference/PreferenceFrameLayout;->getPaddingLeft()I

    #@42
    move-result v7

    #@43
    .line 121
    .local v7, "previousLeft":I
    invoke-virtual {p0}, Landroid/preference/PreferenceFrameLayout;->getPaddingRight()I

    #@46
    move-result v8

    #@47
    .line 122
    .local v8, "previousRight":I
    if-ne v9, v3, :cond_1

    #@49
    if-eq v6, v0, :cond_5

    #@4b
    .line 124
    :cond_1
    :goto_2
    invoke-virtual {p0, v1, v3, v2, v0}, Landroid/preference/PreferenceFrameLayout;->setPadding(IIII)V

    #@4e
    .line 127
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    #@51
    .line 88
    return-void

    #@52
    .line 96
    .end local v6    # "previousBottom":I
    .end local v7    # "previousLeft":I
    .end local v8    # "previousRight":I
    .end local v9    # "previousTop":I
    :cond_3
    const/4 v4, 0x0

    #@53
    .local v4, "layoutParams":Landroid/preference/PreferenceFrameLayout$LayoutParams;
    goto :goto_0

    #@54
    .line 109
    .end local v4    # "layoutParams":Landroid/preference/PreferenceFrameLayout$LayoutParams;
    :cond_4
    iget-boolean v10, p0, Landroid/preference/PreferenceFrameLayout;->mPaddingApplied:Z

    #@56
    if-nez v10, :cond_0

    #@58
    .line 110
    iget v10, p0, Landroid/preference/PreferenceFrameLayout;->mBorderTop:I

    #@5a
    add-int/2addr v3, v10

    #@5b
    .line 111
    iget v10, p0, Landroid/preference/PreferenceFrameLayout;->mBorderBottom:I

    #@5d
    add-int/2addr v0, v10

    #@5e
    .line 112
    iget v10, p0, Landroid/preference/PreferenceFrameLayout;->mBorderLeft:I

    #@60
    add-int/2addr v1, v10

    #@61
    .line 113
    iget v10, p0, Landroid/preference/PreferenceFrameLayout;->mBorderRight:I

    #@63
    add-int/2addr v2, v10

    #@64
    .line 114
    const/4 v10, 0x1

    #@65
    iput-boolean v10, p0, Landroid/preference/PreferenceFrameLayout;->mPaddingApplied:Z

    #@67
    goto :goto_1

    #@68
    .line 123
    .restart local v6    # "previousBottom":I
    .restart local v7    # "previousLeft":I
    .restart local v8    # "previousRight":I
    .restart local v9    # "previousTop":I
    :cond_5
    if-ne v7, v1, :cond_1

    #@6a
    if-eq v8, v2, :cond_2

    #@6c
    goto :goto_2
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/preference/PreferenceFrameLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 84
    new-instance v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    #@2
    invoke-virtual {p0}, Landroid/preference/PreferenceFrameLayout;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Landroid/preference/PreferenceFrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 83
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/preference/PreferenceFrameLayout$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
