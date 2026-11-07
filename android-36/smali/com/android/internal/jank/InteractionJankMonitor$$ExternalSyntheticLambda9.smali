.class public final synthetic Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/jank/InteractionJankMonitor;

.field public final synthetic blacklist f$1:Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;

.field public final synthetic blacklist f$2:Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda9;->f$0:Lcom/android/internal/jank/InteractionJankMonitor;

    iput-object p2, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda9;->f$1:Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;

    iput-object p3, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda9;->f$2:Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda9;->f$0:Lcom/android/internal/jank/InteractionJankMonitor;

    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda9;->f$1:Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;

    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda9;->f$2:Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;

    invoke-static {v0, v1, v2}, Lcom/android/internal/jank/InteractionJankMonitor;->$r8$lambda$9oh6FeI31KDrZz58JdrabS34-B4(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;)V

    return-void
.end method
