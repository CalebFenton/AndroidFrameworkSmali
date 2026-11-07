.class Landroid/transition/Visibility$1;
.super Landroid/transition/TransitionListenerAdapter;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/transition/Visibility;

.field final synthetic blacklist val$finalOverlayView:Landroid/view/View;

.field final synthetic blacklist val$overlay:Landroid/view/ViewGroupOverlay;

.field final synthetic blacklist val$startView:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Landroid/transition/Visibility;Landroid/view/ViewGroupOverlay;Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .param p1, "this$0"    # Landroid/transition/Visibility;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 465
    iput-object p1, p0, Landroid/transition/Visibility$1;->this$0:Landroid/transition/Visibility;

    iput-object p2, p0, Landroid/transition/Visibility$1;->val$overlay:Landroid/view/ViewGroupOverlay;

    iput-object p3, p0, Landroid/transition/Visibility$1;->val$finalOverlayView:Landroid/view/View;

    iput-object p4, p0, Landroid/transition/Visibility$1;->val$startView:Landroid/view/View;

    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTransitionEnd(Landroid/transition/Transition;)V
    .registers 5
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 483
    iget-object v0, p0, Landroid/transition/Visibility$1;->val$startView:Landroid/view/View;

    const v1, 0x10205b3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 484
    iget-object v0, p0, Landroid/transition/Visibility$1;->val$overlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/transition/Visibility$1;->val$finalOverlayView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 485
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 486
    return-void
.end method

.method public whitelist onTransitionPause(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 469
    iget-object v0, p0, Landroid/transition/Visibility$1;->val$overlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/transition/Visibility$1;->val$finalOverlayView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 470
    return-void
.end method

.method public whitelist onTransitionResume(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 474
    iget-object v0, p0, Landroid/transition/Visibility$1;->val$finalOverlayView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_10

    .line 475
    iget-object v0, p0, Landroid/transition/Visibility$1;->val$overlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/transition/Visibility$1;->val$finalOverlayView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    goto :goto_15

    .line 477
    :cond_10
    iget-object v0, p0, Landroid/transition/Visibility$1;->this$0:Landroid/transition/Visibility;

    invoke-virtual {v0}, Landroid/transition/Visibility;->cancel()V

    .line 479
    :goto_15
    return-void
.end method
