.class abstract Landroid/net/dhcp/DhcpClient$LoggingState;
.super Lcom/android/internal/util/State;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "LoggingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    #@0
    .prologue
    .line 459
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$LoggingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method

.method private messageName(I)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # I

    #@0
    .prologue
    .line 465
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 487
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 467
    :sswitch_0
    const-string/jumbo v0, "CMD_START_DHCP"

    #@b
    return-object v0

    #@c
    .line 469
    :sswitch_1
    const-string/jumbo v0, "CMD_STOP_DHCP"

    #@f
    return-object v0

    #@10
    .line 471
    :sswitch_2
    const-string/jumbo v0, "CMD_RENEW_DHCP"

    #@13
    return-object v0

    #@14
    .line 473
    :sswitch_3
    const-string/jumbo v0, "CMD_PRE_DHCP_ACTION"

    #@17
    return-object v0

    #@18
    .line 475
    :sswitch_4
    const-string/jumbo v0, "CMD_PRE_DHCP_ACTION_COMPLETE"

    #@1b
    return-object v0

    #@1c
    .line 477
    :sswitch_5
    const-string/jumbo v0, "CMD_POST_DHCP_ACTION"

    #@1f
    return-object v0

    #@20
    .line 479
    :sswitch_6
    const-string/jumbo v0, "CMD_KICK"

    #@23
    return-object v0

    #@24
    .line 481
    :sswitch_7
    const-string/jumbo v0, "CMD_RECEIVED_PACKET"

    #@27
    return-object v0

    #@28
    .line 483
    :sswitch_8
    const-string/jumbo v0, "CMD_TIMEOUT"

    #@2b
    return-object v0

    #@2c
    .line 485
    :sswitch_9
    const-string/jumbo v0, "CMD_ONESHOT_TIMEOUT"

    #@2f
    return-object v0

    #@30
    .line 465
    :sswitch_data_0
    .sparse-switch
        0x30001 -> :sswitch_0
        0x30002 -> :sswitch_1
        0x30003 -> :sswitch_2
        0x30004 -> :sswitch_3
        0x30005 -> :sswitch_5
        0x30007 -> :sswitch_4
        0x30065 -> :sswitch_6
        0x30066 -> :sswitch_7
        0x30067 -> :sswitch_8
        0x30068 -> :sswitch_9
    .end sparse-switch
.end method

.method private messageToString(Landroid/os/Message;)Ljava/lang/String;
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 492
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v2

    #@4
    .line 493
    .local v2, "now":J
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    const-string/jumbo v1, " "

    #@9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@c
    .line 494
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    #@f
    move-result-wide v4

    #@10
    sub-long/2addr v4, v2

    #@11
    invoke-static {v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@14
    .line 495
    const-string/jumbo v1, " "

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    iget v4, p1, Landroid/os/Message;->what:I

    #@1d
    invoke-direct {p0, v4}, Landroid/net/dhcp/DhcpClient$LoggingState;->messageName(I)Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 496
    const-string/jumbo v4, " "

    #@28
    .line 495
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    .line 496
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@2e
    .line 495
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    .line 497
    const-string/jumbo v4, " "

    #@35
    .line 495
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    .line 497
    iget v4, p1, Landroid/os/Message;->arg2:I

    #@3b
    .line 495
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    .line 498
    const-string/jumbo v4, " "

    #@42
    .line 495
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    .line 498
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@48
    .line 495
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    .line 499
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v1

    #@4f
    return-object v1
.end method


# virtual methods
.method public enter()V
    .locals 0

    #@0
    .prologue
    .line 460
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 507
    const/4 v0, 0x0

    #@1
    return v0
.end method
