.class Landroid/widget/StackView$StackFrame;
.super Landroid/widget/FrameLayout;
.source "StackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/StackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StackFrame"
.end annotation


# instance fields
.field sliderAnimator:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field transformAnimator:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 484
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@3
    .line 483
    return-void
.end method


# virtual methods
.method cancelSliderAnimator()Z
    .locals 2

    #@0
    .prologue
    .line 507
    iget-object v1, p0, Landroid/widget/StackView$StackFrame;->sliderAnimator:Ljava/lang/ref/WeakReference;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 508
    iget-object v1, p0, Landroid/widget/StackView$StackFrame;->sliderAnimator:Ljava/lang/ref/WeakReference;

    #@6
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/animation/ObjectAnimator;

    #@c
    .line 509
    .local v0, "oa":Landroid/animation/ObjectAnimator;
    if-eqz v0, :cond_0

    #@e
    .line 510
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    #@11
    .line 511
    const/4 v1, 0x1

    #@12
    return v1

    #@13
    .line 514
    .end local v0    # "oa":Landroid/animation/ObjectAnimator;
    :cond_0
    const/4 v1, 0x0

    #@14
    return v1
.end method

.method cancelTransformAnimator()Z
    .locals 2

    #@0
    .prologue
    .line 496
    iget-object v1, p0, Landroid/widget/StackView$StackFrame;->transformAnimator:Ljava/lang/ref/WeakReference;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 497
    iget-object v1, p0, Landroid/widget/StackView$StackFrame;->transformAnimator:Ljava/lang/ref/WeakReference;

    #@6
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/animation/ObjectAnimator;

    #@c
    .line 498
    .local v0, "oa":Landroid/animation/ObjectAnimator;
    if-eqz v0, :cond_0

    #@e
    .line 499
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    #@11
    .line 500
    const/4 v1, 0x1

    #@12
    return v1

    #@13
    .line 503
    .end local v0    # "oa":Landroid/animation/ObjectAnimator;
    :cond_0
    const/4 v1, 0x0

    #@14
    return v1
.end method

.method setSliderAnimator(Landroid/animation/ObjectAnimator;)V
    .locals 1
    .param p1, "oa"    # Landroid/animation/ObjectAnimator;

    #@0
    .prologue
    .line 492
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@2
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@5
    iput-object v0, p0, Landroid/widget/StackView$StackFrame;->sliderAnimator:Ljava/lang/ref/WeakReference;

    #@7
    .line 491
    return-void
.end method

.method setTransformAnimator(Landroid/animation/ObjectAnimator;)V
    .locals 1
    .param p1, "oa"    # Landroid/animation/ObjectAnimator;

    #@0
    .prologue
    .line 488
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@2
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@5
    iput-object v0, p0, Landroid/widget/StackView$StackFrame;->transformAnimator:Ljava/lang/ref/WeakReference;

    #@7
    .line 487
    return-void
.end method
