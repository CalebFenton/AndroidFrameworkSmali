.class public final Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig$Builder;
.super Ljava/lang/Object;
.source "TrafficStatsRateLimitCacheConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist expiryDurationMs:I

.field private blacklist isCacheEnabled:Z

.field private blacklist maxEntries:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig$Builder;->isCacheEnabled:Z

    .line 30
    iput v0, p0, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig$Builder;->expiryDurationMs:I

    .line 35
    iput v0, p0, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig$Builder;->maxEntries:I

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;
    .registers 5

    .line 41
    new-instance v0, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;

    iget-boolean v1, p0, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig$Builder;->isCacheEnabled:Z

    iget v2, p0, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig$Builder;->expiryDurationMs:I

    iget v3, p0, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig$Builder;->maxEntries:I

    invoke-direct {v0, v1, v2, v3}, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;-><init>(ZII)V

    return-object v0
.end method

.method public blacklist setExpiryDurationMs(I)Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig$Builder;
    .registers 2
    .param p1, "expiryDurationMs"    # I

    .line 32
    iput p1, p0, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig$Builder;->expiryDurationMs:I

    .line 33
    return-object p0
.end method

.method public blacklist setIsCacheEnabled(Z)Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig$Builder;
    .registers 2
    .param p1, "isCacheEnabled"    # Z

    .line 27
    iput-boolean p1, p0, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig$Builder;->isCacheEnabled:Z

    .line 28
    return-object p0
.end method

.method public blacklist setMaxEntries(I)Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig$Builder;
    .registers 2
    .param p1, "maxEntries"    # I

    .line 37
    iput p1, p0, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig$Builder;->maxEntries:I

    .line 38
    return-object p0
.end method
