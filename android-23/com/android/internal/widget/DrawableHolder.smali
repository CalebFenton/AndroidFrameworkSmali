.class public Lcom/android/internal/widget/DrawableHolder;
.super Ljava/lang/Object;
.source "DrawableHolder.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# static fields
.field private static final DBG:Z = false

.field public static final EASE_OUT_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

.field private static final TAG:Ljava/lang/String; = "DrawableHolder"


# instance fields
.field private mAlpha:F

.field private mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mNeedToStart:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mScaleX:F

.field private mScaleY:F

.field private mX:F

.field private mY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 35
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    #@2
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/widget/DrawableHolder;->EASE_OUT_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    #@7
    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/BitmapDrawable;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 48
    invoke-direct {p0, p1, v0, v0}, Lcom/android/internal/widget/DrawableHolder;-><init>(Landroid/graphics/drawable/BitmapDrawable;FF)V

    #@4
    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/BitmapDrawable;FF)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p2, "x"    # F
    .param p3, "y"    # F

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    const/high16 v0, 0x3f800000    # 1.0f

    #@4
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 38
    iput v1, p0, Lcom/android/internal/widget/DrawableHolder;->mX:F

    #@9
    .line 39
    iput v1, p0, Lcom/android/internal/widget/DrawableHolder;->mY:F

    #@b
    .line 40
    iput v0, p0, Lcom/android/internal/widget/DrawableHolder;->mScaleX:F

    #@d
    .line 41
    iput v0, p0, Lcom/android/internal/widget/DrawableHolder;->mScaleY:F

    #@f
    .line 43
    iput v0, p0, Lcom/android/internal/widget/DrawableHolder;->mAlpha:F

    #@11
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/internal/widget/DrawableHolder;->mAnimators:Ljava/util/ArrayList;

    #@18
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    #@1a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/android/internal/widget/DrawableHolder;->mNeedToStart:Ljava/util/ArrayList;

    #@1f
    .line 52
    iput-object p1, p0, Lcom/android/internal/widget/DrawableHolder;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    #@21
    .line 53
    iput p2, p0, Lcom/android/internal/widget/DrawableHolder;->mX:F

    #@23
    .line 54
    iput p3, p0, Lcom/android/internal/widget/DrawableHolder;->mY:F

    #@25
    .line 55
    iget-object v0, p0, Lcom/android/internal/widget/DrawableHolder;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    #@27
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    #@2a
    move-result-object v0

    #@2b
    const/4 v1, 0x1

    #@2c
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@2f
    .line 56
    iget-object v0, p0, Lcom/android/internal/widget/DrawableHolder;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    #@31
    iget-object v1, p0, Lcom/android/internal/widget/DrawableHolder;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    #@33
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    #@36
    move-result v1

    #@37
    iget-object v2, p0, Lcom/android/internal/widget/DrawableHolder;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    #@39
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    #@3c
    move-result v2

    #@3d
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    #@40
    .line 51
    return-void
.end method

.method private addAnimation(Landroid/animation/ObjectAnimator;Z)Lcom/android/internal/widget/DrawableHolder;
    .locals 1
    .param p1, "anim"    # Landroid/animation/ObjectAnimator;
    .param p2, "overwrite"    # Z

    #@0
    .prologue
    .line 116
    if-eqz p1, :cond_0

    #@2
    .line 117
    iget-object v0, p0, Lcom/android/internal/widget/DrawableHolder;->mAnimators:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7
    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DrawableHolder;->mNeedToStart:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c
    .line 119
    return-object p0
.end method


