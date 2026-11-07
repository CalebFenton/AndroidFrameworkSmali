.class public interface abstract Landroid/animation/Animator$AnimatorListener;
.super Ljava/lang/Object;
.source "Animator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AnimatorListener"
.end annotation


# virtual methods
.method public abstract whitelist onAnimationCancel(Landroid/animation/Animator;)V
.end method

.method public abstract whitelist onAnimationEnd(Landroid/animation/Animator;)V
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;Z)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;
    .param p2, "isReverse"    # Z

    .line 784
    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 785
    return-void
.end method

.method public abstract whitelist onAnimationRepeat(Landroid/animation/Animator;)V
.end method

.method public abstract whitelist onAnimationStart(Landroid/animation/Animator;)V
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;Z)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;
    .param p2, "isReverse"    # Z

    .line 768
    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 769
    return-void
.end method
