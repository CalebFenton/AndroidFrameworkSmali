.class Landroid/support/v4/view/ViewPropertyAnimatorCompatJB;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompatJB.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static setListener(Landroid/view/View;Landroid/support/v4/view/ViewPropertyAnimatorListener;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "listener"    # Landroid/support/v4/view/ViewPropertyAnimatorListener;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 38
    if-eqz p1, :cond_0

    #@3
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@6
    move-result-object v0

    #@7
    new-instance v1, Landroid/support/v4/view/ViewPropertyAnimatorCompatJB$1;

    #@9
    invoke-direct {v1, p1, p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompatJB$1;-><init>(Landroid/support/v4/view/ViewPropertyAnimatorListener;Landroid/view/View;)V

    #@c
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    #@f
    .line 37
    :goto_0
    return-void

    #@10
    .line 56
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    #@17
    goto :goto_0
.end method

.method public static withEndAction(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    #@7
    .line 28
    return-void
.end method

.method public static withLayer(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    #@7
    .line 32
    return-void
.end method

.method public static withStartAction(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    #@7
    .line 24
    return-void
.end method
