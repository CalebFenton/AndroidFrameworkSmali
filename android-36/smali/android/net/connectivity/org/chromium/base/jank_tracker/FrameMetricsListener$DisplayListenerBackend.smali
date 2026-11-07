.class Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener$DisplayListenerBackend;
.super Ljava/lang/Object;
.source "FrameMetricsListener.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayListenerBackend"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;


# direct methods
.method private constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 30
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener$DisplayListenerBackend;->this$0:Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener$DisplayListenerBackend;-><init>(Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;)V

    return-void
.end method


# virtual methods
.method public whitelist onDisplayAdded(I)V
    .registers 2
    .param p1, "sdkDisplayId"    # I

    .line 39
    return-void
.end method

.method public whitelist onDisplayChanged(I)V
    .registers 3
    .param p1, "sdkDisplayId"    # I

    .line 46
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener$DisplayListenerBackend;->this$0:Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;->-$$Nest$mmaybeUpdateRefreshRate(Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;)V

    .line 47
    return-void
.end method

.method public whitelist onDisplayRemoved(I)V
    .registers 2
    .param p1, "sdkDisplayId"    # I

    .line 42
    return-void
.end method

.method public blacklist startListening()V
    .registers 4

    .line 32
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 33
    .local v0, "appCtx":Landroid/content/Context;
    nop

    .line 34
    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 35
    .local v1, "displayManager":Landroid/hardware/display/DisplayManager;
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 36
    return-void
.end method
