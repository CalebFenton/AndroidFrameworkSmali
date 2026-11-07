.class public final Ldalvik/system/VMDebug;
.super Ljava/lang/Object;
.source "VMDebug.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;,
        Ldalvik/system/VMDebug$TraceDestination;
    }
.end annotation


# static fields
.field private static final greylist-max-o KIND_ALLOCATED_BYTES:I = 0x2

.field private static final greylist-max-o KIND_ALLOCATED_OBJECTS:I = 0x1

.field public static final greylist-max-o test-api KIND_ALL_COUNTS:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field private static final greylist-max-o KIND_CLASS_INIT_COUNT:I = 0x20

.field private static final greylist-max-o KIND_CLASS_INIT_TIME:I = 0x40

.field private static final greylist-max-o KIND_EXT_ALLOCATED_BYTES:I = 0x2000

.field private static final greylist-max-o KIND_EXT_ALLOCATED_OBJECTS:I = 0x1000

.field private static final greylist-max-o KIND_EXT_FREED_BYTES:I = 0x8000

.field private static final greylist-max-o KIND_EXT_FREED_OBJECTS:I = 0x4000

.field private static final greylist-max-o KIND_FREED_BYTES:I = 0x8

.field private static final greylist-max-o KIND_FREED_OBJECTS:I = 0x4

.field private static final greylist-max-o KIND_GC_INVOCATIONS:I = 0x10

