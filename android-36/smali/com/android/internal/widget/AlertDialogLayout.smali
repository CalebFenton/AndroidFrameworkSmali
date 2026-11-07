.class public Lcom/android/internal/widget/AlertDialogLayout;
.super Landroid/widget/LinearLayout;
.source "AlertDialogLayout.java"


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    return-void
.end method

.method private blacklist forceUniformWidth(II)V
    .registers 12
    .param p1, "count"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 227
    nop

    .line 228
    invoke-virtual {p0}, Lcom/android/internal/widget/AlertDialogLayout;->getMeasuredWidth()I

    move-result v0

    .line 227
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 230
    .local v4, "uniformMeasureSpec":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    if-ge v0, p1, :cond_3e

    .line 231
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 232
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_39

    .line 233
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 234
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_37

    .line 237
    iget v8, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 238
    .local v8, "oldHeight":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 241
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v6, p2

    .end local p2    # "heightMeasureSpec":I
    .local v6, "heightMeasureSpec":I
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/AlertDialogLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 242
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_3a

    .line 234
    .end local v6    # "heightMeasureSpec":I
    .end local v8    # "oldHeight":I
    .restart local p2    # "heightMeasureSpec":I
    :cond_37
    move v6, p2

    .end local p2    # "heightMeasureSpec":I
    .restart local v6    # "heightMeasureSpec":I
    goto :goto_3a

    .line 232
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "heightMeasureSpec":I
    .restart local p2    # "heightMeasureSpec":I
    :cond_39
    move v6, p2

    .line 230
    .end local v3    # "child":Landroid/view/View;
    .end local p2    # "heightMeasureSpec":I
    .restart local v6    # "heightMeasureSpec":I
    :goto_3a
    add-int/lit8 v0, v0, 0x1

    move p2, v6

    goto :goto_c

    .line 246
    .end local v0    # "i":I
    .end local v6    # "heightMeasureSpec":I
    .restart local p2    # "heightMeasureSpec":I
    :cond_3e
    return-void
.end method

.method private blacklist resolveMinimumHeight(Landroid/view/View;)I
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    .line 259
    .local v0, "minHeight":I
    if-lez v0, :cond_7

    .line 260
    return v0

    .line 263
    :cond_7
    instance-of v1, p1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 264
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 265
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1f

    .line 266
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/widget/AlertDialogLayout;->resolveMinimumHeight(Landroid/view/View;)I

    move-result v2

    return v2

    .line 270
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_1f
    return v2
.end method

.method private blacklist setChildFrame(Landroid/view/View;IIII)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 358
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 359
    return-void
.end method

