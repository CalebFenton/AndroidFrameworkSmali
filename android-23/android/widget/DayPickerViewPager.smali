.class Landroid/widget/DayPickerViewPager;
.super Lcom/android/internal/widget/ViewPager;
.source "DayPickerViewPager.java"


# instance fields
.field private final mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 35
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/DayPickerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 39
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DayPickerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 43
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/DayPickerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    #@5
    const/4 v1, 0x1

    #@6
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    iput-object v0, p0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    #@b
    .line 47
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->populate()V

    #@3
    .line 56
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getChildCount()I

    #@6
    move-result v4

    #@7
    .line 59
    .local v4, "count":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@a
    move-result v11

    #@b
    const/high16 v12, 0x40000000    # 2.0f

    #@d
    if-ne v11, v12, :cond_2

    #@f
    .line 60
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@12
    move-result v11

    #@13
    const/high16 v12, 0x40000000    # 2.0f

    #@15
    if-eq v11, v12, :cond_3

    #@17
    const/4 v10, 0x1

    #@18
    .line 62
    .local v10, "measureMatchParentChildren":Z
    :goto_0
    const/4 v8, 0x0

    #@19
    .line 63
    .local v8, "maxHeight":I
    const/4 v9, 0x0

    #@1a
    .line 64
    .local v9, "maxWidth":I
    const/4 v2, 0x0

    #@1b
    .line 66
    .local v2, "childState":I
    const/4 v6, 0x0

    #@1c
    .local v6, "i":I
    :goto_1
    if-ge v6, v4, :cond_4

    #@1e
    .line 67
    invoke-virtual {p0, v6}, Landroid/widget/DayPickerViewPager;->getChildAt(I)Landroid/view/View;

    #@21
    move-result-object v0

    #@22
    .line 68
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@25
    move-result v11

    #@26
    const/16 v12, 0x8

    #@28
    if-eq v11, v12, :cond_1

    #@2a
    .line 69
    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/DayPickerViewPager;->measureChild(Landroid/view/View;II)V

    #@2d
    .line 70
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@30
    move-result-object v7

    #@31
    check-cast v7, Lcom/android/internal/widget/ViewPager$LayoutParams;

    #@33
    .line 71
    .local v7, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    #@36
    move-result v11

    #@37
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    #@3a
    move-result v9

    #@3b
    .line 72
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    #@3e
    move-result v11

    #@3f
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    #@42
    move-result v8

    #@43
    .line 73
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    #@46
    move-result v11

    #@47
    invoke-static {v2, v11}, Landroid/widget/DayPickerViewPager;->combineMeasuredStates(II)I

    #@4a
    move-result v2

    #@4b
    .line 74
    if-eqz v10, :cond_1

    #@4d
    .line 75
    iget v11, v7, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    #@4f
    const/4 v12, -0x1

    #@50
    if-eq v11, v12, :cond_0

    #@52
    .line 76
    iget v11, v7, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    #@54
    const/4 v12, -0x1

    #@55
    if-ne v11, v12, :cond_1

    #@57
    .line 77
    :cond_0
    iget-object v11, p0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    #@59
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5c
    .line 66
    .end local v7    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    #@5e
    goto :goto_1

    #@5f
    .line 59
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childState":I
    .end local v6    # "i":I
    .end local v8    # "maxHeight":I
    .end local v9    # "maxWidth":I
    .end local v10    # "measureMatchParentChildren":Z
    :cond_2
    const/4 v10, 0x1

    #@60
    .restart local v10    # "measureMatchParentChildren":Z
    goto :goto_0

    #@61
    .line 60
    .end local v10    # "measureMatchParentChildren":Z
    :cond_3
    const/4 v10, 0x0

    #@62
    .restart local v10    # "measureMatchParentChildren":Z
    goto :goto_0

    #@63
    .line 84
    .restart local v2    # "childState":I
    .restart local v6    # "i":I
    .restart local v8    # "maxHeight":I
    .restart local v9    # "maxWidth":I
    :cond_4
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingLeft()I

    #@66
    move-result v11

    #@67
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingRight()I

    #@6a
    move-result v12

    #@6b
    add-int/2addr v11, v12

    #@6c
    add-int/2addr v9, v11

    #@6d
    .line 85
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingTop()I

    #@70
    move-result v11

    #@71
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingBottom()I

    #@74
    move-result v12

    #@75
    add-int/2addr v11, v12

    #@76
    add-int/2addr v8, v11

    #@77
    .line 88
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getSuggestedMinimumHeight()I

    #@7a
    move-result v11

    #@7b
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    #@7e
    move-result v8

    #@7f
    .line 89
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getSuggestedMinimumWidth()I

    #@82
    move-result v11

    #@83
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    #@86
    move-result v9

    #@87
    .line 92
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getForeground()Landroid/graphics/drawable/Drawable;

    #@8a
    move-result-object v5

    #@8b
    .line 93
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_5

    #@8d
    .line 94
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    #@90
    move-result v11

    #@91
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    #@94
    move-result v8

    #@95
    .line 95
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    #@98
    move-result v11

    #@99
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    #@9c
    move-result v9

    #@9d
    .line 98
    :cond_5
    invoke-static {v9, p1, v2}, Landroid/widget/DayPickerViewPager;->resolveSizeAndState(III)I

    #@a0
    move-result v11

    #@a1
    .line 100
    shl-int/lit8 v12, v2, 0x10

    #@a3
    .line 99
    invoke-static {v8, p2, v12}, Landroid/widget/DayPickerViewPager;->resolveSizeAndState(III)I

    #@a6
    move-result v12

    #@a7
    .line 98
    invoke-virtual {p0, v11, v12}, Landroid/widget/DayPickerViewPager;->setMeasuredDimension(II)V

    #@aa
    .line 102
    iget-object v11, p0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    #@ac
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@af
    move-result v4

    #@b0
    .line 103
    const/4 v11, 0x1

    #@b1
    if-le v4, v11, :cond_8

    #@b3
    .line 104
    const/4 v6, 0x0

    #@b4
    :goto_2
    if-ge v6, v4, :cond_8

    #@b6
    .line 105
    iget-object v11, p0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    #@b8
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@bb
    move-result-object v0

    #@bc
    check-cast v0, Landroid/view/View;

    #@be
    .line 107
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@c1
    move-result-object v7

    #@c2
    check-cast v7, Lcom/android/internal/widget/ViewPager$LayoutParams;

    #@c4
    .line 111
    .restart local v7    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget v11, v7, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    #@c6
    const/4 v12, -0x1

    #@c7
    if-ne v11, v12, :cond_6

    #@c9
    .line 113
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getMeasuredWidth()I

    #@cc
    move-result v11

    #@cd
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingLeft()I

    #@d0
    move-result v12

    #@d1
    sub-int/2addr v11, v12

    #@d2
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingRight()I

    #@d5
    move-result v12

    #@d6
    sub-int/2addr v11, v12

    #@d7
    .line 114
    const/high16 v12, 0x40000000    # 2.0f

    #@d9
    .line 112
    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@dc
    move-result v3

    #@dd
    .line 121
    .local v3, "childWidthMeasureSpec":I
    :goto_3
    iget v11, v7, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    #@df
    const/4 v12, -0x1

    #@e0
    if-ne v11, v12, :cond_7

    #@e2
    .line 123
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getMeasuredHeight()I

    #@e5
    move-result v11

    #@e6
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingTop()I

    #@e9
    move-result v12

    #@ea
    sub-int/2addr v11, v12

    #@eb
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingBottom()I

    #@ee
    move-result v12

    #@ef
    sub-int/2addr v11, v12

    #@f0
    .line 124
    const/high16 v12, 0x40000000    # 2.0f

    #@f2
    .line 122
    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@f5
    move-result v1

    #@f6
    .line 131
    .local v1, "childHeightMeasureSpec":I
    :goto_4
    invoke-virtual {v0, v3, v1}, Landroid/view/View;->measure(II)V

    #@f9
    .line 104
    add-int/lit8 v6, v6, 0x1

    #@fb
    goto :goto_2

    #@fc
    .line 117
    .end local v1    # "childHeightMeasureSpec":I
    .end local v3    # "childWidthMeasureSpec":I
    :cond_6
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingLeft()I

    #@ff
    move-result v11

    #@100
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingRight()I

    #@103
    move-result v12

    #@104
    add-int/2addr v11, v12

    #@105
    .line 118
    iget v12, v7, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    #@107
    .line 116
    invoke-static {p1, v11, v12}, Landroid/widget/DayPickerViewPager;->getChildMeasureSpec(III)I

    #@10a
    move-result v3

    #@10b
    .restart local v3    # "childWidthMeasureSpec":I
    goto :goto_3

    #@10c
    .line 127
    :cond_7
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingTop()I

    #@10f
    move-result v11

    #@110
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingBottom()I

    #@113
    move-result v12

    #@114
    add-int/2addr v11, v12

    #@115
    .line 128
    iget v12, v7, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    #@117
    .line 126
    invoke-static {p2, v11, v12}, Landroid/widget/DayPickerViewPager;->getChildMeasureSpec(III)I

    #@11a
    move-result v1

    #@11b
    .restart local v1    # "childHeightMeasureSpec":I
    goto :goto_4

    #@11c
    .line 135
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeightMeasureSpec":I
    .end local v3    # "childWidthMeasureSpec":I
    .end local v7    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    :cond_8
    iget-object v11, p0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    #@11e
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    #@121
    .line 52
    return-void
.end method
