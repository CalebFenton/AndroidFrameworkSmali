.class public Lcom/android/internal/widget/AlertDialogLayout;
.super Landroid/widget/LinearLayout;
.source "AlertDialogLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@3
    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    .line 56
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
    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 61
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
    .line 224
    invoke-virtual {p0}, Lcom/android/internal/widget/AlertDialogLayout;->getMeasuredWidth()I

    #@4
    move-result v0

    #@5
    const/high16 v4, 0x40000000    # 2.0f

    #@7
    .line 223
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@a
    move-result v2

    #@b
    .line 226
    .local v2, "uniformMeasureSpec":I
    const/4 v6, 0x0

    #@c
    .local v6, "i":I
    :goto_0
    if-ge v6, p1, :cond_1

    #@e
    .line 227
    invoke-virtual {p0, v6}, Lcom/android/internal/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    #@11
    move-result-object v1

    #@12
    .line 228
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    #@15
    move-result v0

    #@16
    const/16 v4, 0x8

    #@18
    if-eq v0, v4, :cond_0

    #@1a
    .line 229
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1d
    move-result-object v7

    #@1e
    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    #@20
    .line 230
    .local v7, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    #@22
    const/4 v4, -0x1

    #@23
    if-ne v0, v4, :cond_0

    #@25
    .line 233
    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@27
    .line 234
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
    .line 237
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/AlertDialogLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    #@33
    .line 238
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@35
    .line 226
    .end local v7    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "oldHeight":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@37
    goto :goto_0

    #@38
    .line 221
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
    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    #@4
    move-result v0

    #@5
    .line 255
    .local v0, "minHeight":I
    if-lez v0, :cond_0

    #@7
    .line 256
    return v0

    #@8
    .line 259
    :cond_0
    instance-of v2, p1, Landroid/view/ViewGroup;

    #@a
    if-eqz v2, :cond_1

    #@c
    move-object v1, p1

    #@d
    .line 260
    check-cast v1, Landroid/view/ViewGroup;

    #@f
    .line 261
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    #@12
    move-result v2

    #@13
    const/4 v3, 0x1

    #@14
    if-ne v2, v3, :cond_1

    #@16
    .line 262
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
    .line 266
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_1
    return v4
.end method

