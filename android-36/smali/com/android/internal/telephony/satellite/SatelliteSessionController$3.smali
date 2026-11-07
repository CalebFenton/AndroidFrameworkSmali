.class Lcom/android/internal/telephony/satellite/SatelliteSessionController$3;
.super Lcom/android/internal/telephony/IIntegerConsumer$Stub;
.source "SatelliteSessionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/satellite/SatelliteSessionController;->handleEventScreenOffInactivityTimerTimedOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1950
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$3;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-direct {p0}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist accept(I)V
    .registers 5

    .line 1953
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$3;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSatelliteEnabled result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    if-nez p1, :cond_21

    .line 1955
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$3;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmSessionMetricsStats(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->addCountOfAutoExitDueToScreenOff()Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    :cond_21
    return-void
.end method
