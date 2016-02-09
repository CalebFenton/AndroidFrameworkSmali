.class public final Ldalvik/system/VMDebug;
.super Ljava/lang/Object;
.source "VMDebug.java"


# static fields
.field private static final KIND_ALLOCATED_BYTES:I = 0x2

.field private static final KIND_ALLOCATED_OBJECTS:I = 0x1

.field public static final KIND_ALL_COUNTS:I = -0x1

.field private static final KIND_CLASS_INIT_COUNT:I = 0x20

.field private static final KIND_CLASS_INIT_TIME:I = 0x40

.field private static final KIND_EXT_ALLOCATED_BYTES:I = 0x2000

.field private static final KIND_EXT_ALLOCATED_OBJECTS:I = 0x1000

.field private static final KIND_EXT_FREED_BYTES:I = 0x8000

.field private static final KIND_EXT_FREED_OBJECTS:I = 0x4000

.field private static final KIND_FREED_BYTES:I = 0x8

.field private static final KIND_FREED_OBJECTS:I = 0x4

.field private static final KIND_GC_INVOCATIONS:I = 0x10

.field public static final KIND_GLOBAL_ALLOCATED_BYTES:I = 0x2

.field public static final KIND_GLOBAL_ALLOCATED_OBJECTS:I = 0x1

.field public static final KIND_GLOBAL_CLASS_INIT_COUNT:I = 0x20

.field public static final KIND_GLOBAL_CLASS_INIT_TIME:I = 0x40

.field public static final KIND_GLOBAL_EXT_ALLOCATED_BYTES:I = 0x2000

.field public static final KIND_GLOBAL_EXT_ALLOCATED_OBJECTS:I = 0x1000

.field public static final KIND_GLOBAL_EXT_FREED_BYTES:I = 0x8000

.field public static final KIND_GLOBAL_EXT_FREED_OBJECTS:I = 0x4000

.field public static final KIND_GLOBAL_FREED_BYTES:I = 0x8

.field public static final KIND_GLOBAL_FREED_OBJECTS:I = 0x4

.field public static final KIND_GLOBAL_GC_INVOCATIONS:I = 0x10

.field public static final KIND_THREAD_ALLOCATED_BYTES:I = 0x20000

.field public static final KIND_THREAD_ALLOCATED_OBJECTS:I = 0x10000

.field public static final KIND_THREAD_CLASS_INIT_COUNT:I = 0x200000

.field public static final KIND_THREAD_CLASS_INIT_TIME:I = 0x400000

.field public static final KIND_THREAD_EXT_ALLOCATED_BYTES:I = 0x20000000

.field public static final KIND_THREAD_EXT_ALLOCATED_OBJECTS:I = 0x10000000

.field public static final KIND_THREAD_EXT_FREED_BYTES:I = -0x80000000

.field public static final KIND_THREAD_EXT_FREED_OBJECTS:I = 0x40000000

.field public static final KIND_THREAD_FREED_BYTES:I = 0x80000

.field public static final KIND_THREAD_FREED_OBJECTS:I = 0x40000

.field public static final KIND_THREAD_GC_INVOCATIONS:I = 0x100000

.field public static final TRACE_COUNT_ALLOCS:I = 0x1

