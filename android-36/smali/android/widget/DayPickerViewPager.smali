.class Landroid/widget/DayPickerViewPager;
.super Lcom/android/internal/widget/ViewPager;
.source "DayPickerViewPager.java"


# instance fields
.field private final blacklist mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/DayPickerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DayPickerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/DayPickerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 50
    return-void
.end method


# virtual methods
.method protected blacklist findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .registers 9
    .param p2, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .line 142
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/view/View;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 143
    return-object p0

    .line 147
    :cond_7
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getAdapter()Lcom/android/internal/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/DayPickerPagerAdapter;

    .line 148
    .local v0, "adapter":Landroid/widget/DayPickerPagerAdapter;
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getCurrent()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/DayPickerPagerAdapter;->getView(Ljava/lang/Object;)Landroid/widget/SimpleMonthView;

    move-result-object v1

    .line 149
    .local v1, "current":Landroid/widget/SimpleMonthView;
    if-eq v1, p2, :cond_20

    if-eqz v1, :cond_20

    .line 150
    invoke-virtual {v1, p1}, Landroid/widget/SimpleMonthView;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 151
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_20

    .line 152
    return-object v2

    .line 156
    .end local v2    # "v":Landroid/view/View;
    :cond_20
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getChildCount()I

    move-result v2

    .line 157
    .local v2, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_25
    if-ge v3, v2, :cond_39

    .line 158
    invoke-virtual {p0, v3}, Landroid/widget/DayPickerViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 160
    .local v4, "child":Landroid/view/View;
    if-eq v4, p2, :cond_36

    if-eq v4, v1, :cond_36

    .line 161
    invoke-virtual {v4, p1}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v5

    .line 163
    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_36

    .line 164
    return-object v5

    .line 157
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "v":Landroid/view/View;
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 169
    .end local v3    # "i":I
    :cond_39
    const/4 v3, 0x0

    return-object v3
.end method

