.class public final Ldalvik/system/profiler/SamplingProfiler;
.super Ljava/lang/Object;
.source "SamplingProfiler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldalvik/system/profiler/SamplingProfiler$ThreadSet;,
        Ldalvik/system/profiler/SamplingProfiler$ArrayThreadSet;,
        Ldalvik/system/profiler/SamplingProfiler$ThreadGroupThreadSet;,
        Ldalvik/system/profiler/SamplingProfiler$Sampler;
    }
.end annotation


# instance fields
.field private currentThreads:[Ljava/lang/Thread;

.field private final depth:I

.field private final hprofData:Ldalvik/system/profiler/HprofData;

.field private final mutableStackTrace:Ldalvik/system/profiler/HprofData$StackTrace;

.field private nextObjectId:I

.field private nextStackTraceId:I

.field private nextThreadId:I

.field private sampler:Ldalvik/system/profiler/SamplingProfiler$Sampler;

.field private final stackTraces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ldalvik/system/profiler/HprofData$StackTrace;",
            "[I>;"
        }
    .end annotation
.end field

.field private final threadIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final threadSampler:Ldalvik/system/profiler/ThreadSampler;

.field private final threadSet:Ldalvik/system/profiler/SamplingProfiler$ThreadSet;

.field private final timer:Ljava/util/Timer;


# direct methods
.method static synthetic -get0(Ldalvik/system/profiler/SamplingProfiler;)[Ljava/lang/Thread;
    .locals 1

    #@0
    iget-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->currentThreads:[Ljava/lang/Thread;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Ldalvik/system/profiler/SamplingProfiler;)Ldalvik/system/profiler/HprofData;
    .locals 1

    #@0
    iget-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->hprofData:Ldalvik/system/profiler/HprofData;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Ldalvik/system/profiler/SamplingProfiler;)Ldalvik/system/profiler/HprofData$StackTrace;
    .locals 1

    #@0
    iget-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->mutableStackTrace:Ldalvik/system/profiler/HprofData$StackTrace;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Ldalvik/system/profiler/SamplingProfiler;)I
    .locals 1

    #@0
    iget v0, p0, Ldalvik/system/profiler/SamplingProfiler;->nextObjectId:I

    #@2
    return v0
.end method

.method static synthetic -get4(Ldalvik/system/profiler/SamplingProfiler;)I
    .locals 1

    #@0
    iget v0, p0, Ldalvik/system/profiler/SamplingProfiler;->nextStackTraceId:I

    #@2
    return v0
.end method

.method static synthetic -get5(Ldalvik/system/profiler/SamplingProfiler;)I
    .locals 1

    #@0
    iget v0, p0, Ldalvik/system/profiler/SamplingProfiler;->nextThreadId:I

    #@2
    return v0
.end method

