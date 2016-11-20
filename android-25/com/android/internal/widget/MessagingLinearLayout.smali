.class public Lcom/android/internal/widget/MessagingLinearLayout;
.super Landroid/view/ViewGroup;
.source "MessagingLinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private mContractedChildId:I

.field private mIndentLines:I

.field private mMaxHeight:I

.field private mSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 60
    sget-object v4, Lcom/android/internal/R$styleable;->MessagingLinearLayout:[I

    #@6
    .line 59
    invoke-virtual {p1, p2, v4, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@9
    move-result-object v1

    #@a
    .line 63
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@d
    move-result v0

    #@e
    .line 64
    .local v0, "N":I
    const/4 v3, 0x0

    #@f
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    #@11
    .line 65
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@14
    move-result v2

    #@15
    .line 66
    .local v2, "attr":I
    packed-switch v2, :pswitch_data_0

    #@18
    .line 64
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 68
    :pswitch_0
    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@1e
    move-result v4

    #@1f
    iput v4, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mMaxHeight:I

    #@21
    goto :goto_1

    #@22
    .line 71
    :pswitch_1
    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@25
    move-result v4

    #@26
    iput v4, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    #@28
    goto :goto_1

    #@29
    .line 76
    .end local v2    # "attr":I
    :cond_0
    iget v4, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mMaxHeight:I

    #@2b
    if-gtz v4, :cond_1

    #@2d
    .line 77
    new-instance v4, Ljava/lang/IllegalStateException;

    #@2f
    .line 78
    const-string/jumbo v5, "MessagingLinearLayout: Must specify positive maxHeight"

    #@32
    .line 77
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@35
    throw v4

    #@36
    .line 81
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@39
    .line 56
    return-void

    #@3a
    .line 66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    #@0
    .prologue
    .line 236
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    #@6
    .line 237
    .local v0, "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    iget-boolean v1, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 238
    const/4 v1, 0x1

    #@b
    return v1

    #@c
    .line 240
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    #@f
    move-result v1

    #@10
    return v1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    #@0
    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLinearLayout;->generateDefaultLayoutParams()Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .locals 3

    #@0
    .prologue
    .line 250
    new-instance v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    #@2
    const/4 v1, -0x1

    #@3
    const/4 v2, -0x2

    #@4
    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;-><init>(II)V

    #@7
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 244
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingLinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 255
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingLinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 245
    new-instance v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    #@2
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    #@4
    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@7
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .locals 3
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 256
    new-instance v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    #@2
    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@4
    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@6
    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;-><init>(II)V

    #@9
    .line 257
    .local v0, "copy":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    instance-of v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 258
    nop

    #@e
    nop

    #@f
    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->copyMarginsFrom(Landroid/view/ViewGroup$MarginLayoutParams;)V

    #@12
    .line 260
    :cond_0
    return-object v0
.end method

.method public getContractedChildId()I
    .locals 1

    #@0
    .prologue
    .line 283
    iget v0, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mContractedChildId:I

    #@2
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    #@0
    .prologue
    .line 188
    iget v11, p0, Landroid/view/View;->mPaddingLeft:I

    #@2
    .line 193
    .local v11, "paddingLeft":I
    sub-int v12, p4, p2

    #@4
    .line 194
    .local v12, "width":I
    iget v13, p0, Landroid/view/View;->mPaddingRight:I

    #@6
    sub-int v3, v12, v13

    #@8
    .line 196
    .local v3, "childRight":I
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    #@b
    move-result v9

    #@c
    .line 197
    .local v9, "layoutDirection":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@f
    move-result v6

    #@10
    .line 199
    .local v6, "count":I
    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    #@12
    .line 201
    .local v4, "childTop":I
    const/4 v7, 0x1

    #@13
    .line 203
    .local v7, "first":Z
    const/4 v8, 0x0

    #@14
    .local v8, "i":I
    :goto_0
    if-ge v8, v6, :cond_4

    #@16
    .line 204
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@19
    move-result-object v0

    #@1a
    .line 205
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1d
    move-result-object v10

    #@1e
    check-cast v10, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    #@20
    .line 207
    .local v10, "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@23
    move-result v13

    #@24
    const/16 v14, 0x8

    #@26
    if-eq v13, v14, :cond_0

    #@28
    iget-boolean v13, v10, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    #@2a
    if-eqz v13, :cond_1

    #@2c
    .line 203
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 211
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    #@32
    move-result v5

    #@33
    .line 212
    .local v5, "childWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    #@36
    move-result v1

    #@37
    .line 215
    .local v1, "childHeight":I
    const/4 v13, 0x1

    #@38
    if-ne v9, v13, :cond_3

    #@3a
    .line 216
    sub-int v13, v3, v5

    #@3c
    iget v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@3e
    sub-int v2, v13, v14

    #@40
    .line 221
    .local v2, "childLeft":I
    :goto_2
    if-nez v7, :cond_2

    #@42
    .line 222
    iget v13, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    #@44
    add-int/2addr v4, v13

    #@45
    .line 225
    :cond_2
    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@47
    add-int/2addr v4, v13

    #@48
    .line 226
    add-int v13, v2, v5

    #@4a
    add-int v14, v4, v1

    #@4c
    invoke-virtual {v0, v2, v4, v13, v14}, Landroid/view/View;->layout(IIII)V

    #@4f
    .line 228
    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@51
    add-int/2addr v13, v1

    #@52
    add-int/2addr v4, v13

    #@53
    .line 230
    const/4 v7, 0x0

    #@54
    goto :goto_1

    #@55
    .line 218
    .end local v2    # "childLeft":I
    :cond_3
    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@57
    add-int v2, v11, v13

    #@59
    .restart local v2    # "childLeft":I
    goto :goto_2

    #@5a
    .line 187
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeight":I
    .end local v2    # "childLeft":I
    .end local v5    # "childWidth":I
    .end local v10    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 90
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@3
    move-result v2

    #@4
    sparse-switch v2, :sswitch_data_0

    #@7
    .line 104
    :goto_0
    :sswitch_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@a
    move-result v17

    #@b
    .line 105
    .local v17, "targetHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@e
    move-result v10

    #@f
    .line 107
    .local v10, "count":I
    const/4 v12, 0x0

    #@10
    .local v12, "i":I
    :goto_1
    if-ge v12, v10, :cond_0

    #@12
    .line 108
    move-object/from16 v0, p0

    #@14
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@17
    move-result-object v3

    #@18
    .line 109
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1b
    move-result-object v14

    #@1c
    check-cast v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    #@1e
    .line 110
    .local v14, "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    const/4 v2, 0x1

    #@1f
    iput-boolean v2, v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    #@21
    .line 107
    add-int/lit8 v12, v12, 0x1

    #@23
    goto :goto_1

    #@24
    .line 93
    .end local v3    # "child":Landroid/view/View;
    .end local v10    # "count":I
    .end local v12    # "i":I
    .end local v14    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .end local v17    # "targetHeight":I
    :sswitch_1
    move-object/from16 v0, p0

    #@26
    iget v2, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mMaxHeight:I

    #@28
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@2b
    move-result v4

    #@2c
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    #@2f
    move-result v2

    #@30
    .line 94
    const/high16 v4, -0x80000000

    #@32
    .line 92
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@35
    move-result p2

    #@36
    goto :goto_0

    #@37
    .line 98
    :sswitch_2
    move-object/from16 v0, p0

    #@39
    iget v2, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mMaxHeight:I

    #@3b
    .line 99
    const/high16 v4, -0x80000000

    #@3d
    .line 97
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@40
    move-result p2

    #@41
    goto :goto_0

    #@42
    .line 113
    .restart local v10    # "count":I
    .restart local v12    # "i":I
    .restart local v17    # "targetHeight":I
    :cond_0
    move-object/from16 v0, p0

    #@44
    iget v2, v0, Landroid/view/View;->mPaddingTop:I

    #@46
    move-object/from16 v0, p0

    #@48
    iget v4, v0, Landroid/view/View;->mPaddingBottom:I

    #@4a
    add-int v19, v2, v4

    #@4c
    .line 114
    .local v19, "totalHeight":I
    const/4 v11, 0x1

    #@4d
    .line 118
    .local v11, "first":Z
    add-int/lit8 v12, v10, -0x1

    #@4f
    :goto_2
    if-ltz v12, :cond_4

    #@51
    move/from16 v0, v19

    #@53
    move/from16 v1, v17

    #@55
    if-ge v0, v1, :cond_4

    #@57
    .line 119
    move-object/from16 v0, p0

    #@59
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@5c
    move-result-object v2

    #@5d
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    #@60
    move-result v2

    #@61
    const/16 v4, 0x8

    #@63
    if-ne v2, v4, :cond_1

    #@65
    .line 118
    :goto_3
    add-int/lit8 v12, v12, -0x1

    #@67
    goto :goto_2

    #@68
    .line 122
    :cond_1
    move-object/from16 v0, p0

    #@6a
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@6d
    move-result-object v3

    #@6e
    .line 123
    .restart local v3    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    #@70
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@73
    move-result-object v2

    #@74
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@77
    move-result-object v14

    #@78
    check-cast v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    #@7a
    .line 125
    .restart local v14    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    instance-of v2, v3, Lcom/android/internal/widget/ImageFloatingTextView;

    #@7c
    if-eqz v2, :cond_2

    #@7e
    move-object v2, v3

    #@7f
    .line 129
    nop

    #@80
    nop

    #@81
    move-object/from16 v0, p0

    #@83
    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mIndentLines:I

    #@85
    invoke-virtual {v2, v4}, Lcom/android/internal/widget/ImageFloatingTextView;->setNumIndentLines(I)Z

    #@88
    .line 132
    :cond_2
    const/4 v5, 0x0

    #@89
    const/4 v7, 0x0

    #@8a
    move-object/from16 v2, p0

    #@8c
    move/from16 v4, p1

    #@8e
    move/from16 v6, p2

    #@90
    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    #@93
    .line 134
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    #@96
    move-result v9

    #@97
    .line 135
    .local v9, "childHeight":I
    add-int v2, v19, v9

    #@99
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@9b
    add-int/2addr v2, v4

    #@9c
    .line 136
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@9e
    .line 135
    add-int/2addr v4, v2

    #@9f
    .line 136
    if-eqz v11, :cond_3

    #@a1
    const/4 v2, 0x0

    #@a2
    .line 135
    :goto_4
    add-int/2addr v2, v4

    #@a3
    move/from16 v0, v19

    #@a5
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    #@a8
    move-result v16

    #@a9
    .line 137
    .local v16, "newHeight":I
    const/4 v11, 0x0

    #@aa
    .line 139
    move/from16 v0, v16

    #@ac
    move/from16 v1, v17

    #@ae
    if-gt v0, v1, :cond_4

    #@b0
    .line 140
    move/from16 v19, v16

    #@b2
    .line 141
    const/4 v2, 0x0

    #@b3
    iput-boolean v2, v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    #@b5
    goto :goto_3

    #@b6
    .line 136
    .end local v16    # "newHeight":I
    :cond_3
    move-object/from16 v0, p0

    #@b8
    iget v2, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    #@ba
    goto :goto_4

    #@bb
    .line 148
    .end local v3    # "child":Landroid/view/View;
    .end local v9    # "childHeight":I
    .end local v14    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    :cond_4
    move-object/from16 v0, p0

    #@bd
    iget v2, v0, Landroid/view/View;->mPaddingLeft:I

    #@bf
    move-object/from16 v0, p0

    #@c1
    iget v4, v0, Landroid/view/View;->mPaddingRight:I

    #@c3
    add-int v15, v2, v4

    #@c5
    .line 149
    .local v15, "measuredWidth":I
    move-object/from16 v0, p0

    #@c7
    iget v13, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mIndentLines:I

    #@c9
    .line 150
    .local v13, "imageLines":I
    const/4 v12, 0x0

    #@ca
    :goto_5
    if-ge v12, v10, :cond_a

    #@cc
    .line 151
    move-object/from16 v0, p0

    #@ce
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@d1
    move-result-object v3

    #@d2
    .line 152
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@d5
    move-result-object v14

    #@d6
    check-cast v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    #@d8
    .line 154
    .restart local v14    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    #@db
    move-result v2

    #@dc
    const/16 v4, 0x8

    #@de
    if-eq v2, v4, :cond_5

    #@e0
    iget-boolean v2, v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    #@e2
    if-eqz v2, :cond_6

    #@e4
    .line 150
    :cond_5
    :goto_6
    add-int/lit8 v12, v12, 0x1

    #@e6
    goto :goto_5

    #@e7
    .line 158
    :cond_6
    instance-of v2, v3, Lcom/android/internal/widget/ImageFloatingTextView;

    #@e9
    if-eqz v2, :cond_9

    #@eb
    move-object/from16 v18, v3

    #@ed
    .line 159
    nop

    #@ee
    nop

    #@ef
    .line 160
    .local v18, "textChild":Lcom/android/internal/widget/ImageFloatingTextView;
    const/4 v2, 0x2

    #@f0
    if-ne v13, v2, :cond_7

    #@f2
    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getLineCount()I

    #@f5
    move-result v2

    #@f6
    const/4 v4, 0x2

    #@f7
    if-le v2, v4, :cond_7

    #@f9
    .line 164
    const/4 v13, 0x3

    #@fa
    .line 166
    :cond_7
    const/4 v2, 0x0

    #@fb
    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    #@fe
    move-result v2

    #@ff
    move-object/from16 v0, v18

    #@101
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ImageFloatingTextView;->setNumIndentLines(I)Z

    #@104
    move-result v8

    #@105
    .line 167
    .local v8, "changed":Z
    if-eqz v8, :cond_8

    #@107
    .line 168
    const/4 v5, 0x0

    #@108
    const/4 v7, 0x0

    #@109
    move-object/from16 v2, p0

    #@10b
    move/from16 v4, p1

    #@10d
    move/from16 v6, p2

    #@10f
    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    #@112
    .line 170
    :cond_8
    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getLineCount()I

    #@115
    move-result v2

    #@116
    sub-int/2addr v13, v2

    #@117
    .line 174
    .end local v8    # "changed":Z
    .end local v18    # "textChild":Lcom/android/internal/widget/ImageFloatingTextView;
    :cond_9
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    #@11a
    move-result v2

    #@11b
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@11d
    add-int/2addr v2, v4

    #@11e
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@120
    add-int/2addr v2, v4

    #@121
    .line 175
    move-object/from16 v0, p0

    #@123
    iget v4, v0, Landroid/view/View;->mPaddingLeft:I

    #@125
    .line 174
    add-int/2addr v2, v4

    #@126
    .line 175
    move-object/from16 v0, p0

    #@128
    iget v4, v0, Landroid/view/View;->mPaddingRight:I

    #@12a
    .line 174
    add-int/2addr v2, v4

    #@12b
    .line 173
    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    #@12e
    move-result v15

    #@12f
    goto :goto_6

    #@130
    .line 180
    .end local v3    # "child":Landroid/view/View;
    .end local v14    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    #@133
    move-result v2

    #@134
    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    #@137
    move-result v2

    #@138
    move/from16 v0, p1

    #@13a
    invoke-static {v2, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->resolveSize(II)I

    #@13d
    move-result v2

    #@13e
    .line 182
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    #@141
    move-result v4

    #@142
    move/from16 v0, v19

    #@144
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    #@147
    move-result v4

    #@148
    move/from16 v0, p2

    #@14a
    invoke-static {v4, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->resolveSize(II)I

    #@14d
    move-result v4

    #@14e
    .line 179
    move-object/from16 v0, p0

    #@150
    invoke-virtual {v0, v2, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    #@153
    .line 86
    return-void

    #@154
    .line 90
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setContractedChildId(I)V
    .locals 0
    .param p1, "contractedChildId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 276
    iput p1, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mContractedChildId:I

    #@2
    .line 275
    return-void
.end method

.method public setNumIndentLines(I)V
    .locals 0
    .param p1, "numberLines"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 268
    iput p1, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mIndentLines:I

    #@2
    .line 267
    return-void
.end method
