.class public final synthetic Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/wifi/WifiManager$SoftApCallbackProxy;

.field public final synthetic blacklist f$1:Landroid/net/wifi/SoftApState;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Landroid/net/wifi/SoftApState;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda5;->f$0:Landroid/net/wifi/WifiManager$SoftApCallbackProxy;

    iput-object p2, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda5;->f$1:Landroid/net/wifi/SoftApState;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda5;->f$0:Landroid/net/wifi/WifiManager$SoftApCallbackProxy;

    iget-object v1, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda5;->f$1:Landroid/net/wifi/SoftApState;

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->$r8$lambda$LSv9Q3CNNAXFwUDbwlqS-ZdeKys(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Landroid/net/wifi/SoftApState;)V

    return-void
.end method
