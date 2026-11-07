.class public final synthetic Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;

.field public final synthetic blacklist f$1:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$$ExternalSyntheticLambda0;->f$0:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;

    iput-object p2, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$$ExternalSyntheticLambda0;->f$1:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$$ExternalSyntheticLambda0;->f$0:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;

    iget-object v1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$$ExternalSyntheticLambda0;->f$1:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;->$r8$lambda$mGr7uJqvuQkMq3jX0ZNZde4zlgw(Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V

    return-void
.end method
