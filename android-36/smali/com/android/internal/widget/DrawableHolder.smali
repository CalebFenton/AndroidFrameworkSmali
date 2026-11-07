.class public Lcom/android/internal/widget/DrawableHolder;
.super Ljava/lang/Object;
.source "DrawableHolder.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# static fields
.field private static final blacklist DBG:Z = false

.field public static final blacklist EASE_OUT_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

.field private static final blacklist TAG:Ljava/lang/String; = "DrawableHolder"


# instance fields
.field private blacklist mAlpha:F

.field private blacklist mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private blacklist mNeedToStart:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mScaleX:F

.field private blacklist mScaleY:F

.field private blacklist mX:F

.field private blacklist mY:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/internal/widget/DrawableHolder;->EASE_OUT_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/graphics/drawable/BitmapDrawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/BitmapDrawable;

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/internal/widget/DrawableHolder;-><init>(Landroid/graphics/drawable/BitmapDrawable;FF)V

    .line 49
    return-void
.end method

.method public constructor blacklist <init>(Landroid/graphics/drawable/BitmapDrawable;FF)V
    .registers 8
    .param p1, "drawable"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/DrawableHolder;->mX:F

    .line 39
    iput v0, p0, Lcom/android/internal/widget/DrawableHolder;->mY:F

    .line 40
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/internal/widget/DrawableHolder;->mScaleX:F

    .line 41
    iput v0, p0, Lcom/android/internal/widget/DrawableHolder;->mScaleY:F

    .line 43
    iput v0, p0, Lcom/android/internal/widget/DrawableHolder;->mAlpha:F

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DrawableHolder;->mAnimators:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DrawableHolder;->mNeedToStart:Ljava/util/ArrayList;

    .line 52
    iput-object p1, p0, Lcom/android/internal/widget/DrawableHolder;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 53
    iput p2, p0, Lcom/android/internal/widget/DrawableHolder;->mX:F

    .line 54
    iput p3, p0, Lcom/android/internal/widget/DrawableHolder;->mY:F

    .line 55
    iget-object v0, p0, Lcom/android/internal/widget/DrawableHolder;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object v0, p0, Lcom/android/internal/widget/DrawableHolder;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/android/internal/widget/DrawableHolder;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/DrawableHolder;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 57
    return-void
.end method

.method private blacklist addAnimation(Landroid/animation/ObjectAnimator;Z)Lcom/android/internal/widget/DrawableHolder;
    .registers 4
    .param p1, "anim"    # Landroid/animation/ObjectAnimator;
    .param p2, "overwrite"    # Z

    .line 116
    if-eqz p1, :cond_7

    .line 117
    iget-object v0, p0, Lcom/android/internal/widget/DrawableHolder;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_7
    iget-object v0, p0, Lcom/android/internal/widget/DrawableHolder;->mNeedToStart:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    return-object p0
.end method


