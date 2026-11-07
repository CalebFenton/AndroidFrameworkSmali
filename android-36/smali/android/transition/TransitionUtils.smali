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
.field private static greylist-max-o MAX_IMAGE_SIZE:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    const/high16 v0, 0x100000

    sput v0, Landroid/transition/TransitionUtils;->MAX_IMAGE_SIZE:I

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .registers 14
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;

    .line 90
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 91
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    .line 93
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    .line 94
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 95
    .local v1, "bounds":Landroid/graphics/RectF;
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 96
    iget v2, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 97
    .local v2, "left":I
    iget v3, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 98
    .local v3, "top":I
    iget v4, v1, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 99
    .local v4, "right":I
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 101
    .local v5, "bottom":I
    new-instance v6, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 102
    .local v6, "copy":Landroid/widget/ImageView;
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 103
    invoke-static {p1, v0, v1, p0}, Landroid/transition/TransitionUtils;->createViewBitmap(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/view/ViewGroup;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 104
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_5c

    .line 105
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 107
    :cond_5c
    sub-int v8, v4, v2

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 108
    .local v8, "widthSpec":I
    sub-int v10, v5, v3

    invoke-static {v10, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 109
    .local v9, "heightSpec":I
    invoke-virtual {v6, v8, v9}, Landroid/widget/ImageView;->measure(II)V

    .line 110
    invoke-virtual {v6, v2, v3, v4, v5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 111
    return-object v6
.end method

.method public static greylist-max-o createDrawableBitmap(Landroid/graphics/drawable/Drawable;Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 15
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "hostView"    # Landroid/view/View;

    .line 118
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 119
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 120
    .local v1, "height":I
    if-lez v0, :cond_57

    if-gtz v1, :cond_d

    goto :goto_57

    .line 123
    :cond_d
    sget v2, Landroid/transition/TransitionUtils;->MAX_IMAGE_SIZE:I

    int-to-float v2, v2

    mul-int v3, v0, v1

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 124
    .local v2, "scale":F
    instance-of v4, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_2a

    cmpl-float v3, v2, v3

    if-nez v3, :cond_2a

    .line 126
    move-object v3, p0

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    .line 128
    :cond_2a
    int-to-float v3, v0

    mul-float/2addr v3, v2

    float-to-int v3, v3

    .line 129
    .local v3, "bitmapWidth":I
    int-to-float v4, v1

    mul-float/2addr v4, v2

    float-to-int v4, v4

    .line 130
    .local v4, "bitmapHeight":I
    new-instance v5, Landroid/graphics/Picture;

    invoke-direct {v5}, Landroid/graphics/Picture;-><init>()V

    .line 131
    .local v5, "picture":Landroid/graphics/Picture;
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v6

    .line 133
    .local v6, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 134
    .local v7, "existingBounds":Landroid/graphics/Rect;
    iget v8, v7, Landroid/graphics/Rect;->left:I

    .line 135
    .local v8, "left":I
    iget v9, v7, Landroid/graphics/Rect;->top:I

    .line 136
    .local v9, "top":I
    iget v10, v7, Landroid/graphics/Rect;->right:I

    .line 137
    .local v10, "right":I
    iget v11, v7, Landroid/graphics/Rect;->bottom:I

    .line 138
    .local v11, "bottom":I
    const/4 v12, 0x0

    invoke-virtual {p0, v12, v12, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 139
    invoke-virtual {p0, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 140
    invoke-virtual {p0, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 141
    invoke-virtual {v5}, Landroid/graphics/Picture;->endRecording()V

    .line 142
    invoke-static {v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object v12

    return-object v12

    .line 121
    .end local v2    # "scale":F
    .end local v3    # "bitmapWidth":I
    .end local v4    # "bitmapHeight":I
    .end local v5    # "picture":Landroid/graphics/Picture;
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "existingBounds":Landroid/graphics/Rect;
    .end local v8    # "left":I
    .end local v9    # "top":I
    .end local v10    # "right":I
    .end local v11    # "bottom":I
    :cond_57
    :goto_57
    const/4 v2, 0x0

    return-object v2
.end method

.method public static greylist-max-o createViewBitmap(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/view/ViewGroup;)Landroid/graphics/Bitmap;
    .registers 13
    .param p0, "view"    # Landroid/view/View;
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "bounds"    # Landroid/graphics/RectF;
    .param p3, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 162
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 163
    .local v0, "addToOverlay":Z
    const/4 v1, 0x0

    .line 164
    .local v1, "parent":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .line 165
    .local v2, "indexInParent":I
    if-eqz v0, :cond_28

    .line 166
    if-eqz p3, :cond_26

    invoke-virtual {p3}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_13

    goto :goto_26

    .line 169
    :cond_13
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/view/ViewGroup;

    .line 170
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 171
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    goto :goto_28

    .line 167
    :cond_26
    :goto_26
    const/4 v3, 0x0

    return-object v3

    .line 173
    :cond_28
    :goto_28
    const/4 v3, 0x0

    .line 174
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 175
    .local v4, "bitmapWidth":I
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 176
    .local v5, "bitmapHeight":I
    if-lez v4, :cond_72

    if-lez v5, :cond_72

    .line 177
    sget v6, Landroid/transition/TransitionUtils;->MAX_IMAGE_SIZE:I

    int-to-float v6, v6

    mul-int v7, v4, v5

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 178
    .local v6, "scale":F
    int-to-float v7, v4

    mul-float/2addr v7, v6

    float-to-int v4, v7

    .line 179
    int-to-float v7, v5

    mul-float/2addr v7, v6

    float-to-int v5, v7

    .line 180
    iget v7, p2, Landroid/graphics/RectF;->left:F

    neg-float v7, v7

    iget v8, p2, Landroid/graphics/RectF;->top:F

    neg-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 181
    invoke-virtual {p1, v6, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 183
    new-instance v7, Landroid/graphics/Picture;

    invoke-direct {v7}, Landroid/graphics/Picture;-><init>()V

    .line 184
    .local v7, "picture":Landroid/graphics/Picture;
    invoke-virtual {v7, v4, v5}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v8

    .line 185
    .local v8, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v8, p1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 186
    invoke-virtual {p0, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 187
    invoke-virtual {v7}, Landroid/graphics/Picture;->endRecording()V

    .line 188
    invoke-static {v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 190
    .end local v6    # "scale":F
    .end local v7    # "picture":Landroid/graphics/Picture;
    .end local v8    # "canvas":Landroid/graphics/Canvas;
    :cond_72
    if-eqz v0, :cond_7e

    .line 191
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 192
    invoke-virtual {v1, p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 194
    :cond_7e
    return-object v3
.end method

.method static greylist-max-o mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;
    .registers 5
    .param p0, "animator1"    # Landroid/animation/Animator;
    .param p1, "animator2"    # Landroid/animation/Animator;

    .line 43
    if-nez p0, :cond_3

    .line 44
    return-object p1

    .line 45
    :cond_3
    if-nez p1, :cond_6

    .line 46
    return-object p0

    .line 48
    :cond_6
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 49
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 50
    return-object v0
.end method

.method public static varargs blacklist mergeTransitions([Landroid/transition/Transition;)Landroid/transition/Transition;
    .registers 6
    .param p0, "transitions"    # [Landroid/transition/Transition;

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "count":I
    const/4 v1, -0x1

    .line 57
    .local v1, "nonNullIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v3, p0

    if-ge v2, v3, :cond_10

    .line 58
    aget-object v3, p0, v2

    if-eqz v3, :cond_d

    .line 59
    add-int/lit8 v0, v0, 0x1

    .line 60
    move v1, v2

    .line 57
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 64
    .end local v2    # "i":I
    :cond_10
    if-nez v0, :cond_14

    .line 65
    const/4 v2, 0x0

    return-object v2

    .line 68
    :cond_14
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1a

    .line 69
    aget-object v2, p0, v1

    return-object v2

    .line 72
    :cond_1a
    new-instance v2, Landroid/transition/TransitionSet;

    invoke-direct {v2}, Landroid/transition/TransitionSet;-><init>()V

    .line 73
    .local v2, "transitionSet":Landroid/transition/TransitionSet;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    array-length v4, p0

    if-ge v3, v4, :cond_2f

    .line 74
    aget-object v4, p0, v3

    if-eqz v4, :cond_2c

    .line 75
    aget-object v4, p0, v3

    invoke-virtual {v2, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 73
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 78
    .end local v3    # "i":I
    :cond_2f
    return-object v2
.end method
