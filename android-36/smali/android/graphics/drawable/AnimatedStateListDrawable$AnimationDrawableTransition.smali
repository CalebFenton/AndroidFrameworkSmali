.class Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;
.super Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
.source "AnimatedStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedStateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationDrawableTransition"
.end annotation


# instance fields
.field private final greylist-max-o mAnim:Landroid/animation/ObjectAnimator;

.field private final greylist-max-o mHasReversibleFlag:Z


# direct methods
.method public constructor greylist-max-o <init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V
    .registers 11
    .param p1, "ad"    # Landroid/graphics/drawable/AnimationDrawable;
    .param p2, "reversed"    # Z
    .param p3, "hasReversibleFlag"    # Z

    .line 277
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable-IA;)V

    .line 278
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    .line 279
    .local v0, "frameCount":I
    const/4 v1, 0x0

    if-eqz p2, :cond_e

    add-int/lit8 v2, v0, -0x1

    goto :goto_f

    :cond_e
    move v2, v1

    .line 280
    .local v2, "fromFrame":I
    :goto_f
    if-eqz p2, :cond_12

    goto :goto_14

    :cond_12
    add-int/lit8 v1, v0, -0x1

    .line 281
    .local v1, "toFrame":I
    :goto_14
    new-instance v3, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;

    invoke-direct {v3, p1, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;-><init>(Landroid/graphics/drawable/AnimationDrawable;Z)V

    .line 282
    .local v3, "interp":Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;
    const-string v4, "currentIndex"

    filled-new-array {v2, v1}, [I

    move-result-object v5

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 283
    .local v4, "anim":Landroid/animation/ObjectAnimator;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 284
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->getTotalDuration()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 285
    invoke-virtual {v4, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 286
    iput-boolean p3, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;->mHasReversibleFlag:Z

    .line 287
    iput-object v4, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    .line 288
    return-void
.end method


# virtual methods
.method public greylist-max-o canReverse()Z
    .registers 2

    .line 292
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;->mHasReversibleFlag:Z

    return v0
.end method

.method public greylist-max-o reverse()V
    .registers 2

    .line 302
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    .line 303
    return-void
.end method

.method public greylist-max-o start()V
    .registers 2

    .line 297
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 298
    return-void
.end method

.method public greylist-max-o stop()V
    .registers 2

    .line 307
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 308
    return-void
.end method
