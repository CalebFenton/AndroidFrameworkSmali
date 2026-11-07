.class Lcom/android/internal/telephony/satellite/SatelliteController$20;
.super Ljava/lang/Object;
.source "SatelliteController.java"

# interfaces
.implements Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/satellite/SatelliteController;->registerForSatelliteCommunicationAccessStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/satellite/SatelliteController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 8368
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$20;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAccessAllowedStateChanged(Z)V
    .registers 5

    .line 8371
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$20;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAccessStateChanged: isAllowed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteController;Ljava/lang/String;)V

    .line 8372
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$20;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$fgetmFeatureFlags(Lcom/android/internal/telephony/satellite/SatelliteController;)Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 8375
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$20;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    iget-object v0, v0, Lcom/android/internal/telephony/satellite/SatelliteController;->mSatelliteAccessConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8376
    :try_start_20
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$20;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    iput-boolean p1, v1, Lcom/android/internal/telephony/satellite/SatelliteController;->mSatelliteAccessAllowed:Z

    .line 8377
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_33

    .line 8378
    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->evaluateESOSProfilesPrioritization()V

    .line 8379
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$20;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mevaluateCarrierRoamingNtnEligibilityChange(Lcom/android/internal/telephony/satellite/SatelliteController;)V

    .line 8380
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$20;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mhandleCarrierRoamingNtnAvailableServicesChanged(Lcom/android/internal/telephony/satellite/SatelliteController;)V

    return-void

    :catchall_33
    move-exception p0

    .line 8377
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public blacklist onAccessConfigurationChanged(Landroid/telephony/satellite/SatelliteAccessConfiguration;)V
    .registers 5

    .line 8387
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$20;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAccessConfigurationChanged: satelliteAccessConfiguration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteController;Ljava/lang/String;)V

    .line 8389
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$20;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mhandleSatelliteAccessConfigUpdateResult(Lcom/android/internal/telephony/satellite/SatelliteController;Landroid/telephony/satellite/SatelliteAccessConfiguration;)V

    return-void
.end method
