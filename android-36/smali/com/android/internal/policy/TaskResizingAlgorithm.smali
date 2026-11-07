.class public Lcom/android/internal/policy/TaskResizingAlgorithm;
.super Ljava/lang/Object;
.source "TaskResizingAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/TaskResizingAlgorithm$CtrlType;
    }
.end annotation


# static fields
.field public static final blacklist CTRL_BOTTOM:I = 0x8

.field public static final blacklist CTRL_LEFT:I = 0x1

.field public static final blacklist CTRL_NONE:I = 0x0

.field public static final blacklist CTRL_RIGHT:I = 0x2

.field public static final blacklist CTRL_TOP:I = 0x4

.field public static final blacklist MIN_ASPECT:F = 1.2f


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist resizeDrag(FFFFLandroid/graphics/Rect;IIILandroid/graphics/Point;ZZ)Landroid/graphics/Rect;
    .registers 31
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "startDragX"    # F
    .param p3, "startDragY"    # F
    .param p4, "originalBounds"    # Landroid/graphics/Rect;
    .param p5, "ctrlType"    # I
    .param p6, "minVisibleWidth"    # I
    .param p7, "minVisibleHeight"    # I
    .param p8, "maxVisibleSize"    # Landroid/graphics/Point;
    .param p9, "preserveOrientation"    # Z
    .param p10, "startOrientationWasLandscape"    # Z

    .line 81
    move-object/from16 v0, p4

    move/from16 v1, p6

    move/from16 v2, p7

    move-object/from16 v3, p8

    sub-float v4, p0, p2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 82
    .local v4, "deltaX":I
    sub-float v5, p1, p3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 83
    .local v5, "deltaY":I
    iget v6, v0, Landroid/graphics/Rect;->left:I

    .line 84
    .local v6, "left":I
    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 85
    .local v7, "top":I
    iget v8, v0, Landroid/graphics/Rect;->right:I

    .line 86
    .local v8, "right":I
    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    .line 89
    .local v9, "bottom":I
    sub-int v10, v8, v6

    .line 90
    .local v10, "width":I
    sub-int v11, v9, v7

    .line 91
    .local v11, "height":I
    and-int/lit8 v12, p5, 0x1

    if-eqz v12, :cond_31

    .line 92
    sub-int v12, v10, v4

    iget v13, v3, Landroid/graphics/Point;->x:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v1, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_41

    .line 93
    :cond_31
    and-int/lit8 v12, p5, 0x2

    if-eqz v12, :cond_41

    .line 94
    add-int v12, v10, v4

    iget v13, v3, Landroid/graphics/Point;->x:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v1, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 96
    :cond_41
    :goto_41
    and-int/lit8 v12, p5, 0x4

    if-eqz v12, :cond_52

    .line 97
    sub-int v12, v11, v5

    iget v13, v3, Landroid/graphics/Point;->y:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_62

    .line 98
    :cond_52
    and-int/lit8 v12, p5, 0x8

    if-eqz v12, :cond_62

    .line 99
    add-int v12, v11, v5

    iget v13, v3, Landroid/graphics/Point;->y:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 103
    :cond_62
    :goto_62
    int-to-float v12, v10

    int-to-float v13, v11

    div-float/2addr v12, v13

    .line 104
    .local v12, "aspect":F
    if-eqz p9, :cond_16b

    const v13, 0x3f99999a    # 1.2f

    if-eqz p10, :cond_70

    cmpg-float v14, v12, v13

    if-ltz v14, :cond_7c

    :cond_70
    if-nez p10, :cond_16b

    float-to-double v14, v12

    const-wide v16, 0x3feaaaaa98e38e45L    # 0.8333333002196431

    cmpl-double v14, v14, v16

    if-lez v14, :cond_16b

    .line 112
    :cond_7c
    if-eqz p10, :cond_e1

    .line 114
    iget v14, v3, Landroid/graphics/Point;->x:I

    invoke-static {v14, v10}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 115
    .local v14, "width1":I
    int-to-float v15, v14

    div-float/2addr v15, v13

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-static {v11, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 116
    .local v15, "height1":I
    if-ge v15, v2, :cond_aa

    .line 118
    move/from16 v15, p7

    .line 119
    move/from16 v16, v13

    iget v13, v3, Landroid/graphics/Point;->x:I

    int-to-float v0, v15

    mul-float v0, v0, v16

    .line 120
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 119
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_ac

    .line 116
    :cond_aa
    move/from16 v16, v13

    .line 123
    :goto_ac
    iget v0, v3, Landroid/graphics/Point;->y:I

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 124
    .local v0, "height2":I
    int-to-float v13, v0

    mul-float v13, v13, v16

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 125
    .local v13, "width2":I
    if-ge v13, v1, :cond_dc

    .line 127
    move/from16 v13, p6

    .line 128
    move/from16 v17, v0

    .end local v0    # "height2":I
    .local v17, "height2":I
    iget v0, v3, Landroid/graphics/Point;->y:I

    move/from16 v18, v4

    .end local v4    # "deltaX":I
    .local v18, "deltaX":I
    int-to-float v4, v13

    div-float v4, v4, v16

    .line 129
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 128
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .end local v17    # "height2":I
    .restart local v0    # "height2":I
    goto/16 :goto_143

    .line 125
    .end local v18    # "deltaX":I
    .restart local v4    # "deltaX":I
    :cond_dc
    move/from16 v17, v0

    move/from16 v18, v4

    .end local v0    # "height2":I
    .end local v4    # "deltaX":I
    .restart local v17    # "height2":I
    .restart local v18    # "deltaX":I
    goto :goto_143

    .line 133
    .end local v13    # "width2":I
    .end local v14    # "width1":I
    .end local v15    # "height1":I
    .end local v17    # "height2":I
    .end local v18    # "deltaX":I
    .restart local v4    # "deltaX":I
    :cond_e1
    move/from16 v18, v4

    move/from16 v16, v13

    .end local v4    # "deltaX":I
    .restart local v18    # "deltaX":I
    iget v0, v3, Landroid/graphics/Point;->x:I

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 134
    .local v0, "width1":I
    int-to-float v4, v0

    mul-float v4, v4, v16

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 135
    .local v4, "height1":I
    if-ge v4, v2, :cond_112

    .line 137
    move/from16 v4, p7

    .line 138
    iget v13, v3, Landroid/graphics/Point;->x:I

    int-to-float v14, v4

    div-float v14, v14, v16

    .line 139
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 138
    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v14, v0

    move v15, v4

    goto :goto_114

    .line 135
    :cond_112
    move v14, v0

    move v15, v4

    .line 142
    .end local v0    # "width1":I
    .end local v4    # "height1":I
    .restart local v14    # "width1":I
    .restart local v15    # "height1":I
    :goto_114
    iget v0, v3, Landroid/graphics/Point;->y:I

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 143
    .local v0, "height2":I
    int-to-float v4, v0

    div-float v4, v4, v16

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v10, v4}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 144
    .restart local v13    # "width2":I
    if-ge v13, v1, :cond_141

    .line 146
    move/from16 v13, p6

    .line 147
    iget v4, v3, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    .end local v0    # "height2":I
    .restart local v17    # "height2":I
    int-to-float v0, v13

    mul-float v0, v0, v16

    .line 148
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 147
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .end local v17    # "height2":I
    .restart local v0    # "height2":I
    goto :goto_143

    .line 144
    :cond_141
    move/from16 v17, v0

    .line 154
    :goto_143
    sub-int v4, v8, v6

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-gt v10, v4, :cond_153

    sub-int v4, v9, v7

    if-le v11, v4, :cond_150

    goto :goto_153

    :cond_150
    move/from16 v4, v16

    goto :goto_155

    :cond_153
    :goto_153
    move/from16 v4, v17

    .line 155
    .local v4, "grows":Z
    :goto_155
    move/from16 v19, v0

    .end local v0    # "height2":I
    .local v19, "height2":I
    mul-int v0, v14, v15

    mul-int v1, v13, v19

    if-le v0, v1, :cond_160

    move/from16 v0, v17

    goto :goto_162

    :cond_160
    move/from16 v0, v16

    :goto_162
    if-ne v4, v0, :cond_167

    .line 156
    move v10, v14

    .line 157
    move v11, v15

    goto :goto_16d

    .line 159
    :cond_167
    move v10, v13

    .line 160
    move/from16 v11, v19

    goto :goto_16d

    .line 104
    .end local v13    # "width2":I
    .end local v14    # "width1":I
    .end local v15    # "height1":I
    .end local v18    # "deltaX":I
    .end local v19    # "height2":I
    .local v4, "deltaX":I
    :cond_16b
    move/from16 v18, v4

    .line 165
    .end local v4    # "deltaX":I
    .restart local v18    # "deltaX":I
    :goto_16d
    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_174

    .line 166
    sub-int v6, v8, v10

    goto :goto_176

    .line 168
    :cond_174
    add-int v8, v6, v10

    .line 170
    :goto_176
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_17d

    .line 171
    sub-int v7, v9, v11

    goto :goto_17f

    .line 173
    :cond_17d
    add-int v9, v7, v11

    .line 175
    :goto_17f
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method
