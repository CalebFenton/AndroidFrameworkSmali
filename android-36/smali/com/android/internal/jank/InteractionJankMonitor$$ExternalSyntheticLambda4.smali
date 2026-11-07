.class public final synthetic Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/jank/InteractionJankMonitor;

.field public final synthetic blacklist f$1:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$Configuration;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda4;->f$0:Lcom/android/internal/jank/InteractionJankMonitor;

    iput-object p2, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda4;->f$1:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    iput p3, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda4;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda4;->f$0:Lcom/android/internal/jank/InteractionJankMonitor;

    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda4;->f$1:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    iget v2, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda4;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/jank/InteractionJankMonitor;->$r8$lambda$2OwsMSNHWzY8kGI7JUtxMziIFyQ(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$Configuration;I)Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;

    move-result-object v0

    return-object v0
.end method
