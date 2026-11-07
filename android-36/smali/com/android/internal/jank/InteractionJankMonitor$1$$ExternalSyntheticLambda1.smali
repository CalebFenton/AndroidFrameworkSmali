.class public final synthetic Lcom/android/internal/jank/InteractionJankMonitor$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/jank/InteractionJankMonitor$1;

.field public final synthetic blacklist f$1:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

.field public final synthetic blacklist f$2:Lcom/android/internal/jank/FrameTracker;

.field public final synthetic blacklist f$3:Ljava/lang/String;

.field public final synthetic blacklist f$4:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/jank/InteractionJankMonitor$1;Lcom/android/internal/jank/InteractionJankMonitor$Configuration;Lcom/android/internal/jank/FrameTracker;Ljava/lang/String;I)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/jank/InteractionJankMonitor$1;

    iput-object p2, p0, Lcom/android/internal/jank/InteractionJankMonitor$1$$ExternalSyntheticLambda1;->f$1:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    iput-object p3, p0, Lcom/android/internal/jank/InteractionJankMonitor$1$$ExternalSyntheticLambda1;->f$2:Lcom/android/internal/jank/FrameTracker;

    iput-object p4, p0, Lcom/android/internal/jank/InteractionJankMonitor$1$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iput p5, p0, Lcom/android/internal/jank/InteractionJankMonitor$1$$ExternalSyntheticLambda1;->f$4:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/jank/InteractionJankMonitor$1;

    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor$1$$ExternalSyntheticLambda1;->f$1:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor$1$$ExternalSyntheticLambda1;->f$2:Lcom/android/internal/jank/FrameTracker;

    iget-object v3, p0, Lcom/android/internal/jank/InteractionJankMonitor$1$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iget v4, p0, Lcom/android/internal/jank/InteractionJankMonitor$1$$ExternalSyntheticLambda1;->f$4:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/jank/InteractionJankMonitor$1;->$r8$lambda$ujzx9tVIO4CinZAA5avZd3rQOLc(Lcom/android/internal/jank/InteractionJankMonitor$1;Lcom/android/internal/jank/InteractionJankMonitor$Configuration;Lcom/android/internal/jank/FrameTracker;Ljava/lang/String;I)V

    return-void
.end method
