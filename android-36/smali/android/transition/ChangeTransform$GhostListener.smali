.class Landroid/transition/ChangeTransform$GhostListener;
.super Landroid/transition/TransitionListenerAdapter;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GhostListener"
.end annotation


# instance fields
.field private greylist-max-o mGhostView:Landroid/view/GhostView;

.field private greylist-max-o mStartView:Landroid/view/View;

.field private greylist-max-o mView:Landroid/view/View;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/view/View;Landroid/view/View;Landroid/view/GhostView;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startView"    # Landroid/view/View;
    .param p3, "ghostView"    # Landroid/view/GhostView;

    .line 478
    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    .line 479
    iput-object p1, p0, Landroid/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    .line 480
    iput-object p2, p0, Landroid/transition/ChangeTransform$GhostListener;->mStartView:Landroid/view/View;

    .line 481
    iput-object p3, p0, Landroid/transition/ChangeTransform$GhostListener;->mGhostView:Landroid/view/GhostView;

    .line 482
    return-void
.end method


# virtual methods
.method public whitelist onTransitionEnd(Landroid/transition/Transition;)V
    .registers 5
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 486
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 487
    iget-object v0, p0, Landroid/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/view/GhostView;->removeGhost(Landroid/view/View;)V

    .line 488
    iget-object v0, p0, Landroid/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    const v1, 0x10205b2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 489
    iget-object v0, p0, Landroid/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    const v1, 0x102045f

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 490
    iget-object v0, p0, Landroid/transition/ChangeTransform$GhostListener;->mStartView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 491
    return-void
.end method

.method public whitelist onTransitionPause(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 495
    iget-object v0, p0, Landroid/transition/ChangeTransform$GhostListener;->mGhostView:Landroid/view/GhostView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/GhostView;->setVisibility(I)V

    .line 496
    return-void
.end method

.method public whitelist onTransitionResume(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 500
    iget-object v0, p0, Landroid/transition/ChangeTransform$GhostListener;->mGhostView:Landroid/view/GhostView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GhostView;->setVisibility(I)V

    .line 501
    return-void
.end method