.field public static final greylist-max-o test-api KIND_GLOBAL_ALLOCATED_BYTES:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o test-api KIND_GLOBAL_ALLOCATED_OBJECTS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o test-api KIND_GLOBAL_CLASS_INIT_COUNT:I = 0x20
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o test-api KIND_GLOBAL_CLASS_INIT_TIME:I = 0x40
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o test-api KIND_GLOBAL_FREED_BYTES:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o test-api KIND_GLOBAL_FREED_OBJECTS:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o test-api KIND_GLOBAL_GC_INVOCATIONS:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o test-api KIND_THREAD_ALLOCATED_BYTES:I = 0x20000
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o test-api KIND_THREAD_ALLOCATED_OBJECTS:I = 0x10000
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o test-api KIND_THREAD_GC_INVOCATIONS:I = 0x100000
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o test-api TRACE_COUNT_ALLOCS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field private static final greylist-max-o runtimeStatsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 666
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ldalvik/system/VMDebug;->runtimeStatsMap:Ljava/util/HashMap;

    .line 669
    sget-object v0, Ldalvik/system/VMDebug;->runtimeStatsMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "art.gc.gc-count"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    sget-object v0, Ldalvik/system/VMDebug;->runtimeStatsMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "art.gc.gc-time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    sget-object v0, Ldalvik/system/VMDebug;->runtimeStatsMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "art.gc.bytes-allocated"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    sget-object v0, Ldalvik/system/VMDebug;->runtimeStatsMap:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "art.gc.bytes-freed"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    sget-object v0, Ldalvik/system/VMDebug;->runtimeStatsMap:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "art.gc.blocking-gc-count"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    sget-object v0, Ldalvik/system/VMDebug;->runtimeStatsMap:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "art.gc.blocking-gc-time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    sget-object v0, Ldalvik/system/VMDebug;->runtimeStatsMap:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "art.gc.gc-count-rate-histogram"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    sget-object v0, Ldalvik/system/VMDebug;->runtimeStatsMap:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "art.gc.blocking-gc-count-rate-histogram"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    sget-object v0, Ldalvik/system/VMDebug;->runtimeStatsMap:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "art.gc.objects-allocated"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    sget-object v0, Ldalvik/system/VMDebug;->runtimeStatsMap:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "art.gc.total-time-waiting-for-gc"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    sget-object v0, Ldalvik/system/VMDebug;->runtimeStatsMap:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "art.gc.pre-oome-gc-count"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native blacklist addApplication(Ljava/lang/String;)V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public static native greylist allowHiddenApiReflectionFrom(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method

.method public static greylist-max-o test-api attachAgent(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 2
    .param p0, "agent"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 739
    invoke-static {p0, p1}, Ldalvik/system/VMDebug;->nativeAttachAgent(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 740
    return-void
.end method

.method private static greylist-max-o checkBufferSize(I)I
    .registers 4
    .param p0, "bufferSize"    # I

    .line 320
    if-nez p0, :cond_4

    .line 322
    const/high16 p0, 0x800000

    .line 324
    :cond_4
    const/16 v0, 0x400

    if-lt p0, v0, :cond_9

    .line 327
    return p0

    .line 325
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buffer size < 1024: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native greylist-max-o test-api countInstancesOfClass(Ljava/lang/Class;Z)J
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public static native greylist-max-o test-api countInstancesOfClasses([Ljava/lang/Class;Z)[J
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public static greylist-max-o test-api dumpHprofData(Ljava/lang/String;)V
    .registers 3
    .param p0, "filename"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 582
    if-eqz p0, :cond_7

    .line 585
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ldalvik/system/VMDebug;->dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    .line 586
    return-void

    .line 583
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "filename == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native greylist-max-o dumpHprofData(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static greylist-max-o test-api dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .registers 3
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 613
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, -0x1

    :goto_8
    invoke-static {p0, v0}, Ldalvik/system/VMDebug;->dumpHprofData(Ljava/lang/String;I)V

    .line 614
    return-void
.end method

.method public static native greylist-max-o test-api dumpHprofDataDdms()V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public static blacklist dumpLowOverheadTrace(Ldalvik/system/VMDebug$TraceDestination;)V
    .registers 3
    .param p0, "traceOutput"    # Ldalvik/system/VMDebug$TraceDestination;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 918
    invoke-virtual {p0}, Ldalvik/system/VMDebug$TraceDestination;->getFd()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 919
    invoke-virtual {p0}, Ldalvik/system/VMDebug$TraceDestination;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldalvik/system/VMDebug;->dumpLowOverheadTraceImpl(Ljava/lang/String;)V

    goto :goto_16

    .line 921
    :cond_f
    invoke-virtual {p0}, Ldalvik/system/VMDebug$TraceDestination;->getFd()I

    move-result v0

    invoke-static {v0}, Ldalvik/system/VMDebug;->dumpLowOverheadTraceFdImpl(I)V

    .line 923
    :goto_16
    return-void
.end method

.method private static native blacklist dumpLowOverheadTraceFdImpl(I)V
.end method

.method private static native blacklist dumpLowOverheadTraceImpl(Ljava/lang/String;)V
.end method

.method public static native greylist test-api dumpReferenceTables()V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public static native greylist-max-o test-api getAllocCount(I)I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public static blacklist getExecutableMethodFileOffsets(Ljava/lang/reflect/Executable;)Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;
    .registers 2
    .param p0, "javaExecutable"    # Ljava/lang/reflect/Executable;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 491
    invoke-static {p0}, Ldalvik/system/VMDebug;->getExecutableMethodFileOffsetsNative(Ljava/lang/reflect/Executable;)Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist test-api getExecutableMethodFileOffsets(Ljava/lang/reflect/Method;)Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;
    .registers 2
    .param p0, "javaMethod"    # Ljava/lang/reflect/Method;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 474
    invoke-static {p0}, Ldalvik/system/VMDebug;->getExecutableMethodFileOffsetsNative(Ljava/lang/reflect/Executable;)Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;

    move-result-object v0

    return-object v0
.end method

.method private static native blacklist getExecutableMethodFileOffsetsNative(Ljava/lang/reflect/Executable;)Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;
.end method

.method public static greylist-max-o getInstructionCount([I)V
    .registers 1
    .param p0, "counts"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 536
    return-void
.end method

.method public static native greylist-max-o test-api getLoadedClassCount()I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native greylist-max-o test-api getMethodTracingMode()I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public static greylist-max-o test-api getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "statName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 694
    if-eqz p0, :cond_17

    .line 697
    sget-object v0, Ldalvik/system/VMDebug;->runtimeStatsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 698
    .local v0, "statId":Ljava/lang/Integer;
    if-eqz v0, :cond_15

    .line 699
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ldalvik/system/VMDebug;->getRuntimeStatInternal(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 701
    :cond_15
    const/4 v1, 0x0

    return-object v1

    .line 695
    .end local v0    # "statId":Ljava/lang/Integer;
    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "statName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native greylist-max-o getRuntimeStatInternal(I)Ljava/lang/String;
.end method

.method public static greylist-max-o test-api getRuntimeStats()Ljava/util/Map;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 714
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 715
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ldalvik/system/VMDebug;->getRuntimeStatsInternal()[Ljava/lang/String;

    move-result-object v1

    .line 716
    .local v1, "values":[Ljava/lang/String;
    sget-object v2, Ldalvik/system/VMDebug;->runtimeStatsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 717
    .local v3, "name":Ljava/lang/String;
    sget-object v4, Ldalvik/system/VMDebug;->runtimeStatsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 718
    .local v4, "id":I
    aget-object v5, v1, v4

    .line 719
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "id":I
    .end local v5    # "value":Ljava/lang/String;
    goto :goto_13

    .line 721
    :cond_31
    return-object v0
.end method

.method private static native greylist-max-o getRuntimeStatsInternal()[Ljava/lang/String;
.end method

.method public static native greylist-max-o test-api getVmFeatureList()[Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public static native greylist test-api isDebuggerConnected()Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native greylist-max-o test-api isDebuggingEnabled()Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native greylist-max-o test-api lastDebuggerActivity()J
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeAttachAgent(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native greylist-max-o test-api printLoadedClasses(I)V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native blacklist removeApplication(Ljava/lang/String;)V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public static native greylist-max-o test-api resetAllocCount(I)V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public static greylist-max-o resetInstructionCount()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 543
    return-void
.end method

.method public static native blacklist test-api setAllocTrackerStackDepth(I)V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public static greylist-max-o setAllocationLimit(I)I
    .registers 2
    .param p0, "limit"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 502
    const/4 v0, -0x1

    return v0
.end method

.method public static native blacklist setCurrentProcessName(Ljava/lang/String;)V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public static greylist-max-o setGlobalAllocationLimit(I)I
    .registers 2
    .param p0, "limit"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 513
    const/4 v0, -0x1

    return v0
.end method

.method public static native blacklist setUserId(I)V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public static native blacklist setWaitingForDebugger(Z)V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public static native greylist-max-o test-api startAllocCounting()V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public static greylist-max-o startInstructionCounting()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 522
    return-void
.end method

.method public static blacklist startLowOverheadTraceForAllMethods()V
    .registers 0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 890
    invoke-static {}, Ldalvik/system/VMDebug;->startLowOverheadTraceForAllMethodsImpl()V

    .line 891
    return-void
.end method

.method private static native blacklist startLowOverheadTraceForAllMethodsImpl()V
.end method

.method public static blacklist startLowOverheadTraceForLongRunningMethods(J)V
    .registers 2
    .param p0, "traceDurationNs"    # J
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 937
    invoke-static {p0, p1}, Ldalvik/system/VMDebug;->startLowOverheadTraceForLongRunningMethodsImpl(J)V

    .line 938
    return-void
.end method

.method private static native blacklist startLowOverheadTraceForLongRunningMethodsImpl(J)V
.end method

.method public static greylist-max-o test-api startMethodTracing(Ljava/lang/String;IIZI)V
    .registers 6
    .param p0, "traceFileName"    # Ljava/lang/String;
    .param p1, "bufferSize"    # I
    .param p2, "flags"    # I
    .param p3, "samplingEnabled"    # Z
    .param p4, "intervalUs"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 263
    invoke-static {p1}, Ldalvik/system/VMDebug;->checkBufferSize(I)I

    move-result v0

    invoke-static {p0, v0, p2, p3, p4}, Ldalvik/system/VMDebug;->startMethodTracingFilename(Ljava/lang/String;IIZI)V

    .line 264
    return-void
.end method

.method public static greylist-max-o test-api startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;IIZIZ)V
    .registers 14
    .param p0, "traceFileName"    # Ljava/lang/String;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bufferSize"    # I
    .param p3, "flags"    # I
    .param p4, "samplingEnabled"    # Z
    .param p5, "intervalUs"    # I
    .param p6, "streamingOutput"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 291
    if-eqz p1, :cond_13

    .line 294
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1

    invoke-static {p2}, Ldalvik/system/VMDebug;->checkBufferSize(I)I

    move-result v2

    move-object v0, p0

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p0    # "traceFileName":Ljava/lang/String;
    .end local p3    # "flags":I
    .end local p4    # "samplingEnabled":Z
    .end local p5    # "intervalUs":I
    .end local p6    # "streamingOutput":Z
    .local v0, "traceFileName":Ljava/lang/String;
    .local v3, "flags":I
    .local v4, "samplingEnabled":Z
    .local v5, "intervalUs":I
    .local v6, "streamingOutput":Z
    invoke-static/range {v0 .. v6}, Ldalvik/system/VMDebug;->startMethodTracingFd(Ljava/lang/String;IIIZIZ)V

    .line 296
    return-void

    .line 292
    .end local v0    # "traceFileName":Ljava/lang/String;
    .end local v3    # "flags":I
    .end local v4    # "samplingEnabled":Z
    .end local v5    # "intervalUs":I
    .end local v6    # "streamingOutput":Z
    .restart local p0    # "traceFileName":Ljava/lang/String;
    .restart local p3    # "flags":I
    .restart local p4    # "samplingEnabled":Z
    .restart local p5    # "intervalUs":I
    .restart local p6    # "streamingOutput":Z
    :cond_13
    move-object v0, p0

    move v3, p3

    .end local p0    # "traceFileName":Ljava/lang/String;
    .end local p3    # "flags":I
    .restart local v0    # "traceFileName":Ljava/lang/String;
    .restart local v3    # "flags":I
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p3, "fd == null"

    invoke-direct {p0, p3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static greylist-max-o test-api startMethodTracingDdms(IIZI)V
    .registers 5
    .param p0, "bufferSize"    # I
    .param p1, "flags"    # I
    .param p2, "samplingEnabled"    # Z
    .param p3, "intervalUs"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 316
    invoke-static {p0}, Ldalvik/system/VMDebug;->checkBufferSize(I)I

    move-result v0

    invoke-static {v0, p1, p2, p3}, Ldalvik/system/VMDebug;->startMethodTracingDdmsImpl(IIZI)V

    .line 317
    return-void
.end method

.method private static native greylist-max-o startMethodTracingDdmsImpl(IIZI)V
.end method

.method private static native greylist-max-o startMethodTracingFd(Ljava/lang/String;IIIZIZ)V
.end method

.method private static native greylist-max-o startMethodTracingFilename(Ljava/lang/String;IIZI)V
.end method

.method public static native greylist-max-o test-api stopAllocCounting()V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public static greylist-max-o stopInstructionCounting()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 529
    return-void
.end method

.method public static blacklist stopLowOverheadTrace()V
    .registers 0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 901
    invoke-static {}, Ldalvik/system/VMDebug;->stopLowOverheadTraceImpl()V

    .line 902
    return-void
.end method

.method private static native blacklist stopLowOverheadTraceImpl()V
.end method

.method public static native greylist-max-o test-api stopMethodTracing()V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public static native blacklist test-api suspendAllAndSendVmStart()V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public static native greylist-max-o test-api threadCpuTimeNanos()J
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method
