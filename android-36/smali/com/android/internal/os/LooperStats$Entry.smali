.class Lcom/android/internal/os/LooperStats$Entry;
.super Ljava/lang/Object;
.source "LooperStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/LooperStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field public blacklist cpuUsageMicro:J

.field public blacklist delayMillis:J

.field public blacklist exceptionCount:J

.field public final blacklist handler:Landroid/os/Handler;

.field public final blacklist isInteractive:Z

.field public blacklist maxCpuUsageMicro:J

.field public blacklist maxDelayMillis:J

.field public blacklist maxLatencyMicro:J

.field public blacklist messageCount:J

.field public final blacklist messageName:Ljava/lang/String;

.field public blacklist recordedDelayMessageCount:J

.field public blacklist recordedMessageCount:J

.field public blacklist totalLatencyMicro:J

.field public final blacklist workSourceUid:I


# direct methods
.method constructor blacklist <init>(Landroid/os/Message;Z)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "isInteractive"    # Z

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    iget v0, p1, Landroid/os/Message;->workSourceUid:I

    iput v0, p0, Lcom/android/internal/os/LooperStats$Entry;->workSourceUid:I

    .line 322
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/LooperStats$Entry;->handler:Landroid/os/Handler;

    .line 323
    iget-object v0, p0, Lcom/android/internal/os/LooperStats$Entry;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->getMessageName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/LooperStats$Entry;->messageName:Ljava/lang/String;

    .line 324
    iput-boolean p2, p0, Lcom/android/internal/os/LooperStats$Entry;->isInteractive:Z

    .line 325
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "specialEntryName"    # Ljava/lang/String;

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/LooperStats$Entry;->workSourceUid:I

    .line 329
    iput-object p1, p0, Lcom/android/internal/os/LooperStats$Entry;->messageName:Ljava/lang/String;

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/LooperStats$Entry;->handler:Landroid/os/Handler;

    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/LooperStats$Entry;->isInteractive:Z

    .line 332
    return-void
.end method

.method static blacklist idFor(Landroid/os/Message;Z)I
    .registers 5
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "isInteractive"    # Z

    .line 348
    const/4 v0, 0x7

    .line 349
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/os/Message;->workSourceUid:I

    add-int/2addr v1, v2

    .line 350
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    invoke-virtual {p0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 351
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 352
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    if-eqz p1, :cond_2f

    const/16 v2, 0x4cf

    goto :goto_31

    :cond_2f
    const/16 v2, 0x4d5

    :goto_31
    add-int/2addr v0, v2

    .line 353
    .end local v1    # "result":I
    .restart local v0    # "result":I
    invoke-virtual {p0}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_48

    .line 354
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1

    .line 356
    :cond_48
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/os/Message;->what:I

    add-int/2addr v1, v2

    return v1
.end method


# virtual methods
.method blacklist reset()V
    .registers 3

    .line 335
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$Entry;->messageCount:J

    .line 336
    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$Entry;->recordedMessageCount:J

    .line 337
    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$Entry;->exceptionCount:J

    .line 338
    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$Entry;->totalLatencyMicro:J

    .line 339
    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$Entry;->maxLatencyMicro:J

    .line 340
    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$Entry;->cpuUsageMicro:J

    .line 341
    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$Entry;->maxCpuUsageMicro:J

    .line 342
    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$Entry;->delayMillis:J

    .line 343
    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$Entry;->maxDelayMillis:J

    .line 344
    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$Entry;->recordedDelayMessageCount:J

    .line 345
    return-void
.end method
