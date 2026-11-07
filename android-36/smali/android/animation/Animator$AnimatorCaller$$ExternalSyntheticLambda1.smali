.class public final synthetic Landroid/animation/Animator$AnimatorCaller$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/Animator$AnimatorCaller;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist call(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .registers 4

    .line 0
    check-cast p1, Landroid/animation/Animator$AnimatorListener;

    check-cast p2, Landroid/animation/Animator;

    invoke-interface {p1, p2, p3}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;Z)V

    return-void
.end method
