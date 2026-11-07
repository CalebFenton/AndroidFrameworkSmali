.class Landroid/app/NotificationManager$RateLimiter;
.super Ljava/lang/Object;
.source "NotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RateLimiter"
.end annotation


# static fields
.field private static final blacklist RATE_LIMITER_LOG_INTERVAL:Ljava/time/Duration;


# instance fields
.field private final blacklist mCounterName:Ljava/lang/String;

.field private final blacklist mInputRateEstimator:Landroid/service/notification/RateEstimator;

.field private final blacklist mLimitRate:F

.field private blacklist mLogSilencedUntil:Ljava/time/Instant;

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mOutputRateEstimator:Landroid/service/notification/RateEstimator;

.field final synthetic blacklist this$0:Landroid/app/NotificationManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 851
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Landroid/app/NotificationManager$RateLimiter;->RATE_LIMITER_LOG_INTERVAL:Ljava/time/Duration;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;F)V
    .registers 5
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "counterName"    # Ljava/lang/String;
    .param p4, "limitRate"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 861
    iput-object p1, p0, Landroid/app/NotificationManager$RateLimiter;->this$0:Landroid/app/NotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 862
    new-instance p1, Landroid/service/notification/RateEstimator;

    invoke-direct {p1}, Landroid/service/notification/RateEstimator;-><init>()V

    iput-object p1, p0, Landroid/app/NotificationManager$RateLimiter;->mInputRateEstimator:Landroid/service/notification/RateEstimator;

    .line 863
    new-instance p1, Landroid/service/notification/RateEstimator;

    invoke-direct {p1}, Landroid/service/notification/RateEstimator;-><init>()V

    iput-object p1, p0, Landroid/app/NotificationManager$RateLimiter;->mOutputRateEstimator:Landroid/service/notification/RateEstimator;

    .line 864
    iput-object p2, p0, Landroid/app/NotificationManager$RateLimiter;->mName:Ljava/lang/String;

    .line 865
    iput-object p3, p0, Landroid/app/NotificationManager$RateLimiter;->mCounterName:Ljava/lang/String;

    .line 866
    iput p4, p0, Landroid/app/NotificationManager$RateLimiter;->mLimitRate:F

    .line 867
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;FLandroid/app/NotificationManager-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/NotificationManager$RateLimiter;-><init>(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;F)V

    return-void
.end method


# virtual methods
.method blacklist eventExceedsRate()Z
    .registers 5

    .line 870
    iget-object v0, p0, Landroid/app/NotificationManager$RateLimiter;->this$0:Landroid/app/NotificationManager;

    invoke-static {v0}, Landroid/app/NotificationManager;->-$$Nest$fgetmClock(Landroid/app/NotificationManager;)Ljava/time/InstantSource;

    move-result-object v0

    invoke-interface {v0}, Ljava/time/InstantSource;->millis()J

    move-result-wide v0

    .line 871
    .local v0, "nowMillis":J
    iget-object v2, p0, Landroid/app/NotificationManager$RateLimiter;->mInputRateEstimator:Landroid/service/notification/RateEstimator;

    invoke-virtual {v2, v0, v1}, Landroid/service/notification/RateEstimator;->update(J)V

    .line 872
    iget-object v2, p0, Landroid/app/NotificationManager$RateLimiter;->mOutputRateEstimator:Landroid/service/notification/RateEstimator;

    invoke-virtual {v2, v0, v1}, Landroid/service/notification/RateEstimator;->getRate(J)F

    move-result v2

    iget v3, p0, Landroid/app/NotificationManager$RateLimiter;->mLimitRate:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1d

    const/4 v2, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    return v2
.end method

.method blacklist recordAccepted()V
    .registers 4

    .line 876
    iget-object v0, p0, Landroid/app/NotificationManager$RateLimiter;->mOutputRateEstimator:Landroid/service/notification/RateEstimator;

    iget-object v1, p0, Landroid/app/NotificationManager$RateLimiter;->this$0:Landroid/app/NotificationManager;

    invoke-static {v1}, Landroid/app/NotificationManager;->-$$Nest$fgetmClock(Landroid/app/NotificationManager;)Ljava/time/InstantSource;

    move-result-object v1

    invoke-interface {v1}, Ljava/time/InstantSource;->millis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/service/notification/RateEstimator;->update(J)V

    .line 877
    return-void
.end method

.method blacklist recordRejected(Landroid/app/NotificationManager$NotificationKey;)V
    .registers 10
    .param p1, "key"    # Landroid/app/NotificationManager$NotificationKey;

    .line 880
    iget-object v0, p0, Landroid/app/NotificationManager$RateLimiter;->this$0:Landroid/app/NotificationManager;

    invoke-static {v0}, Landroid/app/NotificationManager;->-$$Nest$fgetmClock(Landroid/app/NotificationManager;)Ljava/time/InstantSource;

    move-result-object v0

    invoke-interface {v0}, Ljava/time/InstantSource;->instant()Ljava/time/Instant;

    move-result-object v0

    .line 881
    .local v0, "now":Ljava/time/Instant;
    iget-object v1, p0, Landroid/app/NotificationManager$RateLimiter;->mLogSilencedUntil:Ljava/time/Instant;

    if-eqz v1, :cond_17

    iget-object v1, p0, Landroid/app/NotificationManager$RateLimiter;->mLogSilencedUntil:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 882
    return-void

    .line 885
    :cond_17
    invoke-static {}, Landroid/app/Flags;->nmBinderPerfLogNmThrottling()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 887
    :try_start_1d
    iget-object v1, p0, Landroid/app/NotificationManager$RateLimiter;->this$0:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/NotificationManager$RateLimiter;->mCounterName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/app/INotificationManager;->incrementCounter(Ljava/lang/String;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_28} :catch_29

    .line 890
    goto :goto_46

    .line 888
    :catch_29
    move-exception v1

    .line 889
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/NotificationManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring error while trying to log "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/NotificationManager$RateLimiter;->mCounterName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 893
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_46
    :goto_46
    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    .line 894
    .local v1, "nowMillis":J
    invoke-static {}, Landroid/app/NotificationManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/app/NotificationManager$RateLimiter;->mName:Ljava/lang/String;

    iget v5, p0, Landroid/app/NotificationManager$RateLimiter;->mLimitRate:F

    .line 896
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget-object v6, p0, Landroid/app/NotificationManager$RateLimiter;->mInputRateEstimator:Landroid/service/notification/RateEstimator;

    invoke-virtual {v6, v1, v2}, Landroid/service/notification/RateEstimator;->getRate(J)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget-object v7, p0, Landroid/app/NotificationManager$RateLimiter;->mOutputRateEstimator:Landroid/service/notification/RateEstimator;

    .line 897
    invoke-virtual {v7, v1, v2}, Landroid/service/notification/RateEstimator;->getRate(J)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v4, p1, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v4

    .line 894
    const-string v5, "Shedding %s of %s, rate limit (%s) exceeded: input %s, output would be %s"

    invoke-static {v5, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    sget-object v3, Landroid/app/NotificationManager$RateLimiter;->RATE_LIMITER_LOG_INTERVAL:Ljava/time/Duration;

    invoke-virtual {v0, v3}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v3

    iput-object v3, p0, Landroid/app/NotificationManager$RateLimiter;->mLogSilencedUntil:Ljava/time/Instant;

    .line 900
    return-void
.end method