.method private tryOnMeasure(II)Z
    .locals 26
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 74
    const/16 v20, 0x0

    #@2
    .line 75
    .local v20, "topPanel":Landroid/view/View;
    const/4 v4, 0x0

    #@3
    .line 76
    .local v4, "buttonPanel":Landroid/view/View;
    const/16 v18, 0x0

    #@5
    .line 78
    .local v18, "middlePanel":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getChildCount()I

    #@8
    move-result v9

    #@9
    .line 79
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
    .line 80
    move-object/from16 v0, p0

    #@e
    invoke-virtual {v0, v14}, Lcom/android/internal/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    #@11
    move-result-object v6

    #@12
    .line 81
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
    .line 79
    :goto_1
    add-int/lit8 v14, v14, 0x1

    #@20
    goto :goto_0

    #@21
    .line 85
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    #@24
    move-result v15

    #@25
    .line 86
    .local v15, "id":I
    sparse-switch v15, :sswitch_data_0

    #@28
    .line 103
    const/16 v24, 0x0

    #@2a
    return v24

    #@2b
    .line 88
    :sswitch_0
    move-object/from16 v20, v6

    #@2d
    .line 89
    .local v20, "topPanel":Landroid/view/View;
    goto :goto_1

    #@2e
    .line 91
    .end local v20    # "topPanel":Landroid/view/View;
    :sswitch_1
    move-object v4, v6

    #@2f
    .line 92
    .local v4, "buttonPanel":Landroid/view/View;
    goto :goto_1

    #@30
    .line 95
    .end local v4    # "buttonPanel":Landroid/view/View;
    :sswitch_2
    if-eqz v18, :cond_1

    #@32
    .line 97
    const/16 v24, 0x0

    #@34
    return v24

    #@35
    .line 99
    :cond_1
    move-object/from16 v18, v6

    #@37
    .line 100
    .local v18, "middlePanel":Landroid/view/View;
    goto :goto_1

    #@38
    .line 107
    .end local v6    # "child":Landroid/view/View;
    .end local v15    # "id":I
    .end local v18    # "middlePanel":Landroid/view/View;
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@3b
    move-result v10

    #@3c
    .line 108
    .local v10, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@3f
    move-result v11

    #@40
    .line 109
    .local v11, "heightSize":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@43
    move-result v22

    #@44
    .line 111
    .local v22, "widthMode":I
    const/4 v8, 0x0

    #@45
    .line 112
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
    .line 114
    .local v21, "usedHeight":I
    if-eqz v20, :cond_3

    #@51
    .line 115
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
    .line 117
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    #@5f
    move-result v24

    #@60
    add-int v21, v21, v24

    #@62
    .line 118
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
    .line 121
    :cond_3
    const/4 v3, 0x0

    #@6d
    .line 122
    .local v3, "buttonHeight":I
    const/4 v5, 0x0

    #@6e
    .line 123
    .local v5, "buttonWantsHeight":I
    if-eqz v4, :cond_4

    #@70
    .line 124
    const/16 v24, 0x0

    #@72
    move/from16 v0, p1

    #@74
    move/from16 v1, v24

    #@76
    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    #@79
    .line 125
    move-object/from16 v0, p0

    #@7b
    invoke-direct {v0, v4}, Lcom/android/internal/widget/AlertDialogLayout;->resolveMinimumHeight(Landroid/view/View;)I

    #@7e
    move-result v3

    #@7f
    .line 126
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    #@82
    move-result v24

    #@83
    sub-int v5, v24, v3

    #@85
    .line 128
    add-int v21, v21, v3

    #@87
    .line 129
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
    .line 132
    :cond_4
    const/16 v17, 0x0

    #@93
    .line 133
    .local v17, "middleHeight":I
    if-eqz v18, :cond_5

    #@95
    .line 135
    if-nez v10, :cond_a

    #@97
    .line 136
    const/4 v7, 0x0

    #@98
    .line 142
    .local v7, "childHeightSpec":I
    :goto_2
    move-object/from16 v0, v18

    #@9a
    move/from16 v1, p1

    #@9c
    invoke-virtual {v0, v1, v7}, Landroid/view/View;->measure(II)V

    #@9f
    .line 143
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    #@a2
    move-result v17

    #@a3
    .line 145
    add-int v21, v21, v17

    #@a5
    .line 146
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
    .line 149
    .end local v7    # "childHeightSpec":I
    :cond_5
    sub-int v19, v11, v21

    #@b1
    .line 154
    .local v19, "remainingHeight":I
    if-eqz v4, :cond_7

    #@b3
    .line 155
    sub-int v21, v21, v3

    #@b5
    .line 157
    move/from16 v0, v19

    #@b7
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    #@ba
    move-result v13

    #@bb
    .line 158
    .local v13, "heightToGive":I
    if-lez v13, :cond_6

    #@bd
    .line 159
    sub-int v19, v19, v13

    #@bf
    .line 160
    add-int/2addr v3, v13

    #@c0
    .line 164
    :cond_6
    const/high16 v24, 0x40000000    # 2.0f

    #@c2
    .line 163
    move/from16 v0, v24

    #@c4
    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@c7
    move-result v7

    #@c8
    .line 165
    .restart local v7    # "childHeightSpec":I
    move/from16 v0, p1

    #@ca
    invoke-virtual {v4, v0, v7}, Landroid/view/View;->measure(II)V

    #@cd
    .line 167
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    #@d0
    move-result v24

    #@d1
    add-int v21, v21, v24

    #@d3
    .line 168
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
    .line 173
    .end local v7    # "childHeightSpec":I
    .end local v13    # "heightToGive":I
    :cond_7
    if-eqz v18, :cond_8

    #@df
    if-lez v19, :cond_8

    #@e1
    .line 174
    sub-int v21, v21, v17

    #@e3
    .line 176
    move/from16 v13, v19

    #@e5
    .line 177
    .restart local v13    # "heightToGive":I
    sub-int v19, v19, v19

    #@e7
    .line 178
    add-int v17, v17, v13

    #@e9
    .line 183
    move/from16 v0, v17

    #@eb
    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@ee
    move-result v7

    #@ef
    .line 185
    .restart local v7    # "childHeightSpec":I
    move-object/from16 v0, v18

    #@f1
    move/from16 v1, p1

    #@f3
    invoke-virtual {v0, v1, v7}, Landroid/view/View;->measure(II)V

    #@f6
    .line 187
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    #@f9
    move-result v24

    #@fa
    add-int v21, v21, v24

    #@fc
    .line 188
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
    .line 192
    .end local v7    # "childHeightSpec":I
    .end local v13    # "heightToGive":I
    :cond_8
    const/16 v16, 0x0

    #@108
    .line 193
    .local v16, "maxWidth":I
    const/4 v14, 0x0

    #@109
    :goto_3
    if-ge v14, v9, :cond_b

    #@10b
    .line 194
    move-object/from16 v0, p0

    #@10d
    invoke-virtual {v0, v14}, Lcom/android/internal/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    #@110
    move-result-object v6

    #@111
    .line 195
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
    .line 196
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
    .line 193
    :cond_9
    add-int/lit8 v14, v14, 0x1

    #@12b
    goto :goto_3

    #@12c
    .line 139
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
    .line 138
    move/from16 v0, v24

    #@13a
    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@13d
    move-result v7

    #@13e
    .restart local v7    # "childHeightSpec":I
    goto/16 :goto_2

    #@140
    .line 200
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
    .line 202
    move/from16 v0, v16

    #@14e
    move/from16 v1, p1

    #@150
    invoke-static {v0, v1, v8}, Lcom/android/internal/widget/AlertDialogLayout;->resolveSizeAndState(III)I

    #@153
    move-result v23

    #@154
    .line 203
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
    .line 204
    .local v12, "heightSizeAndState":I
    move-object/from16 v0, p0

    #@162
    move/from16 v1, v23

    #@164
    invoke-virtual {v0, v1, v12}, Lcom/android/internal/widget/AlertDialogLayout;->setMeasuredDimension(II)V

    #@167
    .line 208
    const/high16 v24, 0x40000000    # 2.0f

    #@169
    move/from16 v0, v22

    #@16b
    move/from16 v1, v24

    #@16d
    if-eq v0, v1, :cond_c

    #@16f
    .line 209
    move-object/from16 v0, p0

    #@171
    move/from16 v1, p2

    #@173
    invoke-direct {v0, v9, v1}, Lcom/android/internal/widget/AlertDialogLayout;->forceUniformWidth(II)V

    #@176
    .line 212
    :cond_c
    const/16 v24, 0x1

    #@178
    return v24

    #@179
    .line 86
    nop

    #@17a
    :sswitch_data_0
    .sparse-switch
        0x102031d -> :sswitch_0
        0x1020321 -> :sswitch_1
        0x1020324 -> :sswitch_2
        0x1020326 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/AlertDialogLayout;->tryOnMeasure(II)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 69
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    #@9
    .line 66
    :cond_0
    return-void
.end method
