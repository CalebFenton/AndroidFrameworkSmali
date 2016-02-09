.class abstract Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;
.super Landroid/net/dhcp/DhcpClient$LoggingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "PacketRetransmittingState"
.end annotation


# instance fields
.field protected mTimeout:I

.field private mTimer:I

.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 1
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    #@0
    .prologue
    .line 663
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2
    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    #@5
    .line 666
    const/4 v0, 0x0

    #@6
    iput v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimeout:I

    #@8
    .line 663
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    #@0
    .prologue
    .line 670
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$LoggingState;->enter()V

    #@3
    .line 671
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->initTimer()V

    #@6
    .line 672
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->maybeInitTimeout()V

    #@9
    .line 673
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@b
    const v1, 0x30065

    #@e
    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpClient;->sendMessage(I)V

    #@11
    .line 669
    return-void
.end method

.method public exit()V
    .locals 2

    #@0
    .prologue
    .line 696
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get0(Landroid/net/dhcp/DhcpClient;)Landroid/app/AlarmManager;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@8
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get7(Landroid/net/dhcp/DhcpClient;)Landroid/app/PendingIntent;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@f
    .line 697
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@11
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get0(Landroid/net/dhcp/DhcpClient;)Landroid/app/AlarmManager;

    #@14
    move-result-object v0

    #@15
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@17
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get14(Landroid/net/dhcp/DhcpClient;)Landroid/app/PendingIntent;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@1e
    .line 695
    return-void
.end method

.method protected initTimer()V
    .locals 1

    #@0
    .prologue
    .line 705
    const/16 v0, 0x7d0

    #@2
    iput v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    #@4
    .line 704
    return-void
.end method

.method protected jitterTimer(I)I
    .locals 4
    .param p1, "baseTimer"    # I

    #@0
    .prologue
    .line 709
    div-int/lit8 v1, p1, 0xa

    #@2
    .line 710
    .local v1, "maxJitter":I
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@4
    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->-get10(Landroid/net/dhcp/DhcpClient;)Ljava/util/Random;

    #@7
    move-result-object v2

    #@8
    mul-int/lit8 v3, v1, 0x2

    #@a
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    #@d
    move-result v2

    #@e
    sub-int v0, v2, v1

    #@10
    .line 711
    .local v0, "jitter":I
    add-int v2, p1, v0

    #@12
    return v2
.end method

.method protected maybeInitTimeout()V
    .locals 6

    #@0
    .prologue
    .line 727
    iget v2, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimeout:I

    #@2
    if-lez v2, :cond_0

    #@4
    .line 728
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7
    move-result-wide v2

    #@8
    iget v4, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimeout:I

    #@a
    int-to-long v4, v4

    #@b
    add-long v0, v2, v4

    #@d
    .line 729
    .local v0, "alarmTime":J
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@f
    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->-get0(Landroid/net/dhcp/DhcpClient;)Landroid/app/AlarmManager;

    #@12
    move-result-object v2

    #@13
    .line 730
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@15
    invoke-static {v3}, Landroid/net/dhcp/DhcpClient;->-get14(Landroid/net/dhcp/DhcpClient;)Landroid/app/PendingIntent;

    #@18
    move-result-object v3

    #@19
    const/4 v4, 0x2

    #@1a
    .line 729
    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    #@1d
    .line 726
    .end local v0    # "alarmTime":J
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 678
    invoke-super {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;->processMessage(Landroid/os/Message;)Z

    #@4
    .line 679
    iget v0, p1, Landroid/os/Message;->what:I

    #@6
    packed-switch v0, :pswitch_data_0

    #@9
    .line 691
    const/4 v0, 0x0

    #@a
    return v0

    #@b
    .line 681
    :pswitch_0
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->sendPacket()Z

    #@e
    .line 682
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->scheduleKick()V

    #@11
    .line 683
    return v1

    #@12
    .line 685
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@14
    check-cast v0, Landroid/net/dhcp/DhcpPacket;

    #@16
    invoke-virtual {p0, v0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->receivePacket(Landroid/net/dhcp/DhcpPacket;)V

    #@19
    .line 686
    return v1

    #@1a
    .line 688
    :pswitch_2
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->timeout()V

    #@1d
    .line 689
    return v1

    #@1e
    .line 679
    :pswitch_data_0
    .packed-switch 0x30065
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected abstract receivePacket(Landroid/net/dhcp/DhcpPacket;)V
.end method

.method protected scheduleKick()V
    .locals 10

    #@0
    .prologue
    const v9, 0x1f400

    #@3
    .line 715
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@6
    move-result-wide v2

    #@7
    .line 716
    .local v2, "now":J
    iget v6, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    #@9
    invoke-virtual {p0, v6}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->jitterTimer(I)I

    #@c
    move-result v6

    #@d
    int-to-long v4, v6

    #@e
    .line 717
    .local v4, "timeout":J
    add-long v0, v2, v4

    #@10
    .line 718
    .local v0, "alarmTime":J
    iget-object v6, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@12
    invoke-static {v6}, Landroid/net/dhcp/DhcpClient;->-get0(Landroid/net/dhcp/DhcpClient;)Landroid/app/AlarmManager;

    #@15
    move-result-object v6

    #@16
    iget-object v7, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@18
    invoke-static {v7}, Landroid/net/dhcp/DhcpClient;->-get7(Landroid/net/dhcp/DhcpClient;)Landroid/app/PendingIntent;

    #@1b
    move-result-object v7

    #@1c
    invoke-virtual {v6, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@1f
    .line 719
    iget-object v6, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@21
    invoke-static {v6}, Landroid/net/dhcp/DhcpClient;->-get0(Landroid/net/dhcp/DhcpClient;)Landroid/app/AlarmManager;

    #@24
    move-result-object v6

    #@25
    iget-object v7, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@27
    invoke-static {v7}, Landroid/net/dhcp/DhcpClient;->-get7(Landroid/net/dhcp/DhcpClient;)Landroid/app/PendingIntent;

    #@2a
    move-result-object v7

    #@2b
    const/4 v8, 0x2

    #@2c
    invoke-virtual {v6, v8, v0, v1, v7}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    #@2f
    .line 720
    iget v6, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    #@31
    mul-int/lit8 v6, v6, 0x2

    #@33
    iput v6, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    #@35
    .line 721
    iget v6, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    #@37
    if-le v6, v9, :cond_0

    #@39
    .line 722
    iput v9, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    #@3b
    .line 714
    :cond_0
    return-void
.end method

.method protected abstract sendPacket()Z
.end method

.method protected timeout()V
    .locals 0

    #@0
    .prologue
    .line 702
    return-void
.end method
