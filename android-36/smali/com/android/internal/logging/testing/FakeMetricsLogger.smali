.class public Lcom/android/internal/logging/testing/FakeMetricsLogger;
.super Lcom/android/internal/logging/MetricsLogger;
.source "FakeMetricsLogger.java"


# instance fields
.field private blacklist logs:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/metrics/LogMaker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    .line 17
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/logging/testing/FakeMetricsLogger;->logs:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public blacklist getLogs()Ljava/util/Queue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Landroid/metrics/LogMaker;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/android/internal/logging/testing/FakeMetricsLogger;->logs:Ljava/util/Queue;

    return-object v0
.end method

.method public blacklist reset()V
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/android/internal/logging/testing/FakeMetricsLogger;->logs:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 30
    return-void
.end method

.method protected blacklist saveLog(Landroid/metrics/LogMaker;)V
    .registers 3
    .param p1, "log"    # Landroid/metrics/LogMaker;

    .line 21
    iget-object v0, p0, Lcom/android/internal/logging/testing/FakeMetricsLogger;->logs:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method
