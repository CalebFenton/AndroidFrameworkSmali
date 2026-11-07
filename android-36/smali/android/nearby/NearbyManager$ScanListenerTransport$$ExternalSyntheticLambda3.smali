.class public final synthetic Landroid/nearby/NearbyManager$ScanListenerTransport$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/nearby/NearbyManager$ScanListenerTransport;

.field public final synthetic blacklist f$1:Landroid/nearby/NearbyDeviceParcelable;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/nearby/NearbyManager$ScanListenerTransport;Landroid/nearby/NearbyDeviceParcelable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nearby/NearbyManager$ScanListenerTransport$$ExternalSyntheticLambda3;->f$0:Landroid/nearby/NearbyManager$ScanListenerTransport;

    iput-object p2, p0, Landroid/nearby/NearbyManager$ScanListenerTransport$$ExternalSyntheticLambda3;->f$1:Landroid/nearby/NearbyDeviceParcelable;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/nearby/NearbyManager$ScanListenerTransport$$ExternalSyntheticLambda3;->f$0:Landroid/nearby/NearbyManager$ScanListenerTransport;

    iget-object v1, p0, Landroid/nearby/NearbyManager$ScanListenerTransport$$ExternalSyntheticLambda3;->f$1:Landroid/nearby/NearbyDeviceParcelable;

    invoke-static {v0, v1}, Landroid/nearby/NearbyManager$ScanListenerTransport;->$r8$lambda$LQ1LP8EiPJKeWlRjtwrf0ltLIBw(Landroid/nearby/NearbyManager$ScanListenerTransport;Landroid/nearby/NearbyDeviceParcelable;)V

    return-void
.end method
