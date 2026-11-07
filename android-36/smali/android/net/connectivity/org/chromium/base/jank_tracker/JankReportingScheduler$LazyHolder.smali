.class Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler$LazyHolder;
.super Ljava/lang/Object;
.source "JankReportingScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final blacklist HANDLER:Landroid/os/Handler;

.field private static final blacklist HANDLER_THREAD:Landroid/os/HandlerThread;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetHANDLER()Landroid/os/Handler;
    .registers 1

    sget-object v0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler$LazyHolder;->HANDLER:Landroid/os/Handler;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 54
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Jank-Tracker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler$LazyHolder;->HANDLER_THREAD:Landroid/os/HandlerThread;

    .line 55
    sget-object v0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler$LazyHolder;->HANDLER_THREAD:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 56
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler$LazyHolder;->HANDLER_THREAD:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler$LazyHolder;->HANDLER:Landroid/os/Handler;

    .line 57
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
