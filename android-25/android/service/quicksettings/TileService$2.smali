.class Landroid/service/quicksettings/TileService$2;
.super Landroid/service/quicksettings/IQSTileService$Stub;
.source "TileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/quicksettings/TileService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/quicksettings/TileService;


# direct methods
.method constructor <init>(Landroid/service/quicksettings/TileService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/quicksettings/TileService;

    #@0
    .prologue
    .line 330
    iput-object p1, p0, Landroid/service/quicksettings/TileService$2;->this$0:Landroid/service/quicksettings/TileService;

    #@2
    invoke-direct {p0}, Landroid/service/quicksettings/IQSTileService$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "wtoken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 353
    iget-object v0, p0, Landroid/service/quicksettings/TileService$2;->this$0:Landroid/service/quicksettings/TileService;

    #@2
    invoke-static {v0}, Landroid/service/quicksettings/TileService;->-get0(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/TileService$H;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x5

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 352
    return-void
.end method

.method public onStartListening()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 348
    iget-object v0, p0, Landroid/service/quicksettings/TileService$2;->this$0:Landroid/service/quicksettings/TileService;

    #@2
    invoke-static {v0}, Landroid/service/quicksettings/TileService;->-get0(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/TileService$H;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x1

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@a
    .line 347
    return-void
.end method

.method public onStopListening()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 343
    iget-object v0, p0, Landroid/service/quicksettings/TileService$2;->this$0:Landroid/service/quicksettings/TileService;

    #@2
    invoke-static {v0}, Landroid/service/quicksettings/TileService;->-get0(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/TileService$H;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x2

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@a
    .line 342
    return-void
.end method

.method public onTileAdded()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 338
    iget-object v0, p0, Landroid/service/quicksettings/TileService$2;->this$0:Landroid/service/quicksettings/TileService;

    #@2
    invoke-static {v0}, Landroid/service/quicksettings/TileService;->-get0(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/TileService$H;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x3

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@a
    .line 337
    return-void
.end method

.method public onTileRemoved()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 333
    iget-object v0, p0, Landroid/service/quicksettings/TileService$2;->this$0:Landroid/service/quicksettings/TileService;

    #@2
    invoke-static {v0}, Landroid/service/quicksettings/TileService;->-get0(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/TileService$H;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x4

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@a
    .line 332
    return-void
.end method

.method public onUnlockComplete()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 358
    iget-object v0, p0, Landroid/service/quicksettings/TileService$2;->this$0:Landroid/service/quicksettings/TileService;

    #@2
    invoke-static {v0}, Landroid/service/quicksettings/TileService;->-get0(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/TileService$H;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x6

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@a
    .line 357
    return-void
.end method
