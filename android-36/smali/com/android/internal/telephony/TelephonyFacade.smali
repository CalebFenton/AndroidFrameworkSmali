.class public Lcom/android/internal/telephony/TelephonyFacade;
.super Ljava/lang/Object;
.source "TelephonyFacade.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getElapsedSinceBootMillis()J
    .registers 3

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getMobileRxBytes()J
    .registers 3

    .line 46
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getMobileTxBytes()J
    .registers 3

    .line 39
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v0

    return-wide v0
.end method
