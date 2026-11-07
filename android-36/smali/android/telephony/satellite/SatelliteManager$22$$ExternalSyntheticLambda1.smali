.class public final synthetic Landroid/telephony/satellite/SatelliteManager$22$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/satellite/SelectedNbIotSatelliteSubscriptionCallback;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/satellite/SelectedNbIotSatelliteSubscriptionCallback;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/satellite/SatelliteManager$22$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/satellite/SelectedNbIotSatelliteSubscriptionCallback;

    iput p2, p0, Landroid/telephony/satellite/SatelliteManager$22$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$22$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/satellite/SelectedNbIotSatelliteSubscriptionCallback;

    iget v1, p0, Landroid/telephony/satellite/SatelliteManager$22$$ExternalSyntheticLambda1;->f$1:I

    invoke-static {v0, v1}, Landroid/telephony/satellite/SatelliteManager$22;->lambda$onSelectedNbIotSatelliteSubscriptionChanged$0(Landroid/telephony/satellite/SelectedNbIotSatelliteSubscriptionCallback;I)V

    return-void
.end method
