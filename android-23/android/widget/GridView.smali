.class public Landroid/widget/GridView;
.super Landroid/widget/AbsListView;
.source "GridView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final AUTO_FIT:I = -0x1

.field public static final NO_STRETCH:I = 0x0

.field public static final STRETCH_COLUMN_WIDTH:I = 0x2

.field public static final STRETCH_SPACING:I = 0x1

.field public static final STRETCH_SPACING_UNIFORM:I = 0x3


# instance fields
.field private mColumnWidth:I

.field private mGravity:I

.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mReferenceView:Landroid/view/View;

.field private mReferenceViewInSelectedRow:Landroid/view/View;

.field private mRequestedColumnWidth:I

.field private mRequestedHorizontalSpacing:I

.field private mRequestedNumColumns:I

.field private mStretchMode:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 122
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 126
    const v0, 0x1010071

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 130
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v10, 0x1

    #@2
    const/4 v9, 0x2

    #@3
    const/4 v8, -0x1

    #@4
    const/4 v7, 0x0

    #@5
    .line 134
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@8
    .line 104
    iput v8, p0, Landroid/widget/GridView;->mNumColumns:I

    #@a
    .line 106
    iput v7, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    #@c
    .line 108
    iput v7, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    #@e
    .line 109
    iput v9, p0, Landroid/widget/GridView;->mStretchMode:I

    #@10
    .line 114
    iput-object v6, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    #@12
    .line 115
    iput-object v6, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    #@14
    .line 117
    const v6, 0x800003

    #@17
    iput v6, p0, Landroid/widget/GridView;->mGravity:I

    #@19
    .line 119
    new-instance v6, Landroid/graphics/Rect;

    #@1b
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    #@1e
    iput-object v6, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    #@20
    .line 137
    sget-object v6, Lcom/android/internal/R$styleable;->GridView:[I

    #@22
    .line 136
    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@25
    move-result-object v0

    #@26
    .line 139
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@29
    move-result v2

    #@2a
    .line 141
    .local v2, "hSpacing":I
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    #@2d
    .line 143
    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@30
    move-result v5

    #@31
    .line 145
    .local v5, "vSpacing":I
    invoke-virtual {p0, v5}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    #@34
    .line 147
    const/4 v6, 0x3

    #@35
    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    #@38
    move-result v3

    #@39
    .line 148
    .local v3, "index":I
    if-ltz v3, :cond_0

    #@3b
    .line 149
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->setStretchMode(I)V

    #@3e
    .line 152
    :cond_0
    const/4 v6, 0x4

    #@3f
    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@42
    move-result v1

    #@43
    .line 153
    .local v1, "columnWidth":I
    if-lez v1, :cond_1

    #@45
    .line 154
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    #@48
    .line 157
    :cond_1
    const/4 v6, 0x5

    #@49
    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    #@4c
    move-result v4

    #@4d
    .line 158
    .local v4, "numColumns":I
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    #@50
    .line 160
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    #@53
    move-result v3

    #@54
    .line 161
    if-ltz v3, :cond_2

    #@56
    .line 162
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->setGravity(I)V

    #@59
    .line 165
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@5c
    .line 133
    return-void
.end method

.method private adjustForBottomFadingEdge(Landroid/view/View;II)V
    .locals 4
    .param p1, "childInSelectedRow"    # Landroid/view/View;
    .param p2, "topSelectionPixel"    # I
    .param p3, "bottomSelectionPixel"    # I

    #@0
    .prologue
    .line 803
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    #@3
    move-result v3

    #@4
    if-le v3, p3, :cond_0

    #@6
    .line 807
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@9
    move-result v3

    #@a
    sub-int v1, v3, p2

    #@c
    .line 811
    .local v1, "spaceAbove":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    #@f
    move-result v3

    #@10
    sub-int v2, v3, p3

    #@12
    .line 812
    .local v2, "spaceBelow":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@15
    move-result v0

    #@16
    .line 815
    .local v0, "offset":I
    neg-int v3, v0

    #@17
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    #@1a
    .line 800
    .end local v0    # "offset":I
    .end local v1    # "spaceAbove":I
    .end local v2    # "spaceBelow":I
    :cond_0
    return-void
.end method

.method private adjustForTopFadingEdge(Landroid/view/View;II)V
    .locals 4
    .param p1, "childInSelectedRow"    # Landroid/view/View;
    .param p2, "topSelectionPixel"    # I
    .param p3, "bottomSelectionPixel"    # I

    #@0
    .prologue
    .line 831
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@3
    move-result v3

    #@4
    if-ge v3, p2, :cond_0

    #@6
    .line 834
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@9
    move-result v3

    #@a
    sub-int v1, p2, v3

    #@c
    .line 838
    .local v1, "spaceAbove":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    #@f
    move-result v3

    #@10
    sub-int v2, p3, v3

    #@12
    .line 839
    .local v2, "spaceBelow":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@15
    move-result v0

    #@16
    .line 842
    .local v0, "offset":I
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    #@19
    .line 829
    .end local v0    # "offset":I
    .end local v1    # "spaceAbove":I
    .end local v2    # "spaceBelow":I
    :cond_0
    return-void
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2243
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    #@4
    move-result v1

    #@5
    .line 2245
    .local v1, "childCount":I
    if-lez v1, :cond_2

    #@7
    .line 2249
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    #@9
    if-nez v3, :cond_3

    #@b
    .line 2252
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    #@e
    move-result-object v0

    #@f
    .line 2253
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@12
    move-result v3

    #@13
    iget-object v4, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    #@15
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@17
    sub-int v2, v3, v4

    #@19
    .line 2254
    .local v2, "delta":I
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    #@1b
    if-eqz v3, :cond_0

    #@1d
    .line 2257
    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    #@1f
    sub-int/2addr v2, v3

    #@20
    .line 2259
    :cond_0
    if-gez v2, :cond_1

    #@22
    .line 2261
    const/4 v2, 0x0

    #@23
    .line 2280
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    #@25
    .line 2281
    neg-int v3, v2

    #@26
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    #@29
    .line 2242
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_2
    return-void

    #@2a
    .line 2265
    :cond_3
    add-int/lit8 v3, v1, -0x1

    #@2c
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    #@2f
    move-result-object v0

    #@30
    .line 2266
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    #@33
    move-result v3

    #@34
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    #@37
    move-result v4

    #@38
    iget-object v5, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    #@3a
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@3c
    sub-int/2addr v4, v5

    #@3d
    sub-int v2, v3, v4

    #@3f
    .line 2268
    .restart local v2    # "delta":I
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    #@41
    add-int/2addr v3, v1

    #@42
    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    #@44
    if-ge v3, v4, :cond_4

    #@46
    .line 2271
    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    #@48
    add-int/2addr v2, v3

    #@49
    .line 2274
    :cond_4
    if-lez v2, :cond_1

    #@4b
    .line 2276
    const/4 v2, 0x0

    #@4c
    goto :goto_0
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    const/16 v4, 0x82

    #@5
    const/16 v3, 0x21

    #@7
    .line 1634
    iget-object v2, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    #@9
    if-nez v2, :cond_0

    #@b
    .line 1635
    return v5

    #@c
    .line 1638
    :cond_0
    iget-boolean v2, p0, Landroid/widget/GridView;->mDataChanged:Z

    #@e
    if-eqz v2, :cond_1

    #@10
    .line 1639
    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    #@13
    .line 1642
    :cond_1
    const/4 v1, 0x0

    #@14
    .line 1643
    .local v1, "handled":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    #@17
    move-result v0

    #@18
    .line 1645
    .local v0, "action":I
    if-eq v0, v6, :cond_2

    #@1a
    .line 1646
    sparse-switch p1, :sswitch_data_0

    #@1d
    .line 1745
    .end local v1    # "handled":Z
    :cond_2
    :goto_0
    :sswitch_0
    if-eqz v1, :cond_17

    #@1f
    .line 1746
    return v6

    #@20
    .line 1648
    .restart local v1    # "handled":Z
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_2

    #@26
    .line 1649
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    #@29
    move-result v2

    #@2a
    if-nez v2, :cond_3

    #@2c
    const/16 v2, 0x11

    #@2e
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->arrowScroll(I)Z

    #@31
    move-result v1

    #@32
    .local v1, "handled":Z
    goto :goto_0

    #@33
    .local v1, "handled":Z
    :cond_3
    const/4 v1, 0x1

    #@34
    goto :goto_0

    #@35
    .line 1654
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@38
    move-result v2

    #@39
    if-eqz v2, :cond_2

    #@3b
    .line 1655
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    #@3e
    move-result v2

    #@3f
    if-nez v2, :cond_4

    #@41
    const/16 v2, 0x42

    #@43
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->arrowScroll(I)Z

    #@46
    move-result v1

    #@47
    .local v1, "handled":Z
    goto :goto_0

    #@48
    .local v1, "handled":Z
    :cond_4
    const/4 v1, 0x1

    #@49
    goto :goto_0

    #@4a
    .line 1660
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@4d
    move-result v2

    #@4e
    if-eqz v2, :cond_6

    #@50
    .line 1661
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    #@53
    move-result v2

    #@54
    if-nez v2, :cond_5

    #@56
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->arrowScroll(I)Z

    #@59
    move-result v1

    #@5a
    .local v1, "handled":Z
    goto :goto_0

    #@5b
    .local v1, "handled":Z
    :cond_5
    const/4 v1, 0x1

    #@5c
    goto :goto_0

    #@5d
    .line 1662
    :cond_6
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    #@60
    move-result v2

    #@61
    if-eqz v2, :cond_2

    #@63
    .line 1663
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    #@66
    move-result v2

    #@67
    if-nez v2, :cond_7

    #@69
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->fullScroll(I)Z

    #@6c
    move-result v1

    #@6d
    .local v1, "handled":Z
    goto :goto_0

    #@6e
    .local v1, "handled":Z
    :cond_7
    const/4 v1, 0x1

    #@6f
    goto :goto_0

    #@70
    .line 1668
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@73
    move-result v2

    #@74
    if-eqz v2, :cond_9

    #@76
    .line 1669
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    #@79
    move-result v2

    #@7a
    if-nez v2, :cond_8

    #@7c
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->arrowScroll(I)Z

    #@7f
    move-result v1

    #@80
    .local v1, "handled":Z
    goto :goto_0

    #@81
    .local v1, "handled":Z
    :cond_8
    const/4 v1, 0x1

    #@82
    goto :goto_0

    #@83
    .line 1670
    :cond_9
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    #@86
    move-result v2

    #@87
    if-eqz v2, :cond_2

    #@89
    .line 1671
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    #@8c
    move-result v2

    #@8d
    if-nez v2, :cond_a

    #@8f
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->fullScroll(I)Z

    #@92
    move-result v1

    #@93
    .local v1, "handled":Z
    goto :goto_0

    #@94
    .local v1, "handled":Z
    :cond_a
    const/4 v1, 0x1

    #@95
    goto :goto_0

    #@96
    .line 1677
    :sswitch_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@99
    move-result v2

    #@9a
    if-eqz v2, :cond_2

    #@9c
    .line 1678
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    #@9f
    move-result v1

    #@a0
    .line 1679
    .local v1, "handled":Z
    if-nez v1, :cond_2

    #@a2
    .line 1680
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@a5
    move-result v2

    #@a6
    if-nez v2, :cond_2

    #@a8
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    #@ab
    move-result v2

    #@ac
    if-lez v2, :cond_2

    #@ae
    .line 1681
    invoke-virtual {p0}, Landroid/widget/GridView;->keyPressed()V

    #@b1
    .line 1682
    const/4 v1, 0x1

    #@b2
    .local v1, "handled":Z
    goto/16 :goto_0

    #@b4
    .line 1688
    :sswitch_6
    iget-object v2, p0, Landroid/widget/GridView;->mPopup:Landroid/widget/PopupWindow;

    #@b6
    if-eqz v2, :cond_b

    #@b8
    iget-object v2, p0, Landroid/widget/GridView;->mPopup:Landroid/widget/PopupWindow;

    #@ba
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    #@bd
    move-result v2

    #@be
    if-nez v2, :cond_2

    #@c0
    .line 1689
    :cond_b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@c3
    move-result v2

    #@c4
    if-eqz v2, :cond_d

    #@c6
    .line 1690
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    #@c9
    move-result v2

    #@ca
    if-nez v2, :cond_c

    #@cc
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->pageScroll(I)Z

    #@cf
    move-result v1

    #@d0
    .local v1, "handled":Z
    goto/16 :goto_0

    #@d2
    .local v1, "handled":Z
    :cond_c
    const/4 v1, 0x1

    #@d3
    goto/16 :goto_0

    #@d5
    .line 1691
    :cond_d
    invoke-virtual {p3, v6}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    #@d8
    move-result v2

    #@d9
    if-eqz v2, :cond_2

    #@db
    .line 1692
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    #@de
    move-result v2

    #@df
    if-nez v2, :cond_e

    #@e1
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->pageScroll(I)Z

    #@e4
    move-result v1

    #@e5
    .local v1, "handled":Z
    goto/16 :goto_0

    #@e7
    .local v1, "handled":Z
    :cond_e
    const/4 v1, 0x1

    #@e8
    goto/16 :goto_0

    #@ea
    .line 1698
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@ed
    move-result v2

    #@ee
    if-eqz v2, :cond_10

    #@f0
    .line 1699
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    #@f3
    move-result v2

    #@f4
    if-nez v2, :cond_f

    #@f6
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->pageScroll(I)Z

    #@f9
    move-result v1

    #@fa
    .local v1, "handled":Z
    goto/16 :goto_0

    #@fc
    .local v1, "handled":Z
    :cond_f
    const/4 v1, 0x1

    #@fd
    goto/16 :goto_0

    #@ff
    .line 1700
    :cond_10
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    #@102
    move-result v2

    #@103
    if-eqz v2, :cond_2

    #@105
    .line 1701
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    #@108
    move-result v2

    #@109
    if-nez v2, :cond_11

    #@10b
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->fullScroll(I)Z

    #@10e
    move-result v1

    #@10f
    .local v1, "handled":Z
    goto/16 :goto_0

    #@111
    .local v1, "handled":Z
    :cond_11
    const/4 v1, 0x1

    #@112
    goto/16 :goto_0

    #@114
    .line 1706
    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@117
    move-result v2

    #@118
    if-eqz v2, :cond_13

    #@11a
    .line 1707
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    #@11d
    move-result v2

    #@11e
    if-nez v2, :cond_12

    #@120
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->pageScroll(I)Z

    #@123
    move-result v1

    #@124
    .local v1, "handled":Z
    goto/16 :goto_0

    #@126
    .local v1, "handled":Z
    :cond_12
    const/4 v1, 0x1

    #@127
    goto/16 :goto_0

    #@129
    .line 1708
    :cond_13
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    #@12c
    move-result v2

    #@12d
    if-eqz v2, :cond_2

    #@12f
    .line 1709
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    #@132
    move-result v2

    #@133
    if-nez v2, :cond_14

    #@135
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->fullScroll(I)Z

    #@138
    move-result v1

    #@139
    .local v1, "handled":Z
    goto/16 :goto_0

    #@13b
    .local v1, "handled":Z
    :cond_14
    const/4 v1, 0x1

    #@13c
    goto/16 :goto_0

    #@13e
    .line 1714
    :sswitch_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@141
    move-result v2

    #@142
    if-eqz v2, :cond_2

    #@144
    .line 1715
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    #@147
    move-result v2

    #@148
    if-nez v2, :cond_15

    #@14a
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->fullScroll(I)Z

    #@14d
    move-result v1

    #@14e
    .local v1, "handled":Z
    goto/16 :goto_0

    #@150
    .local v1, "handled":Z
    :cond_15
    const/4 v1, 0x1

    #@151
    goto/16 :goto_0

    #@153
    .line 1720
    :sswitch_a
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@156
    move-result v2

    #@157
    if-eqz v2, :cond_2

    #@159
    .line 1721
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    #@15c
    move-result v2

    #@15d
    if-nez v2, :cond_16

    #@15f
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->fullScroll(I)Z

    #@162
    move-result v1

    #@163
    .local v1, "handled":Z
    goto/16 :goto_0

    #@165
    .local v1, "handled":Z
    :cond_16
    const/4 v1, 0x1

    #@166
    goto/16 :goto_0

    #@168
    .line 1749
    .end local v1    # "handled":Z
    :cond_17
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/GridView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    #@16b
    move-result v2

    #@16c
    if-eqz v2, :cond_18

    #@16e
    .line 1750
    return v6

    #@16f
    .line 1753
    :cond_18
    packed-switch v0, :pswitch_data_0

    #@172
    .line 1761
    return v5

    #@173
    .line 1755
    :pswitch_0
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@176
    move-result v2

    #@177
    return v2

    #@178
    .line 1757
    :pswitch_1
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@17b
    move-result v2

    #@17c
    return v2

    #@17d
    .line 1759
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    #@180
    move-result v2

    #@181
    return v2

    #@182
    .line 1646
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_4
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_5
        0x3d -> :sswitch_0
        0x3e -> :sswitch_6
        0x42 -> :sswitch_5
        0x5c -> :sswitch_7
        0x5d -> :sswitch_8
        0x7a -> :sswitch_9
        0x7b -> :sswitch_a
    .end sparse-switch

    #@1b4
    .line 1753
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(III)V
    .locals 10
    .param p1, "numColumns"    # I
    .param p2, "verticalSpacing"    # I
    .param p3, "childCount"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 615
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    #@3
    add-int/2addr v7, p3

    #@4
    add-int/lit8 v6, v7, -0x1

    #@6
    .line 616
    .local v6, "lastPosition":I
    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    #@8
    add-int/lit8 v7, v7, -0x1

    #@a
    if-ne v6, v7, :cond_3

    #@c
    if-lez p3, :cond_3

    #@e
    .line 618
    add-int/lit8 v7, p3, -0x1

    #@10
    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    #@13
    move-result-object v5

    #@14
    .line 621
    .local v5, "lastChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    #@17
    move-result v4

    #@18
    .line 623
    .local v4, "lastBottom":I
    iget v7, p0, Landroid/widget/GridView;->mBottom:I

    #@1a
    iget v8, p0, Landroid/widget/GridView;->mTop:I

    #@1c
    sub-int/2addr v7, v8

    #@1d
    iget-object v8, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    #@1f
    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    #@21
    sub-int v1, v7, v8

    #@23
    .line 627
    .local v1, "end":I
    sub-int v0, v1, v4

    #@25
    .line 629
    .local v0, "bottomOffset":I
    invoke-virtual {p0, v9}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    #@28
    move-result-object v2

    #@29
    .line 630
    .local v2, "firstChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    #@2c
    move-result v3

    #@2d
    .line 634
    .local v3, "firstTop":I
    if-lez v0, :cond_3

    #@2f
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    #@31
    if-gtz v7, :cond_0

    #@33
    iget-object v7, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    #@35
    iget v7, v7, Landroid/graphics/Rect;->top:I

    #@37
    if-ge v3, v7, :cond_3

    #@39
    .line 635
    :cond_0
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    #@3b
    if-nez v7, :cond_1

    #@3d
    .line 637
    iget-object v7, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    #@3f
    iget v7, v7, Landroid/graphics/Rect;->top:I

    #@41
    sub-int/2addr v7, v3

    #@42
    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    #@45
    move-result v0

    #@46
    .line 641
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    #@49
    .line 642
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    #@4b
    if-lez v7, :cond_3

    #@4d
    .line 645
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    #@4f
    iget-boolean v8, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    #@51
    if-eqz v8, :cond_2

    #@53
    const/4 p1, 0x1

    #@54
    .end local p1    # "numColumns":I
    :cond_2
    sub-int/2addr v7, p1

    #@55
    .line 646
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    #@58
    move-result v8

    #@59
    sub-int/2addr v8, p2

    #@5a
    .line 645
    invoke-direct {p0, v7, v8}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    #@5d
    .line 648
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    #@60
    .line 613
    .end local v0    # "bottomOffset":I
    .end local v1    # "end":I
    .end local v2    # "firstChild":Landroid/view/View;
    .end local v3    # "firstTop":I
    .end local v4    # "lastBottom":I
    .end local v5    # "lastChild":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private correctTooLow(III)V
    .locals 10
    .param p1, "numColumns"    # I
    .param p2, "verticalSpacing"    # I
    .param p3, "childCount"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 655
    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    #@3
    if-nez v8, :cond_3

    #@5
    if-lez p3, :cond_3

    #@7
    .line 657
    invoke-virtual {p0, v9}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v1

    #@b
    .line 660
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@e
    move-result v2

    #@f
    .line 663
    .local v2, "firstTop":I
    iget-object v8, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    #@11
    iget v6, v8, Landroid/graphics/Rect;->top:I

    #@13
    .line 666
    .local v6, "start":I
    iget v8, p0, Landroid/widget/GridView;->mBottom:I

    #@15
    iget v9, p0, Landroid/widget/GridView;->mTop:I

    #@17
    sub-int/2addr v8, v9

    #@18
    iget-object v9, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    #@1a
    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    #@1c
    sub-int v0, v8, v9

    #@1e
    .line 670
    .local v0, "end":I
    sub-int v7, v2, v6

    #@20
    .line 671
    .local v7, "topOffset":I
    add-int/lit8 v8, p3, -0x1

    #@22
    invoke-virtual {p0, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    #@25
    move-result-object v4

    #@26
    .line 672
    .local v4, "lastChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    #@29
    move-result v3

    #@2a
    .line 673
    .local v3, "lastBottom":I
    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    #@2c
    add-int/2addr v8, p3

    #@2d
    add-int/lit8 v5, v8, -0x1

    #@2f
    .line 677
    .local v5, "lastPosition":I
    if-lez v7, :cond_3

    #@31
    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    #@33
    add-int/lit8 v8, v8, -0x1

    #@35
    if-lt v5, v8, :cond_0

    #@37
    if-le v3, v0, :cond_3

    #@39
    .line 678
    :cond_0
    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    #@3b
    add-int/lit8 v8, v8, -0x1

    #@3d
    if-ne v5, v8, :cond_1

    #@3f
    .line 680
    sub-int v8, v3, v0

    #@41
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    #@44
    move-result v7

    #@45
    .line 684
    :cond_1
    neg-int v8, v7

    #@46
    invoke-virtual {p0, v8}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    #@49
    .line 685
    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    #@4b
    add-int/lit8 v8, v8, -0x1

    #@4d
    if-ge v5, v8, :cond_3

    #@4f
    .line 688
    iget-boolean v8, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    #@51
    if-nez v8, :cond_2

    #@53
    const/4 p1, 0x1

    #@54
    .end local p1    # "numColumns":I
    :cond_2
    add-int v8, v5, p1

    #@56
    .line 689
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    #@59
    move-result v9

    #@5a
    add-int/2addr v9, p2

    #@5b
    .line 688
    invoke-direct {p0, v8, v9}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    #@5e
    .line 691
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    #@61
    .line 654
    .end local v0    # "end":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v2    # "firstTop":I
    .end local v3    # "lastBottom":I
    .end local v4    # "lastChild":Landroid/view/View;
    .end local v5    # "lastPosition":I
    .end local v6    # "start":I
    .end local v7    # "topOffset":I
    :cond_3
    return-void
.end method

.method private determineColumns(I)Z
    .locals 8
    .param p1, "availableSpace"    # I

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 964
    iget v2, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    #@3
    .line 965
    .local v2, "requestedHorizontalSpacing":I
    iget v4, p0, Landroid/widget/GridView;->mStretchMode:I

    #@5
    .line 966
    .local v4, "stretchMode":I
    iget v1, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    #@7
    .line 967
    .local v1, "requestedColumnWidth":I
    const/4 v0, 0x0

    #@8
    .line 969
    .local v0, "didNotInitiallyFit":Z
    iget v5, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    #@a
    const/4 v6, -0x1

    #@b
    if-ne v5, v6, :cond_3

    #@d
    .line 970
    if-lez v1, :cond_2

    #@f
    .line 972
    add-int v5, p1, v2

    #@11
    .line 973
    add-int v6, v1, v2

    #@13
    .line 972
    div-int/2addr v5, v6

    #@14
    iput v5, p0, Landroid/widget/GridView;->mNumColumns:I

    #@16
    .line 983
    :goto_0
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    #@18
    if-gtz v5, :cond_0

    #@1a
    .line 984
    iput v7, p0, Landroid/widget/GridView;->mNumColumns:I

    #@1c
    .line 987
    :cond_0
    packed-switch v4, :pswitch_data_0

    #@1f
    .line 995
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    #@21
    mul-int/2addr v5, v1

    #@22
    sub-int v5, p1, v5

    #@24
    .line 996
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    #@26
    add-int/lit8 v6, v6, -0x1

    #@28
    mul-int/2addr v6, v2

    #@29
    .line 995
    sub-int v3, v5, v6

    #@2b
    .line 998
    .local v3, "spaceLeftOver":I
    if-gez v3, :cond_1

    #@2d
    .line 999
    const/4 v0, 0x1

    #@2e
    .line 1002
    :cond_1
    packed-switch v4, :pswitch_data_1

    #@31
    .line 1034
    .end local v3    # "spaceLeftOver":I
    :goto_1
    return v0

    #@32
    .line 976
    :cond_2
    const/4 v5, 0x2

    #@33
    iput v5, p0, Landroid/widget/GridView;->mNumColumns:I

    #@35
    goto :goto_0

    #@36
    .line 980
    :cond_3
    iget v5, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    #@38
    iput v5, p0, Landroid/widget/GridView;->mNumColumns:I

    #@3a
    goto :goto_0

    #@3b
    .line 990
    :pswitch_0
    iput v1, p0, Landroid/widget/GridView;->mColumnWidth:I

    #@3d
    .line 991
    iput v2, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    #@3f
    goto :goto_1

    #@40
    .line 1005
    .restart local v3    # "spaceLeftOver":I
    :pswitch_1
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    #@42
    div-int v5, v3, v5

    #@44
    add-int/2addr v5, v1

    #@45
    iput v5, p0, Landroid/widget/GridView;->mColumnWidth:I

    #@47
    .line 1006
    iput v2, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    #@49
    goto :goto_1

    #@4a
    .line 1011
    :pswitch_2
    iput v1, p0, Landroid/widget/GridView;->mColumnWidth:I

    #@4c
    .line 1012
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    #@4e
    if-le v5, v7, :cond_4

    #@50
    .line 1014
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    #@52
    add-int/lit8 v5, v5, -0x1

    #@54
    div-int v5, v3, v5

    #@56
    .line 1013
    add-int/2addr v5, v2

    #@57
    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    #@59
    goto :goto_1

    #@5a
    .line 1016
    :cond_4
    add-int v5, v2, v3

    #@5c
    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    #@5e
    goto :goto_1

    #@5f
    .line 1022
    :pswitch_3
    iput v1, p0, Landroid/widget/GridView;->mColumnWidth:I

    #@61
    .line 1023
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    #@63
    if-le v5, v7, :cond_5

    #@65
    .line 1025
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    #@67
    add-int/lit8 v5, v5, 0x1

    #@69
    div-int v5, v3, v5

    #@6b
    .line 1024
    add-int/2addr v5, v2

    #@6c
    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    #@6e
    goto :goto_1

    #@6f
    .line 1027
    :cond_5
    add-int v5, v2, v3

    #@71
    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    #@73
    goto :goto_1

    #@74
    .line 987
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    #@7a
    .line 1002
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 6
    .param p1, "pos"    # I
    .param p2, "nextTop"    # I

    #@0
    .prologue
    .line 299
    const/4 v1, 0x0

    #@1
    .line 301
    .local v1, "selectedView":Landroid/view/View;
    iget v3, p0, Landroid/widget/GridView;->mBottom:I

    #@3
    iget v4, p0, Landroid/widget/GridView;->mTop:I

    #@5
    sub-int v0, v3, v4

    #@7
    .line 302
    .local v0, "end":I
    iget v3, p0, Landroid/widget/GridView;->mGroupFlags:I

    #@9
    and-int/lit8 v3, v3, 0x22

    #@b
    const/16 v4, 0x22

    #@d
    if-ne v3, v4, :cond_0

    #@f
    .line 303
    iget-object v3, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    #@11
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    #@13
    sub-int/2addr v0, v3

    #@14
    .line 306
    .end local v1    # "selectedView":Landroid/view/View;
    :cond_0
    :goto_0
    if-ge p2, v0, :cond_2

    #@16
    iget v3, p0, Landroid/widget/GridView;->mItemCount:I

    #@18
    if-ge p1, v3, :cond_2

    #@1a
    .line 307
    const/4 v3, 0x1

    #@1b
    invoke-direct {p0, p1, p2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    #@1e
    move-result-object v2

    #@1f
    .line 308
    .local v2, "temp":Landroid/view/View;
    if-eqz v2, :cond_1

    #@21
    .line 309
    move-object v1, v2

    #@22
    .line 314
    :cond_1
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    #@24
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    #@27
    move-result v3

    #@28
    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    #@2a
    add-int p2, v3, v4

    #@2c
    .line 316
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    #@2e
    add-int/2addr p1, v3

    #@2f
    goto :goto_0

    #@30
    .line 319
    .end local v2    # "temp":Landroid/view/View;
    :cond_2
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    #@32
    iget v4, p0, Landroid/widget/GridView;->mFirstPosition:I

    #@34
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    #@37
    move-result v5

    #@38
    add-int/2addr v4, v5

    #@39
    add-int/lit8 v4, v4, -0x1

    #@3b
    invoke-virtual {p0, v3, v4}, Landroid/widget/GridView;->setVisibleRangeHint(II)V

    #@3e
    .line 320
    return-object v1
.end method

.method private fillFromBottom(II)Landroid/view/View;
    .locals 3
    .param p1, "lastPosition"    # I
    .param p2, "nextBottom"    # I

    #@0
    .prologue
    .line 446
    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    #@2
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    #@5
    move-result p1

    #@6
    .line 447
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    #@d
    move-result p1

    #@e
    .line 449
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    #@10
    add-int/lit8 v1, v1, -0x1

    #@12
    sub-int v0, v1, p1

    #@14
    .line 450
    .local v0, "invertedPosition":I
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    #@16
    add-int/lit8 v1, v1, -0x1

    #@18
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    #@1a
    rem-int v2, v0, v2

    #@1c
    sub-int v2, v0, v2

    #@1e
    sub-int p1, v1, v2

    #@20
    .line 452
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    #@23
    move-result-object v1

    #@24
    return-object v1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 14
    .param p1, "selectedTop"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    #@0
    .prologue
    .line 708
    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    #@3
    move-result v2

    #@4
    .line 709
    .local v2, "fadingEdgeLength":I
    iget v9, p0, Landroid/widget/GridView;->mSelectedPosition:I

    #@6
    .line 710
    .local v9, "selectedPosition":I
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    #@8
    .line 711
    .local v4, "numColumns":I
    iget v11, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    #@a
    .line 714
    .local v11, "verticalSpacing":I
    const/4 v6, -0x1

    #@b
    .line 716
    .local v6, "rowEnd":I
    iget-boolean v12, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    #@d
    if-nez v12, :cond_0

    #@f
    .line 717
    rem-int v12, v9, v4

    #@11
    sub-int v7, v9, v12

    #@13
    .line 728
    .local v7, "rowStart":I
    :goto_0
    move/from16 v0, p2

    #@15
    invoke-direct {p0, v0, v2, v7}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    #@18
    move-result v10

    #@19
    .line 729
    .local v10, "topSelectionPixel":I
    move/from16 v0, p3

    #@1b
    invoke-direct {p0, v0, v2, v4, v7}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    #@1e
    move-result v1

    #@1f
    .line 732
    .local v1, "bottomSelectionPixel":I
    iget-boolean v12, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    #@21
    if-eqz v12, :cond_1

    #@23
    move v12, v6

    #@24
    :goto_1
    const/4 v13, 0x1

    #@25
    invoke-direct {p0, v12, p1, v13}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    #@28
    move-result-object v8

    #@29
    .line 734
    .local v8, "sel":Landroid/view/View;
    iput v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    #@2b
    .line 736
    iget-object v5, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    #@2d
    .line 737
    .local v5, "referenceView":Landroid/view/View;
    invoke-direct {p0, v5, v10, v1}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    #@30
    .line 738
    invoke-direct {p0, v5, v10, v1}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    #@33
    .line 740
    iget-boolean v12, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    #@35
    if-nez v12, :cond_2

    #@37
    .line 741
    sub-int v12, v7, v4

    #@39
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    #@3c
    move-result v13

    #@3d
    sub-int/2addr v13, v11

    #@3e
    invoke-direct {p0, v12, v13}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    #@41
    .line 742
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    #@44
    .line 743
    add-int v12, v7, v4

    #@46
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    #@49
    move-result v13

    #@4a
    add-int/2addr v13, v11

    #@4b
    invoke-direct {p0, v12, v13}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    #@4e
    .line 751
    :goto_2
    return-object v8

    #@4f
    .line 719
    .end local v1    # "bottomSelectionPixel":I
    .end local v5    # "referenceView":Landroid/view/View;
    .end local v7    # "rowStart":I
    .end local v8    # "sel":Landroid/view/View;
    .end local v10    # "topSelectionPixel":I
    :cond_0
    iget v12, p0, Landroid/widget/GridView;->mItemCount:I

    #@51
    add-int/lit8 v12, v12, -0x1

    #@53
    sub-int v3, v12, v9

    #@55
    .line 721
    .local v3, "invertedSelection":I
    iget v12, p0, Landroid/widget/GridView;->mItemCount:I

    #@57
    add-int/lit8 v12, v12, -0x1

    #@59
    rem-int v13, v3, v4

    #@5b
    sub-int v13, v3, v13

    #@5d
    sub-int v6, v12, v13

    #@5f
    .line 722
    sub-int v12, v6, v4

    #@61
    add-int/lit8 v12, v12, 0x1

    #@63
    const/4 v13, 0x0

    #@64
    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    #@67
    move-result v7

    #@68
    .restart local v7    # "rowStart":I
    goto :goto_0

    #@69
    .end local v3    # "invertedSelection":I
    .restart local v1    # "bottomSelectionPixel":I
    .restart local v10    # "topSelectionPixel":I
    :cond_1
    move v12, v7

    #@6a
    .line 732
    goto :goto_1

    #@6b
    .line 745
    .restart local v5    # "referenceView":Landroid/view/View;
    .restart local v8    # "sel":Landroid/view/View;
    :cond_2
    add-int v12, v6, v4

    #@6d
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    #@70
    move-result v13

    #@71
    add-int/2addr v13, v11

    #@72
    invoke-direct {p0, v12, v13}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    #@75
    .line 746
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    #@78
    .line 747
    add-int/lit8 v12, v7, -0x1

    #@7a
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    #@7d
    move-result v13

    #@7e
    sub-int/2addr v13, v11

    #@7f
    invoke-direct {p0, v12, v13}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    #@82
    goto :goto_2
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 3
    .param p1, "nextTop"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 436
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    #@3
    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    #@5
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@8
    move-result v0

    #@9
    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    #@b
    .line 437
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    #@d
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    #@f
    add-int/lit8 v1, v1, -0x1

    #@11
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@14
    move-result v0

    #@15
    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    #@17
    .line 438
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    #@19
    if-gez v0, :cond_0

    #@1b
    .line 439
    iput v2, p0, Landroid/widget/GridView;->mFirstPosition:I

    #@1d
    .line 441
    :cond_0
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    #@1f
    iget v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    #@21
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    #@23
    rem-int/2addr v1, v2

    #@24
    sub-int/2addr v0, v1

    #@25
    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    #@27
    .line 442
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    #@29
    invoke-direct {p0, v0, p1}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    #@2c
    move-result-object v0

    #@2d
    return-object v0
.end method

.method private fillSelection(II)Landroid/view/View;
    .locals 15
    .param p1, "childrenTop"    # I
    .param p2, "childrenBottom"    # I

    #@0
    .prologue
    .line 456
    invoke-virtual {p0}, Landroid/widget/GridView;->reconcileSelectedPosition()I

    #@3
    move-result v10

    #@4
    .line 457
    .local v10, "selectedPosition":I
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    #@6
    .line 458
    .local v4, "numColumns":I
    iget v12, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    #@8
    .line 461
    .local v12, "verticalSpacing":I
    const/4 v7, -0x1

    #@9
    .line 463
    .local v7, "rowEnd":I
    iget-boolean v13, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    #@b
    if-nez v13, :cond_0

    #@d
    .line 464
    rem-int v13, v10, v4

    #@f
    sub-int v8, v10, v13

    #@11
    .line 472
    .local v8, "rowStart":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    #@14
    move-result v2

    #@15
    .line 473
    .local v2, "fadingEdgeLength":I
    move/from16 v0, p1

    #@17
    invoke-direct {p0, v0, v2, v8}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    #@1a
    move-result v11

    #@1b
    .line 475
    .local v11, "topSelectionPixel":I
    iget-boolean v13, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    #@1d
    if-eqz v13, :cond_1

    #@1f
    move v13, v7

    #@20
    :goto_1
    const/4 v14, 0x1

    #@21
    invoke-direct {p0, v13, v11, v14}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    #@24
    move-result-object v9

    #@25
    .line 476
    .local v9, "sel":Landroid/view/View;
    iput v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    #@27
    .line 478
    iget-object v6, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    #@29
    .line 480
    .local v6, "referenceView":Landroid/view/View;
    iget-boolean v13, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    #@2b
    if-nez v13, :cond_2

    #@2d
    .line 481
    add-int v13, v8, v4

    #@2f
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    #@32
    move-result v14

    #@33
    add-int/2addr v14, v12

    #@34
    invoke-direct {p0, v13, v14}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    #@37
    .line 482
    move/from16 v0, p2

    #@39
    invoke-direct {p0, v0}, Landroid/widget/GridView;->pinToBottom(I)V

    #@3c
    .line 483
    sub-int v13, v8, v4

    #@3e
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    #@41
    move-result v14

    #@42
    sub-int/2addr v14, v12

    #@43
    invoke-direct {p0, v13, v14}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    #@46
    .line 484
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    #@49
    .line 496
    :goto_2
    return-object v9

    #@4a
    .line 466
    .end local v2    # "fadingEdgeLength":I
    .end local v6    # "referenceView":Landroid/view/View;
    .end local v8    # "rowStart":I
    .end local v9    # "sel":Landroid/view/View;
    .end local v11    # "topSelectionPixel":I
    :cond_0
    iget v13, p0, Landroid/widget/GridView;->mItemCount:I

    #@4c
    add-int/lit8 v13, v13, -0x1

    #@4e
    sub-int v3, v13, v10

    #@50
    .line 468
    .local v3, "invertedSelection":I
    iget v13, p0, Landroid/widget/GridView;->mItemCount:I

    #@52
    add-int/lit8 v13, v13, -0x1

    #@54
    rem-int v14, v3, v4

    #@56
    sub-int v14, v3, v14

    #@58
    sub-int v7, v13, v14

    #@5a
    .line 469
    sub-int v13, v7, v4

    #@5c
    add-int/lit8 v13, v13, 0x1

    #@5e
    const/4 v14, 0x0

    #@5f
    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    #@62
    move-result v8

    #@63
    .restart local v8    # "rowStart":I
    goto :goto_0

    #@64
    .end local v3    # "invertedSelection":I
    .restart local v2    # "fadingEdgeLength":I
    .restart local v11    # "topSelectionPixel":I
    :cond_1
    move v13, v8

    #@65
    .line 475
    goto :goto_1

    #@66
    .line 486
    .restart local v6    # "referenceView":Landroid/view/View;
    .restart local v9    # "sel":Landroid/view/View;
    :cond_2
    move/from16 v0, p2

    #@68
    invoke-direct {p0, v0, v2, v4, v8}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    #@6b
    move-result v1

    #@6c
    .line 488
    .local v1, "bottomSelectionPixel":I
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    #@6f
    move-result v13

    #@70
    sub-int v5, v1, v13

    #@72
    .line 489
    .local v5, "offset":I
    invoke-virtual {p0, v5}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    #@75
    .line 490
    add-int/lit8 v13, v8, -0x1

    #@77
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    #@7a
    move-result v14

    #@7b
    sub-int/2addr v14, v12

    #@7c
    invoke-direct {p0, v13, v14}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    #@7f
    .line 491
    invoke-direct/range {p0 .. p1}, Landroid/widget/GridView;->pinToTop(I)V

    #@82
    .line 492
    add-int v13, v7, v4

    #@84
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    #@87
    move-result v14

    #@88
    add-int/2addr v14, v12

    #@89
    invoke-direct {p0, v13, v14}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    #@8c
    .line 493
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    #@8f
    goto :goto_2
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "top"    # I

    #@0
    .prologue
    .line 554
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    #@2
    .line 557
    .local v6, "numColumns":I
    const/4 v4, -0x1

    #@3
    .line 559
    .local v4, "motionRowEnd":I
    iget-boolean v10, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    #@5
    if-nez v10, :cond_0

    #@7
    .line 560
    rem-int v10, p1, v6

    #@9
    sub-int v5, p1, v10

    #@b
    .line 568
    .local v5, "motionRowStart":I
    :goto_0
    iget-boolean v10, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    #@d
    if-eqz v10, :cond_1

    #@f
    move v10, v4

    #@10
    :goto_1
    const/4 v11, 0x1

    #@11
    invoke-direct {p0, v10, p2, v11}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    #@14
    move-result-object v8

    #@15
    .line 571
    .local v8, "temp":Landroid/view/View;
    iput v5, p0, Landroid/widget/GridView;->mFirstPosition:I

    #@17
    .line 573
    iget-object v7, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    #@19
    .line 575
    .local v7, "referenceView":Landroid/view/View;
    if-nez v7, :cond_2

    #@1b
    .line 576
    const/4 v10, 0x0

    #@1c
    return-object v10

    #@1d
    .line 562
    .end local v5    # "motionRowStart":I
    .end local v7    # "referenceView":Landroid/view/View;
    .end local v8    # "temp":Landroid/view/View;
    :cond_0
    iget v10, p0, Landroid/widget/GridView;->mItemCount:I

    #@1f
    add-int/lit8 v10, v10, -0x1

    #@21
    sub-int v3, v10, p1

    #@23
    .line 564
    .local v3, "invertedSelection":I
    iget v10, p0, Landroid/widget/GridView;->mItemCount:I

    #@25
    add-int/lit8 v10, v10, -0x1

    #@27
    rem-int v11, v3, v6

    #@29
    sub-int v11, v3, v11

    #@2b
    sub-int v4, v10, v11

    #@2d
    .line 565
    sub-int v10, v4, v6

    #@2f
    add-int/lit8 v10, v10, 0x1

    #@31
    const/4 v11, 0x0

    #@32
    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    #@35
    move-result v5

    #@36
    .restart local v5    # "motionRowStart":I
    goto :goto_0

    #@37
    .end local v3    # "invertedSelection":I
    :cond_1
    move v10, v5

    #@38
    .line 568
    goto :goto_1

    #@39
    .line 579
    .restart local v7    # "referenceView":Landroid/view/View;
    .restart local v8    # "temp":Landroid/view/View;
    :cond_2
    iget v9, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    #@3b
    .line 584
    .local v9, "verticalSpacing":I
    iget-boolean v10, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    #@3d
    if-nez v10, :cond_4

    #@3f
    .line 585
    sub-int v10, v5, v6

    #@41
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    #@44
    move-result v11

    #@45
    sub-int/2addr v11, v9

    #@46
    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    #@49
    move-result-object v0

    #@4a
    .line 586
    .local v0, "above":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    #@4d
    .line 587
    add-int v10, v5, v6

    #@4f
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    #@52
    move-result v11

    #@53
    add-int/2addr v11, v9

    #@54
    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    #@57
    move-result-object v1

    #@58
    .line 589
    .local v1, "below":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    #@5b
    move-result v2

    #@5c
    .line 590
    .local v2, "childCount":I
    if-lez v2, :cond_3

    #@5e
    .line 591
    invoke-direct {p0, v6, v9, v2}, Landroid/widget/GridView;->correctTooHigh(III)V

    #@61
    .line 604
    :cond_3
    :goto_2
    if-eqz v8, :cond_5

    #@63
    .line 605
    return-object v8

    #@64
    .line 594
    .end local v0    # "above":Landroid/view/View;
    .end local v1    # "below":Landroid/view/View;
    .end local v2    # "childCount":I
    :cond_4
    add-int v10, v4, v6

    #@66
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    #@69
    move-result v11

    #@6a
    add-int/2addr v11, v9

    #@6b
    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    #@6e
    move-result-object v1

    #@6f
    .line 595
    .restart local v1    # "below":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    #@72
    .line 596
    add-int/lit8 v10, v5, -0x1

    #@74
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    #@77
    move-result v11

    #@78
    sub-int/2addr v11, v9

    #@79
    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    #@7c
    move-result-object v0

    #@7d
    .line 598
    .restart local v0    # "above":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    #@80
    move-result v2

    #@81
    .line 599
    .restart local v2    # "childCount":I
    if-lez v2, :cond_3

    #@83
    .line 600
    invoke-direct {p0, v6, v9, v2}, Landroid/widget/GridView;->correctTooLow(III)V

    #@86
    goto :goto_2

    #@87
    .line 606
    :cond_5
    if-eqz v0, :cond_6

    #@89
    .line 607
    return-object v0

    #@8a
    .line 609
    :cond_6
    return-object v1
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 6
    .param p1, "pos"    # I
    .param p2, "nextBottom"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 398
    const/4 v1, 0x0

    #@2
    .line 400
    .local v1, "selectedView":Landroid/view/View;
    const/4 v0, 0x0

    #@3
    .line 401
    .local v0, "end":I
    iget v3, p0, Landroid/widget/GridView;->mGroupFlags:I

    #@5
    and-int/lit8 v3, v3, 0x22

    #@7
    const/16 v4, 0x22

    #@9
    if-ne v3, v4, :cond_0

    #@b
    .line 402
    iget-object v3, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    #@d
    iget v0, v3, Landroid/graphics/Rect;->top:I

    #@f
    .line 405
    .end local v1    # "selectedView":Landroid/view/View;
    :cond_0
    :goto_0
    if-le p2, v0, :cond_2

    #@11
    if-ltz p1, :cond_2

    #@13
    .line 407
    invoke-direct {p0, p1, p2, v5}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    #@16
    move-result-object v2

    #@17
    .line 408
    .local v2, "temp":Landroid/view/View;
    if-eqz v2, :cond_1

    #@19
    .line 409
    move-object v1, v2

    #@1a
    .line 412
    :cond_1
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    #@1c
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    #@1f
    move-result v3

    #@20
    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    #@22
    sub-int p2, v3, v4

    #@24
    .line 414
    iput p1, p0, Landroid/widget/GridView;->mFirstPosition:I

    #@26
    .line 416
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    #@28
    sub-int/2addr p1, v3

    #@29
    goto :goto_0

    #@2a
    .line 419
    .end local v2    # "temp":Landroid/view/View;
    :cond_2
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    #@2c
    if-eqz v3, :cond_3

    #@2e
    .line 420
    add-int/lit8 v3, p1, 0x1

    #@30
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    #@33
    move-result v3

    #@34
    iput v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    #@36
    .line 423
    :cond_3
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    #@38
    iget v4, p0, Landroid/widget/GridView;->mFirstPosition:I

    #@3a
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    #@3d
    move-result v5

    #@3e
    add-int/2addr v4, v5

    #@3f
    add-int/lit8 v4, v4, -0x1

    #@41
    invoke-virtual {p0, v3, v4}, Landroid/widget/GridView;->setVisibleRangeHint(II)V

    #@44
    .line 424
    return-object v1
.end method

.method private getBottomSelectionPixel(IIII)I
    .locals 3
    .param p1, "childrenBottom"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "numColumns"    # I
    .param p4, "rowStart"    # I

    #@0
    .prologue
    .line 766
    move v0, p1

    #@1
    .line 767
    .local v0, "bottomSelectionPixel":I
    add-int v1, p4, p3

    #@3
    add-int/lit8 v1, v1, -0x1

    #@5
    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    #@7
    add-int/lit8 v2, v2, -0x1

    #@9
    if-ge v1, v2, :cond_0

    #@b
    .line 768
    sub-int/2addr v0, p2

    #@c
    .line 770
    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .param p1, "childrenTop"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "rowStart"    # I

    #@0
    .prologue
    .line 783
    move v0, p1

    #@1
    .line 784
    .local v0, "topSelectionPixel":I
    if-lez p3, :cond_0

    #@3
    .line 785
    add-int/2addr v0, p2

    #@4
    .line 787
    :cond_0
    return v0
.end method

.method private isCandidateSelection(II)Z
    .locals 8
    .param p1, "childIndex"    # I
    .param p2, "direction"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1991
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    #@5
    move-result v0

    #@6
    .line 1992
    .local v0, "count":I
    add-int/lit8 v6, v0, -0x1

    #@8
    sub-int v1, v6, p1

    #@a
    .line 1997
    .local v1, "invertedIndex":I
    iget-boolean v6, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    #@c
    if-nez v6, :cond_0

    #@e
    .line 1998
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    #@10
    rem-int v6, p1, v6

    #@12
    sub-int v3, p1, v6

    #@14
    .line 1999
    .local v3, "rowStart":I
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    #@16
    add-int/2addr v6, v3

    #@17
    add-int/lit8 v6, v6, -0x1

    #@19
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    #@1c
    move-result v2

    #@1d
    .line 2005
    .local v2, "rowEnd":I
    :goto_0
    sparse-switch p2, :sswitch_data_0

    #@20
    .line 2026
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@22
    const-string/jumbo v5, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    #@25
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v4

    #@29
    .line 2001
    .end local v2    # "rowEnd":I
    .end local v3    # "rowStart":I
    :cond_0
    add-int/lit8 v6, v0, -0x1

    #@2b
    iget v7, p0, Landroid/widget/GridView;->mNumColumns:I

    #@2d
    rem-int v7, v1, v7

    #@2f
    sub-int v7, v1, v7

    #@31
    sub-int v2, v6, v7

    #@33
    .line 2002
    .restart local v2    # "rowEnd":I
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    #@35
    sub-int v6, v2, v6

    #@37
    add-int/lit8 v6, v6, 0x1

    #@39
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    #@3c
    move-result v3

    #@3d
    .restart local v3    # "rowStart":I
    goto :goto_0

    #@3e
    .line 2009
    :sswitch_0
    if-ne p1, v3, :cond_1

    #@40
    :goto_1
    return v4

    #@41
    :cond_1
    move v4, v5

    #@42
    goto :goto_1

    #@43
    .line 2012
    :sswitch_1
    if-nez v3, :cond_2

    #@45
    :goto_2
    return v4

    #@46
    :cond_2
    move v4, v5

    #@47
    goto :goto_2

    #@48
    .line 2015
    :sswitch_2
    if-ne p1, v2, :cond_3

    #@4a
    :goto_3
    return v4

    #@4b
    :cond_3
    move v4, v5

    #@4c
    goto :goto_3

    #@4d
    .line 2018
    :sswitch_3
    add-int/lit8 v6, v0, -0x1

    #@4f
    if-ne v2, v6, :cond_4

    #@51
    :goto_4
    return v4

    #@52
    :cond_4
    move v4, v5

    #@53
    goto :goto_4

    #@54
    .line 2021
    :sswitch_4
    if-ne p1, v3, :cond_5

    #@56
    if-nez v3, :cond_5

    #@58
    move v5, v4

    #@59
    :cond_5
    return v5

    #@5a
    .line 2024
    :sswitch_5
    if-ne p1, v2, :cond_6

    #@5c
    add-int/lit8 v6, v0, -0x1

    #@5e
    if-ne v2, v6, :cond_6

    #@60
    move v5, v4

    #@61
    :cond_6
    return v5

    #@62
    .line 2005
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private makeAndAddView(IIZIZI)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z
    .param p4, "childrenLeft"    # I
    .param p5, "selected"    # Z
    .param p6, "where"    # I

    #@0
    .prologue
    .line 1426
    iget-boolean v0, p0, Landroid/widget/GridView;->mDataChanged:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1428
    iget-object v0, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #@6
    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    #@9
    move-result-object v1

    #@a
    .line 1429
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    #@c
    .line 1432
    const/4 v7, 0x1

    #@d
    move-object v0, p0

    #@e
    move v2, p1

    #@f
    move v3, p2

    #@10
    move v4, p3

    #@11
    move v5, p4

    #@12
    move v6, p5

    #@13
    move v8, p6

    #@14
    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    #@17
    .line 1433
    return-object v1

    #@18
    .line 1439
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Landroid/widget/GridView;->mIsScrap:[Z

    #@1a
    invoke-virtual {p0, p1, v0}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    #@1d
    move-result-object v1

    #@1e
    .line 1442
    .restart local v1    # "child":Landroid/view/View;
    iget-object v0, p0, Landroid/widget/GridView;->mIsScrap:[Z

    #@20
    const/4 v2, 0x0

    #@21
    aget-boolean v7, v0, v2

    #@23
    move-object v0, p0

    #@24
    move v2, p1

    #@25
    move v3, p2

    #@26
    move v4, p3

    #@27
    move v5, p4

    #@28
    move v6, p5

    #@29
    move v8, p6

    #@2a
    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    #@2d
    .line 1444
    return-object v1
.end method

.method private makeRow(IIZ)Landroid/view/View;
    .locals 19
    .param p1, "startPos"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z

    #@0
    .prologue
    .line 324
    move-object/from16 v0, p0

    #@2
    iget v9, v0, Landroid/widget/GridView;->mColumnWidth:I

    #@4
    .line 325
    .local v9, "columnWidth":I
    move-object/from16 v0, p0

    #@6
    iget v12, v0, Landroid/widget/GridView;->mHorizontalSpacing:I

    #@8
    .line 327
    .local v12, "horizontalSpacing":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isLayoutRtl()Z

    #@b
    move-result v14

    #@c
    .line 332
    .local v14, "isLayoutRtl":Z
    if-eqz v14, :cond_5

    #@e
    .line 333
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getWidth()I

    #@11
    move-result v1

    #@12
    move-object/from16 v0, p0

    #@14
    iget-object v3, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    #@16
    iget v3, v3, Landroid/graphics/Rect;->right:I

    #@18
    sub-int/2addr v1, v3

    #@19
    sub-int v3, v1, v9

    #@1b
    .line 334
    move-object/from16 v0, p0

    #@1d
    iget v1, v0, Landroid/widget/GridView;->mStretchMode:I

    #@1f
    const/4 v4, 0x3

    #@20
    if-ne v1, v4, :cond_4

    #@22
    move v1, v12

    #@23
    .line 333
    :goto_0
    sub-int v5, v3, v1

    #@25
    .line 340
    .local v5, "nextLeft":I
    :goto_1
    move-object/from16 v0, p0

    #@27
    iget-boolean v1, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    #@29
    if-nez v1, :cond_7

    #@2b
    .line 341
    move-object/from16 v0, p0

    #@2d
    iget v1, v0, Landroid/widget/GridView;->mNumColumns:I

    #@2f
    add-int v1, v1, p1

    #@31
    move-object/from16 v0, p0

    #@33
    iget v3, v0, Landroid/widget/GridView;->mItemCount:I

    #@35
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    #@38
    move-result v15

    #@39
    .line 352
    .local v15, "last":I
    :cond_0
    :goto_2
    const/16 v18, 0x0

    #@3b
    .line 354
    .local v18, "selectedView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->shouldShowSelector()Z

    #@3e
    move-result v11

    #@3f
    .line 355
    .local v11, "hasFocus":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->touchModeDrawsInPressedState()Z

    #@42
    move-result v13

    #@43
    .line 356
    .local v13, "inClick":Z
    move-object/from16 v0, p0

    #@45
    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    #@47
    move/from16 v17, v0

    #@49
    .line 358
    .local v17, "selectedPosition":I
    const/4 v8, 0x0

    #@4a
    .line 359
    .local v8, "child":Landroid/view/View;
    if-eqz v14, :cond_9

    #@4c
    const/16 v16, -0x1

    #@4e
    .line 360
    .local v16, "nextChildDir":I
    :goto_3
    move/from16 v2, p1

    #@50
    .end local v8    # "child":Landroid/view/View;
    .end local v18    # "selectedView":Landroid/view/View;
    .local v2, "pos":I
    :goto_4
    if-ge v2, v15, :cond_c

    #@52
    .line 362
    move/from16 v0, v17

    #@54
    if-ne v2, v0, :cond_a

    #@56
    const/4 v6, 0x1

    #@57
    .line 365
    .local v6, "selected":Z
    :goto_5
    if-eqz p3, :cond_b

    #@59
    const/4 v7, -0x1

    #@5a
    .local v7, "where":I
    :goto_6
    move-object/from16 v1, p0

    #@5c
    move/from16 v3, p2

    #@5e
    move/from16 v4, p3

    #@60
    .line 366
    invoke-direct/range {v1 .. v7}, Landroid/widget/GridView;->makeAndAddView(IIZIZI)Landroid/view/View;

    #@63
    move-result-object v8

    #@64
    .line 368
    .local v8, "child":Landroid/view/View;
    mul-int v1, v16, v9

    #@66
    add-int/2addr v5, v1

    #@67
    .line 369
    add-int/lit8 v1, v15, -0x1

    #@69
    if-ge v2, v1, :cond_1

    #@6b
    .line 370
    mul-int v1, v16, v12

    #@6d
    add-int/2addr v5, v1

    #@6e
    .line 373
    :cond_1
    if-eqz v6, :cond_3

    #@70
    if-nez v11, :cond_2

    #@72
    if-eqz v13, :cond_3

    #@74
    .line 374
    :cond_2
    move-object/from16 v18, v8

    #@76
    .line 360
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@78
    goto :goto_4

    #@79
    .line 334
    .end local v2    # "pos":I
    .end local v5    # "nextLeft":I
    .end local v6    # "selected":Z
    .end local v7    # "where":I
    .end local v8    # "child":Landroid/view/View;
    .end local v11    # "hasFocus":Z
    .end local v13    # "inClick":Z
    .end local v15    # "last":I
    .end local v16    # "nextChildDir":I
    .end local v17    # "selectedPosition":I
    :cond_4
    const/4 v1, 0x0

    #@7a
    goto :goto_0

    #@7b
    .line 336
    :cond_5
    move-object/from16 v0, p0

    #@7d
    iget-object v1, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    #@7f
    iget v3, v1, Landroid/graphics/Rect;->left:I

    #@81
    .line 337
    move-object/from16 v0, p0

    #@83
    iget v1, v0, Landroid/widget/GridView;->mStretchMode:I

    #@85
    const/4 v4, 0x3

    #@86
    if-ne v1, v4, :cond_6

    #@88
    move v1, v12

    #@89
    .line 336
    :goto_7
    add-int v5, v3, v1

    #@8b
    .restart local v5    # "nextLeft":I
    goto :goto_1

    #@8c
    .line 337
    .end local v5    # "nextLeft":I
    :cond_6
    const/4 v1, 0x0

    #@8d
    goto :goto_7

    #@8e
    .line 343
    .restart local v5    # "nextLeft":I
    :cond_7
    add-int/lit8 v15, p1, 0x1

    #@90
    .line 344
    .restart local v15    # "last":I
    move-object/from16 v0, p0

    #@92
    iget v1, v0, Landroid/widget/GridView;->mNumColumns:I

    #@94
    sub-int v1, p1, v1

    #@96
    add-int/lit8 v1, v1, 0x1

    #@98
    const/4 v3, 0x0

    #@99
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    #@9c
    move-result p1

    #@9d
    .line 346
    sub-int v1, v15, p1

    #@9f
    move-object/from16 v0, p0

    #@a1
    iget v3, v0, Landroid/widget/GridView;->mNumColumns:I

    #@a3
    if-ge v1, v3, :cond_0

    #@a5
    .line 347
    move-object/from16 v0, p0

    #@a7
    iget v1, v0, Landroid/widget/GridView;->mNumColumns:I

    #@a9
    sub-int v3, v15, p1

    #@ab
    sub-int/2addr v1, v3

    #@ac
    add-int v3, v9, v12

    #@ae
    mul-int v10, v1, v3

    #@b0
    .line 348
    .local v10, "deltaLeft":I
    if-eqz v14, :cond_8

    #@b2
    const/4 v1, -0x1

    #@b3
    :goto_8
    mul-int/2addr v1, v10

    #@b4
    add-int/2addr v5, v1

    #@b5
    goto :goto_2

    #@b6
    :cond_8
    const/4 v1, 0x1

    #@b7
    goto :goto_8

    #@b8
    .line 359
    .end local v10    # "deltaLeft":I
    .local v8, "child":Landroid/view/View;
    .restart local v11    # "hasFocus":Z
    .restart local v13    # "inClick":Z
    .restart local v17    # "selectedPosition":I
    .restart local v18    # "selectedView":Landroid/view/View;
    :cond_9
    const/16 v16, 0x1

    #@ba
    .restart local v16    # "nextChildDir":I
    goto :goto_3

    #@bb
    .line 362
    .end local v8    # "child":Landroid/view/View;
    .end local v18    # "selectedView":Landroid/view/View;
    .restart local v2    # "pos":I
    :cond_a
    const/4 v6, 0x0

    #@bc
    .restart local v6    # "selected":Z
    goto :goto_5

    #@bd
    .line 365
    :cond_b
    sub-int v7, v2, p1

    #@bf
    .restart local v7    # "where":I
    goto :goto_6

    #@c0
    .line 378
    .end local v6    # "selected":Z
    .end local v7    # "where":I
    :cond_c
    move-object/from16 v0, p0

    #@c2
    iput-object v8, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    #@c4
    .line 380
    if-eqz v18, :cond_d

    #@c6
    .line 381
    move-object/from16 v0, p0

    #@c8
    iget-object v1, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    #@ca
    move-object/from16 v0, p0

    #@cc
    iput-object v1, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    #@ce
    .line 384
    :cond_d
    return-object v18
.end method

.method private moveSelection(III)Landroid/view/View;
    .locals 22
    .param p1, "delta"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    #@0
    .prologue
    .line 880
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    #@3
    move-result v5

    #@4
    .line 881
    .local v5, "fadingEdgeLength":I
    move-object/from16 v0, p0

    #@6
    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    #@8
    move/from16 v16, v0

    #@a
    .line 882
    .local v16, "selectedPosition":I
    move-object/from16 v0, p0

    #@c
    iget v7, v0, Landroid/widget/GridView;->mNumColumns:I

    #@e
    .line 883
    .local v7, "numColumns":I
    move-object/from16 v0, p0

    #@10
    iget v0, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    #@12
    move/from16 v18, v0

    #@14
    .line 887
    .local v18, "verticalSpacing":I
    const/4 v13, -0x1

    #@15
    .line 889
    .local v13, "rowEnd":I
    move-object/from16 v0, p0

    #@17
    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    #@19
    move/from16 v19, v0

    #@1b
    if-nez v19, :cond_0

    #@1d
    .line 890
    sub-int v19, v16, p1

    #@1f
    sub-int v20, v16, p1

    #@21
    rem-int v20, v20, v7

    #@23
    sub-int v9, v19, v20

    #@25
    .line 892
    .local v9, "oldRowStart":I
    rem-int v19, v16, v7

    #@27
    sub-int v14, v16, v19

    #@29
    .line 904
    .local v14, "rowStart":I
    :goto_0
    sub-int v12, v14, v9

    #@2b
    .line 906
    .local v12, "rowDelta":I
    move-object/from16 v0, p0

    #@2d
    move/from16 v1, p2

    #@2f
    invoke-direct {v0, v1, v5, v14}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    #@32
    move-result v17

    #@33
    .line 907
    .local v17, "topSelectionPixel":I
    move-object/from16 v0, p0

    #@35
    move/from16 v1, p3

    #@37
    invoke-direct {v0, v1, v5, v7, v14}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    #@3a
    move-result v4

    #@3b
    .line 911
    .local v4, "bottomSelectionPixel":I
    move-object/from16 v0, p0

    #@3d
    iput v14, v0, Landroid/widget/GridView;->mFirstPosition:I

    #@3f
    .line 916
    if-lez v12, :cond_3

    #@41
    .line 921
    move-object/from16 v0, p0

    #@43
    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    #@45
    move-object/from16 v19, v0

    #@47
    if-nez v19, :cond_1

    #@49
    const/4 v8, 0x0

    #@4a
    .line 924
    .local v8, "oldBottom":I
    :goto_1
    move-object/from16 v0, p0

    #@4c
    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    #@4e
    move/from16 v19, v0

    #@50
    if-eqz v19, :cond_2

    #@52
    move/from16 v19, v13

    #@54
    :goto_2
    add-int v20, v8, v18

    #@56
    const/16 v21, 0x1

    #@58
    move-object/from16 v0, p0

    #@5a
    move/from16 v1, v19

    #@5c
    move/from16 v2, v20

    #@5e
    move/from16 v3, v21

    #@60
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    #@63
    move-result-object v15

    #@64
    .line 925
    .local v15, "sel":Landroid/view/View;
    move-object/from16 v0, p0

    #@66
    iget-object v11, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    #@68
    .line 927
    .local v11, "referenceView":Landroid/view/View;
    move-object/from16 v0, p0

    #@6a
    move/from16 v1, v17

    #@6c
    invoke-direct {v0, v11, v1, v4}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    #@6f
    .line 950
    .end local v8    # "oldBottom":I
    :goto_3
    move-object/from16 v0, p0

    #@71
    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    #@73
    move/from16 v19, v0

    #@75
    if-nez v19, :cond_9

    #@77
    .line 951
    sub-int v19, v14, v7

    #@79
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    #@7c
    move-result v20

    #@7d
    sub-int v20, v20, v18

    #@7f
    move-object/from16 v0, p0

    #@81
    move/from16 v1, v19

    #@83
    move/from16 v2, v20

    #@85
    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    #@88
    .line 952
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    #@8b
    .line 953
    add-int v19, v14, v7

    #@8d
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    #@90
    move-result v20

    #@91
    add-int v20, v20, v18

    #@93
    move-object/from16 v0, p0

    #@95
    move/from16 v1, v19

    #@97
    move/from16 v2, v20

    #@99
    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    #@9c
    .line 960
    :goto_4
    return-object v15

    #@9d
    .line 894
    .end local v4    # "bottomSelectionPixel":I
    .end local v9    # "oldRowStart":I
    .end local v11    # "referenceView":Landroid/view/View;
    .end local v12    # "rowDelta":I
    .end local v14    # "rowStart":I
    .end local v15    # "sel":Landroid/view/View;
    .end local v17    # "topSelectionPixel":I
    :cond_0
    move-object/from16 v0, p0

    #@9f
    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    #@a1
    move/from16 v19, v0

    #@a3
    add-int/lit8 v19, v19, -0x1

    #@a5
    sub-int v6, v19, v16

    #@a7
    .line 896
    .local v6, "invertedSelection":I
    move-object/from16 v0, p0

    #@a9
    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    #@ab
    move/from16 v19, v0

    #@ad
    add-int/lit8 v19, v19, -0x1

    #@af
    rem-int v20, v6, v7

    #@b1
    sub-int v20, v6, v20

    #@b3
    sub-int v13, v19, v20

    #@b5
    .line 897
    sub-int v19, v13, v7

    #@b7
    add-int/lit8 v19, v19, 0x1

    #@b9
    const/16 v20, 0x0

    #@bb
    move/from16 v0, v20

    #@bd
    move/from16 v1, v19

    #@bf
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@c2
    move-result v14

    #@c3
    .line 899
    .restart local v14    # "rowStart":I
    move-object/from16 v0, p0

    #@c5
    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    #@c7
    move/from16 v19, v0

    #@c9
    add-int/lit8 v19, v19, -0x1

    #@cb
    sub-int v20, v16, p1

    #@cd
    sub-int v6, v19, v20

    #@cf
    .line 900
    move-object/from16 v0, p0

    #@d1
    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    #@d3
    move/from16 v19, v0

    #@d5
    add-int/lit8 v19, v19, -0x1

    #@d7
    rem-int v20, v6, v7

    #@d9
    sub-int v20, v6, v20

    #@db
    sub-int v9, v19, v20

    #@dd
    .line 901
    .restart local v9    # "oldRowStart":I
    sub-int v19, v9, v7

    #@df
    add-int/lit8 v19, v19, 0x1

    #@e1
    const/16 v20, 0x0

    #@e3
    move/from16 v0, v20

    #@e5
    move/from16 v1, v19

    #@e7
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@ea
    move-result v9

    #@eb
    goto/16 :goto_0

    #@ed
    .line 922
    .end local v6    # "invertedSelection":I
    .restart local v4    # "bottomSelectionPixel":I
    .restart local v12    # "rowDelta":I
    .restart local v17    # "topSelectionPixel":I
    :cond_1
    move-object/from16 v0, p0

    #@ef
    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    #@f1
    move-object/from16 v19, v0

    #@f3
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBottom()I

    #@f6
    move-result v8

    #@f7
    .restart local v8    # "oldBottom":I
    goto/16 :goto_1

    #@f9
    :cond_2
    move/from16 v19, v14

    #@fb
    .line 924
    goto/16 :goto_2

    #@fd
    .line 928
    .end local v8    # "oldBottom":I
    :cond_3
    if-gez v12, :cond_6

    #@ff
    .line 932
    move-object/from16 v0, p0

    #@101
    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    #@103
    move-object/from16 v19, v0

    #@105
    if-nez v19, :cond_4

    #@107
    .line 933
    const/4 v10, 0x0

    #@108
    .line 935
    .local v10, "oldTop":I
    :goto_5
    move-object/from16 v0, p0

    #@10a
    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    #@10c
    move/from16 v19, v0

    #@10e
    if-eqz v19, :cond_5

    #@110
    move/from16 v19, v13

    #@112
    :goto_6
    sub-int v20, v10, v18

    #@114
    const/16 v21, 0x0

    #@116
    move-object/from16 v0, p0

    #@118
    move/from16 v1, v19

    #@11a
    move/from16 v2, v20

    #@11c
    move/from16 v3, v21

    #@11e
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    #@121
    move-result-object v15

    #@122
    .line 936
    .restart local v15    # "sel":Landroid/view/View;
    move-object/from16 v0, p0

    #@124
    iget-object v11, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    #@126
    .line 938
    .restart local v11    # "referenceView":Landroid/view/View;
    move-object/from16 v0, p0

    #@128
    move/from16 v1, v17

    #@12a
    invoke-direct {v0, v11, v1, v4}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    #@12d
    goto/16 :goto_3

    #@12f
    .line 933
    .end local v10    # "oldTop":I
    .end local v11    # "referenceView":Landroid/view/View;
    .end local v15    # "sel":Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    #@131
    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    #@133
    move-object/from16 v19, v0

    #@135
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    #@138
    move-result v10

    #@139
    .restart local v10    # "oldTop":I
    goto :goto_5

    #@13a
    :cond_5
    move/from16 v19, v14

    #@13c
    .line 935
    goto :goto_6

    #@13d
    .line 943
    .end local v10    # "oldTop":I
    :cond_6
    move-object/from16 v0, p0

    #@13f
    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    #@141
    move-object/from16 v19, v0

    #@143
    if-nez v19, :cond_7

    #@145
    .line 944
    const/4 v10, 0x0

    #@146
    .line 946
    .restart local v10    # "oldTop":I
    :goto_7
    move-object/from16 v0, p0

    #@148
    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    #@14a
    move/from16 v19, v0

    #@14c
    if-eqz v19, :cond_8

    #@14e
    move/from16 v19, v13

    #@150
    :goto_8
    const/16 v20, 0x1

    #@152
    move-object/from16 v0, p0

    #@154
    move/from16 v1, v19

    #@156
    move/from16 v2, v20

    #@158
    invoke-direct {v0, v1, v10, v2}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    #@15b
    move-result-object v15

    #@15c
    .line 947
    .restart local v15    # "sel":Landroid/view/View;
    move-object/from16 v0, p0

    #@15e
    iget-object v11, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    #@160
    .restart local v11    # "referenceView":Landroid/view/View;
    goto/16 :goto_3

    #@162
    .line 944
    .end local v10    # "oldTop":I
    .end local v11    # "referenceView":Landroid/view/View;
    .end local v15    # "sel":Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    #@164
    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    #@166
    move-object/from16 v19, v0

    #@168
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    #@16b
    move-result v10

    #@16c
    .restart local v10    # "oldTop":I
    goto :goto_7

    #@16d
    :cond_8
    move/from16 v19, v14

    #@16f
    .line 946
    goto :goto_8

    #@170
    .line 955
    .end local v10    # "oldTop":I
    .restart local v11    # "referenceView":Landroid/view/View;
    .restart local v15    # "sel":Landroid/view/View;
    :cond_9
    add-int v19, v13, v7

    #@172
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    #@175
    move-result v20

    #@176
    add-int v20, v20, v18

    #@178
    move-object/from16 v0, p0

    #@17a
    move/from16 v1, v19

    #@17c
    move/from16 v2, v20

    #@17e
    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    #@181
    .line 956
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    #@184
    .line 957
    add-int/lit8 v19, v14, -0x1

    #@186
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    #@189
    move-result v20

    #@18a
    sub-int v20, v20, v18

    #@18c
    move-object/from16 v0, p0

    #@18e
    move/from16 v1, v19

    #@190
    move/from16 v2, v20

    #@192
    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    #@195
    goto/16 :goto_4
.end method

.method private pinToBottom(I)V
    .locals 5
    .param p1, "childrenBottom"    # I

    #@0
    .prologue
    .line 510
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    #@3
    move-result v1

    #@4
    .line 511
    .local v1, "count":I
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    #@6
    add-int/2addr v3, v1

    #@7
    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    #@9
    if-ne v3, v4, :cond_0

    #@b
    .line 512
    add-int/lit8 v3, v1, -0x1

    #@d
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    #@14
    move-result v0

    #@15
    .line 513
    .local v0, "bottom":I
    sub-int v2, p1, v0

    #@17
    .line 514
    .local v2, "offset":I
    if-lez v2, :cond_0

    #@19
    .line 515
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    #@1c
    .line 509
    .end local v0    # "bottom":I
    .end local v2    # "offset":I
    :cond_0
    return-void
.end method

.method private pinToTop(I)V
    .locals 4
    .param p1, "childrenTop"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 500
    iget v2, p0, Landroid/widget/GridView;->mFirstPosition:I

    #@3
    if-nez v2, :cond_0

    #@5
    .line 501
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    #@c
    move-result v1

    #@d
    .line 502
    .local v1, "top":I
    sub-int v0, p1, v1

    #@f
    .line 503
    .local v0, "offset":I
    if-gez v0, :cond_0

    #@11
    .line 504
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    #@14
    .line 499
    .end local v0    # "offset":I
    .end local v1    # "top":I
    :cond_0
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZI)V
    .locals 26
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "y"    # I
    .param p4, "flow"    # Z
    .param p5, "childrenLeft"    # I
    .param p6, "selected"    # Z
    .param p7, "recycled"    # Z
    .param p8, "where"    # I

    #@0
    .prologue
    .line 1465
    const-string/jumbo v23, "setupGridItem"

    #@3
    const-wide/16 v24, 0x8

    #@5
    move-wide/from16 v0, v24

    #@7
    move-object/from16 v2, v23

    #@9
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@c
    .line 1467
    if-eqz p6, :cond_7

    #@e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->shouldShowSelector()Z

    #@11
    move-result v15

    #@12
    .line 1468
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    #@15
    move-result v23

    #@16
    move/from16 v0, v23

    #@18
    if-eq v15, v0, :cond_8

    #@1a
    const/16 v21, 0x1

    #@1c
    .line 1469
    .local v21, "updateChildSelected":Z
    :goto_1
    move-object/from16 v0, p0

    #@1e
    iget v0, v0, Landroid/widget/GridView;->mTouchMode:I

    #@20
    move/from16 v17, v0

    #@22
    .line 1470
    .local v17, "mode":I
    if-lez v17, :cond_a

    #@24
    const/16 v23, 0x3

    #@26
    move/from16 v0, v17

    #@28
    move/from16 v1, v23

    #@2a
    if-ge v0, v1, :cond_a

    #@2c
    .line 1471
    move-object/from16 v0, p0

    #@2e
    iget v0, v0, Landroid/widget/GridView;->mMotionPosition:I

    #@30
    move/from16 v23, v0

    #@32
    move/from16 v0, v23

    #@34
    move/from16 v1, p2

    #@36
    if-ne v0, v1, :cond_9

    #@38
    const/4 v14, 0x1

    #@39
    .line 1472
    .local v14, "isPressed":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    #@3c
    move-result v23

    #@3d
    move/from16 v0, v23

    #@3f
    if-eq v14, v0, :cond_b

    #@41
    const/16 v20, 0x1

    #@43
    .line 1474
    .local v20, "updateChildPressed":Z
    :goto_3
    if-eqz p7, :cond_c

    #@45
    if-nez v21, :cond_c

    #@47
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    #@4a
    move-result v18

    #@4b
    .line 1478
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4e
    move-result-object v19

    #@4f
    check-cast v19, Landroid/widget/AbsListView$LayoutParams;

    #@51
    .line 1479
    .local v19, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v19, :cond_0

    #@53
    .line 1480
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@56
    move-result-object v19

    #@57
    .end local v19    # "p":Landroid/widget/AbsListView$LayoutParams;
    check-cast v19, Landroid/widget/AbsListView$LayoutParams;

    #@59
    .line 1482
    .restart local v19    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_0
    move-object/from16 v0, p0

    #@5b
    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    #@5d
    move-object/from16 v23, v0

    #@5f
    move-object/from16 v0, v23

    #@61
    move/from16 v1, p2

    #@63
    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    #@66
    move-result v23

    #@67
    move/from16 v0, v23

    #@69
    move-object/from16 v1, v19

    #@6b
    iput v0, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    #@6d
    .line 1484
    if-eqz p7, :cond_1

    #@6f
    move-object/from16 v0, v19

    #@71
    iget-boolean v0, v0, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    #@73
    move/from16 v23, v0

    #@75
    if-eqz v23, :cond_d

    #@77
    .line 1487
    :cond_1
    const/16 v23, 0x0

    #@79
    move/from16 v0, v23

    #@7b
    move-object/from16 v1, v19

    #@7d
    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    #@7f
    .line 1488
    const/16 v23, 0x1

    #@81
    move-object/from16 v0, p0

    #@83
    move-object/from16 v1, p1

    #@85
    move/from16 v2, p8

    #@87
    move-object/from16 v3, v19

    #@89
    move/from16 v4, v23

    #@8b
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/GridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    #@8e
    .line 1491
    :goto_5
    if-eqz v21, :cond_2

    #@90
    .line 1492
    move-object/from16 v0, p1

    #@92
    invoke-virtual {v0, v15}, Landroid/view/View;->setSelected(Z)V

    #@95
    .line 1493
    if-eqz v15, :cond_2

    #@97
    .line 1494
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->requestFocus()Z

    #@9a
    .line 1498
    :cond_2
    if-eqz v20, :cond_3

    #@9c
    .line 1499
    move-object/from16 v0, p1

    #@9e
    invoke-virtual {v0, v14}, Landroid/view/View;->setPressed(Z)V

    #@a1
    .line 1502
    :cond_3
    move-object/from16 v0, p0

    #@a3
    iget v0, v0, Landroid/widget/GridView;->mChoiceMode:I

    #@a5
    move/from16 v23, v0

    #@a7
    if-eqz v23, :cond_4

    #@a9
    move-object/from16 v0, p0

    #@ab
    iget-object v0, v0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@ad
    move-object/from16 v23, v0

    #@af
    if-eqz v23, :cond_4

    #@b1
    .line 1503
    move-object/from16 v0, p1

    #@b3
    instance-of v0, v0, Landroid/widget/Checkable;

    #@b5
    move/from16 v23, v0

    #@b7
    if-eqz v23, :cond_e

    #@b9
    move-object/from16 v23, p1

    #@bb
    .line 1504
    check-cast v23, Landroid/widget/Checkable;

    #@bd
    move-object/from16 v0, p0

    #@bf
    iget-object v0, v0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@c1
    move-object/from16 v24, v0

    #@c3
    move-object/from16 v0, v24

    #@c5
    move/from16 v1, p2

    #@c7
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@ca
    move-result v24

    #@cb
    invoke-interface/range {v23 .. v24}, Landroid/widget/Checkable;->setChecked(Z)V

    #@ce
    .line 1511
    :cond_4
    :goto_6
    if-eqz v18, :cond_f

    #@d0
    .line 1513
    const/16 v23, 0x0

    #@d2
    const/16 v24, 0x0

    #@d4
    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@d7
    move-result v23

    #@d8
    move-object/from16 v0, v19

    #@da
    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    #@dc
    move/from16 v24, v0

    #@de
    const/16 v25, 0x0

    #@e0
    .line 1512
    move/from16 v0, v23

    #@e2
    move/from16 v1, v25

    #@e4
    move/from16 v2, v24

    #@e6
    invoke-static {v0, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    #@e9
    move-result v8

    #@ea
    .line 1516
    .local v8, "childHeightSpec":I
    move-object/from16 v0, p0

    #@ec
    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    #@ee
    move/from16 v23, v0

    #@f0
    const/high16 v24, 0x40000000    # 2.0f

    #@f2
    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@f5
    move-result v23

    #@f6
    move-object/from16 v0, v19

    #@f8
    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    #@fa
    move/from16 v24, v0

    #@fc
    const/16 v25, 0x0

    #@fe
    .line 1515
    move/from16 v0, v23

    #@100
    move/from16 v1, v25

    #@102
    move/from16 v2, v24

    #@104
    invoke-static {v0, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    #@107
    move-result v12

    #@108
    .line 1517
    .local v12, "childWidthSpec":I
    move-object/from16 v0, p1

    #@10a
    invoke-virtual {v0, v12, v8}, Landroid/view/View;->measure(II)V

    #@10d
    .line 1522
    .end local v8    # "childHeightSpec":I
    .end local v12    # "childWidthSpec":I
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    #@110
    move-result v22

    #@111
    .line 1523
    .local v22, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    #@114
    move-result v13

    #@115
    .line 1526
    .local v13, "h":I
    if-eqz p4, :cond_10

    #@117
    move/from16 v11, p3

    #@119
    .line 1528
    .local v11, "childTop":I
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getLayoutDirection()I

    #@11c
    move-result v16

    #@11d
    .line 1529
    .local v16, "layoutDirection":I
    move-object/from16 v0, p0

    #@11f
    iget v0, v0, Landroid/widget/GridView;->mGravity:I

    #@121
    move/from16 v23, v0

    #@123
    move/from16 v0, v23

    #@125
    move/from16 v1, v16

    #@127
    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    #@12a
    move-result v6

    #@12b
    .line 1530
    .local v6, "absoluteGravity":I
    and-int/lit8 v23, v6, 0x7

    #@12d
    packed-switch v23, :pswitch_data_0

    #@130
    .line 1541
    :pswitch_0
    move/from16 v9, p5

    #@132
    .line 1545
    .local v9, "childLeft":I
    :goto_9
    if-eqz v18, :cond_11

    #@134
    .line 1546
    add-int v10, v9, v22

    #@136
    .line 1547
    .local v10, "childRight":I
    add-int v7, v11, v13

    #@138
    .line 1548
    .local v7, "childBottom":I
    move-object/from16 v0, p1

    #@13a
    invoke-virtual {v0, v9, v11, v10, v7}, Landroid/view/View;->layout(IIII)V

    #@13d
    .line 1554
    .end local v7    # "childBottom":I
    .end local v10    # "childRight":I
    :goto_a
    move-object/from16 v0, p0

    #@13f
    iget-boolean v0, v0, Landroid/widget/GridView;->mCachingStarted:Z

    #@141
    move/from16 v23, v0

    #@143
    if-eqz v23, :cond_5

    #@145
    .line 1555
    const/16 v23, 0x1

    #@147
    move-object/from16 v0, p1

    #@149
    move/from16 v1, v23

    #@14b
    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    #@14e
    .line 1558
    :cond_5
    if-eqz p7, :cond_6

    #@150
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@153
    move-result-object v23

    #@154
    check-cast v23, Landroid/widget/AbsListView$LayoutParams;

    #@156
    move-object/from16 v0, v23

    #@158
    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    #@15a
    move/from16 v23, v0

    #@15c
    move/from16 v0, v23

    #@15e
    move/from16 v1, p2

    #@160
    if-eq v0, v1, :cond_6

    #@162
    .line 1560
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    #@165
    .line 1563
    :cond_6
    const-wide/16 v24, 0x8

    #@167
    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V

    #@16a
    .line 1464
    return-void

    #@16b
    .line 1467
    .end local v6    # "absoluteGravity":I
    .end local v9    # "childLeft":I
    .end local v11    # "childTop":I
    .end local v13    # "h":I
    .end local v14    # "isPressed":Z
    .end local v16    # "layoutDirection":I
    .end local v17    # "mode":I
    .end local v19    # "p":Landroid/widget/AbsListView$LayoutParams;
    .end local v20    # "updateChildPressed":Z
    .end local v21    # "updateChildSelected":Z
    .end local v22    # "w":I
    :cond_7
    const/4 v15, 0x0

    #@16c
    .local v15, "isSelected":Z
    goto/16 :goto_0

    #@16e
    .line 1468
    .end local v15    # "isSelected":Z
    :cond_8
    const/16 v21, 0x0

    #@170
    .restart local v21    # "updateChildSelected":Z
    goto/16 :goto_1

    #@172
    .line 1471
    .restart local v17    # "mode":I
    :cond_9
    const/4 v14, 0x0

    #@173
    .restart local v14    # "isPressed":Z
    goto/16 :goto_2

    #@175
    .line 1470
    .end local v14    # "isPressed":Z
    :cond_a
    const/4 v14, 0x0

    #@176
    .restart local v14    # "isPressed":Z
    goto/16 :goto_2

    #@178
    .line 1472
    :cond_b
    const/16 v20, 0x0

    #@17a
    .restart local v20    # "updateChildPressed":Z
    goto/16 :goto_3

    #@17c
    .line 1474
    :cond_c
    const/16 v18, 0x1

    #@17e
    .local v18, "needToMeasure":Z
    goto/16 :goto_4

    #@180
    .line 1485
    .end local v18    # "needToMeasure":Z
    .restart local v19    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_d
    move-object/from16 v0, p0

    #@182
    move-object/from16 v1, p1

    #@184
    move/from16 v2, p8

    #@186
    move-object/from16 v3, v19

    #@188
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/GridView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@18b
    goto/16 :goto_5

    #@18d
    .line 1505
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getContext()Landroid/content/Context;

    #@190
    move-result-object v23

    #@191
    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@194
    move-result-object v23

    #@195
    move-object/from16 v0, v23

    #@197
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@199
    move/from16 v23, v0

    #@19b
    .line 1506
    const/16 v24, 0xb

    #@19d
    .line 1505
    move/from16 v0, v23

    #@19f
    move/from16 v1, v24

    #@1a1
    if-lt v0, v1, :cond_4

    #@1a3
    .line 1507
    move-object/from16 v0, p0

    #@1a5
    iget-object v0, v0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@1a7
    move-object/from16 v23, v0

    #@1a9
    move-object/from16 v0, v23

    #@1ab
    move/from16 v1, p2

    #@1ad
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@1b0
    move-result v23

    #@1b1
    move-object/from16 v0, p1

    #@1b3
    move/from16 v1, v23

    #@1b5
    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    #@1b8
    goto/16 :goto_6

    #@1ba
    .line 1519
    :cond_f
    invoke-virtual/range {p0 .. p1}, Landroid/widget/GridView;->cleanupLayoutState(Landroid/view/View;)V

    #@1bd
    goto/16 :goto_7

    #@1bf
    .line 1526
    .restart local v13    # "h":I
    .restart local v22    # "w":I
    :cond_10
    sub-int v11, p3, v13

    #@1c1
    .restart local v11    # "childTop":I
    goto/16 :goto_8

    #@1c3
    .line 1532
    .restart local v6    # "absoluteGravity":I
    .restart local v16    # "layoutDirection":I
    :pswitch_1
    move/from16 v9, p5

    #@1c5
    .line 1533
    .restart local v9    # "childLeft":I
    goto/16 :goto_9

    #@1c7
    .line 1535
    .end local v9    # "childLeft":I
    :pswitch_2
    move-object/from16 v0, p0

    #@1c9
    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    #@1cb
    move/from16 v23, v0

    #@1cd
    sub-int v23, v23, v22

    #@1cf
    div-int/lit8 v23, v23, 0x2

    #@1d1
    add-int v9, p5, v23

    #@1d3
    .line 1536
    .restart local v9    # "childLeft":I
    goto/16 :goto_9

    #@1d5
    .line 1538
    .end local v9    # "childLeft":I
    :pswitch_3
    move-object/from16 v0, p0

    #@1d7
    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    #@1d9
    move/from16 v23, v0

    #@1db
    add-int v23, v23, p5

    #@1dd
    sub-int v9, v23, v22

    #@1df
    .line 1539
    .restart local v9    # "childLeft":I
    goto/16 :goto_9

    #@1e1
    .line 1550
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    #@1e4
    move-result v23

    #@1e5
    sub-int v23, v9, v23

    #@1e7
    move-object/from16 v0, p1

    #@1e9
    move/from16 v1, v23

    #@1eb
    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    #@1ee
    .line 1551
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    #@1f1
    move-result v23

    #@1f2
    sub-int v23, v11, v23

    #@1f4
    move-object/from16 v0, p1

    #@1f6
    move/from16 v1, v23

    #@1f8
    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@1fb
    goto/16 :goto_a

    #@1fd
    .line 1530
    nop

    #@1fe
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method arrowScroll(I)Z
    .locals 13
    .param p1, "direction"    # I

    #@0
    .prologue
    const/16 v12, 0x42

    #@2
    const/16 v11, 0x11

    #@4
    const/4 v10, 0x6

    #@5
    const/4 v9, 0x0

    #@6
    .line 1827
    iget v5, p0, Landroid/widget/GridView;->mSelectedPosition:I

    #@8
    .line 1828
    .local v5, "selectedPosition":I
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    #@a
    .line 1833
    .local v4, "numColumns":I
    const/4 v3, 0x0

    #@b
    .line 1835
    .local v3, "moved":Z
    iget-boolean v7, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    #@d
    if-nez v7, :cond_6

    #@f
    .line 1836
    div-int v7, v5, v4

    #@11
    mul-int v6, v7, v4

    #@13
    .line 1837
    .local v6, "startOfRowPos":I
    add-int v7, v6, v4

    #@15
    add-int/lit8 v7, v7, -0x1

    #@17
    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    #@19
    add-int/lit8 v8, v8, -0x1

    #@1b
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    #@1e
    move-result v0

    #@1f
    .line 1844
    .local v0, "endOfRowPos":I
    :goto_0
    sparse-switch p1, :sswitch_data_0

    #@22
    .line 1861
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/widget/GridView;->isLayoutRtl()Z

    #@25
    move-result v2

    #@26
    .line 1862
    .local v2, "isLayoutRtl":Z
    if-le v5, v6, :cond_7

    #@28
    if-ne p1, v11, :cond_1

    #@2a
    if-eqz v2, :cond_2

    #@2c
    .line 1863
    :cond_1
    if-ne p1, v12, :cond_7

    #@2e
    .line 1862
    if-eqz v2, :cond_7

    #@30
    .line 1864
    :cond_2
    iput v10, p0, Landroid/widget/GridView;->mLayoutMode:I

    #@32
    .line 1865
    add-int/lit8 v7, v5, -0x1

    #@34
    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    #@37
    move-result v7

    #@38
    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setSelectionInt(I)V

    #@3b
    .line 1866
    const/4 v3, 0x1

    #@3c
    .line 1874
    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    #@3e
    .line 1875
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    #@41
    move-result v7

    #@42
    invoke-virtual {p0, v7}, Landroid/widget/GridView;->playSoundEffect(I)V

    #@45
    .line 1876
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    #@48
    .line 1879
    :cond_4
    if-eqz v3, :cond_5

    #@4a
    .line 1880
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    #@4d
    .line 1883
    :cond_5
    return v3

    #@4e
    .line 1839
    .end local v0    # "endOfRowPos":I
    .end local v2    # "isLayoutRtl":Z
    .end local v6    # "startOfRowPos":I
    :cond_6
    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    #@50
    add-int/lit8 v7, v7, -0x1

    #@52
    sub-int v1, v7, v5

    #@54
    .line 1840
    .local v1, "invertedSelection":I
    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    #@56
    add-int/lit8 v7, v7, -0x1

    #@58
    div-int v8, v1, v4

    #@5a
    mul-int/2addr v8, v4

    #@5b
    sub-int v0, v7, v8

    #@5d
    .line 1841
    .restart local v0    # "endOfRowPos":I
    sub-int v7, v0, v4

    #@5f
    add-int/lit8 v7, v7, 0x1

    #@61
    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    #@64
    move-result v6

    #@65
    .restart local v6    # "startOfRowPos":I
    goto :goto_0

    #@66
    .line 1846
    .end local v1    # "invertedSelection":I
    :sswitch_0
    if-lez v6, :cond_0

    #@68
    .line 1847
    iput v10, p0, Landroid/widget/GridView;->mLayoutMode:I

    #@6a
    .line 1848
    sub-int v7, v5, v4

    #@6c
    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    #@6f
    move-result v7

    #@70
    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setSelectionInt(I)V

    #@73
    .line 1849
    const/4 v3, 0x1

    #@74
    goto :goto_1

    #@75
    .line 1853
    :sswitch_1
    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    #@77
    add-int/lit8 v7, v7, -0x1

    #@79
    if-ge v0, v7, :cond_0

    #@7b
    .line 1854
    iput v10, p0, Landroid/widget/GridView;->mLayoutMode:I

    #@7d
    .line 1855
    add-int v7, v5, v4

    #@7f
    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    #@81
    add-int/lit8 v8, v8, -0x1

    #@83
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    #@86
    move-result v7

    #@87
    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setSelectionInt(I)V

    #@8a
    .line 1856
    const/4 v3, 0x1

    #@8b
    goto :goto_1

    #@8c
    .line 1867
    .restart local v2    # "isLayoutRtl":Z
    :cond_7
    if-ge v5, v0, :cond_3

    #@8e
    if-ne p1, v11, :cond_8

    #@90
    if-nez v2, :cond_9

    #@92
    .line 1868
    :cond_8
    if-ne p1, v12, :cond_3

    #@94
    if-nez v2, :cond_3

    #@96
    .line 1869
    :cond_9
    iput v10, p0, Landroid/widget/GridView;->mLayoutMode:I

    #@98
    .line 1870
    add-int/lit8 v7, v5, 0x1

    #@9a
    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    #@9c
    add-int/lit8 v8, v8, -0x1

    #@9e
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    #@a1
    move-result v7

    #@a2
    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setSelectionInt(I)V

    #@a5
    .line 1871
    const/4 v3, 0x1

    #@a6
    goto :goto_2

    #@a7
    .line 1844
    nop

    #@a8
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "index"    # I
    .param p4, "count"    # I

    #@0
    .prologue
    .line 1130
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    #@2
    check-cast v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    #@4
    .line 1132
    .local v0, "animationParams":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_0

    #@6
    .line 1133
    new-instance v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    #@8
    .end local v0    # "animationParams":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    #@b
    .line 1134
    .restart local v0    # "animationParams":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    #@d
    .line 1137
    :cond_0
    iput p4, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->count:I

    #@f
    .line 1138
    iput p3, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->index:I

    #@11
    .line 1139
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    #@13
    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    #@15
    .line 1140
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    #@17
    div-int v2, p4, v2

    #@19
    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    #@1b
    .line 1142
    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    #@1d
    if-nez v2, :cond_1

    #@1f
    .line 1143
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    #@21
    rem-int v2, p3, v2

    #@23
    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    #@25
    .line 1144
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    #@27
    div-int v2, p3, v2

    #@29
    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    #@2b
    .line 1127
    :goto_0
    return-void

    #@2c
    .line 1146
    :cond_1
    add-int/lit8 v2, p4, -0x1

    #@2e
    sub-int v1, v2, p3

    #@30
    .line 1148
    .local v1, "invertedIndex":I
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    #@32
    add-int/lit8 v2, v2, -0x1

    #@34
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    #@36
    rem-int v3, v1, v3

    #@38
    sub-int/2addr v2, v3

    #@39
    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    #@3b
    .line 1149
    iget v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    #@3d
    add-int/lit8 v2, v2, -0x1

    #@3f
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    #@41
    div-int v3, v1, v3

    #@43
    sub-int/2addr v2, v3

    #@44
    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    #@46
    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 2288
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    #@4
    move-result v1

    #@5
    .line 2289
    .local v1, "count":I
    if-lez v1, :cond_2

    #@7
    .line 2290
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    #@9
    .line 2291
    .local v4, "numColumns":I
    add-int v8, v1, v4

    #@b
    add-int/lit8 v8, v8, -0x1

    #@d
    div-int v5, v8, v4

    #@f
    .line 2293
    .local v5, "rowCount":I
    mul-int/lit8 v2, v5, 0x64

    #@11
    .line 2295
    .local v2, "extent":I
    invoke-virtual {p0, v9}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    #@14
    move-result-object v7

    #@15
    .line 2296
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    #@18
    move-result v6

    #@19
    .line 2297
    .local v6, "top":I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    #@1c
    move-result v3

    #@1d
    .line 2298
    .local v3, "height":I
    if-lez v3, :cond_0

    #@1f
    .line 2299
    mul-int/lit8 v8, v6, 0x64

    #@21
    div-int/2addr v8, v3

    #@22
    add-int/2addr v2, v8

    #@23
    .line 2302
    :cond_0
    add-int/lit8 v8, v1, -0x1

    #@25
    invoke-virtual {p0, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    #@28
    move-result-object v7

    #@29
    .line 2303
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    #@2c
    move-result v0

    #@2d
    .line 2304
    .local v0, "bottom":I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    #@30
    move-result v3

    #@31
    .line 2305
    if-lez v3, :cond_1

    #@33
    .line 2306
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    #@36
    move-result v8

    #@37
    sub-int v8, v0, v8

    #@39
    mul-int/lit8 v8, v8, 0x64

    #@3b
    div-int/2addr v8, v3

    #@3c
    sub-int/2addr v2, v8

    #@3d
    .line 2309
    :cond_1
    return v2

    #@3e
    .line 2311
    .end local v0    # "bottom":I
    .end local v2    # "extent":I
    .end local v3    # "height":I
    .end local v4    # "numColumns":I
    .end local v5    # "rowCount":I
    .end local v6    # "top":I
    .end local v7    # "view":Landroid/view/View;
    :cond_2
    return v9
.end method

.method protected computeVerticalScrollOffset()I
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 2316
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    #@3
    if-ltz v7, :cond_1

    #@5
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    #@8
    move-result v7

    #@9
    if-lez v7, :cond_1

    #@b
    .line 2317
    invoke-virtual {p0, v10}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    #@e
    move-result-object v5

    #@f
    .line 2318
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    #@12
    move-result v4

    #@13
    .line 2319
    .local v4, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    #@16
    move-result v0

    #@17
    .line 2320
    .local v0, "height":I
    if-lez v0, :cond_1

    #@19
    .line 2321
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    #@1b
    .line 2322
    .local v1, "numColumns":I
    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    #@1d
    add-int/2addr v7, v1

    #@1e
    add-int/lit8 v7, v7, -0x1

    #@20
    div-int v3, v7, v1

    #@22
    .line 2326
    .local v3, "rowCount":I
    invoke-virtual {p0}, Landroid/widget/GridView;->isStackFromBottom()Z

    #@25
    move-result v7

    #@26
    if-eqz v7, :cond_0

    #@28
    mul-int v7, v3, v1

    #@2a
    .line 2327
    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    #@2c
    .line 2326
    sub-int v2, v7, v8

    #@2e
    .line 2328
    .local v2, "oddItemsOnFirstRow":I
    :goto_0
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    #@30
    add-int/2addr v7, v2

    #@31
    div-int v6, v7, v1

    #@33
    .line 2329
    .local v6, "whichRow":I
    mul-int/lit8 v7, v6, 0x64

    #@35
    mul-int/lit8 v8, v4, 0x64

    #@37
    div-int/2addr v8, v0

    #@38
    sub-int/2addr v7, v8

    #@39
    .line 2330
    iget v8, p0, Landroid/widget/GridView;->mScrollY:I

    #@3b
    int-to-float v8, v8

    #@3c
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    #@3f
    move-result v9

    #@40
    int-to-float v9, v9

    #@41
    div-float/2addr v8, v9

    #@42
    int-to-float v9, v3

    #@43
    mul-float/2addr v8, v9

    #@44
    const/high16 v9, 0x42c80000    # 100.0f

    #@46
    mul-float/2addr v8, v9

    #@47
    float-to-int v8, v8

    #@48
    .line 2329
    add-int/2addr v7, v8

    #@49
    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    #@4c
    move-result v7

    #@4d
    return v7

    #@4e
    .line 2327
    .end local v2    # "oddItemsOnFirstRow":I
    .end local v6    # "whichRow":I
    :cond_0
    const/4 v2, 0x0

    #@4f
    .restart local v2    # "oddItemsOnFirstRow":I
    goto :goto_0

    #@50
    .line 2333
    .end local v0    # "height":I
    .end local v1    # "numColumns":I
    .end local v2    # "oddItemsOnFirstRow":I
    .end local v3    # "rowCount":I
    .end local v4    # "top":I
    .end local v5    # "view":Landroid/view/View;
    :cond_1
    return v10
.end method

.method protected computeVerticalScrollRange()I
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2339
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    #@3
    .line 2340
    .local v0, "numColumns":I
    iget v3, p0, Landroid/widget/GridView;->mItemCount:I

    #@5
    add-int/2addr v3, v0

    #@6
    add-int/lit8 v3, v3, -0x1

    #@8
    div-int v2, v3, v0

    #@a
    .line 2341
    .local v2, "rowCount":I
    mul-int/lit8 v3, v2, 0x64

    #@c
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    #@f
    move-result v1

    #@10
    .line 2342
    .local v1, "result":I
    iget v3, p0, Landroid/widget/GridView;->mScrollY:I

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 2344
    iget v3, p0, Landroid/widget/GridView;->mScrollY:I

    #@16
    int-to-float v3, v3

    #@17
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    #@1a
    move-result v4

    #@1b
    int-to-float v4, v4

    #@1c
    div-float/2addr v3, v4

    #@1d
    int-to-float v4, v2

    #@1e
    mul-float/2addr v3, v4

    #@1f
    const/high16 v4, 0x42c80000    # 100.0f

    #@21
    mul-float/2addr v3, v4

    #@22
    float-to-int v3, v3

    #@23
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    #@26
    move-result v3

    #@27
    add-int/2addr v1, v3

    #@28
    .line 2346
    :cond_0
    return v1
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    #@0
    .prologue
    .line 2429
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    #@3
    .line 2430
    const-string/jumbo v0, "numColumns"

    #@6
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    #@9
    move-result v1

    #@a
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@d
    .line 2428
    return-void
.end method

.method fillGap(Z)V
    .locals 10
    .param p1, "down"    # Z

    #@0
    .prologue
    const/16 v9, 0x22

    #@2
    const/4 v8, 0x0

    #@3
    .line 251
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    #@5
    .line 252
    .local v1, "numColumns":I
    iget v6, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    #@7
    .line 254
    .local v6, "verticalSpacing":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    #@a
    move-result v0

    #@b
    .line 256
    .local v0, "count":I
    if-eqz p1, :cond_3

    #@d
    .line 257
    const/4 v3, 0x0

    #@e
    .line 258
    .local v3, "paddingTop":I
    iget v7, p0, Landroid/widget/GridView;->mGroupFlags:I

    #@10
    and-int/lit8 v7, v7, 0x22

    #@12
    if-ne v7, v9, :cond_0

    #@14
    .line 259
    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingTop()I

    #@17
    move-result v3

    #@18
    .line 261
    :cond_0
    if-lez v0, :cond_2

    #@1a
    .line 262
    add-int/lit8 v7, v0, -0x1

    #@1c
    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    #@1f
    move-result-object v7

    #@20
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    #@23
    move-result v7

    #@24
    add-int v5, v7, v6

    #@26
    .line 263
    .local v5, "startOffset":I
    :goto_0
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    #@28
    add-int v4, v7, v0

    #@2a
    .line 264
    .local v4, "position":I
    iget-boolean v7, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    #@2c
    if-eqz v7, :cond_1

    #@2e
    .line 265
    add-int/lit8 v7, v1, -0x1

    #@30
    add-int/2addr v4, v7

    #@31
    .line 267
    :cond_1
    invoke-direct {p0, v4, v5}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    #@34
    .line 268
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    #@37
    move-result v7

    #@38
    invoke-direct {p0, v1, v6, v7}, Landroid/widget/GridView;->correctTooHigh(III)V

    #@3b
    .line 250
    .end local v3    # "paddingTop":I
    :goto_1
    return-void

    #@3c
    .line 262
    .end local v4    # "position":I
    .end local v5    # "startOffset":I
    .restart local v3    # "paddingTop":I
    :cond_2
    move v5, v3

    #@3d
    .restart local v5    # "startOffset":I
    goto :goto_0

    #@3e
    .line 270
    .end local v3    # "paddingTop":I
    .end local v5    # "startOffset":I
    :cond_3
    const/4 v2, 0x0

    #@3f
    .line 271
    .local v2, "paddingBottom":I
    iget v7, p0, Landroid/widget/GridView;->mGroupFlags:I

    #@41
    and-int/lit8 v7, v7, 0x22

    #@43
    if-ne v7, v9, :cond_4

    #@45
    .line 272
    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingBottom()I

    #@48
    move-result v2

    #@49
    .line 274
    :cond_4
    if-lez v0, :cond_5

    #@4b
    .line 275
    invoke-virtual {p0, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    #@4e
    move-result-object v7

    #@4f
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    #@52
    move-result v7

    #@53
    sub-int v5, v7, v6

    #@55
    .line 276
    .restart local v5    # "startOffset":I
    :goto_2
    iget v4, p0, Landroid/widget/GridView;->mFirstPosition:I

    #@57
    .line 277
    .restart local v4    # "position":I
    iget-boolean v7, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    #@59
    if-nez v7, :cond_6

    #@5b
    .line 278
    sub-int/2addr v4, v1

    #@5c
    .line 282
    :goto_3
    invoke-direct {p0, v4, v5}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    #@5f
    .line 283
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    #@62
    move-result v7

    #@63
    invoke-direct {p0, v1, v6, v7}, Landroid/widget/GridView;->correctTooLow(III)V

    #@66
    goto :goto_1

    #@67
    .line 275
    .end local v4    # "position":I
    .end local v5    # "startOffset":I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    #@6a
    move-result v7

    #@6b
    sub-int v5, v7, v2

    #@6d
    .restart local v5    # "startOffset":I
    goto :goto_2

    #@6e
    .line 280
    .restart local v4    # "position":I
    :cond_6
    add-int/lit8 v4, v4, -0x1

    #@70
    goto :goto_3
.end method

.method findMotionRow(I)I
    .locals 4
    .param p1, "y"    # I

    #@0
    .prologue
    .line 522
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    #@3
    move-result v0

    #@4
    .line 523
    .local v0, "childCount":I
    if-lez v0, :cond_3

    #@6
    .line 525
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    #@8
    .line 526
    .local v2, "numColumns":I
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    #@a
    if-nez v3, :cond_1

    #@c
    .line 527
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    #@f
    .line 528
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    #@16
    move-result v3

    #@17
    if-gt p1, v3, :cond_0

    #@19
    .line 529
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    #@1b
    add-int/2addr v3, v1

    #@1c
    return v3

    #@1d
    .line 527
    :cond_0
    add-int/2addr v1, v2

    #@1e
    goto :goto_0

    #@1f
    .line 533
    .end local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v0, -0x1

    #@21
    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_3

    #@23
    .line 534
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    #@2a
    move-result v3

    #@2b
    if-lt p1, v3, :cond_2

    #@2d
    .line 535
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    #@2f
    add-int/2addr v3, v1

    #@30
    return v3

    #@31
    .line 533
    :cond_2
    sub-int/2addr v1, v2

    #@32
    goto :goto_1

    #@33
    .line 540
    .end local v1    # "i":I
    .end local v2    # "numColumns":I
    :cond_3
    const/4 v3, -0x1

    #@34
    return v3
.end method

.method fullScroll(I)Z
    .locals 3
    .param p1, "direction"    # I

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    .line 1798
    const/4 v0, 0x0

    #@2
    .line 1799
    .local v0, "moved":Z
    const/16 v1, 0x21

    #@4
    if-ne p1, v1, :cond_2

    #@6
    .line 1800
    iput v2, p0, Landroid/widget/GridView;->mLayoutMode:I

    #@8
    .line 1801
    const/4 v1, 0x0

    #@9
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    #@c
    .line 1802
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    #@f
    .line 1803
    const/4 v0, 0x1

    #@10
    .line 1811
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    #@12
    .line 1812
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    #@15
    .line 1815
    :cond_1
    return v0

    #@16
    .line 1804
    :cond_2
    const/16 v1, 0x82

    #@18
    if-ne p1, v1, :cond_0

    #@1a
    .line 1805
    iput v2, p0, Landroid/widget/GridView;->mLayoutMode:I

    #@1c
    .line 1806
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    #@1e
    add-int/lit8 v1, v1, -0x1

    #@20
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    #@23
    .line 1807
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    #@26
    .line 1808
    const/4 v0, 0x1

    #@27
    goto :goto_0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 2351
    const-class v0, Landroid/widget/GridView;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    #@0
    .prologue
    .line 169
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    #@0
    .prologue
    .line 170
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    #@2
    return-object v0
.end method

.method public getColumnWidth()I
    .locals 1

    #@0
    .prologue
    .line 2191
    iget v0, p0, Landroid/widget/GridView;->mColumnWidth:I

    #@2
    return v0
.end method

.method public getGravity()I
    .locals 1

    #@0
    .prologue
    .line 2055
    iget v0, p0, Landroid/widget/GridView;->mGravity:I

    #@2
    return v0
.end method

.method public getHorizontalSpacing()I
    .locals 1

    #@0
    .prologue
    .line 2090
    iget v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    #@2
    return v0
.end method

.method public getNumColumns()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    #@0
    .prologue
    .line 2235
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    #@2
    return v0
.end method

.method public getRequestedColumnWidth()I
    .locals 1

    #@0
    .prologue
    .line 2208
    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    #@2
    return v0
.end method

.method public getRequestedHorizontalSpacing()I
    .locals 1

    #@0
    .prologue
    .line 2110
    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    #@2
    return v0
.end method

.method public getStretchMode()I
    .locals 1

    #@0
    .prologue
    .line 2161
    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    #@2
    return v0
.end method

.method public getVerticalSpacing()I
    .locals 1

    #@0
    .prologue
    .line 2141
    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    #@2
    return v0
.end method

.method protected layoutChildren()V
    .locals 35

    #@0
    .prologue
    .line 1155
    move-object/from16 v0, p0

    #@2
    iget-boolean v7, v0, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    #@4
    .line 1156
    .local v7, "blockLayoutRequests":Z
    if-nez v7, :cond_0

    #@6
    .line 1157
    const/16 v32, 0x1

    #@8
    move/from16 v0, v32

    #@a
    move-object/from16 v1, p0

    #@c
    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    #@e
    .line 1161
    :cond_0
    :try_start_0
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    #@11
    .line 1163
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invalidate()V

    #@14
    .line 1165
    move-object/from16 v0, p0

    #@16
    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    #@18
    move-object/from16 v32, v0

    #@1a
    if-nez v32, :cond_2

    #@1c
    .line 1166
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->resetList()V

    #@1f
    .line 1167
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 1401
    if-nez v7, :cond_1

    #@24
    .line 1402
    const/16 v32, 0x0

    #@26
    move/from16 v0, v32

    #@28
    move-object/from16 v1, p0

    #@2a
    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    #@2c
    .line 1168
    :cond_1
    return-void

    #@2d
    .line 1171
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    #@2f
    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    #@31
    move-object/from16 v32, v0

    #@33
    move-object/from16 v0, v32

    #@35
    iget v11, v0, Landroid/graphics/Rect;->top:I

    #@37
    .line 1172
    .local v11, "childrenTop":I
    move-object/from16 v0, p0

    #@39
    iget v0, v0, Landroid/widget/GridView;->mBottom:I

    #@3b
    move/from16 v32, v0

    #@3d
    move-object/from16 v0, p0

    #@3f
    iget v0, v0, Landroid/widget/GridView;->mTop:I

    #@41
    move/from16 v33, v0

    #@43
    sub-int v32, v32, v33

    #@45
    move-object/from16 v0, p0

    #@47
    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    #@49
    move-object/from16 v33, v0

    #@4b
    move-object/from16 v0, v33

    #@4d
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@4f
    move/from16 v33, v0

    #@51
    sub-int v10, v32, v33

    #@53
    .line 1174
    .local v10, "childrenBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getChildCount()I

    #@56
    move-result v9

    #@57
    .line 1176
    .local v9, "childCount":I
    const/4 v13, 0x0

    #@58
    .line 1179
    .local v13, "delta":I
    const/16 v24, 0x0

    #@5a
    .line 1180
    .local v24, "oldSel":Landroid/view/View;
    const/16 v23, 0x0

    #@5c
    .line 1181
    .local v23, "oldFirst":Landroid/view/View;
    const/16 v22, 0x0

    #@5e
    .line 1184
    .local v22, "newSel":Landroid/view/View;
    move-object/from16 v0, p0

    #@60
    iget v0, v0, Landroid/widget/GridView;->mLayoutMode:I

    #@62
    move/from16 v32, v0

    #@64
    packed-switch v32, :pswitch_data_0

    #@67
    .line 1203
    move-object/from16 v0, p0

    #@69
    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    #@6b
    move/from16 v32, v0

    #@6d
    move-object/from16 v0, p0

    #@6f
    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    #@71
    move/from16 v33, v0

    #@73
    sub-int v19, v32, v33

    #@75
    .line 1204
    .local v19, "index":I
    if-ltz v19, :cond_3

    #@77
    move/from16 v0, v19

    #@79
    if-ge v0, v9, :cond_3

    #@7b
    .line 1205
    move-object/from16 v0, p0

    #@7d
    move/from16 v1, v19

    #@7f
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    #@82
    move-result-object v24

    #@83
    .line 1209
    .end local v24    # "oldSel":Landroid/view/View;
    :cond_3
    const/16 v32, 0x0

    #@85
    move-object/from16 v0, p0

    #@87
    move/from16 v1, v32

    #@89
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    #@8c
    move-result-object v23

    #@8d
    .line 1212
    .end local v19    # "index":I
    .end local v22    # "newSel":Landroid/view/View;
    .end local v23    # "oldFirst":Landroid/view/View;
    :cond_4
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    #@8f
    iget-boolean v12, v0, Landroid/widget/GridView;->mDataChanged:Z

    #@91
    .line 1213
    .local v12, "dataChanged":Z
    if-eqz v12, :cond_5

    #@93
    .line 1214
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->handleDataChanged()V

    #@96
    .line 1219
    :cond_5
    move-object/from16 v0, p0

    #@98
    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    #@9a
    move/from16 v32, v0

    #@9c
    if-nez v32, :cond_7

    #@9e
    .line 1220
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->resetList()V

    #@a1
    .line 1221
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a4
    .line 1401
    if-nez v7, :cond_6

    #@a6
    .line 1402
    const/16 v32, 0x0

    #@a8
    move/from16 v0, v32

    #@aa
    move-object/from16 v1, p0

    #@ac
    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    #@ae
    .line 1222
    :cond_6
    return-void

    #@af
    .line 1186
    .end local v12    # "dataChanged":Z
    .restart local v22    # "newSel":Landroid/view/View;
    .restart local v23    # "oldFirst":Landroid/view/View;
    .restart local v24    # "oldSel":Landroid/view/View;
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    #@b1
    iget v0, v0, Landroid/widget/GridView;->mNextSelectedPosition:I

    #@b3
    move/from16 v32, v0

    #@b5
    move-object/from16 v0, p0

    #@b7
    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    #@b9
    move/from16 v33, v0

    #@bb
    sub-int v19, v32, v33

    #@bd
    .line 1187
    .restart local v19    # "index":I
    if-ltz v19, :cond_4

    #@bf
    move/from16 v0, v19

    #@c1
    if-ge v0, v9, :cond_4

    #@c3
    .line 1188
    move-object/from16 v0, p0

    #@c5
    move/from16 v1, v19

    #@c7
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    #@ca
    move-result-object v22

    #@cb
    .local v22, "newSel":Landroid/view/View;
    goto :goto_0

    #@cc
    .line 1197
    .end local v19    # "index":I
    .local v22, "newSel":Landroid/view/View;
    :pswitch_2
    move-object/from16 v0, p0

    #@ce
    iget v0, v0, Landroid/widget/GridView;->mNextSelectedPosition:I

    #@d0
    move/from16 v32, v0

    #@d2
    if-ltz v32, :cond_4

    #@d4
    .line 1198
    move-object/from16 v0, p0

    #@d6
    iget v0, v0, Landroid/widget/GridView;->mNextSelectedPosition:I

    #@d8
    move/from16 v32, v0

    #@da
    move-object/from16 v0, p0

    #@dc
    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    #@de
    move/from16 v33, v0

    #@e0
    sub-int v13, v32, v33

    #@e2
    goto :goto_0

    #@e3
    .line 1225
    .end local v22    # "newSel":Landroid/view/View;
    .end local v23    # "oldFirst":Landroid/view/View;
    .end local v24    # "oldSel":Landroid/view/View;
    .restart local v12    # "dataChanged":Z
    :cond_7
    move-object/from16 v0, p0

    #@e5
    iget v0, v0, Landroid/widget/GridView;->mNextSelectedPosition:I

    #@e7
    move/from16 v32, v0

    #@e9
    move-object/from16 v0, p0

    #@eb
    move/from16 v1, v32

    #@ed
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    #@f0
    .line 1227
    const/4 v4, 0x0

    #@f1
    .line 1228
    .local v4, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v5, 0x0

    #@f2
    .line 1229
    .local v5, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    const/4 v6, -0x1

    #@f3
    .line 1234
    .local v6, "accessibilityFocusPosition":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@f6
    move-result-object v30

    #@f7
    .line 1235
    .local v30, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v30, :cond_a

    #@f9
    .line 1236
    invoke-virtual/range {v30 .. v30}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    #@fc
    move-result-object v16

    #@fd
    .line 1237
    .local v16, "focusHost":Landroid/view/View;
    if-eqz v16, :cond_a

    #@ff
    .line 1238
    move-object/from16 v0, p0

    #@101
    move-object/from16 v1, v16

    #@103
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    #@106
    move-result-object v15

    #@107
    .line 1239
    .local v15, "focusChild":Landroid/view/View;
    if-eqz v15, :cond_a

    #@109
    .line 1240
    if-eqz v12, :cond_8

    #@10b
    invoke-virtual {v15}, Landroid/view/View;->hasTransientState()Z

    #@10e
    move-result v32

    #@10f
    if-nez v32, :cond_8

    #@111
    .line 1241
    move-object/from16 v0, p0

    #@113
    iget-boolean v0, v0, Landroid/widget/GridView;->mAdapterHasStableIds:Z

    #@115
    move/from16 v32, v0

    #@117
    .line 1240
    if-eqz v32, :cond_9

    #@119
    .line 1244
    :cond_8
    move-object/from16 v5, v16

    #@11b
    .line 1245
    .local v5, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    invoke-virtual/range {v30 .. v30}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@11e
    move-result-object v4

    #@11f
    .line 1250
    .end local v4    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v5    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    :cond_9
    move-object/from16 v0, p0

    #@121
    invoke-virtual {v0, v15}, Landroid/widget/GridView;->getPositionForView(Landroid/view/View;)I

    #@124
    move-result v6

    #@125
    .line 1257
    .end local v15    # "focusChild":Landroid/view/View;
    .end local v16    # "focusHost":Landroid/view/View;
    :cond_a
    move-object/from16 v0, p0

    #@127
    iget v14, v0, Landroid/widget/GridView;->mFirstPosition:I

    #@129
    .line 1258
    .local v14, "firstPosition":I
    move-object/from16 v0, p0

    #@12b
    iget-object v0, v0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #@12d
    move-object/from16 v27, v0

    #@12f
    .line 1260
    .local v27, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    if-eqz v12, :cond_b

    #@131
    .line 1261
    const/16 v17, 0x0

    #@133
    .local v17, "i":I
    :goto_1
    move/from16 v0, v17

    #@135
    if-ge v0, v9, :cond_c

    #@137
    .line 1262
    move-object/from16 v0, p0

    #@139
    move/from16 v1, v17

    #@13b
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    #@13e
    move-result-object v32

    #@13f
    add-int v33, v14, v17

    #@141
    move-object/from16 v0, v27

    #@143
    move-object/from16 v1, v32

    #@145
    move/from16 v2, v33

    #@147
    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    #@14a
    .line 1261
    add-int/lit8 v17, v17, 0x1

    #@14c
    goto :goto_1

    #@14d
    .line 1265
    .end local v17    # "i":I
    :cond_b
    move-object/from16 v0, v27

    #@14f
    invoke-virtual {v0, v9, v14}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    #@152
    .line 1269
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->detachAllViewsFromParent()V

    #@155
    .line 1270
    invoke-virtual/range {v27 .. v27}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    #@158
    .line 1272
    move-object/from16 v0, p0

    #@15a
    iget v0, v0, Landroid/widget/GridView;->mLayoutMode:I

    #@15c
    move/from16 v32, v0

    #@15e
    packed-switch v32, :pswitch_data_1

    #@161
    .line 1300
    if-nez v9, :cond_19

    #@163
    .line 1301
    move-object/from16 v0, p0

    #@165
    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    #@167
    move/from16 v32, v0

    #@169
    if-nez v32, :cond_16

    #@16b
    .line 1302
    move-object/from16 v0, p0

    #@16d
    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    #@16f
    move-object/from16 v32, v0

    #@171
    if-eqz v32, :cond_d

    #@173
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isInTouchMode()Z

    #@176
    move-result v32

    #@177
    if-eqz v32, :cond_15

    #@179
    .line 1303
    :cond_d
    const/16 v32, -0x1

    #@17b
    .line 1302
    :goto_2
    move-object/from16 v0, p0

    #@17d
    move/from16 v1, v32

    #@17f
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    #@182
    .line 1304
    move-object/from16 v0, p0

    #@184
    invoke-direct {v0, v11}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    #@187
    move-result-object v29

    #@188
    .line 1326
    .end local v11    # "childrenTop":I
    .local v29, "sel":Landroid/view/View;
    :goto_3
    invoke-virtual/range {v27 .. v27}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    #@18b
    .line 1328
    if-eqz v29, :cond_1e

    #@18d
    .line 1329
    const/16 v32, -0x1

    #@18f
    move-object/from16 v0, p0

    #@191
    move/from16 v1, v32

    #@193
    move-object/from16 v2, v29

    #@195
    invoke-virtual {v0, v1, v2}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    #@198
    .line 1330
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTop()I

    #@19b
    move-result v32

    #@19c
    move/from16 v0, v32

    #@19e
    move-object/from16 v1, p0

    #@1a0
    iput v0, v1, Landroid/widget/GridView;->mSelectedTop:I

    #@1a2
    .line 1356
    :cond_e
    :goto_4
    if-eqz v30, :cond_f

    #@1a4
    .line 1357
    invoke-virtual/range {v30 .. v30}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    #@1a7
    move-result-object v21

    #@1a8
    .line 1358
    .local v21, "newAccessibilityFocusedView":Landroid/view/View;
    if-nez v21, :cond_f

    #@1aa
    .line 1359
    if-eqz v5, :cond_24

    #@1ac
    .line 1360
    invoke-virtual {v5}, Landroid/view/View;->isAttachedToWindow()Z

    #@1af
    move-result v32

    #@1b0
    .line 1359
    if-eqz v32, :cond_24

    #@1b2
    .line 1362
    invoke-virtual {v5}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@1b5
    move-result-object v26

    #@1b6
    .line 1363
    .local v26, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v4, :cond_23

    #@1b8
    if-eqz v26, :cond_23

    #@1ba
    .line 1365
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    #@1bd
    move-result-wide v32

    #@1be
    .line 1364
    invoke-static/range {v32 .. v33}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    #@1c1
    move-result v31

    #@1c2
    .line 1367
    .local v31, "virtualViewId":I
    const/16 v32, 0x40

    #@1c4
    const/16 v33, 0x0

    #@1c6
    .line 1366
    move-object/from16 v0, v26

    #@1c8
    move/from16 v1, v31

    #@1ca
    move/from16 v2, v32

    #@1cc
    move-object/from16 v3, v33

    #@1ce
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    #@1d1
    .line 1384
    .end local v21    # "newAccessibilityFocusedView":Landroid/view/View;
    .end local v26    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v31    # "virtualViewId":I
    :cond_f
    :goto_5
    const/16 v32, 0x0

    #@1d3
    move/from16 v0, v32

    #@1d5
    move-object/from16 v1, p0

    #@1d7
    iput v0, v1, Landroid/widget/GridView;->mLayoutMode:I

    #@1d9
    .line 1385
    const/16 v32, 0x0

    #@1db
    move/from16 v0, v32

    #@1dd
    move-object/from16 v1, p0

    #@1df
    iput-boolean v0, v1, Landroid/widget/GridView;->mDataChanged:Z

    #@1e1
    .line 1386
    move-object/from16 v0, p0

    #@1e3
    iget-object v0, v0, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    #@1e5
    move-object/from16 v32, v0

    #@1e7
    if-eqz v32, :cond_10

    #@1e9
    .line 1387
    move-object/from16 v0, p0

    #@1eb
    iget-object v0, v0, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    #@1ed
    move-object/from16 v32, v0

    #@1ef
    move-object/from16 v0, p0

    #@1f1
    move-object/from16 v1, v32

    #@1f3
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->post(Ljava/lang/Runnable;)Z

    #@1f6
    .line 1388
    const/16 v32, 0x0

    #@1f8
    move-object/from16 v0, v32

    #@1fa
    move-object/from16 v1, p0

    #@1fc
    iput-object v0, v1, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    #@1fe
    .line 1390
    :cond_10
    const/16 v32, 0x0

    #@200
    move/from16 v0, v32

    #@202
    move-object/from16 v1, p0

    #@204
    iput-boolean v0, v1, Landroid/widget/GridView;->mNeedSync:Z

    #@206
    .line 1391
    move-object/from16 v0, p0

    #@208
    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    #@20a
    move/from16 v32, v0

    #@20c
    move-object/from16 v0, p0

    #@20e
    move/from16 v1, v32

    #@210
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    #@213
    .line 1393
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->updateScrollIndicators()V

    #@216
    .line 1395
    move-object/from16 v0, p0

    #@218
    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    #@21a
    move/from16 v32, v0

    #@21c
    if-lez v32, :cond_11

    #@21e
    .line 1396
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    #@221
    .line 1399
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@224
    .line 1401
    if-nez v7, :cond_12

    #@226
    .line 1402
    const/16 v32, 0x0

    #@228
    move/from16 v0, v32

    #@22a
    move-object/from16 v1, p0

    #@22c
    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    #@22e
    .line 1154
    :cond_12
    return-void

    #@22f
    .line 1274
    .end local v29    # "sel":Landroid/view/View;
    .restart local v11    # "childrenTop":I
    :pswitch_3
    if-eqz v22, :cond_13

    #@231
    .line 1275
    :try_start_3
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    #@234
    move-result v32

    #@235
    move-object/from16 v0, p0

    #@237
    move/from16 v1, v32

    #@239
    invoke-direct {v0, v1, v11, v10}, Landroid/widget/GridView;->fillFromSelection(III)Landroid/view/View;

    #@23c
    move-result-object v29

    #@23d
    .restart local v29    # "sel":Landroid/view/View;
    goto/16 :goto_3

    #@23f
    .line 1277
    .end local v29    # "sel":Landroid/view/View;
    :cond_13
    move-object/from16 v0, p0

    #@241
    invoke-direct {v0, v11, v10}, Landroid/widget/GridView;->fillSelection(II)Landroid/view/View;

    #@244
    move-result-object v29

    #@245
    .restart local v29    # "sel":Landroid/view/View;
    goto/16 :goto_3

    #@247
    .line 1281
    .end local v29    # "sel":Landroid/view/View;
    :pswitch_4
    const/16 v32, 0x0

    #@249
    move/from16 v0, v32

    #@24b
    move-object/from16 v1, p0

    #@24d
    iput v0, v1, Landroid/widget/GridView;->mFirstPosition:I

    #@24f
    .line 1282
    move-object/from16 v0, p0

    #@251
    invoke-direct {v0, v11}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    #@254
    move-result-object v29

    #@255
    .line 1283
    .restart local v29    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@258
    goto/16 :goto_3

    #@25a
    .line 1400
    .end local v6    # "accessibilityFocusPosition":I
    .end local v9    # "childCount":I
    .end local v10    # "childrenBottom":I
    .end local v11    # "childrenTop":I
    .end local v12    # "dataChanged":Z
    .end local v13    # "delta":I
    .end local v14    # "firstPosition":I
    .end local v27    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v29    # "sel":Landroid/view/View;
    .end local v30    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :catchall_0
    move-exception v32

    #@25b
    .line 1401
    if-nez v7, :cond_14

    #@25d
    .line 1402
    const/16 v33, 0x0

    #@25f
    move/from16 v0, v33

    #@261
    move-object/from16 v1, p0

    #@263
    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    #@265
    .line 1400
    :cond_14
    throw v32

    #@266
    .line 1286
    .restart local v6    # "accessibilityFocusPosition":I
    .restart local v9    # "childCount":I
    .restart local v10    # "childrenBottom":I
    .restart local v11    # "childrenTop":I
    .restart local v12    # "dataChanged":Z
    .restart local v13    # "delta":I
    .restart local v14    # "firstPosition":I
    .restart local v27    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v30    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :pswitch_5
    :try_start_4
    move-object/from16 v0, p0

    #@268
    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    #@26a
    move/from16 v32, v0

    #@26c
    add-int/lit8 v32, v32, -0x1

    #@26e
    move-object/from16 v0, p0

    #@270
    move/from16 v1, v32

    #@272
    invoke-direct {v0, v1, v10}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    #@275
    move-result-object v29

    #@276
    .line 1287
    .restart local v29    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    #@279
    goto/16 :goto_3

    #@27b
    .line 1290
    .end local v29    # "sel":Landroid/view/View;
    :pswitch_6
    move-object/from16 v0, p0

    #@27d
    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    #@27f
    move/from16 v32, v0

    #@281
    move-object/from16 v0, p0

    #@283
    iget v0, v0, Landroid/widget/GridView;->mSpecificTop:I

    #@285
    move/from16 v33, v0

    #@287
    move-object/from16 v0, p0

    #@289
    move/from16 v1, v32

    #@28b
    move/from16 v2, v33

    #@28d
    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    #@290
    move-result-object v29

    #@291
    .restart local v29    # "sel":Landroid/view/View;
    goto/16 :goto_3

    #@293
    .line 1293
    .end local v29    # "sel":Landroid/view/View;
    :pswitch_7
    move-object/from16 v0, p0

    #@295
    iget v0, v0, Landroid/widget/GridView;->mSyncPosition:I

    #@297
    move/from16 v32, v0

    #@299
    move-object/from16 v0, p0

    #@29b
    iget v0, v0, Landroid/widget/GridView;->mSpecificTop:I

    #@29d
    move/from16 v33, v0

    #@29f
    move-object/from16 v0, p0

    #@2a1
    move/from16 v1, v32

    #@2a3
    move/from16 v2, v33

    #@2a5
    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    #@2a8
    move-result-object v29

    #@2a9
    .restart local v29    # "sel":Landroid/view/View;
    goto/16 :goto_3

    #@2ab
    .line 1297
    .end local v29    # "sel":Landroid/view/View;
    :pswitch_8
    move-object/from16 v0, p0

    #@2ad
    invoke-direct {v0, v13, v11, v10}, Landroid/widget/GridView;->moveSelection(III)Landroid/view/View;

    #@2b0
    move-result-object v29

    #@2b1
    .restart local v29    # "sel":Landroid/view/View;
    goto/16 :goto_3

    #@2b3
    .line 1303
    .end local v29    # "sel":Landroid/view/View;
    :cond_15
    const/16 v32, 0x0

    #@2b5
    goto/16 :goto_2

    #@2b7
    .line 1306
    :cond_16
    move-object/from16 v0, p0

    #@2b9
    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    #@2bb
    move/from16 v32, v0

    #@2bd
    add-int/lit8 v20, v32, -0x1

    #@2bf
    .line 1307
    .local v20, "last":I
    move-object/from16 v0, p0

    #@2c1
    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    #@2c3
    move-object/from16 v32, v0

    #@2c5
    if-eqz v32, :cond_17

    #@2c7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isInTouchMode()Z

    #@2ca
    move-result v32

    #@2cb
    if-eqz v32, :cond_18

    #@2cd
    .line 1308
    :cond_17
    const/16 v32, -0x1

    #@2cf
    .line 1307
    :goto_6
    move-object/from16 v0, p0

    #@2d1
    move/from16 v1, v32

    #@2d3
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    #@2d6
    .line 1309
    move-object/from16 v0, p0

    #@2d8
    move/from16 v1, v20

    #@2da
    invoke-direct {v0, v1, v10}, Landroid/widget/GridView;->fillFromBottom(II)Landroid/view/View;

    #@2dd
    move-result-object v29

    #@2de
    .restart local v29    # "sel":Landroid/view/View;
    goto/16 :goto_3

    #@2e0
    .end local v29    # "sel":Landroid/view/View;
    :cond_18
    move/from16 v32, v20

    #@2e2
    .line 1308
    goto :goto_6

    #@2e3
    .line 1312
    .end local v20    # "last":I
    :cond_19
    move-object/from16 v0, p0

    #@2e5
    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    #@2e7
    move/from16 v32, v0

    #@2e9
    if-ltz v32, :cond_1b

    #@2eb
    move-object/from16 v0, p0

    #@2ed
    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    #@2ef
    move/from16 v32, v0

    #@2f1
    move-object/from16 v0, p0

    #@2f3
    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    #@2f5
    move/from16 v33, v0

    #@2f7
    move/from16 v0, v32

    #@2f9
    move/from16 v1, v33

    #@2fb
    if-ge v0, v1, :cond_1b

    #@2fd
    .line 1313
    move-object/from16 v0, p0

    #@2ff
    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    #@301
    move/from16 v32, v0

    #@303
    if-nez v24, :cond_1a

    #@305
    .end local v11    # "childrenTop":I
    :goto_7
    move-object/from16 v0, p0

    #@307
    move/from16 v1, v32

    #@309
    invoke-direct {v0, v1, v11}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    #@30c
    move-result-object v29

    #@30d
    .restart local v29    # "sel":Landroid/view/View;
    goto/16 :goto_3

    #@30f
    .line 1314
    .end local v29    # "sel":Landroid/view/View;
    .restart local v11    # "childrenTop":I
    :cond_1a
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    #@312
    move-result v11

    #@313
    goto :goto_7

    #@314
    .line 1315
    :cond_1b
    move-object/from16 v0, p0

    #@316
    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    #@318
    move/from16 v32, v0

    #@31a
    move-object/from16 v0, p0

    #@31c
    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    #@31e
    move/from16 v33, v0

    #@320
    move/from16 v0, v32

    #@322
    move/from16 v1, v33

    #@324
    if-ge v0, v1, :cond_1d

    #@326
    .line 1316
    move-object/from16 v0, p0

    #@328
    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    #@32a
    move/from16 v32, v0

    #@32c
    if-nez v23, :cond_1c

    #@32e
    .end local v11    # "childrenTop":I
    :goto_8
    move-object/from16 v0, p0

    #@330
    move/from16 v1, v32

    #@332
    invoke-direct {v0, v1, v11}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    #@335
    move-result-object v29

    #@336
    .restart local v29    # "sel":Landroid/view/View;
    goto/16 :goto_3

    #@338
    .line 1317
    .end local v29    # "sel":Landroid/view/View;
    .restart local v11    # "childrenTop":I
    :cond_1c
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    #@33b
    move-result v11

    #@33c
    goto :goto_8

    #@33d
    .line 1319
    :cond_1d
    const/16 v32, 0x0

    #@33f
    move-object/from16 v0, p0

    #@341
    move/from16 v1, v32

    #@343
    invoke-direct {v0, v1, v11}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    #@346
    move-result-object v29

    #@347
    .restart local v29    # "sel":Landroid/view/View;
    goto/16 :goto_3

    #@349
    .line 1332
    .end local v11    # "childrenTop":I
    :cond_1e
    move-object/from16 v0, p0

    #@34b
    iget v0, v0, Landroid/widget/GridView;->mTouchMode:I

    #@34d
    move/from16 v32, v0

    #@34f
    if-lez v32, :cond_20

    #@351
    .line 1333
    move-object/from16 v0, p0

    #@353
    iget v0, v0, Landroid/widget/GridView;->mTouchMode:I

    #@355
    move/from16 v32, v0

    #@357
    const/16 v33, 0x3

    #@359
    move/from16 v0, v32

    #@35b
    move/from16 v1, v33

    #@35d
    if-ge v0, v1, :cond_1f

    #@35f
    const/16 v18, 0x1

    #@361
    .line 1334
    .local v18, "inTouchMode":Z
    :goto_9
    if-eqz v18, :cond_21

    #@363
    .line 1336
    move-object/from16 v0, p0

    #@365
    iget v0, v0, Landroid/widget/GridView;->mMotionPosition:I

    #@367
    move/from16 v32, v0

    #@369
    move-object/from16 v0, p0

    #@36b
    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    #@36d
    move/from16 v33, v0

    #@36f
    sub-int v32, v32, v33

    #@371
    move-object/from16 v0, p0

    #@373
    move/from16 v1, v32

    #@375
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    #@378
    move-result-object v8

    #@379
    .line 1337
    .local v8, "child":Landroid/view/View;
    if-eqz v8, :cond_e

    #@37b
    .line 1338
    move-object/from16 v0, p0

    #@37d
    iget v0, v0, Landroid/widget/GridView;->mMotionPosition:I

    #@37f
    move/from16 v32, v0

    #@381
    move-object/from16 v0, p0

    #@383
    move/from16 v1, v32

    #@385
    invoke-virtual {v0, v1, v8}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    #@388
    goto/16 :goto_4

    #@38a
    .line 1333
    .end local v8    # "child":Landroid/view/View;
    .end local v18    # "inTouchMode":Z
    :cond_1f
    const/16 v18, 0x0

    #@38c
    .restart local v18    # "inTouchMode":Z
    goto :goto_9

    #@38d
    .line 1332
    .end local v18    # "inTouchMode":Z
    :cond_20
    const/16 v18, 0x0

    #@38f
    .restart local v18    # "inTouchMode":Z
    goto :goto_9

    #@390
    .line 1340
    :cond_21
    move-object/from16 v0, p0

    #@392
    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    #@394
    move/from16 v32, v0

    #@396
    const/16 v33, -0x1

    #@398
    move/from16 v0, v32

    #@39a
    move/from16 v1, v33

    #@39c
    if-eq v0, v1, :cond_22

    #@39e
    .line 1344
    move-object/from16 v0, p0

    #@3a0
    iget v0, v0, Landroid/widget/GridView;->mSelectorPosition:I

    #@3a2
    move/from16 v32, v0

    #@3a4
    move-object/from16 v0, p0

    #@3a6
    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    #@3a8
    move/from16 v33, v0

    #@3aa
    sub-int v32, v32, v33

    #@3ac
    move-object/from16 v0, p0

    #@3ae
    move/from16 v1, v32

    #@3b0
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    #@3b3
    move-result-object v8

    #@3b4
    .line 1345
    .restart local v8    # "child":Landroid/view/View;
    if-eqz v8, :cond_e

    #@3b6
    .line 1346
    move-object/from16 v0, p0

    #@3b8
    iget v0, v0, Landroid/widget/GridView;->mSelectorPosition:I

    #@3ba
    move/from16 v32, v0

    #@3bc
    move-object/from16 v0, p0

    #@3be
    move/from16 v1, v32

    #@3c0
    invoke-virtual {v0, v1, v8}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    #@3c3
    goto/16 :goto_4

    #@3c5
    .line 1350
    .end local v8    # "child":Landroid/view/View;
    :cond_22
    const/16 v32, 0x0

    #@3c7
    move/from16 v0, v32

    #@3c9
    move-object/from16 v1, p0

    #@3cb
    iput v0, v1, Landroid/widget/GridView;->mSelectedTop:I

    #@3cd
    .line 1351
    move-object/from16 v0, p0

    #@3cf
    iget-object v0, v0, Landroid/widget/GridView;->mSelectorRect:Landroid/graphics/Rect;

    #@3d1
    move-object/from16 v32, v0

    #@3d3
    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Rect;->setEmpty()V

    #@3d6
    goto/16 :goto_4

    #@3d8
    .line 1369
    .end local v18    # "inTouchMode":Z
    .restart local v21    # "newAccessibilityFocusedView":Landroid/view/View;
    .restart local v26    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_23
    invoke-virtual {v5}, Landroid/view/View;->requestAccessibilityFocus()Z

    #@3db
    goto/16 :goto_5

    #@3dd
    .line 1371
    .end local v26    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_24
    const/16 v32, -0x1

    #@3df
    move/from16 v0, v32

    #@3e1
    if-eq v6, v0, :cond_f

    #@3e3
    .line 1374
    move-object/from16 v0, p0

    #@3e5
    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    #@3e7
    move/from16 v32, v0

    #@3e9
    sub-int v32, v6, v32

    #@3eb
    .line 1375
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getChildCount()I

    #@3ee
    move-result v33

    #@3ef
    add-int/lit8 v33, v33, -0x1

    #@3f1
    .line 1374
    const/16 v34, 0x0

    #@3f3
    .line 1373
    move/from16 v0, v32

    #@3f5
    move/from16 v1, v34

    #@3f7
    move/from16 v2, v33

    #@3f9
    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    #@3fc
    move-result v25

    #@3fd
    .line 1376
    .local v25, "position":I
    move-object/from16 v0, p0

    #@3ff
    move/from16 v1, v25

    #@401
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    #@404
    move-result-object v28

    #@405
    .line 1377
    .local v28, "restoreView":Landroid/view/View;
    if-eqz v28, :cond_f

    #@407
    .line 1378
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->requestAccessibilityFocus()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@40a
    goto/16 :goto_5

    #@40c
    .line 1184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    #@41c
    .line 1272
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 3
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 235
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    #@3
    .line 236
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    #@5
    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 237
    :cond_0
    return v2

    #@c
    .line 240
    :cond_1
    if-ltz p1, :cond_2

    #@e
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    #@10
    if-lt p1, v1, :cond_3

    #@12
    .line 241
    :cond_2
    return v2

    #@13
    .line 243
    :cond_3
    return p1
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 9
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1946
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    #@3
    .line 1948
    const/4 v1, -0x1

    #@4
    .line 1949
    .local v1, "closestChildIndex":I
    if-eqz p1, :cond_2

    #@6
    if-eqz p3, :cond_2

    #@8
    .line 1950
    iget v7, p0, Landroid/widget/GridView;->mScrollX:I

    #@a
    iget v8, p0, Landroid/widget/GridView;->mScrollY:I

    #@c
    invoke-virtual {p3, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    #@f
    .line 1954
    iget-object v6, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    #@11
    .line 1955
    .local v6, "otherRect":Landroid/graphics/Rect;
    const v4, 0x7fffffff

    #@14
    .line 1956
    .local v4, "minDistance":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    #@17
    move-result v0

    #@18
    .line 1957
    .local v0, "childCount":I
    const/4 v3, 0x0

    #@19
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    #@1b
    .line 1959
    invoke-direct {p0, v3, p2}, Landroid/widget/GridView;->isCandidateSelection(II)Z

    #@1e
    move-result v7

    #@1f
    if-nez v7, :cond_1

    #@21
    .line 1957
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@23
    goto :goto_0

    #@24
    .line 1963
    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    #@27
    move-result-object v5

    #@28
    .line 1964
    .local v5, "other":Landroid/view/View;
    invoke-virtual {v5, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    #@2b
    .line 1965
    invoke-virtual {p0, v5, v6}, Landroid/widget/GridView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@2e
    .line 1966
    invoke-static {p3, v6, p2}, Landroid/widget/GridView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    #@31
    move-result v2

    #@32
    .line 1968
    .local v2, "distance":I
    if-ge v2, v4, :cond_0

    #@34
    .line 1969
    move v4, v2

    #@35
    .line 1970
    move v1, v3

    #@36
    goto :goto_1

    #@37
    .line 1975
    .end local v0    # "childCount":I
    .end local v2    # "distance":I
    .end local v3    # "i":I
    .end local v4    # "minDistance":I
    .end local v5    # "other":Landroid/view/View;
    .end local v6    # "otherRect":Landroid/graphics/Rect;
    :cond_2
    if-ltz v1, :cond_3

    #@39
    .line 1976
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    #@3b
    add-int/2addr v7, v1

    #@3c
    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setSelection(I)V

    #@3f
    .line 1945
    :goto_2
    return-void

    #@40
    .line 1978
    :cond_3
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    #@43
    goto :goto_2
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    .line 2400
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    .line 2402
    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    #@6
    move-result v7

    #@7
    .line 2403
    .local v7, "count":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    #@a
    move-result v6

    #@b
    .line 2404
    .local v6, "columnsCount":I
    div-int v11, v7, v6

    #@d
    .line 2408
    .local v11, "rowsCount":I
    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    #@f
    if-nez v1, :cond_0

    #@11
    .line 2409
    rem-int v2, p2, v6

    #@13
    .line 2410
    .local v2, "column":I
    div-int v0, p2, v6

    #@15
    .line 2418
    .local v0, "row":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@18
    move-result-object v10

    #@19
    check-cast v10, Landroid/widget/AbsListView$LayoutParams;

    #@1b
    .line 2419
    .local v10, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v10, :cond_1

    #@1d
    iget v1, v10, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    #@1f
    const/4 v3, -0x2

    #@20
    if-eq v1, v3, :cond_1

    #@22
    const/4 v4, 0x1

    #@23
    .line 2420
    .local v4, "isHeading":Z
    :goto_1
    invoke-virtual {p0, p2}, Landroid/widget/GridView;->isItemChecked(I)Z

    #@26
    move-result v5

    #@27
    .line 2422
    .local v5, "isSelected":Z
    const/4 v1, 0x1

    #@28
    const/4 v3, 0x1

    #@29
    .line 2421
    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@2c
    move-result-object v9

    #@2d
    .line 2423
    .local v9, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    invoke-virtual {p3, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    #@30
    .line 2399
    return-void

    #@31
    .line 2412
    .end local v0    # "row":I
    .end local v2    # "column":I
    .end local v4    # "isHeading":Z
    .end local v5    # "isSelected":Z
    .end local v9    # "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .end local v10    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_0
    add-int/lit8 v1, v7, -0x1

    #@33
    sub-int v8, v1, p2

    #@35
    .line 2414
    .local v8, "invertedIndex":I
    add-int/lit8 v1, v6, -0x1

    #@37
    rem-int v3, v8, v6

    #@39
    sub-int v2, v1, v3

    #@3b
    .line 2415
    .restart local v2    # "column":I
    add-int/lit8 v1, v11, -0x1

    #@3d
    div-int v3, v8, v6

    #@3f
    sub-int v0, v1, v3

    #@41
    .restart local v0    # "row":I
    goto :goto_0

    #@42
    .line 2419
    .end local v8    # "invertedIndex":I
    .restart local v10    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    const/4 v4, 0x0

    #@43
    .restart local v4    # "isHeading":Z
    goto :goto_1
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2357
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@4
    .line 2359
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    #@7
    move-result v1

    #@8
    .line 2360
    .local v1, "columnsCount":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    #@b
    move-result v4

    #@c
    div-int v2, v4, v1

    #@e
    .line 2361
    .local v2, "rowsCount":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getSelectionModeForAccessibility()I

    #@11
    move-result v3

    #@12
    .line 2362
    .local v3, "selectionMode":I
    invoke-static {v2, v1, v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@15
    move-result-object v0

    #@16
    .line 2364
    .local v0, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    #@19
    .line 2366
    if-gtz v1, :cond_0

    #@1b
    if-lez v2, :cond_1

    #@1d
    .line 2367
    :cond_0
    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@1f
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@22
    .line 2356
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 1620
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 1625
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 1630
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method protected onMeasure(II)V
    .locals 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 1040
    invoke-super/range {p0 .. p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    #@3
    .line 1042
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@6
    move-result v17

    #@7
    .line 1043
    .local v17, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@a
    move-result v11

    #@b
    .line 1044
    .local v11, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@e
    move-result v18

    #@f
    .line 1045
    .local v18, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@12
    move-result v12

    #@13
    .line 1047
    .local v12, "heightSize":I
    if-nez v17, :cond_0

    #@15
    .line 1048
    move-object/from16 v0, p0

    #@17
    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    #@19
    move/from16 v19, v0

    #@1b
    if-lez v19, :cond_9

    #@1d
    .line 1049
    move-object/from16 v0, p0

    #@1f
    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    #@21
    move/from16 v19, v0

    #@23
    move-object/from16 v0, p0

    #@25
    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    #@27
    move-object/from16 v20, v0

    #@29
    move-object/from16 v0, v20

    #@2b
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@2d
    move/from16 v20, v0

    #@2f
    add-int v19, v19, v20

    #@31
    move-object/from16 v0, p0

    #@33
    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    #@35
    move-object/from16 v20, v0

    #@37
    move-object/from16 v0, v20

    #@39
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@3b
    move/from16 v20, v0

    #@3d
    add-int v18, v19, v20

    #@3f
    .line 1053
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalScrollbarWidth()I

    #@42
    move-result v19

    #@43
    add-int v18, v18, v19

    #@45
    .line 1056
    :cond_0
    move-object/from16 v0, p0

    #@47
    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    #@49
    move-object/from16 v19, v0

    #@4b
    move-object/from16 v0, v19

    #@4d
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@4f
    move/from16 v19, v0

    #@51
    sub-int v19, v18, v19

    #@53
    move-object/from16 v0, p0

    #@55
    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    #@57
    move-object/from16 v20, v0

    #@59
    move-object/from16 v0, v20

    #@5b
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@5d
    move/from16 v20, v0

    #@5f
    sub-int v7, v19, v20

    #@61
    .line 1057
    .local v7, "childWidth":I
    move-object/from16 v0, p0

    #@63
    invoke-direct {v0, v7}, Landroid/widget/GridView;->determineColumns(I)Z

    #@66
    move-result v10

    #@67
    .line 1059
    .local v10, "didNotInitiallyFit":Z
    const/4 v4, 0x0

    #@68
    .line 1060
    .local v4, "childHeight":I
    const/4 v6, 0x0

    #@69
    .line 1062
    .local v6, "childState":I
    move-object/from16 v0, p0

    #@6b
    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    #@6d
    move-object/from16 v19, v0

    #@6f
    if-nez v19, :cond_a

    #@71
    const/16 v19, 0x0

    #@73
    :goto_1
    move/from16 v0, v19

    #@75
    move-object/from16 v1, p0

    #@77
    iput v0, v1, Landroid/widget/GridView;->mItemCount:I

    #@79
    .line 1063
    move-object/from16 v0, p0

    #@7b
    iget v9, v0, Landroid/widget/GridView;->mItemCount:I

    #@7d
    .line 1064
    .local v9, "count":I
    if-lez v9, :cond_2

    #@7f
    .line 1065
    move-object/from16 v0, p0

    #@81
    iget-object v0, v0, Landroid/widget/GridView;->mIsScrap:[Z

    #@83
    move-object/from16 v19, v0

    #@85
    const/16 v20, 0x0

    #@87
    move-object/from16 v0, p0

    #@89
    move/from16 v1, v20

    #@8b
    move-object/from16 v2, v19

    #@8d
    invoke-virtual {v0, v1, v2}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    #@90
    move-result-object v3

    #@91
    .line 1067
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@94
    move-result-object v16

    #@95
    check-cast v16, Landroid/widget/AbsListView$LayoutParams;

    #@97
    .line 1068
    .local v16, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v16, :cond_1

    #@99
    .line 1069
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@9c
    move-result-object v16

    #@9d
    .end local v16    # "p":Landroid/widget/AbsListView$LayoutParams;
    check-cast v16, Landroid/widget/AbsListView$LayoutParams;

    #@9f
    .line 1070
    .restart local v16    # "p":Landroid/widget/AbsListView$LayoutParams;
    move-object/from16 v0, v16

    #@a1
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@a4
    .line 1072
    :cond_1
    move-object/from16 v0, p0

    #@a6
    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    #@a8
    move-object/from16 v19, v0

    #@aa
    const/16 v20, 0x0

    #@ac
    invoke-interface/range {v19 .. v20}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    #@af
    move-result v19

    #@b0
    move/from16 v0, v19

    #@b2
    move-object/from16 v1, v16

    #@b4
    iput v0, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    #@b6
    .line 1073
    const/16 v19, 0x1

    #@b8
    move/from16 v0, v19

    #@ba
    move-object/from16 v1, v16

    #@bc
    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    #@be
    .line 1076
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@c1
    move-result v19

    #@c2
    .line 1077
    const/16 v20, 0x0

    #@c4
    .line 1076
    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    #@c7
    move-result v19

    #@c8
    .line 1077
    move-object/from16 v0, v16

    #@ca
    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    #@cc
    move/from16 v20, v0

    #@ce
    const/16 v21, 0x0

    #@d0
    .line 1075
    move/from16 v0, v19

    #@d2
    move/from16 v1, v21

    #@d4
    move/from16 v2, v20

    #@d6
    invoke-static {v0, v1, v2}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    #@d9
    move-result v5

    #@da
    .line 1079
    .local v5, "childHeightSpec":I
    move-object/from16 v0, p0

    #@dc
    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    #@de
    move/from16 v19, v0

    #@e0
    const/high16 v20, 0x40000000    # 2.0f

    #@e2
    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@e5
    move-result v19

    #@e6
    move-object/from16 v0, v16

    #@e8
    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    #@ea
    move/from16 v20, v0

    #@ec
    const/16 v21, 0x0

    #@ee
    .line 1078
    move/from16 v0, v19

    #@f0
    move/from16 v1, v21

    #@f2
    move/from16 v2, v20

    #@f4
    invoke-static {v0, v1, v2}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    #@f7
    move-result v8

    #@f8
    .line 1080
    .local v8, "childWidthSpec":I
    invoke-virtual {v3, v8, v5}, Landroid/view/View;->measure(II)V

    #@fb
    .line 1082
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    #@fe
    move-result v4

    #@ff
    .line 1083
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    #@102
    move-result v19

    #@103
    move/from16 v0, v19

    #@105
    invoke-static {v6, v0}, Landroid/widget/GridView;->combineMeasuredStates(II)I

    #@108
    move-result v6

    #@109
    .line 1085
    move-object/from16 v0, p0

    #@10b
    iget-object v0, v0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #@10d
    move-object/from16 v19, v0

    #@10f
    move-object/from16 v0, v16

    #@111
    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    #@113
    move/from16 v20, v0

    #@115
    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    #@118
    move-result v19

    #@119
    if-eqz v19, :cond_2

    #@11b
    .line 1086
    move-object/from16 v0, p0

    #@11d
    iget-object v0, v0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #@11f
    move-object/from16 v19, v0

    #@121
    const/16 v20, -0x1

    #@123
    move-object/from16 v0, v19

    #@125
    move/from16 v1, v20

    #@127
    invoke-virtual {v0, v3, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    #@12a
    .line 1090
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "childHeightSpec":I
    .end local v8    # "childWidthSpec":I
    .end local v16    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_2
    if-nez v11, :cond_3

    #@12c
    .line 1091
    move-object/from16 v0, p0

    #@12e
    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    #@130
    move-object/from16 v19, v0

    #@132
    move-object/from16 v0, v19

    #@134
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@136
    move/from16 v19, v0

    #@138
    move-object/from16 v0, p0

    #@13a
    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    #@13c
    move-object/from16 v20, v0

    #@13e
    move-object/from16 v0, v20

    #@140
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@142
    move/from16 v20, v0

    #@144
    add-int v19, v19, v20

    #@146
    add-int v19, v19, v4

    #@148
    .line 1092
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    #@14b
    move-result v20

    #@14c
    mul-int/lit8 v20, v20, 0x2

    #@14e
    .line 1091
    add-int v12, v19, v20

    #@150
    .line 1095
    :cond_3
    const/high16 v19, -0x80000000

    #@152
    move/from16 v0, v19

    #@154
    if-ne v11, v0, :cond_6

    #@156
    .line 1096
    move-object/from16 v0, p0

    #@158
    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    #@15a
    move-object/from16 v19, v0

    #@15c
    move-object/from16 v0, v19

    #@15e
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@160
    move/from16 v19, v0

    #@162
    move-object/from16 v0, p0

    #@164
    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    #@166
    move-object/from16 v20, v0

    #@168
    move-object/from16 v0, v20

    #@16a
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@16c
    move/from16 v20, v0

    #@16e
    add-int v15, v19, v20

    #@170
    .line 1098
    .local v15, "ourSize":I
    move-object/from16 v0, p0

    #@172
    iget v14, v0, Landroid/widget/GridView;->mNumColumns:I

    #@174
    .line 1099
    .local v14, "numColumns":I
    const/4 v13, 0x0

    #@175
    .local v13, "i":I
    :goto_2
    if-ge v13, v9, :cond_5

    #@177
    .line 1100
    add-int/2addr v15, v4

    #@178
    .line 1101
    add-int v19, v13, v14

    #@17a
    move/from16 v0, v19

    #@17c
    if-ge v0, v9, :cond_4

    #@17e
    .line 1102
    move-object/from16 v0, p0

    #@180
    iget v0, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    #@182
    move/from16 v19, v0

    #@184
    add-int v15, v15, v19

    #@186
    .line 1104
    :cond_4
    if-lt v15, v12, :cond_b

    #@188
    .line 1105
    move v15, v12

    #@189
    .line 1109
    :cond_5
    move v12, v15

    #@18a
    .line 1112
    .end local v13    # "i":I
    .end local v14    # "numColumns":I
    .end local v15    # "ourSize":I
    :cond_6
    const/high16 v19, -0x80000000

    #@18c
    move/from16 v0, v17

    #@18e
    move/from16 v1, v19

    #@190
    if-ne v0, v1, :cond_8

    #@192
    move-object/from16 v0, p0

    #@194
    iget v0, v0, Landroid/widget/GridView;->mRequestedNumColumns:I

    #@196
    move/from16 v19, v0

    #@198
    const/16 v20, -0x1

    #@19a
    move/from16 v0, v19

    #@19c
    move/from16 v1, v20

    #@19e
    if-eq v0, v1, :cond_8

    #@1a0
    .line 1113
    move-object/from16 v0, p0

    #@1a2
    iget v0, v0, Landroid/widget/GridView;->mRequestedNumColumns:I

    #@1a4
    move/from16 v19, v0

    #@1a6
    move-object/from16 v0, p0

    #@1a8
    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    #@1aa
    move/from16 v20, v0

    #@1ac
    mul-int v19, v19, v20

    #@1ae
    .line 1114
    move-object/from16 v0, p0

    #@1b0
    iget v0, v0, Landroid/widget/GridView;->mRequestedNumColumns:I

    #@1b2
    move/from16 v20, v0

    #@1b4
    add-int/lit8 v20, v20, -0x1

    #@1b6
    move-object/from16 v0, p0

    #@1b8
    iget v0, v0, Landroid/widget/GridView;->mHorizontalSpacing:I

    #@1ba
    move/from16 v21, v0

    #@1bc
    mul-int v20, v20, v21

    #@1be
    .line 1113
    add-int v19, v19, v20

    #@1c0
    .line 1115
    move-object/from16 v0, p0

    #@1c2
    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    #@1c4
    move-object/from16 v20, v0

    #@1c6
    move-object/from16 v0, v20

    #@1c8
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@1ca
    move/from16 v20, v0

    #@1cc
    .line 1113
    add-int v19, v19, v20

    #@1ce
    .line 1115
    move-object/from16 v0, p0

    #@1d0
    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    #@1d2
    move-object/from16 v20, v0

    #@1d4
    move-object/from16 v0, v20

    #@1d6
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@1d8
    move/from16 v20, v0

    #@1da
    .line 1113
    add-int v15, v19, v20

    #@1dc
    .line 1116
    .restart local v15    # "ourSize":I
    move/from16 v0, v18

    #@1de
    if-gt v15, v0, :cond_7

    #@1e0
    if-eqz v10, :cond_8

    #@1e2
    .line 1117
    :cond_7
    const/high16 v19, 0x1000000

    #@1e4
    or-int v18, v18, v19

    #@1e6
    .line 1121
    .end local v15    # "ourSize":I
    :cond_8
    move-object/from16 v0, p0

    #@1e8
    move/from16 v1, v18

    #@1ea
    invoke-virtual {v0, v1, v12}, Landroid/widget/GridView;->setMeasuredDimension(II)V

    #@1ed
    .line 1122
    move/from16 v0, p1

    #@1ef
    move-object/from16 v1, p0

    #@1f1
    iput v0, v1, Landroid/widget/GridView;->mWidthMeasureSpec:I

    #@1f3
    .line 1038
    return-void

    #@1f4
    .line 1051
    .end local v4    # "childHeight":I
    .end local v6    # "childState":I
    .end local v7    # "childWidth":I
    .end local v9    # "count":I
    .end local v10    # "didNotInitiallyFit":Z
    :cond_9
    move-object/from16 v0, p0

    #@1f6
    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    #@1f8
    move-object/from16 v19, v0

    #@1fa
    move-object/from16 v0, v19

    #@1fc
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@1fe
    move/from16 v19, v0

    #@200
    move-object/from16 v0, p0

    #@202
    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    #@204
    move-object/from16 v20, v0

    #@206
    move-object/from16 v0, v20

    #@208
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@20a
    move/from16 v20, v0

    #@20c
    add-int v18, v19, v20

    #@20e
    goto/16 :goto_0

    #@210
    .line 1062
    .restart local v4    # "childHeight":I
    .restart local v6    # "childState":I
    .restart local v7    # "childWidth":I
    .restart local v10    # "didNotInitiallyFit":Z
    :cond_a
    move-object/from16 v0, p0

    #@212
    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    #@214
    move-object/from16 v19, v0

    #@216
    invoke-interface/range {v19 .. v19}, Landroid/widget/ListAdapter;->getCount()I

    #@219
    move-result v19

    #@21a
    goto/16 :goto_1

    #@21c
    .line 1099
    .restart local v9    # "count":I
    .restart local v13    # "i":I
    .restart local v14    # "numColumns":I
    .restart local v15    # "ourSize":I
    :cond_b
    add-int/2addr v13, v14

    #@21d
    goto/16 :goto_2
.end method

.method pageScroll(I)Z
    .locals 5
    .param p1, "direction"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1772
    const/4 v0, -0x1

    #@2
    .line 1774
    .local v0, "nextPage":I
    const/16 v1, 0x21

    #@4
    if-ne p1, v1, :cond_1

    #@6
    .line 1775
    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    #@8
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    #@b
    move-result v2

    #@c
    sub-int/2addr v1, v2

    #@d
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    #@10
    move-result v0

    #@11
    .line 1780
    :cond_0
    :goto_0
    if-ltz v0, :cond_2

    #@13
    .line 1781
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectionInt(I)V

    #@16
    .line 1782
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    #@19
    .line 1783
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    #@1c
    .line 1784
    const/4 v1, 0x1

    #@1d
    return v1

    #@1e
    .line 1776
    :cond_1
    const/16 v1, 0x82

    #@20
    if-ne p1, v1, :cond_0

    #@22
    .line 1777
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    #@24
    add-int/lit8 v1, v1, -0x1

    #@26
    iget v2, p0, Landroid/widget/GridView;->mSelectedPosition:I

    #@28
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    #@2b
    move-result v3

    #@2c
    add-int/2addr v2, v3

    #@2d
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@30
    move-result v0

    #@31
    goto :goto_0

    #@32
    .line 1787
    :cond_2
    return v4
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 7
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 2374
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 2375
    return v6

    #@9
    .line 2378
    :cond_0
    packed-switch p1, :pswitch_data_0

    #@c
    .line 2394
    :cond_1
    return v5

    #@d
    .line 2382
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    #@10
    move-result v0

    #@11
    .line 2383
    .local v0, "numColumns":I
    const-string/jumbo v3, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    #@14
    const/4 v4, -0x1

    #@15
    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@18
    move-result v2

    #@19
    .line 2384
    .local v2, "row":I
    mul-int v3, v2, v0

    #@1b
    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    #@1e
    move-result v4

    #@1f
    add-int/lit8 v4, v4, -0x1

    #@21
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@24
    move-result v1

    #@25
    .line 2385
    .local v1, "position":I
    if-ltz v2, :cond_1

    #@27
    .line 2388
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->smoothScrollToPosition(I)V

    #@2a
    .line 2389
    return v6

    #@2b
    .line 2378
    nop

    #@2c
    :pswitch_data_0
    .packed-switch 0x1020037
        :pswitch_0
    .end packed-switch
.end method

.method sequenceScroll(I)Z
    .locals 12
    .param p1, "direction"    # I

    #@0
    .prologue
    const/4 v11, 0x6

    #@1
    const/4 v10, 0x0

    #@2
    .line 1891
    iget v5, p0, Landroid/widget/GridView;->mSelectedPosition:I

    #@4
    .line 1892
    .local v5, "selectedPosition":I
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    #@6
    .line 1893
    .local v4, "numColumns":I
    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    #@8
    .line 1897
    .local v0, "count":I
    iget-boolean v8, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    #@a
    if-nez v8, :cond_3

    #@c
    .line 1898
    div-int v8, v5, v4

    #@e
    mul-int v7, v8, v4

    #@10
    .line 1899
    .local v7, "startOfRow":I
    add-int v8, v7, v4

    #@12
    add-int/lit8 v8, v8, -0x1

    #@14
    add-int/lit8 v9, v0, -0x1

    #@16
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    #@19
    move-result v1

    #@1a
    .line 1906
    .local v1, "endOfRow":I
    :goto_0
    const/4 v3, 0x0

    #@1b
    .line 1907
    .local v3, "moved":Z
    const/4 v6, 0x0

    #@1c
    .line 1908
    .local v6, "showScroll":Z
    packed-switch p1, :pswitch_data_0

    #@1f
    .line 1932
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    #@21
    .line 1933
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    #@24
    move-result v8

    #@25
    invoke-virtual {p0, v8}, Landroid/widget/GridView;->playSoundEffect(I)V

    #@28
    .line 1934
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    #@2b
    .line 1937
    :cond_1
    if-eqz v6, :cond_2

    #@2d
    .line 1938
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    #@30
    .line 1941
    :cond_2
    return v3

    #@31
    .line 1901
    .end local v1    # "endOfRow":I
    .end local v3    # "moved":Z
    .end local v6    # "showScroll":Z
    .end local v7    # "startOfRow":I
    :cond_3
    add-int/lit8 v8, v0, -0x1

    #@33
    sub-int v2, v8, v5

    #@35
    .line 1902
    .local v2, "invertedSelection":I
    add-int/lit8 v8, v0, -0x1

    #@37
    div-int v9, v2, v4

    #@39
    mul-int/2addr v9, v4

    #@3a
    sub-int v1, v8, v9

    #@3c
    .line 1903
    .restart local v1    # "endOfRow":I
    sub-int v8, v1, v4

    #@3e
    add-int/lit8 v8, v8, 0x1

    #@40
    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    #@43
    move-result v7

    #@44
    .restart local v7    # "startOfRow":I
    goto :goto_0

    #@45
    .line 1910
    .end local v2    # "invertedSelection":I
    .restart local v3    # "moved":Z
    .restart local v6    # "showScroll":Z
    :pswitch_0
    add-int/lit8 v8, v0, -0x1

    #@47
    if-ge v5, v8, :cond_0

    #@49
    .line 1912
    iput v11, p0, Landroid/widget/GridView;->mLayoutMode:I

    #@4b
    .line 1913
    add-int/lit8 v8, v5, 0x1

    #@4d
    invoke-virtual {p0, v8}, Landroid/widget/GridView;->setSelectionInt(I)V

    #@50
    .line 1914
    const/4 v3, 0x1

    #@51
    .line 1916
    if-ne v5, v1, :cond_4

    #@53
    const/4 v6, 0x1

    #@54
    goto :goto_1

    #@55
    :cond_4
    const/4 v6, 0x0

    #@56
    goto :goto_1

    #@57
    .line 1921
    :pswitch_1
    if-lez v5, :cond_0

    #@59
    .line 1923
    iput v11, p0, Landroid/widget/GridView;->mLayoutMode:I

    #@5b
    .line 1924
    add-int/lit8 v8, v5, -0x1

    #@5d
    invoke-virtual {p0, v8}, Landroid/widget/GridView;->setSelectionInt(I)V

    #@60
    .line 1925
    const/4 v3, 0x1

    #@61
    .line 1927
    if-ne v5, v7, :cond_5

    #@63
    const/4 v6, 0x1

    #@64
    goto :goto_1

    #@65
    :cond_5
    const/4 v6, 0x0

    #@66
    goto :goto_1

    #@67
    .line 1908
    nop

    #@68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 190
    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    #@4
    if-eqz v1, :cond_0

    #@6
    iget-object v1, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 191
    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    #@c
    iget-object v2, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    #@e
    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    #@11
    .line 194
    :cond_0
    invoke-virtual {p0}, Landroid/widget/GridView;->resetList()V

    #@14
    .line 195
    iget-object v1, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #@16
    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    #@19
    .line 196
    iput-object p1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    #@1b
    .line 198
    const/4 v1, -0x1

    #@1c
    iput v1, p0, Landroid/widget/GridView;->mOldSelectedPosition:I

    #@1e
    .line 199
    const-wide/high16 v2, -0x8000000000000000L

    #@20
    iput-wide v2, p0, Landroid/widget/GridView;->mOldSelectedRowId:J

    #@22
    .line 202
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@25
    .line 204
    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    #@27
    if-eqz v1, :cond_2

    #@29
    .line 205
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    #@2b
    iput v1, p0, Landroid/widget/GridView;->mOldItemCount:I

    #@2d
    .line 206
    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    #@2f
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    #@32
    move-result v1

    #@33
    iput v1, p0, Landroid/widget/GridView;->mItemCount:I

    #@35
    .line 207
    iput-boolean v5, p0, Landroid/widget/GridView;->mDataChanged:Z

    #@37
    .line 208
    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    #@3a
    .line 210
    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    #@3c
    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    #@3f
    iput-object v1, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    #@41
    .line 211
    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    #@43
    iget-object v2, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    #@45
    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    #@48
    .line 213
    iget-object v1, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #@4a
    iget-object v2, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    #@4c
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    #@4f
    move-result v2

    #@50
    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    #@53
    .line 216
    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    #@55
    if-eqz v1, :cond_1

    #@57
    .line 217
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    #@59
    add-int/lit8 v1, v1, -0x1

    #@5b
    invoke-virtual {p0, v1, v4}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    #@5e
    move-result v0

    #@5f
    .line 221
    .local v0, "position":I
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    #@62
    .line 222
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    #@65
    .line 223
    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    #@68
    .line 230
    .end local v0    # "position":I
    :goto_1
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    #@6b
    .line 189
    return-void

    #@6c
    .line 219
    :cond_1
    invoke-virtual {p0, v4, v5}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    #@6f
    move-result v0

    #@70
    .restart local v0    # "position":I
    goto :goto_0

    #@71
    .line 225
    .end local v0    # "position":I
    :cond_2
    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    #@74
    .line 227
    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    #@77
    goto :goto_1
.end method

.method public setColumnWidth(I)V
    .locals 1
    .param p1, "columnWidth"    # I

    #@0
    .prologue
    .line 2172
    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 2173
    iput p1, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    #@6
    .line 2174
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    #@9
    .line 2171
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    #@0
    .prologue
    .line 2041
    iget v0, p0, Landroid/widget/GridView;->mGravity:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 2042
    iput p1, p0, Landroid/widget/GridView;->mGravity:I

    #@6
    .line 2043
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    #@9
    .line 2040
    :cond_0
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1
    .param p1, "horizontalSpacing"    # I

    #@0
    .prologue
    .line 2068
    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 2069
    iput p1, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    #@6
    .line 2070
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    #@9
    .line 2067
    :cond_0
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1
    .param p1, "numColumns"    # I

    #@0
    .prologue
    .line 2219
    iget v0, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 2220
    iput p1, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    #@6
    .line 2221
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    #@9
    .line 2218
    :cond_0
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    #@3
    .line 179
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 1576
    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_1

    #@6
    .line 1577
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    #@9
    .line 1581
    :goto_0
    const/4 v0, 0x2

    #@a
    iput v0, p0, Landroid/widget/GridView;->mLayoutMode:I

    #@c
    .line 1582
    iget-object v0, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 1583
    iget-object v0, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@12
    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    #@15
    .line 1585
    :cond_0
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    #@18
    .line 1575
    return-void

    #@19
    .line 1579
    :cond_1
    iput p1, p0, Landroid/widget/GridView;->mResurrectToPosition:I

    #@1b
    goto :goto_0
.end method

.method setSelectionInt(I)V
    .locals 7
    .param p1, "position"    # I

    #@0
    .prologue
    .line 1595
    iget v4, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    #@2
    .line 1597
    .local v4, "previousSelectedPosition":I
    iget-object v5, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@4
    if-eqz v5, :cond_0

    #@6
    .line 1598
    iget-object v5, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@8
    invoke-virtual {v5}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    #@b
    .line 1601
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    #@e
    .line 1602
    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    #@11
    .line 1604
    iget-boolean v5, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    #@13
    if-eqz v5, :cond_2

    #@15
    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    #@17
    add-int/lit8 v5, v5, -0x1

    #@19
    iget v6, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    #@1b
    sub-int v0, v5, v6

    #@1d
    .line 1606
    .local v0, "next":I
    :goto_0
    iget-boolean v5, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    #@1f
    if-eqz v5, :cond_3

    #@21
    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    #@23
    add-int/lit8 v5, v5, -0x1

    #@25
    sub-int v2, v5, v4

    #@27
    .line 1609
    .local v2, "previous":I
    :goto_1
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    #@29
    div-int v1, v0, v5

    #@2b
    .line 1610
    .local v1, "nextRow":I
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    #@2d
    div-int v3, v2, v5

    #@2f
    .line 1612
    .local v3, "previousRow":I
    if-eq v1, v3, :cond_1

    #@31
    .line 1613
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    #@34
    .line 1594
    :cond_1
    return-void

    #@35
    .line 1605
    .end local v0    # "next":I
    .end local v1    # "nextRow":I
    .end local v2    # "previous":I
    .end local v3    # "previousRow":I
    :cond_2
    iget v0, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    #@37
    .restart local v0    # "next":I
    goto :goto_0

    #@38
    .line 1607
    :cond_3
    move v2, v4

    #@39
    .restart local v2    # "previous":I
    goto :goto_1
.end method

.method public setStretchMode(I)V
    .locals 1
    .param p1, "stretchMode"    # I

    #@0
    .prologue
    .line 2153
    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 2154
    iput p1, p0, Landroid/widget/GridView;->mStretchMode:I

    #@6
    .line 2155
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    #@9
    .line 2152
    :cond_0
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1
    .param p1, "verticalSpacing"    # I

    #@0
    .prologue
    .line 2125
    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 2126
    iput p1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    #@6
    .line 2127
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    #@9
    .line 2124
    :cond_0
    return-void
.end method

.method public smoothScrollByOffset(I)V
    .locals 0
    .param p1, "offset"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 863
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    #@3
    .line 862
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 0
    .param p1, "position"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 853
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    #@3
    .line 852
    return-void
.end method
