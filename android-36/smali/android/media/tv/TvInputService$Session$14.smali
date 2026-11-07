.class Landroid/media/tv/TvInputService$Session$14;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$Session;->notifyTimeShiftStatusChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/TvInputService$Session;

.field final synthetic blacklist val$status:I


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvInputService$Session;I)V
    .registers 3
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

    .line 997
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$14;->this$0:Landroid/media/tv/TvInputService$Session;

    iput p2, p0, Landroid/media/tv/TvInputService$Session$14;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 1001
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$14;->this$0:Landroid/media/tv/TvInputService$Session;

    iget v1, p0, Landroid/media/tv/TvInputService$Session$14;->val$status:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputService$Session;->timeShiftEnablePositionTracking(Z)V

    .line 1005
    :try_start_d
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$14;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1006
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$14;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/TvInputService$Session$14;->val$status:I

    invoke-interface {v0, v1}, Landroid/media/tv/ITvInputSessionCallback;->onTimeShiftStatusChanged(I)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_20} :catch_21

    .line 1010
    :cond_20
    goto :goto_29

    .line 1008
    :catch_21
    move-exception v0

    .line 1009
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInputService"

    const-string v2, "error in notifyTimeShiftStatusChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1011
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_29
    return-void
.end method