# virtual methods
.method public blacklist addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;
    .registers 10
    .param p1, "duration"    # J
    .param p3, "delay"    # J
    .param p5, "property"    # Ljava/lang/String;
    .param p6, "toValue"    # F
    .param p7, "replace"    # Z

    .line 73
    if-eqz p7, :cond_5

    invoke-virtual {p0, p5}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 75
    :cond_5
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p6, v0, v1

    invoke-static {p0, p5, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 76
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 77
    invoke-virtual {v0, p3, p4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 78
    sget-object v1, Lcom/android/internal/widget/DrawableHolder;->EASE_OUT_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 79
    invoke-direct {p0, v0, p7}, Lcom/android/internal/widget/DrawableHolder;->addAnimation(Landroid/animation/ObjectAnimator;Z)Lcom/android/internal/widget/DrawableHolder;

    .line 81
    return-object v0
.end method

.method public blacklist clearAnimations()V
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/android/internal/widget/DrawableHolder;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    .line 103
    .local v1, "currentAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 104
    .end local v1    # "currentAnim":Landroid/animation/ObjectAnimator;
    goto :goto_6

    .line 105
    :cond_16
    iget-object v0, p0, Lcom/android/internal/widget/DrawableHolder;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 106
    return-void
.end method

.method public blacklist draw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 128
    const/high16 v0, 0x3b800000    # 0.00390625f

    .line 129
    .local v0, "threshold":F
    iget v1, p0, Lcom/android/internal/widget/DrawableHolder;->mAlpha:F

    const/high16 v2, 0x3b800000    # 0.00390625f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_b

    .line 130
    return-void

    .line 131
    :cond_b
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 132
    iget v1, p0, Lcom/android/internal/widget/DrawableHolder;->mX:F

    iget v2, p0, Lcom/android/internal/widget/DrawableHolder;->mY:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 133
    iget v1, p0, Lcom/android/internal/widget/DrawableHolder;->mScaleX:F

    iget v2, p0, Lcom/android/internal/widget/DrawableHolder;->mScaleY:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 134
    invoke-virtual {p0}, Lcom/android/internal/widget/DrawableHolder;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, -0x41000000    # -0.5f

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/DrawableHolder;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 135
    iget-object v1, p0, Lcom/android/internal/widget/DrawableHolder;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iget v2, p0, Lcom/android/internal/widget/DrawableHolder;->mAlpha:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 136
    iget-object v1, p0, Lcom/android/internal/widget/DrawableHolder;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 137
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 138
    return-void
.end method

.method public blacklist getAlpha()F
    .registers 2

    .line 195
    iget v0, p0, Lcom/android/internal/widget/DrawableHolder;->mAlpha:F

    return v0
.end method

.method public blacklist getDrawable()Landroid/graphics/drawable/BitmapDrawable;
    .registers 2

    .line 199
    iget-object v0, p0, Lcom/android/internal/widget/DrawableHolder;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public blacklist getHeight()I
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/android/internal/widget/DrawableHolder;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public blacklist getScaleX()F
    .registers 2

    .line 187
    iget v0, p0, Lcom/android/internal/widget/DrawableHolder;->mScaleX:F

    return v0
.end method

.method public blacklist getScaleY()F
    .registers 2

    .line 191
    iget v0, p0, Lcom/android/internal/widget/DrawableHolder;->mScaleY:F

    return v0
.end method

.method public blacklist getWidth()I
    .registers 2

    .line 203
    iget-object v0, p0, Lcom/android/internal/widget/DrawableHolder;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public blacklist getX()F
    .registers 2

    .line 179
    iget v0, p0, Lcom/android/internal/widget/DrawableHolder;->mX:F

    return v0
.end method

.method public blacklist getY()F
    .registers 2

    .line 183
    iget v0, p0, Lcom/android/internal/widget/DrawableHolder;->mY:F

    return v0
.end method

.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 212
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 215
    iget-object v0, p0, Lcom/android/internal/widget/DrawableHolder;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 216
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 220
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 224
    return-void
.end method

.method public blacklist removeAnimationFor(Ljava/lang/String;)V
    .registers 6
    .param p1, "property"    # Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/android/internal/widget/DrawableHolder;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 91
    .local v0, "removalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/ObjectAnimator;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ObjectAnimator;

    .line 92
    .local v2, "currentAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 93
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 95
    .end local v2    # "currentAnim":Landroid/animation/ObjectAnimator;
    :cond_25
    goto :goto_c

    .line 96
    :cond_26
    return-void
.end method

.method public blacklist setAlpha(F)V
    .registers 2
    .param p1, "alpha"    # F

    .line 175
    iput p1, p0, Lcom/android/internal/widget/DrawableHolder;->mAlpha:F

    .line 176
    return-void
.end method

.method public blacklist setScaleX(F)V
    .registers 2
    .param p1, "value"    # F

    .line 167
    iput p1, p0, Lcom/android/internal/widget/DrawableHolder;->mScaleX:F

    .line 168
    return-void
.end method

.method public blacklist setScaleY(F)V
    .registers 2
    .param p1, "value"    # F

    .line 171
    iput p1, p0, Lcom/android/internal/widget/DrawableHolder;->mScaleY:F

    .line 172
    return-void
.end method

.method public blacklist setX(F)V
    .registers 2
    .param p1, "value"    # F

    .line 159
    iput p1, p0, Lcom/android/internal/widget/DrawableHolder;->mX:F

    .line 160
    return-void
.end method

.method public blacklist setY(F)V
    .registers 2
    .param p1, "value"    # F

    .line 163
    iput p1, p0, Lcom/android/internal/widget/DrawableHolder;->mY:F

    .line 164
    return-void
.end method

.method public blacklist startAnimations(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 148
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/DrawableHolder;->mNeedToStart:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 149
    iget-object v1, p0, Lcom/android/internal/widget/DrawableHolder;->mNeedToStart:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    .line 150
    .local v1, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, p1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 151
    invoke-virtual {v1, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 152
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 148
    .end local v1    # "anim":Landroid/animation/ObjectAnimator;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 154
    .end local v0    # "i":I
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/widget/DrawableHolder;->mNeedToStart:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 155
    return-void
.end method
