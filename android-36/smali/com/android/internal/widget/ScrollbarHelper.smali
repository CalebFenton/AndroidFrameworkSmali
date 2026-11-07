.class Lcom/android/internal/widget/ScrollbarHelper;
.super Ljava/lang/Object;
.source "ScrollbarHelper.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist computeScrollExtent(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/android/internal/widget/RecyclerView$LayoutManager;Z)I
    .registers 8
    .param p0, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p1, "orientation"    # Lcom/android/internal/widget/OrientationHelper;
    .param p2, "startChild"    # Landroid/view/View;
    .param p3, "endChild"    # Landroid/view/View;
    .param p4, "lm"    # Lcom/android/internal/widget/RecyclerView$LayoutManager;
    .param p5, "smoothScrollbarEnabled"    # Z

    .line 64
    invoke-virtual {p4}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_35

    if-eqz p2, :cond_35

    if-nez p3, :cond_11

    goto :goto_35

    .line 68
    :cond_11
    if-nez p5, :cond_23

    .line 69
    invoke-virtual {p4, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p4, p3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 71
    :cond_23
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    .line 72
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 73
    .local v0, "extend":I
    invoke-virtual {p1}, Lcom/android/internal/widget/OrientationHelper;->getTotalSpace()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    .line 66
    .end local v0    # "extend":I
    :cond_35
    :goto_35
    const/4 v0, 0x0

    return v0
.end method

.method static blacklist computeScrollOffset(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/android/internal/widget/RecyclerView$LayoutManager;ZZ)I
    .registers 16
    .param p0, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p1, "orientation"    # Lcom/android/internal/widget/OrientationHelper;
    .param p2, "startChild"    # Landroid/view/View;
    .param p3, "endChild"    # Landroid/view/View;
    .param p4, "lm"    # Lcom/android/internal/widget/RecyclerView$LayoutManager;
    .param p5, "smoothScrollbarEnabled"    # Z
    .param p6, "reverseLayout"    # Z

    .line 33
    invoke-virtual {p4}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_71

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_71

    if-eqz p2, :cond_71

    if-nez p3, :cond_12

    goto :goto_71

    .line 37
    :cond_12
    invoke-virtual {p4, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 38
    invoke-virtual {p4, p3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 37
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 39
    .local v0, "minPosition":I
    invoke-virtual {p4, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 40
    invoke-virtual {p4, p3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 39
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 41
    .local v2, "maxPosition":I
    if-eqz p6, :cond_38

    .line 42
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_3c

    .line 43
    :cond_38
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_3c
    nop

    .line 44
    .local v1, "itemsBefore":I
    if-nez p5, :cond_40

    .line 45
    return v1

    .line 47
    :cond_40
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    .line 48
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 47
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 49
    .local v3, "laidOutArea":I
    invoke-virtual {p4, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    .line 50
    invoke-virtual {p4, p3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v4, v5

    .line 49
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 51
    .local v4, "itemRange":I
    int-to-float v5, v3

    int-to-float v6, v4

    div-float/2addr v5, v6

    .line 53
    .local v5, "avgSizePerRow":F
    int-to-float v6, v1

    mul-float/2addr v6, v5

    invoke-virtual {p1}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v7

    .line 54
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 53
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    return v6

    .line 35
    .end local v0    # "minPosition":I
    .end local v1    # "itemsBefore":I
    .end local v2    # "maxPosition":I
    .end local v3    # "laidOutArea":I
    .end local v4    # "itemRange":I
    .end local v5    # "avgSizePerRow":F
    :cond_71
    :goto_71
    return v1
.end method

.method static blacklist computeScrollRange(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/android/internal/widget/RecyclerView$LayoutManager;Z)I
    .registers 10
    .param p0, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p1, "orientation"    # Lcom/android/internal/widget/OrientationHelper;
    .param p2, "startChild"    # Landroid/view/View;
    .param p3, "endChild"    # Landroid/view/View;
    .param p4, "lm"    # Lcom/android/internal/widget/RecyclerView$LayoutManager;
    .param p5, "smoothScrollbarEnabled"    # Z

    .line 83
    invoke-virtual {p4}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_3b

    if-eqz p2, :cond_3b

    if-nez p3, :cond_11

    goto :goto_3b

    .line 87
    :cond_11
    if-nez p5, :cond_18

    .line 88
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    return v0

    .line 91
    :cond_18
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    .line 92
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 93
    .local v0, "laidOutArea":I
    invoke-virtual {p4, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 94
    invoke-virtual {p4, p3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 93
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 97
    .local v1, "laidOutRange":I
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    return v2

    .line 85
    .end local v0    # "laidOutArea":I
    .end local v1    # "laidOutRange":I
    :cond_3b
    :goto_3b
    const/4 v0, 0x0

    return v0
.end method
