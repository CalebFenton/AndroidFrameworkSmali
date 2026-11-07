.class public Landroid/widget/TableRow;
.super Landroid/widget/LinearLayout;
.source "TableRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TableRow$ChildrenTracker;,
        Landroid/widget/TableRow$LayoutParams;
    }
.end annotation


# instance fields
.field private greylist-max-o mChildrenTracker:Landroid/widget/TableRow$ChildrenTracker;

.field private greylist-max-o mColumnToChildIndex:Landroid/util/SparseIntArray;

.field private greylist-max-o mColumnWidths:[I

.field private greylist-max-o mConstrainedColumnWidths:[I

.field private greylist-max-o mNumColumns:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmColumnToChildIndex(Landroid/widget/TableRow;Landroid/util/SparseIntArray;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TableRow;->mNumColumns:I

    .line 62
    invoke-direct {p0}, Landroid/widget/TableRow;->initTableRow()V

    .line 63
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TableRow;->mNumColumns:I

    .line 74
    invoke-direct {p0}, Landroid/widget/TableRow;->initTableRow()V

    .line 75
    return-void
.end method

.method private greylist-max-o initTableRow()V
    .registers 4

    .line 78
    iget-object v0, p0, Landroid/widget/TableRow;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 79
    .local v0, "oldListener":Landroid/view/ViewGroup$OnHierarchyChangeListener;
    new-instance v1, Landroid/widget/TableRow$ChildrenTracker;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/TableRow$ChildrenTracker;-><init>(Landroid/widget/TableRow;Landroid/widget/TableRow-IA;)V

    iput-object v1, p0, Landroid/widget/TableRow;->mChildrenTracker:Landroid/widget/TableRow$ChildrenTracker;

    .line 80
    if-eqz v0, :cond_11

    .line 81
    iget-object v1, p0, Landroid/widget/TableRow;->mChildrenTracker:Landroid/widget/TableRow$ChildrenTracker;

    invoke-static {v1, v0}, Landroid/widget/TableRow$ChildrenTracker;->-$$Nest$msetOnHierarchyChangeListener(Landroid/widget/TableRow$ChildrenTracker;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 83
    :cond_11
    iget-object v1, p0, Landroid/widget/TableRow;->mChildrenTracker:Landroid/widget/TableRow$ChildrenTracker;

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 84
    return-void
.end method

.method private greylist-max-o mapIndexAndColumns()V
    .registers 9

    .line 155
    iget-object v0, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    if-nez v0, :cond_38

    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "virtualCount":I
    invoke-virtual {p0}, Landroid/widget/TableRow;->getChildCount()I

    move-result v1

    .line 159
    .local v1, "count":I
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    .line 160
    iget-object v2, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    .line 162
    .local v2, "columnToChild":Landroid/util/SparseIntArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    if-ge v3, v1, :cond_36

    .line 163
    invoke-virtual {p0, v3}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 164
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/TableRow$LayoutParams;

    .line 166
    .local v5, "layoutParams":Landroid/widget/TableRow$LayoutParams;
    iget v6, v5, Landroid/widget/TableRow$LayoutParams;->column:I

    if-lt v6, v0, :cond_25

    .line 167
    iget v0, v5, Landroid/widget/TableRow$LayoutParams;->column:I

    .line 170
    :cond_25
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_26
    iget v7, v5, Landroid/widget/TableRow$LayoutParams;->span:I

    if-ge v6, v7, :cond_33

    .line 171
    add-int/lit8 v7, v0, 0x1

    .end local v0    # "virtualCount":I
    .local v7, "virtualCount":I
    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 170
    add-int/lit8 v6, v6, 0x1

    move v0, v7

    goto :goto_26

    .line 162
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "layoutParams":Landroid/widget/TableRow$LayoutParams;
    .end local v6    # "j":I
    .end local v7    # "virtualCount":I
    .restart local v0    # "virtualCount":I
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 175
    .end local v3    # "i":I
    :cond_36
    iput v0, p0, Landroid/widget/TableRow;->mNumColumns:I

    .line 177
    .end local v0    # "virtualCount":I
    .end local v1    # "count":I
    .end local v2    # "columnToChild":Landroid/util/SparseIntArray;
    :cond_38
    return-void
.end method


# virtual methods
.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 373
    instance-of v0, p1, Landroid/widget/TableRow$LayoutParams;

    return v0
.end method

.method protected bridge synthetic whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 47
    invoke-virtual {p0}, Landroid/widget/TableRow;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    .line 365
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v0}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    return-object v0
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Landroid/widget/TableRow;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableRow$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Landroid/widget/TableRow;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Landroid/widget/TableRow;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableRow$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 381
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/TableRow$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableRow$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 355
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/TableRow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/TableRow$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 386
    const-class v0, Landroid/widget/TableRow;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getChildrenSkipCount(Landroid/view/View;I)I
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow$LayoutParams;

    .line 260
    .local v0, "layoutParams":Landroid/widget/TableRow$LayoutParams;
    iget v1, v0, Landroid/widget/TableRow$LayoutParams;->span:I

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method greylist-max-o getColumnsWidths(II)[I
    .registers 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 289
    invoke-virtual {p0}, Landroid/widget/TableRow;->getVirtualChildCount()I

    move-result v0

    .line 290
    .local v0, "numColumns":I
    iget-object v1, p0, Landroid/widget/TableRow;->mColumnWidths:[I

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/widget/TableRow;->mColumnWidths:[I

    array-length v1, v1

    if-eq v0, v1, :cond_11

    .line 291
    :cond_d
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/TableRow;->mColumnWidths:[I

    .line 294
    :cond_11
    iget-object v1, p0, Landroid/widget/TableRow;->mColumnWidths:[I

    .line 296
    .local v1, "columnWidths":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v0, :cond_66

    .line 297
    invoke-virtual {p0, v2}, Landroid/widget/TableRow;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 298
    .local v3, "child":Landroid/view/View;
    const/4 v4, 0x0

    if-eqz v3, :cond_61

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_61

    .line 299
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/TableRow$LayoutParams;

    .line 300
    .local v5, "layoutParams":Landroid/widget/TableRow$LayoutParams;
    iget v6, v5, Landroid/widget/TableRow$LayoutParams;->span:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5e

    .line 302
    iget v6, v5, Landroid/widget/TableRow$LayoutParams;->width:I

    packed-switch v6, :pswitch_data_68

    .line 312
    iget v4, v5, Landroid/widget/TableRow$LayoutParams;->width:I

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .local v4, "spec":I
    goto :goto_4e

    .line 307
    .end local v4    # "spec":I
    :pswitch_3e
    nop

    .line 308
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 307
    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v4

    .line 310
    .restart local v4    # "spec":I
    goto :goto_4e

    .line 304
    .end local v4    # "spec":I
    :pswitch_48
    const/4 v6, -0x2

    invoke-static {p1, v4, v6}, Landroid/widget/TableRow;->getChildMeasureSpec(III)I

    move-result v4

    .line 305
    .restart local v4    # "spec":I
    nop

    .line 314
    :goto_4e
    invoke-virtual {v3, v4, v4}, Landroid/view/View;->measure(II)V

    .line 316
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, v5, Landroid/widget/TableRow$LayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    iget v7, v5, Landroid/widget/TableRow$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    .line 318
    .local v6, "width":I
    aput v6, v1, v2

    .line 319
    .end local v4    # "spec":I
    .end local v6    # "width":I
    goto :goto_60

    .line 320
    :cond_5e
    aput v4, v1, v2

    .line 322
    .end local v5    # "layoutParams":Landroid/widget/TableRow$LayoutParams;
    :goto_60
    goto :goto_63

    .line 323
    :cond_61
    aput v4, v1, v2

    .line 296
    .end local v3    # "child":Landroid/view/View;
    :goto_63
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 327
    .end local v2    # "i":I
    :cond_66
    return-object v1

    nop

    :pswitch_data_68
    .packed-switch -0x2
        :pswitch_48
        :pswitch_3e
    .end packed-switch
.end method

.method greylist-max-o getLocationOffset(Landroid/view/View;)I
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 268
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow$LayoutParams;

    invoke-static {v0}, Landroid/widget/TableRow$LayoutParams;->-$$Nest$fgetmOffset(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method greylist-max-o getNextLocationOffset(Landroid/view/View;)I
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow$LayoutParams;

    invoke-static {v0}, Landroid/widget/TableRow$LayoutParams;->-$$Nest$fgetmOffset(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public whitelist getVirtualChildAt(I)Landroid/view/View;
    .registers 4
    .param p1, "i"    # I

    .line 131
    iget-object v0, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    if-nez v0, :cond_7

    .line 132
    invoke-direct {p0}, Landroid/widget/TableRow;->mapIndexAndColumns()V

    .line 135
    :cond_7
    iget-object v0, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 136
    .local v0, "deflectedIndex":I
    if-eq v0, v1, :cond_15

    .line 137
    invoke-virtual {p0, v0}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 140
    :cond_15
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getVirtualChildCount()I
    .registers 2

    .line 148
    iget-object v0, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    if-nez v0, :cond_7

    .line 149
    invoke-direct {p0}, Landroid/widget/TableRow;->mapIndexAndColumns()V

    .line 151
    :cond_7
    iget v0, p0, Landroid/widget/TableRow;->mNumColumns:I

    return v0
.end method

.method greylist-max-o measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .registers 26
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "totalWidth"    # I
    .param p5, "heightMeasureSpec"    # I
    .param p6, "totalHeight"    # I

    .line 194
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/TableRow;->mConstrainedColumnWidths:[I

    if-eqz v1, :cond_99

    .line 195
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow$LayoutParams;

    .line 197
    .local v1, "lp":Landroid/widget/TableRow$LayoutParams;
    const/high16 v2, 0x40000000    # 2.0f

    .line 198
    .local v2, "measureMode":I
    const/4 v3, 0x0

    .line 200
    .local v3, "columnWidth":I
    iget v4, v1, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 201
    .local v4, "span":I
    iget-object v5, v0, Landroid/widget/TableRow;->mConstrainedColumnWidths:[I

    .line 202
    .local v5, "constrainedColumnWidths":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_14
    if-ge v6, v4, :cond_1e

    .line 203
    add-int v7, p2, v6

    aget v7, v5, v7

    add-int/2addr v3, v7

    .line 202
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 206
    .end local v6    # "i":I
    :cond_1e
    iget v6, v1, Landroid/widget/TableRow$LayoutParams;->gravity:I

    .line 207
    .local v6, "gravity":I
    invoke-static {v6}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v7

    .line 209
    .local v7, "isHorizontalGravity":Z
    if-eqz v7, :cond_28

    .line 210
    const/high16 v2, -0x80000000

    .line 216
    :cond_28
    iget v8, v1, Landroid/widget/TableRow$LayoutParams;->leftMargin:I

    sub-int v8, v3, v8

    iget v9, v1, Landroid/widget/TableRow$LayoutParams;->rightMargin:I

    sub-int/2addr v8, v9

    .line 217
    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 216
    invoke-static {v8, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 219
    .local v8, "childWidthMeasureSpec":I
    iget v10, v0, Landroid/widget/TableRow;->mPaddingTop:I

    iget v11, v0, Landroid/widget/TableRow;->mPaddingBottom:I

    add-int/2addr v10, v11

    iget v11, v1, Landroid/widget/TableRow$LayoutParams;->topMargin:I

    add-int/2addr v10, v11

    iget v11, v1, Landroid/widget/TableRow$LayoutParams;->bottomMargin:I

    add-int/2addr v10, v11

    add-int v10, v10, p6

    iget v11, v1, Landroid/widget/TableRow$LayoutParams;->height:I

    move/from16 v12, p5

    invoke-static {v12, v10, v11}, Landroid/widget/TableRow;->getChildMeasureSpec(III)I

    move-result v10

    .line 223
    .local v10, "childHeightMeasureSpec":I
    move-object/from16 v11, p1

    invoke-virtual {v11, v8, v10}, Landroid/view/View;->measure(II)V

    .line 225
    const/4 v13, 0x1

    if-eqz v7, :cond_8c

    .line 226
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 227
    .local v14, "childWidth":I
    invoke-static {v1}, Landroid/widget/TableRow$LayoutParams;->-$$Nest$fgetmOffset(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v15

    sub-int v16, v3, v14

    aput v16, v15, v13

    .line 229
    invoke-virtual {v0}, Landroid/widget/TableRow;->getLayoutDirection()I

    move-result v15

    .line 230
    .local v15, "layoutDirection":I
    invoke-static {v6, v15}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v16

    .line 231
    .local v16, "absoluteGravity":I
    and-int/lit8 v17, v16, 0x7

    packed-switch v17, :pswitch_data_a2

    :pswitch_6e
    goto :goto_8b

    .line 236
    :pswitch_6f
    invoke-static {v1}, Landroid/widget/TableRow$LayoutParams;->-$$Nest$fgetmOffset(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v17

    invoke-static {v1}, Landroid/widget/TableRow$LayoutParams;->-$$Nest$fgetmOffset(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v18

    aget v13, v18, v13

    aput v13, v17, v9

    .line 237
    goto :goto_8b

    .line 234
    :pswitch_7c
    goto :goto_8b

    .line 239
    :pswitch_7d
    invoke-static {v1}, Landroid/widget/TableRow$LayoutParams;->-$$Nest$fgetmOffset(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v17

    invoke-static {v1}, Landroid/widget/TableRow$LayoutParams;->-$$Nest$fgetmOffset(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v18

    aget v13, v18, v13

    div-int/lit8 v13, v13, 0x2

    aput v13, v17, v9

    .line 242
    .end local v14    # "childWidth":I
    .end local v15    # "layoutDirection":I
    .end local v16    # "absoluteGravity":I
    :goto_8b
    goto :goto_98

    .line 243
    :cond_8c
    invoke-static {v1}, Landroid/widget/TableRow$LayoutParams;->-$$Nest$fgetmOffset(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v14

    invoke-static {v1}, Landroid/widget/TableRow$LayoutParams;->-$$Nest$fgetmOffset(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v15

    aput v9, v15, v13

    aput v9, v14, v9

    .line 245
    .end local v1    # "lp":Landroid/widget/TableRow$LayoutParams;
    .end local v2    # "measureMode":I
    .end local v3    # "columnWidth":I
    .end local v4    # "span":I
    .end local v5    # "constrainedColumnWidths":[I
    .end local v6    # "gravity":I
    .end local v7    # "isHorizontalGravity":Z
    .end local v8    # "childWidthMeasureSpec":I
    .end local v10    # "childHeightMeasureSpec":I
    :goto_98
    goto :goto_a0

    .line 247
    :cond_99
    move-object/from16 v11, p1

    move/from16 v12, p5

    invoke-super/range {p0 .. p6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 250
    :goto_a0
    return-void

    nop

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_7d
        :pswitch_6e
        :pswitch_7c
        :pswitch_6e
        :pswitch_6f
    .end packed-switch
.end method

.method greylist-max-o measureNullChild(I)I
    .registers 3
    .param p1, "childIndex"    # I

    .line 184
    iget-object v0, p0, Landroid/widget/TableRow;->mConstrainedColumnWidths:[I

    aget v0, v0, p1

    return v0
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 123
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/TableRow;->layoutHorizontal(IIII)V

    .line 124
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 114
    invoke-virtual {p0, p1, p2}, Landroid/widget/TableRow;->measureHorizontal(II)V

    .line 115
    return-void
.end method

.method greylist-max-o setColumnCollapsed(IZ)V
    .registers 5
    .param p1, "columnIndex"    # I
    .param p2, "collapsed"    # Z

    .line 102
    invoke-virtual {p0, p1}, Landroid/widget/TableRow;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 103
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_f

    .line 104
    if-eqz p2, :cond_b

    const/16 v1, 0x8

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    :cond_f
    return-void
.end method

.method greylist-max-o setColumnsWidthConstraints([I)V
    .registers 4
    .param p1, "columnWidths"    # [I

    .line 342
    if-eqz p1, :cond_c

    array-length v0, p1

    invoke-virtual {p0}, Landroid/widget/TableRow;->getVirtualChildCount()I

    move-result v1

    if-lt v0, v1, :cond_c

    .line 347
    iput-object p1, p0, Landroid/widget/TableRow;->mConstrainedColumnWidths:[I

    .line 348
    return-void

    .line 343
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "columnWidths should be >= getVirtualChildCount()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 91
    iget-object v0, p0, Landroid/widget/TableRow;->mChildrenTracker:Landroid/widget/TableRow$ChildrenTracker;

    invoke-static {v0, p1}, Landroid/widget/TableRow$ChildrenTracker;->-$$Nest$msetOnHierarchyChangeListener(Landroid/widget/TableRow$ChildrenTracker;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 92
    return-void
.end method
