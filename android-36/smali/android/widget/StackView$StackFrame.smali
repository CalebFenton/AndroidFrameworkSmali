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
.field greylist-max-o sliderAnimator:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o transformAnimator:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 487
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 488
    return-void
.end method


# virtual methods
.method greylist-max-o cancelSliderAnimator()Z
    .registers 3

    .line 510
    iget-object v0, p0, Landroid/widget/StackView$StackFrame;->sliderAnimator:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_13

    .line 511
    iget-object v0, p0, Landroid/widget/StackView$StackFrame;->sliderAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 512
    .local v0, "oa":Landroid/animation/ObjectAnimator;
    if-eqz v0, :cond_13

    .line 513
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 514
    const/4 v1, 0x1

    return v1

    .line 517
    .end local v0    # "oa":Landroid/animation/ObjectAnimator;
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o cancelTransformAnimator()Z
    .registers 3

    .line 499
    iget-object v0, p0, Landroid/widget/StackView$StackFrame;->transformAnimator:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_13

    .line 500
    iget-object v0, p0, Landroid/widget/StackView$StackFrame;->transformAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 501
    .local v0, "oa":Landroid/animation/ObjectAnimator;
    if-eqz v0, :cond_13

    .line 502
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 503
    const/4 v1, 0x1

    return v1

    .line 506
    .end local v0    # "oa":Landroid/animation/ObjectAnimator;
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o setSliderAnimator(Landroid/animation/ObjectAnimator;)V
    .registers 3
    .param p1, "oa"    # Landroid/animation/ObjectAnimator;

    .line 495
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/StackView$StackFrame;->sliderAnimator:Ljava/lang/ref/WeakReference;

    .line 496
    return-void
.end method

.method greylist-max-o setTransformAnimator(Landroid/animation/ObjectAnimator;)V
    .registers 3
    .param p1, "oa"    # Landroid/animation/ObjectAnimator;

    .line 491
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/StackView$StackFrame;->transformAnimator:Ljava/lang/ref/WeakReference;

    .line 492
    return-void
.end method
