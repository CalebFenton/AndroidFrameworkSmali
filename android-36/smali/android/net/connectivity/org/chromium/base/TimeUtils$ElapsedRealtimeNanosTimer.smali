.class public Landroid/net/connectivity/org/chromium/base/TimeUtils$ElapsedRealtimeNanosTimer;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/TimeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElapsedRealtimeNanosTimer"
.end annotation


# instance fields
.field private final blacklist mStart:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TimeUtils;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/base/TimeUtils$ElapsedRealtimeNanosTimer;->mStart:J

    return-void
.end method


# virtual methods
.method public blacklist getElapsedNanos()J
    .registers 5

    .line 51
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TimeUtils;->elapsedRealtimeNanos()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/connectivity/org/chromium/base/TimeUtils$ElapsedRealtimeNanosTimer;->mStart:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
