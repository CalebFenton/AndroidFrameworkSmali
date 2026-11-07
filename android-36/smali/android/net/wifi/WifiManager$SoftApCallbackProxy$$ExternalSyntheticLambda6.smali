.class public final synthetic Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/wifi/WifiManager$SoftApCallbackProxy;

.field public final synthetic blacklist f$1:Landroid/net/wifi/SoftApInfo;

.field public final synthetic blacklist f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Landroid/net/wifi/SoftApInfo;Ljava/util/List;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda6;->f$0:Landroid/net/wifi/WifiManager$SoftApCallbackProxy;

    iput-object p2, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda6;->f$1:Landroid/net/wifi/SoftApInfo;

    iput-object p3, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda6;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda6;->f$0:Landroid/net/wifi/WifiManager$SoftApCallbackProxy;

    iget-object v1, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda6;->f$1:Landroid/net/wifi/SoftApInfo;

    iget-object v2, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda6;->f$2:Ljava/util/List;

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->$r8$lambda$v1Z-cG5TzeVrA0rBJiqfapuAZe0(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Landroid/net/wifi/SoftApInfo;Ljava/util/List;)V

    return-void
.end method
