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

.field private volatile mStopped:Z

.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 1
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    #@0
    .prologue
    .line 335
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@5
    .line 337
    const/16 v0, 0x5dc

    #@7
    new-array v0, v0, [B

    #@9
    iput-object v0, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mPacket:[B

    #@b
    .line 338
    const/4 v0, 0x0

    #@c
    iput-boolean v0, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mStopped:Z

    #@e
    .line 335
    return-void
.end method


# virtual methods
.method public halt()V
    .locals 1

    #@0
    .prologue
    .line 341
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mStopped:Z

    #@3
    .line 342
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    #@5
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap9(Landroid/net/dhcp/DhcpClient;)V

    #@8
    .line 340
    return-void
.end method

.method public run()V
    .locals 8

    #@0
    .prologue
    .line 347
    const-string/jumbo v4, "DhcpClient"

    #@3
    const-string/jumbo v5, "Receive thread started"

    #@6
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 348
    :cond_0
    :goto_0
    iget-boolean v4, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mStopped:Z

    #@b
    if-nez v4, :cond_1

    #@d
    .line 349
    const/4 v2, 0x0

    #@e
    .line 351
    .local v2, "length":I
    :try_start_0
    iget-object v4, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    #@10
    invoke-static {v4}, Landroid/net/dhcp/DhcpClient;->-get12(Landroid/net/dhcp/DhcpClient;)Ljava/io/FileDescriptor;

    #@13
    move-result-object v4

    #@14
    iget-object v5, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mPacket:[B

    #@16
    iget-object v6, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mPacket:[B

    #@18
    array-length v6, v6

    #@19
    const/4 v7, 0x0

    #@1a
    invoke-static {v4, v5, v7, v6}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    #@1d
    move-result v2

    #@1e
    .line 352
    const/4 v3, 0x0

    #@1f
    .line 353
    .local v3, "packet":Landroid/net/dhcp/DhcpPacket;
    iget-object v4, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mPacket:[B

    #@21
    const/4 v5, 0x0

    #@22
    invoke-static {v4, v2, v5}, Landroid/net/dhcp/DhcpPacket;->decodeFullPacket([BII)Landroid/net/dhcp/DhcpPacket;

    #@25
    move-result-object v3

    #@26
    .line 354
    .local v3, "packet":Landroid/net/dhcp/DhcpPacket;
    const-string/jumbo v4, "DhcpClient"

    #@29
    new-instance v5, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v6, "Received packet: "

    #@31
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v5

    #@35
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v5

    #@3d
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 355
    iget-object v4, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    #@42
    const v5, 0x30066

    #@45
    invoke-virtual {v4, v5, v3}, Landroid/net/dhcp/DhcpClient;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/net/dhcp/DhcpPacket$ParseException; {:try_start_0 .. :try_end_0} :catch_1

    #@48
    goto :goto_0

    #@49
    .line 356
    .end local v3    # "packet":Landroid/net/dhcp/DhcpPacket;
    :catch_0
    move-exception v1

    #@4a
    .line 357
    .local v1, "e":Ljava/lang/Exception;
    iget-boolean v4, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mStopped:Z

    #@4c
    if-nez v4, :cond_0

    #@4e
    .line 358
    const-string/jumbo v4, "DhcpClient"

    #@51
    const-string/jumbo v5, "Read error"

    #@54
    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@57
    .line 359
    iget-object v4, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    #@59
    invoke-static {v4}, Landroid/net/dhcp/DhcpClient;->-get9(Landroid/net/dhcp/DhcpClient;)Ljava/lang/String;

    #@5c
    move-result-object v4

    #@5d
    invoke-static {v4}, Landroid/net/metrics/DhcpErrorEvent;->logReceiveError(Ljava/lang/String;)V

    #@60
    goto :goto_0

    #@61
    .line 361
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    #@62
    .line 362
    .local v0, "e":Landroid/net/dhcp/DhcpPacket$ParseException;
    const-string/jumbo v4, "DhcpClient"

    #@65
    new-instance v5, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v6, "Can\'t parse packet: "

    #@6d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v5

    #@71
    invoke-virtual {v0}, Landroid/net/dhcp/DhcpPacket$ParseException;->getMessage()Ljava/lang/String;

    #@74
    move-result-object v6

    #@75
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v5

    #@79
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v5

    #@7d
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@80
    .line 366
    iget-object v4, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    #@82
    invoke-static {v4}, Landroid/net/dhcp/DhcpClient;->-get9(Landroid/net/dhcp/DhcpClient;)Ljava/lang/String;

    #@85
    move-result-object v4

    #@86
    iget v5, v0, Landroid/net/dhcp/DhcpPacket$ParseException;->errorCode:I

    #@88
    invoke-static {v4, v5}, Landroid/net/metrics/DhcpErrorEvent;->logParseError(Ljava/lang/String;I)V

    #@8b
    goto/16 :goto_0

    #@8d
    .line 369
    .end local v0    # "e":Landroid/net/dhcp/DhcpPacket$ParseException;
    .end local v2    # "length":I
    :cond_1
    const-string/jumbo v4, "DhcpClient"

    #@90
    const-string/jumbo v5, "Receive thread stopped"

    #@93
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@96
    .line 346
    return-void
.end method
