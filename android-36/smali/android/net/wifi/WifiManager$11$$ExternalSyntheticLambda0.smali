.class public final synthetic Landroid/net/wifi/WifiManager$11$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Z

.field public final synthetic blacklist f$3:Landroid/net/wifi/WifiUsabilityStatsEntry;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;IZLandroid/net/wifi/WifiUsabilityStatsEntry;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiManager$11$$ExternalSyntheticLambda0;->f$0:Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;

    iput p2, p0, Landroid/net/wifi/WifiManager$11$$ExternalSyntheticLambda0;->f$1:I

    iput-boolean p3, p0, Landroid/net/wifi/WifiManager$11$$ExternalSyntheticLambda0;->f$2:Z

    iput-object p4, p0, Landroid/net/wifi/WifiManager$11$$ExternalSyntheticLambda0;->f$3:Landroid/net/wifi/WifiUsabilityStatsEntry;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/net/wifi/WifiManager$11$$ExternalSyntheticLambda0;->f$0:Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;

    iget v1, p0, Landroid/net/wifi/WifiManager$11$$ExternalSyntheticLambda0;->f$1:I

    iget-boolean v2, p0, Landroid/net/wifi/WifiManager$11$$ExternalSyntheticLambda0;->f$2:Z

    iget-object v3, p0, Landroid/net/wifi/WifiManager$11$$ExternalSyntheticLambda0;->f$3:Landroid/net/wifi/WifiUsabilityStatsEntry;

    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/WifiManager$11;->lambda$onWifiUsabilityStats$0(Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;IZLandroid/net/wifi/WifiUsabilityStatsEntry;)V

    return-void
.end method
