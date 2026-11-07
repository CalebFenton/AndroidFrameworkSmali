.class public Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;
.super Landroid/net/netstats/provider/NetworkStatsProvider;
.source "ImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VtDataUsageProvider"
.end annotation


# instance fields
.field private blacklist mIfaceSnapshot:Landroid/net/NetworkStats;

.field private blacklist mToken:I

.field private blacklist mUidSnapshot:Landroid/net/NetworkStats;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 540
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-direct {p0}, Landroid/net/netstats/provider/NetworkStatsProvider;-><init>()V

    const/4 p1, 0x0

    .line 541
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;->mToken:I

    .line 542
    new-instance v0, Landroid/net/NetworkStats;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p1}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;->mIfaceSnapshot:Landroid/net/NetworkStats;

    .line 543
    new-instance v0, Landroid/net/NetworkStats;

    invoke-direct {v0, v1, v2, p1}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;->mUidSnapshot:Landroid/net/NetworkStats;

    return-void
.end method


# virtual methods
.method public whitelist onRequestStatsUpdate(I)V
    .registers 6

    .line 549
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_29

    .line 550
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmConnections(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_15
    :goto_15
    if-ge v2, v1, :cond_29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 551
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 553
    invoke-virtual {v3}, Landroid/telecom/Connection$VideoProvider;->onRequestConnectionDataUsage()V

    goto :goto_15

    .line 558
    :cond_29
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmVtDataUsageSnapshot(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/net/NetworkStats;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;->mIfaceSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0

    .line 559
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmVtDataUsageUidSnapshot(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/net/NetworkStats;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;->mUidSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v1

    .line 560
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmVtDataUsageProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;->mToken:I

    invoke-virtual {v2, v3, v0, v1}, Landroid/net/netstats/provider/NetworkStatsProvider;->notifyStatsUpdated(ILandroid/net/NetworkStats;Landroid/net/NetworkStats;)V

    .line 561
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;->mIfaceSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;->mIfaceSnapshot:Landroid/net/NetworkStats;

    .line 562
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;->mUidSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;->mUidSnapshot:Landroid/net/NetworkStats;

    .line 563
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;->mToken:I

    return-void
.end method

.method public whitelist onSetAlert(J)V
    .registers 3

    .line 0
    return-void
.end method

.method public whitelist onSetLimit(Ljava/lang/String;J)V
    .registers 4

    .line 0
    return-void
.end method
