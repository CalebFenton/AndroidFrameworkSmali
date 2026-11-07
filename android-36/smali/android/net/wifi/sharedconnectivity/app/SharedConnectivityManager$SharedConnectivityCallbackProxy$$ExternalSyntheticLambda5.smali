.class public final synthetic Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;

.field public final synthetic blacklist f$1:Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy$$ExternalSyntheticLambda5;->f$0:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;

    iput-object p2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy$$ExternalSyntheticLambda5;->f$1:Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy$$ExternalSyntheticLambda5;->f$0:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy$$ExternalSyntheticLambda5;->f$1:Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;

    invoke-static {v0, v1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->$r8$lambda$XS9V_XcBD49_tgc4wgpuQZgKKuk(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;)V

    return-void
.end method
