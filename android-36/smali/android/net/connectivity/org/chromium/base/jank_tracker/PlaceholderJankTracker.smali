.class public Landroid/net/connectivity/org/chromium/base/jank_tracker/PlaceholderJankTracker;
.super Ljava/lang/Object;
.source "PlaceholderJankTracker.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTracker;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist destroy()V
    .registers 1

    .line 19
    return-void
.end method

.method public blacklist finishTrackingScenario(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;)V
    .registers 2
    .param p1, "scenario"    # Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    .line 13
    return-void
.end method

.method public blacklist finishTrackingScenario(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;J)V
    .registers 4
    .param p1, "scenario"    # Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;
    .param p2, "endScenarioTimeNs"    # J

    .line 16
    return-void
.end method

.method public blacklist startTrackingScenario(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;)V
    .registers 2
    .param p1, "scenario"    # Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    .line 10
    return-void
.end method
