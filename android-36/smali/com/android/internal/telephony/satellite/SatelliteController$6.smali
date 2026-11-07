.class Lcom/android/internal/telephony/satellite/SatelliteController$6;
.super Landroid/os/ResultReceiver;
.source "SatelliteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/satellite/SatelliteController;->handleMessage(Landroid/os/Message;)V
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

    .line 1850
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$6;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .registers 5

    .line 1854
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$6;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    const-string v1, "SC:CMD_IS_SATELLITE_SUPPORTED"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->decrementResultReceiverCount(Ljava/lang/String;)V

    .line 1855
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$6;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRadioStateChanged.requestIsSatelliteSupported: resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", resultData="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteController;Ljava/lang/String;)V

    return-void
.end method
