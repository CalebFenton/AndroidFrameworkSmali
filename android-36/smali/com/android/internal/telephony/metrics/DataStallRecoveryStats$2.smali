.class Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$2;
.super Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;
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
.method constructor blacklist <init>(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$2;->this$0:Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;

    invoke-direct {p0}, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onConnectivityReportAvailable(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;)V
    .registers 4

    .line 179
    invoke-virtual {p1}, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;->getAdditionalInfo()Landroid/os/PersistableBundle;

    move-result-object p1

    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$2;->this$0:Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;

    const-string v1, "networkProbesSucceeded"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->-$$Nest$fputmNetworkProbesResult(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;I)V

    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$2;->this$0:Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;

    const-string v1, "networkProbesAttempted"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->-$$Nest$fputmNetworkProbesType(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;I)V

    .line 182
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$2;->this$0:Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;

    const-string v0, "networkValidationResult"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->-$$Nest$fputmNetworkValidationResult(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;I)V

    return-void
.end method

.method public whitelist onDataStallSuspected(Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;)V
    .registers 4

    .line 187
    invoke-virtual {p1}, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->getStallDetails()Landroid/os/PersistableBundle;

    move-result-object p1

    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$2;->this$0:Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;

    const-string v1, "tcpMetricsCollectionPeriodMillis"

    .line 189
    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->-$$Nest$fputmTcpMetricsCollectionPeriodMillis(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;I)V

    .line 190
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$2;->this$0:Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;

    const-string v1, "tcpPacketFailRate"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->-$$Nest$fputmTcpPacketFailRate(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;I)V

    .line 191
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$2;->this$0:Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;

    const-string v0, "dnsConsecutiveTimeouts"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->-$$Nest$fputmDnsConsecutiveTimeouts(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;I)V

    return-void
.end method
