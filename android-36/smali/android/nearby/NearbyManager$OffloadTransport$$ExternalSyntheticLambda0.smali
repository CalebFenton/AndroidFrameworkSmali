.class public final synthetic Landroid/nearby/NearbyManager$OffloadTransport$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/nearby/NearbyManager$OffloadTransport;

.field public final synthetic blacklist f$1:Landroid/nearby/OffloadCapability;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/nearby/NearbyManager$OffloadTransport;Landroid/nearby/OffloadCapability;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nearby/NearbyManager$OffloadTransport$$ExternalSyntheticLambda0;->f$0:Landroid/nearby/NearbyManager$OffloadTransport;

    iput-object p2, p0, Landroid/nearby/NearbyManager$OffloadTransport$$ExternalSyntheticLambda0;->f$1:Landroid/nearby/OffloadCapability;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/nearby/NearbyManager$OffloadTransport$$ExternalSyntheticLambda0;->f$0:Landroid/nearby/NearbyManager$OffloadTransport;

    iget-object v1, p0, Landroid/nearby/NearbyManager$OffloadTransport$$ExternalSyntheticLambda0;->f$1:Landroid/nearby/OffloadCapability;

    invoke-static {v0, v1}, Landroid/nearby/NearbyManager$OffloadTransport;->$r8$lambda$uW3H4X7opHTBvn0_xaK0j9KV4gY(Landroid/nearby/NearbyManager$OffloadTransport;Landroid/nearby/OffloadCapability;)V

    return-void
.end method
