.class public final synthetic Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;

.field public final synthetic blacklist f$1:Landroid/net/wifi/SoftApConfiguration;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;Landroid/net/wifi/SoftApConfiguration;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy$$ExternalSyntheticLambda1;->f$0:Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;

    iput-object p2, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy$$ExternalSyntheticLambda1;->f$1:Landroid/net/wifi/SoftApConfiguration;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy$$ExternalSyntheticLambda1;->f$0:Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;

    iget-object v1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy$$ExternalSyntheticLambda1;->f$1:Landroid/net/wifi/SoftApConfiguration;

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;->$r8$lambda$c-DuilTtyL6F_d6dMn-xFiSEP0c(Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;Landroid/net/wifi/SoftApConfiguration;)V

    return-void
.end method
