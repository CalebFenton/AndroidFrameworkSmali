.class public Landroid/widget/TableLayout;
.super Landroid/widget/LinearLayout;
.source "TableLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TableLayout$LayoutParams;,
        Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;
    }
.end annotation


# instance fields
.field private mCollapsedColumns:Landroid/util/SparseBooleanArray;

.field private mInitialized:Z

.field private mMaxWidths:[I

.field private mPassThroughListener:Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

.field private mShrinkAllColumns:Z

.field private mShrinkableColumns:Landroid/util/SparseBooleanArray;

.field private mStretchAllColumns:Z

.field private mStretchableColumns:Landroid/util/SparseBooleanArray;


# direct methods
.method static synthetic -wrap0(Landroid/widget/TableLayout;Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/TableLayout;->trackCollapsedColumns(Landroid/view/View;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 90
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@3
    .line 91
    invoke-direct {p0}, Landroid/widget/TableLayout;->initTableLayout()V

    #@6
    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/16 v7, 0x2a

    #@2
    const/4 v6, 0x1

    #@3
    const/4 v5, 0x0

    #@4
    .line 102
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@7
    .line 104
    sget-object v4, Lcom/android/internal/R$styleable;->TableLayout:[I

    #@9
    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@c
    move-result-object v0

    #@d
    .line 106
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    .line 107
    .local v3, "stretchedColumns":Ljava/lang/String;
    if-eqz v3, :cond_0

    #@13
    .line 108
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v4

    #@17
    if-ne v4, v7, :cond_3

    #@19
    .line 109
    iput-boolean v6, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    #@1b
    .line 115
    :cond_0
    :goto_0
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    .line 116
    .local v2, "shrinkedColumns":Ljava/lang/String;
    if-eqz v2, :cond_1

    #@21
    .line 117
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    #@24
    move-result v4

    #@25
    if-ne v4, v7, :cond_4

    #@27
    .line 118
    iput-boolean v6, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    #@29
    .line 124
    :cond_1
    :goto_1
    const/4 v4, 0x2

    #@2a
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    .line 125
    .local v1, "collapsedColumns":Ljava/lang/String;
    if-eqz v1, :cond_2

    #@30
    .line 126
    invoke-static {v1}, Landroid/widget/TableLayout;->parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;

    #@33
    move-result-object v4

    #@34
    iput-object v4, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    #@36
    .line 129
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@39
    .line 130
    invoke-direct {p0}, Landroid/widget/TableLayout;->initTableLayout()V

    #@3c
    .line 101
    return-void

    #@3d
    .line 111
    .end local v1    # "collapsedColumns":Ljava/lang/String;
    .end local v2    # "shrinkedColumns":Ljava/lang/String;
    :cond_3
    invoke-static {v3}, Landroid/widget/TableLayout;->parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;

    #@40
    move-result-object v4

    #@41
    iput-object v4, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    #@43
    goto :goto_0

    #@44
    .line 120
    .restart local v2    # "shrinkedColumns":Ljava/lang/String;
    :cond_4
    invoke-static {v2}, Landroid/widget/TableLayout;->parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;

    #@47
    move-result-object v4

    #@48
    iput-object v4, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    #@4a
    goto :goto_1
.end method

.method private findLargestCells(II)V
    .locals 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 483
    const/4 v7, 0x1

    #@1
    .line 492
    .local v7, "firstRow":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TableLayout;->getChildCount()I

    #@4
    move-result v5

    #@5
    .line 493
    .local v5, "count":I
    const/4 v8, 0x0

    #@6
    .local v8, "i":I
    :goto_0
    if-ge v8, v5, :cond_6

    #@8
    .line 494
    move-object/from16 v0, p0

    #@a
    invoke-virtual {v0, v8}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    #@d
    move-result-object v4

    #@e
    .line 495
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@11
    move-result v17

    #@12
    const/16 v18, 0x8

    #@14
    move/from16 v0, v17

    #@16
    move/from16 v1, v18

    #@18
    if-ne v0, v1, :cond_1

    #@1a
    .line 493
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 499
    :cond_1
    instance-of v0, v4, Landroid/widget/TableRow;

    #@1f
    move/from16 v17, v0

    #@21
    if-eqz v17, :cond_0

    #@23
    move-object v15, v4

    #@24
    .line 500
    check-cast v15, Landroid/widget/TableRow;

    #@26
    .line 502
    .local v15, "row":Landroid/widget/TableRow;
    invoke-virtual {v15}, Landroid/widget/TableRow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@29
    move-result-object v10

    #@2a
    .line 503
    .local v10, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/16 v17, -0x2

    #@2c
    move/from16 v0, v17

    #@2e
    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@30
    .line 505
    move/from16 v0, p1

    #@32
    move/from16 v1, p2

    #@34
    invoke-virtual {v15, v0, v1}, Landroid/widget/TableRow;->getColumnsWidths(II)[I

    #@37
    move-result-object v16

    #@38
    .line 506
    .local v16, "widths":[I
    move-object/from16 v0, v16

    #@3a
    array-length v13, v0

    #@3b
    .line 508
    .local v13, "newLength":I
    if-eqz v7, :cond_4

    #@3d
    .line 509
    move-object/from16 v0, p0

    #@3f
    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    #@41
    move-object/from16 v17, v0

    #@43
    if-eqz v17, :cond_2

    #@45
    move-object/from16 v0, p0

    #@47
    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    #@49
    move-object/from16 v17, v0

    #@4b
    move-object/from16 v0, v17

    #@4d
    array-length v0, v0

    #@4e
    move/from16 v17, v0

    #@50
    move/from16 v0, v17

    #@52
    if-eq v0, v13, :cond_3

    #@54
    .line 510
    :cond_2
    new-array v0, v13, [I

    #@56
    move-object/from16 v17, v0

    #@58
    move-object/from16 v0, v17

    #@5a
    move-object/from16 v1, p0

    #@5c
    iput-object v0, v1, Landroid/widget/TableLayout;->mMaxWidths:[I

    #@5e
    .line 512
    :cond_3
    move-object/from16 v0, p0

    #@60
    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    #@62
    move-object/from16 v17, v0

    #@64
    const/16 v18, 0x0

    #@66
    const/16 v19, 0x0

    #@68
    move-object/from16 v0, v16

    #@6a
    move/from16 v1, v18

    #@6c
    move-object/from16 v2, v17

    #@6e
    move/from16 v3, v19

    #@70
    invoke-static {v0, v1, v2, v3, v13}, Ljava/lang/System;->arraycopy([II[III)V

    #@73
    .line 513
    const/4 v7, 0x0

    #@74
    goto :goto_1

    #@75
    .line 515
    :cond_4
    move-object/from16 v0, p0

    #@77
    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    #@79
    move-object/from16 v17, v0

    #@7b
    move-object/from16 v0, v17

    #@7d
    array-length v11, v0

    #@7e
    .line 516
    .local v11, "length":I
    sub-int v6, v13, v11

    #@80
    .line 519
    .local v6, "difference":I
    if-lez v6, :cond_5

    #@82
    .line 520
    move-object/from16 v0, p0

    #@84
    iget-object v14, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    #@86
    .line 521
    .local v14, "oldMaxWidths":[I
    new-array v0, v13, [I

    #@88
    move-object/from16 v17, v0

    #@8a
    move-object/from16 v0, v17

    #@8c
    move-object/from16 v1, p0

    #@8e
    iput-object v0, v1, Landroid/widget/TableLayout;->mMaxWidths:[I

    #@90
    .line 522
    move-object/from16 v0, p0

    #@92
    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    #@94
    move-object/from16 v17, v0

    #@96
    .line 523
    array-length v0, v14

    #@97
    move/from16 v18, v0

    #@99
    .line 522
    const/16 v19, 0x0

    #@9b
    const/16 v20, 0x0

    #@9d
    move/from16 v0, v19

    #@9f
    move-object/from16 v1, v17

    #@a1
    move/from16 v2, v20

    #@a3
    move/from16 v3, v18

    #@a5
    invoke-static {v14, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@a8
    .line 524
    array-length v0, v14

    #@a9
    move/from16 v17, v0

    #@ab
    .line 525
    move-object/from16 v0, p0

    #@ad
    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    #@af
    move-object/from16 v18, v0

    #@b1
    array-length v0, v14

    #@b2
    move/from16 v19, v0

    #@b4
    .line 524
    move-object/from16 v0, v16

    #@b6
    move/from16 v1, v17

    #@b8
    move-object/from16 v2, v18

    #@ba
    move/from16 v3, v19

    #@bc
    invoke-static {v0, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy([II[III)V

    #@bf
    .line 532
    .end local v14    # "oldMaxWidths":[I
    :cond_5
    move-object/from16 v0, p0

    #@c1
    iget-object v12, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    #@c3
    .line 533
    .local v12, "maxWidths":[I
    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    #@c6
    move-result v11

    #@c7
    .line 534
    const/4 v9, 0x0

    #@c8
    .local v9, "j":I
    :goto_2
    if-ge v9, v11, :cond_0

    #@ca
    .line 535
    aget v17, v12, v9

    #@cc
    aget v18, v16, v9

    #@ce
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    #@d1
    move-result v17

    #@d2
    aput v17, v12, v9

    #@d4
    .line 534
    add-int/lit8 v9, v9, 0x1

    #@d6
    goto :goto_2

    #@d7
    .line 482
    .end local v4    # "child":Landroid/view/View;
    .end local v6    # "difference":I
    .end local v9    # "j":I
    .end local v10    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v11    # "length":I
    .end local v12    # "maxWidths":[I
    .end local v13    # "newLength":I
    .end local v15    # "row":Landroid/widget/TableRow;
    .end local v16    # "widths":[I
    :cond_6
    return-void
.end method

.method private initTableLayout()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 174
    iget-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    #@4
    if-nez v0, :cond_0

    #@6
    .line 175
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@8
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@b
    iput-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    #@d
    .line 177
    :cond_0
    iget-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    #@f
    if-nez v0, :cond_1

    #@11
    .line 178
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@13
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@16
    iput-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    #@18
    .line 180
    :cond_1
    iget-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    #@1a
    if-nez v0, :cond_2

    #@1c
    .line 181
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@1e
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@21
    iput-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    #@23
    .line 186
    :cond_2
    invoke-virtual {p0, v2}, Landroid/widget/TableLayout;->setOrientation(I)V

    #@26
    .line 188
    new-instance v0, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

    #@28
    invoke-direct {v0, p0, v1}, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;-><init>(Landroid/widget/TableLayout;Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;)V

    #@2b
    iput-object v0, p0, Landroid/widget/TableLayout;->mPassThroughListener:Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

    #@2d
    .line 191
    iget-object v0, p0, Landroid/widget/TableLayout;->mPassThroughListener:Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

    #@2f
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    #@32
    .line 193
    iput-boolean v2, p0, Landroid/widget/TableLayout;->mInitialized:Z

    #@34
    .line 173
    return-void
.end method

.method private mutateColumnsWidth(Landroid/util/SparseBooleanArray;ZII)V
    .locals 12
    .param p1, "columns"    # Landroid/util/SparseBooleanArray;
    .param p2, "allColumns"    # Z
    .param p3, "size"    # I
    .param p4, "totalWidth"    # I

    #@0
    .prologue
    .line 579
    const/4 v8, 0x0

    #@1
    .line 580
    .local v8, "skipped":I
    iget-object v6, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    #@3
    .line 581
    .local v6, "maxWidths":[I
    array-length v5, v6

    #@4
    .line 582
    .local v5, "length":I
    if-eqz p2, :cond_1

    #@6
    move v2, v5

    #@7
    .line 583
    .local v2, "count":I
    :goto_0
    sub-int v9, p3, p4

    #@9
    .line 584
    .local v9, "totalExtraSpace":I
    div-int v3, v9, v2

    #@b
    .line 588
    .local v3, "extraSpace":I
    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    #@e
    move-result v7

    #@f
    .line 589
    .local v7, "nbChildren":I
    const/4 v4, 0x0

    #@10
    .local v4, "i":I
    :goto_1
    if-ge v4, v7, :cond_2

    #@12
    .line 590
    invoke-virtual {p0, v4}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    #@15
    move-result-object v0

    #@16
    .line 591
    .local v0, "child":Landroid/view/View;
    instance-of v10, v0, Landroid/widget/TableRow;

    #@18
    if-eqz v10, :cond_0

    #@1a
    .line 592
    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    #@1d
    .line 589
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@1f
    goto :goto_1

    #@20
    .line 582
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "count":I
    .end local v3    # "extraSpace":I
    .end local v4    # "i":I
    .end local v7    # "nbChildren":I
    .end local v9    # "totalExtraSpace":I
    :cond_1
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    #@23
    move-result v2

    #@24
    .restart local v2    # "count":I
    goto :goto_0

    #@25
    .line 596
    .restart local v3    # "extraSpace":I
    .restart local v4    # "i":I
    .restart local v7    # "nbChildren":I
    .restart local v9    # "totalExtraSpace":I
    :cond_2
    if-nez p2, :cond_5

    #@27
    .line 597
    const/4 v4, 0x0

    #@28
    :goto_2
    if-ge v4, v2, :cond_7

    #@2a
    .line 598
    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@2d
    move-result v1

    #@2e
    .line 599
    .local v1, "column":I
    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    #@31
    move-result v10

    #@32
    if-eqz v10, :cond_3

    #@34
    .line 600
    if-ge v1, v5, :cond_4

    #@36
    .line 601
    aget v10, v6, v1

    #@38
    add-int/2addr v10, v3

    #@39
    aput v10, v6, v1

    #@3b
    .line 597
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    #@3d
    goto :goto_2

    #@3e
    .line 603
    :cond_4
    add-int/lit8 v8, v8, 0x1

    #@40
    goto :goto_3

    #@41
    .line 608
    .end local v1    # "column":I
    :cond_5
    const/4 v4, 0x0

    #@42
    :goto_4
    if-ge v4, v2, :cond_6

    #@44
    .line 609
    aget v10, v6, v4

    #@46
    add-int/2addr v10, v3

    #@47
    aput v10, v6, v4

    #@49
    .line 608
    add-int/lit8 v4, v4, 0x1

    #@4b
    goto :goto_4

    #@4c
    .line 613
    :cond_6
    return-void

    #@4d
    .line 616
    :cond_7
    if-lez v8, :cond_a

    #@4f
    if-ge v8, v2, :cond_a

    #@51
    .line 618
    mul-int v10, v8, v3

    #@53
    sub-int v11, v2, v8

    #@55
    div-int v3, v10, v11

    #@57
    .line 619
    const/4 v4, 0x0

    #@58
    :goto_5
    if-ge v4, v2, :cond_a

    #@5a
    .line 620
    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@5d
    move-result v1

    #@5e
    .line 621
    .restart local v1    # "column":I
    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    #@61
    move-result v10

    #@62
    if-eqz v10, :cond_8

    #@64
    if-ge v1, v5, :cond_8

    #@66
    .line 622
    aget v10, v6, v1

    #@68
    if-le v3, v10, :cond_9

    #@6a
    .line 623
    const/4 v10, 0x0

    #@6b
    aput v10, v6, v1

    #@6d
    .line 619
    :cond_8
    :goto_6
    add-int/lit8 v4, v4, 0x1

    #@6f
    goto :goto_5

    #@70
    .line 625
    :cond_9
    aget v10, v6, v1

    #@72
    add-int/2addr v10, v3

    #@73
    aput v10, v6, v1

    #@75
    goto :goto_6

    #@76
    .line 578
    .end local v1    # "column":I
    :cond_a
    return-void
.end method

.method private static parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;
    .locals 9
    .param p0, "sequence"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 148
    new-instance v3, Landroid/util/SparseBooleanArray;

    #@3
    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    #@6
    .line 149
    .local v3, "columns":Landroid/util/SparseBooleanArray;
    const-string/jumbo v7, "\\s*,\\s*"

    #@9
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@c
    move-result-object v5

    #@d
    .line 150
    .local v5, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 152
    .local v0, "columnDefs":[Ljava/lang/String;
    array-length v7, v0

    #@12
    :goto_0
    if-ge v6, v7, :cond_1

    #@14
    aget-object v1, v0, v6

    #@16
    .line 154
    .local v1, "columnIdentifier":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@19
    move-result v2

    #@1a
    .line 156
    .local v2, "columnIndex":I
    if-ltz v2, :cond_0

    #@1c
    .line 159
    const/4 v8, 0x1

    #@1d
    invoke-virtual {v3, v2, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 152
    .end local v2    # "columnIndex":I
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@22
    goto :goto_0

    #@23
    .line 166
    .end local v1    # "columnIdentifier":Ljava/lang/String;
    :cond_1
    return-object v3

    #@24
    .line 161
    .restart local v1    # "columnIdentifier":Ljava/lang/String;
    :catch_0
    move-exception v4

    #@25
    .local v4, "e":Ljava/lang/NumberFormatException;
    goto :goto_1
.end method

.method private requestRowsLayout()V
    .locals 3

    #@0
    .prologue
    .line 207
    iget-boolean v2, p0, Landroid/widget/TableLayout;->mInitialized:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 208
    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    #@7
    move-result v0

    #@8
    .line 209
    .local v0, "count":I
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@b
    .line 210
    invoke-virtual {p0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    #@12
    .line 209
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 206
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private shrinkAndStretchColumns(I)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 554
    iget-object v4, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    #@3
    if-nez v4, :cond_0

    #@5
    .line 555
    return-void

    #@6
    .line 559
    :cond_0
    const/4 v1, 0x0

    #@7
    .line 560
    .local v1, "totalWidth":I
    iget-object v4, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    #@9
    array-length v5, v4

    #@a
    :goto_0
    if-ge v3, v5, :cond_1

    #@c
    aget v2, v4, v3

    #@e
    .line 561
    .local v2, "width":I
    add-int/2addr v1, v2

    #@f
    .line 560
    add-int/lit8 v3, v3, 0x1

    #@11
    goto :goto_0

    #@12
    .line 564
    .end local v2    # "width":I
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@15
    move-result v3

    #@16
    iget v4, p0, Landroid/widget/TableLayout;->mPaddingLeft:I

    #@18
    sub-int/2addr v3, v4

    #@19
    iget v4, p0, Landroid/widget/TableLayout;->mPaddingRight:I

    #@1b
    sub-int v0, v3, v4

    #@1d
    .line 566
    .local v0, "size":I
    if-le v1, v0, :cond_4

    #@1f
    iget-boolean v3, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    #@21
    if-nez v3, :cond_2

    #@23
    iget-object v3, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    #@25
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    #@28
    move-result v3

    #@29
    if-lez v3, :cond_4

    #@2b
    .line 569
    :cond_2
    iget-object v3, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    #@2d
    iget-boolean v4, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    #@2f
    invoke-direct {p0, v3, v4, v0, v1}, Landroid/widget/TableLayout;->mutateColumnsWidth(Landroid/util/SparseBooleanArray;ZII)V

    #@32
    .line 551
    :cond_3
    :goto_1
    return-void

    #@33
    .line 570
    :cond_4
    if-ge v1, v0, :cond_3

    #@35
    iget-boolean v3, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    #@37
    if-nez v3, :cond_5

    #@39
    iget-object v3, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    #@3b
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    #@3e
    move-result v3

    #@3f
    if-lez v3, :cond_3

    #@41
    .line 573
    :cond_5
    iget-object v3, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    #@43
    iget-boolean v4, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    #@45
    invoke-direct {p0, v3, v4, v0, v1}, Landroid/widget/TableLayout;->mutateColumnsWidth(Landroid/util/SparseBooleanArray;ZII)V

    #@48
    goto :goto_1
.end method

.method private trackCollapsedColumns(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 377
    instance-of v6, p1, Landroid/widget/TableRow;

    #@2
    if-eqz v6, :cond_1

    #@4
    move-object v5, p1

    #@5
    .line 378
    check-cast v5, Landroid/widget/TableRow;

    #@7
    .line 379
    .local v5, "row":Landroid/widget/TableRow;
    iget-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    #@9
    .line 380
    .local v0, "collapsedColumns":Landroid/util/SparseBooleanArray;
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    #@c
    move-result v2

    #@d
    .line 381
    .local v2, "count":I
    const/4 v3, 0x0

    #@e
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    #@10
    .line 382
    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@13
    move-result v1

    #@14
    .line 383
    .local v1, "columnIndex":I
    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    #@17
    move-result v4

    #@18
    .line 387
    .local v4, "isCollapsed":Z
    if-eqz v4, :cond_0

    #@1a
    .line 388
    invoke-virtual {v5, v1, v4}, Landroid/widget/TableRow;->setColumnCollapsed(IZ)V

    #@1d
    .line 381
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 376
    .end local v0    # "collapsedColumns":Landroid/util/SparseBooleanArray;
    .end local v1    # "columnIndex":I
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "isCollapsed":Z
    .end local v5    # "row":Landroid/widget/TableRow;
    :cond_1
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 399
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    #@3
    .line 400
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    #@6
    .line 398
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 408
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    #@3
    .line 409
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    #@6
    .line 407
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 426
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@3
    .line 427
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    #@6
    .line 425
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 417
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@3
    .line 418
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    #@6
    .line 416
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 655
    instance-of v0, p1, Landroid/widget/TableLayout$LayoutParams;

    #@2
    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    #@0
    .prologue
    .line 647
    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    #@2
    invoke-direct {v0}, Landroid/widget/TableLayout$LayoutParams;-><init>()V

    #@5
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 636
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableLayout$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 663
    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    #@2
    invoke-direct {v0, p1}, Landroid/widget/TableLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@5
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 637
    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    #@2
    invoke-virtual {p0}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Landroid/widget/TableLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 668
    const-class v0, Landroid/widget/TableLayout;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isColumnCollapsed(I)Z
    .locals 1
    .param p1, "columnIndex"    # I

    #@0
    .prologue
    .line 309
    iget-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isColumnShrinkable(I)Z
    .locals 1
    .param p1, "columnIndex"    # I

    #@0
    .prologue
    .line 363
    iget-boolean v0, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    #@6
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method public isColumnStretchable(I)Z
    .locals 1
    .param p1, "columnIndex"    # I

    #@0
    .prologue
    .line 336
    iget-boolean v0, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    #@6
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method public isShrinkAllColumns()Z
    .locals 1

    #@0
    .prologue
    .line 238
    iget-boolean v0, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    #@2
    return v0
.end method

.method public isStretchAllColumns()Z
    .locals 1

    #@0
    .prologue
    .line 260
    iget-boolean v0, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    #@2
    return v0
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "totalWidth"    # I
    .param p5, "heightMeasureSpec"    # I
    .param p6, "totalHeight"    # I

    #@0
    .prologue
    .line 457
    instance-of v0, p1, Landroid/widget/TableRow;

    #@2
    if-eqz v0, :cond_0

    #@4
    move-object v0, p1

    #@5
    .line 458
    check-cast v0, Landroid/widget/TableRow;

    #@7
    iget-object v1, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    #@9
    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setColumnsWidthConstraints([I)V

    #@c
    .line 461
    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    #@f
    .line 454
    return-void
.end method

.method measureVertical(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 470
    invoke-direct {p0, p1, p2}, Landroid/widget/TableLayout;->findLargestCells(II)V

    #@3
    .line 471
    invoke-direct {p0, p1}, Landroid/widget/TableLayout;->shrinkAndStretchColumns(I)V

    #@6
    .line 473
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->measureVertical(II)V

    #@9
    .line 469
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    #@0
    .prologue
    .line 445
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/TableLayout;->layoutVertical(IIII)V

    #@3
    .line 443
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 436
    invoke-virtual {p0, p1, p2}, Landroid/widget/TableLayout;->measureVertical(II)V

    #@3
    .line 434
    return-void
.end method

.method public requestLayout()V
    .locals 3

    #@0
    .prologue
    .line 220
    iget-boolean v2, p0, Landroid/widget/TableLayout;->mInitialized:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 221
    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    #@7
    move-result v0

    #@8
    .line 222
    .local v0, "count":I
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@b
    .line 223
    invoke-virtual {p0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    #@12
    .line 222
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 227
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    #@18
    .line 219
    return-void
.end method

.method public setColumnCollapsed(IZ)V
    .locals 4
    .param p1, "columnIndex"    # I
    .param p2, "isCollapsed"    # Z

    #@0
    .prologue
    .line 289
    iget-object v3, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    #@2
    invoke-virtual {v3, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@5
    .line 291
    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    #@8
    move-result v0

    #@9
    .line 292
    .local v0, "count":I
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@c
    .line 293
    invoke-virtual {p0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    #@f
    move-result-object v2

    #@10
    .line 294
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/TableRow;

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 295
    check-cast v2, Landroid/widget/TableRow;

    #@16
    .end local v2    # "view":Landroid/view/View;
    invoke-virtual {v2, p1, p2}, Landroid/widget/TableRow;->setColumnCollapsed(IZ)V

    #@19
    .line 292
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 299
    :cond_1
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    #@1f
    .line 287
    return-void
.end method

.method public setColumnShrinkable(IZ)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "isShrinkable"    # Z

    #@0
    .prologue
    .line 352
    iget-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@5
    .line 353
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    #@8
    .line 351
    return-void
.end method

.method public setColumnStretchable(IZ)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "isStretchable"    # Z

    #@0
    .prologue
    .line 325
    iget-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@5
    .line 326
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    #@8
    .line 324
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    #@0
    .prologue
    .line 203
    iget-object v0, p0, Landroid/widget/TableLayout;->mPassThroughListener:Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

    #@2
    invoke-static {v0, p1}, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;->-set0(Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    #@5
    .line 201
    return-void
.end method

.method public setShrinkAllColumns(Z)V
    .locals 0
    .param p1, "shrinkAllColumns"    # Z

    #@0
    .prologue
    .line 249
    iput-boolean p1, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    #@2
    .line 248
    return-void
.end method

.method public setStretchAllColumns(Z)V
    .locals 0
    .param p1, "stretchAllColumns"    # Z

    #@0
    .prologue
    .line 271
    iput-boolean p1, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    #@2
    .line 270
    return-void
.end method
