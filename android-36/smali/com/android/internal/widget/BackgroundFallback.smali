.class public Lcom/android/internal/widget/BackgroundFallback;
.super Ljava/lang/Object;
.source "BackgroundFallback.java"


# instance fields
.field private blacklist mBackgroundFallback:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist isOpaque(Landroid/graphics/drawable/Drawable;)Z
    .registers 4
    .param p1, "childBg"    # Landroid/graphics/drawable/Drawable;

    .line 164
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private blacklist viewsCoverEntireWidth(Landroid/view/View;Landroid/view/View;I)Z
    .registers 6
    .param p1, "view1"    # Landroid/view/View;
    .param p2, "view2"    # Landroid/view/View;
    .param p3, "width"    # I

    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    if-gtz v0, :cond_18

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt v0, v1, :cond_18

    .line 180
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    if-lt v0, p3, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 178
    :goto_19
    return v0
.end method


# virtual methods
.method public blacklist draw(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/graphics/Canvas;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 27
    .param p1, "boundsView"    # Landroid/view/ViewGroup;
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "c"    # Landroid/graphics/Canvas;
    .param p4, "content"    # Landroid/view/View;
    .param p5, "coveringView1"    # Landroid/view/View;
    .param p6, "coveringView2"    # Landroid/view/View;

    .line 59
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual {v0}, Lcom/android/internal/widget/BackgroundFallback;->hasFallback()Z

    move-result v4

    if-nez v4, :cond_f

    .line 60
    return-void

    .line 64
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    .line 65
    .local v4, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    .line 67
    .local v5, "height":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v6

    .line 68
    .local v6, "rootOffsetX":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v7

    .line 70
    .local v7, "rootOffsetY":I
    move v8, v4

    .line 71
    .local v8, "left":I
    move v9, v5

    .line 72
    .local v9, "top":I
    const/4 v10, 0x0

    .line 73
    .local v10, "right":I
    const/4 v11, 0x0

    .line 75
    .local v11, "bottom":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    .line 76
    .local v12, "childCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_28
    if-ge v13, v12, :cond_8c

    .line 77
    move-object/from16 v14, p2

    invoke-virtual {v14, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 78
    .local v15, "child":Landroid/view/View;
    move/from16 v16, v6

    .end local v6    # "rootOffsetX":I
    .local v16, "rootOffsetX":I
    invoke-virtual {v15}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 79
    .local v6, "childBg":Landroid/graphics/drawable/Drawable;
    move/from16 v17, v7

    move-object/from16 v7, p4

    .end local v7    # "rootOffsetY":I
    .local v17, "rootOffsetY":I
    if-ne v15, v7, :cond_4c

    .line 82
    if-nez v6, :cond_59

    instance-of v7, v15, Landroid/view/ViewGroup;

    if-eqz v7, :cond_59

    move-object v7, v15

    check-cast v7, Landroid/view/ViewGroup;

    .line 83
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-nez v7, :cond_59

    .line 84
    goto :goto_85

    .line 86
    :cond_4c
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_85

    invoke-direct {v0, v6}, Lcom/android/internal/widget/BackgroundFallback;->isOpaque(Landroid/graphics/drawable/Drawable;)Z

    move-result v7

    if-nez v7, :cond_59

    .line 90
    goto :goto_85

    .line 92
    :cond_59
    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v7

    add-int v7, v16, v7

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 93
    .end local v8    # "left":I
    .local v7, "left":I
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v8

    add-int v8, v17, v8

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 94
    .end local v9    # "top":I
    .local v8, "top":I
    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v9

    add-int v9, v16, v9

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 95
    .end local v10    # "right":I
    .local v9, "right":I
    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v10

    add-int v10, v17, v10

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v7

    .line 76
    .end local v6    # "childBg":Landroid/graphics/drawable/Drawable;
    .end local v7    # "left":I
    .end local v15    # "child":Landroid/view/View;
    .local v8, "left":I
    .local v9, "top":I
    .restart local v10    # "right":I
    :cond_85
    :goto_85
    add-int/lit8 v13, v13, 0x1

    move/from16 v6, v16

    move/from16 v7, v17

    goto :goto_28

    .end local v16    # "rootOffsetX":I
    .end local v17    # "rootOffsetY":I
    .local v6, "rootOffsetX":I
    .local v7, "rootOffsetY":I
    :cond_8c
    move-object/from16 v14, p2

    move/from16 v16, v6

    move/from16 v17, v7

    .line 100
    .end local v6    # "rootOffsetX":I
    .end local v7    # "rootOffsetY":I
    .end local v13    # "i":I
    .restart local v16    # "rootOffsetX":I
    .restart local v17    # "rootOffsetY":I
    const/4 v6, 0x1

    .line 101
    .local v6, "eachBarCoversTopInY":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_94
    const/4 v13, 0x2

    if-ge v7, v13, :cond_135

    .line 102
    if-nez v7, :cond_9b

    move-object v13, v2

    goto :goto_9c

    :cond_9b
    move-object v13, v3

    .line 103
    .local v13, "v":Landroid/view/View;
    :goto_9c
    if-eqz v13, :cond_12f

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v18

    if-nez v18, :cond_12f

    .line 104
    invoke-virtual {v13}, Landroid/view/View;->getAlpha()F

    move-result v18

    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v18, v18, v19

    if-nez v18, :cond_12f

    invoke-virtual {v13}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-direct {v0, v15}, Lcom/android/internal/widget/BackgroundFallback;->isOpaque(Landroid/graphics/drawable/Drawable;)Z

    move-result v15

    if-nez v15, :cond_ba

    goto/16 :goto_12f

    .line 110
    :cond_ba
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v15

    if-gtz v15, :cond_d3

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v15

    if-lt v15, v5, :cond_d3

    .line 111
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v15

    if-gtz v15, :cond_d3

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v15

    if-lt v15, v8, :cond_d3

    .line 112
    const/4 v8, 0x0

    .line 115
    :cond_d3
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v15

    if-gtz v15, :cond_ec

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v15

    if-lt v15, v5, :cond_ec

    .line 116
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v15

    if-gt v15, v10, :cond_ec

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v15

    if-lt v15, v4, :cond_ec

    .line 117
    move v10, v4

    .line 120
    :cond_ec
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v15

    if-gtz v15, :cond_105

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v15

    if-lt v15, v9, :cond_105

    .line 121
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v15

    if-gtz v15, :cond_105

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v15

    if-lt v15, v4, :cond_105

    .line 122
    const/4 v9, 0x0

    .line 125
    :cond_105
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v15

    if-gt v15, v11, :cond_11e

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v15

    if-lt v15, v5, :cond_11e

    .line 126
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v15

    if-gtz v15, :cond_11e

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v15

    if-lt v15, v4, :cond_11e

    .line 127
    move v11, v5

    .line 130
    :cond_11e
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v15

    if-gtz v15, :cond_12c

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v15

    if-lt v15, v9, :cond_12c

    const/4 v15, 0x1

    goto :goto_12d

    :cond_12c
    const/4 v15, 0x0

    :goto_12d
    and-int/2addr v6, v15

    goto :goto_131

    .line 105
    :cond_12f
    :goto_12f
    const/4 v6, 0x0

    .line 106
    nop

    .line 101
    .end local v13    # "v":Landroid/view/View;
    :goto_131
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_94

    .line 135
    .end local v7    # "i":I
    :cond_135
    if-eqz v6, :cond_144

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/widget/BackgroundFallback;->viewsCoverEntireWidth(Landroid/view/View;Landroid/view/View;I)Z

    move-result v7

    if-nez v7, :cond_143

    .line 136
    invoke-direct {v0, v3, v2, v4}, Lcom/android/internal/widget/BackgroundFallback;->viewsCoverEntireWidth(Landroid/view/View;Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_144

    .line 137
    :cond_143
    const/4 v9, 0x0

    .line 140
    :cond_144
    if-ge v8, v10, :cond_17d

    if-lt v9, v11, :cond_149

    goto :goto_17d

    .line 145
    :cond_149
    if-lez v9, :cond_157

    .line 146
    iget-object v7, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    invoke-virtual {v7, v13, v13, v4, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 147
    iget-object v7, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_158

    .line 145
    :cond_157
    const/4 v13, 0x0

    .line 149
    :goto_158
    if-lez v8, :cond_164

    .line 150
    iget-object v7, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v13, v9, v8, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 151
    iget-object v7, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 153
    :cond_164
    if-ge v10, v4, :cond_170

    .line 154
    iget-object v7, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v10, v9, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 155
    iget-object v7, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 157
    :cond_170
    if-ge v11, v5, :cond_17c

    .line 158
    iget-object v7, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8, v11, v10, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 159
    iget-object v7, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 161
    :cond_17c
    return-void

    .line 142
    :cond_17d
    :goto_17d
    return-void
.end method

.method public blacklist getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public blacklist hasFallback()Z
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist setDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 36
    iput-object p1, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    .line 37
    return-void
.end method
