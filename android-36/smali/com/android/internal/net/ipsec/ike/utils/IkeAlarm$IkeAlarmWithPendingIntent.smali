.class Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmWithPendingIntent;
.super Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;
.source "IkeAlarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IkeAlarmWithPendingIntent"
.end annotation


# instance fields
.field private final blacklist mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;)V
    .registers 4
    .param p1, "alarmConfig"    # Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;-><init>(Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm-IA;)V

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new IkeAlarmWithPendingIntent for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmWithPendingIntent;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IKE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p1, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;->pendingIntent:Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmWithPendingIntent;->mPendingIntent:Landroid/app/PendingIntent;

    .line 138
    return-void
.end method


# virtual methods
.method public blacklist cancel()V
    .registers 3

    .line 142
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmWithPendingIntent;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmWithPendingIntent;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 143
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmWithPendingIntent;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 144
    return-void
.end method

.method public blacklist schedule()V
    .registers 6

    .line 148
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmWithPendingIntent;->mAlarmManager:Landroid/app/AlarmManager;

    .line 150
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmWithPendingIntent;->mDelayMs:J

    add-long/2addr v1, v3

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmWithPendingIntent;->mPendingIntent:Landroid/app/PendingIntent;

    .line 148
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 152
    return-void
.end method
