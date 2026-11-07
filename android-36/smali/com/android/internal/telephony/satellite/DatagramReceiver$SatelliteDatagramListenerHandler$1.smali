.class Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$1;
.super Lcom/android/internal/telephony/IVoidConsumer$Stub;
.source "DatagramReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;->onSatelliteDatagramReceived(Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;

.field final synthetic blacklist val$argument:Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 315
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$1;->this$0:Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;

    iput-object p2, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$1;->val$argument:Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;

    invoke-direct {p0}, Lcom/android/internal/telephony/IVoidConsumer$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist accept()V
    .registers 4

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acknowledgeSatelliteDatagramReceived: datagramId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$1;->val$argument:Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;

    iget-wide v1, v1, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;->datagramId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$smlogd(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$1;->this$0:Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;

    const/4 v1, 0x3

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$1;->val$argument:Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
