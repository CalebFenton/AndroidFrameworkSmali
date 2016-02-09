.class Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;
.super Ljava/lang/Object;
.source "RenderNodeAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/RenderNodeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayedAnimationHelper"
.end annotation


# instance fields
.field private mCallbackScheduled:Z

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mDelayedAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/RenderNodeAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 432
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    #@a
    .line 437
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mChoreographer:Landroid/view/Choreographer;

    #@10
    .line 436
    return-void
.end method

.method private scheduleCallback()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 450
    iget-boolean v0, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mCallbackScheduled:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 451
    iput-boolean v2, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mCallbackScheduled:Z

    #@7
    .line 452
    iget-object v0, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mChoreographer:Landroid/view/Choreographer;

    #@9
    const/4 v1, 0x0

    #@a
    invoke-virtual {v0, v2, p0, v1}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    #@d
    .line 449
    :cond_0
    return-void
.end method


# virtual methods
.method public addDelayedAnimation(Landroid/view/RenderNodeAnimator;)V
    .locals 1
    .param p1, "animator"    # Landroid/view/RenderNodeAnimator;

    #@0
    .prologue
    .line 441
    iget-object v0, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 442
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->scheduleCallback()V

    #@8
    .line 440
    return-void
.end method

.method public removeDelayedAnimation(Landroid/view/RenderNodeAnimator;)V
    .locals 1
    .param p1, "animator"    # Landroid/view/RenderNodeAnimator;

    #@0
    .prologue
    .line 446
    iget-object v0, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 445
    return-void
.end method

.method public run()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 458
    iget-object v5, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mChoreographer:Landroid/view/Choreographer;

    #@3
    invoke-virtual {v5}, Landroid/view/Choreographer;->getFrameTime()J

    #@6
    move-result-wide v2

    #@7
    .line 459
    .local v2, "frameTimeMs":J
    iput-boolean v6, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mCallbackScheduled:Z

    #@9
    .line 461
    const/4 v1, 0x0

    #@a
    .line 462
    .local v1, "end":I
    const/4 v4, 0x0

    #@b
    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v5

    #@11
    if-ge v4, v5, :cond_2

    #@13
    .line 463
    iget-object v5, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/view/RenderNodeAnimator;

    #@1b
    .line 464
    .local v0, "animator":Landroid/view/RenderNodeAnimator;
    invoke-static {v0, v2, v3}, Landroid/view/RenderNodeAnimator;->-wrap0(Landroid/view/RenderNodeAnimator;J)Z

    #@1e
    move-result v5

    #@1f
    if-nez v5, :cond_1

    #@21
    .line 465
    if-eq v1, v4, :cond_0

    #@23
    .line 466
    iget-object v5, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v5, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@28
    .line 468
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@2a
    .line 462
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 471
    .end local v0    # "animator":Landroid/view/RenderNodeAnimator;
    :cond_2
    :goto_1
    iget-object v5, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    #@2f
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@32
    move-result v5

    #@33
    if-le v5, v1, :cond_3

    #@35
    .line 472
    iget-object v5, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    #@37
    iget-object v6, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    #@39
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@3c
    move-result v6

    #@3d
    add-int/lit8 v6, v6, -0x1

    #@3f
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@42
    goto :goto_1

    #@43
    .line 475
    :cond_3
    iget-object v5, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    #@45
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@48
    move-result v5

    #@49
    if-lez v5, :cond_4

    #@4b
    .line 476
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->scheduleCallback()V

    #@4e
    .line 457
    :cond_4
    return-void
.end method
