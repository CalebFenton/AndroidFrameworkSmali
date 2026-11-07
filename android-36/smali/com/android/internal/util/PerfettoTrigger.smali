.class public Lcom/android/internal/util/PerfettoTrigger;
.super Ljava/lang/Object;
.source "PerfettoTrigger.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "PerfettoTrigger"

.field private static final blacklist THROTTLE_MILLIS:J = 0x493e0L

.field private static final blacklist TRIGGER_COMMAND:Ljava/lang/String; = "/system/bin/trigger_perfetto"

.field private static final blacklist sLastInvocationPerTrigger:Landroid/util/SparseLongArray;

.field private static final blacklist sLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Landroid/util/SparseLongArray;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/SparseLongArray;-><init>(I)V

    sput-object v0, Lcom/android/internal/util/PerfettoTrigger;->sLastInvocationPerTrigger:Landroid/util/SparseLongArray;

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/util/PerfettoTrigger;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist trigger(Ljava/lang/String;)V
    .registers 10
    .param p0, "triggerName"    # Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/android/internal/util/PerfettoTrigger;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 45
    :try_start_3
    sget-object v1, Lcom/android/internal/util/PerfettoTrigger;->sLastInvocationPerTrigger:Landroid/util/SparseLongArray;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v1

    .line 46
    .local v1, "lastTrigger":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 47
    .local v3, "sinceLastTrigger":J
    const-wide/32 v5, 0x493e0

    cmp-long v5, v3, v5

    if-gez v5, :cond_39

    .line 48
    const-string v5, "PerfettoTrigger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not triggering "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - not enough time since last trigger"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    monitor-exit v0

    return-void

    .line 53
    :cond_39
    sget-object v5, Lcom/android/internal/util/PerfettoTrigger;->sLastInvocationPerTrigger:Landroid/util/SparseLongArray;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 54
    .end local v1    # "lastTrigger":J
    .end local v3    # "sinceLastTrigger":J
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_93

    .line 57
    :try_start_47
    new-instance v0, Ljava/lang/ProcessBuilder;

    const-string v1, "/system/bin/trigger_perfetto"

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 58
    .local v0, "pb":Ljava/lang/ProcessBuilder;
    const-string v1, "PerfettoTrigger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Triggering "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->command()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_77} :catch_79

    .line 62
    nop

    .end local v0    # "pb":Ljava/lang/ProcessBuilder;
    goto :goto_92

    .line 60
    :catch_79
    move-exception v0

    .line 61
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "PerfettoTrigger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to trigger "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .end local v0    # "e":Ljava/io/IOException;
    :goto_92
    return-void

    .line 54
    :catchall_93
    move-exception v1

    :try_start_94
    monitor-exit v0
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    throw v1
.end method
