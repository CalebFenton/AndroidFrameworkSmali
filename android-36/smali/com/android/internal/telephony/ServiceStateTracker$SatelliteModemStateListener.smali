.class public Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;
.super Landroid/telephony/satellite/ISatelliteModemStateCallback$Stub;
.source "ServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SatelliteModemStateListener"
.end annotation


# instance fields
.field private blacklist mSatelliteNbIotConnected:Z

.field private blacklist mUpdateSatelliteCarrierDisplay:Z

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ServiceStateTracker;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 635
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-direct {p0}, Landroid/telephony/satellite/ISatelliteModemStateCallback$Stub;-><init>()V

    const/4 p1, 0x0

    .line 640
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;->mSatelliteNbIotConnected:Z

    .line 645
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;->mUpdateSatelliteCarrierDisplay:Z

    return-void
.end method


# virtual methods
.method public blacklist doneForUpdateSatelliteCarrierDisplay()V
    .registers 2

    const/4 v0, 0x0

    .line 700
    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;->mUpdateSatelliteCarrierDisplay:Z

    return-void
.end method

.method public blacklist isInConnectedState()Z
    .registers 5

    .line 674
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 678
    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSelectedSatelliteSubId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_25

    .line 679
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 680
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    if-ne v2, p0, :cond_25

    .line 681
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getNtnOnlySubscriptionId()I

    move-result p0

    if-ne v2, p0, :cond_20

    goto :goto_25

    .line 684
    :cond_20
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->isInConnectedState()Z

    move-result p0

    return p0

    :cond_25
    :goto_25
    return v1
.end method

.method public blacklist needToUpdateSatelliteCarrierDisplay()Z
    .registers 1

    .line 692
    iget-boolean p0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;->mUpdateSatelliteCarrierDisplay:Z

    return p0
.end method

.method public blacklist onEmergencyModeChanged(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist onRegistrationFailure(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist onSatelliteModemStateChanged(I)V
    .registers 5

    .line 649
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;->isInConnectedState()Z

    move-result p1

    .line 650
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;->mSatelliteNbIotConnected:Z

    if-eq p1, v0, :cond_28

    .line 651
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Satellite connection state is changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 652
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;->mSatelliteNbIotConnected:Z

    const/4 p1, 0x1

    .line 653
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;->mUpdateSatelliteCarrierDisplay:Z

    .line 655
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    :cond_28
    return-void
.end method

.method public blacklist onTerrestrialNetworkAvailableChanged(Z)V
    .registers 2

    .line 0
    return-void
.end method
