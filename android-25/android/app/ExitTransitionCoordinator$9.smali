.class Landroid/app/ExitTransitionCoordinator$9;
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
.field final synthetic this$0:Landroid/app/ExitTransitionCoordinator;

.field final synthetic val$transitioningViews:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/app/ExitTransitionCoordinator;Landroid/app/ActivityTransitionCoordinator;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ExitTransitionCoordinator;
    .param p2, "this$0_1"    # Landroid/app/ActivityTransitionCoordinator;

    #@0
    .prologue
    .line 327
    .local p3, "val$transitioningViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$9;->this$0:Landroid/app/ExitTransitionCoordinator;

    #@2
    iput-object p3, p0, Landroid/app/ExitTransitionCoordinator$9;->val$transitioningViews:Ljava/util/ArrayList;

    #@4
    invoke-direct {p0, p2}, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;-><init>(Landroid/app/ActivityTransitionCoordinator;)V

    #@7
    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 3
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 330
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@4
    .line 331
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$9;->this$0:Landroid/app/ExitTransitionCoordinator;

    #@6
    invoke-virtual {v0}, Landroid/app/ActivityTransitionCoordinator;->viewsTransitionComplete()V

    #@9
    .line 332
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$9;->this$0:Landroid/app/ExitTransitionCoordinator;

    #@b
    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->-get3(Landroid/app/ExitTransitionCoordinator;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$9;->val$transitioningViews:Ljava/util/ArrayList;

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 333
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$9;->this$0:Landroid/app/ExitTransitionCoordinator;

    #@17
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator$9;->val$transitioningViews:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    #@1c
    .line 334
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$9;->this$0:Landroid/app/ExitTransitionCoordinator;

    #@1e
    const/4 v1, 0x0

    #@1f
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    #@22
    .line 336
    :cond_0
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$9;->this$0:Landroid/app/ExitTransitionCoordinator;

    #@24
    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->-get4(Landroid/app/ExitTransitionCoordinator;)Landroid/os/Bundle;

    #@27
    move-result-object v0

    #@28
    if-eqz v0, :cond_1

    #@2a
    .line 337
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$9;->this$0:Landroid/app/ExitTransitionCoordinator;

    #@2c
    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->-wrap1(Landroid/app/ExitTransitionCoordinator;)V

    #@2f
    .line 339
    :cond_1
    invoke-super {p0, p1}, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;->onTransitionEnd(Landroid/transition/Transition;)V

    #@32
    .line 329
    return-void
.end method
