.class public final synthetic Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/jank/FrameTracker;

.field public final synthetic blacklist f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/jank/FrameTracker;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/jank/FrameTracker;

    iput-object p2, p0, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/jank/FrameTracker;

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/internal/jank/FrameTracker;->$r8$lambda$rVugi0fZvtwemZN6TKJG3SIcOWw(Lcom/android/internal/jank/FrameTracker;Ljava/util/List;)V

    return-void
.end method
