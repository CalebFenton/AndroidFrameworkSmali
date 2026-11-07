.class public final synthetic Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;

.field public final synthetic blacklist f$1:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;Landroid/net/wifi/WifiConfiguration;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy$$ExternalSyntheticLambda2;->f$0:Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;

    iput-object p2, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy$$ExternalSyntheticLambda2;->f$1:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy$$ExternalSyntheticLambda2;->f$0:Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;

    iget-object v1, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy$$ExternalSyntheticLambda2;->f$1:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->$r8$lambda$zOx0oKNXfhuXXeDxh-DrKONTC3I(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method
