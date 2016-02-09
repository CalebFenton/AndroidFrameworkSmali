.class Landroid/app/ExitTransitionCoordinator$2;
.super Landroid/transition/Transition$TransitionListenerAdapter;
.source "ExitTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ExitTransitionCoordinator;->startSharedElementExit(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ExitTransitionCoordinator;


# direct methods
.method constructor <init>(Landroid/app/ExitTransitionCoordinator;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ExitTransitionCoordinator;

    #@0
    .prologue
    .line 163
    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$2;->this$0:Landroid/app/ExitTransitionCoordinator;

    #@2
    invoke-direct {p0}, Landroid/transition/Transition$TransitionListenerAdapter;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 166
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@3
    .line 167
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$2;->this$0:Landroid/app/ExitTransitionCoordinator;

    #@5
    invoke-virtual {v0}, Landroid/app/ExitTransitionCoordinator;->isViewsTransitionComplete()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 168
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$2;->this$0:Landroid/app/ExitTransitionCoordinator;

    #@d
    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->-wrap1(Landroid/app/ExitTransitionCoordinator;)V

    #@10
    .line 165
    :cond_0
    return-void
.end method
