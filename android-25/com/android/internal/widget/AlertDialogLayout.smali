.class public Lcom/android/internal/widget/AlertDialogLayout;
.super Landroid/widget/LinearLayout;
.source "AlertDialogLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@3
    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 63
    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 9
    .param p1, "count"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 226
    invoke-virtual {p0}, Lcom/android/internal/widget/AlertDialogLayout;->getMeasuredWidth()I

    #@4
    move-result v0

    #@5
    const/high16 v4, 0x40000000    # 2.0f

    #@7
    .line 225
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@a
    move-result v2

    #@b
    .line 228
    .local v2, "uniformMeasureSpec":I
    const/4 v6, 0x0

    #@c
    .local v6, "i":I
    :goto_0
    if-ge v6, p1, :cond_1

    #@e
    .line 229
    invoke-virtual {p0, v6}, Lcom/android/internal/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    #@11
    move-result-object v1

    #@12
    .line 230
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    #@15
    move-result v0

    #@16
    const/16 v4, 0x8

    #@18
    if-eq v0, v4, :cond_0

    #@1a
    .line 231
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1d
    move-result-object v7

    #@1e
    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    #@20
    .line 232
    .local v7, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    #@22
    const/4 v4, -0x1

    #@23
    if-ne v0, v4, :cond_0

    #@25
    .line 235
    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@27
    .line 236
    .local v8, "oldHeight":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    #@2a
    move-result v0

    #@2b
    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@2d
    move-object v0, p0

    #@2e
    move v4, p2

    #@2f
    move v5, v3

    #@30
    .line 239
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/AlertDialogLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    #@33
    .line 240
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@35
    .line 228
    .end local v7    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "oldHeight":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@37
    goto :goto_0

    #@38
    .line 223
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private resolveMinimumHeight(Landroid/view/View;)I
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 256
    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    #@4
    move-result v0

    #@5
    .line 257
    .local v0, "minHeight":I
    if-lez v0, :cond_0

    #@7
    .line 258
    return v0

    #@8
    .line 261
    :cond_0
    instance-of v2, p1, Landroid/view/ViewGroup;

    #@a
    if-eqz v2, :cond_1

    #@c
    move-object v1, p1

    #@d
    .line 262
    check-cast v1, Landroid/view/ViewGroup;

    #@f
    .line 263
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    #@12
    move-result v2

    #@13
    const/4 v3, 0x1

    #@14
    if-ne v2, v3, :cond_1

    #@16
    .line 264
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@19
    move-result-object v2

    #@1a
    invoke-direct {p0, v2}, Lcom/android/internal/widget/AlertDialogLayout;->resolveMinimumHeight(Landroid/view/View;)I

    #@1d
    move-result v2

    #@1e
    return v2

    #@1f
    .line 268
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_1
    return v4
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    #@0
    .prologue
    .line 356
    add-int v0, p2, p4

    #@2
    add-int v1, p3, p5

    #@4
    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    #@7
    .line 355
    return-void
.end method

