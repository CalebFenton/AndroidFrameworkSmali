.class Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;
.super Ljava/lang/Object;
.source "RenderNodeAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/animation/RenderNodeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayedAnimationHelper"
.end annotation


# instance fields
.field private blacklist mCallbackScheduled:Z

.field private final blacklist mChoreographer:Landroid/view/Choreographer;

.field private blacklist mDelayedAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/animation/RenderNodeAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    .line 431
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->mChoreographer:Landroid/view/Choreographer;

    .line 432
    return-void
.end method

.method private blacklist scheduleCallback()V
    .registers 4

    .line 444
    iget-boolean v0, p0, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->mCallbackScheduled:Z

    if-nez v0, :cond_d

    .line 445
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->mCallbackScheduled:Z

    .line 446
    iget-object v1, p0, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->mChoreographer:Landroid/view/Choreographer;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p0, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 448
    :cond_d
    return-void
.end method


# virtual methods
.method public blacklist addDelayedAnimation(Landroid/graphics/animation/RenderNodeAnimator;)V
    .registers 3
    .param p1, "animator"    # Landroid/graphics/animation/RenderNodeAnimator;

    .line 435
    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->scheduleCallback()V

    .line 437
    return-void
.end method

.method public blacklist removeDelayedAnimation(Landroid/graphics/animation/RenderNodeAnimator;)V
    .registers 3
    .param p1, "animator"    # Landroid/graphics/animation/RenderNodeAnimator;

    .line 440
    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 441
    return-void
.end method

.method public whitelist test-api run()V
    .registers 7

    .line 452
    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameTime()J

    move-result-wide v0

    .line 453
    .local v0, "frameTimeMs":J
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->mCallbackScheduled:Z

    .line 455
    const/4 v2, 0x0

    .line 456
    .local v2, "end":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    iget-object v4, p0, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2d

    .line 457
    iget-object v4, p0, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/animation/RenderNodeAnimator;

    .line 458
    .local v4, "animator":Landroid/graphics/animation/RenderNodeAnimator;
    invoke-static {v4, v0, v1}, Landroid/graphics/animation/RenderNodeAnimator;->-$$Nest$mprocessDelayed(Landroid/graphics/animation/RenderNodeAnimator;J)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 459
    if-eq v2, v3, :cond_28

    .line 460
    iget-object v5, p0, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v5, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 462
    :cond_28
    add-int/lit8 v2, v2, 0x1

    .line 456
    .end local v4    # "animator":Landroid/graphics/animation/RenderNodeAnimator;
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 465
    .end local v3    # "i":I
    :cond_2d
    :goto_2d
    iget-object v3, p0, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_43

    .line 466
    iget-object v3, p0, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2d

    .line 469
    :cond_43
    iget-object v3, p0, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4e

    .line 470
    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->scheduleCallback()V

    .line 472
    :cond_4e
    return-void
.end method