.field private static final runtimeStatsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 396
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v0, Ldalvik/system/VMDebug;->runtimeStatsMap:Ljava/util/HashMap;

    #@7
    .line 399
    sget-object v0, Ldalvik/system/VMDebug;->runtimeStatsMap:Ljava/util/HashMap;

    #@9
    const-string/jumbo v1, "art.gc.gc-count"

    #@c
    const/4 v2, 0x0

    #@d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 400
    sget-object v0, Ldalvik/system/VMDebug;->runtimeStatsMap:Ljava/util/HashMap;

    #@16
    const-string/jumbo v1, "art.gc.gc-time"

    #@19
    const/4 v2, 0x1

    #@1a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    .line 401
    sget-object v0, Ldalvik/system/VMDebug;->runtimeStatsMap:Ljava/util/HashMap;

    #@23
    const-string/jumbo v1, "art.gc.bytes-allocated"

    #@26
    const/4 v2, 0x2

    #@27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    .line 402
    sget-object v0, Ldalvik/system/VMDebug;->runtimeStatsMap:Ljava/util/HashMap;

    #@30
    const-string/jumbo v1, "art.gc.bytes-freed"

    #@33
    const/4 v2, 0x3

    #@34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    .line 403
    sget-object v0, Ldalvik/system/VMDebug;->runtimeStatsMap:Ljava/util/HashMap;

    #@3d
    const-string/jumbo v1, "art.gc.blocking-gc-count"

    #@40
    const/4 v2, 0x4

    #@41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    .line 404
    sget-object v0, Ldalvik/system/VMDebug;->runtimeStatsMap:Ljava/util/HashMap;

    #@4a
    const-string/jumbo v1, "art.gc.blocking-gc-time"

    #@4d
    const/4 v2, 0x5

    #@4e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    .line 405
    sget-object v0, Ldalvik/system/VMDebug;->runtimeStatsMap:Ljava/util/HashMap;

    #@57
    const-string/jumbo v1, "art.gc.gc-count-rate-histogram"

    #@5a
    const/4 v2, 0x6

    #@5b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5e
    move-result-object v2

    #@5f
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@62
    .line 406
    sget-object v0, Ldalvik/system/VMDebug;->runtimeStatsMap:Ljava/util/HashMap;

    #@64
    const-string/jumbo v1, "art.gc.blocking-gc-count-rate-histogram"

    #@67
    const/4 v2, 0x7

    #@68
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6b
    move-result-object v2

    #@6c
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6f
    .line 33
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static native cacheRegisterMap(Ljava/lang/String;)Z
.end method

.method private static checkBufferSize(I)I
    .locals 3
    .param p0, "bufferSize"    # I

    #@0
    .prologue
    .line 192
    if-nez p0, :cond_0

    #@2
    .line 194
    const/high16 p0, 0x800000

    #@4
    .line 196
    :cond_0
    const/16 v0, 0x400

    #@6
    if-ge p0, v0, :cond_1

    #@8
    .line 197
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "buffer size < 1024: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 199
    :cond_1
    return p0
.end method

.method public static native countInstancesOfClass(Ljava/lang/Class;Z)J
.end method

.method public static native crash()V
.end method

.method public static dumpHprofData(Ljava/lang/String;)V
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 299
    if-nez p0, :cond_0

    #@3
    .line 300
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v1, "filename == null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 302
    :cond_0
    invoke-static {p0, v0}, Ldalvik/system/VMDebug;->dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    #@f
    .line 298
    return-void
.end method

.method public static native dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native dumpHprofDataDdms()V
.end method

.method public static native dumpReferenceTables()V
.end method

.method public static native getAllocCount(I)I
.end method

