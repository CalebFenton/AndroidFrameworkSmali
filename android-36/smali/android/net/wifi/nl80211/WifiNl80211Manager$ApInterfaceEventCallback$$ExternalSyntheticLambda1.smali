.class public final synthetic Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;

.field public final synthetic blacklist f$1:Landroid/net/wifi/nl80211/NativeWifiClient;

.field public final synthetic blacklist f$2:Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;Landroid/net/wifi/nl80211/NativeWifiClient;Z)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback$$ExternalSyntheticLambda1;->f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;

    iput-object p2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback$$ExternalSyntheticLambda1;->f$1:Landroid/net/wifi/nl80211/NativeWifiClient;

    iput-boolean p3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback$$ExternalSyntheticLambda1;->f$2:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback$$ExternalSyntheticLambda1;->f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;

    iget-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback$$ExternalSyntheticLambda1;->f$1:Landroid/net/wifi/nl80211/NativeWifiClient;

    iget-boolean v2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback$$ExternalSyntheticLambda1;->f$2:Z

    invoke-static {v0, v1, v2}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->$r8$lambda$TWfahwuQC2coPV1D3CA68G_J67o(Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;Landroid/net/wifi/nl80211/NativeWifiClient;Z)V

    return-void
.end method
