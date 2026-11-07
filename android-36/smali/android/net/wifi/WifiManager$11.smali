.class Landroid/net/wifi/WifiManager$11;
.super Landroid/net/wifi/IOnWifiUsabilityStatsListener$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiManager;->addOnWifiUsabilityStatsListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/wifi/WifiManager;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;


# direct methods
.method constructor blacklist <init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;)V
    .registers 4
    .param p1, "this$0"    # Landroid/net/wifi/WifiManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 9744
    iput-object p1, p0, Landroid/net/wifi/WifiManager$11;->this$0:Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Landroid/net/wifi/WifiManager$11;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/net/wifi/WifiManager$11;->val$listener:Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;

    invoke-direct {p0}, Landroid/net/wifi/IOnWifiUsabilityStatsListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onWifiUsabilityStats$0(Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;IZLandroid/net/wifi/WifiUsabilityStatsEntry;)V
    .registers 4
    .param p0, "listener"    # Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;
    .param p1, "seqNum"    # I
    .param p2, "isSameBssidAndFreq"    # Z
    .param p3, "stats"    # Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 9753
    invoke-interface {p0, p1, p2, p3}, Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;->onWifiUsabilityStats(IZLandroid/net/wifi/WifiUsabilityStatsEntry;)V

    return-void
.end method


# virtual methods
.method public blacklist onWifiUsabilityStats(IZLandroid/net/wifi/WifiUsabilityStatsEntry;)V
    .registers 7
    .param p1, "seqNum"    # I
    .param p2, "isSameBssidAndFreq"    # Z
    .param p3, "stats"    # Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 9748
    iget-object v0, p0, Landroid/net/wifi/WifiManager$11;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 9749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnWifiUsabilityStatsListener: onWifiUsabilityStats: seqNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9752
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9753
    iget-object v0, p0, Landroid/net/wifi/WifiManager$11;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/net/wifi/WifiManager$11;->val$listener:Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;

    new-instance v2, Landroid/net/wifi/WifiManager$11$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1, p2, p3}, Landroid/net/wifi/WifiManager$11$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;IZLandroid/net/wifi/WifiUsabilityStatsEntry;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9755
    return-void
.end method
