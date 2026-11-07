.class public final synthetic Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/wifi/WifiManager$SoftApCallbackProxy;

.field public final synthetic blacklist f$1:Landroid/net/wifi/WifiClient;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Landroid/net/wifi/WifiClient;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda7;->f$0:Landroid/net/wifi/WifiManager$SoftApCallbackProxy;

    iput-object p2, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda7;->f$1:Landroid/net/wifi/WifiClient;

    iput p3, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda7;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda7;->f$0:Landroid/net/wifi/WifiManager$SoftApCallbackProxy;

    iget-object v1, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda7;->f$1:Landroid/net/wifi/WifiClient;

    iget v2, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda7;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->$r8$lambda$baVOf4jL88hdnleAAHhJuFXPK7Q(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Landroid/net/wifi/WifiClient;I)V

    return-void
.end method
