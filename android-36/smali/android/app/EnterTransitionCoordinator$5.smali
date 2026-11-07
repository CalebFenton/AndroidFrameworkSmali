.class Landroid/app/EnterTransitionCoordinator$5;
.super Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;
.source "EnterTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/EnterTransitionCoordinator;->beginTransition(Landroid/view/ViewGroup;ZZ)Landroid/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/EnterTransitionCoordinator;

.field final synthetic blacklist val$transitioningViews:Ljava/util/ArrayList;


# direct methods
.method constructor blacklist <init>(Landroid/app/EnterTransitionCoordinator;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "this$0"    # Landroid/app/EnterTransitionCoordinator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 536
    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator$5;->this$0:Landroid/app/EnterTransitionCoordinator;

    iput-object p2, p0, Landroid/app/EnterTransitionCoordinator$5;->val$transitioningViews:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;-><init>(Landroid/app/ActivityTransitionCoordinator;)V

    return-void
.end method


# virtual methods
.method public whitelist onTransitionEnd(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 548
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$5;->this$0:Landroid/app/EnterTransitionCoordinator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/EnterTransitionCoordinator;->-$$Nest$fputmEnterViewsTransition(Landroid/app/EnterTransitionCoordinator;Landroid/transition/Transition;)V

    .line 549
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 550
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$5;->this$0:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->viewsTransitionComplete()V

    .line 551
    invoke-super {p0, p1}, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;->onTransitionEnd(Landroid/transition/Transition;)V

    .line 552
    return-void
.end method

.method public whitelist onTransitionStart(Landroid/transition/Transition;)V
    .registers 5
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 539
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$5;->this$0:Landroid/app/EnterTransitionCoordinator;

    invoke-static {v0, p1}, Landroid/app/EnterTransitionCoordinator;->-$$Nest$fputmEnterViewsTransition(Landroid/app/EnterTransitionCoordinator;Landroid/transition/Transition;)V

    .line 540
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$5;->val$transitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    .line 541
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$5;->this$0:Landroid/app/EnterTransitionCoordinator;

    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator$5;->val$transitioningViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/EnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 543
    :cond_11
    invoke-super {p0, p1}, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;->onTransitionStart(Landroid/transition/Transition;)V

    .line 544
    return-void
.end method
