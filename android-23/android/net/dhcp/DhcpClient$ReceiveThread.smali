.class Landroid/net/dhcp/DhcpClient$ReceiveThread;
.super Ljava/lang/Thread;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReceiveThread"
.end annotation


# instance fields
.field private final mPacket:[B

.field private stopped:Z

.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 1
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    #@0
    .prologue
    .line 333
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@5
    .line 335
    const/16 v0, 0x5dc

    #@7
    new-array v0, v0, [B

    #@9
    iput-object v0, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mPacket:[B

    #@b
    .line 336
    const/4 v0, 0x0

    #@c
    iput-boolean v0, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->stopped:Z

    #@e
    .line 333
    return-void
.end method


# virtual methods
.method public halt()V
    .locals 1

    #@0
    .prologue
    .line 339
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->stopped:Z

    #@3
    .line 340
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    #@5
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap7(Landroid/net/dhcp/DhcpClient;)V

    #@8
    .line 338
    return-void
.end method

.method public run()V
    .locals 7

    #@0
    .prologue
    .line 345
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2
    const-string/jumbo v4, "Receive thread started"

    #@5
    invoke-static {v3, v4}, Landroid/net/dhcp/DhcpClient;->-wrap8(Landroid/net/dhcp/DhcpClient;Ljava/lang/String;)V

    #@8
    .line 346
    :cond_0
    :goto_0
    iget-boolean v3, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->stopped:Z

    #@a
    if-nez v3, :cond_2

    #@c
    .line 348
    :try_start_0
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    #@e
    invoke-static {v3}, Landroid/net/dhcp/DhcpClient;->-get9(Landroid/net/dhcp/DhcpClient;)Ljava/io/FileDescriptor;

    #@11
    move-result-object v3

    #@12
    iget-object v4, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mPacket:[B

    #@14
    iget-object v5, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mPacket:[B

    #@16
    array-length v5, v5

    #@17
    const/4 v6, 0x0

    #@18
    invoke-static {v3, v4, v6, v5}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    #@1b
    move-result v1

    #@1c
    .line 349
    .local v1, "length":I
    const/4 v2, 0x0

    #@1d
    .line 350
    .local v2, "packet":Landroid/net/dhcp/DhcpPacket;
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mPacket:[B

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-static {v3, v1, v4}, Landroid/net/dhcp/DhcpPacket;->decodeFullPacket([BII)Landroid/net/dhcp/DhcpPacket;

    #@23
    move-result-object v2

    #@24
    .line 351
    .local v2, "packet":Landroid/net/dhcp/DhcpPacket;
    if-eqz v2, :cond_1

    #@26
    .line 352
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    #@28
    new-instance v4, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v5, "Received packet: "

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    invoke-static {v3, v4}, Landroid/net/dhcp/DhcpClient;->-wrap8(Landroid/net/dhcp/DhcpClient;Ljava/lang/String;)V

    #@3f
    .line 353
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    #@41
    const v4, 0x30066

    #@44
    invoke-virtual {v3, v4, v2}, Landroid/net/dhcp/DhcpClient;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@47
    goto :goto_0

    #@48
    .line 358
    .end local v1    # "length":I
    .end local v2    # "packet":Landroid/net/dhcp/DhcpPacket;
    :catch_0
    move-exception v0

    #@49
    .line 359
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v3, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->stopped:Z

    #@4b
    if-nez v3, :cond_0

    #@4d
    .line 360
    const-string/jumbo v3, "DhcpClient"

    #@50
    const-string/jumbo v4, "Read error"

    #@53
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@56
    goto :goto_0

    #@57
    .line 355
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "length":I
    .restart local v2    # "packet":Landroid/net/dhcp/DhcpPacket;
    :cond_1
    :try_start_1
    const-string/jumbo v3, "DhcpClient"

    #@5a
    .line 356
    new-instance v4, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v5, "Can\'t parse packet"

    #@62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v4

    #@66
    iget-object v5, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mPacket:[B

    #@68
    const/4 v6, 0x0

    #@69
    invoke-static {v5, v6, v1}, Lcom/android/internal/util/HexDump;->dumpHexString([BII)Ljava/lang/String;

    #@6c
    move-result-object v5

    #@6d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v4

    #@71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v4

    #@75
    .line 355
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    #@78
    goto :goto_0

    #@79
    .line 364
    .end local v1    # "length":I
    .end local v2    # "packet":Landroid/net/dhcp/DhcpPacket;
    :cond_2
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    #@7b
    const-string/jumbo v4, "Receive thread stopped"

    #@7e
    invoke-static {v3, v4}, Landroid/net/dhcp/DhcpClient;->-wrap8(Landroid/net/dhcp/DhcpClient;Ljava/lang/String;)V

    #@81
    .line 344
    return-void
.end method
