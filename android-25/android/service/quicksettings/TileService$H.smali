.class Landroid/service/quicksettings/TileService$H;
.super Landroid/os/Handler;
.source "TileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quicksettings/TileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field private static final MSG_START_LISTENING:I = 0x1

.field private static final MSG_START_SUCCESS:I = 0x7

.field private static final MSG_STOP_LISTENING:I = 0x2

.field private static final MSG_TILE_ADDED:I = 0x3

.field private static final MSG_TILE_CLICKED:I = 0x5

.field private static final MSG_TILE_REMOVED:I = 0x4

.field private static final MSG_UNLOCK_COMPLETE:I = 0x6


# instance fields
.field final synthetic this$0:Landroid/service/quicksettings/TileService;


# direct methods
.method public constructor <init>(Landroid/service/quicksettings/TileService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/quicksettings/TileService;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 372
    iput-object p1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    #@2
    .line 373
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 372
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 378
    iget v1, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v1, :pswitch_data_0

    #@6
    .line 377
    :cond_0
    :goto_0
    return-void

    #@7
    .line 380
    :pswitch_0
    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    #@9
    invoke-virtual {v1}, Landroid/service/quicksettings/TileService;->onTileAdded()V

    #@c
    goto :goto_0

    #@d
    .line 383
    :pswitch_1
    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    #@f
    invoke-static {v1}, Landroid/service/quicksettings/TileService;->-get1(Landroid/service/quicksettings/TileService;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 384
    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    #@17
    invoke-static {v1, v2}, Landroid/service/quicksettings/TileService;->-set0(Landroid/service/quicksettings/TileService;Z)Z

    #@1a
    .line 385
    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    #@1c
    invoke-virtual {v1}, Landroid/service/quicksettings/TileService;->onStopListening()V

    #@1f
    .line 387
    :cond_1
    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    #@21
    invoke-virtual {v1}, Landroid/service/quicksettings/TileService;->onTileRemoved()V

    #@24
    goto :goto_0

    #@25
    .line 390
    :pswitch_2
    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    #@27
    invoke-static {v1}, Landroid/service/quicksettings/TileService;->-get1(Landroid/service/quicksettings/TileService;)Z

    #@2a
    move-result v1

    #@2b
    if-eqz v1, :cond_0

    #@2d
    .line 391
    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    #@2f
    invoke-static {v1, v2}, Landroid/service/quicksettings/TileService;->-set0(Landroid/service/quicksettings/TileService;Z)Z

    #@32
    .line 392
    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    #@34
    invoke-virtual {v1}, Landroid/service/quicksettings/TileService;->onStopListening()V

    #@37
    goto :goto_0

    #@38
    .line 396
    :pswitch_3
    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    #@3a
    invoke-static {v1}, Landroid/service/quicksettings/TileService;->-get1(Landroid/service/quicksettings/TileService;)Z

    #@3d
    move-result v1

    #@3e
    if-nez v1, :cond_0

    #@40
    .line 397
    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    #@42
    const/4 v2, 0x1

    #@43
    invoke-static {v1, v2}, Landroid/service/quicksettings/TileService;->-set0(Landroid/service/quicksettings/TileService;Z)Z

    #@46
    .line 398
    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    #@48
    invoke-virtual {v1}, Landroid/service/quicksettings/TileService;->onStartListening()V

    #@4b
    goto :goto_0

    #@4c
    .line 402
    :pswitch_4
    iget-object v2, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    #@4e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@50
    check-cast v1, Landroid/os/IBinder;

    #@52
    invoke-static {v2, v1}, Landroid/service/quicksettings/TileService;->-set1(Landroid/service/quicksettings/TileService;Landroid/os/IBinder;)Landroid/os/IBinder;

    #@55
    .line 403
    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    #@57
    invoke-virtual {v1}, Landroid/service/quicksettings/TileService;->onClick()V

    #@5a
    goto :goto_0

    #@5b
    .line 406
    :pswitch_5
    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    #@5d
    invoke-static {v1}, Landroid/service/quicksettings/TileService;->-get4(Landroid/service/quicksettings/TileService;)Ljava/lang/Runnable;

    #@60
    move-result-object v1

    #@61
    if-eqz v1, :cond_0

    #@63
    .line 407
    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    #@65
    invoke-static {v1}, Landroid/service/quicksettings/TileService;->-get4(Landroid/service/quicksettings/TileService;)Ljava/lang/Runnable;

    #@68
    move-result-object v1

    #@69
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    #@6c
    goto :goto_0

    #@6d
    .line 412
    :pswitch_6
    :try_start_0
    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    #@6f
    invoke-static {v1}, Landroid/service/quicksettings/TileService;->-get2(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/IQSService;

    #@72
    move-result-object v1

    #@73
    iget-object v2, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    #@75
    invoke-static {v2}, Landroid/service/quicksettings/TileService;->-get3(Landroid/service/quicksettings/TileService;)Landroid/os/IBinder;

    #@78
    move-result-object v2

    #@79
    invoke-interface {v1, v2}, Landroid/service/quicksettings/IQSService;->onStartSuccessful(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7c
    goto :goto_0

    #@7d
    .line 413
    :catch_0
    move-exception v0

    #@7e
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    #@7f
    .line 378
    nop

    #@80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
