.class public final Ldalvik/system/profiler/HprofData;
.super Ljava/lang/Object;
.source "HprofData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldalvik/system/profiler/HprofData$ThreadEventType;,
        Ldalvik/system/profiler/HprofData$ThreadEvent;,
        Ldalvik/system/profiler/HprofData$StackTrace;,
        Ldalvik/system/profiler/HprofData$Sample;
    }
.end annotation


# static fields
.field private static synthetic -dalvik_system_profiler_HprofData$ThreadEventTypeSwitchesValues:[I


# instance fields
.field private depth:I

.field private flags:I

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

.field private startMillis:J

.field private final threadHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldalvik/system/profiler/HprofData$ThreadEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final threadIdToThreadEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ldalvik/system/profiler/HprofData$ThreadEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic -getdalvik_system_profiler_HprofData$ThreadEventTypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Ldalvik/system/profiler/HprofData;->-dalvik_system_profiler_HprofData$ThreadEventTypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Ldalvik/system/profiler/HprofData;->-dalvik_system_profiler_HprofData$ThreadEventTypeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Ldalvik/system/profiler/HprofData$ThreadEventType;->values()[Ldalvik/system/profiler/HprofData$ThreadEventType;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Ldalvik/system/profiler/HprofData$ThreadEventType;->END:Ldalvik/system/profiler/HprofData$ThreadEventType;

    #@10
    invoke-virtual {v1}, Ldalvik/system/profiler/HprofData$ThreadEventType;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Ldalvik/system/profiler/HprofData$ThreadEventType;->START:Ldalvik/system/profiler/HprofData$ThreadEventType;

    #@19
    invoke-virtual {v1}, Ldalvik/system/profiler/HprofData$ThreadEventType;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    #@20
    :goto_1
    sput-object v0, Ldalvik/system/profiler/HprofData;->-dalvik_system_profiler_HprofData$ThreadEventTypeSwitchesValues:[I

    #@22
    return-object v0

    #@23
    :catch_0
    move-exception v1

    #@24
    goto :goto_1

    #@25
    :catch_1
    move-exception v1

    #@26
    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ldalvik/system/profiler/HprofData$StackTrace;",
            "[I>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 274
    .local p1, "stackTraces":Ljava/util/Map;, "Ljava/util/Map<Ldalvik/system/profiler/HprofData$StackTrace;[I>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 257
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Ldalvik/system/profiler/HprofData;->threadHistory:Ljava/util/List;

    #@a
    .line 263
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    .line 262
    iput-object v0, p0, Ldalvik/system/profiler/HprofData;->threadIdToThreadEvent:Ljava/util/Map;

    #@11
    .line 275
    if-nez p1, :cond_0

    #@13
    .line 276
    new-instance v0, Ljava/lang/NullPointerException;

    #@15
    const-string/jumbo v1, "stackTraces == null"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 278
    :cond_0
    iput-object p1, p0, Ldalvik/system/profiler/HprofData;->stackTraces:Ljava/util/Map;

    #@1e
    .line 274
    return-void
.end method


# virtual methods
.method public addStackTrace(Ldalvik/system/profiler/HprofData$StackTrace;[I)V
    .locals 4
    .param p1, "stackTrace"    # Ldalvik/system/profiler/HprofData$StackTrace;
    .param p2, "countCell"    # [I

    #@0
    .prologue
    .line 385
    iget-object v1, p0, Ldalvik/system/profiler/HprofData;->threadIdToThreadEvent:Ljava/util/Map;

    #@2
    iget v2, p1, Ldalvik/system/profiler/HprofData$StackTrace;->threadId:I

    #@4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_0

    #@e
    .line 386
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "Unknown thread id "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    iget v3, p1, Ldalvik/system/profiler/HprofData$StackTrace;->threadId:I

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v1

    #@2a
    .line 388
    :cond_0
    iget-object v1, p0, Ldalvik/system/profiler/HprofData;->stackTraces:Ljava/util/Map;

    #@2c
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, [I

    #@32
    .line 389
    .local v0, "old":[I
    if-eqz v0, :cond_1

    #@34
    .line 390
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@36
    new-instance v2, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v3, "StackTrace already registered for id "

    #@3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    .line 391
    iget v3, p1, Ldalvik/system/profiler/HprofData$StackTrace;->stackTraceId:I

    #@44
    .line 390
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    .line 391
    const-string/jumbo v3, ":\n"

    #@4b
    .line 390
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v1

    #@5b
    .line 384
    :cond_1
    return-void
.end method

.method public addThreadEvent(Ldalvik/system/profiler/HprofData$ThreadEvent;)V
    .locals 4
    .param p1, "event"    # Ldalvik/system/profiler/HprofData$ThreadEvent;

    #@0
    .prologue
    .line 349
    if-nez p1, :cond_0

    #@2
    .line 350
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "event == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 352
    :cond_0
    iget-object v1, p0, Ldalvik/system/profiler/HprofData;->threadIdToThreadEvent:Ljava/util/Map;

    #@d
    iget v2, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadId:I

    #@f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v2

    #@13
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ldalvik/system/profiler/HprofData$ThreadEvent;

    #@19
    .line 353
    .local v0, "old":Ldalvik/system/profiler/HprofData$ThreadEvent;
    invoke-static {}, Ldalvik/system/profiler/HprofData;->-getdalvik_system_profiler_HprofData$ThreadEventTypeSwitchesValues()[I

    #@1c
    move-result-object v1

    #@1d
    iget-object v2, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->type:Ldalvik/system/profiler/HprofData$ThreadEventType;

    #@1f
    invoke-virtual {v2}, Ldalvik/system/profiler/HprofData$ThreadEventType;->ordinal()I

    #@22
    move-result v2

    #@23
    aget v1, v1, v2

    #@25
    packed-switch v1, :pswitch_data_0

    #@28
    .line 374
    :cond_1
    iget-object v1, p0, Ldalvik/system/profiler/HprofData;->threadHistory:Ljava/util/List;

    #@2a
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2d
    .line 348
    return-void

    #@2e
    .line 355
    :pswitch_0
    if-eqz v0, :cond_1

    #@30
    .line 356
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@32
    new-instance v2, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v3, "ThreadEvent already registered for id "

    #@3a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    .line 357
    iget v3, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadId:I

    #@40
    .line 356
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v1

    #@4c
    .line 368
    :pswitch_1
    if-eqz v0, :cond_1

    #@4e
    iget-object v1, v0, Ldalvik/system/profiler/HprofData$ThreadEvent;->type:Ldalvik/system/profiler/HprofData$ThreadEventType;

    #@50
    sget-object v2, Ldalvik/system/profiler/HprofData$ThreadEventType;->END:Ldalvik/system/profiler/HprofData$ThreadEventType;

    #@52
    if-ne v1, v2, :cond_1

    #@54
    .line 369
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@56
    new-instance v2, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v3, "Duplicate ThreadEvent.end for id "

    #@5e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v2

    #@62
    .line 370
    iget v3, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadId:I

    #@64
    .line 369
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@67
    move-result-object v2

    #@68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v2

    #@6c
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6f
    throw v1

    #@70
    .line 353
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDepth()I
    .locals 1

    #@0
    .prologue
    .line 313
    iget v0, p0, Ldalvik/system/profiler/HprofData;->depth:I

    #@2
    return v0
.end method

.method public getFlags()I
    .locals 1

    #@0
    .prologue
    .line 299
    iget v0, p0, Ldalvik/system/profiler/HprofData;->flags:I

    #@2
    return v0
.end method

.method public getSamples()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ldalvik/system/profiler/HprofData$Sample;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 334
    new-instance v5, Ljava/util/HashSet;

    #@2
    iget-object v7, p0, Ldalvik/system/profiler/HprofData;->stackTraces:Ljava/util/Map;

    #@4
    invoke-interface {v7}, Ljava/util/Map;->size()I

    #@7
    move-result v7

    #@8
    invoke-direct {v5, v7}, Ljava/util/HashSet;-><init>(I)V

    #@b
    .line 335
    .local v5, "samples":Ljava/util/Set;, "Ljava/util/Set<Ldalvik/system/profiler/HprofData$Sample;>;"
    iget-object v7, p0, Ldalvik/system/profiler/HprofData;->stackTraces:Ljava/util/Map;

    #@d
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@10
    move-result-object v7

    #@11
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v3

    #@15
    .local v3, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v7

    #@19
    if-eqz v7, :cond_0

    #@1b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Ljava/util/Map$Entry;

    #@21
    .line 336
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ldalvik/system/profiler/HprofData$StackTrace;[I>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@24
    move-result-object v6

    #@25
    check-cast v6, Ldalvik/system/profiler/HprofData$StackTrace;

    #@27
    .line 337
    .local v6, "stackTrace":Ldalvik/system/profiler/HprofData$StackTrace;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2a
    move-result-object v1

    #@2b
    check-cast v1, [I

    #@2d
    .line 338
    .local v1, "countCell":[I
    const/4 v7, 0x0

    #@2e
    aget v0, v1, v7

    #@30
    .line 339
    .local v0, "count":I
    new-instance v4, Ldalvik/system/profiler/HprofData$Sample;

    #@32
    const/4 v7, 0x0

    #@33
    invoke-direct {v4, v6, v0, v7}, Ldalvik/system/profiler/HprofData$Sample;-><init>(Ldalvik/system/profiler/HprofData$StackTrace;ILdalvik/system/profiler/HprofData$Sample;)V

    #@36
    .line 340
    .local v4, "sample":Ldalvik/system/profiler/HprofData$Sample;
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@39
    goto :goto_0

    #@3a
    .line 342
    .end local v0    # "count":I
    .end local v1    # "countCell":[I
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ldalvik/system/profiler/HprofData$StackTrace;[I>;"
    .end local v4    # "sample":Ldalvik/system/profiler/HprofData$Sample;
    .end local v6    # "stackTrace":Ldalvik/system/profiler/HprofData$StackTrace;
    :cond_0
    return-object v5
.end method

.method public getStartMillis()J
    .locals 2

    #@0
    .prologue
    .line 285
    iget-wide v0, p0, Ldalvik/system/profiler/HprofData;->startMillis:J

    #@2
    return-wide v0
.end method

.method public getThreadHistory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ldalvik/system/profiler/HprofData$ThreadEvent;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 327
    iget-object v0, p0, Ldalvik/system/profiler/HprofData;->threadHistory:Ljava/util/List;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public setDepth(I)V
    .locals 0
    .param p1, "depth"    # I

    #@0
    .prologue
    .line 320
    iput p1, p0, Ldalvik/system/profiler/HprofData;->depth:I

    #@2
    .line 319
    return-void
.end method

.method public setFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 306
    iput p1, p0, Ldalvik/system/profiler/HprofData;->flags:I

    #@2
    .line 305
    return-void
.end method

.method public setStartMillis(J)V
    .locals 1
    .param p1, "startMillis"    # J

    #@0
    .prologue
    .line 292
    iput-wide p1, p0, Ldalvik/system/profiler/HprofData;->startMillis:J

    #@2
    .line 291
    return-void
.end method
