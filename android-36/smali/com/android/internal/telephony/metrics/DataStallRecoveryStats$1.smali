.class Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$1;
.super Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;
.source "DataStallRecoveryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/data/DataNetworkController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;Ljava/util/concurrent/Executor;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$1;->this$0:Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onConnectedInternetDataNetworksChanged(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/data/DataNetwork;",
            ">;)V"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$1;->this$0:Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->-$$Nest$fputmIfaceName(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;Ljava/lang/String;)V

    .line 160
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/data/DataNetwork;

    .line 161
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$1;->this$0:Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->-$$Nest$fputmIfaceName(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method public blacklist onPhysicalLinkStatusChanged(I)V
    .registers 2

    .line 168
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$1;->this$0:Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->-$$Nest$fputmInternetLinkStatus(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;I)V

    return-void
.end method