.method private tryOnMeasure(II)Z
    .locals 26
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 76
    const/16 v20, 0x0

    #@2
    .line 77
    .local v20, "topPanel":Landroid/view/View;
    const/4 v4, 0x0

    #@3
    .line 78
    .local v4, "buttonPanel":Landroid/view/View;
    const/16 v18, 0x0

    #@5
    .line 80
    .local v18, "middlePanel":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getChildCount()I

    #@8
    move-result v9

    #@9
    .line 81
    .local v9, "count":I
    const/4 v14, 0x0

    #@a
    .end local v4    # "buttonPanel":Landroid/view/View;
    .end local v18    # "middlePanel":Landroid/view/View;
    .end local v20    # "topPanel":Landroid/view/View;
    .local v14, "i":I
    :goto_0
    if-ge v14, v9, :cond_2

    #@c
    .line 82
    move-object/from16 v0, p0

    #@e
    invoke-virtual {v0, v14}, Lcom/android/internal/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    #@11
    move-result-object v6

    #@12
    .line 83
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    #@15
    move-result v24

    #@16
    const/16 v25, 0x8

    #@18
    move/from16 v0, v24

    #@1a
    move/from16 v1, v25

    #@1c
    if-ne v0, v1, :cond_0

    #@1e
    .line 81
    :goto_1
    add-int/lit8 v14, v14, 0x1

    #@20
    goto :goto_0

    #@21
    .line 87
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    #@24
    move-result v15

    #@25
    .line 88
    .local v15, "id":I
    sparse-switch v15, :sswitch_data_0

    #@28
    .line 105
    const/16 v24, 0x0

    #@2a
    return v24

    #@2b
    .line 90
    :sswitch_0
    move-object/from16 v20, v6

    #@2d
    .line 91
    .local v20, "topPanel":Landroid/view/View;
    goto :goto_1

    #@2e
    .line 93
    .end local v20    # "topPanel":Landroid/view/View;
    :sswitch_1
    move-object v4, v6

    #@2f
    .line 94
    .local v4, "buttonPanel":Landroid/view/View;
    goto :goto_1

    #@30
    .line 97
    .end local v4    # "buttonPanel":Landroid/view/View;
    :sswitch_2
    if-eqz v18, :cond_1

    #@32
    .line 99
    const/16 v24, 0x0

    #@34
    return v24

    #@35
    .line 101
    :cond_1
    move-object/from16 v18, v6

    #@37
    .line 102
    .local v18, "middlePanel":Landroid/view/View;
    goto :goto_1

    #@38
    .line 109
    .end local v6    # "child":Landroid/view/View;
    .end local v15    # "id":I
    .end local v18    # "middlePanel":Landroid/view/View;
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@3b
    move-result v10

    #@3c
    .line 110
    .local v10, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@3f
    move-result v11

    #@40
    .line 111
    .local v11, "heightSize":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@43
    move-result v22

    #@44
    .line 113
    .local v22, "widthMode":I
    const/4 v8, 0x0

    #@45
    .line 114
    .local v8, "childState":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getPaddingTop()I

    #@48
    move-result v24

    #@49
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getPaddingBottom()I

    #@4c
    move-result v25

    #@4d
    add-int v21, v24, v25

    #@4f
    .line 116
    .local v21, "usedHeight":I
    if-eqz v20, :cond_3

    #@51
    .line 117
    const/16 v24, 0x0

    #@53
    move-object/from16 v0, v20

    #@55
    move/from16 v1, p1

    #@57
    move/from16 v2, v24

    #@59
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    #@5c
    .line 119
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    #@5f
    move-result v24

    #@60
    add-int v21, v21, v24

    #@62
    .line 120
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredState()I

    #@65
    move-result v24

    #@66
    move/from16 v0, v24

    #@68
    invoke-static {v8, v0}, Lcom/android/internal/widget/AlertDialogLayout;->combineMeasuredStates(II)I

    #@6b
    move-result v8

    #@6c
    .line 123
    :cond_3
    const/4 v3, 0x0

    #@6d
    .line 124
    .local v3, "buttonHeight":I
    const/4 v5, 0x0

    #@6e
    .line 125
    .local v5, "buttonWantsHeight":I
    if-eqz v4, :cond_4

    #@70
    .line 126
    const/16 v24, 0x0

    #@72
    move/from16 v0, p1

    #@74
    move/from16 v1, v24

    #@76
    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    #@79
    .line 127
    move-object/from16 v0, p0

    #@7b
    invoke-direct {v0, v4}, Lcom/android/internal/widget/AlertDialogLayout;->resolveMinimumHeight(Landroid/view/View;)I

    #@7e
    move-result v3

    #@7f
    .line 128
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    #@82
    move-result v24

    #@83
    sub-int v5, v24, v3

    #@85
    .line 130
    add-int v21, v21, v3

    #@87
    .line 131
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    #@8a
    move-result v24

    #@8b
    move/from16 v0, v24

    #@8d
    invoke-static {v8, v0}, Lcom/android/internal/widget/AlertDialogLayout;->combineMeasuredStates(II)I

    #@90
    move-result v8

    #@91
    .line 134
    :cond_4
    const/16 v17, 0x0

    #@93
    .line 135
    .local v17, "middleHeight":I
    if-eqz v18, :cond_5

    #@95
    .line 137
    if-nez v10, :cond_a

    #@97
    .line 138
    const/4 v7, 0x0

    #@98
    .line 144
    .local v7, "childHeightSpec":I
    :goto_2
    move-object/from16 v0, v18

    #@9a
    move/from16 v1, p1

    #@9c
    invoke-virtual {v0, v1, v7}, Landroid/view/View;->measure(II)V

    #@9f
    .line 145
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    #@a2
    move-result v17

    #@a3
    .line 147
    add-int v21, v21, v17

    #@a5
    .line 148
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredState()I

    #@a8
    move-result v24

    #@a9
    move/from16 v0, v24

    #@ab
    invoke-static {v8, v0}, Lcom/android/internal/widget/AlertDialogLayout;->combineMeasuredStates(II)I

    #@ae
    move-result v8

    #@af
    .line 151
    .end local v7    # "childHeightSpec":I
    :cond_5
    sub-int v19, v11, v21

    #@b1
    .line 156
    .local v19, "remainingHeight":I
    if-eqz v4, :cond_7

    #@b3
    .line 157
    sub-int v21, v21, v3

    #@b5
    .line 159
    move/from16 v0, v19

    #@b7
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    #@ba
    move-result v13

    #@bb
    .line 160
    .local v13, "heightToGive":I
    if-lez v13, :cond_6

    #@bd
    .line 161
    sub-int v19, v19, v13

    #@bf
    .line 162
    add-int/2addr v3, v13

    #@c0
    .line 166
    :cond_6
    const/high16 v24, 0x40000000    # 2.0f

    #@c2
    .line 165
    move/from16 v0, v24

    #@c4
    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@c7
    move-result v7

    #@c8
    .line 167
    .restart local v7    # "childHeightSpec":I
    move/from16 v0, p1

    #@ca
    invoke-virtual {v4, v0, v7}, Landroid/view/View;->measure(II)V

    #@cd
    .line 169
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    #@d0
    move-result v24

    #@d1
    add-int v21, v21, v24

    #@d3
    .line 170
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    #@d6
    move-result v24

    #@d7
    move/from16 v0, v24

    #@d9
    invoke-static {v8, v0}, Lcom/android/internal/widget/AlertDialogLayout;->combineMeasuredStates(II)I

    #@dc
    move-result v8

    #@dd
    .line 175
    .end local v7    # "childHeightSpec":I
    .end local v13    # "heightToGive":I
    :cond_7
    if-eqz v18, :cond_8

    #@df
    if-lez v19, :cond_8

    #@e1
    .line 176
    sub-int v21, v21, v17

    #@e3
    .line 178
    move/from16 v13, v19

    #@e5
    .line 179
    .restart local v13    # "heightToGive":I
    sub-int v19, v19, v19

    #@e7
    .line 180
    add-int v17, v17, v13

    #@e9
    .line 185
    move/from16 v0, v17

    #@eb
    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@ee
    move-result v7

    #@ef
    .line 187
    .restart local v7    # "childHeightSpec":I
    move-object/from16 v0, v18

    #@f1
    move/from16 v1, p1

    #@f3
    invoke-virtual {v0, v1, v7}, Landroid/view/View;->measure(II)V

    #@f6
    .line 189
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    #@f9
    move-result v24

    #@fa
    add-int v21, v21, v24

    #@fc
    .line 190
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredState()I

    #@ff
    move-result v24

    #@100
    move/from16 v0, v24

    #@102
    invoke-static {v8, v0}, Lcom/android/internal/widget/AlertDialogLayout;->combineMeasuredStates(II)I

    #@105
    move-result v8

    #@106
    .line 194
    .end local v7    # "childHeightSpec":I
    .end local v13    # "heightToGive":I
    :cond_8
    const/16 v16, 0x0

    #@108
    .line 195
    .local v16, "maxWidth":I
    const/4 v14, 0x0

    #@109
    :goto_3
    if-ge v14, v9, :cond_b

    #@10b
    .line 196
    move-object/from16 v0, p0

    #@10d
    invoke-virtual {v0, v14}, Lcom/android/internal/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    #@110
    move-result-object v6

    #@111
    .line 197
    .restart local v6    # "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    #@114
    move-result v24

    #@115
    const/16 v25, 0x8

    #@117
    move/from16 v0, v24

    #@119
    move/from16 v1, v25

    #@11b
    if-eq v0, v1, :cond_9

    #@11d
    .line 198
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    #@120
    move-result v24

    #@121
    move/from16 v0, v16

    #@123
    move/from16 v1, v24

    #@125
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@128
    move-result v16

    #@129
    .line 195
    :cond_9
    add-int/lit8 v14, v14, 0x1

    #@12b
    goto :goto_3

    #@12c
    .line 141
    .end local v6    # "child":Landroid/view/View;
    .end local v16    # "maxWidth":I
    .end local v19    # "remainingHeight":I
    :cond_a
    sub-int v24, v11, v21

    #@12e
    const/16 v25, 0x0

    #@130
    move/from16 v0, v25

    #@132
    move/from16 v1, v24

    #@134
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@137
    move-result v24

    #@138
    .line 140
    move/from16 v0, v24

    #@13a
    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@13d
    move-result v7

    #@13e
    .restart local v7    # "childHeightSpec":I
    goto/16 :goto_2

    #@140
    .line 202
    .end local v7    # "childHeightSpec":I
    .restart local v16    # "maxWidth":I
    .restart local v19    # "remainingHeight":I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getPaddingLeft()I

    #@143
    move-result v24

    #@144
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getPaddingRight()I

    #@147
    move-result v25

    #@148
    add-int v24, v24, v25

    #@14a
    add-int v16, v16, v24

    #@14c
    .line 204
    move/from16 v0, v16

    #@14e
    move/from16 v1, p1

    #@150
    invoke-static {v0, v1, v8}, Lcom/android/internal/widget/AlertDialogLayout;->resolveSizeAndState(III)I

    #@153
    move-result v23

    #@154
    .line 205
    .local v23, "widthSizeAndState":I
    const/16 v24, 0x0

    #@156
    move/from16 v0, v21

    #@158
    move/from16 v1, p2

    #@15a
    move/from16 v2, v24

    #@15c
    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/AlertDialogLayout;->resolveSizeAndState(III)I

    #@15f
    move-result v12

    #@160
    .line 206
    .local v12, "heightSizeAndState":I
    move-object/from16 v0, p0

    #@162
    move/from16 v1, v23

    #@164
    invoke-virtual {v0, v1, v12}, Lcom/android/internal/widget/AlertDialogLayout;->setMeasuredDimension(II)V

    #@167
    .line 210
    const/high16 v24, 0x40000000    # 2.0f

    #@169
    move/from16 v0, v22

    #@16b
    move/from16 v1, v24

    #@16d
    if-eq v0, v1, :cond_c

    #@16f
    .line 211
    move-object/from16 v0, p0

    #@171
    move/from16 v1, p2

    #@173
    invoke-direct {v0, v9, v1}, Lcom/android/internal/widget/AlertDialogLayout;->forceUniformWidth(II)V

    #@176
    .line 214
    :cond_c
    const/16 v24, 0x1

    #@178
    return v24

    #@179
    .line 88
    nop

    #@17a
    :sswitch_data_0
    .sparse-switch
        0x1020323 -> :sswitch_0
        0x1020327 -> :sswitch_1
        0x102032a -> :sswitch_2
        0x102032c -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 24
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    #@0
    .prologue
    .line 273
    move-object/from16 v0, p0

    #@2
    iget v0, v0, Lcom/android/internal/widget/AlertDialogLayout;->mPaddingLeft:I

    #@4
    move/from16 v20, v0

    #@6
    .line 276
    .local v20, "paddingLeft":I
    sub-int v22, p4, p2

    #@8
    .line 277
    .local v22, "width":I
    move-object/from16 v0, p0

    #@a
    iget v1, v0, Lcom/android/internal/widget/AlertDialogLayout;->mPaddingRight:I

    #@c
    sub-int v8, v22, v1

    #@e
    .line 280
    .local v8, "childRight":I
    sub-int v1, v22, v20

    #@10
    move-object/from16 v0, p0

    #@12
    iget v0, v0, Lcom/android/internal/widget/AlertDialogLayout;->mPaddingRight:I

    #@14
    move/from16 v23, v0

    #@16
    sub-int v9, v1, v23

    #@18
    .line 282
    .local v9, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getMeasuredHeight()I

    #@1b
    move-result v21

    #@1c
    .line 283
    .local v21, "totalLength":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getChildCount()I

    #@1f
    move-result v10

    #@20
    .line 284
    .local v10, "count":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getGravity()I

    #@23
    move-result v13

    #@24
    .line 285
    .local v13, "gravity":I
    and-int/lit8 v18, v13, 0x70

    #@26
    .line 286
    .local v18, "majorGravity":I
    const v1, 0x800007

    #@29
    and-int v19, v13, v1

    #@2b
    .line 289
    .local v19, "minorGravity":I
    sparse-switch v18, :sswitch_data_0

    #@2e
    .line 302
    move-object/from16 v0, p0

    #@30
    iget v4, v0, Lcom/android/internal/widget/AlertDialogLayout;->mPaddingTop:I

    #@32
    .line 306
    .local v4, "childTop":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getDividerDrawable()Landroid/graphics/drawable/Drawable;

    #@35
    move-result-object v11

    #@36
    .line 307
    .local v11, "dividerDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v11, :cond_3

    #@38
    .line 308
    const/4 v12, 0x0

    #@39
    .line 310
    .local v12, "dividerHeight":I
    :goto_1
    const/4 v14, 0x0

    #@3a
    .local v14, "i":I
    :goto_2
    if-ge v14, v10, :cond_4

    #@3c
    .line 311
    move-object/from16 v0, p0

    #@3e
    invoke-virtual {v0, v14}, Lcom/android/internal/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    #@41
    move-result-object v2

    #@42
    .line 312
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_2

    #@44
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    #@47
    move-result v1

    #@48
    const/16 v23, 0x8

    #@4a
    move/from16 v0, v23

    #@4c
    if-eq v1, v0, :cond_2

    #@4e
    .line 313
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    #@51
    move-result v5

    #@52
    .line 314
    .local v5, "childWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    #@55
    move-result v6

    #@56
    .line 317
    .local v6, "childHeight":I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@59
    move-result-object v17

    #@5a
    check-cast v17, Landroid/widget/LinearLayout$LayoutParams;

    #@5c
    .line 319
    .local v17, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v17

    #@5e
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    #@60
    move/from16 v16, v0

    #@62
    .line 320
    .local v16, "layoutGravity":I
    if-gez v16, :cond_0

    #@64
    .line 321
    move/from16 v16, v19

    #@66
    .line 323
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getLayoutDirection()I

    #@69
    move-result v15

    #@6a
    .line 324
    .local v15, "layoutDirection":I
    move/from16 v0, v16

    #@6c
    invoke-static {v0, v15}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    #@6f
    move-result v7

    #@70
    .line 328
    .local v7, "absoluteGravity":I
    and-int/lit8 v1, v7, 0x7

    #@72
    sparse-switch v1, :sswitch_data_1

    #@75
    .line 340
    move-object/from16 v0, v17

    #@77
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    #@79
    add-int v3, v20, v1

    #@7b
    .line 344
    .local v3, "childLeft":I
    :goto_3
    move-object/from16 v0, p0

    #@7d
    invoke-virtual {v0, v14}, Lcom/android/internal/widget/AlertDialogLayout;->hasDividerBeforeChildAt(I)Z

    #@80
    move-result v1

    #@81
    if-eqz v1, :cond_1

    #@83
    .line 345
    add-int/2addr v4, v12

    #@84
    .line 348
    :cond_1
    move-object/from16 v0, v17

    #@86
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@88
    add-int/2addr v4, v1

    #@89
    move-object/from16 v1, p0

    #@8b
    .line 349
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/widget/AlertDialogLayout;->setChildFrame(Landroid/view/View;IIII)V

    #@8e
    .line 350
    move-object/from16 v0, v17

    #@90
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    #@92
    add-int/2addr v1, v6

    #@93
    add-int/2addr v4, v1

    #@94
    .line 310
    .end local v3    # "childLeft":I
    .end local v5    # "childWidth":I
    .end local v6    # "childHeight":I
    .end local v7    # "absoluteGravity":I
    .end local v15    # "layoutDirection":I
    .end local v16    # "layoutGravity":I
    .end local v17    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    add-int/lit8 v14, v14, 0x1

    #@96
    goto :goto_2

    #@97
    .line 292
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "childTop":I
    .end local v11    # "dividerDrawable":Landroid/graphics/drawable/Drawable;
    .end local v12    # "dividerHeight":I
    .end local v14    # "i":I
    :sswitch_0
    move-object/from16 v0, p0

    #@99
    iget v1, v0, Lcom/android/internal/widget/AlertDialogLayout;->mPaddingTop:I

    #@9b
    add-int v1, v1, p5

    #@9d
    sub-int v1, v1, p3

    #@9f
    sub-int v4, v1, v21

    #@a1
    .line 293
    .restart local v4    # "childTop":I
    goto :goto_0

    #@a2
    .line 297
    .end local v4    # "childTop":I
    :sswitch_1
    move-object/from16 v0, p0

    #@a4
    iget v1, v0, Lcom/android/internal/widget/AlertDialogLayout;->mPaddingTop:I

    #@a6
    sub-int v23, p5, p3

    #@a8
    sub-int v23, v23, v21

    #@aa
    div-int/lit8 v23, v23, 0x2

    #@ac
    add-int v4, v1, v23

    #@ae
    .line 298
    .restart local v4    # "childTop":I
    goto :goto_0

    #@af
    .line 308
    .restart local v11    # "dividerDrawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@b2
    move-result v12

    #@b3
    .restart local v12    # "dividerHeight":I
    goto :goto_1

    #@b4
    .line 330
    .restart local v2    # "child":Landroid/view/View;
    .restart local v5    # "childWidth":I
    .restart local v6    # "childHeight":I
    .restart local v7    # "absoluteGravity":I
    .restart local v14    # "i":I
    .restart local v15    # "layoutDirection":I
    .restart local v16    # "layoutGravity":I
    .restart local v17    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :sswitch_2
    sub-int v1, v9, v5

    #@b6
    div-int/lit8 v1, v1, 0x2

    #@b8
    add-int v1, v1, v20

    #@ba
    .line 331
    move-object/from16 v0, v17

    #@bc
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    #@be
    move/from16 v23, v0

    #@c0
    .line 330
    add-int v1, v1, v23

    #@c2
    .line 331
    move-object/from16 v0, v17

    #@c4
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    #@c6
    move/from16 v23, v0

    #@c8
    .line 330
    sub-int v3, v1, v23

    #@ca
    .line 332
    .restart local v3    # "childLeft":I
    goto :goto_3

    #@cb
    .line 335
    .end local v3    # "childLeft":I
    :sswitch_3
    sub-int v1, v8, v5

    #@cd
    move-object/from16 v0, v17

    #@cf
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    #@d1
    move/from16 v23, v0

    #@d3
    sub-int v3, v1, v23

    #@d5
    .line 336
    .restart local v3    # "childLeft":I
    goto :goto_3

    #@d6
    .line 272
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childLeft":I
    .end local v5    # "childWidth":I
    .end local v6    # "childHeight":I
    .end local v7    # "absoluteGravity":I
    .end local v15    # "layoutDirection":I
    .end local v16    # "layoutGravity":I
    .end local v17    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    return-void

    #@d7
    .line 289
    nop

    #@d8
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    #@e2
    .line 328
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/AlertDialogLayout;->tryOnMeasure(II)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 71
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    #@9
    .line 68
    :cond_0
    return-void
.end method
