.class public final synthetic Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;

.field public final synthetic blacklist f$1:Landroid/os/connectivity/WifiActivityEnergyInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;Landroid/os/connectivity/WifiActivityEnergyInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoProxy$$ExternalSyntheticLambda0;->f$0:Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;

    iput-object p2, p0, Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoProxy$$ExternalSyntheticLambda0;->f$1:Landroid/os/connectivity/WifiActivityEnergyInfo;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoProxy$$ExternalSyntheticLambda0;->f$0:Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;

    iget-object v1, p0, Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoProxy$$ExternalSyntheticLambda0;->f$1:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoProxy;->lambda$onWifiActivityEnergyInfo$0(Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;Landroid/os/connectivity/WifiActivityEnergyInfo;)V

    return-void
.end method
