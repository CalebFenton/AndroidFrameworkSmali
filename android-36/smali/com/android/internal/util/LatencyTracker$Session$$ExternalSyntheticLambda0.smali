.class public final synthetic Lcom/android/internal/util/LatencyTracker$Session$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/util/LatencyTracker$Session;

.field public final synthetic blacklist f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/util/LatencyTracker$Session;Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/LatencyTracker$Session$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/util/LatencyTracker$Session;

    iput-object p2, p0, Lcom/android/internal/util/LatencyTracker$Session$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker$Session$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/util/LatencyTracker$Session;

    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker$Session$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/internal/util/LatencyTracker$Session;->$r8$lambda$Dzezij23-uI942iyKn2O1MqIAl0(Lcom/android/internal/util/LatencyTracker$Session;Ljava/lang/Runnable;)V

    return-void
.end method
