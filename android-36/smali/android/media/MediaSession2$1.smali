.class Landroid/media/MediaSession2$1;
.super Landroid/os/ResultReceiver;
.source "MediaSession2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaSession2;->sendSessionCommand(Landroid/media/MediaSession2$ControllerInfo;Landroid/media/Session2Command;Landroid/os/Bundle;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaSession2;

.field final synthetic blacklist val$command:Landroid/media/Session2Command;

.field final synthetic blacklist val$controller:Landroid/media/MediaSession2$ControllerInfo;


# direct methods
.method public static synthetic blacklist $r8$lambda$Wpa-gkFRysATiJq-GygAhA5LAdc(Landroid/media/MediaSession2$1;Landroid/media/MediaSession2$ControllerInfo;Landroid/media/Session2Command;ILandroid/os/Bundle;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/MediaSession2$1;->lambda$onReceiveResult$0(Landroid/media/MediaSession2$ControllerInfo;Landroid/media/Session2Command;ILandroid/os/Bundle;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/MediaSession2;Landroid/os/Handler;Landroid/media/MediaSession2$ControllerInfo;Landroid/media/Session2Command;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 212
    iput-object p1, p0, Landroid/media/MediaSession2$1;->this$0:Landroid/media/MediaSession2;

    iput-object p3, p0, Landroid/media/MediaSession2$1;->val$controller:Landroid/media/MediaSession2$ControllerInfo;

    iput-object p4, p0, Landroid/media/MediaSession2$1;->val$command:Landroid/media/Session2Command;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private synthetic blacklist lambda$onReceiveResult$0(Landroid/media/MediaSession2$ControllerInfo;Landroid/media/Session2Command;ILandroid/os/Bundle;)V
    .registers 11

    .line 216
    iget-object v1, p0, Landroid/media/MediaSession2$1;->this$0:Landroid/media/MediaSession2;

    iget-object v0, v1, Landroid/media/MediaSession2;->mCallback:Landroid/media/MediaSession2$SessionCallback;

    new-instance v5, Landroid/media/Session2Command$Result;

    invoke-direct {v5, p3, p4}, Landroid/media/Session2Command$Result;-><init>(ILandroid/os/Bundle;)V

    move-object v3, p0

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaSession2$SessionCallback;->onCommandResult(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;Ljava/lang/Object;Landroid/media/Session2Command;Landroid/media/Session2Command$Result;)V

    return-void
.end method


# virtual methods
.method protected whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .registers 10

    .line 214
    iget-object v0, p0, Landroid/media/MediaSession2$1;->val$controller:Landroid/media/MediaSession2$ControllerInfo;

    invoke-virtual {v0, p0}, Landroid/media/MediaSession2$ControllerInfo;->receiveCommandResult(Landroid/os/ResultReceiver;)V

    .line 215
    iget-object v0, p0, Landroid/media/MediaSession2$1;->this$0:Landroid/media/MediaSession2;

    iget-object v0, v0, Landroid/media/MediaSession2;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/media/MediaSession2$1;->val$controller:Landroid/media/MediaSession2$ControllerInfo;

    iget-object v4, p0, Landroid/media/MediaSession2$1;->val$command:Landroid/media/Session2Command;

    new-instance v1, Landroid/media/MediaSession2$1$$ExternalSyntheticLambda0;

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Landroid/media/MediaSession2$1$$ExternalSyntheticLambda0;-><init>(Landroid/media/MediaSession2$1;Landroid/media/MediaSession2$ControllerInfo;Landroid/media/Session2Command;ILandroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
