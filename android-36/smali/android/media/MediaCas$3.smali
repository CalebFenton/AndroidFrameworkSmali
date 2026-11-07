.class Landroid/media/MediaCas$3;
.super Landroid/hardware/cas/ICasListener$Stub;
.source "MediaCas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaCas;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaCas;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/MediaCas;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 427
    iput-object p1, p0, Landroid/media/MediaCas$3;->this$0:Landroid/media/MediaCas;

    invoke-direct {p0}, Landroid/hardware/cas/ICasListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 464
    :try_start_1
    const-string v0, "bc51d8d70a55ec4723d3f73d0acf7003306bf69f"
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 464
    .end local p0    # "this":Landroid/media/MediaCas$3;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 469
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist onEvent(II[B)V
    .registers 7
    .param p1, "event"    # I
    .param p2, "arg"    # I
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 430
    iget-object v0, p0, Landroid/media/MediaCas$3;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmEventHandler(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 431
    iget-object v0, p0, Landroid/media/MediaCas$3;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmEventHandler(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$3;->this$0:Landroid/media/MediaCas;

    invoke-static {v1}, Landroid/media/MediaCas;->-$$Nest$fgetmEventHandler(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;

    move-result-object v1

    .line 432
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/media/MediaCas$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 431
    invoke-virtual {v0, v1}, Landroid/media/MediaCas$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 435
    :cond_1c
    return-void
.end method

.method public blacklist onSessionEvent([BII[B)V
    .registers 8
    .param p1, "sessionId"    # [B
    .param p2, "event"    # I
    .param p3, "arg"    # I
    .param p4, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 440
    iget-object v0, p0, Landroid/media/MediaCas$3;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmEventHandler(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 441
    iget-object v0, p0, Landroid/media/MediaCas$3;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmEventHandler(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCas$EventHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 442
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 443
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 444
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 445
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 446
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "sessionId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 447
    const-string v2, "data"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 448
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 449
    iget-object v2, p0, Landroid/media/MediaCas$3;->this$0:Landroid/media/MediaCas;

    invoke-static {v2}, Landroid/media/MediaCas;->-$$Nest$fgetmEventHandler(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/media/MediaCas$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 451
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_34
    return-void
.end method

.method public blacklist onStatusUpdate(BI)V
    .registers 6
    .param p1, "status"    # B
    .param p2, "arg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 455
    iget-object v0, p0, Landroid/media/MediaCas$3;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmEventHandler(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 456
    iget-object v0, p0, Landroid/media/MediaCas$3;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmEventHandler(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$3;->this$0:Landroid/media/MediaCas;

    invoke-static {v1}, Landroid/media/MediaCas;->-$$Nest$fgetmEventHandler(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;

    move-result-object v1

    .line 457
    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1, p2}, Landroid/media/MediaCas$EventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 456
    invoke-virtual {v0, v1}, Landroid/media/MediaCas$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 460
    :cond_1c
    return-void
.end method
