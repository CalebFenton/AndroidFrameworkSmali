.class Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;
.super Ljava/lang/Object;
.source "SaRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/SaRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SaLifetimeAlarmScheduler"
.end annotation


# instance fields
.field private final blacklist mDeleteAlarm:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;

.field private final blacklist mDeleteDelayMs:J

.field private final blacklist mRekeyAlarm:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;

.field private final blacklist mRekeyDelayMs:J


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;)V
    .registers 5
    .param p1, "deleteAlarmConfig"    # Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;
    .param p2, "rekeyAlarmConfig"    # Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    iget-wide v0, p1, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;->delayMs:J

    iput-wide v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;->mDeleteDelayMs:J

    .line 543
    iget-wide v0, p2, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;->delayMs:J

    iput-wide v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;->mRekeyDelayMs:J

    .line 550
    invoke-static {p1}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;->newExactAlarm(Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;)Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;->mDeleteAlarm:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;

    .line 551
    invoke-static {p2}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;->newExactAndAllowWhileIdleAlarm(Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;)Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;->mRekeyAlarm:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;

    .line 552
    return-void
.end method


# virtual methods
.method public blacklist cancelLifetimeExpiryAlarm(Ljava/lang/String;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;

    .line 572
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;->mDeleteAlarm:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;->cancel()V

    .line 573
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;->mRekeyAlarm:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;->cancel()V

    .line 575
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    const-string v1, "Hard and soft lifetime alarm cancelled"

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    return-void
.end method

.method public blacklist rescheduleRekey(J)V
    .registers 4
    .param p1, "retryDelayMs"    # J

    .line 568
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;->mRekeyAlarm:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;->schedule()V

    .line 569
    return-void
.end method

.method public blacklist scheduleLifetimeExpiryAlarm(Ljava/lang/String;)V
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;

    .line 555
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;->mDeleteAlarm:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;->schedule()V

    .line 556
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;->mRekeyAlarm:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;->schedule()V

    .line 557
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lifetime alarm set: Hard lifetime ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;->mDeleteDelayMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms) Soft lifetime ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;->mRekeyDelayMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 558
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    return-void
.end method
