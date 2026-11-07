.class Lcom/android/internal/telephony/emergency/RadioOnStateListener$2;
.super Landroid/telephony/satellite/ISatelliteModemStateCallback$Stub;
.source "RadioOnStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/emergency/RadioOnStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/emergency/RadioOnStateListener;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/emergency/RadioOnStateListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener$2;->this$0:Lcom/android/internal/telephony/emergency/RadioOnStateListener;

    invoke-direct {p0}, Landroid/telephony/satellite/ISatelliteModemStateCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onEmergencyModeChanged(Z)V
    .registers 3

    .line 153
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onEmergencyModeChanged: ignored "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RadioOnStateListener"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist onRegistrationFailure(I)V
    .registers 3

    .line 158
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRegistrationFailure: causeCode "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RadioOnStateListener"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist onSatelliteModemStateChanged(I)V
    .registers 2

    .line 148
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener$2;->this$0:Lcom/android/internal/telephony/emergency/RadioOnStateListener;

    invoke-static {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/emergency/RadioOnStateListener;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onTerrestrialNetworkAvailableChanged(Z)V
    .registers 3

    .line 163
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTerrestrialNetworkAvailableChanged: isAvailable "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RadioOnStateListener"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
