.class Landroid/app/ExitTransitionCoordinator$2;
.super Landroid/transition/TransitionListenerAdapter;
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
.field final synthetic blacklist this$0:Landroid/app/ExitTransitionCoordinator;


# direct methods
.method constructor blacklist <init>(Landroid/app/ExitTransitionCoordinator;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/ExitTransitionCoordinator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 163
    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$2;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTransitionEnd(Landroid/transition/Transition;)V
    .registers 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 166
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 167
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$2;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/ExitTransitionCoordinator;->isViewsTransitionComplete()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 168
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$2;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->-$$Nest$mdelayCancel(Landroid/app/ExitTransitionCoordinator;)V

    .line 170
    :cond_10
    return-void
.end method
