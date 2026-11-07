.class Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;
.super Landroid/telephony/TelephonyCallback;
.source "GpsNetInitiatedHandler.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/GpsNetInitiatedHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmergencyCallListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/location/GpsNetInitiatedHandler;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/location/GpsNetInitiatedHandler;Lcom/android/internal/location/GpsNetInitiatedHandler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;-><init>(Lcom/android/internal/location/GpsNetInitiatedHandler;)V

    return-void
.end method


# virtual methods
.method public whitelist onCallStateChanged(I)V
    .registers 5
    .param p1, "state"    # I

    .line 81
    invoke-static {}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallStateChanged(): state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GpsNetInitiatedHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_1e
    if-nez p1, :cond_40

    .line 84
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmIsInEmergencyCall(Lcom/android/internal/location/GpsNetInitiatedHandler;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 85
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fputmCallEndElapsedRealtimeMillis(Lcom/android/internal/location/GpsNetInitiatedHandler;J)V

    .line 86
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fputmIsInEmergencyCall(Lcom/android/internal/location/GpsNetInitiatedHandler;Z)V

    .line 87
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmEmergencyCallCallback(Lcom/android/internal/location/GpsNetInitiatedHandler;)Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallCallback;->onEmergencyCallEnd()V

    .line 90
    :cond_40
    return-void
.end method

.method public whitelist onOutgoingEmergencyCall(Landroid/telephony/emergency/EmergencyNumber;I)V
    .registers 5
    .param p1, "placedEmergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p2, "subscriptionId"    # I

    .line 73
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fputmIsInEmergencyCall(Lcom/android/internal/location/GpsNetInitiatedHandler;Z)V

    .line 74
    invoke-static {}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOutgoingEmergencyCall(): inEmergency = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GpsNetInitiatedHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_2a
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmEmergencyCallCallback(Lcom/android/internal/location/GpsNetInitiatedHandler;)Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallCallback;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallCallback;->onEmergencyCallStart(I)V

    .line 76
    return-void
.end method
