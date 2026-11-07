.class public Llibcore/util/NativeAllocationRegistry;
.super Ljava/lang/Object;
.source "NativeAllocationRegistry.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/util/NativeAllocationRegistry$Metrics;,
        Llibcore/util/NativeAllocationRegistry$CleanerThunk;,
        Llibcore/util/NativeAllocationRegistry$CleanerRunner;
    }
.end annotation


# static fields
.field private static final blacklist COUNTER:Ljava/lang/invoke/VarHandle;

.field private static final blacklist DEFAULT_SIZE:J = 0x62L

.field private static final blacklist IS_MALLOCED:J = 0x1L

.field private static blacklist numClasses:I

.field private static final blacklist registries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Llibcore/util/NativeAllocationRegistry;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o classLoader:Ljava/lang/ClassLoader;

.field private final blacklist clazz:Ljava/lang/Class;

.field private volatile blacklist counter:I

.field private final greylist-max-o freeFunction:J

.field private final greylist-max-o size:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetcounter(Llibcore/util/NativeAllocationRegistry;)I
    .registers 1

    iget p0, p0, Llibcore/util/NativeAllocationRegistry;->counter:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetfreeFunction(Llibcore/util/NativeAllocationRegistry;)J
    .registers 3

    iget-wide v0, p0, Llibcore/util/NativeAllocationRegistry;->freeFunction:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsize(Llibcore/util/NativeAllocationRegistry;)J
    .registers 3

    iget-wide v0, p0, Llibcore/util/NativeAllocationRegistry;->size:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$misMalloced(Llibcore/util/NativeAllocationRegistry;)Z
    .registers 1

    invoke-direct {p0}, Llibcore/util/NativeAllocationRegistry;->isMalloced()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetCOUNTER()Ljava/lang/invoke/VarHandle;
    .registers 1

    sget-object v0, Llibcore/util/NativeAllocationRegistry;->COUNTER:Ljava/lang/invoke/VarHandle;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smregisterNativeFree(J)V
    .registers 2

    invoke-static {p0, p1}, Llibcore/util/NativeAllocationRegistry;->registerNativeFree(J)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 94
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Llibcore/util/NativeAllocationRegistry;->registries:Ljava/util/Map;

    .line 345
    :try_start_7
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    .line 346
    .local v0, "l":Ljava/lang/invoke/MethodHandles$Lookup;
    const-class v1, Llibcore/util/NativeAllocationRegistry;

    const-string v2, "counter"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v1

    sput-object v1, Llibcore/util/NativeAllocationRegistry;->COUNTER:Ljava/lang/invoke/VarHandle;
    :try_end_17
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_7 .. :try_end_17} :catch_1c

    .line 350
    .end local v0    # "l":Ljava/lang/invoke/MethodHandles$Lookup;
    nop

    .line 425
    const/4 v0, 0x3

    sput v0, Llibcore/util/NativeAllocationRegistry;->numClasses:I

    return-void

    .line 348
    :catch_1c
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor blacklist test-api <init>(Ljava/lang/ClassLoader;JJ)V
    .registers 15
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "freeFunction"    # J
    .param p4, "size"    # J
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 337
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    move v8, v0

    const-class v3, Llibcore/util/NativeAllocationRegistry;

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    .end local p1    # "classLoader":Ljava/lang/ClassLoader;
    .end local p2    # "freeFunction":J
    .end local p4    # "size":J
    .local v2, "classLoader":Ljava/lang/ClassLoader;
    .local v4, "freeFunction":J
    .local v6, "size":J
    invoke-direct/range {v1 .. v8}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;Ljava/lang/Class;JJZ)V

    .line 338
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/ClassLoader;Ljava/lang/Class;JJZ)V
    .registers 11
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "clazz"    # Ljava/lang/Class;
    .param p3, "freeFunction"    # J
    .param p5, "size"    # J
    .param p7, "mallocAllocation"    # Z

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    const/4 v0, 0x0

    iput v0, p0, Llibcore/util/NativeAllocationRegistry;->counter:I

    .line 296
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-ltz v0, :cond_37

    .line 299
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Llibcore/util/NativeAllocationRegistry;->clazz:Ljava/lang/Class;

    .line 300
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    iput-object v0, p0, Llibcore/util/NativeAllocationRegistry;->classLoader:Ljava/lang/ClassLoader;

    .line 301
    iput-wide p3, p0, Llibcore/util/NativeAllocationRegistry;->freeFunction:J

    .line 302
    if-eqz p7, :cond_24

    const-wide/16 v0, 0x1

    or-long/2addr v0, p5

    goto :goto_27

    :cond_24
    const-wide/16 v0, -0x2

    and-long/2addr v0, p5

    :goto_27
    iput-wide v0, p0, Llibcore/util/NativeAllocationRegistry;->size:J

    .line 304
    const-class v0, Llibcore/util/NativeAllocationRegistry;

    monitor-enter v0

    .line 305
    :try_start_2c
    sget-object v1, Llibcore/util/NativeAllocationRegistry;->registries:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    monitor-exit v0

    .line 307
    return-void

    .line 306
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_34

    throw v1

    .line 297
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid native allocation size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native blacklist test-api applyFreeFunction(JJ)V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public static blacklist test-api createMalloced(Ljava/lang/Class;J)Llibcore/util/NativeAllocationRegistry;
    .registers 11
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "freeFunction"    # J
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 263
    new-instance v0, Llibcore/util/NativeAllocationRegistry;

    .line 264
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-wide/16 v5, 0x62

    const/4 v7, 0x1

    move-object v2, p0

    move-wide v3, p1

    .end local p0    # "clazz":Ljava/lang/Class;
    .end local p1    # "freeFunction":J
    .local v2, "clazz":Ljava/lang/Class;
    .local v3, "freeFunction":J
    invoke-direct/range {v0 .. v7}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;Ljava/lang/Class;JJZ)V

    .line 263
    return-object v0
