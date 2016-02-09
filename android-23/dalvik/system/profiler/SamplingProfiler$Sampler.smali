.class Ldalvik/system/profiler/SamplingProfiler$Sampler;
.super Ljava/util/TimerTask;
.source "SamplingProfiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/profiler/SamplingProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Sampler"
.end annotation


# instance fields
.field private stop:Z

.field private stopped:Z

.field final synthetic this$0:Ldalvik/system/profiler/SamplingProfiler;

.field private timerThread:Ljava/lang/Thread;


# direct methods
.method static synthetic -get0(Ldalvik/system/profiler/SamplingProfiler$Sampler;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->stopped:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Ldalvik/system/profiler/SamplingProfiler$Sampler;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->stop:Z

    #@2
    return p1
.end method

.method private constructor <init>(Ldalvik/system/profiler/SamplingProfiler;)V
    .locals 0
    .param p1, "this$0"    # Ldalvik/system/profiler/SamplingProfiler;

    #@0
    .prologue
    .line 344
    iput-object p1, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    #@2
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Ldalvik/system/profiler/SamplingProfiler;Ldalvik/system/profiler/SamplingProfiler$Sampler;)V
    .locals 0
    .param p1, "this$0"    # Ldalvik/system/profiler/SamplingProfiler;

    #@0
    .prologue
    invoke-direct {p0, p1}, Ldalvik/system/profiler/SamplingProfiler$Sampler;-><init>(Ldalvik/system/profiler/SamplingProfiler;)V

    #@3
    return-void
.end method

.method private addEndThread(Ljava/lang/Thread;)V
    .locals 5
    .param p1, "thread"    # Ljava/lang/Thread;

    #@0
    .prologue
    .line 479
    if-nez p1, :cond_0

    #@2
    .line 480
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v3, "thread == null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 482
    :cond_0
    iget-object v2, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    #@d
    invoke-static {v2}, Ldalvik/system/profiler/SamplingProfiler;->-get7(Ldalvik/system/profiler/SamplingProfiler;)Ljava/util/Map;

    #@10
    move-result-object v2

    #@11
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Ljava/lang/Integer;

    #@17
    .line 483
    .local v1, "threadId":Ljava/lang/Integer;
    if-nez v1, :cond_1

    #@19
    .line 484
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1b
    new-instance v3, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v4, "Unknown thread "

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@32
    throw v2

    #@33
    .line 486
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@36
    move-result v2

    #@37
    invoke-static {v2}, Ldalvik/system/profiler/HprofData$ThreadEvent;->end(I)Ldalvik/system/profiler/HprofData$ThreadEvent;

    #@3a
    move-result-object v0

    #@3b
    .line 487
    .local v0, "event":Ldalvik/system/profiler/HprofData$ThreadEvent;
    iget-object v2, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    #@3d
    invoke-static {v2}, Ldalvik/system/profiler/SamplingProfiler;->-get1(Ldalvik/system/profiler/SamplingProfiler;)Ldalvik/system/profiler/HprofData;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v2, v0}, Ldalvik/system/profiler/HprofData;->addThreadEvent(Ldalvik/system/profiler/HprofData$ThreadEvent;)V

    #@44
    .line 478
    return-void
.end method

