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
.field private final mAnim:Landroid/animation/ObjectAnimator;

.field private final mHasReversibleFlag:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V
    .locals 9
    .param p1, "ad"    # Landroid/graphics/drawable/AnimationDrawable;
    .param p2, "reversed"    # Z
    .param p3, "hasReversibleFlag"    # Z

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 273
    const/4 v5, 0x0

    #@2
    invoke-direct {p0, v5}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;)V

    #@5
    .line 275
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    #@8
    move-result v1

    #@9
    .line 276
    .local v1, "frameCount":I
    if-eqz p2, :cond_0

    #@b
    add-int/lit8 v2, v1, -0x1

    #@d
    .line 277
    .local v2, "fromFrame":I
    :goto_0
    if-eqz p2, :cond_1

    #@f
    const/4 v4, 0x0

    #@10
    .line 278
    .local v4, "toFrame":I
    :goto_1
    new-instance v3, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;

    #@12
    invoke-direct {v3, p1, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;-><init>(Landroid/graphics/drawable/AnimationDrawable;Z)V

    #@15
    .line 279
    .local v3, "interp":Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;
    const-string/jumbo v5, "currentIndex"

    #@18
    const/4 v6, 0x2

    #@19
    new-array v6, v6, [I

    #@1b
    const/4 v7, 0x0

    #@1c
    aput v2, v6, v7

    #@1e
    aput v4, v6, v8

    #@20
    invoke-static {p1, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    #@23
    move-result-object v0

    #@24
    .line 280
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v8}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    #@27
    .line 281
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->getTotalDuration()I

    #@2a
    move-result v5

    #@2b
    int-to-long v6, v5

    #@2c
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@2f
    .line 282
    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@32
    .line 283
    iput-boolean p3, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;->mHasReversibleFlag:Z

    #@34
    .line 284
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    #@36
    .line 274
    return-void

    #@37
    .line 276
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    .end local v2    # "fromFrame":I
    .end local v3    # "interp":Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;
    .end local v4    # "toFrame":I
    :cond_0
    const/4 v2, 0x0

    #@38
    .restart local v2    # "fromFrame":I
    goto :goto_0

    #@39
    .line 277
    :cond_1
    add-int/lit8 v4, v1, -0x1

    #@3b
    .restart local v4    # "toFrame":I
    goto :goto_1
.end method


# virtual methods
.method public canReverse()Z
    .locals 1

    #@0
    .prologue
    .line 289
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;->mHasReversibleFlag:Z

    #@2
    return v0
.end method

.method public reverse()V
    .locals 1

    #@0
    .prologue
    .line 299
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    #@2
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    #@5
    .line 298
    return-void
.end method

.method public start()V
    .locals 1

    #@0
    .prologue
    .line 294
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    #@2
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    #@5
    .line 293
    return-void
.end method

.method public stop()V
    .locals 1

    #@0
    .prologue
    .line 304
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    #@2
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    #@5
    .line 303
    return-void
.end method