.method public static native getHeapSpaceStats([J)V
.end method

.method public static native getInstructionCount([I)V
.end method

.method public static native getLoadedClassCount()I
.end method

.method public static native getMethodTracingMode()I
.end method

.method public static getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "statName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 418
    if-nez p0, :cond_0

    #@3
    .line 419
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v2, "statName == null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 421
    :cond_0
    sget-object v1, Ldalvik/system/VMDebug;->runtimeStatsMap:Ljava/util/HashMap;

    #@e
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/Integer;

    #@14
    .line 422
    .local v0, "statId":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    #@16
    .line 423
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@19
    move-result v1

    #@1a
    invoke-static {v1}, Ldalvik/system/VMDebug;->getRuntimeStatInternal(I)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    return-object v1

    #@1f
    .line 425
    :cond_1
    return-object v2
.end method

.method private static native getRuntimeStatInternal(I)Ljava/lang/String;
.end method

.method public static getRuntimeStats()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 435
    new-instance v1, Ljava/util/HashMap;

    #@2
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 436
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ldalvik/system/VMDebug;->getRuntimeStatsInternal()[Ljava/lang/String;

    #@8
    move-result-object v5

    #@9
    .line 437
    .local v5, "values":[Ljava/lang/String;
    sget-object v6, Ldalvik/system/VMDebug;->runtimeStatsMap:Ljava/util/HashMap;

    #@b
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@e
    move-result-object v6

    #@f
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v3

    #@13
    .local v3, "name$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v6

    #@17
    if-eqz v6, :cond_0

    #@19
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Ljava/lang/String;

    #@1f
    .line 438
    .local v2, "name":Ljava/lang/String;
    sget-object v6, Ldalvik/system/VMDebug;->runtimeStatsMap:Ljava/util/HashMap;

    #@21
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v6

    #@25
    check-cast v6, Ljava/lang/Integer;

    #@27
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@2a
    move-result v0

    #@2b
    .line 439
    .local v0, "id":I
    aget-object v4, v5, v0

    #@2d
    .line 440
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    goto :goto_0

    #@31
    .line 442
    .end local v0    # "id":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private static native getRuntimeStatsInternal()[Ljava/lang/String;
.end method

.method public static native getVmFeatureList()[Ljava/lang/String;
.end method

.method public static native infopoint(I)V
.end method

.method public static native isDebuggerConnected()Z
.end method

.method public static native isDebuggingEnabled()Z
.end method

.method public static native lastDebuggerActivity()J
.end method

.method public static native printLoadedClasses(I)V
.end method

.method public static native resetAllocCount(I)V
.end method

.method public static native resetInstructionCount()V
.end method

.method public static setAllocationLimit(I)I
    .locals 1
    .param p0, "limit"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 256
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public static setGlobalAllocationLimit(I)I
    .locals 1
    .param p0, "limit"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 265
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public static native startAllocCounting()V
.end method

.method private static startClassPrep()V
    .locals 0

    #@0
    .prologue
    .line 360
    return-void
.end method

.method public static native startEmulatorTracing()V
.end method

.method private static startGC()V
    .locals 0

    #@0
    .prologue
    .line 353
    return-void
.end method

.method public static native startInstructionCounting()V
.end method

.method public static startMethodTracing()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 141
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public static startMethodTracing(Ljava/lang/String;IIZI)V
    .locals 1
    .param p0, "traceFileName"    # Ljava/lang/String;
    .param p1, "bufferSize"    # I
    .param p2, "flags"    # I
    .param p3, "samplingEnabled"    # Z
    .param p4, "intervalUs"    # I

    #@0
    .prologue
    .line 167
    invoke-static {p1}, Ldalvik/system/VMDebug;->checkBufferSize(I)I

    #@3
    move-result v0

    #@4
    invoke-static {p0, v0, p2, p3, p4}, Ldalvik/system/VMDebug;->startMethodTracingFilename(Ljava/lang/String;IIZI)V

    #@7
    .line 166
    return-void
.end method

.method public static startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;IIZI)V
    .locals 6
    .param p0, "traceFileName"    # Ljava/lang/String;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bufferSize"    # I
    .param p3, "flags"    # I
    .param p4, "samplingEnabled"    # Z
    .param p5, "intervalUs"    # I

    #@0
    .prologue
    .line 176
    if-nez p1, :cond_0

    #@2
    .line 177
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "fd == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 179
    :cond_0
    invoke-static {p2}, Ldalvik/system/VMDebug;->checkBufferSize(I)I

    #@e
    move-result v2

    #@f
    move-object v0, p0

    #@10
    move-object v1, p1

    #@11
    move v3, p3

    #@12
    move v4, p4

    #@13
    move v5, p5

    #@14
    invoke-static/range {v0 .. v5}, Ldalvik/system/VMDebug;->startMethodTracingFd(Ljava/lang/String;Ljava/io/FileDescriptor;IIZI)V

    #@17
    .line 175
    return-void
.end method

.method public static startMethodTracingDdms(IIZI)V
    .locals 1
    .param p0, "bufferSize"    # I
    .param p1, "flags"    # I
    .param p2, "samplingEnabled"    # Z
    .param p3, "intervalUs"    # I

    #@0
    .prologue
    .line 188
    invoke-static {p0}, Ldalvik/system/VMDebug;->checkBufferSize(I)I

    #@3
    move-result v0

    #@4
    invoke-static {v0, p1, p2, p3}, Ldalvik/system/VMDebug;->startMethodTracingDdmsImpl(IIZI)V

    #@7
    .line 187
    return-void
.end method

.method private static native startMethodTracingDdmsImpl(IIZI)V
.end method

.method private static native startMethodTracingFd(Ljava/lang/String;Ljava/io/FileDescriptor;IIZI)V
.end method

.method private static native startMethodTracingFilename(Ljava/lang/String;IIZI)V
.end method

.method public static native stopAllocCounting()V
.end method

.method public static native stopEmulatorTracing()V
.end method

.method public static native stopInstructionCounting()V
.end method

.method public static native stopMethodTracing()V
.end method

.method public static native threadCpuTimeNanos()J
.end method
