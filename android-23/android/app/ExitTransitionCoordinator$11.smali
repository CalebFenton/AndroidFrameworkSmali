.class Landroid/app/ExitTransitionCoordinator$11;
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
.field final synthetic this$0:Landroid/app/ExitTransitionCoordinator;

.field final synthetic val$resultReceiver:Landroid/os/ResultReceiver;

.field final synthetic val$sharedElementBundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/app/ExitTransitionCoordinator;Landroid/os/ResultReceiver;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ExitTransitionCoordinator;
    .param p2, "val$resultReceiver"    # Landroid/os/ResultReceiver;
    .param p3, "val$sharedElementBundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 426
    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$11;->this$0:Landroid/app/ExitTransitionCoordinator;

    #@2
    iput-object p2, p0, Landroid/app/ExitTransitionCoordinator$11;->val$resultReceiver:Landroid/os/ResultReceiver;

    #@4
    iput-object p3, p0, Landroid/app/ExitTransitionCoordinator$11;->val$sharedElementBundle:Landroid/os/Bundle;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public onSharedElementsReady()V
    .locals 3

    #@0
    .prologue
    .line 429
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$11;->val$resultReceiver:Landroid/os/ResultReceiver;

    #@2
    .line 430
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator$11;->val$sharedElementBundle:Landroid/os/Bundle;

    #@4
    .line 429
    const/16 v2, 0x67

    #@6
    invoke-virtual {v0, v2, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    #@9
    .line 431
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$11;->this$0:Landroid/app/ExitTransitionCoordinator;

    #@b
    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->-wrap4(Landroid/app/ExitTransitionCoordinator;)V

    #@e
    .line 428
    return-void
.end method
