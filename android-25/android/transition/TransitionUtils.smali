.class public Landroid/transition/TransitionUtils;
.super Ljava/lang/Object;
.source "TransitionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/TransitionUtils$MatrixEvaluator;
    }
.end annotation


# static fields
.field private static MAX_IMAGE_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 39
    const/high16 v0, 0x100000

    #@2
    sput v0, Landroid/transition/TransitionUtils;->MAX_IMAGE_SIZE:I

    #@4
    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 14
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;

    #@0
    .prologue
    .line 89
    new-instance v6, Landroid/graphics/Matrix;

    #@2
    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    #@5
    .line 90
    .local v6, "matrix":Landroid/graphics/Matrix;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollX()I

    #@8
    move-result v10

    #@9
    neg-int v10, v10

    #@a
    int-to-float v10, v10

    #@b
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollY()I

    #@e
    move-result v11

    #@f
    neg-int v11, v11

    #@10
    int-to-float v11, v11

    #@11
    invoke-virtual {v6, v10, v11}, Landroid/graphics/Matrix;->setTranslate(FF)V

    #@14
    .line 91
    invoke-virtual {p1, v6}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    #@17
    .line 92
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    #@1a
    .line 93
    new-instance v2, Landroid/graphics/RectF;

    #@1c
    const/4 v10, 0x0

    #@1d
    const/4 v11, 0x0

    #@1e
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@21
    move-result v12

    #@22
    int-to-float v12, v12

    #@23
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@26
    move-result v13

    #@27
    int-to-float v13, v13

    #@28
    invoke-direct {v2, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@2b
    .line 94
    .local v2, "bounds":Landroid/graphics/RectF;
    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    #@2e
    .line 95
    iget v10, v2, Landroid/graphics/RectF;->left:F

    #@30
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    #@33
    move-result v5

    #@34
    .line 96
    .local v5, "left":I
    iget v10, v2, Landroid/graphics/RectF;->top:F

    #@36
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    #@39
    move-result v8

    #@3a
    .line 97
    .local v8, "top":I
    iget v10, v2, Landroid/graphics/RectF;->right:F

    #@3c
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    #@3f
    move-result v7

    #@40
    .line 98
    .local v7, "right":I
    iget v10, v2, Landroid/graphics/RectF;->bottom:F

    #@42
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    #@45
    move-result v1

    #@46
    .line 100
    .local v1, "bottom":I
    new-instance v3, Landroid/widget/ImageView;

    #@48
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@4b
    move-result-object v10

    #@4c
    invoke-direct {v3, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    #@4f
    .line 101
    .local v3, "copy":Landroid/widget/ImageView;
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    #@51
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@54
    .line 102
    invoke-static {p1, v6, v2}, Landroid/transition/TransitionUtils;->createViewBitmap(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    #@57
    move-result-object v0

    #@58
    .line 103
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    #@5a
    .line 104
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    #@5d
    .line 106
    :cond_0
    sub-int v10, v7, v5

    #@5f
    const/high16 v11, 0x40000000    # 2.0f

    #@61
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@64
    move-result v9

    #@65
    .line 107
    .local v9, "widthSpec":I
    sub-int v10, v1, v8

    #@67
    const/high16 v11, 0x40000000    # 2.0f

    #@69
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@6c
    move-result v4

    #@6d
    .line 108
    .local v4, "heightSpec":I
    invoke-virtual {v3, v9, v4}, Landroid/widget/ImageView;->measure(II)V

    #@70
    .line 109
    invoke-virtual {v3, v5, v8, v7, v1}, Landroid/widget/ImageView;->layout(IIII)V

    #@73
    .line 110
    return-object v3
.end method

.method public static createDrawableBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@3
    move-result v11

    #@4
    .line 118
    .local v11, "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@7
    move-result v6

    #@8
    .line 119
    .local v6, "height":I
    if-lez v11, :cond_0

    #@a
    if-gtz v6, :cond_1

    #@c
    .line 120
    :cond_0
    const/4 v12, 0x0

    #@d
    return-object v12

    #@e
    .line 122
    :cond_1
    sget v12, Landroid/transition/TransitionUtils;->MAX_IMAGE_SIZE:I

    #@10
    int-to-float v12, v12

    #@11
    mul-int v13, v11, v6

    #@13
    int-to-float v13, v13

    #@14
    div-float/2addr v12, v13

    #@15
    const/high16 v13, 0x3f800000    # 1.0f

    #@17
    invoke-static {v13, v12}, Ljava/lang/Math;->min(FF)F

    #@1a
    move-result v9

    #@1b
    .line 123
    .local v9, "scale":F
    instance-of v12, p0, Landroid/graphics/drawable/BitmapDrawable;

    #@1d
    if-eqz v12, :cond_2

    #@1f
    const/high16 v12, 0x3f800000    # 1.0f

    #@21
    cmpl-float v12, v9, v12

    #@23
    if-nez v12, :cond_2

    #@25
    .line 125
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    #@27
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    #@2a
    move-result-object v12

    #@2b
    return-object v12

    #@2c
    .line 127
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    int-to-float v12, v11

    #@2d
    mul-float/2addr v12, v9

    #@2e
    float-to-int v2, v12

    #@2f
    .line 128
    .local v2, "bitmapWidth":I
    int-to-float v12, v6

    #@30
    mul-float/2addr v12, v9

    #@31
    float-to-int v1, v12

    #@32
    .line 129
    .local v1, "bitmapHeight":I
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@34
    invoke-static {v2, v1, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@37
    move-result-object v0

    #@38
    .line 130
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    #@3a
    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@3d
    .line 131
    .local v4, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@40
    move-result-object v5

    #@41
    .line 132
    .local v5, "existingBounds":Landroid/graphics/Rect;
    iget v7, v5, Landroid/graphics/Rect;->left:I

    #@43
    .line 133
    .local v7, "left":I
    iget v10, v5, Landroid/graphics/Rect;->top:I

    #@45
    .line 134
    .local v10, "top":I
    iget v8, v5, Landroid/graphics/Rect;->right:I

    #@47
    .line 135
    .local v8, "right":I
    iget v3, v5, Landroid/graphics/Rect;->bottom:I

    #@49
    .line 136
    .local v3, "bottom":I
    const/4 v12, 0x0

    #@4a
    const/4 v13, 0x0

    #@4b
    invoke-virtual {p0, v12, v13, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@4e
    .line 137
    invoke-virtual {p0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@51
    .line 138
    invoke-virtual {p0, v7, v10, v8, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@54
    .line 139
    return-object v0
.end method

.method public static createViewBitmap(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "bounds"    # Landroid/graphics/RectF;

    #@0
    .prologue
    .line 156
    const/4 v0, 0x0

    #@1
    .line 157
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    #@4
    move-result v5

    #@5
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    #@8
    move-result v2

    #@9
    .line 158
    .local v2, "bitmapWidth":I
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    #@c
    move-result v5

    #@d
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    #@10
    move-result v1

    #@11
    .line 159
    .local v1, "bitmapHeight":I
    if-lez v2, :cond_0

    #@13
    if-lez v1, :cond_0

    #@15
    .line 160
    sget v5, Landroid/transition/TransitionUtils;->MAX_IMAGE_SIZE:I

    #@17
    int-to-float v5, v5

    #@18
    mul-int v6, v2, v1

    #@1a
    int-to-float v6, v6

    #@1b
    div-float/2addr v5, v6

    #@1c
    const/high16 v6, 0x3f800000    # 1.0f

    #@1e
    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    #@21
    move-result v4

    #@22
    .line 161
    .local v4, "scale":F
    int-to-float v5, v2

    #@23
    mul-float/2addr v5, v4

    #@24
    float-to-int v2, v5

    #@25
    .line 162
    int-to-float v5, v1

    #@26
    mul-float/2addr v5, v4

    #@27
    float-to-int v1, v5

    #@28
    .line 163
    iget v5, p2, Landroid/graphics/RectF;->left:F

    #@2a
    neg-float v5, v5

    #@2b
    iget v6, p2, Landroid/graphics/RectF;->top:F

    #@2d
    neg-float v6, v6

    #@2e
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@31
    .line 164
    invoke-virtual {p1, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    #@34
    .line 165
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@36
    invoke-static {v2, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@39
    move-result-object v0

    #@3a
    .line 166
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    #@3c
    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@3f
    .line 167
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v3, p1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    #@42
    .line 168
    invoke-virtual {p0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    #@45
    .line 170
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "scale":F
    :cond_0
    return-object v0
.end method

.method static mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 3
    .param p0, "animator1"    # Landroid/animation/Animator;
    .param p1, "animator2"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 42
    if-nez p0, :cond_0

    #@2
    .line 43
    return-object p1

    #@3
    .line 44
    :cond_0
    if-nez p1, :cond_1

    #@5
    .line 45
    return-object p0

    #@6
    .line 47
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    #@8
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    #@b
    .line 48
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v1, 0x2

    #@c
    new-array v1, v1, [Landroid/animation/Animator;

    #@e
    const/4 v2, 0x0

    #@f
    aput-object p0, v1, v2

    #@11
    const/4 v2, 0x1

    #@12
    aput-object p1, v1, v2

    #@14
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    #@17
    .line 49
    return-object v0
.end method

.method public static varargs mergeTransitions([Landroid/transition/Transition;)Landroid/transition/Transition;
    .locals 6
    .param p0, "transitions"    # [Landroid/transition/Transition;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 54
    const/4 v0, 0x0

    #@2
    .line 55
    .local v0, "count":I
    const/4 v2, -0x1

    #@3
    .line 56
    .local v2, "nonNullIndex":I
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_0
    array-length v4, p0

    #@5
    if-ge v1, v4, :cond_1

    #@7
    .line 57
    aget-object v4, p0, v1

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 58
    add-int/lit8 v0, v0, 0x1

    #@d
    .line 59
    move v2, v1

    #@e
    .line 56
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 63
    :cond_1
    if-nez v0, :cond_2

    #@13
    .line 64
    return-object v5

    #@14
    .line 67
    :cond_2
    const/4 v4, 0x1

    #@15
    if-ne v0, v4, :cond_3

    #@17
    .line 68
    aget-object v4, p0, v2

    #@19
    return-object v4

    #@1a
    .line 71
    :cond_3
    new-instance v3, Landroid/transition/TransitionSet;

    #@1c
    invoke-direct {v3}, Landroid/transition/TransitionSet;-><init>()V

    #@1f
    .line 72
    .local v3, "transitionSet":Landroid/transition/TransitionSet;
    const/4 v1, 0x0

    #@20
    :goto_1
    array-length v4, p0

    #@21
    if-ge v1, v4, :cond_5

    #@23
    .line 73
    aget-object v4, p0, v1

    #@25
    if-eqz v4, :cond_4

    #@27
    .line 74
    aget-object v4, p0, v1

    #@29
    invoke-virtual {v3, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@2c
    .line 72
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@2e
    goto :goto_1

    #@2f
    .line 77
    :cond_5
    return-object v3
.end method
