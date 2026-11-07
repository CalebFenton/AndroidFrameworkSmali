.class final Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$ActivityStartupEvent;
.super Ljava/lang/Object;
.source "EarlyTraceEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActivityStartupEvent"
.end annotation


# instance fields
.field final blacklist mId:J

.field final blacklist mTimeMs:J


# direct methods
.method constructor blacklist <init>(JJ)V
    .registers 5
    .param p1, "id"    # J
    .param p3, "timeMs"    # J

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-wide p1, p0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$ActivityStartupEvent;->mId:J

    .line 83
    iput-wide p3, p0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$ActivityStartupEvent;->mTimeMs:J

    .line 84
    return-void
.end method
