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
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    return-void
.end method


# virtual methods
.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 140
    instance-of v0, p1, Landroid/widget/AbsoluteLayout$LayoutParams;

    return v0
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 107
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 134
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 145
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 14
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 113
    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getChildCount()I

    move-result v0

    .line 115
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_35

    .line 116
    invoke-virtual {p0, v1}, Landroid/widget/AbsoluteLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 117
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_32

    .line 119
    nop

    .line 120
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 122
    .local v3, "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    iget v4, p0, Landroid/widget/AbsoluteLayout;->mPaddingLeft:I

    iget v5, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    add-int/2addr v4, v5

    .line 123
    .local v4, "childLeft":I
    iget v5, p0, Landroid/widget/AbsoluteLayout;->mPaddingTop:I

    iget v6, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    add-int/2addr v5, v6

    .line 124
    .local v5, "childTop":I
    nop

    .line 125
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v4

    .line 126
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v5

    .line 124
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 115
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    .end local v4    # "childLeft":I
    .end local v5    # "childTop":I
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 130
    .end local v1    # "i":I
    :cond_35
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 61
    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getChildCount()I

    move-result v0

    .line 63
    .local v0, "count":I
    const/4 v1, 0x0

    .line 64
    .local v1, "maxHeight":I
    const/4 v2, 0x0

    .line 67
    .local v2, "maxWidth":I
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->measureChildren(II)V

    .line 70
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v0, :cond_38

    .line 71
    invoke-virtual {p0, v3}, Landroid/widget/AbsoluteLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 72
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_35

    .line 76
    nop

    .line 77
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 79
    .local v5, "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    iget v6, v5, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    .line 80
    .local v6, "childRight":I
    iget v7, v5, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    .line 82
    .local v7, "childBottom":I
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 83
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 70
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    .end local v6    # "childRight":I
    .end local v7    # "childBottom":I
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 88
    .end local v3    # "i":I
    :cond_38
    iget v3, p0, Landroid/widget/AbsoluteLayout;->mPaddingLeft:I

    iget v4, p0, Landroid/widget/AbsoluteLayout;->mPaddingRight:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 89
    iget v3, p0, Landroid/widget/AbsoluteLayout;->mPaddingTop:I

    iget v4, p0, Landroid/widget/AbsoluteLayout;->mPaddingBottom:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 92
    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 93
    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 95
    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/widget/AbsoluteLayout;->resolveSizeAndState(III)I

    move-result v4

    .line 96
    invoke-static {v1, p2, v3}, Landroid/widget/AbsoluteLayout;->resolveSizeAndState(III)I

    move-result v3

    .line 95
    invoke-virtual {p0, v4, v3}, Landroid/widget/AbsoluteLayout;->setMeasuredDimension(II)V

    .line 97
    return-void
.end method

.method public whitelist shouldDelayChildPressedState()Z
    .registers 2

    .line 150
    const/4 v0, 0x0

    return v0
.end method
