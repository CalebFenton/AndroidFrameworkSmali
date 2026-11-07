.class public final Landroid/health/connect/ratelimiter/Quota;
.super Ljava/lang/Object;
.source "Quota.java"


# instance fields
.field private blacklist mLastUpdatedTimeMillis:J

.field private blacklist mRemainingQuota:F


# direct methods
.method public constructor blacklist <init>(JF)V
    .registers 4
    .param p1, "lastUpdatedTimeMillis"    # J
    .param p3, "remainingQuota"    # F

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide p1, p0, Landroid/health/connect/ratelimiter/Quota;->mLastUpdatedTimeMillis:J

    .line 31
    iput p3, p0, Landroid/health/connect/ratelimiter/Quota;->mRemainingQuota:F

    .line 32
    return-void
.end method


# virtual methods
.method public blacklist getLastUpdatedTimeMillis()J
    .registers 3

    .line 35
    iget-wide v0, p0, Landroid/health/connect/ratelimiter/Quota;->mLastUpdatedTimeMillis:J

    return-wide v0
.end method

.method public blacklist getRemainingQuota()F
    .registers 2

    .line 39
    iget v0, p0, Landroid/health/connect/ratelimiter/Quota;->mRemainingQuota:F

    return v0
.end method

.method public blacklist setLastUpdatedTimeMillis(J)V
    .registers 3
    .param p1, "lastUpdatedTimeMillis"    # J

    .line 43
    iput-wide p1, p0, Landroid/health/connect/ratelimiter/Quota;->mLastUpdatedTimeMillis:J

    .line 44
    return-void
.end method

.method public blacklist setRemainingQuota(Ljava/lang/Float;)V
    .registers 3
    .param p1, "remainingQuota"    # Ljava/lang/Float;

    .line 47
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Landroid/health/connect/ratelimiter/Quota;->mRemainingQuota:F

    .line 48
    return-void
.end method