.end method

.method public static blacklist test-api createMalloced(Ljava/lang/Class;JJ)Llibcore/util/NativeAllocationRegistry;
    .registers 13
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "freeFunction"    # J
    .param p3, "size"    # J
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 237
    new-instance v0, Llibcore/util/NativeAllocationRegistry;

    .line 238
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v7, 0x1

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    .end local p0    # "clazz":Ljava/lang/Class;
    .end local p1    # "freeFunction":J
    .end local p3    # "size":J
    .local v2, "clazz":Ljava/lang/Class;
    .local v3, "freeFunction":J
    .local v5, "size":J
    invoke-direct/range {v0 .. v7}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;Ljava/lang/Class;JJZ)V

    .line 237
    return-object v0
.end method

.method public static blacklist test-api createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;
    .registers 11
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .param p1, "freeFunction"    # J
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 206
    new-instance v0, Llibcore/util/NativeAllocationRegistry;

    const-wide/16 v5, 0x62

    const/4 v7, 0x1

    const-class v2, Llibcore/util/NativeAllocationRegistry;

    move-object v1, p0

    move-wide v3, p1

    .end local p0    # "classLoader":Ljava/lang/ClassLoader;
    .end local p1    # "freeFunction":J
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    .local v3, "freeFunction":J
    invoke-direct/range {v0 .. v7}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;Ljava/lang/Class;JJZ)V

    return-object v0
.end method

.method public static blacklist test-api createMalloced(Ljava/lang/ClassLoader;JJ)Llibcore/util/NativeAllocationRegistry;
    .registers 13
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .param p1, "freeFunction"    # J
    .param p3, "size"    # J
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 183
    new-instance v0, Llibcore/util/NativeAllocationRegistry;

    const-class v2, Llibcore/util/NativeAllocationRegistry;

    const/4 v7, 0x1

    move-object v1, p0

    move-wide v3, p1

    move-wide v5, p3

    .end local p0    # "classLoader":Ljava/lang/ClassLoader;
    .end local p1    # "freeFunction":J
    .end local p3    # "size":J
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    .local v3, "freeFunction":J
    .local v5, "size":J
    invoke-direct/range {v0 .. v7}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;Ljava/lang/Class;JJZ)V

    return-object v0
.end method

.method public static blacklist test-api createNonmalloced(Ljava/lang/Class;JJ)Llibcore/util/NativeAllocationRegistry;
    .registers 13
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "freeFunction"    # J
    .param p3, "size"    # J
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 150
    new-instance v0, Llibcore/util/NativeAllocationRegistry;

    .line 151
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v7, 0x0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    .end local p0    # "clazz":Ljava/lang/Class;
    .end local p1    # "freeFunction":J
    .end local p3    # "size":J
    .local v2, "clazz":Ljava/lang/Class;
    .local v3, "freeFunction":J
    .local v5, "size":J
    invoke-direct/range {v0 .. v7}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;Ljava/lang/Class;JJZ)V

    .line 150
    return-object v0
