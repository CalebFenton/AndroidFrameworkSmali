.class Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;
.super Ljava/lang/Object;
.source "InteractionJankMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/InteractionJankMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RunningTracker"
.end annotation


# instance fields
.field public final blacklist mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

.field public final blacklist mTimeoutAction:Ljava/lang/Runnable;

.field public final blacklist mTracker:Lcom/android/internal/jank/FrameTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;Lcom/android/internal/jank/FrameTracker;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "config"    # Lcom/android/internal/jank/InteractionJankMonitor$Configuration;
    .param p2, "tracker"    # Lcom/android/internal/jank/FrameTracker;
    .param p3, "timeoutAction"    # Ljava/lang/Runnable;

    .line 1007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1008
    iput-object p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    .line 1009
    iput-object p2, p0, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;->mTracker:Lcom/android/internal/jank/FrameTracker;

    .line 1010
    iput-object p3, p0, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;->mTimeoutAction:Ljava/lang/Runnable;

    .line 1011
    return-void
.end method
