.class Landroid/media/tv/TvInputService$Session$19;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$Session;->notifyTimeShiftStartPositionChanged(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/TvInputService$Session;

.field final synthetic blacklist val$timeMs:J


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvInputService$Session;J)V
    .registers 4
    .param p1, "this$0"    # Landroid/media/tv/TvInputService$Session;
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

    .line 1125
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$19;->this$0:Landroid/media/tv/TvInputService$Session;

    iput-wide p2, p0, Landroid/media/tv/TvInputService$Session$19;->val$timeMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 1131
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$19;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1132
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$19;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/tv/TvInputService$Session$19;->val$timeMs:J

    invoke-interface {v0, v1, v2}, Landroid/media/tv/ITvInputSessionCallback;->onTimeShiftStartPositionChanged(J)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 1136
    :cond_13
    goto :goto_1c

    .line 1134
    :catch_14
    move-exception v0

    .line 1135
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInputService"

    const-string v2, "error in notifyTimeShiftStartPositionChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1137
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method