.end method

.method public static blacklist test-api createNonmalloced(Ljava/lang/ClassLoader;JJ)Llibcore/util/NativeAllocationRegistry;
    .registers 13
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .param p1, "freeFunction"    # J
    .param p3, "size"    # J
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 120
    new-instance v0, Llibcore/util/NativeAllocationRegistry;

    const-class v2, Llibcore/util/NativeAllocationRegistry;

    const/4 v7, 0x0

    move-object v1, p0

    move-wide v3, p1

    move-wide v5, p3

    .end local p0    # "classLoader":Ljava/lang/ClassLoader;
    .end local p1    # "freeFunction":J
    .end local p3    # "size":J
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    .local v3, "freeFunction":J
    .local v5, "size":J
    invoke-direct/range {v0 .. v7}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;Ljava/lang/Class;JJZ)V

    return-object v0
.end method

.method public static declared-synchronized blacklist test-api getMetrics()Ljava/util/Collection;
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Llibcore/util/NativeAllocationRegistry$Metrics;",
            ">;"
        }
    .end annotation

    const-class v0, Llibcore/util/NativeAllocationRegistry;

    monitor-enter v0

    .line 448
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    sget v2, Llibcore/util/NativeAllocationRegistry;->numClasses:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 449
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Llibcore/util/NativeAllocationRegistry$Metrics;>;"
    sget-object v2, Llibcore/util/NativeAllocationRegistry;->registries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llibcore/util/NativeAllocationRegistry;

    .line 450
    .local v3, "r":Llibcore/util/NativeAllocationRegistry;
    iget-object v4, v3, Llibcore/util/NativeAllocationRegistry;->clazz:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 451
    .local v4, "className":Ljava/lang/String;
    const/4 v5, 0x0

    .line 452
    .local v5, "m":Llibcore/util/NativeAllocationRegistry$Metrics;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_47

    .line 453
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Llibcore/util/NativeAllocationRegistry$Metrics;

    invoke-static {v7}, Llibcore/util/NativeAllocationRegistry$Metrics;->-$$Nest$fgetclassName(Llibcore/util/NativeAllocationRegistry$Metrics;)Ljava/lang/String;

    move-result-object v7

    if-ne v7, v4, :cond_44

    .line 454
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Llibcore/util/NativeAllocationRegistry$Metrics;

    move-object v5, v7

    .line 455
    goto :goto_47

    .line 452
    :cond_44
    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    .line 458
    .end local v6    # "i":I
    :cond_47
    :goto_47
    if-nez v5, :cond_53

    .line 459
    new-instance v6, Llibcore/util/NativeAllocationRegistry$Metrics;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Llibcore/util/NativeAllocationRegistry$Metrics;-><init>(Ljava/lang/String;Llibcore/util/NativeAllocationRegistry-IA;)V

    move-object v5, v6

    .line 460
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_53
    invoke-static {v5, v3}, Llibcore/util/NativeAllocationRegistry$Metrics;->-$$Nest$madd(Llibcore/util/NativeAllocationRegistry$Metrics;Llibcore/util/NativeAllocationRegistry;)V

    .line 463
    .end local v3    # "r":Llibcore/util/NativeAllocationRegistry;
    .end local v4    # "className":Ljava/lang/String;
    .end local v5    # "m":Llibcore/util/NativeAllocationRegistry$Metrics;
    goto :goto_16

    .line 464
    :cond_57
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sput v2, Llibcore/util/NativeAllocationRegistry;->numClasses:I
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_5f

    .line 465
    monitor-exit v0

    return-object v1

    .line 447
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Llibcore/util/NativeAllocationRegistry$Metrics;>;"
    :catchall_5f
    move-exception v1

    :try_start_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v1
.end method

