.class Lcom/android/internal/jank/InteractionJankMonitor$1;
.super Ljava/lang/Object;
.source "InteractionJankMonitor.java"

# interfaces
.implements Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/jank/InteractionJankMonitor;->createFrameTracker(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)Lcom/android/internal/jank/FrameTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/jank/InteractionJankMonitor;

.field final synthetic blacklist val$config:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;


# direct methods
.method public static synthetic blacklist $r8$lambda$ujzx9tVIO4CinZAA5avZd3rQOLc(Lcom/android/internal/jank/InteractionJankMonitor$1;Lcom/android/internal/jank/InteractionJankMonitor$Configuration;Lcom/android/internal/jank/FrameTracker;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/jank/InteractionJankMonitor$1;->lambda$onCujEvents$0(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;Lcom/android/internal/jank/FrameTracker;Ljava/lang/String;I)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/jank/InteractionJankMonitor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 265
    iput-object p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$1;->this$0:Lcom/android/internal/jank/InteractionJankMonitor;

    iput-object p2, p0, Lcom/android/internal/jank/InteractionJankMonitor$1;->val$config:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onCujEvents$0(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;Lcom/android/internal/jank/FrameTracker;Ljava/lang/String;I)V
    .registers 7
    .param p1, "config"    # Lcom/android/internal/jank/InteractionJankMonitor$Configuration;
    .param p2, "tracker"    # Lcom/android/internal/jank/FrameTracker;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "reason"    # I

    .line 269
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$1;->this$0:Lcom/android/internal/jank/InteractionJankMonitor;

    invoke-static {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->-$$Nest$fgetmCujType(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)I

    move-result v1

    invoke-static {v0, v1, p2, p3, p4}, Lcom/android/internal/jank/InteractionJankMonitor;->-$$Nest$mhandleCujEvents(Lcom/android/internal/jank/InteractionJankMonitor;ILcom/android/internal/jank/FrameTracker;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic blacklist lambda$triggerPerfetto$1(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)V
    .registers 2
    .param p0, "config"    # Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    .line 275
    invoke-virtual {p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getPerfettoTrigger()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/PerfettoTrigger;->trigger(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist onCujEvents(Lcom/android/internal/jank/FrameTracker;Ljava/lang/String;I)V
    .registers 11
    .param p1, "tracker"    # Lcom/android/internal/jank/FrameTracker;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "reason"    # I

    .line 268
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$1;->val$config:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-virtual {v0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/jank/InteractionJankMonitor$1;->val$config:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    new-instance v1, Lcom/android/internal/jank/InteractionJankMonitor$1$$ExternalSyntheticLambda1;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    .end local p1    # "tracker":Lcom/android/internal/jank/FrameTracker;
    .end local p2    # "action":Ljava/lang/String;
    .end local p3    # "reason":I
    .local v4, "tracker":Lcom/android/internal/jank/FrameTracker;
    .local v5, "action":Ljava/lang/String;
    .local v6, "reason":I
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/jank/InteractionJankMonitor$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/jank/InteractionJankMonitor$1;Lcom/android/internal/jank/InteractionJankMonitor$Configuration;Lcom/android/internal/jank/FrameTracker;Ljava/lang/String;I)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 271
    return-void
.end method

.method public blacklist triggerPerfetto(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)V
    .registers 4
    .param p1, "config"    # Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    .line 275
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$1;->this$0:Lcom/android/internal/jank/InteractionJankMonitor;

    invoke-static {v0}, Lcom/android/internal/jank/InteractionJankMonitor;->-$$Nest$fgetmWorker(Lcom/android/internal/jank/InteractionJankMonitor;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/jank/InteractionJankMonitor$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/internal/jank/InteractionJankMonitor$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 276
    return-void
.end method
