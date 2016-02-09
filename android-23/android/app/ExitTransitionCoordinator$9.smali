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
    .line 321
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
    .line 324
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@3
    .line 325
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$9;->this$0:Landroid/app/ExitTransitionCoordinator;

    #@5
    invoke-virtual {v0}, Landroid/app/ExitTransitionCoordinator;->viewsTransitionComplete()V

    #@8
    .line 326
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$9;->this$0:Landroid/app/ExitTransitionCoordinator;

    #@a
    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->-get2(Landroid/app/ExitTransitionCoordinator;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$9;->val$transitioningViews:Ljava/util/ArrayList;

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 327
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$9;->this$0:Landroid/app/ExitTransitionCoordinator;

    #@16
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator$9;->val$transitioningViews:Ljava/util/ArrayList;

    #@18
    const/4 v2, 0x1

    #@19
    invoke-virtual {v0, v1, v2}, Landroid/app/ExitTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    #@1c
    .line 329
    :cond_0
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$9;->this$0:Landroid/app/ExitTransitionCoordinator;

    #@1e
    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->-get3(Landroid/app/ExitTransitionCoordinator;)Landroid/os/Bundle;

    #@21
    move-result-object v0

    #@22
    if-eqz v0, :cond_1

    #@24
    .line 330
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$9;->this$0:Landroid/app/ExitTransitionCoordinator;

    #@26
    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->-wrap1(Landroid/app/ExitTransitionCoordinator;)V

    #@29
    .line 332
    :cond_1
    invoke-super {p0, p1}, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;->onTransitionEnd(Landroid/transition/Transition;)V

    #@2c
    .line 323
    return-void
.end method