.method public static blacklist isCleanerThunk(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 562
    instance-of v0, p0, Llibcore/util/NativeAllocationRegistry$CleanerThunk;

    return v0
.end method

.method private blacklist isMalloced()Z
    .registers 5

    .line 88
    iget-wide v0, p0, Llibcore/util/NativeAllocationRegistry;->size:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private static greylist-max-o registerNativeAllocation(J)V
    .registers 7
    .param p0, "size"    # J

    .line 580
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    .line 581
    .local v0, "runtime":Ldalvik/system/VMRuntime;
    const-wide/16 v1, 0x1

    and-long/2addr v1, p0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1f

    .line 582
    const-wide/32 v1, 0x493e0

    .line 583
    .local v1, "notifyImmediateThreshold":J
    const-wide/32 v3, 0x493e0

    cmp-long v3, p0, v3

    if-ltz v3, :cond_1b

    .line 584
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->notifyNativeAllocationsInternal()V

    goto :goto_1e

    .line 586
    :cond_1b
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->notifyNativeAllocation()V

    .line 588
    .end local v1    # "notifyImmediateThreshold":J
    :goto_1e
    goto :goto_22

    .line 589
    :cond_1f
    invoke-virtual {v0, p0, p1}, Ldalvik/system/VMRuntime;->registerNativeAllocation(J)V

    .line 591
    :goto_22
    return-void
.end method

.method private static greylist-max-o registerNativeFree(J)V
    .registers 6
    .param p0, "size"    # J

    .line 595
    const-wide/16 v0, 0x1

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 596
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ldalvik/system/VMRuntime;->registerNativeFree(J)V

    .line 598
    :cond_10
    return-void
.end method


# virtual methods
.method public blacklist test-api registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;
    .registers 9
    .param p1, "referent"    # Ljava/lang/Object;
    .param p2, "nativePtr"    # J
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 505
    if-eqz p1, :cond_39

    .line 508
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_31

    .line 515
    :try_start_8
    new-instance v0, Llibcore/util/NativeAllocationRegistry$CleanerThunk;

    invoke-direct {v0, p0}, Llibcore/util/NativeAllocationRegistry$CleanerThunk;-><init>(Llibcore/util/NativeAllocationRegistry;)V

    .line 516
    .local v0, "thunk":Llibcore/util/NativeAllocationRegistry$CleanerThunk;
    invoke-static {p1, v0}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    move-result-object v1

    .line 517
    .local v1, "cleaner":Lsun/misc/Cleaner;
    new-instance v2, Llibcore/util/NativeAllocationRegistry$CleanerRunner;

    invoke-direct {v2, v1}, Llibcore/util/NativeAllocationRegistry$CleanerRunner;-><init>(Lsun/misc/Cleaner;)V

    .line 518
    .local v2, "result":Llibcore/util/NativeAllocationRegistry$CleanerRunner;
    iget-wide v3, p0, Llibcore/util/NativeAllocationRegistry;->size:J

    invoke-static {v3, v4}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(J)V
    :try_end_1b
    .catch Ljava/lang/VirtualMachineError; {:try_start_8 .. :try_end_1b} :catch_2a

    .line 522
    .end local v1    # "cleaner":Lsun/misc/Cleaner;
    nop

    .line 524
    invoke-virtual {v0, p2, p3}, Llibcore/util/NativeAllocationRegistry$CleanerThunk;->setNativePtr(J)V

    .line 526
    invoke-static {p1}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 527
    sget-object v1, Llibcore/util/NativeAllocationRegistry;->COUNTER:Ljava/lang/invoke/VarHandle;

    const/4 v3, 0x1

    invoke-polymorphic {v1, p0, v3}, Ljava/lang/invoke/VarHandle;->getAndAdd([Ljava/lang/Object;)Ljava/lang/Object;, (Llibcore/util/NativeAllocationRegistry;I)V

    .line 528
    return-object v2

    .line 519
    .end local v0    # "thunk":Llibcore/util/NativeAllocationRegistry$CleanerThunk;
    .end local v2    # "result":Llibcore/util/NativeAllocationRegistry$CleanerRunner;
    :catch_2a
    move-exception v0

    .line 520
    .local v0, "vme":Ljava/lang/VirtualMachineError;
    iget-wide v1, p0, Llibcore/util/NativeAllocationRegistry;->freeFunction:J

    invoke-static {v1, v2, p2, p3}, Llibcore/util/NativeAllocationRegistry;->applyFreeFunction(JJ)V

    .line 521
    throw v0

    .line 509
    .end local v0    # "vme":Ljava/lang/VirtualMachineError;
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nativePtr is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "referent is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
