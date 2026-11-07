.class Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimateOnHWLayerIfNeededListener"
.end annotation


# instance fields
.field private greylist-max-o mShouldRunOnHWLayer:Z

.field private greylist-max-o mView:Landroid/view/View;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mShouldRunOnHWLayer:Z

    .line 654
    if-nez p1, :cond_9

    .line 655
    return-void

    .line 657
    :cond_9
    iput-object p1, p0, Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mView:Landroid/view/View;

    .line 658
    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 680
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 670
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mShouldRunOnHWLayer:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 671
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 673
    :cond_b
    iput-object v1, p0, Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mView:Landroid/view/View;

    .line 674
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 675
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 685
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 662
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mView:Landroid/view/View;

    invoke-static {v0, p1}, Landroid/app/FragmentManagerImpl;->shouldRunOnHWLayer(Landroid/view/View;Landroid/animation/Animator;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mShouldRunOnHWLayer:Z

    .line 663
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mShouldRunOnHWLayer:Z

    if-eqz v0, :cond_13

    .line 664
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mView:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 666
    :cond_13
    return-void
.end method
