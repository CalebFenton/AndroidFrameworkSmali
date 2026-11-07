.class public final synthetic Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/satellite/SatelliteController;

.field public final synthetic blacklist f$1:Ljava/util/List;

.field public final synthetic blacklist f$2:Landroid/os/ResultReceiver;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteController;Ljava/util/List;Landroid/os/ResultReceiver;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda30;->f$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    iput-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda30;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda30;->f$2:Landroid/os/ResultReceiver;

    return-void
.end method


# virtual methods
.method public final whitelist onCancel()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda30;->f$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda30;->f$1:Ljava/util/List;

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda30;->f$2:Landroid/os/ResultReceiver;

    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->$r8$lambda$PcIdOCGZosIvHbWBWuATUwqfzec(Lcom/android/internal/telephony/satellite/SatelliteController;Ljava/util/List;Landroid/os/ResultReceiver;)V

    return-void
.end method
