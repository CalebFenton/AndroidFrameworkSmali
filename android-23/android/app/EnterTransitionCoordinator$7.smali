.class Landroid/app/EnterTransitionCoordinator$7;
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
.field final synthetic this$0:Landroid/app/EnterTransitionCoordinator;

.field final synthetic val$transitioningViews:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/app/EnterTransitionCoordinator;Landroid/app/ActivityTransitionCoordinator;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/EnterTransitionCoordinator;
    .param p2, "this$0_1"    # Landroid/app/ActivityTransitionCoordinator;

    #@0
    .prologue
    .line 462
    .local p3, "val$transitioningViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator$7;->this$0:Landroid/app/EnterTransitionCoordinator;

    #@2
    iput-object p3, p0, Landroid/app/EnterTransitionCoordinator$7;->val$transitioningViews:Ljava/util/ArrayList;

    #@4
    invoke-direct {p0, p2}, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;-><init>(Landroid/app/ActivityTransitionCoordinator;)V

    #@7
    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 474
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$7;->this$0:Landroid/app/EnterTransitionCoordinator;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, v1}, Landroid/app/EnterTransitionCoordinator;->-set0(Landroid/app/EnterTransitionCoordinator;Landroid/transition/Transition;)Landroid/transition/Transition;

    #@6
    .line 475
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@9
    .line 476
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$7;->this$0:Landroid/app/EnterTransitionCoordinator;

    #@b
    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->viewsTransitionComplete()V

    #@e
    .line 477
    invoke-super {p0, p1}, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;->onTransitionEnd(Landroid/transition/Transition;)V

    #@11
    .line 473
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 3
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 465
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$7;->this$0:Landroid/app/EnterTransitionCoordinator;

    #@2
    invoke-static {v0, p1}, Landroid/app/EnterTransitionCoordinator;->-set0(Landroid/app/EnterTransitionCoordinator;Landroid/transition/Transition;)Landroid/transition/Transition;

    #@5
    .line 466
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$7;->val$transitioningViews:Ljava/util/ArrayList;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 467
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$7;->this$0:Landroid/app/EnterTransitionCoordinator;

    #@b
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator$7;->val$transitioningViews:Ljava/util/ArrayList;

    #@d
    const/4 v2, 0x0

    #@e
    invoke-virtual {v0, v1, v2}, Landroid/app/EnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    #@11
    .line 469
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;->onTransitionStart(Landroid/transition/Transition;)V

    #@14
    .line 464
    return-void
.end method
