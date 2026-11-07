.class Landroid/app/EnterTransitionCoordinator$3;
.super Ljava/lang/Object;
.source "EnterTransitionCoordinator.java"

# interfaces
.implements Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/EnterTransitionCoordinator;->onTakeSharedElements()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/EnterTransitionCoordinator;

.field final synthetic blacklist val$sharedElementState:Landroid/os/Bundle;


# direct methods
.method public static synthetic blacklist $r8$lambda$8sQXYeoNJ4rmNvhyHBLrgxzXpLI(Landroid/app/EnterTransitionCoordinator$3;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/EnterTransitionCoordinator$3;->lambda$onSharedElementsReady$1(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$UyYJisNsGkbH5E1F4-sEq61IoqI(Landroid/app/EnterTransitionCoordinator$3;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/EnterTransitionCoordinator$3;->lambda$onSharedElementsReady$0(Landroid/os/Bundle;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/app/EnterTransitionCoordinator;Landroid/os/Bundle;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 473
    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator$3;->this$0:Landroid/app/EnterTransitionCoordinator;

    iput-object p2, p0, Landroid/app/EnterTransitionCoordinator$3;->val$sharedElementState:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onSharedElementsReady$0(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "sharedElementState"    # Landroid/os/Bundle;

    .line 480
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$3;->this$0:Landroid/app/EnterTransitionCoordinator;

    invoke-static {v0, p1}, Landroid/app/EnterTransitionCoordinator;->-$$Nest$mstartSharedElementTransition(Landroid/app/EnterTransitionCoordinator;Landroid/os/Bundle;)V

    .line 481
    return-void
.end method

.method private synthetic blacklist lambda$onSharedElementsReady$1(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "sharedElementState"    # Landroid/os/Bundle;

    .line 479
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$3;->this$0:Landroid/app/EnterTransitionCoordinator;

    new-instance v1, Landroid/app/EnterTransitionCoordinator$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/EnterTransitionCoordinator$3$$ExternalSyntheticLambda0;-><init>(Landroid/app/EnterTransitionCoordinator$3;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/app/EnterTransitionCoordinator;->startTransition(Ljava/lang/Runnable;)V

    .line 482
    return-void
.end method


# virtual methods
.method public whitelist onSharedElementsReady()V
    .registers 4

    .line 476
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$3;->this$0:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 477
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_16

    .line 478
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator$3;->val$sharedElementState:Landroid/os/Bundle;

    new-instance v2, Landroid/app/EnterTransitionCoordinator$3$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Landroid/app/EnterTransitionCoordinator$3$$ExternalSyntheticLambda1;-><init>(Landroid/app/EnterTransitionCoordinator$3;Landroid/os/Bundle;)V

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;ZLjava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    .line 483
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 485
    :cond_16
    return-void
.end method
