.class public Landroid/health/connect/ratelimiter/RateLimiterException;
.super Landroid/health/connect/HealthConnectException;
.source "RateLimiterException.java"


# instance fields
.field private final blacklist mQuotaBucket:I

.field private final blacklist mQuotaLimit:F


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;IF)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "quotaBucket"    # I
    .param p3, "quotaLimit"    # F

    .line 37
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Landroid/health/connect/HealthConnectException;-><init>(ILjava/lang/String;)V

    .line 38
    iput p2, p0, Landroid/health/connect/ratelimiter/RateLimiterException;->mQuotaBucket:I

    .line 39
    iput p3, p0, Landroid/health/connect/ratelimiter/RateLimiterException;->mQuotaLimit:F

    .line 40
    return-void
.end method


# virtual methods
.method public blacklist getRateLimiterQuotaBucket()I
    .registers 2

    .line 47
    iget v0, p0, Landroid/health/connect/ratelimiter/RateLimiterException;->mQuotaBucket:I

    return v0
.end method

.method public blacklist getRateLimiterQuotaLimit()F
    .registers 2

    .line 52
    iget v0, p0, Landroid/health/connect/ratelimiter/RateLimiterException;->mQuotaLimit:F

    return v0
.end method
