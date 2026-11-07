.class public final synthetic Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/wifi/WifiManager$CoexCallback;

.field public final synthetic blacklist f$1:Ljava/util/List;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/wifi/WifiManager$CoexCallback;Ljava/util/List;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy$$ExternalSyntheticLambda0;->f$0:Landroid/net/wifi/WifiManager$CoexCallback;

    iput-object p2, p0, Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iput p3, p0, Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy$$ExternalSyntheticLambda0;->f$0:Landroid/net/wifi/WifiManager$CoexCallback;

    iget-object v1, p0, Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iget v2, p0, Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy;->lambda$onCoexUnsafeChannelsChanged$0(Landroid/net/wifi/WifiManager$CoexCallback;Ljava/util/List;I)V

    return-void
.end method
