.class Landroid/media/MediaController2$2;
.super Landroid/os/ResultReceiver;
.source "MediaController2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaController2;->sendSessionCommand(Landroid/media/Session2Command;Landroid/os/Bundle;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaController2;

.field final synthetic blacklist val$command:Landroid/media/Session2Command;


# direct methods
.method public static synthetic blacklist $r8$lambda$4l8JXV1IgDgj7ZdvQvyK4fHCuOg(Landroid/media/MediaController2$2;Landroid/media/Session2Command;ILandroid/os/Bundle;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaController2$2;->lambda$onReceiveResult$0(Landroid/media/Session2Command;ILandroid/os/Bundle;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/MediaController2;Landroid/os/Handler;Landroid/media/Session2Command;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 213
    iput-object p1, p0, Landroid/media/MediaController2$2;->this$0:Landroid/media/MediaController2;

    iput-object p3, p0, Landroid/media/MediaController2$2;->val$command:Landroid/media/Session2Command;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private synthetic blacklist lambda$onReceiveResult$0(Landroid/media/Session2Command;ILandroid/os/Bundle;)V
    .registers 7

    .line 219
    iget-object v0, p0, Landroid/media/MediaController2$2;->this$0:Landroid/media/MediaController2;

    iget-object v1, v0, Landroid/media/MediaController2;->mCallback:Landroid/media/MediaController2$ControllerCallback;

    new-instance v2, Landroid/media/Session2Command$Result;

    invoke-direct {v2, p2, p3}, Landroid/media/Session2Command$Result;-><init>(ILandroid/os/Bundle;)V

    invoke-virtual {v1, v0, p0, p1, v2}, Landroid/media/MediaController2$ControllerCallback;->onCommandResult(Landroid/media/MediaController2;Ljava/lang/Object;Landroid/media/Session2Command;Landroid/media/Session2Command$Result;)V

    return-void
.end method


# virtual methods
.method protected whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .registers 6

    .line 215
    iget-object v0, p0, Landroid/media/MediaController2$2;->this$0:Landroid/media/MediaController2;

    invoke-static {v0}, Landroid/media/MediaController2;->-$$Nest$fgetmLock(Landroid/media/MediaController2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 216
    :try_start_7
    iget-object v1, p0, Landroid/media/MediaController2$2;->this$0:Landroid/media/MediaController2;

    invoke-static {v1}, Landroid/media/MediaController2;->-$$Nest$fgetmPendingCommands(Landroid/media/MediaController2;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_22

    .line 218
    iget-object v0, p0, Landroid/media/MediaController2$2;->this$0:Landroid/media/MediaController2;

    invoke-static {v0}, Landroid/media/MediaController2;->-$$Nest$fgetmCallbackExecutor(Landroid/media/MediaController2;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaController2$2;->val$command:Landroid/media/Session2Command;

    new-instance v2, Landroid/media/MediaController2$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, p1, p2}, Landroid/media/MediaController2$2$$ExternalSyntheticLambda0;-><init>(Landroid/media/MediaController2$2;Landroid/media/Session2Command;ILandroid/os/Bundle;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_22
    move-exception p0

    .line 217
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p0
.end method
