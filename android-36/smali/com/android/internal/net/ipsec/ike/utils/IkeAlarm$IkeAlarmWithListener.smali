.class Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmWithListener;
.super Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;
.source "IkeAlarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IkeAlarmWithListener"
.end annotation


# instance fields
.field private final blacklist mWakeupMsg:Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$Dependencies;)V
    .registers 5
    .param p1, "alarmConfig"    # Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;
    .param p2, "deps"    # Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$Dependencies;

    .line 165
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;-><init>(Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm-IA;)V

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new IkeAlarmWithListener for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmWithListener;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IKE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {p2, p1}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$Dependencies;->newWakeMessage(Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;)Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmWithListener;->mWakeupMsg:Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;

    .line 169
    return-void
.end method


# virtual methods
.method public blacklist cancel()V
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmWithListener;->mWakeupMsg:Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;->cancel()V

    .line 174
    return-void
.end method

.method public blacklist schedule()V
    .registers 6

    .line 178
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmWithListener;->mWakeupMsg:Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmWithListener;->mDelayMs:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;->schedule(J)V

    .line 179
    return-void
.end method