.method private addStartThread(Ljava/lang/Thread;)V
    .locals 11
    .param p1, "thread"    # Ljava/lang/Thread;

    #@0
    .prologue
    .line 453
    if-nez p1, :cond_0

    #@2
    .line 454
    new-instance v8, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v9, "thread == null"

    #@7
    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v8

    #@b
    .line 456
    :cond_0
    iget-object v8, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    #@d
    invoke-static {v8}, Ldalvik/system/profiler/SamplingProfiler;->-get5(Ldalvik/system/profiler/SamplingProfiler;)I

    #@10
    move-result v6

    #@11
    add-int/lit8 v9, v6, 0x1

    #@13
    invoke-static {v8, v9}, Ldalvik/system/profiler/SamplingProfiler;->-set3(Ldalvik/system/profiler/SamplingProfiler;I)I

    #@16
    .line 457
    .local v6, "threadId":I
    iget-object v8, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    #@18
    invoke-static {v8}, Ldalvik/system/profiler/SamplingProfiler;->-get7(Ldalvik/system/profiler/SamplingProfiler;)Ljava/util/Map;

    #@1b
    move-result-object v8

    #@1c
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v9

    #@20
    invoke-interface {v8, p1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object v3

    #@24
    check-cast v3, Ljava/lang/Integer;

    #@26
    .line 458
    .local v3, "old":Ljava/lang/Integer;
    if-eqz v3, :cond_1

    #@28
    .line 459
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@2a
    new-instance v9, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v10, "Thread already registered as "

    #@32
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v9

    #@36
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v9

    #@3a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v9

    #@3e
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@41
    throw v8

    #@42
    .line 462
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    #@45
    move-result-object v7

    #@46
    .line 464
    .local v7, "threadName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    #@49
    move-result-object v1

    #@4a
    .line 465
    .local v1, "group":Ljava/lang/ThreadGroup;
    if-nez v1, :cond_2

    #@4c
    const/4 v2, 0x0

    #@4d
    .line 466
    :goto_0
    if-nez v1, :cond_3

    #@4f
    const/4 v4, 0x0

    #@50
    .line 467
    :goto_1
    if-nez v4, :cond_4

    #@52
    const/4 v5, 0x0

    #@53
    .line 470
    :goto_2
    iget-object v8, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    #@55
    invoke-static {v8}, Ldalvik/system/profiler/SamplingProfiler;->-get3(Ldalvik/system/profiler/SamplingProfiler;)I

    #@58
    move-result v9

    #@59
    add-int/lit8 v10, v9, 0x1

    #@5b
    invoke-static {v8, v10}, Ldalvik/system/profiler/SamplingProfiler;->-set1(Ldalvik/system/profiler/SamplingProfiler;I)I

    #@5e
    invoke-static {v9, v6, v7, v2, v5}, Ldalvik/system/profiler/HprofData$ThreadEvent;->start(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/profiler/HprofData$ThreadEvent;

    #@61
    move-result-object v0

    #@62
    .line 472
    .local v0, "event":Ldalvik/system/profiler/HprofData$ThreadEvent;
    iget-object v8, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    #@64
    invoke-static {v8}, Ldalvik/system/profiler/SamplingProfiler;->-get1(Ldalvik/system/profiler/SamplingProfiler;)Ldalvik/system/profiler/HprofData;

    #@67
    move-result-object v8

    #@68
    invoke-virtual {v8, v0}, Ldalvik/system/profiler/HprofData;->addThreadEvent(Ldalvik/system/profiler/HprofData$ThreadEvent;)V

    #@6b
    .line 452
    return-void

    #@6c
    .line 465
    .end local v0    # "event":Ldalvik/system/profiler/HprofData$ThreadEvent;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    #@6f
    move-result-object v2

    #@70
    .local v2, "groupName":Ljava/lang/String;
    goto :goto_0

    #@71
    .line 466
    .end local v2    # "groupName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    #@74
    move-result-object v4

    #@75
    .local v4, "parentGroup":Ljava/lang/ThreadGroup;
    goto :goto_1

    #@76
    .line 467
    .end local v4    # "parentGroup":Ljava/lang/ThreadGroup;
    :cond_4
    invoke-virtual {v4}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    #@79
    move-result-object v5

    #@7a
    .local v5, "parentGroupName":Ljava/lang/String;
    goto :goto_2
.end method

.method private recordStackTrace(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;)V
    .locals 7
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "stackFrames"    # [Ljava/lang/StackTraceElement;

    #@0
    .prologue
    .line 395
    iget-object v4, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    #@2
    invoke-static {v4}, Ldalvik/system/profiler/SamplingProfiler;->-get7(Ldalvik/system/profiler/SamplingProfiler;)Ljava/util/Map;

    #@5
    move-result-object v4

    #@6
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v3

    #@a
    check-cast v3, Ljava/lang/Integer;

    #@c
    .line 396
    .local v3, "threadId":Ljava/lang/Integer;
    if-nez v3, :cond_0

    #@e
    .line 397
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@10
    new-instance v5, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v6, "Unknown thread "

    #@18
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v5

    #@1c
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v5

    #@24
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v4

    #@28
    .line 399
    :cond_0
    iget-object v4, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    #@2a
    invoke-static {v4}, Ldalvik/system/profiler/SamplingProfiler;->-get2(Ldalvik/system/profiler/SamplingProfiler;)Ldalvik/system/profiler/HprofData$StackTrace;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@31
    move-result v5

    #@32
    iput v5, v4, Ldalvik/system/profiler/HprofData$StackTrace;->threadId:I

    #@34
    .line 400
    iget-object v4, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    #@36
    invoke-static {v4}, Ldalvik/system/profiler/SamplingProfiler;->-get2(Ldalvik/system/profiler/SamplingProfiler;)Ldalvik/system/profiler/HprofData$StackTrace;

    #@39
    move-result-object v4

    #@3a
    iput-object p2, v4, Ldalvik/system/profiler/HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    #@3c
    .line 402
    iget-object v4, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    #@3e
    invoke-static {v4}, Ldalvik/system/profiler/SamplingProfiler;->-get6(Ldalvik/system/profiler/SamplingProfiler;)Ljava/util/Map;

    #@41
    move-result-object v4

    #@42
    iget-object v5, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    #@44
    invoke-static {v5}, Ldalvik/system/profiler/SamplingProfiler;->-get2(Ldalvik/system/profiler/SamplingProfiler;)Ldalvik/system/profiler/HprofData$StackTrace;

    #@47
    move-result-object v5

    #@48
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4b
    move-result-object v0

    #@4c
    check-cast v0, [I

    #@4e
    .line 403
    .local v0, "countCell":[I
    if-nez v0, :cond_1

    #@50
    .line 404
    const/4 v4, 0x1

    #@51
    new-array v0, v4, [I

    #@53
    .line 406
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@56
    move-result-object v1

    #@57
    check-cast v1, [Ljava/lang/StackTraceElement;

    #@59
    .line 408
    .local v1, "stackFramesCopy":[Ljava/lang/StackTraceElement;
    new-instance v2, Ldalvik/system/profiler/HprofData$StackTrace;

    #@5b
    iget-object v4, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    #@5d
    invoke-static {v4}, Ldalvik/system/profiler/SamplingProfiler;->-get4(Ldalvik/system/profiler/SamplingProfiler;)I

    #@60
    move-result v5

    #@61
    add-int/lit8 v6, v5, 0x1

    #@63
    invoke-static {v4, v6}, Ldalvik/system/profiler/SamplingProfiler;->-set2(Ldalvik/system/profiler/SamplingProfiler;I)I

    #@66
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@69
    move-result v4

    #@6a
    invoke-direct {v2, v5, v4, v1}, Ldalvik/system/profiler/HprofData$StackTrace;-><init>(II[Ljava/lang/StackTraceElement;)V

    #@6d
    .line 409
    .local v2, "stackTrace":Ldalvik/system/profiler/HprofData$StackTrace;
    iget-object v4, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    #@6f
    invoke-static {v4}, Ldalvik/system/profiler/SamplingProfiler;->-get1(Ldalvik/system/profiler/SamplingProfiler;)Ldalvik/system/profiler/HprofData;

    #@72
    move-result-object v4

    #@73
    invoke-virtual {v4, v2, v0}, Ldalvik/system/profiler/HprofData;->addStackTrace(Ldalvik/system/profiler/HprofData$StackTrace;[I)V

    #@76
    .line 411
    .end local v1    # "stackFramesCopy":[Ljava/lang/StackTraceElement;
    .end local v2    # "stackTrace":Ldalvik/system/profiler/HprofData$StackTrace;
    :cond_1
    const/4 v4, 0x0

    #@77
    aget v5, v0, v4

    #@79
    add-int/lit8 v5, v5, 0x1

    #@7b
    aput v5, v0, v4

    #@7d
    .line 394
    return-void
.end method

.method private updateThreadHistory([Ljava/lang/Thread;[Ljava/lang/Thread;)V
    .locals 7
    .param p1, "oldThreads"    # [Ljava/lang/Thread;
    .param p2, "newThreads"    # [Ljava/lang/Thread;

    #@0
    .prologue
    .line 418
    new-instance v1, Ljava/util/HashSet;

    #@2
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@5
    move-result-object v6

    #@6
    invoke-direct {v1, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@9
    .line 419
    .local v1, "n":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Thread;>;"
    new-instance v2, Ljava/util/HashSet;

    #@b
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@e
    move-result-object v6

    #@f
    invoke-direct {v2, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@12
    .line 422
    .local v2, "o":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Thread;>;"
    new-instance v0, Ljava/util/HashSet;

    #@14
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@17
    .line 423
    .local v0, "added":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Thread;>;"
    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    #@1a
    .line 426
    new-instance v3, Ljava/util/HashSet;

    #@1c
    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@1f
    .line 427
    .local v3, "removed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Thread;>;"
    invoke-interface {v3, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    #@22
    .line 429
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v5

    #@26
    .local v5, "thread$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v6

    #@2a
    if-eqz v6, :cond_1

    #@2c
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v4

    #@30
    check-cast v4, Ljava/lang/Thread;

    #@32
    .line 430
    .local v4, "thread":Ljava/lang/Thread;
    if-eqz v4, :cond_0

    #@34
    .line 433
    iget-object v6, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->timerThread:Ljava/lang/Thread;

    #@36
    if-eq v4, v6, :cond_0

    #@38
    .line 436
    invoke-direct {p0, v4}, Ldalvik/system/profiler/SamplingProfiler$Sampler;->addStartThread(Ljava/lang/Thread;)V

    #@3b
    goto :goto_0

    #@3c
    .line 438
    .end local v4    # "thread":Ljava/lang/Thread;
    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3f
    move-result-object v5

    #@40
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@43
    move-result v6

    #@44
    if-eqz v6, :cond_3

    #@46
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@49
    move-result-object v4

    #@4a
    check-cast v4, Ljava/lang/Thread;

    #@4c
    .line 439
    .restart local v4    # "thread":Ljava/lang/Thread;
    if-eqz v4, :cond_2

    #@4e
    .line 442
    iget-object v6, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->timerThread:Ljava/lang/Thread;

    #@50
    if-eq v4, v6, :cond_2

    #@52
    .line 445
    invoke-direct {p0, v4}, Ldalvik/system/profiler/SamplingProfiler$Sampler;->addEndThread(Ljava/lang/Thread;)V

    #@55
    goto :goto_1

    #@56
    .line 414
    .end local v4    # "thread":Ljava/lang/Thread;
    :cond_3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    #@0
    .prologue
    .line 352
    monitor-enter p0

    #@1
    .line 353
    :try_start_0
    iget-boolean v3, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->stop:Z

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 354
    invoke-virtual {p0}, Ldalvik/system/profiler/SamplingProfiler$Sampler;->cancel()Z

    #@8
    .line 355
    const/4 v3, 0x1

    #@9
    iput-boolean v3, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->stopped:Z

    #@b
    .line 356
    invoke-virtual {p0}, Ldalvik/system/profiler/SamplingProfiler$Sampler;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit p0

    #@f
    .line 357
    return-void

    #@10
    :cond_0
    monitor-exit p0

    #@11
    .line 361
    iget-object v3, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->timerThread:Ljava/lang/Thread;

    #@13
    if-nez v3, :cond_1

    #@15
    .line 362
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@18
    move-result-object v3

    #@19
    iput-object v3, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->timerThread:Ljava/lang/Thread;

    #@1b
    .line 368
    :cond_1
    iget-object v3, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    #@1d
    invoke-static {v3}, Ldalvik/system/profiler/SamplingProfiler;->-get9(Ldalvik/system/profiler/SamplingProfiler;)Ldalvik/system/profiler/SamplingProfiler$ThreadSet;

    #@20
    move-result-object v3

    #@21
    invoke-interface {v3}, Ldalvik/system/profiler/SamplingProfiler$ThreadSet;->threads()[Ljava/lang/Thread;

    #@24
    move-result-object v0

    #@25
    .line 369
    .local v0, "newThreads":[Ljava/lang/Thread;
    iget-object v3, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    #@27
    invoke-static {v3}, Ldalvik/system/profiler/SamplingProfiler;->-get0(Ldalvik/system/profiler/SamplingProfiler;)[Ljava/lang/Thread;

    #@2a
    move-result-object v3

    #@2b
    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@2e
    move-result v3

    #@2f
    if-nez v3, :cond_2

    #@31
    .line 370
    iget-object v3, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    #@33
    invoke-static {v3}, Ldalvik/system/profiler/SamplingProfiler;->-get0(Ldalvik/system/profiler/SamplingProfiler;)[Ljava/lang/Thread;

    #@36
    move-result-object v3

    #@37
    invoke-direct {p0, v3, v0}, Ldalvik/system/profiler/SamplingProfiler$Sampler;->updateThreadHistory([Ljava/lang/Thread;[Ljava/lang/Thread;)V

    #@3a
    .line 371
    iget-object v4, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    #@3c
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3f
    move-result-object v3

    #@40
    check-cast v3, [Ljava/lang/Thread;

    #@42
    invoke-static {v4, v3}, Ldalvik/system/profiler/SamplingProfiler;->-set0(Ldalvik/system/profiler/SamplingProfiler;[Ljava/lang/Thread;)[Ljava/lang/Thread;

    #@45
    .line 374
    :cond_2
    iget-object v3, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    #@47
    invoke-static {v3}, Ldalvik/system/profiler/SamplingProfiler;->-get0(Ldalvik/system/profiler/SamplingProfiler;)[Ljava/lang/Thread;

    #@4a
    move-result-object v4

    #@4b
    const/4 v3, 0x0

    #@4c
    array-length v5, v4

    #@4d
    :goto_0
    if-ge v3, v5, :cond_3

    #@4f
    aget-object v2, v4, v3

    #@51
    .line 375
    .local v2, "thread":Ljava/lang/Thread;
    if-nez v2, :cond_4

    #@53
    .line 351
    .end local v2    # "thread":Ljava/lang/Thread;
    :cond_3
    return-void

    #@54
    .line 352
    .end local v0    # "newThreads":[Ljava/lang/Thread;
    :catchall_0
    move-exception v3

    #@55
    monitor-exit p0

    #@56
    throw v3

    #@57
    .line 378
    .restart local v0    # "newThreads":[Ljava/lang/Thread;
    .restart local v2    # "thread":Ljava/lang/Thread;
    :cond_4
    iget-object v6, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->timerThread:Ljava/lang/Thread;

    #@59
    if-ne v2, v6, :cond_6

    #@5b
    .line 374
    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@5d
    goto :goto_0

    #@5e
    .line 382
    :cond_6
    iget-object v6, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    #@60
    invoke-static {v6}, Ldalvik/system/profiler/SamplingProfiler;->-get8(Ldalvik/system/profiler/SamplingProfiler;)Ldalvik/system/profiler/ThreadSampler;

    #@63
    move-result-object v6

    #@64
    invoke-interface {v6, v2}, Ldalvik/system/profiler/ThreadSampler;->getStackTrace(Ljava/lang/Thread;)[Ljava/lang/StackTraceElement;

    #@67
    move-result-object v1

    #@68
    .line 383
    .local v1, "stackFrames":[Ljava/lang/StackTraceElement;
    if-eqz v1, :cond_5

    #@6a
    .line 386
    invoke-direct {p0, v2, v1}, Ldalvik/system/profiler/SamplingProfiler$Sampler;->recordStackTrace(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;)V

    #@6d
    goto :goto_1
.end method
