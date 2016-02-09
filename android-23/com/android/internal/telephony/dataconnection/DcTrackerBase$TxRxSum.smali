.class public Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;
.super Ljava/lang/Object;
.source "DcTrackerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TxRxSum"
.end annotation


# instance fields
.field public rxPkts:J

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

.field public txPkts:J


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@0
    .prologue
    .line 476
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 477
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->reset()V

    #@8
    .line 476
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .param p2, "txPkts"    # J
    .param p4, "rxPkts"    # J

    #@0
    .prologue
    .line 480
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 481
    iput-wide p2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    #@7
    .line 482
    iput-wide p4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    #@9
    .line 480
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .param p2, "sum"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    #@0
    .prologue
    .line 485
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 486
    iget-wide v0, p2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    #@7
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    #@9
    .line 487
    iget-wide v0, p2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    #@b
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    #@d
    .line 485
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    #@0
    .prologue
    const-wide/16 v0, -0x1

    #@2
    .line 491
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    #@4
    .line 492
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    #@6
    .line 490
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "{txSum="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    #@e
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " rxSum="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    #@1b
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, "}"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method

.method public updateTxRxSum()V
    .locals 2

    #@0
    .prologue
    .line 501
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTcpTxPackets()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    #@6
    .line 502
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTcpRxPackets()J

    #@9
    move-result-wide v0

    #@a
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    #@c
    .line 500
    return-void
.end method
