.class Landroid/app/ExitTransitionCoordinator$10;
.super Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;
.source "ExitTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ExitTransitionCoordinator;->getSharedElementExitTransition()Landroid/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ExitTransitionCoordinator;


# direct methods
.method constructor <init>(Landroid/app/ExitTransitionCoordinator;Landroid/app/ActivityTransitionCoordinator;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ExitTransitionCoordinator;
    .param p2, "this$0_1"    # Landroid/app/ActivityTransitionCoordinator;

    #@0
    .prologue
    .line 348
    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$10;->this$0:Landroid/app/ExitTransitionCoordinator;

    #@2
    invoke-direct {p0, p2}, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;-><init>(Landroid/app/ActivityTransitionCoordinator;)V

    #@5
    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 3
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 351
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@3
    .line 352
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$10;->this$0:Landroid/app/ExitTransitionCoordinator;

    #@5
    invoke-virtual {v0}, Landroid/app/ExitTransitionCoordinator;->sharedElementTransitionComplete()V

    #@8
    .line 353
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$10;->this$0:Landroid/app/ExitTransitionCoordinator;

    #@a
    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->-get2(Landroid/app/ExitTransitionCoordinator;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 354
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$10;->this$0:Landroid/app/ExitTransitionCoordinator;

    #@12
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator$10;->this$0:Landroid/app/ExitTransitionCoordinator;

    #@14
    iget-object v1, v1, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@16
    const/4 v2, 0x1

    #@17
    invoke-virtual {v0, v1, v2}, Landroid/app/ExitTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    #@1a
    .line 350
    :cond_0
    return-void
.end method
