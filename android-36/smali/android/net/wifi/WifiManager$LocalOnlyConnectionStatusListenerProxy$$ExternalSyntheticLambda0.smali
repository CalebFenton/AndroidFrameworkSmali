.class public final synthetic Landroid/net/wifi/WifiManager$LocalOnlyConnectionStatusListenerProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/wifi/WifiManager$LocalOnlyConnectionStatusListenerProxy;

.field public final synthetic blacklist f$1:Landroid/net/wifi/WifiNetworkSpecifier;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/wifi/WifiManager$LocalOnlyConnectionStatusListenerProxy;Landroid/net/wifi/WifiNetworkSpecifier;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiManager$LocalOnlyConnectionStatusListenerProxy$$ExternalSyntheticLambda0;->f$0:Landroid/net/wifi/WifiManager$LocalOnlyConnectionStatusListenerProxy;

    iput-object p2, p0, Landroid/net/wifi/WifiManager$LocalOnlyConnectionStatusListenerProxy$$ExternalSyntheticLambda0;->f$1:Landroid/net/wifi/WifiNetworkSpecifier;

    iput p3, p0, Landroid/net/wifi/WifiManager$LocalOnlyConnectionStatusListenerProxy$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyConnectionStatusListenerProxy$$ExternalSyntheticLambda0;->f$0:Landroid/net/wifi/WifiManager$LocalOnlyConnectionStatusListenerProxy;

    iget-object v1, p0, Landroid/net/wifi/WifiManager$LocalOnlyConnectionStatusListenerProxy$$ExternalSyntheticLambda0;->f$1:Landroid/net/wifi/WifiNetworkSpecifier;

    iget v2, p0, Landroid/net/wifi/WifiManager$LocalOnlyConnectionStatusListenerProxy$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiManager$LocalOnlyConnectionStatusListenerProxy;->$r8$lambda$AU_Ebzd83petuf5b4crYZCIr4jM(Landroid/net/wifi/WifiManager$LocalOnlyConnectionStatusListenerProxy;Landroid/net/wifi/WifiNetworkSpecifier;I)V

    return-void
.end method
