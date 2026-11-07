.class public final synthetic Landroid/location/LocationManager$GetCurrentLocationTransport$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/location/LocationManager$GetCurrentLocationTransport;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/location/LocationManager$GetCurrentLocationTransport;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/location/LocationManager$GetCurrentLocationTransport$$ExternalSyntheticLambda0;->f$0:Landroid/location/LocationManager$GetCurrentLocationTransport;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/location/LocationManager$GetCurrentLocationTransport$$ExternalSyntheticLambda0;->f$0:Landroid/location/LocationManager$GetCurrentLocationTransport;

    invoke-static {v0}, Landroid/location/LocationManager$GetCurrentLocationTransport;->$r8$lambda$7BqbMcgRnzjjsTKfvIaHTDlQTrM(Landroid/location/LocationManager$GetCurrentLocationTransport;)Ljava/util/function/Consumer;

    move-result-object v0

    return-object v0
.end method