.method static synthetic -get6(Ldalvik/system/profiler/SamplingProfiler;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->stackTraces:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Ldalvik/system/profiler/SamplingProfiler;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->threadIds:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Ldalvik/system/profiler/SamplingProfiler;)Ldalvik/system/profiler/ThreadSampler;
    .locals 1

    #@0
    iget-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->threadSampler:Ldalvik/system/profiler/ThreadSampler;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Ldalvik/system/profiler/SamplingProfiler;)Ldalvik/system/profiler/SamplingProfiler$ThreadSet;
    .locals 1

    #@0
    iget-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->threadSet:Ldalvik/system/profiler/SamplingProfiler$ThreadSet;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Ldalvik/system/profiler/SamplingProfiler;[Ljava/lang/Thread;)[Ljava/lang/Thread;
    .locals 0

    #@0
    iput-object p1, p0, Ldalvik/system/profiler/SamplingProfiler;->currentThreads:[Ljava/lang/Thread;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Ldalvik/system/profiler/SamplingProfiler;I)I
    .locals 0

    #@0
    iput p1, p0, Ldalvik/system/profiler/SamplingProfiler;->nextObjectId:I

    #@2
    return p1
.end method

.method static synthetic -set2(Ldalvik/system/profiler/SamplingProfiler;I)I
    .locals 0

    #@0
    iput p1, p0, Ldalvik/system/profiler/SamplingProfiler;->nextStackTraceId:I

    #@2
    return p1
.end method

.method static synthetic -set3(Ldalvik/system/profiler/SamplingProfiler;I)I
    .locals 0

    #@0
    iput p1, p0, Ldalvik/system/profiler/SamplingProfiler;->nextThreadId:I

    #@2
    return p1
.end method

.method public constructor <init>(ILdalvik/system/profiler/SamplingProfiler$ThreadSet;)V
    .locals 3
    .param p1, "depth"    # I
    .param p2, "threadSet"    # Ldalvik/system/profiler/SamplingProfiler$ThreadSet;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 63
    new-instance v0, Ljava/util/HashMap;

    #@6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@9
    .line 62
    iput-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->stackTraces:Ljava/util/Map;

    #@b
    .line 68
    new-instance v0, Ldalvik/system/profiler/HprofData;

    #@d
    iget-object v1, p0, Ldalvik/system/profiler/SamplingProfiler;->stackTraces:Ljava/util/Map;

    #@f
    invoke-direct {v0, v1}, Ldalvik/system/profiler/HprofData;-><init>(Ljava/util/Map;)V

    #@12
    iput-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->hprofData:Ldalvik/system/profiler/HprofData;

    #@14
    .line 73
    new-instance v0, Ljava/util/Timer;

    #@16
    const-string/jumbo v1, "SamplingProfiler"

    #@19
    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    #@1c
    iput-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->timer:Ljava/util/Timer;

    #@1e
    .line 99
    const v0, 0x30d41

    #@21
    iput v0, p0, Ldalvik/system/profiler/SamplingProfiler;->nextThreadId:I

    #@23
    .line 100
    const v0, 0x493e1

    #@26
    iput v0, p0, Ldalvik/system/profiler/SamplingProfiler;->nextStackTraceId:I

    #@28
    .line 101
    iput v2, p0, Ldalvik/system/profiler/SamplingProfiler;->nextObjectId:I

    #@2a
    .line 107
    const/4 v0, 0x0

    #@2b
    new-array v0, v0, [Ljava/lang/Thread;

    #@2d
    iput-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->currentThreads:[Ljava/lang/Thread;

    #@2f
    .line 114
    new-instance v0, Ljava/util/HashMap;

    #@31
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@34
    iput-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->threadIds:Ljava/util/Map;

    #@36
    .line 123
    new-instance v0, Ldalvik/system/profiler/HprofData$StackTrace;

    #@38
    invoke-direct {v0}, Ldalvik/system/profiler/HprofData$StackTrace;-><init>()V

    #@3b
    iput-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->mutableStackTrace:Ldalvik/system/profiler/HprofData$StackTrace;

    #@3d
    .line 156
    iput p1, p0, Ldalvik/system/profiler/SamplingProfiler;->depth:I

    #@3f
    .line 157
    iput-object p2, p0, Ldalvik/system/profiler/SamplingProfiler;->threadSet:Ldalvik/system/profiler/SamplingProfiler$ThreadSet;

    #@41
    .line 158
    invoke-static {}, Ldalvik/system/profiler/SamplingProfiler;->findDefaultThreadSampler()Ldalvik/system/profiler/ThreadSampler;

    #@44
    move-result-object v0

    #@45
    iput-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->threadSampler:Ldalvik/system/profiler/ThreadSampler;

    #@47
    .line 159
    iget-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->threadSampler:Ldalvik/system/profiler/ThreadSampler;

    #@49
    invoke-interface {v0, p1}, Ldalvik/system/profiler/ThreadSampler;->setDepth(I)V

    #@4c
    .line 160
    iget-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->hprofData:Ldalvik/system/profiler/HprofData;

    #@4e
    sget-object v1, Ldalvik/system/profiler/BinaryHprof$ControlSettings;->CPU_SAMPLING:Ldalvik/system/profiler/BinaryHprof$ControlSettings;

    #@50
    iget v1, v1, Ldalvik/system/profiler/BinaryHprof$ControlSettings;->bitmask:I

    #@52
    invoke-virtual {v0, v1}, Ldalvik/system/profiler/HprofData;->setFlags(I)V

    #@55
    .line 161
    iget-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->hprofData:Ldalvik/system/profiler/HprofData;

    #@57
    invoke-virtual {v0, p1}, Ldalvik/system/profiler/HprofData;->setDepth(I)V

    #@5a
    .line 155
    return-void
.end method

.method private static findDefaultThreadSampler()Ldalvik/system/profiler/ThreadSampler;
    .locals 5

    #@0
    .prologue
    .line 165
    const-string/jumbo v2, "Dalvik Core Library"

    #@3
    const-string/jumbo v3, "java.specification.name"

    #@6
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 166
    const-string/jumbo v0, "dalvik.system.profiler.DalvikThreadSampler"

    #@13
    .line 168
    .local v0, "className":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    check-cast v2, Ldalvik/system/profiler/ThreadSampler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    return-object v2

    #@1e
    .line 169
    :catch_0
    move-exception v1

    #@1f
    .line 170
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@21
    new-instance v3, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v4, "Problem creating "

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    const-string/jumbo v4, ": "

    #@34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@43
    .line 173
    :cond_0
    new-instance v2, Ldalvik/system/profiler/PortableThreadSampler;

    #@45
    invoke-direct {v2}, Ldalvik/system/profiler/PortableThreadSampler;-><init>()V

    #@48
    return-object v2
.end method

.method public static varargs newArrayThreadSet([Ljava/lang/Thread;)Ldalvik/system/profiler/SamplingProfiler$ThreadSet;
    .locals 1
    .param p0, "threads"    # [Ljava/lang/Thread;

    #@0
    .prologue
    .line 196
    new-instance v0, Ldalvik/system/profiler/SamplingProfiler$ArrayThreadSet;

    #@2
    invoke-direct {v0, p0}, Ldalvik/system/profiler/SamplingProfiler$ArrayThreadSet;-><init>([Ljava/lang/Thread;)V

    #@5
    return-object v0
.end method

.method public static newThreadGroupThreadSet(Ljava/lang/ThreadGroup;)Ldalvik/system/profiler/SamplingProfiler$ThreadSet;
    .locals 1
    .param p0, "threadGroup"    # Ljava/lang/ThreadGroup;

    #@0
    .prologue
    .line 222
    new-instance v0, Ldalvik/system/profiler/SamplingProfiler$ThreadGroupThreadSet;

    #@2
    invoke-direct {v0, p0}, Ldalvik/system/profiler/SamplingProfiler$ThreadGroupThreadSet;-><init>(Ljava/lang/ThreadGroup;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public getHprofData()Ldalvik/system/profiler/HprofData;
    .locals 2

    #@0
    .prologue
    .line 326
    iget-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->sampler:Ldalvik/system/profiler/SamplingProfiler$Sampler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 327
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "cannot access hprof data while sampling"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 329
    :cond_0
    iget-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->hprofData:Ldalvik/system/profiler/HprofData;

    #@f
    return-object v0
.end method

.method public shutdown()V
    .locals 1

    #@0
    .prologue
    .line 315
    invoke-virtual {p0}, Ldalvik/system/profiler/SamplingProfiler;->stop()V

    #@3
    .line 316
    iget-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->timer:Ljava/util/Timer;

    #@5
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    #@8
    .line 314
    return-void
.end method

.method public start(I)V
    .locals 6
    .param p1, "interval"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 277
    const/4 v0, 0x1

    #@2
    if-ge p1, v0, :cond_0

    #@4
    .line 278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "interval < 1"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 280
    :cond_0
    iget-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->sampler:Ldalvik/system/profiler/SamplingProfiler$Sampler;

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 281
    new-instance v0, Ljava/lang/IllegalStateException;

    #@13
    const-string/jumbo v1, "profiling already started"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 283
    :cond_1
    new-instance v0, Ldalvik/system/profiler/SamplingProfiler$Sampler;

    #@1c
    invoke-direct {v0, p0, v1}, Ldalvik/system/profiler/SamplingProfiler$Sampler;-><init>(Ldalvik/system/profiler/SamplingProfiler;Ldalvik/system/profiler/SamplingProfiler$Sampler;)V

    #@1f
    iput-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->sampler:Ldalvik/system/profiler/SamplingProfiler$Sampler;

    #@21
    .line 284
    iget-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->hprofData:Ldalvik/system/profiler/HprofData;

    #@23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@26
    move-result-wide v2

    #@27
    invoke-virtual {v0, v2, v3}, Ldalvik/system/profiler/HprofData;->setStartMillis(J)V

    #@2a
    .line 285
    iget-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->timer:Ljava/util/Timer;

    #@2c
    iget-object v1, p0, Ldalvik/system/profiler/SamplingProfiler;->sampler:Ldalvik/system/profiler/SamplingProfiler$Sampler;

    #@2e
    const-wide/16 v2, 0x0

    #@30
    int-to-long v4, p1

    #@31
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    #@34
    .line 276
    return-void
.end method

.method public stop()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 293
    iget-object v1, p0, Ldalvik/system/profiler/SamplingProfiler;->sampler:Ldalvik/system/profiler/SamplingProfiler$Sampler;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 294
    return-void

    #@6
    .line 296
    :cond_0
    iget-object v2, p0, Ldalvik/system/profiler/SamplingProfiler;->sampler:Ldalvik/system/profiler/SamplingProfiler$Sampler;

    #@8
    monitor-enter v2

    #@9
    .line 297
    :try_start_0
    iget-object v1, p0, Ldalvik/system/profiler/SamplingProfiler;->sampler:Ldalvik/system/profiler/SamplingProfiler$Sampler;

    #@b
    const/4 v3, 0x1

    #@c
    invoke-static {v1, v3}, Ldalvik/system/profiler/SamplingProfiler$Sampler;->-set0(Ldalvik/system/profiler/SamplingProfiler$Sampler;Z)Z

    #@f
    .line 298
    :goto_0
    iget-object v1, p0, Ldalvik/system/profiler/SamplingProfiler;->sampler:Ldalvik/system/profiler/SamplingProfiler$Sampler;

    #@11
    invoke-static {v1}, Ldalvik/system/profiler/SamplingProfiler$Sampler;->-get0(Ldalvik/system/profiler/SamplingProfiler$Sampler;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v1

    #@15
    if-nez v1, :cond_1

    #@17
    .line 300
    :try_start_1
    iget-object v1, p0, Ldalvik/system/profiler/SamplingProfiler;->sampler:Ldalvik/system/profiler/SamplingProfiler$Sampler;

    #@19
    invoke-virtual {v1}, Ldalvik/system/profiler/SamplingProfiler$Sampler;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    goto :goto_0

    #@1d
    .line 301
    :catch_0
    move-exception v0

    #@1e
    .local v0, "ignored":Ljava/lang/InterruptedException;
    goto :goto_0

    #@1f
    .end local v0    # "ignored":Ljava/lang/InterruptedException;
    :cond_1
    monitor-exit v2

    #@20
    .line 305
    iput-object v4, p0, Ldalvik/system/profiler/SamplingProfiler;->sampler:Ldalvik/system/profiler/SamplingProfiler$Sampler;

    #@22
    .line 292
    return-void

    #@23
    .line 296
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1
.end method
