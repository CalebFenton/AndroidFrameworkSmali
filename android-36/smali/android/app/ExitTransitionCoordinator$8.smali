.class Landroid/app/ExitTransitionCoordinator$8;
.super Ljava/lang/Object;
.source "ExitTransitionCoordinator.java"

# interfaces
.implements Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ExitTransitionCoordinator;->notifyComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ExitTransitionCoordinator;

.field final synthetic blacklist val$resultReceiver:Landroid/os/ResultReceiver;

.field final synthetic blacklist val$sharedElementBundle:Landroid/os/Bundle;


# direct methods
.method constructor blacklist <init>(Landroid/app/ExitTransitionCoordinator;Landroid/os/ResultReceiver;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "this$0"    # Landroid/app/ExitTransitionCoordinator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 440
    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$8;->this$0:Landroid/app/ExitTransitionCoordinator;

    iput-object p2, p0, Landroid/app/ExitTransitionCoordinator$8;->val$resultReceiver:Landroid/os/ResultReceiver;

    iput-object p3, p0, Landroid/app/ExitTransitionCoordinator$8;->val$sharedElementBundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onSharedElementsReady()V
    .registers 4

    .line 443
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$8;->val$resultReceiver:Landroid/os/ResultReceiver;

    const/16 v1, 0x67

    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator$8;->val$sharedElementBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 445
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$8;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->-$$Nest$mnotifyExitComplete(Landroid/app/ExitTransitionCoordinator;)V

    .line 446
    return-void
.end method
