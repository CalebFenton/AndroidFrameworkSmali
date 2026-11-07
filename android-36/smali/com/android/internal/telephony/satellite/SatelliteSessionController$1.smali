.class Lcom/android/internal/telephony/satellite/SatelliteSessionController$1;
.super Ljava/lang/Object;
.source "SatelliteSessionController.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/SatelliteSessionController;
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

    .line 203
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$1;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAlarm()V
    .registers 3

    .line 206
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$1;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string v1, "onAlarm: screen off timer expired"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    .line 207
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$1;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    return-void
.end method
