.class public Landroid/widget/AbsoluteLayout;
.super Landroid/view/ViewGroup;
.source "AbsoluteLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsoluteLayout$LayoutParams;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 43
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 47
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 51
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 54
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 139
    instance-of v0, p1, Landroid/widget/AbsoluteLayout$LayoutParams;

    #@2
    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, -0x2

    #@2
    .line 106
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    #@4
    invoke-direct {v0, v1, v1, v2, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    #@7
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 133
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    #@2
    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 144
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    #@2
    invoke-direct {v0, p1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@5
    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    #@0
    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getChildCount()I

    #@3
    move-result v3

    #@4
    .line 114
    .local v3, "count":I
    const/4 v4, 0x0

    #@5
    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    #@7
    .line 115
    invoke-virtual {p0, v4}, Landroid/widget/AbsoluteLayout;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    .line 116
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@e
    move-result v6

    #@f
    const/16 v7, 0x8

    #@11
    if-eq v6, v7, :cond_0

    #@13
    .line 119
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@16
    move-result-object v5

    #@17
    check-cast v5, Landroid/widget/AbsoluteLayout$LayoutParams;

    #@19
    .line 121
    .local v5, "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    iget v6, p0, Landroid/widget/AbsoluteLayout;->mPaddingLeft:I

    #@1b
    iget v7, v5, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    #@1d
    add-int v1, v6, v7

    #@1f
    .line 122
    .local v1, "childLeft":I
    iget v6, p0, Landroid/widget/AbsoluteLayout;->mPaddingTop:I

    #@21
    iget v7, v5, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    #@23
    add-int v2, v6, v7

    #@25
    .line 124
    .local v2, "childTop":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    #@28
    move-result v6

    #@29
    add-int/2addr v6, v1

    #@2a
    .line 125
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    #@2d
    move-result v7

    #@2e
    add-int/2addr v7, v2

    #@2f
    .line 123
    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    #@32
    .line 114
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    .end local v5    # "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@34
    goto :goto_0

    #@35
    .line 111
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 60
    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getChildCount()I

    #@4
    move-result v3

    #@5
    .line 62
    .local v3, "count":I
    const/4 v6, 0x0

    #@6
    .line 63
    .local v6, "maxHeight":I
    const/4 v7, 0x0

    #@7
    .line 66
    .local v7, "maxWidth":I
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->measureChildren(II)V

    #@a
    .line 69
    const/4 v4, 0x0

    #@b
    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    #@d
    .line 70
    invoke-virtual {p0, v4}, Landroid/widget/AbsoluteLayout;->getChildAt(I)Landroid/view/View;

    #@10
    move-result-object v0

    #@11
    .line 71
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@14
    move-result v8

    #@15
    const/16 v9, 0x8

    #@17
    if-eq v8, v9, :cond_0

    #@19
    .line 76
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1c
    move-result-object v5

    #@1d
    check-cast v5, Landroid/widget/AbsoluteLayout$LayoutParams;

    #@1f
    .line 78
    .local v5, "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    iget v8, v5, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    #@21
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    #@24
    move-result v9

    #@25
    add-int v2, v8, v9

    #@27
    .line 79
    .local v2, "childRight":I
    iget v8, v5, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    #@29
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    #@2c
    move-result v9

    #@2d
    add-int v1, v8, v9

    #@2f
    .line 81
    .local v1, "childBottom":I
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    #@32
    move-result v7

    #@33
    .line 82
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    #@36
    move-result v6

    #@37
    .line 69
    .end local v1    # "childBottom":I
    .end local v2    # "childRight":I
    .end local v5    # "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 87
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iget v8, p0, Landroid/widget/AbsoluteLayout;->mPaddingLeft:I

    #@3c
    iget v9, p0, Landroid/widget/AbsoluteLayout;->mPaddingRight:I

    #@3e
    add-int/2addr v8, v9

    #@3f
    add-int/2addr v7, v8

    #@40
    .line 88
    iget v8, p0, Landroid/widget/AbsoluteLayout;->mPaddingTop:I

    #@42
    iget v9, p0, Landroid/widget/AbsoluteLayout;->mPaddingBottom:I

    #@44
    add-int/2addr v8, v9

    #@45
    add-int/2addr v6, v8

    #@46
    .line 91
    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getSuggestedMinimumHeight()I

    #@49
    move-result v8

    #@4a
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    #@4d
    move-result v6

    #@4e
    .line 92
    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getSuggestedMinimumWidth()I

    #@51
    move-result v8

    #@52
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    #@55
    move-result v7

    #@56
    .line 94
    invoke-static {v7, p1, v10}, Landroid/widget/AbsoluteLayout;->resolveSizeAndState(III)I

    #@59
    move-result v8

    #@5a
    .line 95
    invoke-static {v6, p2, v10}, Landroid/widget/AbsoluteLayout;->resolveSizeAndState(III)I

    #@5d
    move-result v9

    #@5e
    .line 94
    invoke-virtual {p0, v8, v9}, Landroid/widget/AbsoluteLayout;->setMeasuredDimension(II)V

    #@61
    .line 59
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    #@0
    .prologue
    .line 149
    const/4 v0, 0x0

    #@1
    return v0
.end method