# virtual methods
.method public addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;
    .locals 3
    .param p1, "duration"    # J
    .param p3, "delay"    # J
    .param p5, "property"    # Ljava/lang/String;
    .param p6, "toValue"    # F
    .param p7, "replace"    # Z

    #@0
    .prologue
    .line 73
    if-eqz p7, :cond_0

    #@2
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    #@5
    .line 75
    :cond_0
    const/4 v1, 0x1

    #@6
    new-array v1, v1, [F

    #@8
    const/4 v2, 0x0

    #@9
    aput p6, v1, v2

    #@b
    invoke-static {p0, p5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    #@e
    move-result-object v0

    #@f
    .line 76
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@12
    .line 77
    invoke-virtual {v0, p3, p4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    #@15
    .line 78
    sget-object v1, Lcom/android/internal/widget/DrawableHolder;->EASE_OUT_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    #@17
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@1a
    .line 79
    invoke-direct {p0, v0, p7}, Lcom/android/internal/widget/DrawableHolder;->addAnimation(Landroid/animation/ObjectAnimator;Z)Lcom/android/internal/widget/DrawableHolder;

    #@1d
    .line 81
    return-object v0
.end method

.method public clearAnimations()V
    .locals 3

    #@0
    .prologue
    .line 102
    iget-object v2, p0, Lcom/android/internal/widget/DrawableHolder;->mAnimators:Ljava/util/ArrayList;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "currentAnim$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/animation/ObjectAnimator;

    #@12
    .line 103
    .local v0, "currentAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    #@15
    goto :goto_0

    #@16
    .line 105
    .end local v0    # "currentAnim":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/DrawableHolder;->mAnimators:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@1b
    .line 101
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    const/high16 v3, -0x41000000    # -0.5f

    #@2
    .line 128
    const/high16 v0, 0x3b800000    # 0.00390625f

    #@4
    .line 129
    .local v0, "threshold":F
    iget v1, p0, Lcom/android/internal/widget/DrawableHolder;->mAlpha:F

    #@6
    const/high16 v2, 0x3b800000    # 0.00390625f

    #@8
    cmpg-float v1, v1, v2

    #@a
    if-gtz v1, :cond_0

    #@c
    .line 130
    return-void

    #@d
    .line 131
    :cond_0
    const/4 v1, 0x1

    #@e
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    #@11
    .line 132
    iget v1, p0, Lcom/android/internal/widget/DrawableHolder;->mX:F

    #@13
    iget v2, p0, Lcom/android/internal/widget/DrawableHolder;->mY:F

    #@15
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    #@18
    .line 133
    iget v1, p0, Lcom/android/internal/widget/DrawableHolder;->mScaleX:F

    #@1a
    iget v2, p0, Lcom/android/internal/widget/DrawableHolder;->mScaleY:F

    #@1c
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    #@1f
    .line 134
    invoke-virtual {p0}, Lcom/android/internal/widget/DrawableHolder;->getWidth()I

    #@22
    move-result v1

    #@23
    int-to-float v1, v1

    #@24
    mul-float/2addr v1, v3

    #@25
    invoke-virtual {p0}, Lcom/android/internal/widget/DrawableHolder;->getHeight()I

    #@28
    move-result v2

    #@29
    int-to-float v2, v2

    #@2a
    mul-float/2addr v2, v3

    #@2b
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    #@2e
    .line 135
    iget-object v1, p0, Lcom/android/internal/widget/DrawableHolder;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    #@30
    iget v2, p0, Lcom/android/internal/widget/DrawableHolder;->mAlpha:F

    #@32
    const/high16 v3, 0x437f0000    # 255.0f

    #@34
    mul-float/2addr v2, v3

    #@35
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    #@38
    move-result v2

    #@39
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    #@3c
    .line 136
    iget-object v1, p0, Lcom/android/internal/widget/DrawableHolder;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    #@3e
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    #@41
    .line 137
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@44
    .line 127
    return-void
.end method

.method public getAlpha()F
    .locals 1

    #@0
    .prologue
    .line 195
    iget v0, p0, Lcom/android/internal/widget/DrawableHolder;->mAlpha:F

    #@2
    return v0
.end method

.method public getDrawable()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    #@0
    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/internal/widget/DrawableHolder;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    #@2
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/internal/widget/DrawableHolder;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getScaleX()F
    .locals 1

    #@0
    .prologue
    .line 187
    iget v0, p0, Lcom/android/internal/widget/DrawableHolder;->mScaleX:F

    #@2
    return v0
.end method

.method public getScaleY()F
    .locals 1

    #@0
    .prologue
    .line 191
    iget v0, p0, Lcom/android/internal/widget/DrawableHolder;->mScaleY:F

    #@2
    return v0
.end method

.method public getWidth()I
    .locals 1

    #@0
    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/internal/widget/DrawableHolder;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getX()F
    .locals 1

    #@0
    .prologue
    .line 179
    iget v0, p0, Lcom/android/internal/widget/DrawableHolder;->mX:F

    #@2
    return v0
.end method

.method public getY()F
    .locals 1

    #@0
    .prologue
    .line 183
    iget v0, p0, Lcom/android/internal/widget/DrawableHolder;->mY:F

    #@2
    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 210
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/internal/widget/DrawableHolder;->mAnimators:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 214
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 218
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 222
    return-void
.end method

.method public removeAnimationFor(Ljava/lang/String;)V
    .locals 4
    .param p1, "property"    # Ljava/lang/String;

    #@0
    .prologue
    .line 90
    iget-object v3, p0, Lcom/android/internal/widget/DrawableHolder;->mAnimators:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    check-cast v2, Ljava/util/ArrayList;

    #@8
    .line 91
    .local v2, "removalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/ObjectAnimator;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v1

    #@c
    .local v1, "currentAnim$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_1

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/animation/ObjectAnimator;

    #@18
    .line 92
    .local v0, "currentAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    .line 93
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    #@25
    goto :goto_0

    #@26
    .line 89
    .end local v0    # "currentAnim":Landroid/animation/ObjectAnimator;
    :cond_1
    return-void
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    #@0
    .prologue
    .line 175
    iput p1, p0, Lcom/android/internal/widget/DrawableHolder;->mAlpha:F

    #@2
    .line 174
    return-void
.end method

.method public setScaleX(F)V
    .locals 0
    .param p1, "value"    # F

    #@0
    .prologue
    .line 167
    iput p1, p0, Lcom/android/internal/widget/DrawableHolder;->mScaleX:F

    #@2
    .line 166
    return-void
.end method

.method public setScaleY(F)V
    .locals 0
    .param p1, "value"    # F

    #@0
    .prologue
    .line 171
    iput p1, p0, Lcom/android/internal/widget/DrawableHolder;->mScaleY:F

    #@2
    .line 170
    return-void
.end method

.method public setX(F)V
    .locals 0
    .param p1, "value"    # F

    #@0
    .prologue
    .line 159
    iput p1, p0, Lcom/android/internal/widget/DrawableHolder;->mX:F

    #@2
    .line 158
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "value"    # F

    #@0
    .prologue
    .line 163
    iput p1, p0, Lcom/android/internal/widget/DrawableHolder;->mY:F

    #@2
    .line 162
    return-void
.end method

.method public startAnimations(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    #@0
    .prologue
    .line 148
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/DrawableHolder;->mNeedToStart:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v2

    #@7
    if-ge v1, v2, :cond_0

    #@9
    .line 149
    iget-object v2, p0, Lcom/android/internal/widget/DrawableHolder;->mNeedToStart:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/animation/ObjectAnimator;

    #@11
    .line 150
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@14
    .line 151
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@17
    .line 152
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    #@1a
    .line 148
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 154
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/DrawableHolder;->mNeedToStart:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@22
    .line 147
    return-void
.end method
