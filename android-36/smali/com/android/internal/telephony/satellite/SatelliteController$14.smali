.class Lcom/android/internal/telephony/satellite/SatelliteController$14;
.super Landroid/os/ResultReceiver;
.source "SatelliteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/satellite/SatelliteController;->updateSatelliteSupportedState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/satellite/SatelliteController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteController;Landroid/os/Handler;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 4774
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$14;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .registers 6

    .line 4777
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$14;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSatelliteSupportedState.requestIsSatelliteProvisioned: resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", resultData="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteController;Ljava/lang/String;)V

    .line 4779
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$14;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    const-string p2, "SC:requestIsSatelliteProvisioned"

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/satellite/SatelliteController;->decrementResultReceiverCount(Ljava/lang/String;)V

    .line 4780
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$14;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    new-instance p2, Lcom/android/internal/telephony/satellite/SatelliteController$14$1;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/satellite/SatelliteController$14$1;-><init>(Lcom/android/internal/telephony/satellite/SatelliteController$14;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0, p0, p2}, Lcom/android/internal/telephony/satellite/SatelliteController;->requestSatelliteEnabled(ZZZLcom/android/internal/telephony/IIntegerConsumer;)V

    return-void
.end method
