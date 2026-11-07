.class public final synthetic Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;

.field public final synthetic blacklist f$1:Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy$$ExternalSyntheticLambda0;->f$0:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;

    iput-object p2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy$$ExternalSyntheticLambda0;->f$1:Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy$$ExternalSyntheticLambda0;->f$0:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy$$ExternalSyntheticLambda0;->f$1:Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;

    invoke-static {v0, v1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->$r8$lambda$gzbM9Bpa5g-uiod0FCrXhSa9cUo(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;)V

    return-void
.end method