.method protected whitelist onMeasure(II)V
    .registers 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 54
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0}, Landroid/widget/DayPickerViewPager;->populate()V

    .line 57
    invoke-virtual {v0}, Landroid/widget/DayPickerViewPager;->getChildCount()I

    move-result v3

    .line 59
    .local v3, "count":I
    nop

    .line 60
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    const/4 v5, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v4, v6, :cond_20

    .line 61
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    if-eq v4, v6, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 v4, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    move v4, v5

    .line 63
    .local v4, "measureMatchParentChildren":Z
    :goto_21
    const/4 v7, 0x0

    .line 64
    .local v7, "maxHeight":I
    const/4 v8, 0x0

    .line 65
    .local v8, "maxWidth":I
    const/4 v9, 0x0

    .line 67
    .local v9, "childState":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_25
    const/4 v11, -0x1

    if-ge v10, v3, :cond_67

    .line 68
    invoke-virtual {v0, v10}, Landroid/widget/DayPickerViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 69
    .local v12, "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_64

    .line 70
    invoke-virtual {v0, v12, v1, v2}, Landroid/widget/DayPickerViewPager;->measureChild(Landroid/view/View;II)V

    .line 71
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 72
    .local v13, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 73
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    invoke-static {v7, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 74
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredState()I

    move-result v14

    invoke-static {v9, v14}, Landroid/widget/DayPickerViewPager;->combineMeasuredStates(II)I

    move-result v9

    .line 75
    if-eqz v4, :cond_64

    .line 76
    iget v14, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    if-eq v14, v11, :cond_5f

    iget v14, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    if-ne v14, v11, :cond_64

    .line 78
    :cond_5f
    iget-object v11, v0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .end local v12    # "child":Landroid/view/View;
    .end local v13    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    :cond_64
    add-int/lit8 v10, v10, 0x1

    goto :goto_25

    .line 85
    .end local v10    # "i":I
    :cond_67
    invoke-virtual {v0}, Landroid/widget/DayPickerViewPager;->getPaddingLeft()I

    move-result v10

    invoke-virtual {v0}, Landroid/widget/DayPickerViewPager;->getPaddingRight()I

    move-result v12

    add-int/2addr v10, v12

    add-int/2addr v8, v10

    .line 86
    invoke-virtual {v0}, Landroid/widget/DayPickerViewPager;->getPaddingTop()I

    move-result v10

    invoke-virtual {v0}, Landroid/widget/DayPickerViewPager;->getPaddingBottom()I

    move-result v12

    add-int/2addr v10, v12

    add-int/2addr v7, v10

    .line 89
    invoke-virtual {v0}, Landroid/widget/DayPickerViewPager;->getSuggestedMinimumHeight()I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 90
    invoke-virtual {v0}, Landroid/widget/DayPickerViewPager;->getSuggestedMinimumWidth()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 93
    invoke-virtual {v0}, Landroid/widget/DayPickerViewPager;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 94
    .local v10, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_a1

    .line 95
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v12

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 96
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v12

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 99
    :cond_a1
    invoke-static {v8, v1, v9}, Landroid/widget/DayPickerViewPager;->resolveSizeAndState(III)I

    move-result v12

    shl-int/lit8 v13, v9, 0x10

    .line 100
    invoke-static {v7, v2, v13}, Landroid/widget/DayPickerViewPager;->resolveSizeAndState(III)I

    move-result v13

    .line 99
    invoke-virtual {v0, v12, v13}, Landroid/widget/DayPickerViewPager;->setMeasuredDimension(II)V

    .line 103
    iget-object v12, v0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 104
    if-le v3, v5, :cond_122

    .line 105
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_b7
    if-ge v5, v3, :cond_122

    .line 106
    iget-object v12, v0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 108
    .restart local v12    # "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 112
    .restart local v13    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget v14, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    if-ne v14, v11, :cond_df

    .line 113
    nop

    .line 114
    invoke-virtual {v0}, Landroid/widget/DayPickerViewPager;->getMeasuredWidth()I

    move-result v14

    invoke-virtual {v0}, Landroid/widget/DayPickerViewPager;->getPaddingLeft()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual {v0}, Landroid/widget/DayPickerViewPager;->getPaddingRight()I

    move-result v15

    sub-int/2addr v14, v15

    .line 113
    invoke-static {v14, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .local v14, "childWidthMeasureSpec":I
    goto :goto_ef

    .line 117
    .end local v14    # "childWidthMeasureSpec":I
    :cond_df
    nop

    .line 118
    invoke-virtual {v0}, Landroid/widget/DayPickerViewPager;->getPaddingLeft()I

    move-result v14

    invoke-virtual {v0}, Landroid/widget/DayPickerViewPager;->getPaddingRight()I

    move-result v15

    add-int/2addr v14, v15

    iget v15, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    .line 117
    invoke-static {v1, v14, v15}, Landroid/widget/DayPickerViewPager;->getChildMeasureSpec(III)I

    move-result v14

    .line 122
    .restart local v14    # "childWidthMeasureSpec":I
    :goto_ef
    iget v15, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    if-ne v15, v11, :cond_109

    .line 123
    nop

    .line 124
    invoke-virtual {v0}, Landroid/widget/DayPickerViewPager;->getMeasuredHeight()I

    move-result v15

    invoke-virtual {v0}, Landroid/widget/DayPickerViewPager;->getPaddingTop()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual {v0}, Landroid/widget/DayPickerViewPager;->getPaddingBottom()I

    move-result v16

    sub-int v15, v15, v16

    .line 123
    invoke-static {v15, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .local v15, "childHeightMeasureSpec":I
    goto :goto_11a

    .line 127
    .end local v15    # "childHeightMeasureSpec":I
    :cond_109
    nop

    .line 128
    invoke-virtual {v0}, Landroid/widget/DayPickerViewPager;->getPaddingTop()I

    move-result v15

    invoke-virtual {v0}, Landroid/widget/DayPickerViewPager;->getPaddingBottom()I

    move-result v16

    add-int v15, v15, v16

    iget v6, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    .line 127
    invoke-static {v2, v15, v6}, Landroid/widget/DayPickerViewPager;->getChildMeasureSpec(III)I

    move-result v15

    .line 132
    .restart local v15    # "childHeightMeasureSpec":I
    :goto_11a
    invoke-virtual {v12, v14, v15}, Landroid/view/View;->measure(II)V

    .line 105
    .end local v12    # "child":Landroid/view/View;
    .end local v13    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v14    # "childWidthMeasureSpec":I
    .end local v15    # "childHeightMeasureSpec":I
    add-int/lit8 v5, v5, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    goto :goto_b7

    .line 136
    .end local v5    # "i":I
    :cond_122
    iget-object v5, v0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 137
    return-void
.end method
