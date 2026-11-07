.class public final synthetic Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/satellite/SatelliteController;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/satellite/SatelliteController$RequestSatelliteEnabledArgument;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteController;Lcom/android/internal/telephony/satellite/SatelliteController$RequestSatelliteEnabledArgument;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda33;->f$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    iput-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda33;->f$1:Lcom/android/internal/telephony/satellite/SatelliteController$RequestSatelliteEnabledArgument;

    return-void
.end method


# virtual methods
.method public final whitelist onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda33;->f$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda33;->f$1:Lcom/android/internal/telephony/satellite/SatelliteController$RequestSatelliteEnabledArgument;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->$r8$lambda$4U3xc1wepnFySMtcbH33lmPewqE(Lcom/android/internal/telephony/satellite/SatelliteController;Lcom/android/internal/telephony/satellite/SatelliteController$RequestSatelliteEnabledArgument;Landroid/content/DialogInterface;)V

    return-void
.end method
