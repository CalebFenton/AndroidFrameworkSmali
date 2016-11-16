.class Landroid/net/ConnectivityManager$PacketKeepalive$1;
.super Landroid/os/Handler;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ConnectivityManager$PacketKeepalive;-><init>(Landroid/net/ConnectivityManager;Landroid/net/Network;Landroid/net/ConnectivityManager$PacketKeepaliveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/ConnectivityManager$PacketKeepalive;


# direct methods
.method constructor <init>(Landroid/net/ConnectivityManager$PacketKeepalive;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Landroid/net/ConnectivityManager$PacketKeepalive;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 1537
    iput-object p1, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    #@2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1540
    iget v2, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v2, :pswitch_data_0

    #@5
    .line 1562
    const-string/jumbo v2, "PacketKeepalive"

    #@8
    new-instance v3, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v4, "Unhandled message "

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    iget v4, p1, Landroid/os/Message;->what:I

    #@16
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 1539
    :goto_0
    return-void

    #@26
    .line 1542
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg2:I

    #@28
    .line 1544
    .local v1, "error":I
    if-nez v1, :cond_1

    #@2a
    .line 1545
    :try_start_0
    iget-object v2, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    #@2c
    invoke-static {v2}, Landroid/net/ConnectivityManager$PacketKeepalive;->-get2(Landroid/net/ConnectivityManager$PacketKeepalive;)Ljava/lang/Integer;

    #@2f
    move-result-object v2

    #@30
    if-nez v2, :cond_0

    #@32
    .line 1546
    iget-object v2, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    #@34
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@36
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@39
    move-result-object v3

    #@3a
    invoke-static {v2, v3}, Landroid/net/ConnectivityManager$PacketKeepalive;->-set0(Landroid/net/ConnectivityManager$PacketKeepalive;Ljava/lang/Integer;)Ljava/lang/Integer;

    #@3d
    .line 1547
    iget-object v2, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    #@3f
    invoke-static {v2}, Landroid/net/ConnectivityManager$PacketKeepalive;->-get0(Landroid/net/ConnectivityManager$PacketKeepalive;)Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v2}, Landroid/net/ConnectivityManager$PacketKeepaliveCallback;->onStarted()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@46
    goto :goto_0

    #@47
    .line 1557
    :catch_0
    move-exception v0

    #@48
    .line 1558
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "PacketKeepalive"

    #@4b
    new-instance v3, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v4, "Exception in keepalive callback("

    #@53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    const-string/jumbo v4, ")"

    #@5e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v3

    #@62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v3

    #@66
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@69
    goto :goto_0

    #@6a
    .line 1549
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    #@6c
    const/4 v3, 0x0

    #@6d
    invoke-static {v2, v3}, Landroid/net/ConnectivityManager$PacketKeepalive;->-set0(Landroid/net/ConnectivityManager$PacketKeepalive;Ljava/lang/Integer;)Ljava/lang/Integer;

    #@70
    .line 1550
    iget-object v2, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    #@72
    invoke-virtual {v2}, Landroid/net/ConnectivityManager$PacketKeepalive;->stopLooper()V

    #@75
    .line 1551
    iget-object v2, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    #@77
    invoke-static {v2}, Landroid/net/ConnectivityManager$PacketKeepalive;->-get0(Landroid/net/ConnectivityManager$PacketKeepalive;)Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    #@7a
    move-result-object v2

    #@7b
    invoke-virtual {v2}, Landroid/net/ConnectivityManager$PacketKeepaliveCallback;->onStopped()V

    #@7e
    goto :goto_0

    #@7f
    .line 1554
    :cond_1
    iget-object v2, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    #@81
    invoke-virtual {v2}, Landroid/net/ConnectivityManager$PacketKeepalive;->stopLooper()V

    #@84
    .line 1555
    iget-object v2, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    #@86
    invoke-static {v2}, Landroid/net/ConnectivityManager$PacketKeepalive;->-get0(Landroid/net/ConnectivityManager$PacketKeepalive;)Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    #@89
    move-result-object v2

    #@8a
    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager$PacketKeepaliveCallback;->onError(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@8d
    goto :goto_0

    #@8e
    .line 1540
    :pswitch_data_0
    .packed-switch 0x8100d
        :pswitch_0
    .end packed-switch
.end method
