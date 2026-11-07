.class public Landroid/widget/GridView;
.super Landroid/widget/AbsListView;
.source "GridView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/GridView$StretchMode;
    }
.end annotation


# static fields
.field public static final whitelist AUTO_FIT:I = -0x1

.field public static final whitelist NO_STRETCH:I = 0x0

.field public static final whitelist STRETCH_COLUMN_WIDTH:I = 0x2

.field public static final whitelist STRETCH_SPACING:I = 0x1

.field public static final whitelist STRETCH_SPACING_UNIFORM:I = 0x3


# instance fields
.field private greylist-max-p mColumnWidth:I

.field private greylist-max-o mGravity:I

.field private greylist mHorizontalSpacing:I

.field private greylist-max-p mNumColumns:I

.field private greylist-max-o mReferenceView:Landroid/view/View;

.field private greylist-max-o mReferenceViewInSelectedRow:Landroid/view/View;

.field private greylist mRequestedColumnWidth:I

.field private greylist mRequestedHorizontalSpacing:I

.field private greylist-max-p mRequestedNumColumns:I

.field private greylist-max-o mStretchMode:I

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;

.field private greylist mVerticalSpacing:I


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 139
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 142
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 143
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 147
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 150
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 116
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 120
    iput v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 122
    const/4 v2, 0x2

    iput v2, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 130
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 131
    iput-object v3, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 133
    const v3, 0x800003

    iput v3, p0, Landroid/widget/GridView;->mGravity:I

    .line 135
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    .line 152
    sget-object v3, Lcom/android/internal/R$styleable;->GridView:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 154
    .local v8, "a":Landroid/content/res/TypedArray;
    sget-object v6, Lcom/android/internal/R$styleable;->GridView:[I

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move v9, p3

    move v10, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    .local v5, "context":Landroid/content/Context;
    .local v7, "attrs":Landroid/util/AttributeSet;
    .local v9, "defStyleAttr":I
    .local v10, "defStyleRes":I
    invoke-virtual/range {v4 .. v10}, Landroid/widget/GridView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 157
    const/4 p1, 0x1

    invoke-virtual {v8, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    .line 159
    .local p2, "hSpacing":I
    invoke-virtual {p0, p2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 161
    invoke-virtual {v8, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    .line 163
    .local p3, "vSpacing":I
    invoke-virtual {p0, p3}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 165
    const/4 p4, 0x3

    invoke-virtual {v8, p4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    .line 166
    .local p4, "index":I
    if-ltz p4, :cond_48

    .line 167
    invoke-virtual {p0, p4}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 170
    :cond_48
    const/4 v2, 0x4

    invoke-virtual {v8, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 171
    .local v2, "columnWidth":I
    if-lez v2, :cond_52

    .line 172
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 175
    :cond_52
    const/4 v3, 0x5

    invoke-virtual {v8, v3, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 176
    .local p1, "numColumns":I
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 178
    invoke-virtual {v8, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    .line 179
    if-ltz p4, :cond_63

    .line 180
    invoke-virtual {p0, p4}, Landroid/widget/GridView;->setGravity(I)V

    .line 183
    :cond_63
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 184
    return-void
.end method

.method private greylist-max-o adjustForBottomFadingEdge(Landroid/view/View;II)V
    .registers 8
    .param p1, "childInSelectedRow"    # Landroid/view/View;
    .param p2, "topSelectionPixel"    # I
    .param p3, "bottomSelectionPixel"    # I

    .line 823
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    if-le v0, p3, :cond_18

    .line 827
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, p2

    .line 831
    .local v0, "spaceAbove":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int/2addr v1, p3

    .line 832
    .local v1, "spaceBelow":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 835
    .local v2, "offset":I
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 837
    .end local v0    # "spaceAbove":I
    .end local v1    # "spaceBelow":I
    .end local v2    # "offset":I
    :cond_18
    return-void
.end method

.method private greylist-max-o adjustForTopFadingEdge(Landroid/view/View;II)V
    .registers 7
    .param p1, "childInSelectedRow"    # Landroid/view/View;
    .param p2, "topSelectionPixel"    # I
    .param p3, "bottomSelectionPixel"    # I

    .line 851
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    if-ge v0, p2, :cond_19

    .line 854
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, p2, v0

    .line 858
    .local v0, "spaceAbove":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v1, p3, v1

    .line 859
    .local v1, "spaceBelow":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 862
    .local v2, "offset":I
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 864
    .end local v0    # "spaceAbove":I
    .end local v1    # "spaceBelow":I
    .end local v2    # "offset":I
    :cond_19
    return-void
.end method

.method private greylist-max-o adjustViewsUpOrDown()V
    .registers 6

    .line 2275
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 2277
    .local v0, "childCount":I
    if-lez v0, :cond_4a

    .line 2281
    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v1, :cond_23

    .line 2284
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2285
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .line 2286
    .local v2, "delta":I
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-eqz v3, :cond_1f

    .line 2289
    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int/2addr v2, v3

    .line 2291
    :cond_1f
    if-gez v2, :cond_44

    .line 2293
    const/4 v2, 0x0

    goto :goto_44

    .line 2297
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_23
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2298
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 2300
    .restart local v2    # "delta":I
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v0

    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    if-ge v3, v4, :cond_41

    .line 2303
    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr v2, v3

    .line 2306
    :cond_41
    if-lez v2, :cond_44

    .line 2308
    const/4 v2, 0x0

    .line 2312
    :cond_44
    :goto_44
    if-eqz v2, :cond_4a

    .line 2313
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 2316
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_4a
    return-void
.end method

.method private greylist-max-o commonKey(IILandroid/view/KeyEvent;)Z
    .registers 11
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 1664
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1665
    return v1

    .line 1668
    :cond_6
    iget-boolean v0, p0, Landroid/widget/GridView;->mDataChanged:Z

    if-eqz v0, :cond_d

    .line 1669
    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 1672
    :cond_d
    const/4 v0, 0x0

    .line 1673
    .local v0, "handled":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 1674
    .local v2, "action":I
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_37

    .line 1675
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_37

    if-eq v2, v4, :cond_37

    .line 1676
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v0

    .line 1677
    if-nez v0, :cond_37

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_37

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_37

    .line 1678
    invoke-virtual {p0}, Landroid/widget/GridView;->keyPressed()V

    .line 1679
    const/4 v0, 0x1

    .line 1683
    :cond_37
    if-nez v0, :cond_1a2

    if-eq v2, v4, :cond_1a2

    .line 1684
    const/16 v3, 0x82

    const/16 v5, 0x21

    const/4 v6, 0x2

    sparse-switch p1, :sswitch_data_1c0

    goto/16 :goto_1a2

    .line 1736
    :sswitch_45
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_1a2

    .line 1737
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_5a

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_58

    goto :goto_5a

    :cond_58
    move v3, v1

    goto :goto_5b

    :cond_5a
    :goto_5a
    move v3, v4

    :goto_5b
    move v0, v3

    goto/16 :goto_1a2

    .line 1730
    :sswitch_5e
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_1a2

    .line 1731
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_73

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_71

    goto :goto_73

    :cond_71
    move v3, v1

    goto :goto_74

    :cond_73
    :goto_73
    move v3, v4

    :goto_74
    move v0, v3

    goto/16 :goto_1a2

    .line 1722
    :sswitch_77
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_90

    .line 1723
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_8c

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v3

    if-eqz v3, :cond_8a

    goto :goto_8c

    :cond_8a
    move v3, v1

    goto :goto_8d

    :cond_8c
    :goto_8c
    move v3, v4

    :goto_8d
    move v0, v3

    goto/16 :goto_1a2

    .line 1724
    :cond_90
    invoke-virtual {p3, v6}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_1a2

    .line 1725
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_a5

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_a3

    goto :goto_a5

    :cond_a3
    move v3, v1

    goto :goto_a6

    :cond_a5
    :goto_a5
    move v3, v4

    :goto_a6
    move v0, v3

    goto/16 :goto_1a2

    .line 1714
    :sswitch_a9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_c2

    .line 1715
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_be

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v3

    if-eqz v3, :cond_bc

    goto :goto_be

    :cond_bc
    move v3, v1

    goto :goto_bf

    :cond_be
    :goto_be
    move v3, v4

    :goto_bf
    move v0, v3

    goto/16 :goto_1a2

    .line 1716
    :cond_c2
    invoke-virtual {p3, v6}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_1a2

    .line 1717
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_d7

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_d5

    goto :goto_d7

    :cond_d5
    move v3, v1

    goto :goto_d8

    :cond_d7
    :goto_d7
    move v3, v4

    :goto_d8
    move v0, v3

    goto/16 :goto_1a2

    .line 1747
    :sswitch_db
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_f4

    .line 1748
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_f0

    .line 1749
    invoke-virtual {p0, v6}, Landroid/widget/GridView;->sequenceScroll(I)Z

    move-result v3

    if-eqz v3, :cond_ee

    goto :goto_f0

    :cond_ee
    move v3, v1

    goto :goto_f1

    :cond_f0
    :goto_f0
    move v3, v4

    :goto_f1
    move v0, v3

    goto/16 :goto_1a2

    .line 1750
    :cond_f4
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_1a2

    .line 1751
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_109

    .line 1752
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->sequenceScroll(I)Z

    move-result v3

    if-eqz v3, :cond_107

    goto :goto_109

    :cond_107
    move v3, v1

    goto :goto_10a

    :cond_109
    :goto_109
    move v3, v4

    :goto_10a
    move v0, v3

    goto/16 :goto_1a2

    .line 1692
    :sswitch_10d
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_1a2

    .line 1693
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_124

    const/16 v3, 0x42

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_122

    goto :goto_124

    :cond_122
    move v3, v1

    goto :goto_125

    :cond_124
    :goto_124
    move v3, v4

    :goto_125
    move v0, v3

    goto/16 :goto_1a2

    .line 1686
    :sswitch_128
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_1a2

    .line 1687
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_13f

    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_13d

    goto :goto_13f

    :cond_13d
    move v3, v1

    goto :goto_140

    :cond_13f
    :goto_13f
    move v3, v4

    :goto_140
    move v0, v3

    goto/16 :goto_1a2

    .line 1706
    :sswitch_143
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_15b

    .line 1707
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_158

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_156

    goto :goto_158

    :cond_156
    move v3, v1

    goto :goto_159

    :cond_158
    :goto_158
    move v3, v4

    :goto_159
    move v0, v3

    goto :goto_1a2

    .line 1708
    :cond_15b
    invoke-virtual {p3, v6}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_1a2

    .line 1709
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_170

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_16e

    goto :goto_170

    :cond_16e
    move v3, v1

    goto :goto_171

    :cond_170
    :goto_170
    move v3, v4

    :goto_171
    move v0, v3

    goto :goto_1a2

    .line 1698
    :sswitch_173
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_18b

    .line 1699
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_188

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_186

    goto :goto_188

    :cond_186
    move v3, v1

    goto :goto_189

    :cond_188
    :goto_188
    move v3, v4

    :goto_189
    move v0, v3

    goto :goto_1a2

    .line 1700
    :cond_18b
    invoke-virtual {p3, v6}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_1a2

    .line 1701
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_1a0

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_19e

    goto :goto_1a0

    :cond_19e
    move v3, v1

    goto :goto_1a1

    :cond_1a0
    :goto_1a0
    move v3, v4

    :goto_1a1
    move v0, v3

    .line 1758
    :cond_1a2
    :goto_1a2
    if-eqz v0, :cond_1a5

    .line 1759
    return v4

    .line 1762
    :cond_1a5
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/GridView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1ac

    .line 1763
    return v4

    .line 1766
    :cond_1ac
    packed-switch v2, :pswitch_data_1e6

    .line 1774
    return v1

    .line 1772
    :pswitch_1b0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 1770
    :pswitch_1b5
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 1768
    :pswitch_1ba
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    nop

    :sswitch_data_1c0
    .sparse-switch
        0x13 -> :sswitch_173
        0x14 -> :sswitch_143
        0x15 -> :sswitch_128
        0x16 -> :sswitch_10d
        0x3d -> :sswitch_db
        0x5c -> :sswitch_a9
        0x5d -> :sswitch_77
        0x7a -> :sswitch_5e
        0x7b -> :sswitch_45
    .end sparse-switch

    :pswitch_data_1e6
    .packed-switch 0x0
        :pswitch_1ba
        :pswitch_1b5
        :pswitch_1b0
    .end packed-switch
.end method

.method private greylist-max-o correctTooHigh(III)V
    .registers 14
    .param p1, "numColumns"    # I
    .param p2, "verticalSpacing"    # I
    .param p3, "childCount"    # I

    .line 635
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v0, p3

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 636
    .local v0, "lastPosition":I
    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_5f

    if-lez p3, :cond_5f

    .line 638
    add-int/lit8 v2, p3, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 641
    .local v2, "lastChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 643
    .local v3, "lastBottom":I
    iget v4, p0, Landroid/widget/GridView;->mBottom:I

    iget v5, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    .line 647
    .local v4, "end":I
    sub-int v5, v4, v3

    .line 649
    .local v5, "bottomOffset":I
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 650
    .local v6, "firstChild":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    .line 654
    .local v7, "firstTop":I
    if-lez v5, :cond_5f

    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-gtz v8, :cond_37

    iget-object v8, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-ge v7, v8, :cond_5f

    .line 655
    :cond_37
    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v8, :cond_44

    .line 657
    iget-object v8, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v7

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 661
    :cond_44
    invoke-virtual {p0, v5}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 662
    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-lez v8, :cond_5f

    .line 665
    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget-boolean v9, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v9, :cond_52

    goto :goto_53

    :cond_52
    move v1, p1

    :goto_53
    sub-int/2addr v8, v1

    .line 666
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, p2

    .line 665
    invoke-direct {p0, v8, v1}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 668
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 672
    .end local v2    # "lastChild":Landroid/view/View;
    .end local v3    # "lastBottom":I
    .end local v4    # "end":I
    .end local v5    # "bottomOffset":I
    .end local v6    # "firstChild":Landroid/view/View;
    .end local v7    # "firstTop":I
    :cond_5f
    return-void
.end method

.method private greylist-max-o correctTooLow(III)V
    .registers 14
    .param p1, "numColumns"    # I
    .param p2, "verticalSpacing"    # I
    .param p3, "childCount"    # I

    .line 675
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v0, :cond_5d

    if-lez p3, :cond_5d

    .line 677
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 680
    .local v0, "firstChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 683
    .local v1, "firstTop":I
    iget-object v2, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 686
    .local v2, "start":I
    iget v3, p0, Landroid/widget/GridView;->mBottom:I

    iget v4, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 690
    .local v3, "end":I
    sub-int v4, v1, v2

    .line 691
    .local v4, "topOffset":I
    add-int/lit8 v5, p3, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 692
    .local v5, "lastChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 693
    .local v6, "lastBottom":I
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v7, p3

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    .line 697
    .local v7, "lastPosition":I
    if-lez v4, :cond_5d

    iget v9, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v9, v8

    if-lt v7, v9, :cond_37

    if-le v6, v3, :cond_5d

    .line 698
    :cond_37
    iget v9, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v9, v8

    if-ne v7, v9, :cond_42

    .line 700
    sub-int v9, v6, v3

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 704
    :cond_42
    neg-int v9, v4

    invoke-virtual {p0, v9}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 705
    iget v9, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v9, v8

    if-ge v7, v9, :cond_5d

    .line 708
    iget-boolean v9, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v9, :cond_50

    goto :goto_51

    :cond_50
    move v8, p1

    :goto_51
    add-int/2addr v8, v7

    .line 709
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, p2

    .line 708
    invoke-direct {p0, v8, v9}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 711
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 715
    .end local v0    # "firstChild":Landroid/view/View;
    .end local v1    # "firstTop":I
    .end local v2    # "start":I
    .end local v3    # "end":I
    .end local v4    # "topOffset":I
    .end local v5    # "lastChild":Landroid/view/View;
    .end local v6    # "lastBottom":I
    .end local v7    # "lastPosition":I
    :cond_5d
    return-void
.end method

.method private greylist-max-r determineColumns(I)Z
    .registers 9
    .param p1, "availableSpace"    # I

    .line 985
    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    .line 986
    .local v0, "requestedHorizontalSpacing":I
    iget v1, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 987
    .local v1, "stretchMode":I
    iget v2, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    .line 988
    .local v2, "requestedColumnWidth":I
    const/4 v3, 0x0

    .line 990
    .local v3, "didNotInitiallyFit":Z
    iget v4, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1a

    .line 991
    if-lez v2, :cond_16

    .line 993
    add-int v4, p1, v0

    add-int v5, v2, v0

    div-int/2addr v4, v5

    iput v4, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_1e

    .line 997
    :cond_16
    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_1e

    .line 1001
    :cond_1a
    iget v4, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    iput v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 1004
    :goto_1e
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    const/4 v5, 0x1

    if-gtz v4, :cond_25

    .line 1005
    iput v5, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 1008
    :cond_25
    packed-switch v1, :pswitch_data_72

    .line 1016
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    mul-int/2addr v4, v2

    sub-int v4, p1, v4

    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr v6, v5

    mul-int/2addr v6, v0

    sub-int/2addr v4, v6

    .line 1019
    .local v4, "spaceLeftOver":I
    if-gez v4, :cond_3b

    .line 1020
    const/4 v3, 0x1

    goto :goto_3b

    .line 1011
    .end local v4    # "spaceLeftOver":I
    :pswitch_36
    iput v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 1012
    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 1013
    goto :goto_71

    .line 1023
    .restart local v4    # "spaceLeftOver":I
    :cond_3b
    :goto_3b
    packed-switch v1, :pswitch_data_78

    goto :goto_71

    .line 1043
    :pswitch_3f
    iput v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 1044
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    if-le v6, v5, :cond_4e

    .line 1045
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr v6, v5

    div-int v5, v4, v6

    add-int/2addr v5, v0

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_71

    .line 1048
    :cond_4e
    add-int v5, v0, v4

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_71

    .line 1026
    :pswitch_53
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v5, v4, v5

    add-int/2addr v5, v2

    iput v5, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 1027
    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 1028
    goto :goto_71

    .line 1032
    :pswitch_5d
    iput v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 1033
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    if-le v6, v5, :cond_6c

    .line 1034
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr v6, v5

    div-int v5, v4, v6

    add-int/2addr v5, v0

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_71

    .line 1037
    :cond_6c
    add-int v5, v0, v4

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 1039
    nop

    .line 1055
    .end local v4    # "spaceLeftOver":I
    :goto_71
    return v3

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_36
    .end packed-switch

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_53
        :pswitch_3f
    .end packed-switch
.end method

.method private greylist-max-p fillDown(II)Landroid/view/View;
    .registers 9
    .param p1, "pos"    # I
    .param p2, "nextTop"    # I

    .line 318
    const/4 v0, 0x0

    .line 320
    .local v0, "selectedView":Landroid/view/View;
    iget v1, p0, Landroid/widget/GridView;->mBottom:I

    iget v2, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v1, v2

    .line 321
    .local v1, "end":I
    iget v2, p0, Landroid/widget/GridView;->mGroupFlags:I

    const/16 v3, 0x22

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_12

    .line 322
    iget-object v2, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    .line 325
    :cond_12
    :goto_12
    const/4 v2, 0x1

    if-ge p2, v1, :cond_2e

    iget v3, p0, Landroid/widget/GridView;->mItemCount:I

    if-ge p1, v3, :cond_2e

    .line 326
    invoke-direct {p0, p1, p2, v2}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 327
    .local v2, "temp":Landroid/view/View;
    if-eqz v2, :cond_20

    .line 328
    move-object v0, v2

    .line 333
    :cond_20
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int p2, v3, v4

    .line 335
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr p1, v3

    .line 336
    .end local v2    # "temp":Landroid/view/View;
    goto :goto_12

    .line 338
    :cond_2e
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v4, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/widget/GridView;->setVisibleRangeHint(II)V

    .line 339
    return-object v0
.end method

.method private greylist-max-o fillFromBottom(II)Landroid/view/View;
    .registers 6
    .param p1, "lastPosition"    # I
    .param p2, "nextBottom"    # I

    .line 466
    iget v0, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 467
    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 469
    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    .line 470
    .local v0, "invertedPosition":I
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v2, v0, v2

    sub-int v2, v0, v2

    sub-int/2addr v1, v2

    .line 472
    .end local p1    # "lastPosition":I
    .local v1, "lastPosition":I
    invoke-direct {p0, v1, p2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private greylist-max-o fillFromSelection(III)Landroid/view/View;
    .registers 16
    .param p1, "selectedTop"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .line 728
    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 729
    .local v0, "fadingEdgeLength":I
    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    .line 730
    .local v1, "selectedPosition":I
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 731
    .local v2, "numColumns":I
    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 734
    .local v3, "verticalSpacing":I
    const/4 v4, -0x1

    .line 736
    .local v4, "rowEnd":I
    iget-boolean v5, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v6, 0x1

    if-nez v5, :cond_15

    .line 737
    rem-int v5, v1, v2

    sub-int v5, v1, v5

    .local v5, "rowStart":I
    goto :goto_2b

    .line 739
    .end local v5    # "rowStart":I
    :cond_15
    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    .line 741
    .local v5, "invertedSelection":I
    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v7, v6

    rem-int v8, v5, v2

    sub-int v8, v5, v8

    sub-int v4, v7, v8

    .line 742
    sub-int v7, v4, v2

    add-int/2addr v7, v6

    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v5, v7

    .line 748
    .local v5, "rowStart":I
    :goto_2b
    invoke-direct {p0, p2, v0, v5}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v7

    .line 749
    .local v7, "topSelectionPixel":I
    invoke-direct {p0, p3, v0, v2, v5}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v8

    .line 752
    .local v8, "bottomSelectionPixel":I
    iget-boolean v9, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v9, :cond_39

    move v9, v4

    goto :goto_3a

    :cond_39
    move v9, v5

    :goto_3a
    invoke-direct {p0, v9, p1, v6}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v6

    .line 754
    .local v6, "sel":Landroid/view/View;
    iput v5, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 756
    iget-object v9, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 757
    .local v9, "referenceView":Landroid/view/View;
    invoke-direct {p0, v9, v7, v8}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    .line 758
    invoke-direct {p0, v9, v7, v8}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 760
    iget-boolean v10, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v10, :cond_64

    .line 761
    sub-int v10, v5, v2

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v3

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 762
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 763
    add-int v10, v5, v2

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v3

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    goto :goto_7b

    .line 765
    :cond_64
    add-int v10, v4, v2

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v3

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 766
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 767
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v3

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 771
    :goto_7b
    return-object v6
.end method

.method private greylist-max-o fillFromTop(I)Landroid/view/View;
    .registers 5
    .param p1, "nextTop"    # I

    .line 456
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 457
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 458
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-gez v0, :cond_1d

    .line 459
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 461
    :cond_1d
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 462
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o fillSelection(II)Landroid/view/View;
    .registers 16
    .param p1, "childrenTop"    # I
    .param p2, "childrenBottom"    # I

    .line 476
    invoke-virtual {p0}, Landroid/widget/GridView;->reconcileSelectedPosition()I

    move-result v0

    .line 477
    .local v0, "selectedPosition":I
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 478
    .local v1, "numColumns":I
    iget v2, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 481
    .local v2, "verticalSpacing":I
    const/4 v3, -0x1

    .line 483
    .local v3, "rowEnd":I
    iget-boolean v4, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v5, 0x1

    if-nez v4, :cond_13

    .line 484
    rem-int v4, v0, v1

    sub-int v4, v0, v4

    .local v4, "rowStart":I
    goto :goto_29

    .line 486
    .end local v4    # "rowStart":I
    :cond_13
    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    .line 488
    .local v4, "invertedSelection":I
    iget v6, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v6, v5

    rem-int v7, v4, v1

    sub-int v7, v4, v7

    sub-int v3, v6, v7

    .line 489
    sub-int v6, v3, v1

    add-int/2addr v6, v5

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v4, v6

    .line 492
    .local v4, "rowStart":I
    :goto_29
    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v6

    .line 493
    .local v6, "fadingEdgeLength":I
    invoke-direct {p0, p1, v6, v4}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v7

    .line 495
    .local v7, "topSelectionPixel":I
    iget-boolean v8, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v8, :cond_37

    move v8, v3

    goto :goto_38

    :cond_37
    move v8, v4

    :goto_38
    invoke-direct {p0, v8, v7, v5}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v5

    .line 496
    .local v5, "sel":Landroid/view/View;
    iput v4, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 498
    iget-object v8, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 500
    .local v8, "referenceView":Landroid/view/View;
    iget-boolean v9, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v9, :cond_5f

    .line 501
    add-int v9, v4, v1

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v10

    add-int/2addr v10, v2

    invoke-direct {p0, v9, v10}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 502
    invoke-direct {p0, p2}, Landroid/widget/GridView;->pinToBottom(I)V

    .line 503
    sub-int v9, v4, v1

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-direct {p0, v9, v10}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 504
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto :goto_86

    .line 506
    :cond_5f
    invoke-direct {p0, p2, v6, v1, v4}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v9

    .line 508
    .local v9, "bottomSelectionPixel":I
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v10, v9, v10

    .line 509
    .local v10, "offset":I
    invoke-virtual {p0, v10}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 510
    add-int/lit8 v11, v4, -0x1

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v12

    sub-int/2addr v12, v2

    invoke-direct {p0, v11, v12}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 511
    invoke-direct {p0, p1}, Landroid/widget/GridView;->pinToTop(I)V

    .line 512
    add-int v11, v3, v1

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v12

    add-int/2addr v12, v2

    invoke-direct {p0, v11, v12}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 513
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 516
    .end local v9    # "bottomSelectionPixel":I
    .end local v10    # "offset":I
    :goto_86
    return-object v5
.end method

.method private greylist-max-o fillSpecific(II)Landroid/view/View;
    .registers 12
    .param p1, "position"    # I
    .param p2, "top"    # I

    .line 574
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 577
    .local v0, "numColumns":I
    const/4 v1, -0x1

    .line 579
    .local v1, "motionRowEnd":I
    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v3, 0x1

    if-nez v2, :cond_d

    .line 580
    rem-int v2, p1, v0

    sub-int v2, p1, v2

    .local v2, "motionRowStart":I
    goto :goto_23

    .line 582
    .end local v2    # "motionRowStart":I
    :cond_d
    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, p1

    .line 584
    .local v2, "invertedSelection":I
    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v4, v3

    rem-int v5, v2, v0

    sub-int v5, v2, v5

    sub-int v1, v4, v5

    .line 585
    sub-int v4, v1, v0

    add-int/2addr v4, v3

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v2, v4

    .line 588
    .local v2, "motionRowStart":I
    :goto_23
    iget-boolean v4, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v4, :cond_29

    move v4, v1

    goto :goto_2a

    :cond_29
    move v4, v2

    :goto_2a
    invoke-direct {p0, v4, p2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v3

    .line 591
    .local v3, "temp":Landroid/view/View;
    iput v2, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 593
    iget-object v4, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 595
    .local v4, "referenceView":Landroid/view/View;
    if-nez v4, :cond_36

    .line 596
    const/4 v5, 0x0

    return-object v5

    .line 599
    :cond_36
    iget v5, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 604
    .local v5, "verticalSpacing":I
    iget-boolean v6, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v6, :cond_5f

    .line 605
    sub-int v6, v2, v0

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-direct {p0, v6, v7}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 606
    .local v6, "above":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 607
    add-int v7, v2, v0

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int/2addr v8, v5

    invoke-direct {p0, v7, v8}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 609
    .local v7, "below":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v8

    .line 610
    .local v8, "childCount":I
    if-lez v8, :cond_5e

    .line 611
    invoke-direct {p0, v0, v5, v8}, Landroid/widget/GridView;->correctTooHigh(III)V

    .line 613
    .end local v8    # "childCount":I
    :cond_5e
    goto :goto_81

    .line 614
    .end local v6    # "above":Landroid/view/View;
    .end local v7    # "below":Landroid/view/View;
    :cond_5f
    add-int v6, v1, v0

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int/2addr v7, v5

    invoke-direct {p0, v6, v7}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 615
    .restart local v7    # "below":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 616
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-direct {p0, v6, v8}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 618
    .restart local v6    # "above":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v8

    .line 619
    .restart local v8    # "childCount":I
    if-lez v8, :cond_81

    .line 620
    invoke-direct {p0, v0, v5, v8}, Landroid/widget/GridView;->correctTooLow(III)V

    .line 624
    .end local v8    # "childCount":I
    :cond_81
    :goto_81
    if-eqz v3, :cond_84

    .line 625
    return-object v3

    .line 626
    :cond_84
    if-eqz v6, :cond_87

    .line 627
    return-object v6

    .line 629
    :cond_87
    return-object v7
.end method

.method private greylist-max-p fillUp(II)Landroid/view/View;
    .registers 8
    .param p1, "pos"    # I
    .param p2, "nextBottom"    # I

    .line 418
    const/4 v0, 0x0

    .line 420
    .local v0, "selectedView":Landroid/view/View;
    const/4 v1, 0x0

    .line 421
    .local v1, "end":I
    iget v2, p0, Landroid/widget/GridView;->mGroupFlags:I

    const/16 v3, 0x22

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_d

    .line 422
    iget-object v2, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v2, Landroid/graphics/Rect;->top:I

    .line 425
    :cond_d
    :goto_d
    const/4 v2, 0x0

    if-le p2, v1, :cond_29

    if-ltz p1, :cond_29

    .line 427
    invoke-direct {p0, p1, p2, v2}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 428
    .local v2, "temp":Landroid/view/View;
    if-eqz v2, :cond_19

    .line 429
    move-object v0, v2

    .line 432
    :cond_19
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int p2, v3, v4

    .line 434
    iput p1, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 436
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr p1, v3

    .line 437
    .end local v2    # "temp":Landroid/view/View;
    goto :goto_d

    .line 439
    :cond_29
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v3, :cond_35

    .line 440
    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 443
    :cond_35
    iget v2, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3}, Landroid/widget/GridView;->setVisibleRangeHint(II)V

    .line 444
    return-object v0
.end method

.method private greylist-max-o getBottomSelectionPixel(IIII)I
    .registers 8
    .param p1, "childrenBottom"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "numColumns"    # I
    .param p4, "rowStart"    # I

    .line 786
    move v0, p1

    .line 787
    .local v0, "bottomSelectionPixel":I
    add-int v1, p4, p3

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_c

    .line 788
    sub-int/2addr v0, p2

    .line 790
    :cond_c
    return v0
.end method

.method private greylist-max-o getTopSelectionPixel(III)I
    .registers 5
    .param p1, "childrenTop"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "rowStart"    # I

    .line 803
    move v0, p1

    .line 804
    .local v0, "topSelectionPixel":I
    if-lez p3, :cond_4

    .line 805
    add-int/2addr v0, p2

    .line 807
    :cond_4
    return v0
.end method

.method private greylist-max-o isCandidateSelection(II)Z
    .registers 10
    .param p1, "childIndex"    # I
    .param p2, "direction"    # I

    .line 2005
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 2006
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    sub-int/2addr v1, p1

    .line 2011
    .local v1, "invertedIndex":I
    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1c

    .line 2012
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v2, p1, v2

    sub-int v2, p1, v2

    .line 2013
    .local v2, "rowStart":I
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .local v5, "rowEnd":I
    goto :goto_2f

    .line 2015
    .end local v2    # "rowStart":I
    .end local v5    # "rowEnd":I
    :cond_1c
    add-int/lit8 v2, v0, -0x1

    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v5, v1, v5

    sub-int v5, v1, v5

    sub-int v5, v2, v5

    .line 2016
    .restart local v5    # "rowEnd":I
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v2, v5, v2

    add-int/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2019
    .restart local v2    # "rowStart":I
    :goto_2f
    sparse-switch p2, :sswitch_data_5a

    .line 2040
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2026
    :sswitch_3a
    if-nez v2, :cond_3d

    move v3, v4

    :cond_3d
    return v3

    .line 2023
    :sswitch_3e
    if-ne p1, v2, :cond_41

    move v3, v4

    :cond_41
    return v3

    .line 2032
    :sswitch_42
    add-int/lit8 v6, v0, -0x1

    if-ne v5, v6, :cond_47

    move v3, v4

    :cond_47
    return v3

    .line 2029
    :sswitch_48
    if-ne p1, v5, :cond_4b

    move v3, v4

    :cond_4b
    return v3

    .line 2035
    :sswitch_4c
    if-ne p1, v2, :cond_51

    if-nez v2, :cond_51

    move v3, v4

    :cond_51
    return v3

    .line 2038
    :sswitch_52
    if-ne p1, v5, :cond_59

    add-int/lit8 v6, v0, -0x1

    if-ne v5, v6, :cond_59

    move v3, v4

    :cond_59
    return v3

    :sswitch_data_5a
    .sparse-switch
        0x1 -> :sswitch_52
        0x2 -> :sswitch_4c
        0x11 -> :sswitch_48
        0x21 -> :sswitch_42
        0x42 -> :sswitch_3e
        0x82 -> :sswitch_3a
    .end sparse-switch
.end method

.method private greylist-max-o makeAndAddView(IIZIZI)Landroid/view/View;
    .registers 16
    .param p1, "position"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z
    .param p4, "childrenLeft"    # I
    .param p5, "selected"    # Z
    .param p6, "where"    # I

    .line 1447
    iget-boolean v1, p0, Landroid/widget/GridView;->mDataChanged:Z

    if-nez v1, :cond_18

    .line 1449
    iget-object v1, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1450
    .local v1, "activeView":Landroid/view/View;
    if-eqz v1, :cond_18

    .line 1453
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    .line 1454
    return-object v1

    .line 1460
    .end local v1    # "activeView":Landroid/view/View;
    :cond_18
    iget-object v1, p0, Landroid/widget/GridView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v1}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1463
    .local v1, "child":Landroid/view/View;
    iget-object v3, p0, Landroid/widget/GridView;->mIsScrap:[Z

    const/4 v4, 0x0

    aget-boolean v7, v3, v4

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    .line 1465
    return-object v1
.end method

.method private greylist-max-o makeRow(IIZ)Landroid/view/View;
    .registers 24
    .param p1, "startPos"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z

    .line 343
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/GridView;->mColumnWidth:I

    .line 344
    .local v7, "columnWidth":I
    iget v8, v0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 346
    .local v8, "horizontalSpacing":I
    invoke-virtual {v0}, Landroid/widget/GridView;->isLayoutRtl()Z

    move-result v9

    .line 351
    .local v9, "isLayoutRtl":Z
    const/4 v1, 0x3

    const/4 v10, 0x0

    if-eqz v9, :cond_21

    .line 352
    invoke-virtual {v0}, Landroid/widget/GridView;->getWidth()I

    move-result v2

    iget-object v3, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v7

    .line 353
    iget v3, v0, Landroid/widget/GridView;->mStretchMode:I

    if-ne v3, v1, :cond_1e

    move v1, v8

    goto :goto_1f

    :cond_1e
    move v1, v10

    :goto_1f
    sub-int/2addr v2, v1

    .local v2, "nextLeft":I
    goto :goto_2d

    .line 355
    .end local v2    # "nextLeft":I
    :cond_21
    iget-object v2, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 356
    iget v3, v0, Landroid/widget/GridView;->mStretchMode:I

    if-ne v3, v1, :cond_2b

    move v1, v8

    goto :goto_2c

    :cond_2b
    move v1, v10

    :goto_2c
    add-int/2addr v2, v1

    .line 359
    .restart local v2    # "nextLeft":I
    :goto_2d
    iget-boolean v1, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v11, -0x1

    const/4 v12, 0x1

    if-nez v1, :cond_41

    .line 360
    iget v1, v0, Landroid/widget/GridView;->mNumColumns:I

    add-int v1, p1, v1

    iget v3, v0, Landroid/widget/GridView;->mItemCount:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    move/from16 v13, p1

    move v14, v1

    .local v1, "last":I
    goto :goto_66

    .line 362
    .end local v1    # "last":I
    :cond_41
    add-int/lit8 v1, p1, 0x1

    .line 363
    .restart local v1    # "last":I
    iget v3, v0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v3, p1, v3

    add-int/2addr v3, v12

    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 365
    .end local p1    # "startPos":I
    .local v3, "startPos":I
    sub-int v4, v1, v3

    iget v5, v0, Landroid/widget/GridView;->mNumColumns:I

    if-ge v4, v5, :cond_64

    .line 366
    iget v4, v0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v5, v1, v3

    sub-int/2addr v4, v5

    add-int v5, v7, v8

    mul-int/2addr v4, v5

    .line 367
    .local v4, "deltaLeft":I
    if-eqz v9, :cond_5e

    move v5, v11

    goto :goto_5f

    :cond_5e
    move v5, v12

    :goto_5f
    mul-int/2addr v5, v4

    add-int/2addr v2, v5

    move v14, v1

    move v13, v3

    goto :goto_66

    .line 365
    .end local v4    # "deltaLeft":I
    :cond_64
    move v14, v1

    move v13, v3

    .line 371
    .end local v1    # "last":I
    .end local v3    # "startPos":I
    .local v13, "startPos":I
    .local v14, "last":I
    :goto_66
    const/4 v1, 0x0

    .line 373
    .local v1, "selectedView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/widget/GridView;->shouldShowSelector()Z

    move-result v15

    .line 374
    .local v15, "hasFocus":Z
    invoke-virtual {v0}, Landroid/widget/GridView;->touchModeDrawsInPressedState()Z

    move-result v16

    .line 375
    .local v16, "inClick":Z
    iget v3, v0, Landroid/widget/GridView;->mSelectedPosition:I

    .line 377
    .local v3, "selectedPosition":I
    const/4 v4, 0x0

    .line 378
    .local v4, "child":Landroid/view/View;
    if-eqz v9, :cond_76

    move v5, v11

    goto :goto_77

    :cond_76
    move v5, v12

    :goto_77
    move/from16 v17, v5

    .line 379
    .local v17, "nextChildDir":I
    move v5, v13

    move-object/from16 v18, v1

    move-object v1, v4

    move v4, v2

    .end local v2    # "nextLeft":I
    .local v1, "child":Landroid/view/View;
    .local v4, "nextLeft":I
    .local v5, "pos":I
    .local v18, "selectedView":Landroid/view/View;
    :goto_7e
    if-ge v5, v14, :cond_b2

    .line 381
    if-ne v5, v3, :cond_84

    move v2, v12

    goto :goto_85

    :cond_84
    move v2, v10

    .line 384
    .local v2, "selected":Z
    :goto_85
    if-eqz p3, :cond_89

    move v6, v11

    goto :goto_8b

    :cond_89
    sub-int v6, v5, v13

    .line 385
    .local v6, "where":I
    :goto_8b
    move-object v10, v1

    move/from16 v19, v3

    move v1, v5

    move/from16 v3, p3

    move v5, v2

    move/from16 v2, p2

    .end local v2    # "selected":Z
    .end local v3    # "selectedPosition":I
    .local v1, "pos":I
    .local v5, "selected":Z
    .local v10, "child":Landroid/view/View;
    .local v19, "selectedPosition":I
    invoke-direct/range {v0 .. v6}, Landroid/widget/GridView;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v10

    .line 387
    mul-int v2, v17, v7

    add-int/2addr v4, v2

    .line 388
    add-int/lit8 v2, v14, -0x1

    if-ge v1, v2, :cond_a2

    .line 389
    mul-int v2, v17, v8

    add-int/2addr v4, v2

    .line 392
    :cond_a2
    if-eqz v5, :cond_ab

    if-nez v15, :cond_a8

    if-eqz v16, :cond_ab

    .line 393
    :cond_a8
    move-object v2, v10

    move-object/from16 v18, v2

    .line 379
    .end local v5    # "selected":Z
    .end local v6    # "where":I
    :cond_ab
    add-int/lit8 v5, v1, 0x1

    move-object v1, v10

    move/from16 v3, v19

    const/4 v10, 0x0

    .end local v1    # "pos":I
    .local v5, "pos":I
    goto :goto_7e

    .end local v10    # "child":Landroid/view/View;
    .end local v19    # "selectedPosition":I
    .local v1, "child":Landroid/view/View;
    .restart local v3    # "selectedPosition":I
    :cond_b2
    move-object v10, v1

    move/from16 v19, v3

    move v1, v5

    .line 397
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "selectedPosition":I
    .end local v5    # "pos":I
    .restart local v10    # "child":Landroid/view/View;
    .restart local v19    # "selectedPosition":I
    iput-object v10, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 399
    if-eqz v18, :cond_be

    .line 400
    iget-object v1, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    iput-object v1, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 403
    :cond_be
    return-object v18
.end method

.method private greylist-max-o moveSelection(III)Landroid/view/View;
    .registers 21
    .param p1, "delta"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .line 900
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v1

    .line 901
    .local v1, "fadingEdgeLength":I
    iget v2, v0, Landroid/widget/GridView;->mSelectedPosition:I

    .line 902
    .local v2, "selectedPosition":I
    iget v3, v0, Landroid/widget/GridView;->mNumColumns:I

    .line 903
    .local v3, "numColumns":I
    iget v4, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 907
    .local v4, "verticalSpacing":I
    const/4 v5, -0x1

    .line 909
    .local v5, "rowEnd":I
    iget-boolean v6, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_1e

    .line 910
    sub-int v6, v2, p1

    sub-int v9, v2, p1

    rem-int/2addr v9, v3

    sub-int/2addr v6, v9

    .line 912
    .local v6, "oldRowStart":I
    rem-int v9, v2, v3

    sub-int v9, v2, v9

    .local v9, "rowStart":I
    goto :goto_47

    .line 914
    .end local v6    # "oldRowStart":I
    .end local v9    # "rowStart":I
    :cond_1e
    iget v6, v0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v6, v8

    sub-int/2addr v6, v2

    .line 916
    .local v6, "invertedSelection":I
    iget v9, v0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v9, v8

    rem-int v10, v6, v3

    sub-int v10, v6, v10

    sub-int v5, v9, v10

    .line 917
    sub-int v9, v5, v3

    add-int/2addr v9, v8

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 919
    .restart local v9    # "rowStart":I
    iget v10, v0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v10, v8

    sub-int v11, v2, p1

    sub-int/2addr v10, v11

    .line 920
    .end local v6    # "invertedSelection":I
    .local v10, "invertedSelection":I
    iget v6, v0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v6, v8

    rem-int v11, v10, v3

    sub-int v11, v10, v11

    sub-int/2addr v6, v11

    .line 921
    .local v6, "oldRowStart":I
    sub-int v11, v6, v3

    add-int/2addr v11, v8

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 924
    .end local v10    # "invertedSelection":I
    :goto_47
    sub-int v10, v9, v6

    .line 926
    .local v10, "rowDelta":I
    move/from16 v11, p2

    invoke-direct {v0, v11, v1, v9}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v12

    .line 927
    .local v12, "topSelectionPixel":I
    move/from16 v13, p3

    invoke-direct {v0, v13, v1, v3, v9}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v14

    .line 931
    .local v14, "bottomSelectionPixel":I
    iput v9, v0, Landroid/widget/GridView;->mFirstPosition:I

    .line 936
    if-lez v10, :cond_7a

    .line 941
    iget-object v15, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    if-nez v15, :cond_5e

    goto :goto_64

    .line 942
    :cond_5e
    iget-object v7, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    :goto_64
    nop

    .line 944
    .local v7, "oldBottom":I
    iget-boolean v15, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v15, :cond_6b

    move v15, v5

    goto :goto_6c

    :cond_6b
    move v15, v9

    :goto_6c
    move/from16 v16, v1

    .end local v1    # "fadingEdgeLength":I
    .local v16, "fadingEdgeLength":I
    add-int v1, v7, v4

    invoke-direct {v0, v15, v1, v8}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v1

    .line 945
    .local v1, "sel":Landroid/view/View;
    iget-object v8, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 947
    .local v8, "referenceView":Landroid/view/View;
    invoke-direct {v0, v8, v12, v14}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 948
    .end local v7    # "oldBottom":I
    goto :goto_b6

    .end local v8    # "referenceView":Landroid/view/View;
    .end local v16    # "fadingEdgeLength":I
    .local v1, "fadingEdgeLength":I
    :cond_7a
    move/from16 v16, v1

    .end local v1    # "fadingEdgeLength":I
    .restart local v16    # "fadingEdgeLength":I
    if-gez v10, :cond_9e

    .line 952
    iget-object v1, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    if-nez v1, :cond_84

    .line 953
    move v1, v7

    goto :goto_8a

    :cond_84
    iget-object v1, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 955
    .local v1, "oldTop":I
    :goto_8a
    iget-boolean v8, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v8, :cond_90

    move v8, v5

    goto :goto_91

    :cond_90
    move v8, v9

    :goto_91
    sub-int v15, v1, v4

    invoke-direct {v0, v8, v15, v7}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v7

    .line 956
    .local v7, "sel":Landroid/view/View;
    iget-object v8, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 958
    .restart local v8    # "referenceView":Landroid/view/View;
    invoke-direct {v0, v8, v12, v14}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    .line 959
    .end local v1    # "oldTop":I
    move-object v1, v7

    goto :goto_b6

    .line 963
    .end local v7    # "sel":Landroid/view/View;
    .end local v8    # "referenceView":Landroid/view/View;
    :cond_9e
    iget-object v1, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    if-nez v1, :cond_a3

    .line 964
    goto :goto_a9

    :cond_a3
    iget-object v1, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    .line 966
    .local v7, "oldTop":I
    :goto_a9
    iget-boolean v1, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v1, :cond_af

    move v1, v5

    goto :goto_b0

    :cond_af
    move v1, v9

    :goto_b0
    invoke-direct {v0, v1, v7, v8}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v1

    .line 967
    .local v1, "sel":Landroid/view/View;
    iget-object v8, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 970
    .end local v7    # "oldTop":I
    .restart local v8    # "referenceView":Landroid/view/View;
    :goto_b6
    iget-boolean v7, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v7, :cond_d2

    .line 971
    sub-int v7, v9, v3

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int/2addr v15, v4

    invoke-direct {v0, v7, v15}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 972
    invoke-direct {v0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 973
    add-int v7, v9, v3

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v15

    add-int/2addr v15, v4

    invoke-direct {v0, v7, v15}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    goto :goto_e9

    .line 975
    :cond_d2
    add-int v7, v5, v3

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v15

    add-int/2addr v15, v4

    invoke-direct {v0, v7, v15}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 976
    invoke-direct {v0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 977
    add-int/lit8 v7, v9, -0x1

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int/2addr v15, v4

    invoke-direct {v0, v7, v15}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 980
    :goto_e9
    return-object v1
.end method

.method private greylist-max-o pinToBottom(I)V
    .registers 5
    .param p1, "childrenBottom"    # I

    .line 530
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 531
    .local v0, "count":I
    iget v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v1, v0

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    if-ne v1, v2, :cond_1c

    .line 532
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 533
    .local v1, "bottom":I
    sub-int v2, p1, v1

    .line 534
    .local v2, "offset":I
    if-lez v2, :cond_1c

    .line 535
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 538
    .end local v1    # "bottom":I
    .end local v2    # "offset":I
    :cond_1c
    return-void
.end method

.method private greylist-max-o pinToTop(I)V
    .registers 4
    .param p1, "childrenTop"    # I

    .line 520
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v0, :cond_14

    .line 521
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 522
    .local v0, "top":I
    sub-int v1, p1, v0

    .line 523
    .local v1, "offset":I
    if-gez v1, :cond_14

    .line 524
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 527
    .end local v0    # "top":I
    .end local v1    # "offset":I
    :cond_14
    return-void
.end method

.method private greylist-max-o setupChild(Landroid/view/View;IIZIZZI)V
    .registers 28
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "y"    # I
    .param p4, "flowDown"    # Z
    .param p5, "childrenLeft"    # I
    .param p6, "selected"    # Z
    .param p7, "isAttachedToWindow"    # Z
    .param p8, "where"    # I

    .line 1488
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p8

    const-string/jumbo v4, "setupGridItem"

    const-wide/16 v5, 0x8

    invoke-static {v5, v6, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1490
    const/4 v4, 0x1

    const/4 v7, 0x0

    if-eqz p6, :cond_1c

    invoke-virtual {v0}, Landroid/widget/GridView;->shouldShowSelector()Z

    move-result v8

    if-eqz v8, :cond_1c

    move v8, v4

    goto :goto_1d

    :cond_1c
    move v8, v7

    .line 1491
    .local v8, "isSelected":Z
    :goto_1d
    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v9

    if-eq v8, v9, :cond_25

    move v9, v4

    goto :goto_26

    :cond_25
    move v9, v7

    .line 1492
    .local v9, "updateChildSelected":Z
    :goto_26
    iget v10, v0, Landroid/widget/GridView;->mTouchMode:I

    .line 1493
    .local v10, "mode":I
    if-lez v10, :cond_33

    const/4 v11, 0x3

    if-ge v10, v11, :cond_33

    iget v11, v0, Landroid/widget/GridView;->mMotionPosition:I

    if-ne v11, v2, :cond_33

    move v11, v4

    goto :goto_34

    :cond_33
    move v11, v7

    .line 1495
    .local v11, "isPressed":Z
    :goto_34
    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    move-result v12

    if-eq v11, v12, :cond_3c

    move v12, v4

    goto :goto_3d

    :cond_3c
    move v12, v7

    .line 1496
    .local v12, "updateChildPressed":Z
    :goto_3d
    if-eqz p7, :cond_4a

    if-nez v9, :cond_4a

    .line 1497
    invoke-virtual {v1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v13

    if-eqz v13, :cond_48

    goto :goto_4a

    :cond_48
    move v13, v7

    goto :goto_4b

    :cond_4a
    :goto_4a
    move v13, v4

    .line 1501
    .local v13, "needToMeasure":Z
    :goto_4b
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/AbsListView$LayoutParams;

    .line 1502
    .local v14, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v14, :cond_5a

    .line 1503
    invoke-virtual {v0}, Landroid/widget/GridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    move-object v14, v15

    check-cast v14, Landroid/widget/AbsListView$LayoutParams;

    .line 1505
    :cond_5a
    iget-object v15, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v15, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v15

    iput v15, v14, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1506
    iget-object v15, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v15, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v15

    iput-boolean v15, v14, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 1511
    if-eqz v9, :cond_74

    .line 1512
    invoke-virtual {v1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 1513
    if-eqz v8, :cond_74

    .line 1514
    invoke-virtual {v0}, Landroid/widget/GridView;->requestFocus()Z

    .line 1518
    :cond_74
    if-eqz v12, :cond_79

    .line 1519
    invoke-virtual {v1, v11}, Landroid/view/View;->setPressed(Z)V

    .line 1522
    :cond_79
    iget v15, v0, Landroid/widget/GridView;->mChoiceMode:I

    if-eqz v15, :cond_ae

    iget-object v15, v0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v15, :cond_ae

    .line 1523
    instance-of v15, v1, Landroid/widget/Checkable;

    if-eqz v15, :cond_94

    .line 1524
    move-object v15, v1

    check-cast v15, Landroid/widget/Checkable;

    move-wide/from16 v16, v5

    iget-object v5, v0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-interface {v15, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_b0

    .line 1525
    :cond_94
    move-wide/from16 v16, v5

    invoke-virtual {v0}, Landroid/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_b0

    .line 1527
    iget-object v5, v0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setActivated(Z)V

    goto :goto_b0

    .line 1522
    :cond_ae
    move-wide/from16 v16, v5

    .line 1531
    :cond_b0
    :goto_b0
    if-eqz p7, :cond_c9

    iget-boolean v5, v14, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    if-nez v5, :cond_c9

    .line 1532
    invoke-virtual {v0, v1, v3, v14}, Landroid/widget/GridView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1536
    if-eqz p7, :cond_c5

    .line 1537
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/AbsListView$LayoutParams;

    iget v5, v5, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    if-eq v5, v2, :cond_ce

    .line 1539
    :cond_c5
    invoke-virtual {v1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    goto :goto_ce

    .line 1542
    :cond_c9
    iput-boolean v7, v14, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1543
    invoke-virtual {v0, v1, v3, v14, v4}, Landroid/widget/GridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 1546
    :cond_ce
    :goto_ce
    if-eqz v13, :cond_ed

    .line 1547
    nop

    .line 1548
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v6, v14, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 1547
    invoke-static {v5, v7, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 1550
    .local v5, "childHeightSpec":I
    iget v6, v0, Landroid/widget/GridView;->mColumnWidth:I

    .line 1551
    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v6, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget v15, v14, Landroid/widget/AbsListView$LayoutParams;->width:I

    .line 1550
    invoke-static {v6, v7, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    .line 1552
    .local v6, "childWidthSpec":I
    invoke-virtual {v1, v6, v5}, Landroid/view/View;->measure(II)V

    .line 1553
    .end local v5    # "childHeightSpec":I
    .end local v6    # "childWidthSpec":I
    goto :goto_f0

    .line 1554
    :cond_ed
    invoke-virtual/range {p0 .. p1}, Landroid/widget/GridView;->cleanupLayoutState(Landroid/view/View;)V

    .line 1557
    :goto_f0
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 1558
    .local v5, "w":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 1561
    .local v6, "h":I
    if-eqz p4, :cond_fd

    move/from16 v7, p3

    goto :goto_ff

    :cond_fd
    sub-int v7, p3, v6

    .line 1563
    .local v7, "childTop":I
    :goto_ff
    invoke-virtual {v0}, Landroid/widget/GridView;->getLayoutDirection()I

    move-result v15

    .line 1564
    .local v15, "layoutDirection":I
    iget v4, v0, Landroid/widget/GridView;->mGravity:I

    invoke-static {v4, v15}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    .line 1565
    .local v4, "absoluteGravity":I
    and-int/lit8 v18, v4, 0x7

    packed-switch v18, :pswitch_data_154

    .line 1576
    :pswitch_10e
    move/from16 v2, p5

    .local v2, "childLeft":I
    goto :goto_122

    .line 1573
    .end local v2    # "childLeft":I
    :pswitch_111
    iget v2, v0, Landroid/widget/GridView;->mColumnWidth:I

    add-int v2, p5, v2

    sub-int/2addr v2, v5

    .line 1574
    .restart local v2    # "childLeft":I
    goto :goto_122

    .line 1567
    .end local v2    # "childLeft":I
    :pswitch_117
    move/from16 v2, p5

    .line 1568
    .restart local v2    # "childLeft":I
    goto :goto_122

    .line 1570
    .end local v2    # "childLeft":I
    :pswitch_11a
    iget v2, v0, Landroid/widget/GridView;->mColumnWidth:I

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    add-int v2, p5, v2

    .line 1571
    .restart local v2    # "childLeft":I
    nop

    .line 1580
    :goto_122
    if-eqz v13, :cond_12e

    .line 1581
    add-int v3, v2, v5

    .line 1582
    .local v3, "childRight":I
    move/from16 v18, v4

    .end local v4    # "absoluteGravity":I
    .local v18, "absoluteGravity":I
    add-int v4, v7, v6

    .line 1583
    .local v4, "childBottom":I
    invoke-virtual {v1, v2, v7, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1584
    .end local v3    # "childRight":I
    .end local v4    # "childBottom":I
    goto :goto_142

    .line 1585
    .end local v18    # "absoluteGravity":I
    .local v4, "absoluteGravity":I
    :cond_12e
    move/from16 v18, v4

    .end local v4    # "absoluteGravity":I
    .restart local v18    # "absoluteGravity":I
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1586
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v3, v7, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1589
    :goto_142
    iget-boolean v3, v0, Landroid/widget/GridView;->mCachingStarted:Z

    if-eqz v3, :cond_150

    invoke-virtual {v1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v3

    if-nez v3, :cond_150

    .line 1590
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1593
    :cond_150
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 1594
    return-void

    :pswitch_data_154
    .packed-switch 0x1
        :pswitch_11a
        :pswitch_10e
        :pswitch_117
        :pswitch_10e
        :pswitch_111
    .end packed-switch
.end method


# virtual methods
.method greylist-max-o arrowScroll(I)Z
    .registers 12
    .param p1, "direction"    # I

    .line 1840
    iget v0, p0, Landroid/widget/GridView;->mSelectedPosition:I

    .line 1841
    .local v0, "selectedPosition":I
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 1846
    .local v1, "numColumns":I
    const/4 v2, 0x0

    .line 1848
    .local v2, "moved":Z
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v4, 0x0

    if-nez v3, :cond_1a

    .line 1849
    div-int v3, v0, v1

    mul-int/2addr v3, v1

    .line 1850
    .local v3, "startOfRowPos":I
    add-int v5, v3, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .local v5, "endOfRowPos":I
    goto :goto_30

    .line 1852
    .end local v3    # "startOfRowPos":I
    .end local v5    # "endOfRowPos":I
    :cond_1a
    iget v3, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    .line 1853
    .local v3, "invertedSelection":I
    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    div-int v6, v3, v1

    mul-int/2addr v6, v1

    sub-int/2addr v5, v6

    .line 1854
    .restart local v5    # "endOfRowPos":I
    sub-int v6, v5, v1

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v3, v6

    .line 1857
    .local v3, "startOfRowPos":I
    :goto_30
    const/4 v6, 0x6

    sparse-switch p1, :sswitch_data_a6

    goto :goto_5a

    .line 1866
    :sswitch_35
    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ge v5, v7, :cond_5a

    .line 1867
    iput v6, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1868
    add-int v7, v0, v1

    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1869
    const/4 v2, 0x1

    goto :goto_5a

    .line 1859
    :sswitch_4c
    if-lez v3, :cond_5a

    .line 1860
    iput v6, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1861
    sub-int v7, v0, v1

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1862
    const/4 v2, 0x1

    .line 1874
    :cond_5a
    :goto_5a
    invoke-virtual {p0}, Landroid/widget/GridView;->isLayoutRtl()Z

    move-result v7

    .line 1875
    .local v7, "isLayoutRtl":Z
    const/16 v8, 0x42

    const/16 v9, 0x11

    if-le v0, v3, :cond_79

    if-ne p1, v9, :cond_68

    if-eqz v7, :cond_6c

    :cond_68
    if-ne p1, v8, :cond_79

    if-eqz v7, :cond_79

    .line 1877
    :cond_6c
    iput v6, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1878
    add-int/lit8 v6, v0, -0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1879
    const/4 v2, 0x1

    goto :goto_93

    .line 1880
    :cond_79
    if-ge v0, v5, :cond_93

    if-ne p1, v9, :cond_7f

    if-nez v7, :cond_83

    :cond_7f
    if-ne p1, v8, :cond_93

    if-nez v7, :cond_93

    .line 1882
    :cond_83
    iput v6, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1883
    add-int/lit8 v4, v0, 0x1

    iget v6, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1884
    const/4 v2, 0x1

    .line 1887
    :cond_93
    :goto_93
    if-eqz v2, :cond_9f

    .line 1888
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->playSoundEffect(I)V

    .line 1889
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1892
    :cond_9f
    if-eqz v2, :cond_a4

    .line 1893
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1896
    :cond_a4
    return v2

    nop

    :sswitch_data_a6
    .sparse-switch
        0x21 -> :sswitch_4c
        0x82 -> :sswitch_35
    .end sparse-switch
.end method

.method protected whitelist attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .registers 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "index"    # I
    .param p4, "count"    # I

    .line 1151
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .line 1154
    .local v0, "animationParams":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_e

    .line 1155
    new-instance v1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    invoke-direct {v1}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    move-object v0, v1

    .line 1156
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 1159
    :cond_e
    iput p4, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->count:I

    .line 1160
    iput p3, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->index:I

    .line 1161
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    iput v1, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 1162
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v1, p4, v1

    iput v1, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 1164
    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v1, :cond_2d

    .line 1165
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v1, p3, v1

    iput v1, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1166
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v1, p3, v1

    iput v1, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_46

    .line 1168
    :cond_2d
    add-int/lit8 v1, p4, -0x1

    sub-int/2addr v1, p3

    .line 1170
    .local v1, "invertedIndex":I
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1171
    iget v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    .line 1173
    .end local v1    # "invertedIndex":I
    :goto_46
    return-void
.end method

.method protected whitelist computeVerticalScrollExtent()I
    .registers 10

    .line 2320
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 2321
    .local v0, "count":I
    const/4 v1, 0x0

    if-lez v0, :cond_3d

    .line 2322
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2323
    .local v2, "numColumns":I
    add-int v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    div-int/2addr v3, v2

    .line 2325
    .local v3, "rowCount":I
    mul-int/lit8 v4, v3, 0x64

    .line 2327
    .local v4, "extent":I
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2328
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    .line 2329
    .local v5, "top":I
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 2330
    .local v6, "height":I
    if-lez v6, :cond_22

    .line 2331
    mul-int/lit8 v7, v5, 0x64

    div-int/2addr v7, v6

    add-int/2addr v4, v7

    .line 2334
    :cond_22
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2335
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 2336
    .local v7, "bottom":I
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 2337
    if-lez v6, :cond_3c

    .line 2338
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v8

    sub-int v8, v7, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v6

    sub-int/2addr v4, v8

    .line 2341
    :cond_3c
    return v4

    .line 2343
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "numColumns":I
    .end local v3    # "rowCount":I
    .end local v4    # "extent":I
    .end local v5    # "top":I
    .end local v6    # "height":I
    .end local v7    # "bottom":I
    :cond_3d
    return v1
.end method

.method protected whitelist computeVerticalScrollOffset()I
    .registers 12

    .line 2348
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    const/4 v1, 0x0

    if-ltz v0, :cond_4e

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4e

    .line 2349
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2350
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 2351
    .local v2, "top":I
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2352
    .local v3, "height":I
    if-lez v3, :cond_4e

    .line 2353
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2354
    .local v4, "numColumns":I
    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, -0x1

    div-int/2addr v5, v4

    .line 2358
    .local v5, "rowCount":I
    invoke-virtual {p0}, Landroid/widget/GridView;->isStackFromBottom()Z

    move-result v6

    if-eqz v6, :cond_2d

    mul-int v6, v5, v4

    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v6, v7

    goto :goto_2e

    .line 2359
    :cond_2d
    move v6, v1

    :goto_2e
    nop

    .line 2360
    .local v6, "oddItemsOnFirstRow":I
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v7, v6

    div-int/2addr v7, v4

    .line 2361
    .local v7, "whichRow":I
    mul-int/lit8 v8, v7, 0x64

    mul-int/lit8 v9, v2, 0x64

    div-int/2addr v9, v3

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/GridView;->mScrollY:I

    int-to-float v9, v9

    .line 2362
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    int-to-float v10, v5

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    .line 2361
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    .line 2365
    .end local v0    # "view":Landroid/view/View;
    .end local v2    # "top":I
    .end local v3    # "height":I
    .end local v4    # "numColumns":I
    .end local v5    # "rowCount":I
    .end local v6    # "oddItemsOnFirstRow":I
    .end local v7    # "whichRow":I
    :cond_4e
    return v1
.end method

.method protected whitelist computeVerticalScrollRange()I
    .registers 6

    .line 2371
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2372
    .local v0, "numColumns":I
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, v0

    .line 2373
    .local v1, "rowCount":I
    mul-int/lit8 v2, v1, 0x64

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2374
    .local v2, "result":I
    iget v3, p0, Landroid/widget/GridView;->mScrollY:I

    if-eqz v3, :cond_27

    .line 2376
    iget v3, p0, Landroid/widget/GridView;->mScrollY:I

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v1

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 2378
    :cond_27
    return v2
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 2461
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 2462
    const-string v0, "numColumns"

    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2463
    return-void
.end method

.method greylist-max-o fillGap(Z)V
    .registers 9
    .param p1, "down"    # Z

    .line 269
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 270
    .local v0, "numColumns":I
    iget v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 272
    .local v1, "verticalSpacing":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    .line 274
    .local v2, "count":I
    const/16 v3, 0x22

    if-eqz p1, :cond_3a

    .line 275
    const/4 v4, 0x0

    .line 276
    .local v4, "paddingTop":I
    iget v5, p0, Landroid/widget/GridView;->mGroupFlags:I

    and-int/2addr v5, v3

    if-ne v5, v3, :cond_16

    .line 277
    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingTop()I

    move-result v4

    .line 279
    :cond_16
    if-lez v2, :cond_24

    .line 280
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v1

    goto :goto_25

    :cond_24
    move v3, v4

    .line 281
    .local v3, "startOffset":I
    :goto_25
    iget v5, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v5, v2

    .line 282
    .local v5, "position":I
    iget-boolean v6, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v6, :cond_2f

    .line 283
    add-int/lit8 v6, v0, -0x1

    add-int/2addr v5, v6

    .line 285
    :cond_2f
    invoke-direct {p0, v5, v3}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 286
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v6

    invoke-direct {p0, v0, v1, v6}, Landroid/widget/GridView;->correctTooHigh(III)V

    .line 287
    .end local v3    # "startOffset":I
    .end local v4    # "paddingTop":I
    .end local v5    # "position":I
    goto :goto_6a

    .line 288
    :cond_3a
    const/4 v4, 0x0

    .line 289
    .local v4, "paddingBottom":I
    iget v5, p0, Landroid/widget/GridView;->mGroupFlags:I

    and-int/2addr v5, v3

    if-ne v5, v3, :cond_44

    .line 290
    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingBottom()I

    move-result v4

    .line 292
    :cond_44
    if-lez v2, :cond_51

    .line 293
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v1

    goto :goto_56

    :cond_51
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v4

    .line 294
    .restart local v3    # "startOffset":I
    :goto_56
    iget v5, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 295
    .restart local v5    # "position":I
    iget-boolean v6, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v6, :cond_5e

    .line 296
    sub-int/2addr v5, v0

    goto :goto_60

    .line 298
    :cond_5e
    add-int/lit8 v5, v5, -0x1

    .line 300
    :goto_60
    invoke-direct {p0, v5, v3}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 301
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v6

    invoke-direct {p0, v0, v1, v6}, Landroid/widget/GridView;->correctTooLow(III)V

    .line 303
    .end local v3    # "startOffset":I
    .end local v4    # "paddingBottom":I
    .end local v5    # "position":I
    :goto_6a
    return-void
.end method

.method greylist-max-o findMotionRow(I)I
    .registers 6
    .param p1, "y"    # I

    .line 542
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 543
    .local v0, "childCount":I
    if-lez v0, :cond_34

    .line 545
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 546
    .local v1, "numColumns":I
    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v2, :cond_20

    .line 547
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_1f

    .line 548
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_1d

    .line 549
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v2

    return v3

    .line 547
    :cond_1d
    add-int/2addr v2, v1

    goto :goto_d

    .end local v2    # "i":I
    :cond_1f
    goto :goto_34

    .line 553
    :cond_20
    add-int/lit8 v2, v0, -0x1

    .restart local v2    # "i":I
    :goto_22
    if-ltz v2, :cond_34

    .line 554
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_32

    .line 555
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v2

    return v3

    .line 553
    :cond_32
    sub-int/2addr v2, v1

    goto :goto_22

    .line 560
    .end local v1    # "numColumns":I
    .end local v2    # "i":I
    :cond_34
    :goto_34
    const/4 v1, -0x1

    return v1
.end method

.method greylist-max-o fullScroll(I)Z
    .registers 5
    .param p1, "direction"    # I

    .line 1811
    const/4 v0, 0x0

    .line 1812
    .local v0, "moved":Z
    const/16 v1, 0x21

    const/4 v2, 0x2

    if-ne p1, v1, :cond_11

    .line 1813
    iput v2, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1814
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1815
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1816
    const/4 v0, 0x1

    goto :goto_22

    .line 1817
    :cond_11
    const/16 v1, 0x82

    if-ne p1, v1, :cond_22

    .line 1818
    iput v2, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1819
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1820
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1821
    const/4 v0, 0x1

    .line 1824
    :cond_22
    :goto_22
    if-eqz v0, :cond_27

    .line 1825
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1828
    :cond_27
    return v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 2383
    const-class v0, Landroid/widget/GridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist getAdapter()Landroid/widget/Adapter;
    .registers 2

    .line 69
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .line 188
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public whitelist getColumnWidth()I
    .registers 2

    .line 2221
    iget v0, p0, Landroid/widget/GridView;->mColumnWidth:I

    return v0
.end method

.method public whitelist getGravity()I
    .registers 2

    .line 2071
    iget v0, p0, Landroid/widget/GridView;->mGravity:I

    return v0
.end method

.method public whitelist getHorizontalSpacing()I
    .registers 2

    .line 2108
    iget v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    return v0
.end method

.method public whitelist getNumColumns()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 2267
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    return v0
.end method

.method public whitelist getRequestedColumnWidth()I
    .registers 2

    .line 2238
    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    return v0
.end method

.method public whitelist getRequestedHorizontalSpacing()I
    .registers 2

    .line 2128
    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    return v0
.end method

.method public whitelist getStretchMode()I
    .registers 2

    .line 2189
    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    return v0
.end method

.method public whitelist getVerticalSpacing()I
    .registers 2

    .line 2161
    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    return v0
.end method

.method protected whitelist layoutChildren()V
    .registers 26

    .line 1177
    move-object/from16 v1, p0

    iget-boolean v2, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1178
    .local v2, "blockLayoutRequests":Z
    const/4 v0, 0x1

    if-nez v2, :cond_9

    .line 1179
    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1183
    :cond_9
    const/4 v3, 0x0

    :try_start_a
    invoke-super {v1}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1185
    invoke-virtual {v1}, Landroid/widget/GridView;->invalidate()V

    .line 1187
    iget-object v4, v1, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_2b6

    if-nez v4, :cond_24

    .line 1188
    :try_start_14
    invoke-virtual {v1}, Landroid/widget/GridView;->resetList()V

    .line 1189
    invoke-virtual {v1}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1f

    .line 1423
    if-nez v2, :cond_1e

    .line 1424
    iput-boolean v3, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1190
    :cond_1e
    return-void

    .line 1423
    :catchall_1f
    move-exception v0

    move/from16 v19, v2

    goto/16 :goto_2b9

    .line 1193
    :cond_24
    :try_start_24
    iget-object v4, v1, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 1194
    .local v4, "childrenTop":I
    iget v5, v1, Landroid/widget/GridView;->mBottom:I

    iget v6, v1, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v5, v6

    iget-object v6, v1, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    .line 1196
    .local v5, "childrenBottom":I
    invoke-virtual {v1}, Landroid/widget/GridView;->getChildCount()I

    move-result v6

    .line 1198
    .local v6, "childCount":I
    const/4 v7, 0x0

    .line 1201
    .local v7, "delta":I
    const/4 v8, 0x0

    .line 1202
    .local v8, "oldSel":Landroid/view/View;
    const/4 v9, 0x0

    .line 1203
    .local v9, "oldFirst":Landroid/view/View;
    const/4 v10, 0x0

    .line 1206
    .local v10, "newSel":Landroid/view/View;
    iget v11, v1, Landroid/widget/GridView;->mLayoutMode:I

    packed-switch v11, :pswitch_data_2c0

    .line 1225
    iget v11, v1, Landroid/widget/GridView;->mSelectedPosition:I
    :try_end_41
    .catchall {:try_start_24 .. :try_end_41} :catchall_2b6

    goto :goto_5d

    .line 1219
    :pswitch_42
    :try_start_42
    iget v11, v1, Landroid/widget/GridView;->mNextSelectedPosition:I

    if-ltz v11, :cond_6e

    .line 1220
    iget v11, v1, Landroid/widget/GridView;->mNextSelectedPosition:I

    iget v12, v1, Landroid/widget/GridView;->mSelectedPosition:I

    sub-int v7, v11, v12

    goto :goto_6e

    .line 1208
    :pswitch_4d
    iget v11, v1, Landroid/widget/GridView;->mNextSelectedPosition:I

    iget v12, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int/2addr v11, v12

    .line 1209
    .local v11, "index":I
    if-ltz v11, :cond_6e

    if-ge v11, v6, :cond_6e

    .line 1210
    invoke-virtual {v1, v11}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12
    :try_end_5a
    .catchall {:try_start_42 .. :try_end_5a} :catchall_1f

    move-object v10, v12

    goto :goto_6e

    .line 1217
    .end local v11    # "index":I
    :pswitch_5c
    goto :goto_6e

    .line 1225
    :goto_5d
    :try_start_5d
    iget v12, v1, Landroid/widget/GridView;->mFirstPosition:I
    :try_end_5f
    .catchall {:try_start_5d .. :try_end_5f} :catchall_2b6

    sub-int/2addr v11, v12

    .line 1226
    .restart local v11    # "index":I
    if-ltz v11, :cond_69

    if-ge v11, v6, :cond_69

    .line 1227
    :try_start_64
    invoke-virtual {v1, v11}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12
    :try_end_68
    .catchall {:try_start_64 .. :try_end_68} :catchall_1f

    move-object v8, v12

    .line 1231
    :cond_69
    :try_start_69
    invoke-virtual {v1, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object v9, v12

    .line 1234
    .end local v11    # "index":I
    :cond_6e
    :goto_6e
    iget-boolean v11, v1, Landroid/widget/GridView;->mDataChanged:Z
    :try_end_70
    .catchall {:try_start_69 .. :try_end_70} :catchall_2b6

    .line 1235
    .local v11, "dataChanged":Z
    if-eqz v11, :cond_75

    .line 1236
    :try_start_72
    invoke-virtual {v1}, Landroid/widget/GridView;->handleDataChanged()V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_1f

    .line 1241
    :cond_75
    :try_start_75
    iget v12, v1, Landroid/widget/GridView;->mItemCount:I
    :try_end_77
    .catchall {:try_start_75 .. :try_end_77} :catchall_2b6

    if-nez v12, :cond_84

    .line 1242
    :try_start_79
    invoke-virtual {v1}, Landroid/widget/GridView;->resetList()V

    .line 1243
    invoke-virtual {v1}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_7f
    .catchall {:try_start_79 .. :try_end_7f} :catchall_1f

    .line 1423
    if-nez v2, :cond_83

    .line 1424
    iput-boolean v3, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1244
    :cond_83
    return-void

    .line 1247
    :cond_84
    :try_start_84
    iget v12, v1, Landroid/widget/GridView;->mNextSelectedPosition:I

    invoke-virtual {v1, v12}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 1249
    const/4 v12, 0x0

    .line 1250
    .local v12, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v13, 0x0

    .line 1251
    .local v13, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    const/4 v14, -0x1

    .line 1256
    .local v14, "accessibilityFocusPosition":I
    invoke-virtual {v1}, Landroid/widget/GridView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v15
    :try_end_90
    .catchall {:try_start_84 .. :try_end_90} :catchall_2b6

    .line 1257
    .local v15, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v15, :cond_ca

    .line 1258
    :try_start_92
    invoke-virtual {v15}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v16

    move-object/from16 v17, v16

    .line 1259
    .local v17, "focusHost":Landroid/view/View;
    if-eqz v17, :cond_c5

    .line 1260
    move/from16 v16, v0

    move-object/from16 v0, v17

    .end local v17    # "focusHost":Landroid/view/View;
    .local v0, "focusHost":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v17

    move-object/from16 v18, v17

    .line 1261
    .local v18, "focusChild":Landroid/view/View;
    if-eqz v18, :cond_c2

    .line 1262
    if-eqz v11, :cond_b2

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->hasTransientState()Z

    move-result v17

    if-nez v17, :cond_b2

    iget-boolean v3, v1, Landroid/widget/GridView;->mAdapterHasStableIds:Z

    if-eqz v3, :cond_b9

    .line 1266
    :cond_b2
    move-object v13, v0

    .line 1267
    nop

    .line 1268
    invoke-virtual {v15}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    move-object v12, v3

    .line 1272
    :cond_b9
    move-object/from16 v3, v18

    .end local v18    # "focusChild":Landroid/view/View;
    .local v3, "focusChild":Landroid/view/View;
    invoke-virtual {v1, v3}, Landroid/widget/GridView;->getPositionForView(Landroid/view/View;)I

    move-result v18
    :try_end_bf
    .catchall {:try_start_92 .. :try_end_bf} :catchall_1f

    move/from16 v14, v18

    goto :goto_cc

    .line 1261
    .end local v3    # "focusChild":Landroid/view/View;
    .restart local v18    # "focusChild":Landroid/view/View;
    :cond_c2
    move-object/from16 v3, v18

    .end local v18    # "focusChild":Landroid/view/View;
    .restart local v3    # "focusChild":Landroid/view/View;
    goto :goto_cc

    .line 1259
    .end local v0    # "focusHost":Landroid/view/View;
    .end local v3    # "focusChild":Landroid/view/View;
    .restart local v17    # "focusHost":Landroid/view/View;
    :cond_c5
    move/from16 v16, v0

    move-object/from16 v0, v17

    .end local v17    # "focusHost":Landroid/view/View;
    .restart local v0    # "focusHost":Landroid/view/View;
    goto :goto_cc

    .line 1257
    .end local v0    # "focusHost":Landroid/view/View;
    :cond_ca
    move/from16 v16, v0

    .line 1279
    :goto_cc
    :try_start_cc
    iget v0, v1, Landroid/widget/GridView;->mFirstPosition:I

    .line 1280
    .local v0, "firstPosition":I
    iget-object v3, v1, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;
    :try_end_d0
    .catchall {:try_start_cc .. :try_end_d0} :catchall_2b6

    .line 1282
    .local v3, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    if-eqz v11, :cond_f1

    .line 1283
    const/16 v18, 0x0

    move/from16 v19, v2

    move/from16 v2, v18

    .local v2, "i":I
    .local v19, "blockLayoutRequests":Z
    :goto_d8
    if-ge v2, v6, :cond_ec

    .line 1284
    move-object/from16 v18, v8

    .end local v8    # "oldSel":Landroid/view/View;
    .local v18, "oldSel":Landroid/view/View;
    :try_start_dc
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move/from16 v20, v2

    .end local v2    # "i":I
    .local v20, "i":I
    add-int v2, v0, v20

    invoke-virtual {v3, v8, v2}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1283
    add-int/lit8 v2, v20, 0x1

    move-object/from16 v8, v18

    .end local v20    # "i":I
    .restart local v2    # "i":I
    goto :goto_d8

    .end local v18    # "oldSel":Landroid/view/View;
    .restart local v8    # "oldSel":Landroid/view/View;
    :cond_ec
    move/from16 v20, v2

    move-object/from16 v18, v8

    .end local v2    # "i":I
    .end local v8    # "oldSel":Landroid/view/View;
    .restart local v18    # "oldSel":Landroid/view/View;
    goto :goto_f8

    .line 1287
    .end local v18    # "oldSel":Landroid/view/View;
    .end local v19    # "blockLayoutRequests":Z
    .local v2, "blockLayoutRequests":Z
    .restart local v8    # "oldSel":Landroid/view/View;
    :cond_f1
    move/from16 v19, v2

    move-object/from16 v18, v8

    .end local v2    # "blockLayoutRequests":Z
    .end local v8    # "oldSel":Landroid/view/View;
    .restart local v18    # "oldSel":Landroid/view/View;
    .restart local v19    # "blockLayoutRequests":Z
    invoke-virtual {v3, v6, v0}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1291
    :goto_f8
    invoke-virtual {v1}, Landroid/widget/GridView;->detachAllViewsFromParent()V

    .line 1292
    invoke-virtual {v3}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 1294
    iget v2, v1, Landroid/widget/GridView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_2d0

    .line 1322
    if-nez v6, :cond_180

    .line 1323
    iget-boolean v2, v1, Landroid/widget/GridView;->mStackFromBottom:Z

    goto :goto_14d

    .line 1319
    :pswitch_108
    invoke-direct {v1, v7, v4, v5}, Landroid/widget/GridView;->moveSelection(III)Landroid/view/View;

    move-result-object v2

    .line 1320
    .local v2, "sel":Landroid/view/View;
    goto/16 :goto_1b4

    .line 1315
    .end local v2    # "sel":Landroid/view/View;
    :pswitch_10e
    iget v2, v1, Landroid/widget/GridView;->mSyncPosition:I

    iget v8, v1, Landroid/widget/GridView;->mSpecificTop:I

    invoke-direct {v1, v2, v8}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    .line 1316
    .restart local v2    # "sel":Landroid/view/View;
    goto/16 :goto_1b4

    .line 1312
    .end local v2    # "sel":Landroid/view/View;
    :pswitch_118
    iget v2, v1, Landroid/widget/GridView;->mSelectedPosition:I

    iget v8, v1, Landroid/widget/GridView;->mSpecificTop:I

    invoke-direct {v1, v2, v8}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    .line 1313
    .restart local v2    # "sel":Landroid/view/View;
    goto/16 :goto_1b4

    .line 1308
    .end local v2    # "sel":Landroid/view/View;
    :pswitch_122
    iget v2, v1, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2, v5}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v2

    .line 1309
    .restart local v2    # "sel":Landroid/view/View;
    invoke-direct {v1}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 1310
    goto/16 :goto_1b4

    .line 1296
    .end local v2    # "sel":Landroid/view/View;
    :pswitch_12f
    if-eqz v10, :cond_13b

    .line 1297
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-direct {v1, v2, v4, v5}, Landroid/widget/GridView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "sel":Landroid/view/View;
    goto/16 :goto_1b4

    .line 1299
    .end local v2    # "sel":Landroid/view/View;
    :cond_13b
    invoke-direct {v1, v4, v5}, Landroid/widget/GridView;->fillSelection(II)Landroid/view/View;

    move-result-object v2

    .line 1301
    .restart local v2    # "sel":Landroid/view/View;
    goto/16 :goto_1b4

    .line 1303
    .end local v2    # "sel":Landroid/view/View;
    :pswitch_141
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/GridView;->mFirstPosition:I

    .line 1304
    invoke-direct {v1, v4}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v2

    .line 1305
    .restart local v2    # "sel":Landroid/view/View;
    invoke-direct {v1}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 1306
    goto/16 :goto_1b4

    .line 1323
    .end local v2    # "sel":Landroid/view/View;
    :goto_14d
    if-nez v2, :cond_165

    .line 1324
    iget-object v2, v1, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_15c

    invoke-virtual {v1}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_15a

    goto :goto_15c

    .line 1325
    :cond_15a
    const/4 v2, 0x0

    goto :goto_15d

    :cond_15c
    :goto_15c
    const/4 v2, -0x1

    .line 1324
    :goto_15d
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 1326
    invoke-direct {v1, v4}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "sel":Landroid/view/View;
    goto :goto_1b4

    .line 1328
    .end local v2    # "sel":Landroid/view/View;
    :cond_165
    iget v2, v1, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    .line 1329
    .local v2, "last":I
    iget-object v8, v1, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_176

    invoke-virtual {v1}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v8

    if-eqz v8, :cond_174

    goto :goto_176

    .line 1330
    :cond_174
    move v8, v2

    goto :goto_177

    :cond_176
    :goto_176
    const/4 v8, -0x1

    .line 1329
    :goto_177
    invoke-virtual {v1, v8}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 1331
    invoke-direct {v1, v2, v5}, Landroid/widget/GridView;->fillFromBottom(II)Landroid/view/View;

    move-result-object v8

    move-object v2, v8

    .line 1332
    .local v2, "sel":Landroid/view/View;
    goto :goto_1b4

    .line 1334
    .end local v2    # "sel":Landroid/view/View;
    :cond_180
    iget v2, v1, Landroid/widget/GridView;->mSelectedPosition:I

    if-ltz v2, :cond_199

    iget v2, v1, Landroid/widget/GridView;->mSelectedPosition:I

    iget v8, v1, Landroid/widget/GridView;->mItemCount:I

    if-ge v2, v8, :cond_199

    .line 1335
    iget v2, v1, Landroid/widget/GridView;->mSelectedPosition:I

    if-nez v18, :cond_190

    .line 1336
    move v8, v4

    goto :goto_194

    :cond_190
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1335
    :goto_194
    invoke-direct {v1, v2, v8}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "sel":Landroid/view/View;
    goto :goto_1b4

    .line 1337
    .end local v2    # "sel":Landroid/view/View;
    :cond_199
    iget v2, v1, Landroid/widget/GridView;->mFirstPosition:I

    iget v8, v1, Landroid/widget/GridView;->mItemCount:I

    if-ge v2, v8, :cond_1ae

    .line 1338
    iget v2, v1, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v9, :cond_1a5

    .line 1339
    move v8, v4

    goto :goto_1a9

    :cond_1a5
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1338
    :goto_1a9
    invoke-direct {v1, v2, v8}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "sel":Landroid/view/View;
    goto :goto_1b4

    .line 1341
    .end local v2    # "sel":Landroid/view/View;
    :cond_1ae
    const/4 v2, 0x0

    invoke-direct {v1, v2, v4}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v8

    move-object v2, v8

    .line 1348
    .restart local v2    # "sel":Landroid/view/View;
    :goto_1b4
    invoke-virtual {v3}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    .line 1350
    if-eqz v2, :cond_1c6

    .line 1351
    const/4 v8, -0x1

    invoke-virtual {v1, v8, v2}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    .line 1352
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, v1, Landroid/widget/GridView;->mSelectedTop:I

    move/from16 v21, v0

    goto :goto_20c

    .line 1354
    :cond_1c6
    iget v8, v1, Landroid/widget/GridView;->mTouchMode:I

    if-lez v8, :cond_1d4

    iget v8, v1, Landroid/widget/GridView;->mTouchMode:I

    move/from16 v21, v0

    .end local v0    # "firstPosition":I
    .local v21, "firstPosition":I
    const/4 v0, 0x3

    if-ge v8, v0, :cond_1d6

    move/from16 v0, v16

    goto :goto_1d7

    .end local v21    # "firstPosition":I
    .restart local v0    # "firstPosition":I
    :cond_1d4
    move/from16 v21, v0

    .end local v0    # "firstPosition":I
    .restart local v21    # "firstPosition":I
    :cond_1d6
    const/4 v0, 0x0

    .line 1356
    .local v0, "inTouchMode":Z
    :goto_1d7
    if-eqz v0, :cond_1ec

    .line 1358
    iget v8, v1, Landroid/widget/GridView;->mMotionPosition:I

    move/from16 v22, v0

    .end local v0    # "inTouchMode":Z
    .local v22, "inTouchMode":Z
    iget v0, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int/2addr v8, v0

    invoke-virtual {v1, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1359
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1eb

    .line 1360
    iget v8, v1, Landroid/widget/GridView;->mMotionPosition:I

    invoke-virtual {v1, v8, v0}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    .line 1362
    .end local v0    # "child":Landroid/view/View;
    :cond_1eb
    goto :goto_20c

    .end local v22    # "inTouchMode":Z
    .local v0, "inTouchMode":Z
    :cond_1ec
    move/from16 v22, v0

    .end local v0    # "inTouchMode":Z
    .restart local v22    # "inTouchMode":Z
    iget v0, v1, Landroid/widget/GridView;->mSelectedPosition:I

    const/4 v8, -0x1

    if-eq v0, v8, :cond_204

    .line 1366
    iget v0, v1, Landroid/widget/GridView;->mSelectorPosition:I

    iget v8, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int/2addr v0, v8

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1367
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_203

    .line 1368
    iget v8, v1, Landroid/widget/GridView;->mSelectorPosition:I

    invoke-virtual {v1, v8, v0}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    .line 1370
    .end local v0    # "child":Landroid/view/View;
    :cond_203
    goto :goto_20c

    .line 1372
    :cond_204
    const/4 v8, 0x0

    iput v8, v1, Landroid/widget/GridView;->mSelectedTop:I

    .line 1373
    iget-object v0, v1, Landroid/widget/GridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1378
    .end local v22    # "inTouchMode":Z
    :goto_20c
    const/4 v0, 0x0

    if-eqz v15, :cond_283

    .line 1379
    invoke-virtual {v15}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v8

    .line 1380
    .local v8, "newAccessibilityFocusedView":Landroid/view/View;
    if-nez v8, :cond_27c

    .line 1381
    if-eqz v13, :cond_259

    .line 1382
    invoke-virtual {v13}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v22

    if-eqz v22, :cond_252

    .line 1383
    nop

    .line 1384
    invoke-virtual {v13}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v16

    move-object/from16 v20, v16

    .line 1385
    .local v20, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v12, :cond_246

    if-eqz v20, :cond_246

    .line 1386
    nop

    .line 1387
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v22

    .line 1386
    invoke-static/range {v22 .. v23}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v16

    move/from16 v22, v16

    .line 1388
    .local v22, "virtualViewId":I
    move-object/from16 v23, v2

    .end local v2    # "sel":Landroid/view/View;
    .local v23, "sel":Landroid/view/View;
    const/16 v2, 0x40

    move/from16 v24, v22

    move/from16 v22, v4

    move/from16 v4, v24

    move-object/from16 v24, v3

    move-object/from16 v3, v20

    .end local v20    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .local v3, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .local v4, "virtualViewId":I
    .local v22, "childrenTop":I
    .local v24, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    invoke-virtual {v3, v4, v2, v0}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 1390
    nop

    .end local v4    # "virtualViewId":I
    goto :goto_27b

    .line 1385
    .end local v22    # "childrenTop":I
    .end local v23    # "sel":Landroid/view/View;
    .end local v24    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v2    # "sel":Landroid/view/View;
    .local v3, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .local v4, "childrenTop":I
    .restart local v20    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_246
    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move/from16 v22, v4

    move-object/from16 v3, v20

    .line 1391
    .end local v2    # "sel":Landroid/view/View;
    .end local v4    # "childrenTop":I
    .end local v20    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .local v3, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .restart local v22    # "childrenTop":I
    .restart local v23    # "sel":Landroid/view/View;
    .restart local v24    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    invoke-virtual {v13}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto :goto_27b

    .line 1382
    .end local v22    # "childrenTop":I
    .end local v23    # "sel":Landroid/view/View;
    .end local v24    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v2    # "sel":Landroid/view/View;
    .local v3, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v4    # "childrenTop":I
    :cond_252
    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move/from16 v22, v4

    .end local v2    # "sel":Landroid/view/View;
    .end local v3    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v4    # "childrenTop":I
    .restart local v22    # "childrenTop":I
    .restart local v23    # "sel":Landroid/view/View;
    .restart local v24    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    goto :goto_25f

    .line 1381
    .end local v22    # "childrenTop":I
    .end local v23    # "sel":Landroid/view/View;
    .end local v24    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v2    # "sel":Landroid/view/View;
    .restart local v3    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v4    # "childrenTop":I
    :cond_259
    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move/from16 v22, v4

    .line 1393
    .end local v2    # "sel":Landroid/view/View;
    .end local v3    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v4    # "childrenTop":I
    .restart local v22    # "childrenTop":I
    .restart local v23    # "sel":Landroid/view/View;
    .restart local v24    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    :goto_25f
    const/4 v2, -0x1

    if-eq v14, v2, :cond_27b

    .line 1395
    iget v2, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int v2, v14, v2

    .line 1397
    invoke-virtual {v1}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 1395
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    .line 1398
    .local v2, "position":I
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1399
    .local v3, "restoreView":Landroid/view/View;
    if-eqz v3, :cond_289

    .line 1400
    invoke-virtual {v3}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto :goto_289

    .line 1393
    .end local v2    # "position":I
    .end local v3    # "restoreView":Landroid/view/View;
    :cond_27b
    :goto_27b
    goto :goto_289

    .line 1380
    .end local v22    # "childrenTop":I
    .end local v23    # "sel":Landroid/view/View;
    .end local v24    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .local v2, "sel":Landroid/view/View;
    .local v3, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v4    # "childrenTop":I
    :cond_27c
    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move/from16 v22, v4

    .end local v2    # "sel":Landroid/view/View;
    .end local v3    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v4    # "childrenTop":I
    .restart local v22    # "childrenTop":I
    .restart local v23    # "sel":Landroid/view/View;
    .restart local v24    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    goto :goto_289

    .line 1378
    .end local v8    # "newAccessibilityFocusedView":Landroid/view/View;
    .end local v22    # "childrenTop":I
    .end local v23    # "sel":Landroid/view/View;
    .end local v24    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v2    # "sel":Landroid/view/View;
    .restart local v3    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v4    # "childrenTop":I
    :cond_283
    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move/from16 v22, v4

    .line 1406
    .end local v2    # "sel":Landroid/view/View;
    .end local v3    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v4    # "childrenTop":I
    .restart local v22    # "childrenTop":I
    .restart local v23    # "sel":Landroid/view/View;
    .restart local v24    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    :cond_289
    :goto_289
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/GridView;->mLayoutMode:I

    .line 1407
    iput-boolean v2, v1, Landroid/widget/GridView;->mDataChanged:Z

    .line 1408
    iget-object v2, v1, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    if-eqz v2, :cond_299

    .line 1409
    iget-object v2, v1, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->post(Ljava/lang/Runnable;)Z

    .line 1410
    iput-object v0, v1, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 1412
    :cond_299
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/widget/GridView;->mNeedSync:Z

    .line 1413
    iget v0, v1, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 1415
    invoke-virtual {v1}, Landroid/widget/GridView;->updateScrollIndicators()V

    .line 1417
    iget v0, v1, Landroid/widget/GridView;->mItemCount:I

    if-lez v0, :cond_2ab

    .line 1418
    invoke-virtual {v1}, Landroid/widget/GridView;->checkSelectionChanged()V

    .line 1421
    :cond_2ab
    invoke-virtual {v1}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_2ae
    .catchall {:try_start_dc .. :try_end_2ae} :catchall_2b4

    .line 1423
    .end local v5    # "childrenBottom":I
    .end local v6    # "childCount":I
    .end local v7    # "delta":I
    .end local v9    # "oldFirst":Landroid/view/View;
    .end local v10    # "newSel":Landroid/view/View;
    .end local v11    # "dataChanged":Z
    .end local v12    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v13    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .end local v14    # "accessibilityFocusPosition":I
    .end local v15    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .end local v18    # "oldSel":Landroid/view/View;
    .end local v21    # "firstPosition":I
    .end local v22    # "childrenTop":I
    .end local v23    # "sel":Landroid/view/View;
    .end local v24    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    if-nez v19, :cond_2b3

    .line 1424
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1427
    :cond_2b3
    return-void

    .line 1423
    :catchall_2b4
    move-exception v0

    goto :goto_2b9

    .end local v19    # "blockLayoutRequests":Z
    .local v2, "blockLayoutRequests":Z
    :catchall_2b6
    move-exception v0

    move/from16 v19, v2

    .end local v2    # "blockLayoutRequests":Z
    .restart local v19    # "blockLayoutRequests":Z
    :goto_2b9
    if-nez v19, :cond_2be

    .line 1424
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1426
    :cond_2be
    throw v0

    nop

    :pswitch_data_2c0
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_4d
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_42
    .end packed-switch

    :pswitch_data_2d0
    .packed-switch 0x1
        :pswitch_141
        :pswitch_12f
        :pswitch_122
        :pswitch_118
        :pswitch_10e
        :pswitch_108
    .end packed-switch
.end method

.method greylist-max-o lookForSelectablePosition(IZ)I
    .registers 6
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .line 253
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 254
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_15

    .line 258
    :cond_c
    if-ltz p1, :cond_14

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    if-lt p1, v2, :cond_13

    goto :goto_14

    .line 261
    :cond_13
    return p1

    .line 259
    :cond_14
    :goto_14
    return v1

    .line 255
    :cond_15
    :goto_15
    return v1
.end method

.method protected whitelist onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 11
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 1960
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1962
    const/4 v0, -0x1

    .line 1963
    .local v0, "closestChildIndex":I
    if-eqz p1, :cond_37

    if-eqz p3, :cond_37

    .line 1964
    iget v1, p0, Landroid/widget/GridView;->mScrollX:I

    iget v2, p0, Landroid/widget/GridView;->mScrollY:I

    invoke-virtual {p3, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1968
    iget-object v1, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    .line 1969
    .local v1, "otherRect":Landroid/graphics/Rect;
    const v2, 0x7fffffff

    .line 1970
    .local v2, "minDistance":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    .line 1971
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    if-ge v4, v3, :cond_37

    .line 1973
    invoke-direct {p0, v4, p2}, Landroid/widget/GridView;->isCandidateSelection(II)Z

    move-result v5

    if-nez v5, :cond_22

    .line 1974
    goto :goto_34

    .line 1977
    :cond_22
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1978
    .local v5, "other":Landroid/view/View;
    invoke-virtual {v5, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1979
    invoke-virtual {p0, v5, v1}, Landroid/widget/GridView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1980
    invoke-static {p3, v1, p2}, Landroid/widget/GridView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v6

    .line 1982
    .local v6, "distance":I
    if-ge v6, v2, :cond_34

    .line 1983
    move v2, v6

    .line 1984
    move v0, v4

    .line 1971
    .end local v5    # "other":Landroid/view/View;
    .end local v6    # "distance":I
    :cond_34
    :goto_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 1989
    .end local v1    # "otherRect":Landroid/graphics/Rect;
    .end local v2    # "minDistance":I
    .end local v3    # "childCount":I
    .end local v4    # "i":I
    :cond_37
    if-ltz v0, :cond_40

    .line 1990
    iget v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_43

    .line 1992
    :cond_40
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    .line 1994
    :goto_43
    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2432
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2434
    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v0

    .line 2435
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    .line 2436
    .local v1, "columnsCount":I
    div-int v2, v0, v1

    .line 2440
    .local v2, "rowsCount":I
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v3, :cond_18

    .line 2441
    rem-int v3, p2, v1

    .line 2442
    .local v3, "column":I
    div-int v4, p2, v1

    move v8, v3

    move v6, v4

    .local v4, "row":I
    goto :goto_27

    .line 2444
    .end local v3    # "column":I
    .end local v4    # "row":I
    :cond_18
    add-int/lit8 v3, v0, -0x1

    sub-int/2addr v3, p2

    .line 2446
    .local v3, "invertedIndex":I
    add-int/lit8 v4, v1, -0x1

    rem-int v5, v3, v1

    sub-int/2addr v4, v5

    .line 2447
    .local v4, "column":I
    add-int/lit8 v5, v2, -0x1

    div-int v6, v3, v1

    sub-int/2addr v5, v6

    move v8, v4

    move v6, v5

    .line 2450
    .end local v3    # "invertedIndex":I
    .end local v4    # "column":I
    .local v6, "row":I
    .local v8, "column":I
    :goto_27
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 2451
    .local v3, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v3, :cond_36

    iget v4, v3, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_36

    const/4 v4, 0x1

    goto :goto_37

    :cond_36
    const/4 v4, 0x0

    :goto_37
    move v10, v4

    .line 2452
    .local v10, "isHeading":Z
    invoke-virtual {p0, p2}, Landroid/widget/GridView;->isItemChecked(I)Z

    move-result v11

    .line 2453
    .local v11, "isSelected":Z
    const/4 v7, 0x1

    const/4 v9, 0x1

    invoke-static/range {v6 .. v11}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v4

    .line 2455
    .local v4, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    invoke-virtual {p3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 2456
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2389
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2391
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    .line 2392
    .local v0, "columnsCount":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v1

    div-int/2addr v1, v0

    .line 2393
    .local v1, "rowsCount":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getSelectionModeForAccessibility()I

    move-result v2

    .line 2394
    .local v2, "selectionMode":I
    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v3

    .line 2396
    .local v3, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 2398
    if-gtz v0, :cond_1c

    if-lez v1, :cond_21

    .line 2399
    :cond_1c
    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2401
    :cond_21
    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1650
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 1655
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1660
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected whitelist onMeasure(II)V
    .registers 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1061
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 1063
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1064
    .local v1, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1065
    .local v2, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 1066
    .local v3, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1068
    .local v4, "heightSize":I
    if-nez v1, :cond_36

    .line 1069
    iget v5, v0, Landroid/widget/GridView;->mColumnWidth:I

    if-lez v5, :cond_28

    .line 1070
    iget v5, v0, Landroid/widget/GridView;->mColumnWidth:I

    iget-object v6, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget-object v6, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    .end local v3    # "widthSize":I
    .local v5, "widthSize":I
    goto :goto_31

    .line 1072
    .end local v5    # "widthSize":I
    .restart local v3    # "widthSize":I
    :cond_28
    iget-object v5, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    .line 1074
    .end local v3    # "widthSize":I
    .restart local v5    # "widthSize":I
    :goto_31
    invoke-virtual {v0}, Landroid/widget/GridView;->getVerticalScrollbarWidth()I

    move-result v3

    add-int/2addr v3, v5

    .line 1077
    .end local v5    # "widthSize":I
    .restart local v3    # "widthSize":I
    :cond_36
    iget-object v5, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v5, v3, v5

    iget-object v6, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    .line 1078
    .local v5, "childWidth":I
    invoke-direct {v0, v5}, Landroid/widget/GridView;->determineColumns(I)Z

    move-result v6

    .line 1080
    .local v6, "didNotInitiallyFit":Z
    const/4 v7, 0x0

    .line 1081
    .local v7, "childHeight":I
    const/4 v8, 0x0

    .line 1083
    .local v8, "childState":I
    iget-object v9, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v10, 0x0

    if-nez v9, :cond_4e

    move v9, v10

    goto :goto_54

    :cond_4e
    iget-object v9, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    :goto_54
    iput v9, v0, Landroid/widget/GridView;->mItemCount:I

    .line 1084
    iget v9, v0, Landroid/widget/GridView;->mItemCount:I

    .line 1085
    .local v9, "count":I
    const/4 v12, 0x1

    if-lez v9, :cond_c4

    .line 1086
    iget-object v13, v0, Landroid/widget/GridView;->mIsScrap:[Z

    invoke-virtual {v0, v10, v13}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v13

    .line 1088
    .local v13, "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/AbsListView$LayoutParams;

    .line 1089
    .local v14, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v14, :cond_73

    .line 1090
    invoke-virtual {v0}, Landroid/widget/GridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    move-object v14, v15

    check-cast v14, Landroid/widget/AbsListView$LayoutParams;

    .line 1091
    invoke-virtual {v13, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1093
    :cond_73
    iget-object v15, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v15, v10}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v15

    iput v15, v14, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1094
    iget-object v15, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v15, v10}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v15

    iput-boolean v15, v14, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 1095
    iput-boolean v12, v14, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1097
    nop

    .line 1098
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    invoke-static {v15, v10}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v15

    move/from16 v16, v12

    iget v12, v14, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 1097
    invoke-static {v15, v10, v12}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result v12

    .line 1100
    .local v12, "childHeightSpec":I
    iget v15, v0, Landroid/widget/GridView;->mColumnWidth:I

    .line 1101
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v15, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    iget v15, v14, Landroid/widget/AbsListView$LayoutParams;->width:I

    .line 1100
    invoke-static {v11, v10, v15}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result v10

    .line 1102
    .local v10, "childWidthSpec":I
    invoke-virtual {v13, v10, v12}, Landroid/view/View;->measure(II)V

    .line 1104
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1105
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredState()I

    move-result v11

    invoke-static {v8, v11}, Landroid/widget/GridView;->combineMeasuredStates(II)I

    move-result v8

    .line 1107
    iget-object v11, v0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget v15, v14, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v11, v15}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v11

    if-eqz v11, :cond_c6

    .line 1108
    iget-object v11, v0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    const/4 v15, -0x1

    invoke-virtual {v11, v13, v15}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_c6

    .line 1085
    .end local v10    # "childWidthSpec":I
    .end local v12    # "childHeightSpec":I
    .end local v13    # "child":Landroid/view/View;
    .end local v14    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_c4
    move/from16 v16, v12

    .line 1112
    :cond_c6
    :goto_c6
    if-nez v2, :cond_da

    .line 1113
    iget-object v10, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    add-int/2addr v10, v7

    .line 1114
    invoke-virtual {v0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    add-int v4, v10, v11

    .line 1117
    :cond_da
    const/high16 v10, -0x80000000

    if-ne v2, v10, :cond_fb

    .line 1118
    iget-object v11, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    .line 1120
    .local v11, "ourSize":I
    iget v12, v0, Landroid/widget/GridView;->mNumColumns:I

    .line 1121
    .local v12, "numColumns":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_ea
    if-ge v13, v9, :cond_fa

    .line 1122
    add-int/2addr v11, v7

    .line 1123
    add-int v14, v13, v12

    if-ge v14, v9, :cond_f4

    .line 1124
    iget v14, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr v11, v14

    .line 1126
    :cond_f4
    if-lt v11, v4, :cond_f8

    .line 1127
    move v11, v4

    .line 1128
    goto :goto_fa

    .line 1121
    :cond_f8
    add-int/2addr v13, v12

    goto :goto_ea

    .line 1131
    .end local v13    # "i":I
    :cond_fa
    :goto_fa
    move v4, v11

    .line 1134
    .end local v11    # "ourSize":I
    .end local v12    # "numColumns":I
    :cond_fb
    if-ne v1, v10, :cond_120

    iget v10, v0, Landroid/widget/GridView;->mRequestedNumColumns:I

    const/4 v15, -0x1

    if-eq v10, v15, :cond_120

    .line 1135
    iget v10, v0, Landroid/widget/GridView;->mRequestedNumColumns:I

    iget v11, v0, Landroid/widget/GridView;->mColumnWidth:I

    mul-int/2addr v10, v11

    iget v11, v0, Landroid/widget/GridView;->mRequestedNumColumns:I

    add-int/lit8 v11, v11, -0x1

    iget v12, v0, Landroid/widget/GridView;->mHorizontalSpacing:I

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    iget-object v11, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v11

    iget-object v11, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    .line 1138
    .local v10, "ourSize":I
    if-gt v10, v3, :cond_11d

    if-eqz v6, :cond_120

    .line 1139
    :cond_11d
    const/high16 v11, 0x1000000

    or-int/2addr v3, v11

    .line 1143
    .end local v10    # "ourSize":I
    :cond_120
    invoke-virtual {v0, v3, v4}, Landroid/widget/GridView;->setMeasuredDimension(II)V

    .line 1144
    move/from16 v10, p1

    iput v10, v0, Landroid/widget/GridView;->mWidthMeasureSpec:I

    .line 1145
    return-void
.end method

.method greylist-max-o pageScroll(I)Z
    .registers 8
    .param p1, "direction"    # I

    .line 1785
    const/4 v0, -0x1

    .line 1787
    .local v0, "nextPage":I
    const/16 v1, 0x21

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_13

    .line 1788
    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_25

    .line 1789
    :cond_13
    const/16 v1, 0x82

    if-ne p1, v1, :cond_25

    .line 1790
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v1, v2

    iget v4, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1793
    :cond_25
    :goto_25
    if-ltz v0, :cond_31

    .line 1794
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1795
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1796
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1797
    return v2

    .line 1800
    :cond_31
    return v3
.end method

.method public greylist-max-o performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 8
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 2406
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 2407
    return v1

    .line 2410
    :cond_8
    packed-switch p1, :pswitch_data_2a

    goto :goto_28

    .line 2414
    :pswitch_c
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    .line 2415
    .local v0, "numColumns":I
    const-string v2, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2416
    .local v2, "row":I
    mul-int v3, v2, v0

    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2417
    .local v3, "position":I
    if-ltz v2, :cond_28

    .line 2420
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->smoothScrollToPosition(I)V

    .line 2421
    return v1

    .line 2426
    .end local v0    # "numColumns":I
    .end local v2    # "row":I
    .end local v3    # "position":I
    :cond_28
    :goto_28
    const/4 v0, 0x0

    return v0

    :pswitch_data_2a
    .packed-switch 0x1020037
        :pswitch_c
    .end packed-switch
.end method

.method greylist sequenceScroll(I)Z
    .registers 13
    .param p1, "direction"    # I

    .line 1905
    iget v0, p0, Landroid/widget/GridView;->mSelectedPosition:I

    .line 1906
    .local v0, "selectedPosition":I
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 1907
    .local v1, "numColumns":I
    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    .line 1911
    .local v2, "count":I
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_19

    .line 1912
    div-int v3, v0, v1

    mul-int/2addr v3, v1

    .line 1913
    .local v3, "startOfRow":I
    add-int v6, v3, v1

    sub-int/2addr v6, v5

    add-int/lit8 v7, v2, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .local v6, "endOfRow":I
    goto :goto_2a

    .line 1915
    .end local v3    # "startOfRow":I
    .end local v6    # "endOfRow":I
    :cond_19
    add-int/lit8 v3, v2, -0x1

    sub-int/2addr v3, v0

    .line 1916
    .local v3, "invertedSelection":I
    add-int/lit8 v6, v2, -0x1

    div-int v7, v3, v1

    mul-int/2addr v7, v1

    sub-int/2addr v6, v7

    .line 1917
    .restart local v6    # "endOfRow":I
    sub-int v7, v6, v1

    add-int/2addr v7, v5

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v3, v7

    .line 1920
    .local v3, "startOfRow":I
    :goto_2a
    const/4 v7, 0x0

    .line 1921
    .local v7, "moved":Z
    const/4 v8, 0x0

    .line 1922
    .local v8, "showScroll":Z
    const/4 v9, 0x6

    packed-switch p1, :pswitch_data_62

    goto :goto_50

    .line 1924
    :pswitch_31
    add-int/lit8 v10, v2, -0x1

    if-ge v0, v10, :cond_50

    .line 1926
    iput v9, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1927
    add-int/lit8 v9, v0, 0x1

    invoke-virtual {p0, v9}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1928
    const/4 v7, 0x1

    .line 1930
    if-ne v0, v6, :cond_40

    move v4, v5

    :cond_40
    move v8, v4

    goto :goto_50

    .line 1935
    :pswitch_42
    if-lez v0, :cond_50

    .line 1937
    iput v9, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1938
    add-int/lit8 v9, v0, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1939
    const/4 v7, 0x1

    .line 1941
    if-ne v0, v3, :cond_4f

    move v4, v5

    :cond_4f
    move v8, v4

    .line 1946
    :cond_50
    :goto_50
    if-eqz v7, :cond_5c

    .line 1947
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->playSoundEffect(I)V

    .line 1948
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1951
    :cond_5c
    if-eqz v8, :cond_61

    .line 1952
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1955
    :cond_61
    return v7

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_42
        :pswitch_31
    .end packed-switch
.end method

.method public bridge synthetic whitelist setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 69
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public whitelist setAdapter(Landroid/widget/ListAdapter;)V
    .registers 5
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 208
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_f

    .line 209
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 212
    :cond_f
    invoke-virtual {p0}, Landroid/widget/GridView;->resetList()V

    .line 213
    iget-object v0, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 214
    iput-object p1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 216
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/GridView;->mOldSelectedPosition:I

    .line 217
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/widget/GridView;->mOldSelectedRowId:J

    .line 220
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 222
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_6d

    .line 223
    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    iput v0, p0, Landroid/widget/GridView;->mOldItemCount:I

    .line 224
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/GridView;->mItemCount:I

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/GridView;->mDataChanged:Z

    .line 226
    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    .line 228
    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 229
    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 231
    iget-object v1, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 234
    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_5f

    .line 235
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1, v2}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .local v0, "position":I
    goto :goto_63

    .line 237
    .end local v0    # "position":I
    :cond_5f
    invoke-virtual {p0, v2, v0}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 239
    .restart local v0    # "position":I
    :goto_63
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 240
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 241
    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    .line 242
    .end local v0    # "position":I
    goto :goto_73

    .line 243
    :cond_6d
    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    .line 245
    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    .line 248
    :goto_73
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    .line 249
    return-void
.end method

.method public whitelist setColumnWidth(I)V
    .registers 3
    .param p1, "columnWidth"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 2201
    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    if-eq p1, v0, :cond_9

    .line 2202
    iput p1, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    .line 2203
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2205
    :cond_9
    return-void
.end method

.method public whitelist setGravity(I)V
    .registers 3
    .param p1, "gravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 2056
    iget v0, p0, Landroid/widget/GridView;->mGravity:I

    if-eq v0, p1, :cond_9

    .line 2057
    iput p1, p0, Landroid/widget/GridView;->mGravity:I

    .line 2058
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2060
    :cond_9
    return-void
.end method

.method public whitelist setHorizontalSpacing(I)V
    .registers 3
    .param p1, "horizontalSpacing"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 2085
    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    if-eq p1, v0, :cond_9

    .line 2086
    iput p1, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    .line 2087
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2089
    :cond_9
    return-void
.end method

.method public whitelist setNumColumns(I)V
    .registers 3
    .param p1, "numColumns"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 2250
    iget v0, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    if-eq p1, v0, :cond_9

    .line 2251
    iput p1, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    .line 2252
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2254
    :cond_9
    return-void
.end method

.method public whitelist setRemoteViewsAdapter(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setRemoteViewsAdapterAsync"
    .end annotation

    .line 198
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 199
    return-void
.end method

.method public whitelist setSelection(I)V
    .registers 3
    .param p1, "position"    # I

    .line 1606
    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1607
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    goto :goto_c

    .line 1609
    :cond_a
    iput p1, p0, Landroid/widget/GridView;->mResurrectToPosition:I

    .line 1611
    :goto_c
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1612
    iget-object v0, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v0, :cond_18

    .line 1613
    iget-object v0, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 1615
    :cond_18
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    .line 1616
    return-void
.end method

.method greylist-max-o setSelectionInt(I)V
    .registers 7
    .param p1, "position"    # I

    .line 1625
    iget v0, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    .line 1627
    .local v0, "previousSelectedPosition":I
    iget-object v1, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_b

    .line 1628
    iget-object v1, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 1631
    :cond_b
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 1632
    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 1634
    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v1, :cond_1d

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    sub-int/2addr v1, v2

    goto :goto_1f

    .line 1635
    :cond_1d
    iget v1, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    :goto_1f
    nop

    .line 1636
    .local v1, "next":I
    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v2, :cond_2a

    .line 1637
    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    goto :goto_2b

    :cond_2a
    move v2, v0

    .line 1639
    .local v2, "previous":I
    :goto_2b
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v3, v1, v3

    .line 1640
    .local v3, "nextRow":I
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v4, v2, v4

    .line 1642
    .local v4, "previousRow":I
    if-eq v3, v4, :cond_38

    .line 1643
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1646
    :cond_38
    return-void
.end method

.method public whitelist setStretchMode(I)V
    .registers 3
    .param p1, "stretchMode"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 2174
    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    if-eq p1, v0, :cond_9

    .line 2175
    iput p1, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 2176
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2178
    :cond_9
    return-void
.end method

.method public whitelist setVerticalSpacing(I)V
    .registers 3
    .param p1, "verticalSpacing"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 2144
    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    if-eq p1, v0, :cond_9

    .line 2145
    iput p1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 2146
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2148
    :cond_9
    return-void
.end method

.method public whitelist smoothScrollByOffset(I)V
    .registers 2
    .param p1, "offset"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 883
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    .line 884
    return-void
.end method

.method public whitelist smoothScrollToPosition(I)V
    .registers 2
    .param p1, "position"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 873
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 874
    return-void
.end method
