.class public final synthetic Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/util/LatencyTracker;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/util/LatencyTracker;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/util/LatencyTracker;

    iput p2, p0, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/util/LatencyTracker;

    iget v1, p0, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Lcom/android/internal/util/LatencyTracker;->$r8$lambda$bfKG0XUlZp6yLm2EoLfYk1sdLw8(Lcom/android/internal/util/LatencyTracker;I)V

    return-void
.end method
