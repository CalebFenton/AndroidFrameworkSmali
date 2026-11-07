.class final Landroid/net/connectivity/org/chromium/base/TraceEvent$LooperMonitorHolder;
.super Ljava/lang/Object;
.source "TraceEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/TraceEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LooperMonitorHolder"
.end annotation


# static fields
.field private static final blacklist sInstance:Landroid/net/connectivity/org/chromium/base/TraceEvent$BasicLooperMonitor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsInstance()Landroid/net/connectivity/org/chromium/base/TraceEvent$BasicLooperMonitor;
    .registers 1

    sget-object v0, Landroid/net/connectivity/org/chromium/base/TraceEvent$LooperMonitorHolder;->sInstance:Landroid/net/connectivity/org/chromium/base/TraceEvent$BasicLooperMonitor;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 255
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/CommandLine;->getInstance()Landroid/net/connectivity/org/chromium/base/CommandLine;

    move-result-object v0

    const-string v1, "enable-idle-tracing"

    invoke-virtual {v0, v1}, Landroid/net/connectivity/org/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 256
    new-instance v0, Landroid/net/connectivity/org/chromium/base/TraceEvent$IdleTracingLooperMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/connectivity/org/chromium/base/TraceEvent$IdleTracingLooperMonitor;-><init>(Landroid/net/connectivity/org/chromium/base/TraceEvent-IA;)V

    goto :goto_18

    .line 257
    :cond_13
    new-instance v0, Landroid/net/connectivity/org/chromium/base/TraceEvent$BasicLooperMonitor;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent$BasicLooperMonitor;-><init>()V

    :goto_18
    sput-object v0, Landroid/net/connectivity/org/chromium/base/TraceEvent$LooperMonitorHolder;->sInstance:Landroid/net/connectivity/org/chromium/base/TraceEvent$BasicLooperMonitor;

    .line 254
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
