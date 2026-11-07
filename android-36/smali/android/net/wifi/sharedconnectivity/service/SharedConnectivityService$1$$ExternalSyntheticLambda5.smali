.class public final synthetic Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;

.field public final synthetic blacklist f$1:Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1$$ExternalSyntheticLambda5;->f$0:Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;

    iput-object p2, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1$$ExternalSyntheticLambda5;->f$1:Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1$$ExternalSyntheticLambda5;->f$0:Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1$$ExternalSyntheticLambda5;->f$1:Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    invoke-static {v0, v1}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->$r8$lambda$J45rwN2pAdFgkpvOVC9wAIf4nLE(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)V

    return-void
.end method
