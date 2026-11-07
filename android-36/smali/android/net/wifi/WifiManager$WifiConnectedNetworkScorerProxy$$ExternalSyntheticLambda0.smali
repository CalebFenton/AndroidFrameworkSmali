.class public final synthetic Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;

.field public final synthetic blacklist f$1:Landroid/net/wifi/WifiConnectedSessionInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;Landroid/net/wifi/WifiConnectedSessionInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy$$ExternalSyntheticLambda0;->f$0:Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;

    iput-object p2, p0, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy$$ExternalSyntheticLambda0;->f$1:Landroid/net/wifi/WifiConnectedSessionInfo;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy$$ExternalSyntheticLambda0;->f$0:Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;

    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy$$ExternalSyntheticLambda0;->f$1:Landroid/net/wifi/WifiConnectedSessionInfo;

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;->$r8$lambda$Qg5KbEBeGBL5dAoMrmyFmoBJmEE(Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;Landroid/net/wifi/WifiConnectedSessionInfo;)V

    return-void
.end method
