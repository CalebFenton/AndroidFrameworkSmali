.class Landroid/app/ExitTransitionCoordinator$6;
.super Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;
.source "ExitTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ExitTransitionCoordinator;->getExitTransition()Landroid/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ExitTransitionCoordinator;

.field final synthetic blacklist val$transitioningViews:Ljava/util/ArrayList;


# direct methods
.method constructor blacklist <init>(Landroid/app/ExitTransitionCoordinator;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "this$0"    # Landroid/app/ExitTransitionCoordinator;
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

    .line 325
    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$6;->this$0:Landroid/app/ExitTransitionCoordinator;

    iput-object p2, p0, Landroid/app/ExitTransitionCoordinator$6;->val$transitioningViews:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;-><init>(Landroid/app/ActivityTransitionCoordinator;)V

    return-void
.end method


# virtual methods
.method public whitelist onTransitionEnd(Landroid/transition/Transition;)V
    .registers 5
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 328
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$6;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/ExitTransitionCoordinator;->viewsTransitionComplete()V

    .line 329
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$6;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->-$$Nest$fgetmIsHidden(Landroid/app/ExitTransitionCoordinator;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$6;->val$transitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    .line 330
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$6;->this$0:Landroid/app/ExitTransitionCoordinator;

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator$6;->val$transitioningViews:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/ExitTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 331
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$6;->this$0:Landroid/app/ExitTransitionCoordinator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ExitTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    .line 333
    :cond_1f
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$6;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->-$$Nest$fgetmSharedElementBundle(Landroid/app/ExitTransitionCoordinator;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 334
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$6;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->-$$Nest$mdelayCancel(Landroid/app/ExitTransitionCoordinator;)V

    .line 336
    :cond_2c
    invoke-super {p0, p1}, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;->onTransitionEnd(Landroid/transition/Transition;)V

    .line 337
    return-void
.end method
