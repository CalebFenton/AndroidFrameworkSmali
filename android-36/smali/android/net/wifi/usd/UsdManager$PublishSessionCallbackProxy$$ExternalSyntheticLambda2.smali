.class public final synthetic Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;

.field public final synthetic blacklist f$1:Landroid/net/wifi/usd/DiscoveryResult;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;Landroid/net/wifi/usd/DiscoveryResult;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy$$ExternalSyntheticLambda2;->f$0:Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;

    iput-object p2, p0, Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy$$ExternalSyntheticLambda2;->f$1:Landroid/net/wifi/usd/DiscoveryResult;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy$$ExternalSyntheticLambda2;->f$0:Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;

    iget-object v1, p0, Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy$$ExternalSyntheticLambda2;->f$1:Landroid/net/wifi/usd/DiscoveryResult;

    invoke-static {v0, v1}, Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;->$r8$lambda$h5cEaXdupDpXA6pwGtrC6U1twFI(Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;Landroid/net/wifi/usd/DiscoveryResult;)V

    return-void
.end method
