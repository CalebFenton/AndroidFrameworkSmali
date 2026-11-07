.class Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler$1;
.super Ljava/lang/Object;
.source "JankReportingScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;-><init>(Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;)V
    .registers 2
    .param p1, "this$0"    # Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 23
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler$1;->this$0:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 2

    .line 26
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler$1;->this$0:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;->-$$Nest$fgetmFrameMetricsStore(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;)Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->initialize()V

    .line 27
    return-void
.end method
