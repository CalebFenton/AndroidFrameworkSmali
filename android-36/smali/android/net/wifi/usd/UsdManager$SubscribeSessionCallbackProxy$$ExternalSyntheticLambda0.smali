.class public final synthetic Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;

.field public final synthetic blacklist f$1:Landroid/net/wifi/usd/DiscoveryResult;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;Landroid/net/wifi/usd/DiscoveryResult;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy$$ExternalSyntheticLambda0;->f$0:Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;

    iput-object p2, p0, Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy$$ExternalSyntheticLambda0;->f$1:Landroid/net/wifi/usd/DiscoveryResult;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy$$ExternalSyntheticLambda0;->f$0:Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;

    iget-object v1, p0, Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy$$ExternalSyntheticLambda0;->f$1:Landroid/net/wifi/usd/DiscoveryResult;

    invoke-static {v0, v1}, Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;->$r8$lambda$OHeUN2EZdTGbzPrv3i_IOJx05lk(Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;Landroid/net/wifi/usd/DiscoveryResult;)V

    return-void
.end method
