.class public Lcom/android/internal/os/LooperStats$ExportedEntry;
.super Ljava/lang/Object;
.source "LooperStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/LooperStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExportedEntry"
.end annotation


# instance fields
.field public final blacklist cpuUsageMicros:J

.field public final blacklist delayMillis:J

.field public final blacklist exceptionCount:J

.field public final blacklist handlerClassName:Ljava/lang/String;

.field public final blacklist isInteractive:Z

.field public final blacklist maxCpuUsageMicros:J

.field public final blacklist maxDelayMillis:J

.field public final blacklist maxLatencyMicros:J

.field public final blacklist messageCount:J

.field public final blacklist messageName:Ljava/lang/String;

.field public final blacklist recordedDelayMessageCount:J

.field public final blacklist recordedMessageCount:J

.field public final blacklist threadName:Ljava/lang/String;

.field public final blacklist totalLatencyMicros:J

.field public final blacklist workSourceUid:I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/os/LooperStats$Entry;)V
    .registers 4
    .param p1, "entry"    # Lcom/android/internal/os/LooperStats$Entry;

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    iget v0, p1, Lcom/android/internal/os/LooperStats$Entry;->workSourceUid:I

    iput v0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->workSourceUid:I

    .line 381
    iget-object v0, p1, Lcom/android/internal/os/LooperStats$Entry;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_28

    .line 382
    iget-object v0, p1, Lcom/android/internal/os/LooperStats$Entry;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->handlerClassName:Ljava/lang/String;

    .line 383
    iget-object v0, p1, Lcom/android/internal/os/LooperStats$Entry;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->threadName:Ljava/lang/String;

    goto :goto_2e

    .line 386
    :cond_28
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->handlerClassName:Ljava/lang/String;

    .line 387
    iput-object v0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->threadName:Ljava/lang/String;

    .line 389
    :goto_2e
    iget-boolean v0, p1, Lcom/android/internal/os/LooperStats$Entry;->isInteractive:Z

    iput-boolean v0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->isInteractive:Z

    .line 390
    iget-object v0, p1, Lcom/android/internal/os/LooperStats$Entry;->messageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageName:Ljava/lang/String;

    .line 391
    iget-wide v0, p1, Lcom/android/internal/os/LooperStats$Entry;->messageCount:J

    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageCount:J

    .line 392
    iget-wide v0, p1, Lcom/android/internal/os/LooperStats$Entry;->recordedMessageCount:J

    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->recordedMessageCount:J

    .line 393
    iget-wide v0, p1, Lcom/android/internal/os/LooperStats$Entry;->exceptionCount:J

    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->exceptionCount:J

    .line 394
    iget-wide v0, p1, Lcom/android/internal/os/LooperStats$Entry;->totalLatencyMicro:J

    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->totalLatencyMicros:J

    .line 395
    iget-wide v0, p1, Lcom/android/internal/os/LooperStats$Entry;->maxLatencyMicro:J

    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxLatencyMicros:J

    .line 396
    iget-wide v0, p1, Lcom/android/internal/os/LooperStats$Entry;->cpuUsageMicro:J

    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->cpuUsageMicros:J

    .line 397
    iget-wide v0, p1, Lcom/android/internal/os/LooperStats$Entry;->maxCpuUsageMicro:J

    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxCpuUsageMicros:J

    .line 398
    iget-wide v0, p1, Lcom/android/internal/os/LooperStats$Entry;->delayMillis:J

    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->delayMillis:J

    .line 399
    iget-wide v0, p1, Lcom/android/internal/os/LooperStats$Entry;->maxDelayMillis:J

    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxDelayMillis:J

    .line 400
    iget-wide v0, p1, Lcom/android/internal/os/LooperStats$Entry;->recordedDelayMessageCount:J

    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->recordedDelayMessageCount:J

    .line 401
    return-void
.end method