.method private blacklist tryOnMeasure(II)Z
    .registers 27
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 78
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    .line 79
    .local v3, "topPanel":Landroid/view/View;
    const/4 v4, 0x0

    .line 80
    .local v4, "buttonPanel":Landroid/view/View;
    const/4 v5, 0x0

    .line 82
    .local v5, "middlePanel":Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/internal/widget/AlertDialogLayout;->getChildCount()I

    move-result v6

    .line 83
    .local v6, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_e
    const/16 v8, 0x8

    const/4 v9, 0x0

    if-ge v7, v6, :cond_32

    .line 84
    invoke-virtual {v0, v7}, Lcom/android/internal/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 85
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-ne v11, v8, :cond_1e

    .line 86
    goto :goto_2f

    .line 89
    :cond_1e
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v8

    .line 90
    .local v8, "id":I
    sparse-switch v8, :sswitch_data_13a

    .line 107
    return v9

    .line 92
    :sswitch_26
    move-object v3, v10

    .line 93
    goto :goto_2f

    .line 99
    :sswitch_28
    if-eqz v5, :cond_2b

    .line 101
    return v9

    .line 103
    :cond_2b
    move-object v5, v10

    .line 104
    goto :goto_2f

    .line 95
    :sswitch_2d
    move-object v4, v10

    .line 96
    nop

    .line 83
    .end local v8    # "id":I
    .end local v10    # "child":Landroid/view/View;
    :goto_2f
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 111
    .end local v7    # "i":I
    :cond_32
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 112
    .local v7, "heightMode":I
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 113
    .local v10, "heightSize":I
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 115
    .local v11, "widthMode":I
    const/4 v12, 0x0

    .line 116
    .local v12, "childState":I
    invoke-virtual {v0}, Lcom/android/internal/widget/AlertDialogLayout;->getPaddingTop()I

    move-result v13

    invoke-virtual {v0}, Lcom/android/internal/widget/AlertDialogLayout;->getPaddingBottom()I

    move-result v14

    add-int/2addr v13, v14

    .line 118
    .local v13, "usedHeight":I
    if-eqz v3, :cond_5a

    .line 119
    invoke-virtual {v3, v1, v9}, Landroid/view/View;->measure(II)V

    .line 121
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v13, v14

    .line 122
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v14

    invoke-static {v12, v14}, Lcom/android/internal/widget/AlertDialogLayout;->combineMeasuredStates(II)I

    move-result v12

    .line 125
    :cond_5a
    const/4 v14, 0x0

    .line 126
    .local v14, "buttonHeight":I
    const/4 v15, 0x0

    .line 127
    .local v15, "buttonWantsHeight":I
    if-eqz v4, :cond_74

    .line 128
    invoke-virtual {v4, v1, v9}, Landroid/view/View;->measure(II)V

    .line 129
    invoke-direct {v0, v4}, Lcom/android/internal/widget/AlertDialogLayout;->resolveMinimumHeight(Landroid/view/View;)I

    move-result v14

    .line 130
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    sub-int v15, v16, v14

    .line 132
    add-int/2addr v13, v14

    .line 133
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v8

    invoke-static {v12, v8}, Lcom/android/internal/widget/AlertDialogLayout;->combineMeasuredStates(II)I

    move-result v12

    .line 136
    :cond_74
    const/4 v8, 0x0

    .line 137
    .local v8, "middleHeight":I
    if-eqz v5, :cond_9f

    .line 139
    if-nez v7, :cond_82

    .line 140
    const/16 v17, 0x0

    move/from16 v23, v17

    move-object/from16 v17, v3

    move/from16 v3, v23

    .local v17, "childHeightSpec":I
    goto :goto_8e

    .line 142
    .end local v17    # "childHeightSpec":I
    :cond_82
    move-object/from16 v17, v3

    .end local v3    # "topPanel":Landroid/view/View;
    .local v17, "topPanel":Landroid/view/View;
    sub-int v3, v10, v13

    .line 143
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 142
    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 146
    .local v3, "childHeightSpec":I
    :goto_8e
    invoke-virtual {v5, v1, v3}, Landroid/view/View;->measure(II)V

    .line 147
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 149
    add-int/2addr v13, v8

    .line 150
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v9

    invoke-static {v12, v9}, Lcom/android/internal/widget/AlertDialogLayout;->combineMeasuredStates(II)I

    move-result v12

    goto :goto_a1

    .line 137
    .end local v17    # "topPanel":Landroid/view/View;
    .local v3, "topPanel":Landroid/view/View;
    :cond_9f
    move-object/from16 v17, v3

    .line 153
    .end local v3    # "topPanel":Landroid/view/View;
    .restart local v17    # "topPanel":Landroid/view/View;
    :goto_a1
    sub-int v3, v10, v13

    .line 158
    .local v3, "remainingHeight":I
    const/high16 v9, 0x40000000    # 2.0f

    if-eqz v4, :cond_cb

    .line 159
    sub-int/2addr v13, v14

    .line 161
    invoke-static {v3, v15}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 162
    .local v18, "heightToGive":I
    if-lez v18, :cond_b2

    .line 163
    sub-int v3, v3, v18

    .line 164
    add-int v14, v14, v18

    .line 167
    :cond_b2
    move/from16 v19, v3

    .end local v3    # "remainingHeight":I
    .local v19, "remainingHeight":I
    invoke-static {v14, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 169
    .local v3, "childHeightSpec":I
    invoke-virtual {v4, v1, v3}, Landroid/view/View;->measure(II)V

    .line 171
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    add-int v13, v13, v20

    .line 172
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v9

    invoke-static {v12, v9}, Lcom/android/internal/widget/AlertDialogLayout;->combineMeasuredStates(II)I

    move-result v12

    move/from16 v3, v19

    .line 177
    .end local v18    # "heightToGive":I
    .end local v19    # "remainingHeight":I
    .local v3, "remainingHeight":I
    :cond_cb
    if-eqz v5, :cond_ee

    if-lez v3, :cond_ee

    .line 178
    sub-int/2addr v13, v8

    .line 180
    move v9, v3

    .line 181
    .local v9, "heightToGive":I
    sub-int/2addr v3, v9

    .line 182
    add-int/2addr v8, v9

    .line 187
    move/from16 v18, v3

    .end local v3    # "remainingHeight":I
    .local v18, "remainingHeight":I
    invoke-static {v8, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 189
    .local v3, "childHeightSpec":I
    invoke-virtual {v5, v1, v3}, Landroid/view/View;->measure(II)V

    .line 191
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    add-int v13, v13, v19

    .line 192
    move/from16 v19, v3

    .end local v3    # "childHeightSpec":I
    .local v19, "childHeightSpec":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    invoke-static {v12, v3}, Lcom/android/internal/widget/AlertDialogLayout;->combineMeasuredStates(II)I

    move-result v12

    move/from16 v3, v18

    .line 196
    .end local v9    # "heightToGive":I
    .end local v18    # "remainingHeight":I
    .end local v19    # "childHeightSpec":I
    .local v3, "remainingHeight":I
    :cond_ee
    const/4 v9, 0x0

    .line 197
    .local v9, "maxWidth":I
    const/16 v18, 0x0

    move/from16 v23, v18

    move/from16 v18, v3

    move/from16 v3, v23

    .local v3, "i":I
    .restart local v18    # "remainingHeight":I
    :goto_f7
    if-ge v3, v6, :cond_117

    .line 198
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 199
    .local v19, "child":Landroid/view/View;
    move/from16 v21, v3

    .end local v3    # "i":I
    .local v21, "i":I
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getVisibility()I

    move-result v3

    move-object/from16 v22, v4

    const/16 v4, 0x8

    .end local v4    # "buttonPanel":Landroid/view/View;
    .local v22, "buttonPanel":Landroid/view/View;
    if-eq v3, v4, :cond_112

    .line 200
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v9, v3

    .line 197
    .end local v19    # "child":Landroid/view/View;
    :cond_112
    add-int/lit8 v3, v21, 0x1

    move-object/from16 v4, v22

    .end local v21    # "i":I
    .restart local v3    # "i":I
    goto :goto_f7

    .end local v22    # "buttonPanel":Landroid/view/View;
    .restart local v4    # "buttonPanel":Landroid/view/View;
    :cond_117
    move/from16 v21, v3

    move-object/from16 v22, v4

    .line 204
    .end local v3    # "i":I
    .end local v4    # "buttonPanel":Landroid/view/View;
    .restart local v22    # "buttonPanel":Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/internal/widget/AlertDialogLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/internal/widget/AlertDialogLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v9, v3

    .line 206
    invoke-static {v9, v1, v12}, Lcom/android/internal/widget/AlertDialogLayout;->resolveSizeAndState(III)I

    move-result v3

    .line 207
    .local v3, "widthSizeAndState":I
    const/4 v4, 0x0

    invoke-static {v13, v2, v4}, Lcom/android/internal/widget/AlertDialogLayout;->resolveSizeAndState(III)I

    move-result v4

    .line 208
    .local v4, "heightSizeAndState":I
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/widget/AlertDialogLayout;->setMeasuredDimension(II)V

    .line 212
    const/high16 v1, 0x40000000    # 2.0f

    if-eq v11, v1, :cond_138

    .line 213
    invoke-direct {v0, v6, v2}, Lcom/android/internal/widget/AlertDialogLayout;->forceUniformWidth(II)V

    .line 216
    :cond_138
    const/4 v1, 0x1

    return v1

    :sswitch_data_13a
    .sparse-switch
        0x1020258 -> :sswitch_2d
        0x1020295 -> :sswitch_28
        0x10202bc -> :sswitch_28
        0x10205aa -> :sswitch_26
    .end sparse-switch
.end method


# virtual methods
.method protected whitelist onLayout(ZIIII)V
    .registers 29
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 275
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/widget/AlertDialogLayout;->mPaddingLeft:I

    .line 278
    .local v6, "paddingLeft":I
    sub-int v7, p4, p2

    .line 279
    .local v7, "width":I
    iget v1, v0, Lcom/android/internal/widget/AlertDialogLayout;->mPaddingRight:I

    sub-int v8, v7, v1

    .line 282
    .local v8, "childRight":I
    sub-int v1, v7, v6

    iget v2, v0, Lcom/android/internal/widget/AlertDialogLayout;->mPaddingRight:I

    sub-int v9, v1, v2

    .line 284
    .local v9, "childSpace":I
    invoke-virtual {v0}, Lcom/android/internal/widget/AlertDialogLayout;->getMeasuredHeight()I

    move-result v10

    .line 285
    .local v10, "totalLength":I
    invoke-virtual {v0}, Lcom/android/internal/widget/AlertDialogLayout;->getChildCount()I

    move-result v11

    .line 286
    .local v11, "count":I
    invoke-virtual {v0}, Lcom/android/internal/widget/AlertDialogLayout;->getGravity()I

    move-result v12

    .line 287
    .local v12, "gravity":I
    and-int/lit8 v13, v12, 0x70

    .line 288
    .local v13, "majorGravity":I
    const v1, 0x800007

    and-int v14, v12, v1

    .line 291
    .local v14, "minorGravity":I
    sparse-switch v13, :sswitch_data_d6

    .line 304
    iget v1, v0, Lcom/android/internal/widget/AlertDialogLayout;->mPaddingTop:I

    .local v1, "childTop":I
    goto :goto_3a

    .line 294
    .end local v1    # "childTop":I
    :sswitch_29
    iget v1, v0, Lcom/android/internal/widget/AlertDialogLayout;->mPaddingTop:I

    add-int v1, v1, p5

    sub-int v1, v1, p3

    sub-int/2addr v1, v10

    .line 295
    .restart local v1    # "childTop":I
    goto :goto_3a

    .line 299
    .end local v1    # "childTop":I
    :sswitch_31
    iget v1, v0, Lcom/android/internal/widget/AlertDialogLayout;->mPaddingTop:I

    sub-int v2, p5, p3

    sub-int/2addr v2, v10

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 300
    .restart local v1    # "childTop":I
    nop

    .line 308
    :goto_3a
    invoke-virtual {v0}, Lcom/android/internal/widget/AlertDialogLayout;->getDividerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 309
    .local v15, "dividerDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v15, :cond_42

    .line 310
    const/4 v2, 0x0

    goto :goto_46

    :cond_42
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    :goto_46
    move/from16 v16, v2

    .line 312
    .local v16, "dividerHeight":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_49
    if-ge v2, v11, :cond_d5

    .line 313
    move v3, v1

    .end local v1    # "childTop":I
    .local v3, "childTop":I
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 314
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_c4

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_c4

    .line 315
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 316
    .local v4, "childWidth":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 318
    .local v5, "childHeight":I
    nop

    .line 319
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move/from16 v18, v6

    .end local v6    # "paddingLeft":I
    .local v18, "paddingLeft":I
    move-object/from16 v6, v17

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 321
    .local v6, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v17, v1

    .end local v1    # "child":Landroid/view/View;
    .local v17, "child":Landroid/view/View;
    iget v1, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 322
    .local v1, "layoutGravity":I
    if-gez v1, :cond_74

    .line 323
    move v1, v14

    .line 325
    :cond_74
    move/from16 v19, v7

    .end local v7    # "width":I
    .local v19, "width":I
    invoke-virtual {v0}, Lcom/android/internal/widget/AlertDialogLayout;->getLayoutDirection()I

    move-result v7

    .line 326
    .local v7, "layoutDirection":I
    invoke-static {v1, v7}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v20

    .line 330
    .local v20, "absoluteGravity":I
    and-int/lit8 v21, v20, 0x7

    sparse-switch v21, :sswitch_data_e0

    .line 342
    move/from16 v22, v1

    .end local v1    # "layoutGravity":I
    .local v22, "layoutGravity":I
    iget v1, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v21, v18, v1

    .local v21, "childLeft":I
    goto :goto_a8

    .line 337
    .end local v21    # "childLeft":I
    .end local v22    # "layoutGravity":I
    .restart local v1    # "layoutGravity":I
    :sswitch_8a
    sub-int v21, v8, v4

    move/from16 v22, v1

    .end local v1    # "layoutGravity":I
    .restart local v22    # "layoutGravity":I
    iget v1, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v21, v21, v1

    .line 338
    .restart local v21    # "childLeft":I
    goto :goto_a8

    .line 332
    .end local v21    # "childLeft":I
    .end local v22    # "layoutGravity":I
    .restart local v1    # "layoutGravity":I
    :sswitch_93
    move/from16 v22, v1

    .end local v1    # "layoutGravity":I
    .restart local v22    # "layoutGravity":I
    sub-int v1, v9, v4

    div-int/lit8 v1, v1, 0x2

    add-int v1, v18, v1

    move/from16 v21, v1

    iget v1, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v1, v21, v1

    move/from16 v21, v1

    iget v1, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v21, v21, v1

    .line 334
    .restart local v21    # "childLeft":I
    nop

    .line 346
    :goto_a8
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/AlertDialogLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 347
    add-int v1, v3, v16

    .end local v3    # "childTop":I
    .local v1, "childTop":I
    goto :goto_b2

    .line 346
    .end local v1    # "childTop":I
    .restart local v3    # "childTop":I
    :cond_b1
    move v1, v3

    .line 350
    .end local v3    # "childTop":I
    .restart local v1    # "childTop":I
    :goto_b2
    iget v3, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v1

    .line 351
    .end local v1    # "childTop":I
    .restart local v3    # "childTop":I
    move-object/from16 v1, v17

    move/from16 v17, v2

    move/from16 v2, v21

    .end local v21    # "childLeft":I
    .local v1, "child":Landroid/view/View;
    .local v2, "childLeft":I
    .local v17, "i":I
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/AlertDialogLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 352
    iget v0, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v5

    add-int/2addr v3, v0

    move v1, v3

    goto :goto_cb

    .line 314
    .end local v4    # "childWidth":I
    .end local v5    # "childHeight":I
    .end local v17    # "i":I
    .end local v18    # "paddingLeft":I
    .end local v19    # "width":I
    .end local v20    # "absoluteGravity":I
    .end local v22    # "layoutGravity":I
    .local v2, "i":I
    .local v6, "paddingLeft":I
    .local v7, "width":I
    :cond_c4
    move/from16 v17, v2

    move/from16 v18, v6

    move/from16 v19, v7

    .line 312
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "i":I
    .end local v6    # "paddingLeft":I
    .end local v7    # "width":I
    .restart local v17    # "i":I
    .restart local v18    # "paddingLeft":I
    .restart local v19    # "width":I
    move v1, v3

    .end local v3    # "childTop":I
    .local v1, "childTop":I
    :goto_cb
    add-int/lit8 v2, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v6, v18

    move/from16 v7, v19

    .end local v17    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_49

    .line 355
    .end local v2    # "i":I
    .end local v18    # "paddingLeft":I
    .end local v19    # "width":I
    .restart local v6    # "paddingLeft":I
    .restart local v7    # "width":I
    :cond_d5
    return-void

    :sswitch_data_d6
    .sparse-switch
        0x10 -> :sswitch_31
        0x50 -> :sswitch_29
    .end sparse-switch

    :sswitch_data_e0
    .sparse-switch
        0x1 -> :sswitch_93
        0x5 -> :sswitch_8a
    .end sparse-switch
.end method

.method protected whitelist onMeasure(II)V
    .registers 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/AlertDialogLayout;->tryOnMeasure(II)Z

    move-result v0

    if-nez v0, :cond_9

    .line 73
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 75
    :cond_9
    return-void
.end method
