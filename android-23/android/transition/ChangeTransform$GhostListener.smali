.class Landroid/transition/ChangeTransform$GhostListener;
.super Landroid/transition/Transition$TransitionListenerAdapter;
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
.field private mGhostView:Landroid/view/GhostView;

.field private mStartView:Landroid/view/View;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/GhostView;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startView"    # Landroid/view/View;
    .param p3, "ghostView"    # Landroid/view/GhostView;

    #@0
    .prologue
    .line 472
    invoke-direct {p0}, Landroid/transition/Transition$TransitionListenerAdapter;-><init>()V

    #@3
    .line 473
    iput-object p1, p0, Landroid/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    #@5
    .line 474
    iput-object p2, p0, Landroid/transition/ChangeTransform$GhostListener;->mStartView:Landroid/view/View;

    #@7
    .line 475
    iput-object p3, p0, Landroid/transition/ChangeTransform$GhostListener;->mGhostView:Landroid/view/GhostView;

    #@9
    .line 472
    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 3
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 480
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@4
    .line 481
    iget-object v0, p0, Landroid/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    #@6
    invoke-static {v0}, Landroid/view/GhostView;->removeGhost(Landroid/view/View;)V

    #@9
    .line 482
    iget-object v0, p0, Landroid/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    #@b
    const v1, 0x1020052

    #@e
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    #@11
    .line 483
    iget-object v0, p0, Landroid/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    #@13
    const v1, 0x1020053

    #@16
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    #@19
    .line 484
    iget-object v0, p0, Landroid/transition/ChangeTransform$GhostListener;->mStartView:Landroid/view/View;

    #@1b
    const/high16 v1, 0x3f800000    # 1.0f

    #@1d
    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    #@20
    .line 479
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 489
    iget-object v0, p0, Landroid/transition/ChangeTransform$GhostListener;->mGhostView:Landroid/view/GhostView;

    #@2
    const/4 v1, 0x4

    #@3
    invoke-virtual {v0, v1}, Landroid/view/GhostView;->setVisibility(I)V

    #@6
    .line 488
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 494
    iget-object v0, p0, Landroid/transition/ChangeTransform$GhostListener;->mGhostView:Landroid/view/GhostView;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Landroid/view/GhostView;->setVisibility(I)V

    #@6
    .line 493
    return-void
.end method
