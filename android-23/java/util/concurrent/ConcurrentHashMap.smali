.class public Ljava/util/concurrent/ConcurrentHashMap;
.super Ljava/util/AbstractMap;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ConcurrentHashMap$Node;,
        Ljava/util/concurrent/ConcurrentHashMap$Segment;,
        Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;,
        Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;,
        Ljava/util/concurrent/ConcurrentHashMap$TreeNode;,
        Ljava/util/concurrent/ConcurrentHashMap$TreeBin;,
        Ljava/util/concurrent/ConcurrentHashMap$TableStack;,
        Ljava/util/concurrent/ConcurrentHashMap$Traverser;,
        Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$MapEntry;,
        Ljava/util/concurrent/ConcurrentHashMap$CollectionView;,
        Ljava/util/concurrent/ConcurrentHashMap$KeySetView;,
        Ljava/util/concurrent/ConcurrentHashMap$ValuesView;,
        Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;,
        Ljava/util/concurrent/ConcurrentHashMap$CounterCell;,
        Ljava/util/concurrent/ConcurrentHashMap$CounterHashCode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ABASE:J

.field private static final ASHIFT:I

.field private static final BASECOUNT:J

.field private static final CELLSBUSY:J

.field private static final CELLVALUE:J

.field private static final DEFAULT_CAPACITY:I = 0x10

.field private static final DEFAULT_CONCURRENCY_LEVEL:I = 0x10

.field static final HASH_BITS:I = 0x7fffffff

.field private static final LOAD_FACTOR:F = 0.75f

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final MAX_ARRAY_SIZE:I = 0x7ffffff7

.field private static final MAX_RESIZERS:I

.field private static final MIN_TRANSFER_STRIDE:I = 0x10

.field static final MIN_TREEIFY_CAPACITY:I = 0x40

.field static final MOVED:I = -0x70000001

.field static final NCPU:I

.field static final RESERVED:I = -0x7fffffff

.field private static RESIZE_STAMP_BITS:I = 0x0

.field private static final RESIZE_STAMP_SHIFT:I

.field static final SEED_INCREMENT:I = 0x61c88647

.field private static final SIZECTL:J

.field private static final TRANSFERINDEX:J

.field static final TREEBIN:I = -0x80000000

.field static final TREEIFY_THRESHOLD:I = 0x8

.field private static final U:Lsun/misc/Unsafe;

.field static final UNTREEIFY_THRESHOLD:I = 0x6

.field static final counterHashCodeGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x6499de129d87293dL

.field static final threadCounterHashCode:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/concurrent/ConcurrentHashMap$CounterHashCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile transient baseCount:J

.field private volatile transient cellsBusy:I

.field private volatile transient counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

.field private transient entrySet:Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$EntrySetView",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient keySet:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$KeySetView",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile transient nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile transient sizeCtl:I

.field volatile transient table:[Ljava/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile transient transferIndex:I

.field private transient values:Ljava/util/concurrent/ConcurrentHashMap$ValuesView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$ValuesView",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 415
    const/16 v6, 0x10

    #@4
    sput v6, Ljava/util/concurrent/ConcurrentHashMap;->RESIZE_STAMP_BITS:I

    #@6
    .line 421
    sget v6, Ljava/util/concurrent/ConcurrentHashMap;->RESIZE_STAMP_BITS:I

    #@8
    rsub-int/lit8 v6, v6, 0x20

    #@a
    shl-int v6, v11, v6

    #@c
    add-int/lit8 v6, v6, -0x1

    #@e
    sput v6, Ljava/util/concurrent/ConcurrentHashMap;->MAX_RESIZERS:I

    #@10
    .line 426
    sget v6, Ljava/util/concurrent/ConcurrentHashMap;->RESIZE_STAMP_BITS:I

    #@12
    rsub-int/lit8 v6, v6, 0x20

    #@14
    sput v6, Ljava/util/concurrent/ConcurrentHashMap;->RESIZE_STAMP_SHIFT:I

    #@16
    .line 437
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@19
    move-result-object v6

    #@1a
    invoke-virtual {v6}, Ljava/lang/Runtime;->availableProcessors()I

    #@1d
    move-result v6

    #@1e
    sput v6, Ljava/util/concurrent/ConcurrentHashMap;->NCPU:I

    #@20
    .line 440
    const/4 v6, 0x3

    #@21
    new-array v6, v6, [Ljava/io/ObjectStreamField;

    #@23
    .line 441
    new-instance v7, Ljava/io/ObjectStreamField;

    #@25
    const-string/jumbo v8, "segments"

    #@28
    const-class v9, [Ljava/util/concurrent/ConcurrentHashMap$Segment;

    #@2a
    invoke-direct {v7, v8, v9}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@2d
    aput-object v7, v6, v10

    #@2f
    .line 442
    new-instance v7, Ljava/io/ObjectStreamField;

    #@31
    const-string/jumbo v8, "segmentMask"

    #@34
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@36
    invoke-direct {v7, v8, v9}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@39
    aput-object v7, v6, v11

    #@3b
    .line 443
    new-instance v7, Ljava/io/ObjectStreamField;

    #@3d
    const-string/jumbo v8, "segmentShift"

    #@40
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@42
    invoke-direct {v7, v8, v9}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@45
    const/4 v8, 0x2

    #@46
    aput-object v7, v6, v8

    #@48
    .line 440
    sput-object v6, Ljava/util/concurrent/ConcurrentHashMap;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    #@4a
    .line 3178
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    #@4c
    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@4f
    sput-object v6, Ljava/util/concurrent/ConcurrentHashMap;->counterHashCodeGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    #@51
    .line 3190
    new-instance v6, Ljava/lang/ThreadLocal;

    #@53
    invoke-direct {v6}, Ljava/lang/ThreadLocal;-><init>()V

    #@56
    .line 3189
    sput-object v6, Ljava/util/concurrent/ConcurrentHashMap;->threadCounterHashCode:Ljava/lang/ThreadLocal;

    #@58
    .line 3305
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@5b
    move-result-object v6

    #@5c
    sput-object v6, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@5e
    .line 3306
    const-class v4, Ljava/util/concurrent/ConcurrentHashMap;

    #@60
    .line 3307
    .local v4, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v6, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@62
    .line 3308
    const-string/jumbo v7, "sizeCtl"

    #@65
    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@68
    move-result-object v7

    #@69
    .line 3307
    invoke-virtual {v6, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@6c
    move-result-wide v6

    #@6d
    sput-wide v6, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    #@6f
    .line 3309
    sget-object v6, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@71
    .line 3310
    const-string/jumbo v7, "transferIndex"

    #@74
    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@77
    move-result-object v7

    #@78
    .line 3309
    invoke-virtual {v6, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@7b
    move-result-wide v6

    #@7c
    sput-wide v6, Ljava/util/concurrent/ConcurrentHashMap;->TRANSFERINDEX:J

    #@7e
    .line 3311
    sget-object v6, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@80
    .line 3312
    const-string/jumbo v7, "baseCount"

    #@83
    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@86
    move-result-object v7

    #@87
    .line 3311
    invoke-virtual {v6, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@8a
    move-result-wide v6

    #@8b
    sput-wide v6, Ljava/util/concurrent/ConcurrentHashMap;->BASECOUNT:J

    #@8d
    .line 3313
    sget-object v6, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@8f
    .line 3314
    const-string/jumbo v7, "cellsBusy"

    #@92
    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@95
    move-result-object v7

    #@96
    .line 3313
    invoke-virtual {v6, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@99
    move-result-wide v6

    #@9a
    sput-wide v6, Ljava/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    #@9c
    .line 3315
    const-class v1, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    #@9e
    .line 3316
    .local v1, "ck":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v6, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@a0
    .line 3317
    const-string/jumbo v7, "value"

    #@a3
    invoke-virtual {v1, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@a6
    move-result-object v7

    #@a7
    .line 3316
    invoke-virtual {v6, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@aa
    move-result-wide v6

    #@ab
    sput-wide v6, Ljava/util/concurrent/ConcurrentHashMap;->CELLVALUE:J

    #@ad
    .line 3318
    const-class v0, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@af
    .line 3319
    .local v0, "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v6, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@b1
    invoke-virtual {v6, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    #@b4
    move-result v6

    #@b5
    int-to-long v6, v6

    #@b6
    sput-wide v6, Ljava/util/concurrent/ConcurrentHashMap;->ABASE:J

    #@b8
    .line 3320
    sget-object v6, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@ba
    invoke-virtual {v6, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    #@bd
    move-result v5

    #@be
    .line 3321
    .local v5, "scale":I
    add-int/lit8 v6, v5, -0x1

    #@c0
    and-int/2addr v6, v5

    #@c1
    if-eqz v6, :cond_0

    #@c3
    .line 3322
    new-instance v6, Ljava/lang/Error;

    #@c5
    const-string/jumbo v7, "data type scale not a power of two"

    #@c8
    invoke-direct {v6, v7}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@cb
    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@cc
    .line 3324
    .end local v0    # "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "ck":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "scale":I
    :catch_0
    move-exception v2

    #@cd
    .line 3325
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/Error;

    #@cf
    invoke-direct {v6, v2}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@d2
    throw v6

    #@d3
    .line 3323
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "ck":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "scale":I
    :cond_0
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    #@d6
    move-result v6

    #@d7
    rsub-int/lit8 v6, v6, 0x1f

    #@d9
    sput v6, Ljava/util/concurrent/ConcurrentHashMap;->ASHIFT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@db
    .line 3330
    const-class v3, Ljava/util/concurrent/locks/LockSupport;

    #@dd
    .line 103
    .local v3, "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 659
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    #@0
    .prologue
    .line 672
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@3
    .line 673
    if-gez p1, :cond_0

    #@5
    .line 674
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@7
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@a
    throw v1

    #@b
    .line 675
    :cond_0
    const/high16 v1, 0x20000000

    #@d
    if-lt p1, v1, :cond_1

    #@f
    .line 676
    const/high16 v0, 0x40000000    # 2.0f

    #@11
    .line 678
    .local v0, "cap":I
    :goto_0
    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    #@13
    .line 672
    return-void

    #@14
    .line 677
    .end local v0    # "cap":I
    :cond_1
    ushr-int/lit8 v1, p1, 0x1

    #@16
    add-int/2addr v1, p1

    #@17
    add-int/lit8 v1, v1, 0x1

    #@19
    invoke-static {v1}, Ljava/util/concurrent/ConcurrentHashMap;->tableSizeFor(I)I

    #@1c
    move-result v0

    #@1d
    .restart local v0    # "cap":I
    goto :goto_0
.end method

.method public constructor <init>(IF)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    #@0
    .prologue
    .line 707
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    #@4
    .line 706
    return-void
.end method

.method public constructor <init>(IFI)V
    .locals 8
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F
    .param p3, "concurrencyLevel"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 728
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@4
    .line 730
    const/4 v4, 0x0

    #@5
    cmpl-float v4, p2, v4

    #@7
    if-lez v4, :cond_0

    #@9
    const/4 v1, 0x1

    #@a
    :cond_0
    if-eqz v1, :cond_1

    #@c
    if-gez p1, :cond_2

    #@e
    .line 731
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@10
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@13
    throw v1

    #@14
    .line 730
    :cond_2
    if-lez p3, :cond_1

    #@16
    .line 732
    if-ge p1, p3, :cond_3

    #@18
    .line 733
    move p1, p3

    #@19
    .line 734
    :cond_3
    int-to-long v4, p1

    #@1a
    long-to-float v1, v4

    #@1b
    div-float/2addr v1, p2

    #@1c
    float-to-double v4, v1

    #@1d
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    #@1f
    add-double/2addr v4, v6

    #@20
    double-to-long v2, v4

    #@21
    .line 735
    .local v2, "size":J
    const-wide/32 v4, 0x40000000

    #@24
    cmp-long v1, v2, v4

    #@26
    if-ltz v1, :cond_4

    #@28
    .line 736
    const/high16 v0, 0x40000000    # 2.0f

    #@2a
    .line 737
    .local v0, "cap":I
    :goto_0
    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    #@2c
    .line 729
    return-void

    #@2d
    .line 736
    .end local v0    # "cap":I
    :cond_4
    long-to-int v1, v2

    #@2e
    invoke-static {v1}, Ljava/util/concurrent/ConcurrentHashMap;->tableSizeFor(I)I

    #@31
    move-result v0

    #@32
    .restart local v0    # "cap":I
    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 686
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@3
    .line 687
    const/16 v0, 0x10

    #@5
    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    #@7
    .line 688
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    #@a
    .line 686
    return-void
.end method

.method private final addCount(JI)V
    .locals 35
    .param p1, "x"    # J
    .param p3, "check"    # I

    #@0
    .prologue
    .line 1617
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    #@4
    move-object/from16 v26, v0

    #@6
    .local v26, "as":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    if-nez v26, :cond_1

    #@8
    .line 1618
    sget-object v6, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@a
    sget-wide v8, Ljava/util/concurrent/ConcurrentHashMap;->BASECOUNT:J

    #@c
    move-object/from16 v0, p0

    #@e
    iget-wide v10, v0, Ljava/util/concurrent/ConcurrentHashMap;->baseCount:J

    #@10
    .local v10, "b":J
    add-long v12, v10, p1

    #@12
    .local v12, "s":J
    move-object/from16 v7, p0

    #@14
    invoke-virtual/range {v6 .. v13}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@17
    move-result v6

    #@18
    if-eqz v6, :cond_1

    #@1a
    .line 1633
    .end local v10    # "b":J
    :goto_0
    if-ltz p3, :cond_0

    #@1c
    .line 1635
    :goto_1
    move-object/from16 v0, p0

    #@1e
    iget v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    #@20
    move/from16 v24, v0

    #@22
    .local v24, "sc":I
    move/from16 v0, v24

    #@24
    int-to-long v6, v0

    #@25
    cmp-long v6, v12, v6

    #@27
    if-ltz v6, :cond_0

    #@29
    move-object/from16 v0, p0

    #@2b
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@2d
    move-object/from16 v32, v0

    #@2f
    .local v32, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v32, :cond_0

    #@31
    .line 1636
    move-object/from16 v0, v32

    #@33
    array-length v0, v0

    #@34
    move/from16 v29, v0

    #@36
    .local v29, "n":I
    const/high16 v6, 0x40000000    # 2.0f

    #@38
    move/from16 v0, v29

    #@3a
    if-ge v0, v6, :cond_0

    #@3c
    .line 1637
    invoke-static/range {v29 .. v29}, Ljava/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    #@3f
    move-result v31

    #@40
    .line 1638
    .local v31, "rs":I
    if-gez v24, :cond_7

    #@42
    .line 1639
    sget v6, Ljava/util/concurrent/ConcurrentHashMap;->RESIZE_STAMP_SHIFT:I

    #@44
    ushr-int v6, v24, v6

    #@46
    move/from16 v0, v31

    #@48
    if-ne v6, v0, :cond_0

    #@4a
    add-int/lit8 v6, v31, 0x1

    #@4c
    move/from16 v0, v24

    #@4e
    if-ne v0, v6, :cond_5

    #@50
    .line 1615
    .end local v24    # "sc":I
    .end local v29    # "n":I
    .end local v31    # "rs":I
    .end local v32    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_0
    return-void

    #@51
    .line 1620
    .end local v12    # "s":J
    :cond_1
    const/16 v33, 0x1

    #@53
    .line 1621
    .local v33, "uncontended":Z
    sget-object v6, Ljava/util/concurrent/ConcurrentHashMap;->threadCounterHashCode:Ljava/lang/ThreadLocal;

    #@55
    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@58
    move-result-object v27

    #@59
    check-cast v27, Ljava/util/concurrent/ConcurrentHashMap$CounterHashCode;

    #@5b
    .local v27, "hc":Ljava/util/concurrent/ConcurrentHashMap$CounterHashCode;
    if-eqz v27, :cond_2

    #@5d
    .line 1622
    if-nez v26, :cond_3

    #@5f
    .line 1626
    .end local v33    # "uncontended":Z
    :cond_2
    move-object/from16 v0, p0

    #@61
    move-wide/from16 v1, p1

    #@63
    move-object/from16 v3, v27

    #@65
    move/from16 v4, v33

    #@67
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->fullAddCount(JLjava/util/concurrent/ConcurrentHashMap$CounterHashCode;Z)V

    #@6a
    .line 1627
    return-void

    #@6b
    .line 1622
    .restart local v33    # "uncontended":Z
    :cond_3
    move-object/from16 v0, v26

    #@6d
    array-length v6, v0

    #@6e
    add-int/lit8 v28, v6, -0x1

    #@70
    .local v28, "m":I
    if-ltz v28, :cond_2

    #@72
    .line 1623
    move-object/from16 v0, v27

    #@74
    iget v6, v0, Ljava/util/concurrent/ConcurrentHashMap$CounterHashCode;->code:I

    #@76
    and-int v6, v6, v28

    #@78
    aget-object v15, v26, v6

    #@7a
    .local v15, "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    if-eqz v15, :cond_2

    #@7c
    .line 1625
    sget-object v14, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@7e
    sget-wide v16, Ljava/util/concurrent/ConcurrentHashMap;->CELLVALUE:J

    #@80
    iget-wide v0, v15, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;->value:J

    #@82
    move-wide/from16 v18, v0

    #@84
    .local v18, "v":J
    add-long v20, v18, p1

    #@86
    invoke-virtual/range {v14 .. v21}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@89
    move-result v33

    #@8a
    .line 1624
    .local v33, "uncontended":Z
    if-eqz v33, :cond_2

    #@8c
    .line 1629
    const/4 v6, 0x1

    #@8d
    move/from16 v0, p3

    #@8f
    if-gt v0, v6, :cond_4

    #@91
    .line 1630
    return-void

    #@92
    .line 1631
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    #@95
    move-result-wide v12

    #@96
    .restart local v12    # "s":J
    goto :goto_0

    #@97
    .line 1640
    .end local v15    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .end local v18    # "v":J
    .end local v27    # "hc":Ljava/util/concurrent/ConcurrentHashMap$CounterHashCode;
    .end local v28    # "m":I
    .end local v33    # "uncontended":Z
    .restart local v24    # "sc":I
    .restart local v29    # "n":I
    .restart local v31    # "rs":I
    .restart local v32    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_5
    sget v6, Ljava/util/concurrent/ConcurrentHashMap;->MAX_RESIZERS:I

    #@99
    add-int v6, v6, v31

    #@9b
    move/from16 v0, v24

    #@9d
    if-eq v0, v6, :cond_0

    #@9f
    move-object/from16 v0, p0

    #@a1
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@a3
    move-object/from16 v30, v0

    #@a5
    .local v30, "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v30, :cond_0

    #@a7
    .line 1641
    move-object/from16 v0, p0

    #@a9
    iget v6, v0, Ljava/util/concurrent/ConcurrentHashMap;->transferIndex:I

    #@ab
    if-lez v6, :cond_0

    #@ad
    .line 1643
    sget-object v20, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@af
    sget-wide v22, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    #@b1
    add-int/lit8 v25, v24, 0x1

    #@b3
    move-object/from16 v21, p0

    #@b5
    invoke-virtual/range {v20 .. v25}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@b8
    move-result v6

    #@b9
    if-eqz v6, :cond_6

    #@bb
    .line 1644
    move-object/from16 v0, p0

    #@bd
    move-object/from16 v1, v32

    #@bf
    move-object/from16 v2, v30

    #@c1
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->transfer([Ljava/util/concurrent/ConcurrentHashMap$Node;[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@c4
    .line 1649
    .end local v30    # "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_6
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    #@c7
    move-result-wide v12

    #@c8
    goto/16 :goto_1

    #@ca
    .line 1646
    :cond_7
    sget-object v20, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@cc
    sget-wide v22, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    #@ce
    .line 1647
    sget v6, Ljava/util/concurrent/ConcurrentHashMap;->RESIZE_STAMP_SHIFT:I

    #@d0
    shl-int v6, v31, v6

    #@d2
    add-int/lit8 v25, v6, 0x2

    #@d4
    move-object/from16 v21, p0

    #@d6
    .line 1646
    invoke-virtual/range {v20 .. v25}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@d9
    move-result v6

    #@da
    if-eqz v6, :cond_6

    #@dc
    .line 1648
    const/4 v6, 0x0

    #@dd
    move-object/from16 v0, p0

    #@df
    move-object/from16 v1, v32

    #@e1
    invoke-direct {v0, v1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->transfer([Ljava/util/concurrent/ConcurrentHashMap$Node;[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@e4
    goto :goto_2
.end method

.method static final casTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)Z
    .locals 6
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;I",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 596
    .local p0, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p2, "c":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p3, "v":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@2
    int-to-long v2, p1

    #@3
    sget v1, Ljava/util/concurrent/ConcurrentHashMap;->ASHIFT:I

    #@5
    shl-long/2addr v2, v1

    #@6
    sget-wide v4, Ljava/util/concurrent/ConcurrentHashMap;->ABASE:J

    #@8
    add-long/2addr v2, v4

    #@9
    move-object v1, p0

    #@a
    move-object v4, p2

    #@b
    move-object v5, p3

    #@c
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    return v0
.end method

.method static comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 9
    .param p0, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 544
    instance-of v6, p0, Ljava/lang/Comparable;

    #@3
    if-eqz v6, :cond_2

    #@5
    .line 546
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Ljava/lang/String;

    #@b
    if-ne v1, v6, :cond_0

    #@d
    .line 547
    return-object v1

    #@e
    .line 548
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    #@11
    move-result-object v5

    #@12
    .local v5, "ts":[Ljava/lang/reflect/Type;
    if-eqz v5, :cond_2

    #@14
    .line 549
    const/4 v2, 0x0

    #@15
    .local v2, "i":I
    :goto_0
    array-length v6, v5

    #@16
    if-ge v2, v6, :cond_2

    #@18
    .line 550
    aget-object v4, v5, v2

    #@1a
    .local v4, "t":Ljava/lang/reflect/Type;
    instance-of v6, v4, Ljava/lang/reflect/ParameterizedType;

    #@1c
    if-eqz v6, :cond_1

    #@1e
    move-object v3, v4

    #@1f
    .line 551
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    #@21
    .local v3, "p":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    #@24
    move-result-object v6

    #@25
    .line 552
    const-class v7, Ljava/lang/Comparable;

    #@27
    .line 551
    if-ne v6, v7, :cond_1

    #@29
    .line 553
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    #@2c
    move-result-object v0

    #@2d
    .local v0, "as":[Ljava/lang/reflect/Type;
    if-eqz v0, :cond_1

    #@2f
    .line 554
    array-length v6, v0

    #@30
    const/4 v7, 0x1

    #@31
    if-ne v6, v7, :cond_1

    #@33
    const/4 v6, 0x0

    #@34
    aget-object v6, v0, v6

    #@36
    if-ne v6, v1, :cond_1

    #@38
    .line 555
    return-object v1

    #@39
    .line 549
    .end local v0    # "as":[Ljava/lang/reflect/Type;
    .end local v3    # "p":Ljava/lang/reflect/ParameterizedType;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 559
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "i":I
    .end local v4    # "t":Ljava/lang/reflect/Type;
    .end local v5    # "ts":[Ljava/lang/reflect/Type;
    :cond_2
    return-object v8
.end method

.method static compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "k"    # Ljava/lang/Object;
    .param p2, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    #@0
    .prologue
    .line 568
    .local p0, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_0

    #@2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    if-eq v0, p0, :cond_1

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    .end local p1    # "k":Ljava/lang/Object;
    :goto_0
    return v0

    #@a
    .line 569
    .restart local p1    # "k":Ljava/lang/Object;
    :cond_1
    check-cast p1, Ljava/lang/Comparable;

    #@c
    .end local p1    # "k":Ljava/lang/Object;
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@f
    move-result v0

    #@10
    goto :goto_0
.end method

.method private final fullAddCount(JLjava/util/concurrent/ConcurrentHashMap$CounterHashCode;Z)V
    .locals 31
    .param p1, "x"    # J
    .param p3, "hc"    # Ljava/util/concurrent/ConcurrentHashMap$CounterHashCode;
    .param p4, "wasUncontended"    # Z

    #@0
    .prologue
    .line 3208
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    if-nez p3, :cond_4

    #@2
    .line 3209
    new-instance p3, Ljava/util/concurrent/ConcurrentHashMap$CounterHashCode;

    #@4
    .end local p3    # "hc":Ljava/util/concurrent/ConcurrentHashMap$CounterHashCode;
    invoke-direct/range {p3 .. p3}, Ljava/util/concurrent/ConcurrentHashMap$CounterHashCode;-><init>()V

    #@7
    .line 3210
    .restart local p3    # "hc":Ljava/util/concurrent/ConcurrentHashMap$CounterHashCode;
    sget-object v4, Ljava/util/concurrent/ConcurrentHashMap;->counterHashCodeGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    #@9
    const v6, 0x61c88647

    #@c
    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    #@f
    move-result v29

    #@10
    .line 3211
    .local v29, "s":I
    if-nez v29, :cond_3

    #@12
    const/16 v21, 0x1

    #@14
    :goto_0
    move/from16 v0, v21

    #@16
    move-object/from16 v1, p3

    #@18
    iput v0, v1, Ljava/util/concurrent/ConcurrentHashMap$CounterHashCode;->code:I

    #@1a
    .line 3212
    .local v21, "h":I
    sget-object v4, Ljava/util/concurrent/ConcurrentHashMap;->threadCounterHashCode:Ljava/lang/ThreadLocal;

    #@1c
    move-object/from16 v0, p3

    #@1e
    invoke-virtual {v4, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@21
    .line 3216
    .end local v29    # "s":I
    :goto_1
    const/16 v19, 0x0

    #@23
    .line 3219
    .end local p4    # "wasUncontended":Z
    .local v19, "collide":Z
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    #@25
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    #@27
    move-object/from16 v18, v0

    #@29
    .local v18, "as":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    if-eqz v18, :cond_e

    #@2b
    move-object/from16 v0, v18

    #@2d
    array-length v0, v0

    #@2e
    move/from16 v26, v0

    #@30
    .local v26, "n":I
    if-lez v26, :cond_e

    #@32
    .line 3220
    add-int/lit8 v4, v26, -0x1

    #@34
    and-int v4, v4, v21

    #@36
    aget-object v5, v18, v4

    #@38
    .local v5, "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    if-nez v5, :cond_7

    #@3a
    .line 3221
    move-object/from16 v0, p0

    #@3c
    iget v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    #@3e
    if-nez v4, :cond_5

    #@40
    .line 3222
    new-instance v27, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    #@42
    move-object/from16 v0, v27

    #@44
    move-wide/from16 v1, p1

    #@46
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;-><init>(J)V

    #@49
    .line 3223
    .local v27, "r":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    move-object/from16 v0, p0

    #@4b
    iget v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    #@4d
    if-nez v4, :cond_5

    #@4f
    .line 3224
    sget-object v4, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@51
    sget-wide v6, Ljava/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    #@53
    const/4 v8, 0x0

    #@54
    const/4 v9, 0x1

    #@55
    move-object/from16 v5, p0

    #@57
    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@5a
    .end local v5    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    move-result v4

    #@5b
    .line 3223
    if-eqz v4, :cond_5

    #@5d
    .line 3225
    const/16 v20, 0x0

    #@5f
    .line 3228
    .local v20, "created":Z
    :try_start_0
    move-object/from16 v0, p0

    #@61
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    #@63
    move-object/from16 v28, v0

    #@65
    .local v28, "rs":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    if-eqz v28, :cond_1

    #@67
    .line 3229
    move-object/from16 v0, v28

    #@69
    array-length v0, v0

    #@6a
    move/from16 v25, v0

    #@6c
    .local v25, "m":I
    if-lez v25, :cond_1

    #@6e
    .line 3230
    add-int/lit8 v4, v25, -0x1

    #@70
    and-int v24, v4, v21

    #@72
    .local v24, "j":I
    aget-object v4, v28, v24

    #@74
    if-nez v4, :cond_1

    #@76
    .line 3231
    aput-object v27, v28, v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@78
    .line 3232
    const/16 v20, 0x1

    #@7a
    .line 3235
    .end local v24    # "j":I
    .end local v25    # "m":I
    :cond_1
    const/4 v4, 0x0

    #@7b
    move-object/from16 v0, p0

    #@7d
    iput v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    #@7f
    .line 3237
    if-eqz v20, :cond_0

    #@81
    .line 3290
    .end local v20    # "created":Z
    .end local v26    # "n":I
    .end local v27    # "r":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .end local v28    # "rs":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_2
    :goto_3
    move/from16 v0, v21

    #@83
    move-object/from16 v1, p3

    #@85
    iput v0, v1, Ljava/util/concurrent/ConcurrentHashMap$CounterHashCode;->code:I

    #@87
    .line 3206
    return-void

    #@88
    .end local v18    # "as":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .end local v19    # "collide":Z
    .end local v21    # "h":I
    .restart local v29    # "s":I
    .restart local p4    # "wasUncontended":Z
    :cond_3
    move/from16 v21, v29

    #@8a
    .line 3211
    goto :goto_0

    #@8b
    .line 3215
    .end local v29    # "s":I
    :cond_4
    move-object/from16 v0, p3

    #@8d
    iget v0, v0, Ljava/util/concurrent/ConcurrentHashMap$CounterHashCode;->code:I

    #@8f
    move/from16 v21, v0

    #@91
    .restart local v21    # "h":I
    goto :goto_1

    #@92
    .line 3234
    .end local p4    # "wasUncontended":Z
    .restart local v18    # "as":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v19    # "collide":Z
    .restart local v20    # "created":Z
    .restart local v26    # "n":I
    .restart local v27    # "r":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :catchall_0
    move-exception v4

    #@93
    .line 3235
    const/4 v6, 0x0

    #@94
    move-object/from16 v0, p0

    #@96
    iput v6, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    #@98
    .line 3234
    throw v4

    #@99
    .line 3242
    .end local v20    # "created":Z
    .end local v27    # "r":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_5
    const/16 v19, 0x0

    #@9b
    .line 3267
    :cond_6
    :goto_4
    shl-int/lit8 v4, v21, 0xd

    #@9d
    xor-int v21, v21, v4

    #@9f
    .line 3268
    ushr-int/lit8 v4, v21, 0x11

    #@a1
    xor-int v21, v21, v4

    #@a3
    .line 3269
    shl-int/lit8 v4, v21, 0x5

    #@a5
    xor-int v21, v21, v4

    #@a7
    .line 3219
    goto/16 :goto_2

    #@a9
    .line 3244
    .restart local v5    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_7
    if-nez p4, :cond_8

    #@ab
    .line 3245
    const/16 p4, 0x1

    #@ad
    .local p4, "wasUncontended":Z
    goto :goto_4

    #@ae
    .line 3246
    .end local p4    # "wasUncontended":Z
    :cond_8
    sget-object v4, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@b0
    sget-wide v6, Ljava/util/concurrent/ConcurrentHashMap;->CELLVALUE:J

    #@b2
    iget-wide v8, v5, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;->value:J

    #@b4
    .local v8, "v":J
    add-long v10, v8, p1

    #@b6
    invoke-virtual/range {v4 .. v11}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@b9
    move-result v4

    #@ba
    if-nez v4, :cond_2

    #@bc
    .line 3248
    move-object/from16 v0, p0

    #@be
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    #@c0
    move-object/from16 v0, v18

    #@c2
    if-ne v4, v0, :cond_9

    #@c4
    sget v4, Ljava/util/concurrent/ConcurrentHashMap;->NCPU:I

    #@c6
    move/from16 v0, v26

    #@c8
    if-lt v0, v4, :cond_a

    #@ca
    .line 3249
    :cond_9
    const/16 v19, 0x0

    #@cc
    goto :goto_4

    #@cd
    .line 3250
    :cond_a
    if-nez v19, :cond_b

    #@cf
    .line 3251
    const/16 v19, 0x1

    #@d1
    goto :goto_4

    #@d2
    .line 3252
    :cond_b
    move-object/from16 v0, p0

    #@d4
    iget v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    #@d6
    if-nez v4, :cond_6

    #@d8
    .line 3253
    sget-object v10, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@da
    sget-wide v12, Ljava/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    #@dc
    const/4 v14, 0x0

    #@dd
    const/4 v15, 0x1

    #@de
    move-object/from16 v11, p0

    #@e0
    invoke-virtual/range {v10 .. v15}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@e3
    move-result v4

    #@e4
    .line 3252
    if-eqz v4, :cond_6

    #@e6
    .line 3255
    :try_start_1
    move-object/from16 v0, p0

    #@e8
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    #@ea
    move-object/from16 v0, v18

    #@ec
    if-ne v4, v0, :cond_d

    #@ee
    .line 3256
    shl-int/lit8 v4, v26, 0x1

    #@f0
    new-array v0, v4, [Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    #@f2
    move-object/from16 v28, v0

    #@f4
    .line 3257
    .restart local v28    # "rs":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    const/16 v22, 0x0

    #@f6
    .local v22, "i":I
    :goto_5
    move/from16 v0, v22

    #@f8
    move/from16 v1, v26

    #@fa
    if-ge v0, v1, :cond_c

    #@fc
    .line 3258
    aget-object v4, v18, v22

    #@fe
    aput-object v4, v28, v22

    #@100
    .line 3257
    add-int/lit8 v22, v22, 0x1

    #@102
    goto :goto_5

    #@103
    .line 3259
    :cond_c
    move-object/from16 v0, v28

    #@105
    move-object/from16 v1, p0

    #@107
    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@109
    .line 3262
    .end local v22    # "i":I
    .end local v28    # "rs":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_d
    const/4 v4, 0x0

    #@10a
    move-object/from16 v0, p0

    #@10c
    iput v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    #@10e
    .line 3264
    const/16 v19, 0x0

    #@110
    goto/16 :goto_2

    #@112
    .line 3261
    :catchall_1
    move-exception v4

    #@113
    .line 3262
    const/4 v6, 0x0

    #@114
    move-object/from16 v0, p0

    #@116
    iput v6, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    #@118
    .line 3261
    throw v4

    #@119
    .line 3271
    .end local v5    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .end local v8    # "v":J
    .end local v26    # "n":I
    :cond_e
    move-object/from16 v0, p0

    #@11b
    iget v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    #@11d
    if-nez v4, :cond_10

    #@11f
    move-object/from16 v0, p0

    #@121
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    #@123
    move-object/from16 v0, v18

    #@125
    if-ne v4, v0, :cond_10

    #@127
    .line 3272
    sget-object v10, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@129
    sget-wide v12, Ljava/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    #@12b
    const/4 v14, 0x0

    #@12c
    const/4 v15, 0x1

    #@12d
    move-object/from16 v11, p0

    #@12f
    invoke-virtual/range {v10 .. v15}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@132
    move-result v4

    #@133
    .line 3271
    if-eqz v4, :cond_10

    #@135
    .line 3273
    const/16 v23, 0x0

    #@137
    .line 3275
    .local v23, "init":Z
    :try_start_2
    move-object/from16 v0, p0

    #@139
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    #@13b
    move-object/from16 v0, v18

    #@13d
    if-ne v4, v0, :cond_f

    #@13f
    .line 3276
    const/4 v4, 0x2

    #@140
    new-array v0, v4, [Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    #@142
    move-object/from16 v28, v0

    #@144
    .line 3277
    .restart local v28    # "rs":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    and-int/lit8 v4, v21, 0x1

    #@146
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    #@148
    move-wide/from16 v0, p1

    #@14a
    invoke-direct {v6, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;-><init>(J)V

    #@14d
    aput-object v6, v28, v4

    #@14f
    .line 3278
    move-object/from16 v0, v28

    #@151
    move-object/from16 v1, p0

    #@153
    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@155
    .line 3279
    const/16 v23, 0x1

    #@157
    .line 3282
    .end local v28    # "rs":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_f
    const/4 v4, 0x0

    #@158
    move-object/from16 v0, p0

    #@15a
    iput v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    #@15c
    .line 3284
    if-eqz v23, :cond_0

    #@15e
    goto/16 :goto_3

    #@160
    .line 3281
    :catchall_2
    move-exception v4

    #@161
    .line 3282
    const/4 v6, 0x0

    #@162
    move-object/from16 v0, p0

    #@164
    iput v6, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    #@166
    .line 3281
    throw v4

    #@167
    .line 3287
    .end local v23    # "init":Z
    :cond_10
    sget-object v10, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@169
    sget-wide v12, Ljava/util/concurrent/ConcurrentHashMap;->BASECOUNT:J

    #@16b
    move-object/from16 v0, p0

    #@16d
    iget-wide v8, v0, Ljava/util/concurrent/ConcurrentHashMap;->baseCount:J

    #@16f
    .restart local v8    # "v":J
    add-long v16, v8, p1

    #@171
    move-object/from16 v11, p0

    #@173
    move-wide v14, v8

    #@174
    invoke-virtual/range {v10 .. v17}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@177
    move-result v4

    #@178
    if-eqz v4, :cond_0

    #@17a
    goto/16 :goto_3
.end method

.method private final initTable()[Ljava/util/concurrent/ConcurrentHashMap$Node;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1584
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    :cond_0
    :goto_0
    iget-object v8, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@2
    .local v8, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v8, :cond_1

    #@4
    array-length v0, v8

    #@5
    if-nez v0, :cond_5

    #@7
    .line 1585
    :cond_1
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    #@9
    .local v4, "sc":I
    if-gez v4, :cond_2

    #@b
    .line 1586
    invoke-static {}, Ljava/lang/Thread;->yield()V

    #@e
    goto :goto_0

    #@f
    .line 1587
    :cond_2
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@11
    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    #@13
    const/4 v5, -0x1

    #@14
    move-object v1, p0

    #@15
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 1589
    :try_start_0
    iget-object v8, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@1d
    if-eqz v8, :cond_3

    #@1f
    array-length v0, v8

    #@20
    if-nez v0, :cond_4

    #@22
    .line 1590
    :cond_3
    if-lez v4, :cond_6

    #@24
    move v6, v4

    #@25
    .line 1592
    .local v6, "n":I
    :goto_1
    new-array v7, v6, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@27
    .line 1593
    .local v7, "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object v8, v7

    #@28
    iput-object v7, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 1594
    ushr-int/lit8 v0, v6, 0x2

    #@2c
    sub-int v4, v6, v0

    #@2e
    .line 1597
    .end local v6    # "n":I
    .end local v7    # "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_4
    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    #@30
    .line 1602
    .end local v4    # "sc":I
    :cond_5
    return-object v8

    #@31
    .line 1590
    .restart local v4    # "sc":I
    :cond_6
    const/16 v6, 0x10

    #@33
    .restart local v6    # "n":I
    goto :goto_1

    #@34
    .line 1596
    .end local v6    # "n":I
    :catchall_0
    move-exception v0

    #@35
    .line 1597
    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    #@37
    .line 1596
    throw v0
.end method

.method public static newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentHashMap$KeySetView",
            "<TK;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1484
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    #@2
    .line 1485
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    #@4
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@7
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@9
    .line 1484
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V

    #@c
    return-object v0
.end method

.method public static newKeySet(I)Ljava/util/concurrent/ConcurrentHashMap$KeySetView;
    .locals 3
    .param p0, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/concurrent/ConcurrentHashMap$KeySetView",
            "<TK;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1503
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    #@2
    .line 1504
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    #@4
    invoke-direct {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    #@7
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@9
    .line 1503
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V

    #@c
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 33
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1270
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v5, -0x1

    #@1
    move-object/from16 v0, p0

    #@3
    iput v5, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    #@5
    .line 1271
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@8
    .line 1272
    const-wide/16 v26, 0x0

    #@a
    .line 1273
    .local v26, "size":J
    const/16 v22, 0x0

    #@c
    .line 1275
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@f
    move-result-object v18

    #@10
    .line 1276
    .local v18, "k":Ljava/lang/Object;, "TK;"
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@13
    move-result-object v32

    #@14
    .line 1277
    .local v32, "v":Ljava/lang/Object;, "TV;"
    if-eqz v18, :cond_0

    #@16
    if-eqz v32, :cond_0

    #@18
    .line 1278
    new-instance v23, Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@1a
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->hashCode()I

    #@1d
    move-result v5

    #@1e
    invoke-static {v5}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    #@21
    move-result v5

    #@22
    move-object/from16 v0, v23

    #@24
    move-object/from16 v1, v18

    #@26
    move-object/from16 v2, v32

    #@28
    move-object/from16 v3, v22

    #@2a
    invoke-direct {v0, v5, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@2d
    .line 1279
    .local v23, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const-wide/16 v6, 0x1

    #@2f
    add-long v26, v26, v6

    #@31
    move-object/from16 v22, v23

    #@33
    .end local v23    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v22, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_0

    #@34
    .line 1284
    .end local v22    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_0
    const-wide/16 v6, 0x0

    #@36
    cmp-long v5, v26, v6

    #@38
    if-nez v5, :cond_1

    #@3a
    .line 1285
    const/4 v5, 0x0

    #@3b
    move-object/from16 v0, p0

    #@3d
    iput v5, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    #@3f
    .line 1262
    :goto_1
    return-void

    #@40
    .line 1288
    :cond_1
    const-wide/32 v6, 0x20000000

    #@43
    cmp-long v5, v26, v6

    #@45
    if-ltz v5, :cond_4

    #@47
    .line 1289
    const/high16 v20, 0x40000000    # 2.0f

    #@49
    .line 1295
    .local v20, "n":I
    :goto_2
    move/from16 v0, v20

    #@4b
    new-array v0, v0, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@4d
    move-object/from16 v30, v0

    #@4f
    .line 1296
    .local v30, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    add-int/lit8 v19, v20, -0x1

    #@51
    .line 1297
    .local v19, "mask":I
    const-wide/16 v10, 0x0

    #@53
    .line 1298
    .local v10, "added":J
    :goto_3
    if-eqz v22, :cond_d

    #@55
    .line 1300
    move-object/from16 v0, v22

    #@57
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@59
    move-object/from16 v21, v0

    #@5b
    .line 1301
    .local v21, "next":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object/from16 v0, v22

    #@5d
    iget v14, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@5f
    .local v14, "h":I
    and-int v17, v14, v19

    #@61
    .line 1302
    .local v17, "j":I
    move-object/from16 v0, v30

    #@63
    move/from16 v1, v17

    #@65
    invoke-static {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@68
    move-result-object v13

    #@69
    .local v13, "first":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v13, :cond_5

    #@6b
    .line 1303
    const/16 v16, 0x1

    #@6d
    .line 1343
    .local v16, "insertAtFront":Z
    :cond_2
    :goto_4
    if-eqz v16, :cond_3

    #@6f
    .line 1344
    const-wide/16 v6, 0x1

    #@71
    add-long/2addr v10, v6

    #@72
    .line 1345
    move-object/from16 v0, v22

    #@74
    iput-object v13, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@76
    .line 1346
    move-object/from16 v0, v30

    #@78
    move/from16 v1, v17

    #@7a
    move-object/from16 v2, v22

    #@7c
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    #@7f
    .line 1348
    :cond_3
    move-object/from16 v22, v21

    #@81
    .restart local v22    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_3

    #@82
    .line 1291
    .end local v10    # "added":J
    .end local v13    # "first":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v14    # "h":I
    .end local v16    # "insertAtFront":Z
    .end local v17    # "j":I
    .end local v19    # "mask":I
    .end local v20    # "n":I
    .end local v21    # "next":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v22    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v30    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_4
    move-wide/from16 v0, v26

    #@84
    long-to-int v0, v0

    #@85
    move/from16 v28, v0

    #@87
    .line 1292
    .local v28, "sz":I
    ushr-int/lit8 v5, v28, 0x1

    #@89
    add-int v5, v5, v28

    #@8b
    add-int/lit8 v5, v5, 0x1

    #@8d
    invoke-static {v5}, Ljava/util/concurrent/ConcurrentHashMap;->tableSizeFor(I)I

    #@90
    move-result v20

    #@91
    .restart local v20    # "n":I
    goto :goto_2

    #@92
    .line 1305
    .end local v28    # "sz":I
    .restart local v10    # "added":J
    .restart local v13    # "first":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v14    # "h":I
    .restart local v17    # "j":I
    .restart local v19    # "mask":I
    .restart local v21    # "next":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v30    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_5
    move-object/from16 v0, v22

    #@94
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@96
    move-object/from16 v18, v0

    #@98
    .line 1306
    iget v5, v13, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@9a
    if-gez v5, :cond_7

    #@9c
    move-object/from16 v29, v13

    #@9e
    .line 1307
    check-cast v29, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    #@a0
    .line 1308
    .local v29, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    move-object/from16 v0, v22

    #@a2
    iget-object v5, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@a4
    move-object/from16 v0, v29

    #@a6
    move-object/from16 v1, v18

    #@a8
    invoke-virtual {v0, v14, v1, v5}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@ab
    move-result-object v5

    #@ac
    if-nez v5, :cond_6

    #@ae
    .line 1309
    const-wide/16 v6, 0x1

    #@b0
    add-long/2addr v10, v6

    #@b1
    .line 1310
    :cond_6
    const/16 v16, 0x0

    #@b3
    .restart local v16    # "insertAtFront":Z
    goto :goto_4

    #@b4
    .line 1313
    .end local v16    # "insertAtFront":Z
    .end local v29    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    :cond_7
    const/4 v12, 0x0

    #@b5
    .line 1314
    .local v12, "binCount":I
    const/16 v16, 0x1

    #@b7
    .line 1316
    .restart local v16    # "insertAtFront":Z
    move-object/from16 v24, v13

    #@b9
    .local v24, "q":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_5
    if-eqz v24, :cond_9

    #@bb
    .line 1317
    move-object/from16 v0, v24

    #@bd
    iget v5, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@bf
    if-ne v5, v14, :cond_a

    #@c1
    .line 1318
    move-object/from16 v0, v24

    #@c3
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@c5
    move-object/from16 v25, v0

    #@c7
    .local v25, "qk":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, v25

    #@c9
    move-object/from16 v1, v18

    #@cb
    if-eq v0, v1, :cond_8

    #@cd
    .line 1319
    if-eqz v25, :cond_a

    #@cf
    move-object/from16 v0, v18

    #@d1
    move-object/from16 v1, v25

    #@d3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@d6
    move-result v5

    #@d7
    .line 1317
    if-eqz v5, :cond_a

    #@d9
    .line 1320
    :cond_8
    const/16 v16, 0x0

    #@db
    .line 1325
    .end local v25    # "qk":Ljava/lang/Object;, "TK;"
    :cond_9
    if-eqz v16, :cond_2

    #@dd
    const/16 v5, 0x8

    #@df
    if-lt v12, v5, :cond_2

    #@e1
    .line 1326
    const/16 v16, 0x0

    #@e3
    .line 1327
    const-wide/16 v6, 0x1

    #@e5
    add-long/2addr v10, v6

    #@e6
    .line 1328
    move-object/from16 v0, v22

    #@e8
    iput-object v13, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@ea
    .line 1329
    const/4 v15, 0x0

    #@eb
    .local v15, "hd":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/16 v31, 0x0

    #@ed
    .line 1330
    .local v31, "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    move-object/from16 v24, v22

    #@ef
    .end local v15    # "hd":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v31    # "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_6
    if-eqz v24, :cond_c

    #@f1
    .line 1331
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@f3
    .line 1332
    move-object/from16 v0, v24

    #@f5
    iget v5, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@f7
    move-object/from16 v0, v24

    #@f9
    iget-object v6, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@fb
    move-object/from16 v0, v24

    #@fd
    iget-object v7, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@ff
    const/4 v8, 0x0

    #@100
    const/4 v9, 0x0

    #@101
    .line 1331
    invoke-direct/range {v4 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    #@104
    .line 1333
    .local v4, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    move-object/from16 v0, v31

    #@106
    iput-object v0, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@108
    if-nez v31, :cond_b

    #@10a
    .line 1334
    move-object v15, v4

    #@10b
    .line 1337
    :goto_7
    move-object/from16 v31, v4

    #@10d
    .line 1330
    .local v31, "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    move-object/from16 v0, v24

    #@10f
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@111
    move-object/from16 v24, v0

    #@113
    goto :goto_6

    #@114
    .line 1323
    .end local v4    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v31    # "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_a
    add-int/lit8 v12, v12, 0x1

    #@116
    .line 1316
    move-object/from16 v0, v24

    #@118
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@11a
    move-object/from16 v24, v0

    #@11c
    goto :goto_5

    #@11d
    .line 1336
    .restart local v4    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_b
    move-object/from16 v0, v31

    #@11f
    iput-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@121
    goto :goto_7

    #@122
    .line 1339
    .end local v4    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_c
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    #@124
    invoke-direct {v5, v15}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    #@127
    move-object/from16 v0, v30

    #@129
    move/from16 v1, v17

    #@12b
    invoke-static {v0, v1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    #@12e
    goto/16 :goto_4

    #@130
    .line 1350
    .end local v12    # "binCount":I
    .end local v13    # "first":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v14    # "h":I
    .end local v16    # "insertAtFront":Z
    .end local v17    # "j":I
    .end local v21    # "next":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v24    # "q":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_d
    move-object/from16 v0, v30

    #@132
    move-object/from16 v1, p0

    #@134
    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@136
    .line 1351
    ushr-int/lit8 v5, v20, 0x2

    #@138
    sub-int v5, v20, v5

    #@13a
    move-object/from16 v0, p0

    #@13c
    iput v5, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    #@13e
    .line 1352
    move-object/from16 v0, p0

    #@140
    iput-wide v10, v0, Ljava/util/concurrent/ConcurrentHashMap;->baseCount:J

    #@142
    goto/16 :goto_1
.end method

.method static final resizeStamp(I)I
    .locals 3
    .param p0, "n"    # I

    #@0
    .prologue
    .line 1576
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    #@3
    move-result v0

    #@4
    sget v1, Ljava/util/concurrent/ConcurrentHashMap;->RESIZE_STAMP_BITS:I

    #@6
    add-int/lit8 v1, v1, -0x1

    #@8
    const/4 v2, 0x1

    #@9
    shl-int v1, v2, v1

    #@b
    or-int/2addr v0, v1

    #@c
    return v0
.end method

.method static final setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V
    .locals 6
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;I",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 600
    .local p0, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p2, "v":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@2
    int-to-long v2, p1

    #@3
    sget v1, Ljava/util/concurrent/ConcurrentHashMap;->ASHIFT:I

    #@5
    shl-long/2addr v2, v1

    #@6
    sget-wide v4, Ljava/util/concurrent/ConcurrentHashMap;->ABASE:J

    #@8
    add-long/2addr v2, v4

    #@9
    invoke-virtual {v0, p0, v2, v3, p2}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@c
    .line 599
    return-void
.end method

.method static final spread(I)I
    .locals 2
    .param p0, "h"    # I

    #@0
    .prologue
    .line 522
    ushr-int/lit8 v0, p0, 0x10

    #@2
    xor-int/2addr v0, p0

    #@3
    const v1, 0x7fffffff

    #@6
    and-int/2addr v0, v1

    #@7
    return v0
.end method

.method static final tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;
    .locals 6
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;I)",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 591
    .local p0, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@2
    int-to-long v2, p1

    #@3
    sget v1, Ljava/util/concurrent/ConcurrentHashMap;->ASHIFT:I

    #@5
    shl-long/2addr v2, v1

    #@6
    sget-wide v4, Ljava/util/concurrent/ConcurrentHashMap;->ABASE:J

    #@8
    add-long/2addr v2, v4

    #@9
    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@f
    return-object v0
.end method

.method private static final tableSizeFor(I)I
    .locals 3
    .param p0, "c"    # I

    #@0
    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    #@2
    .line 530
    add-int/lit8 v0, p0, -0x1

    #@4
    .line 531
    .local v0, "n":I
    ushr-int/lit8 v2, v0, 0x1

    #@6
    or-int/2addr v0, v2

    #@7
    .line 532
    ushr-int/lit8 v2, v0, 0x2

    #@9
    or-int/2addr v0, v2

    #@a
    .line 533
    ushr-int/lit8 v2, v0, 0x4

    #@c
    or-int/2addr v0, v2

    #@d
    .line 534
    ushr-int/lit8 v2, v0, 0x8

    #@f
    or-int/2addr v0, v2

    #@10
    .line 535
    ushr-int/lit8 v2, v0, 0x10

    #@12
    or-int/2addr v0, v2

    #@13
    .line 536
    if-gez v0, :cond_1

    #@15
    const/4 v1, 0x1

    #@16
    :cond_0
    :goto_0
    return v1

    #@17
    :cond_1
    if-ge v0, v1, :cond_0

    #@19
    add-int/lit8 v1, v0, 0x1

    #@1b
    goto :goto_0
.end method

.method private final transfer([Ljava/util/concurrent/ConcurrentHashMap$Node;[Ljava/util/concurrent/ConcurrentHashMap$Node;)V
    .locals 54
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1728
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p2, "nextTab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object/from16 v0, p1

    #@2
    array-length v0, v0

    #@3
    move/from16 v44, v0

    #@5
    .line 1729
    .local v44, "n":I
    sget v6, Ljava/util/concurrent/ConcurrentHashMap;->NCPU:I

    #@7
    const/4 v7, 0x1

    #@8
    if-le v6, v7, :cond_4

    #@a
    ushr-int/lit8 v6, v44, 0x3

    #@c
    sget v7, Ljava/util/concurrent/ConcurrentHashMap;->NCPU:I

    #@e
    div-int v52, v6, v7

    #@10
    .local v52, "stride":I
    :goto_0
    const/16 v6, 0x10

    #@12
    move/from16 v0, v52

    #@14
    if-ge v0, v6, :cond_0

    #@16
    .line 1730
    const/16 v52, 0x10

    #@18
    .line 1731
    :cond_0
    if-nez p2, :cond_1

    #@1a
    .line 1734
    shl-int/lit8 v6, v44, 0x1

    #@1c
    :try_start_0
    new-array v0, v6, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@1e
    move-object/from16 v46, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 1735
    .local v46, "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object/from16 p2, v46

    #@22
    .line 1740
    move-object/from16 v0, p2

    #@24
    move-object/from16 v1, p0

    #@26
    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@28
    .line 1741
    move/from16 v0, v44

    #@2a
    move-object/from16 v1, p0

    #@2c
    iput v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->transferIndex:I

    #@2e
    .line 1743
    .end local v46    # "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1
    move-object/from16 v0, p2

    #@30
    array-length v0, v0

    #@31
    move/from16 v45, v0

    #@33
    .line 1744
    .local v45, "nextn":I
    new-instance v31, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    #@35
    move-object/from16 v0, v31

    #@37
    move-object/from16 v1, p2

    #@39
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@3c
    .line 1745
    .local v31, "fwd":Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;, "Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode<TK;TV;>;"
    const/16 v23, 0x1

    #@3e
    .line 1746
    .local v23, "advance":Z
    const/16 v30, 0x0

    #@40
    .line 1747
    .local v30, "finishing":Z
    const/16 v37, 0x0

    #@42
    .local v37, "i":I
    const/16 v25, 0x0

    #@44
    .line 1749
    .end local v23    # "advance":Z
    .local v25, "bound":I
    :cond_2
    :goto_1
    if-eqz v23, :cond_8

    #@46
    .line 1751
    add-int/lit8 v37, v37, -0x1

    #@48
    move/from16 v0, v37

    #@4a
    move/from16 v1, v25

    #@4c
    if-ge v0, v1, :cond_3

    #@4e
    if-eqz v30, :cond_5

    #@50
    .line 1752
    :cond_3
    const/16 v23, 0x0

    #@52
    .restart local v23    # "advance":Z
    goto :goto_1

    #@53
    .end local v23    # "advance":Z
    .end local v25    # "bound":I
    .end local v30    # "finishing":Z
    .end local v31    # "fwd":Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;, "Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode<TK;TV;>;"
    .end local v37    # "i":I
    .end local v45    # "nextn":I
    .end local v52    # "stride":I
    :cond_4
    move/from16 v52, v44

    #@55
    .line 1729
    goto :goto_0

    #@56
    .line 1736
    .restart local v52    # "stride":I
    :catch_0
    move-exception v27

    #@57
    .line 1737
    .local v27, "ex":Ljava/lang/Throwable;
    const v6, 0x7fffffff

    #@5a
    move-object/from16 v0, p0

    #@5c
    iput v6, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    #@5e
    .line 1738
    return-void

    #@5f
    .line 1753
    .end local v27    # "ex":Ljava/lang/Throwable;
    .restart local v25    # "bound":I
    .restart local v30    # "finishing":Z
    .restart local v31    # "fwd":Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;, "Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode<TK;TV;>;"
    .restart local v37    # "i":I
    .restart local v45    # "nextn":I
    :cond_5
    move-object/from16 v0, p0

    #@61
    iget v10, v0, Ljava/util/concurrent/ConcurrentHashMap;->transferIndex:I

    #@63
    .local v10, "nextIndex":I
    if-gtz v10, :cond_6

    #@65
    .line 1754
    const/16 v37, -0x1

    #@67
    .line 1755
    const/16 v23, 0x0

    #@69
    .restart local v23    # "advance":Z
    goto :goto_1

    #@6a
    .line 1757
    .end local v23    # "advance":Z
    :cond_6
    sget-object v6, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@6c
    .line 1758
    sget-wide v8, Ljava/util/concurrent/ConcurrentHashMap;->TRANSFERINDEX:J

    #@6e
    .line 1759
    move/from16 v0, v52

    #@70
    if-le v10, v0, :cond_7

    #@72
    .line 1760
    sub-int v11, v10, v52

    #@74
    .local v11, "nextBound":I
    :goto_2
    move-object/from16 v7, p0

    #@76
    .line 1757
    invoke-virtual/range {v6 .. v11}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@79
    move-result v6

    #@7a
    if-eqz v6, :cond_2

    #@7c
    .line 1761
    move/from16 v25, v11

    #@7e
    .line 1762
    add-int/lit8 v37, v10, -0x1

    #@80
    .line 1763
    const/16 v23, 0x0

    #@82
    .restart local v23    # "advance":Z
    goto :goto_1

    #@83
    .line 1760
    .end local v11    # "nextBound":I
    .end local v23    # "advance":Z
    :cond_7
    const/4 v11, 0x0

    #@84
    goto :goto_2

    #@85
    .line 1766
    .end local v10    # "nextIndex":I
    :cond_8
    if-ltz v37, :cond_9

    #@87
    move/from16 v0, v37

    #@89
    move/from16 v1, v44

    #@8b
    if-lt v0, v1, :cond_a

    #@8d
    .line 1768
    :cond_9
    if-eqz v30, :cond_b

    #@8f
    .line 1769
    const/4 v6, 0x0

    #@90
    move-object/from16 v0, p0

    #@92
    iput-object v6, v0, Ljava/util/concurrent/ConcurrentHashMap;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@94
    .line 1770
    move-object/from16 v0, p2

    #@96
    move-object/from16 v1, p0

    #@98
    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@9a
    .line 1771
    shl-int/lit8 v6, v44, 0x1

    #@9c
    ushr-int/lit8 v7, v44, 0x1

    #@9e
    sub-int/2addr v6, v7

    #@9f
    move-object/from16 v0, p0

    #@a1
    iput v6, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    #@a3
    .line 1772
    return-void

    #@a4
    .line 1766
    :cond_a
    add-int v6, v37, v44

    #@a6
    move/from16 v0, v45

    #@a8
    if-ge v6, v0, :cond_9

    #@aa
    .line 1781
    move-object/from16 v0, p1

    #@ac
    move/from16 v1, v37

    #@ae
    invoke-static {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@b1
    move-result-object v28

    #@b2
    .local v28, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v28, :cond_d

    #@b4
    .line 1782
    const/4 v6, 0x0

    #@b5
    move-object/from16 v0, p1

    #@b7
    move/from16 v1, v37

    #@b9
    move-object/from16 v2, v31

    #@bb
    invoke-static {v0, v1, v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->casTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)Z

    #@be
    move-result v23

    #@bf
    .local v23, "advance":Z
    goto :goto_1

    #@c0
    .line 1774
    .end local v23    # "advance":Z
    .end local v28    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_b
    sget-object v12, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@c2
    sget-wide v14, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    #@c4
    move-object/from16 v0, p0

    #@c6
    iget v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    #@c8
    move/from16 v16, v0

    #@ca
    .local v16, "sc":I
    add-int/lit8 v17, v16, -0x1

    #@cc
    move-object/from16 v13, p0

    #@ce
    invoke-virtual/range {v12 .. v17}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@d1
    move-result v6

    #@d2
    if-eqz v6, :cond_2

    #@d4
    .line 1775
    add-int/lit8 v6, v16, -0x2

    #@d6
    invoke-static/range {v44 .. v44}, Ljava/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    #@d9
    move-result v7

    #@da
    sget v8, Ljava/util/concurrent/ConcurrentHashMap;->RESIZE_STAMP_SHIFT:I

    #@dc
    shl-int/2addr v7, v8

    #@dd
    if-eq v6, v7, :cond_c

    #@df
    .line 1776
    return-void

    #@e0
    .line 1777
    :cond_c
    const/16 v23, 0x1

    #@e2
    .local v23, "advance":Z
    const/16 v30, 0x1

    #@e4
    .line 1778
    move/from16 v37, v44

    #@e6
    goto/16 :goto_1

    #@e8
    .line 1783
    .end local v16    # "sc":I
    .end local v23    # "advance":Z
    .restart local v28    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_d
    move-object/from16 v0, v28

    #@ea
    iget v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@ec
    move/from16 v29, v0

    #@ee
    .local v29, "fh":I
    const v6, -0x70000001

    #@f1
    move/from16 v0, v29

    #@f3
    if-ne v0, v6, :cond_e

    #@f5
    .line 1784
    const/16 v23, 0x1

    #@f7
    .restart local v23    # "advance":Z
    goto/16 :goto_1

    #@f9
    .line 1786
    .end local v23    # "advance":Z
    :cond_e
    monitor-enter v28

    #@fa
    .line 1787
    :try_start_1
    move-object/from16 v0, p1

    #@fc
    move/from16 v1, v37

    #@fe
    invoke-static {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@101
    move-result-object v6

    #@102
    move-object/from16 v0, v28

    #@104
    if-ne v6, v0, :cond_14

    #@106
    .line 1789
    if-ltz v29, :cond_15

    #@108
    .line 1790
    and-int v51, v29, v44

    #@10a
    .line 1791
    .local v51, "runBit":I
    move-object/from16 v38, v28

    #@10c
    .line 1792
    .local v38, "lastRun":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object/from16 v0, v28

    #@10e
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@110
    move-object/from16 v47, v0

    #@112
    .local v47, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_3
    if-eqz v47, :cond_10

    #@114
    .line 1793
    move-object/from16 v0, v47

    #@116
    iget v6, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@118
    and-int v24, v6, v44

    #@11a
    .line 1794
    .local v24, "b":I
    move/from16 v0, v24

    #@11c
    move/from16 v1, v51

    #@11e
    if-eq v0, v1, :cond_f

    #@120
    .line 1795
    move/from16 v51, v24

    #@122
    .line 1796
    move-object/from16 v38, v47

    #@124
    .line 1792
    :cond_f
    move-object/from16 v0, v47

    #@126
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@128
    move-object/from16 v47, v0

    #@12a
    goto :goto_3

    #@12b
    .line 1799
    .end local v24    # "b":I
    :cond_10
    if-nez v51, :cond_11

    #@12d
    .line 1800
    move-object/from16 v40, v38

    #@12f
    .line 1801
    .local v40, "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/16 v35, 0x0

    #@131
    .line 1807
    .end local v40    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_4
    move-object/from16 v47, v28

    #@133
    move-object/from16 v36, v35

    #@135
    .local v36, "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object/from16 v41, v40

    #@137
    .local v41, "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_5
    move-object/from16 v0, v47

    #@139
    move-object/from16 v1, v38

    #@13b
    if-eq v0, v1, :cond_13

    #@13d
    .line 1808
    move-object/from16 v0, v47

    #@13f
    iget v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@141
    move/from16 v48, v0

    #@143
    .local v48, "ph":I
    move-object/from16 v0, v47

    #@145
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@147
    move-object/from16 v49, v0

    #@149
    .local v49, "pk":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, v47

    #@14b
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@14d
    move-object/from16 v50, v0

    #@14f
    .line 1809
    .local v50, "pv":Ljava/lang/Object;, "TV;"
    and-int v6, v48, v44

    #@151
    if-nez v6, :cond_12

    #@153
    .line 1810
    new-instance v40, Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@155
    move-object/from16 v0, v40

    #@157
    move/from16 v1, v48

    #@159
    move-object/from16 v2, v49

    #@15b
    move-object/from16 v3, v50

    #@15d
    move-object/from16 v4, v41

    #@15f
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@162
    .end local v41    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v40    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object/from16 v35, v36

    #@164
    .line 1807
    .end local v36    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v35, "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_6
    move-object/from16 v0, v47

    #@166
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@168
    move-object/from16 v47, v0

    #@16a
    move-object/from16 v36, v35

    #@16c
    .end local v35    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v36    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object/from16 v41, v40

    #@16e
    .end local v40    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v41    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_5

    #@16f
    .line 1804
    .end local v36    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v41    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v48    # "ph":I
    .end local v49    # "pk":Ljava/lang/Object;, "TK;"
    .end local v50    # "pv":Ljava/lang/Object;, "TV;"
    :cond_11
    move-object/from16 v35, v38

    #@171
    .line 1805
    .restart local v35    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/16 v40, 0x0

    #@173
    .local v40, "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_4

    #@174
    .line 1812
    .end local v35    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v40    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v36    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v41    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v48    # "ph":I
    .restart local v49    # "pk":Ljava/lang/Object;, "TK;"
    .restart local v50    # "pv":Ljava/lang/Object;, "TV;"
    :cond_12
    new-instance v35, Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@176
    move-object/from16 v0, v35

    #@178
    move/from16 v1, v48

    #@17a
    move-object/from16 v2, v49

    #@17c
    move-object/from16 v3, v50

    #@17e
    move-object/from16 v4, v36

    #@180
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@183
    .end local v36    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v35    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object/from16 v40, v41

    #@185
    .end local v41    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v40, "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_6

    #@186
    .line 1814
    .end local v35    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v40    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v48    # "ph":I
    .end local v49    # "pk":Ljava/lang/Object;, "TK;"
    .end local v50    # "pv":Ljava/lang/Object;, "TV;"
    .restart local v36    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v41    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_13
    move-object/from16 v0, p2

    #@188
    move/from16 v1, v37

    #@18a
    move-object/from16 v2, v41

    #@18c
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    #@18f
    .line 1815
    add-int v6, v37, v44

    #@191
    move-object/from16 v0, p2

    #@193
    move-object/from16 v1, v36

    #@195
    invoke-static {v0, v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    #@198
    .line 1816
    move-object/from16 v0, p1

    #@19a
    move/from16 v1, v37

    #@19c
    move-object/from16 v2, v31

    #@19e
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a1
    .line 1817
    const/16 v23, 0x1

    #@1a3
    .end local v36    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v38    # "lastRun":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v41    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v47    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v51    # "runBit":I
    :cond_14
    :goto_7
    monitor-exit v28

    #@1a4
    goto/16 :goto_1

    #@1a6
    .line 1819
    :cond_15
    :try_start_2
    move-object/from16 v0, v28

    #@1a8
    instance-of v6, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    #@1aa
    if-eqz v6, :cond_14

    #@1ac
    .line 1820
    move-object/from16 v0, v28

    #@1ae
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    #@1b0
    move-object/from16 v53, v0

    #@1b2
    .line 1821
    .local v53, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    const/16 v42, 0x0

    #@1b4
    .local v42, "lo":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/16 v43, 0x0

    #@1b6
    .line 1822
    .local v43, "loTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/16 v33, 0x0

    #@1b8
    .local v33, "hi":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/16 v34, 0x0

    #@1ba
    .line 1823
    .local v34, "hiTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/16 v39, 0x0

    #@1bc
    .local v39, "lc":I
    const/16 v32, 0x0

    #@1be
    .line 1824
    .local v32, "hc":I
    move-object/from16 v0, v53

    #@1c0
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@1c2
    move-object/from16 v26, v0

    #@1c4
    .end local v33    # "hi":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v34    # "hiTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v42    # "lo":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v43    # "loTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v26, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_8
    if-eqz v26, :cond_19

    #@1c6
    .line 1825
    move-object/from16 v0, v26

    #@1c8
    iget v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@1ca
    move/from16 v18, v0

    #@1cc
    .line 1826
    .local v18, "h":I
    new-instance v17, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@1ce
    .line 1827
    move-object/from16 v0, v26

    #@1d0
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@1d2
    move-object/from16 v19, v0

    #@1d4
    move-object/from16 v0, v26

    #@1d6
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@1d8
    move-object/from16 v20, v0

    #@1da
    const/16 v21, 0x0

    #@1dc
    const/16 v22, 0x0

    #@1de
    .line 1826
    invoke-direct/range {v17 .. v22}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    #@1e1
    .line 1828
    .local v17, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    and-int v6, v18, v44

    #@1e3
    if-nez v6, :cond_17

    #@1e5
    .line 1829
    move-object/from16 v0, v43

    #@1e7
    move-object/from16 v1, v17

    #@1e9
    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@1eb
    if-nez v43, :cond_16

    #@1ed
    .line 1830
    move-object/from16 v42, v17

    #@1ef
    .line 1833
    :goto_9
    move-object/from16 v43, v17

    #@1f1
    .line 1834
    .local v43, "loTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    add-int/lit8 v39, v39, 0x1

    #@1f3
    .line 1824
    .end local v43    # "loTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_a
    move-object/from16 v0, v26

    #@1f5
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@1f7
    move-object/from16 v26, v0

    #@1f9
    goto :goto_8

    #@1fa
    .line 1832
    :cond_16
    move-object/from16 v0, v17

    #@1fc
    move-object/from16 v1, v43

    #@1fe
    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@200
    goto :goto_9

    #@201
    .line 1786
    .end local v17    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v18    # "h":I
    .end local v26    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v32    # "hc":I
    .end local v39    # "lc":I
    .end local v53    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    :catchall_0
    move-exception v6

    #@202
    monitor-exit v28

    #@203
    throw v6

    #@204
    .line 1837
    .restart local v17    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v18    # "h":I
    .restart local v26    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v32    # "hc":I
    .restart local v39    # "lc":I
    .restart local v53    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    :cond_17
    :try_start_3
    move-object/from16 v0, v34

    #@206
    move-object/from16 v1, v17

    #@208
    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@20a
    if-nez v34, :cond_18

    #@20c
    .line 1838
    move-object/from16 v33, v17

    #@20e
    .line 1841
    :goto_b
    move-object/from16 v34, v17

    #@210
    .line 1842
    .local v34, "hiTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    add-int/lit8 v32, v32, 0x1

    #@212
    goto :goto_a

    #@213
    .line 1840
    .end local v34    # "hiTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_18
    move-object/from16 v0, v17

    #@215
    move-object/from16 v1, v34

    #@217
    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@219
    goto :goto_b

    #@21a
    .line 1845
    .end local v17    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v18    # "h":I
    :cond_19
    const/4 v6, 0x6

    #@21b
    move/from16 v0, v39

    #@21d
    if-gt v0, v6, :cond_1a

    #@21f
    invoke-static/range {v42 .. v42}, Ljava/util/concurrent/ConcurrentHashMap;->untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@222
    move-result-object v40

    #@223
    .line 1847
    .restart local v40    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_c
    const/4 v6, 0x6

    #@224
    move/from16 v0, v32

    #@226
    if-gt v0, v6, :cond_1c

    #@228
    invoke-static/range {v33 .. v33}, Ljava/util/concurrent/ConcurrentHashMap;->untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@22b
    move-result-object v35

    #@22c
    .line 1849
    .restart local v35    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_d
    move-object/from16 v0, p2

    #@22e
    move/from16 v1, v37

    #@230
    move-object/from16 v2, v40

    #@232
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    #@235
    .line 1850
    add-int v6, v37, v44

    #@237
    move-object/from16 v0, p2

    #@239
    move-object/from16 v1, v35

    #@23b
    invoke-static {v0, v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    #@23e
    .line 1851
    move-object/from16 v0, p1

    #@240
    move/from16 v1, v37

    #@242
    move-object/from16 v2, v31

    #@244
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    #@247
    .line 1852
    const/16 v23, 0x1

    #@249
    .restart local v23    # "advance":Z
    goto/16 :goto_7

    #@24b
    .line 1846
    .end local v23    # "advance":Z
    .end local v35    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v40    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1a
    if-eqz v32, :cond_1b

    #@24d
    new-instance v40, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    #@24f
    move-object/from16 v0, v40

    #@251
    move-object/from16 v1, v42

    #@253
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    #@256
    .restart local v40    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_c

    #@257
    .end local v40    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1b
    move-object/from16 v40, v53

    #@259
    .restart local v40    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_c

    #@25a
    .line 1848
    :cond_1c
    if-eqz v39, :cond_1d

    #@25c
    new-instance v35, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    #@25e
    move-object/from16 v0, v35

    #@260
    move-object/from16 v1, v33

    #@262
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@265
    .restart local v35    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_d

    #@266
    .end local v35    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1d
    move-object/from16 v35, v53

    #@268
    .restart local v35    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_d
.end method

.method private final treeifyBin([Ljava/util/concurrent/ConcurrentHashMap$Node;I)V
    .locals 11
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1868
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz p1, :cond_0

    #@2
    .line 1869
    array-length v9, p1

    #@3
    .local v9, "n":I
    const/16 v1, 0x40

    #@5
    if-ge v9, v1, :cond_1

    #@7
    .line 1870
    shl-int/lit8 v1, v9, 0x1

    #@9
    invoke-direct {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->tryPresize(I)V

    #@c
    .line 1866
    .end local v9    # "n":I
    :cond_0
    :goto_0
    return-void

    #@d
    .line 1871
    .restart local v9    # "n":I
    :cond_1
    invoke-static {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@10
    move-result-object v6

    #@11
    .local v6, "b":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v6, :cond_0

    #@13
    iget v1, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@15
    if-ltz v1, :cond_0

    #@17
    .line 1872
    monitor-enter v6

    #@18
    .line 1873
    :try_start_0
    invoke-static {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@1b
    move-result-object v1

    #@1c
    if-ne v1, v6, :cond_4

    #@1e
    .line 1874
    const/4 v8, 0x0

    #@1f
    .local v8, "hd":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v10, 0x0

    #@20
    .line 1875
    .local v10, "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    move-object v7, v6

    #@21
    .end local v8    # "hd":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v10    # "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v7, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_1
    if-eqz v7, :cond_3

    #@23
    .line 1877
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@25
    iget v1, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@27
    iget-object v2, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@29
    iget-object v3, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@2b
    .line 1878
    const/4 v4, 0x0

    #@2c
    const/4 v5, 0x0

    #@2d
    .line 1877
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    #@30
    .line 1879
    .local v0, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iput-object v10, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@32
    if-nez v10, :cond_2

    #@34
    .line 1880
    move-object v8, v0

    #@35
    .line 1883
    :goto_2
    move-object v10, v0

    #@36
    .line 1875
    .local v10, "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v7, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@38
    goto :goto_1

    #@39
    .line 1882
    .end local v10    # "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_2
    iput-object v0, v10, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    goto :goto_2

    #@3c
    .line 1872
    .end local v0    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v7    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_0
    move-exception v1

    #@3d
    monitor-exit v6

    #@3e
    throw v1

    #@3f
    .line 1885
    .restart local v7    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_3
    :try_start_1
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    #@41
    invoke-direct {v1, v8}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    #@44
    invoke-static {p1, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    .end local v7    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_4
    monitor-exit v6

    #@48
    goto :goto_0
.end method

.method private final tryPresize(I)V
    .locals 12
    .param p1, "size"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v11, 0x0

    #@1
    .line 1683
    const/high16 v0, 0x20000000

    #@3
    if-lt p1, v0, :cond_3

    #@5
    const/high16 v6, 0x40000000    # 2.0f

    #@7
    .line 1686
    .local v6, "c":I
    :cond_0
    :goto_0
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    #@9
    .local v4, "sc":I
    if-ltz v4, :cond_6

    #@b
    .line 1687
    iget-object v10, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@d
    .line 1688
    .local v10, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v10, :cond_1

    #@f
    array-length v7, v10

    #@10
    .local v7, "n":I
    if-nez v7, :cond_5

    #@12
    .line 1689
    .end local v7    # "n":I
    :cond_1
    if-le v4, v6, :cond_4

    #@14
    move v7, v4

    #@15
    .line 1690
    .restart local v7    # "n":I
    :goto_1
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@17
    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    #@19
    const/4 v5, -0x1

    #@1a
    move-object v1, p0

    #@1b
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_0

    #@21
    .line 1692
    :try_start_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@23
    if-ne v0, v10, :cond_2

    #@25
    .line 1694
    new-array v8, v7, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@27
    .line 1695
    .local v8, "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iput-object v8, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 1696
    ushr-int/lit8 v0, v7, 0x2

    #@2b
    sub-int v4, v7, v0

    #@2d
    .line 1699
    .end local v8    # "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2
    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    #@2f
    goto :goto_0

    #@30
    .line 1684
    .end local v4    # "sc":I
    .end local v6    # "c":I
    .end local v7    # "n":I
    .end local v10    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_3
    ushr-int/lit8 v0, p1, 0x1

    #@32
    add-int/2addr v0, p1

    #@33
    add-int/lit8 v0, v0, 0x1

    #@35
    invoke-static {v0}, Ljava/util/concurrent/ConcurrentHashMap;->tableSizeFor(I)I

    #@38
    move-result v6

    #@39
    .restart local v6    # "c":I
    goto :goto_0

    #@3a
    .line 1689
    .restart local v4    # "sc":I
    .restart local v10    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_4
    move v7, v6

    #@3b
    .restart local v7    # "n":I
    goto :goto_1

    #@3c
    .line 1698
    :catchall_0
    move-exception v0

    #@3d
    .line 1699
    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    #@3f
    .line 1698
    throw v0

    #@40
    .line 1703
    :cond_5
    if-le v6, v4, :cond_6

    #@42
    const/high16 v0, 0x40000000    # 2.0f

    #@44
    if-lt v7, v0, :cond_7

    #@46
    .line 1682
    .end local v7    # "n":I
    .end local v10    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_6
    return-void

    #@47
    .line 1705
    .restart local v7    # "n":I
    .restart local v10    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_7
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@49
    if-ne v10, v0, :cond_0

    #@4b
    .line 1706
    invoke-static {v7}, Ljava/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    #@4e
    move-result v9

    #@4f
    .line 1707
    .local v9, "rs":I
    if-gez v4, :cond_8

    #@51
    .line 1709
    sget v0, Ljava/util/concurrent/ConcurrentHashMap;->RESIZE_STAMP_SHIFT:I

    #@53
    ushr-int v0, v4, v0

    #@55
    if-ne v0, v9, :cond_6

    #@57
    add-int/lit8 v0, v9, 0x1

    #@59
    if-eq v4, v0, :cond_6

    #@5b
    .line 1710
    sget v0, Ljava/util/concurrent/ConcurrentHashMap;->MAX_RESIZERS:I

    #@5d
    add-int/2addr v0, v9

    #@5e
    if-eq v4, v0, :cond_6

    #@60
    iget-object v8, p0, Ljava/util/concurrent/ConcurrentHashMap;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@62
    .restart local v8    # "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v8, :cond_6

    #@64
    .line 1711
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->transferIndex:I

    #@66
    if-lez v0, :cond_6

    #@68
    .line 1713
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@6a
    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    #@6c
    add-int/lit8 v5, v4, 0x1

    #@6e
    move-object v1, p0

    #@6f
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@72
    move-result v0

    #@73
    if-eqz v0, :cond_0

    #@75
    .line 1714
    invoke-direct {p0, v10, v8}, Ljava/util/concurrent/ConcurrentHashMap;->transfer([Ljava/util/concurrent/ConcurrentHashMap$Node;[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@78
    goto :goto_0

    #@79
    .line 1716
    .end local v8    # "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_8
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@7b
    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    #@7d
    .line 1717
    sget v1, Ljava/util/concurrent/ConcurrentHashMap;->RESIZE_STAMP_SHIFT:I

    #@7f
    shl-int v1, v9, v1

    #@81
    add-int/lit8 v5, v1, 0x2

    #@83
    move-object v1, p0

    #@84
    .line 1716
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@87
    move-result v0

    #@88
    if-eqz v0, :cond_0

    #@8a
    .line 1718
    invoke-direct {p0, v10, v11}, Ljava/util/concurrent/ConcurrentHashMap;->transfer([Ljava/util/concurrent/ConcurrentHashMap$Node;[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@8d
    goto/16 :goto_0
.end method

.method static untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;)",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "b":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v7, 0x0

    #@1
    .line 1896
    const/4 v0, 0x0

    #@2
    .local v0, "hd":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v3, 0x0

    #@3
    .line 1897
    .local v3, "tl":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object v2, p0

    #@4
    .end local v0    # "hd":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v3    # "tl":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v2, "q":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_1

    #@6
    .line 1898
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@8
    iget v4, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@a
    iget-object v5, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@c
    iget-object v6, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@e
    invoke-direct {v1, v4, v5, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@11
    .line 1899
    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v3, :cond_0

    #@13
    .line 1900
    move-object v0, v1

    #@14
    .line 1903
    :goto_1
    move-object v3, v1

    #@15
    .line 1897
    .local v3, "tl":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@17
    goto :goto_0

    #@18
    .line 1902
    .end local v3    # "tl":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_0
    iput-object v1, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@1a
    goto :goto_1

    #@1b
    .line 1905
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1
    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 14
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/16 v10, 0x10

    #@2
    const/4 v13, 0x0

    #@3
    .line 1226
    const/4 v6, 0x0

    #@4
    .line 1227
    .local v6, "sshift":I
    const/4 v7, 0x1

    #@5
    .line 1228
    .local v7, "ssize":I
    :goto_0
    if-ge v7, v10, :cond_0

    #@7
    .line 1229
    add-int/lit8 v6, v6, 0x1

    #@9
    .line 1230
    shl-int/lit8 v7, v7, 0x1

    #@b
    goto :goto_0

    #@c
    .line 1232
    :cond_0
    rsub-int/lit8 v4, v6, 0x20

    #@e
    .line 1233
    .local v4, "segmentShift":I
    add-int/lit8 v3, v7, -0x1

    #@10
    .line 1235
    .local v3, "segmentMask":I
    new-array v5, v10, [Ljava/util/concurrent/ConcurrentHashMap$Segment;

    #@12
    .line 1236
    .local v5, "segments":[Ljava/util/concurrent/ConcurrentHashMap$Segment;, "[Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    const/4 v0, 0x0

    #@13
    .local v0, "i":I
    :goto_1
    array-length v10, v5

    #@14
    if-ge v0, v10, :cond_1

    #@16
    .line 1237
    new-instance v10, Ljava/util/concurrent/ConcurrentHashMap$Segment;

    #@18
    const/high16 v11, 0x3f400000    # 0.75f

    #@1a
    invoke-direct {v10, v11}, Ljava/util/concurrent/ConcurrentHashMap$Segment;-><init>(F)V

    #@1d
    aput-object v10, v5, v0

    #@1f
    .line 1236
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_1

    #@22
    .line 1238
    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    #@25
    move-result-object v8

    #@26
    .line 1239
    .local v8, "streamFields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v10, "segments"

    #@29
    invoke-virtual {v8, v10, v5}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@2c
    .line 1240
    const-string/jumbo v10, "segmentShift"

    #@2f
    invoke-virtual {v8, v10, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@32
    .line 1241
    const-string/jumbo v10, "segmentMask"

    #@35
    invoke-virtual {v8, v10, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@38
    .line 1242
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    #@3b
    .line 1245
    iget-object v9, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@3d
    .local v9, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v9, :cond_2

    #@3f
    .line 1246
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    #@41
    array-length v10, v9

    #@42
    array-length v11, v9

    #@43
    const/4 v12, 0x0

    #@44
    invoke-direct {v1, v9, v10, v12, v11}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    #@47
    .line 1247
    .local v1, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_2
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@4a
    move-result-object v2

    #@4b
    .local v2, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_2

    #@4d
    .line 1248
    iget-object v10, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@4f
    invoke-virtual {p1, v10}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@52
    .line 1249
    iget-object v10, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@54
    invoke-virtual {p1, v10}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@57
    goto :goto_2

    #@58
    .line 1252
    .end local v1    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v2    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2
    invoke-virtual {p1, v13}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@5b
    .line 1253
    invoke-virtual {p1, v13}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@5e
    .line 1254
    const/4 v5, 0x0

    #@5f
    .line 1223
    .local v5, "segments":[Ljava/util/concurrent/ConcurrentHashMap$Segment;, "[Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 12

    #@0
    .prologue
    .line 1016
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const-wide/16 v2, 0x0

    #@2
    .line 1017
    .local v2, "delta":J
    const/4 v6, 0x0

    #@3
    .line 1018
    .local v6, "i":I
    iget-object v9, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@5
    .local v9, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move v7, v6

    #@6
    .line 1019
    .end local v6    # "i":I
    .local v7, "i":I
    :goto_0
    if-eqz v9, :cond_5

    #@8
    array-length v10, v9

    #@9
    if-ge v7, v10, :cond_5

    #@b
    .line 1021
    invoke-static {v9, v7}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@e
    move-result-object v4

    #@f
    .line 1022
    .local v4, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v4, :cond_0

    #@11
    .line 1023
    add-int/lit8 v6, v7, 0x1

    #@13
    .end local v7    # "i":I
    .restart local v6    # "i":I
    :goto_1
    move v7, v6

    #@14
    .end local v6    # "i":I
    .restart local v7    # "i":I
    goto :goto_0

    #@15
    .line 1024
    :cond_0
    iget v5, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@17
    .local v5, "fh":I
    const v10, -0x70000001

    #@1a
    if-ne v5, v10, :cond_1

    #@1c
    .line 1025
    invoke-virtual {p0, v9, v4}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@1f
    move-result-object v9

    #@20
    .line 1026
    const/4 v6, 0x0

    #@21
    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_1

    #@22
    .line 1029
    .end local v6    # "i":I
    .restart local v7    # "i":I
    :cond_1
    monitor-enter v4

    #@23
    .line 1030
    :try_start_0
    invoke-static {v9, v7}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@26
    move-result-object v10

    #@27
    if-ne v10, v4, :cond_7

    #@29
    .line 1031
    if-ltz v5, :cond_2

    #@2b
    move-object v8, v4

    #@2c
    .line 1034
    :goto_2
    if-eqz v8, :cond_4

    #@2e
    .line 1035
    const-wide/16 v10, 0x1

    #@30
    sub-long/2addr v2, v10

    #@31
    .line 1036
    iget-object v8, v8, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@33
    .local v8, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_2

    #@34
    .line 1032
    .end local v8    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2
    instance-of v10, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    #@36
    if-eqz v10, :cond_3

    #@38
    .line 1033
    move-object v0, v4

    #@39
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    #@3b
    move-object v10, v0

    #@3c
    iget-object v8, v10, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    .restart local v8    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_2

    #@3f
    .end local v8    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_3
    const/4 v8, 0x0

    #@40
    .local v8, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_2

    #@41
    .line 1038
    .end local v8    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_4
    add-int/lit8 v6, v7, 0x1

    #@43
    .end local v7    # "i":I
    .restart local v6    # "i":I
    const/4 v10, 0x0

    #@44
    :try_start_1
    invoke-static {v9, v7, v10}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@47
    :goto_3
    monitor-exit v4

    #@48
    goto :goto_1

    #@49
    .line 1029
    .end local v6    # "i":I
    .restart local v7    # "i":I
    :catchall_0
    move-exception v10

    #@4a
    move v6, v7

    #@4b
    .end local v7    # "i":I
    .restart local v6    # "i":I
    :goto_4
    monitor-exit v4

    #@4c
    throw v10

    #@4d
    .line 1043
    .end local v4    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v5    # "fh":I
    .end local v6    # "i":I
    .restart local v7    # "i":I
    :cond_5
    const-wide/16 v10, 0x0

    #@4f
    cmp-long v10, v2, v10

    #@51
    if-eqz v10, :cond_6

    #@53
    .line 1044
    const/4 v10, -0x1

    #@54
    invoke-direct {p0, v2, v3, v10}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    #@57
    .line 1015
    :cond_6
    return-void

    #@58
    .line 1029
    .end local v7    # "i":I
    .restart local v4    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v5    # "fh":I
    .restart local v6    # "i":I
    :catchall_1
    move-exception v10

    #@59
    goto :goto_4

    #@5a
    .end local v6    # "i":I
    .restart local v7    # "i":I
    :cond_7
    move v6, v7

    #@5b
    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_3
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1427
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 800
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v6, 0x0

    #@1
    .line 814
    if-nez p1, :cond_0

    #@3
    .line 815
    new-instance v4, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v4

    #@9
    .line 817
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@b
    .local v2, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_3

    #@d
    .line 818
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    #@f
    array-length v4, v2

    #@10
    array-length v5, v2

    #@11
    invoke-direct {v0, v2, v4, v6, v5}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    #@14
    .line 819
    .local v0, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@17
    move-result-object v1

    #@18
    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_3

    #@1a
    .line 821
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@1c
    .local v3, "v":Ljava/lang/Object;, "TV;"
    if-eq v3, p1, :cond_2

    #@1e
    if-eqz v3, :cond_1

    #@20
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_1

    #@26
    .line 822
    :cond_2
    const/4 v4, 0x1

    #@27
    return v4

    #@28
    .line 825
    .end local v0    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    :cond_3
    return v6
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1450
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@2
    .local v1, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v1, :cond_0

    #@4
    const/4 v2, 0x0

    #@5
    .line 1451
    .local v2, "f":I
    :goto_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;

    #@7
    const/4 v3, 0x0

    #@8
    move v4, v2

    #@9
    move-object v5, p0

    #@a
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIILjava/util/concurrent/ConcurrentHashMap;)V

    #@d
    return-object v0

    #@e
    .line 1450
    .end local v2    # "f":I
    :cond_0
    array-length v2, v1

    #@f
    .restart local v2    # "f":I
    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1113
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->entrySet:Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;

    #@2
    .local v0, "es":Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySetView<TK;TV;>;"
    if-eqz v0, :cond_0

    #@4
    .end local v0    # "es":Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySetView<TK;TV;>;"
    :goto_0
    return-object v0

    #@5
    .restart local v0    # "es":Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySetView<TK;TV;>;"
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;

    #@7
    .end local v0    # "es":Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySetView<TK;TV;>;"
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    #@a
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->entrySet:Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;

    #@c
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 13
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v12, 0x0

    #@1
    .line 1178
    if-eq p1, p0, :cond_8

    #@3
    .line 1179
    instance-of v11, p1, Ljava/util/Map;

    #@5
    if-nez v11, :cond_0

    #@7
    .line 1180
    return v12

    #@8
    :cond_0
    move-object v4, p1

    #@9
    .line 1181
    check-cast v4, Ljava/util/Map;

    #@b
    .line 1183
    .local v4, "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    iget-object v8, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@d
    .local v8, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v8, :cond_3

    #@f
    const/4 v2, 0x0

    #@10
    .line 1184
    .local v2, "f":I
    :goto_0
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    #@12
    invoke-direct {v3, v8, v2, v12, v2}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    #@15
    .line 1185
    .local v3, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@18
    move-result-object v7

    #@19
    .local v7, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v7, :cond_4

    #@1b
    .line 1186
    iget-object v10, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@1d
    .line 1187
    .local v10, "val":Ljava/lang/Object;, "TV;"
    iget-object v11, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@1f
    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v9

    #@23
    .line 1188
    .local v9, "v":Ljava/lang/Object;
    if-eqz v9, :cond_2

    #@25
    if-eq v9, v10, :cond_1

    #@27
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v11

    #@2b
    if-nez v11, :cond_1

    #@2d
    .line 1189
    :cond_2
    return v12

    #@2e
    .line 1183
    .end local v2    # "f":I
    .end local v3    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v7    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "v":Ljava/lang/Object;
    .end local v10    # "val":Ljava/lang/Object;, "TV;"
    :cond_3
    array-length v2, v8

    #@2f
    .restart local v2    # "f":I
    goto :goto_0

    #@30
    .line 1191
    .restart local v3    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .restart local v7    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_4
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@33
    move-result-object v11

    #@34
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@37
    move-result-object v1

    #@38
    .local v1, "e$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@3b
    move-result v11

    #@3c
    if-eqz v11, :cond_8

    #@3e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@41
    move-result-object v0

    #@42
    check-cast v0, Ljava/util/Map$Entry;

    #@44
    .line 1193
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@47
    move-result-object v5

    #@48
    .local v5, "mk":Ljava/lang/Object;
    if-eqz v5, :cond_6

    #@4a
    .line 1194
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@4d
    move-result-object v6

    #@4e
    .local v6, "mv":Ljava/lang/Object;
    if-nez v6, :cond_7

    #@50
    .line 1197
    .end local v6    # "mv":Ljava/lang/Object;
    :cond_6
    return v12

    #@51
    .line 1195
    .restart local v6    # "mv":Ljava/lang/Object;
    :cond_7
    invoke-virtual {p0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@54
    move-result-object v9

    #@55
    .restart local v9    # "v":Ljava/lang/Object;
    if-eqz v9, :cond_6

    #@57
    .line 1196
    if-eq v6, v9, :cond_5

    #@59
    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@5c
    move-result v11

    #@5d
    if-eqz v11, :cond_6

    #@5f
    goto :goto_1

    #@60
    .line 1200
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    .end local v2    # "f":I
    .end local v3    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v4    # "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v5    # "mk":Ljava/lang/Object;
    .end local v6    # "mv":Ljava/lang/Object;
    .end local v7    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v8    # "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "v":Ljava/lang/Object;
    :cond_8
    const/4 v11, 0x1

    #@61
    return v11
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v7, 0x0

    #@1
    .line 772
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    #@4
    move-result v8

    #@5
    invoke-static {v8}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    #@8
    move-result v3

    #@9
    .line 773
    .local v3, "h":I
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@b
    .local v6, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v6, :cond_5

    #@d
    array-length v4, v6

    #@e
    .local v4, "n":I
    if-lez v4, :cond_5

    #@10
    .line 774
    add-int/lit8 v8, v4, -0x1

    #@12
    and-int/2addr v8, v3

    #@13
    invoke-static {v6, v8}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@16
    move-result-object v0

    #@17
    .local v0, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_5

    #@19
    .line 775
    iget v1, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@1b
    .local v1, "eh":I
    if-ne v1, v3, :cond_1

    #@1d
    .line 776
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@1f
    .local v2, "ek":Ljava/lang/Object;, "TK;"
    if-eq v2, p1, :cond_0

    #@21
    if-eqz v2, :cond_3

    #@23
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v8

    #@27
    if-eqz v8, :cond_3

    #@29
    .line 777
    :cond_0
    iget-object v7, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@2b
    return-object v7

    #@2c
    .line 779
    .end local v2    # "ek":Ljava/lang/Object;, "TK;"
    :cond_1
    if-gez v1, :cond_3

    #@2e
    .line 780
    invoke-virtual {v0, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap$Node;->find(ILjava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@31
    move-result-object v5

    #@32
    .local v5, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v5, :cond_2

    #@34
    iget-object v7, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@36
    :cond_2
    return-object v7

    #@37
    .line 781
    .end local v5    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_3
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@39
    if-eqz v0, :cond_5

    #@3b
    .line 782
    iget v8, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@3d
    if-ne v8, v3, :cond_3

    #@3f
    .line 783
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@41
    .restart local v2    # "ek":Ljava/lang/Object;, "TK;"
    if-eq v2, p1, :cond_4

    #@43
    if-eqz v2, :cond_3

    #@45
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v8

    #@49
    .line 782
    if-eqz v8, :cond_3

    #@4b
    .line 784
    :cond_4
    iget-object v7, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@4d
    return-object v7

    #@4e
    .line 787
    .end local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v1    # "eh":I
    .end local v2    # "ek":Ljava/lang/Object;, "TK;"
    .end local v4    # "n":I
    :cond_5
    return-object v7
.end method

.method public hashCode()I
    .locals 7

    #@0
    .prologue
    .line 1124
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 1126
    .local v0, "h":I
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@3
    .local v3, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_0

    #@5
    .line 1127
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    #@7
    array-length v4, v3

    #@8
    array-length v5, v3

    #@9
    const/4 v6, 0x0

    #@a
    invoke-direct {v1, v3, v4, v6, v5}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    #@d
    .line 1128
    .local v1, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@10
    move-result-object v2

    #@11
    .local v2, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_0

    #@13
    .line 1129
    iget-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@15
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    #@18
    move-result v4

    #@19
    iget-object v5, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@1b
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    #@1e
    move-result v5

    #@1f
    xor-int/2addr v4, v5

    #@20
    add-int/2addr v0, v4

    #@21
    goto :goto_0

    #@22
    .line 1131
    .end local v1    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v2    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_0
    return v0
.end method

.method final helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;)[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1659
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p2, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz p1, :cond_3

    #@2
    instance-of v0, p2, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    #@4
    if-eqz v0, :cond_3

    #@6
    .line 1660
    check-cast p2, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    #@8
    .end local p2    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v6, p2, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@a
    .local v6, "nextTab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v6, :cond_3

    #@c
    .line 1661
    array-length v0, p1

    #@d
    invoke-static {v0}, Ljava/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    #@10
    move-result v7

    #@11
    .line 1662
    .local v7, "rs":I
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@13
    if-ne v6, v0, :cond_1

    #@15
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@17
    if-ne v0, p1, :cond_1

    #@19
    .line 1663
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    #@1b
    .local v4, "sc":I
    if-gez v4, :cond_1

    #@1d
    .line 1664
    sget v0, Ljava/util/concurrent/ConcurrentHashMap;->RESIZE_STAMP_SHIFT:I

    #@1f
    ushr-int v0, v4, v0

    #@21
    if-ne v0, v7, :cond_1

    #@23
    add-int/lit8 v0, v7, 0x1

    #@25
    if-ne v4, v0, :cond_2

    #@27
    .line 1672
    .end local v4    # "sc":I
    :cond_1
    :goto_0
    return-object v6

    #@28
    .line 1665
    .restart local v4    # "sc":I
    :cond_2
    sget v0, Ljava/util/concurrent/ConcurrentHashMap;->MAX_RESIZERS:I

    #@2a
    add-int/2addr v0, v7

    #@2b
    if-eq v4, v0, :cond_1

    #@2d
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->transferIndex:I

    #@2f
    if-lez v0, :cond_1

    #@31
    .line 1667
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@33
    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    #@35
    add-int/lit8 v5, v4, 0x1

    #@37
    move-object v1, p0

    #@38
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@3b
    move-result v0

    #@3c
    if-eqz v0, :cond_0

    #@3e
    .line 1668
    invoke-direct {p0, p1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->transfer([Ljava/util/concurrent/ConcurrentHashMap$Node;[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@41
    goto :goto_0

    #@42
    .line 1674
    .end local v4    # "sc":I
    .end local v6    # "nextTab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "rs":I
    :cond_3
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@44
    return-object v0
.end method

.method public isEmpty()Z
    .locals 4

    #@0
    .prologue
    .line 756
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    #@3
    move-result-wide v0

    #@4
    const-wide/16 v2, 0x0

    #@6
    cmp-long v0, v0, v2

    #@8
    if-gtz v0, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 1068
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->keySet:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    #@3
    .local v0, "ks":Ljava/util/concurrent/ConcurrentHashMap$KeySetView;, "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<TK;TV;>;"
    if-eqz v0, :cond_0

    #@5
    .end local v0    # "ks":Ljava/util/concurrent/ConcurrentHashMap$KeySetView;, "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<TK;TV;>;"
    :goto_0
    return-object v0

    #@6
    .restart local v0    # "ks":Ljava/util/concurrent/ConcurrentHashMap$KeySetView;, "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<TK;TV;>;"
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    #@8
    .end local v0    # "ks":Ljava/util/concurrent/ConcurrentHashMap$KeySetView;, "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<TK;TV;>;"
    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V

    #@b
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->keySet:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    #@d
    goto :goto_0
.end method

.method public keySet(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$KeySetView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/util/concurrent/ConcurrentHashMap$KeySetView",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1521
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "mappedValue":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    #@2
    .line 1522
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 1523
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    #@a
    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V

    #@d
    return-object v0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1438
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@2
    .local v1, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v1, :cond_0

    #@4
    const/4 v2, 0x0

    #@5
    .line 1439
    .local v2, "f":I
    :goto_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;

    #@7
    const/4 v3, 0x0

    #@8
    move v4, v2

    #@9
    move-object v5, p0

    #@a
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIILjava/util/concurrent/ConcurrentHashMap;)V

    #@d
    return-object v0

    #@e
    .line 1438
    .end local v2    # "f":I
    :cond_0
    array-length v2, v1

    #@f
    .restart local v2    # "f":I
    goto :goto_0
.end method

.method public mappingCount()J
    .locals 5

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const-wide/16 v2, 0x0

    #@2
    .line 1469
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    #@5
    move-result-wide v0

    #@6
    .line 1470
    .local v0, "n":J
    cmp-long v4, v0, v2

    #@8
    if-gez v4, :cond_0

    #@a
    move-wide v0, v2

    #@b
    .end local v0    # "n":J
    :cond_0
    return-wide v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 842
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 918
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    #@3
    move-result v2

    #@4
    invoke-direct {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->tryPresize(I)V

    #@7
    .line 919
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@a
    move-result-object v2

    #@b
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_0

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/util/Map$Entry;

    #@1b
    .line 920
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@22
    move-result-object v3

    #@23
    const/4 v4, 0x0

    #@24
    invoke-virtual {p0, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    #@27
    goto :goto_0

    #@28
    .line 917
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 1366
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method final putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 16
    .param p3, "onlyIfAbsent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;Z)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 847
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    :cond_0
    new-instance v14, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v14}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v14

    #@a
    .line 848
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    #@d
    move-result v14

    #@e
    invoke-static {v14}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    #@11
    move-result v7

    #@12
    .line 849
    .local v7, "hash":I
    const/4 v2, 0x0

    #@13
    .line 850
    .local v2, "binCount":I
    move-object/from16 v0, p0

    #@15
    iget-object v13, v0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@17
    .line 852
    .local v13, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2
    :goto_0
    if-eqz v13, :cond_3

    #@19
    array-length v9, v13

    #@1a
    .local v9, "n":I
    if-nez v9, :cond_4

    #@1c
    .line 853
    .end local v9    # "n":I
    :cond_3
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap;->initTable()[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@1f
    move-result-object v13

    #@20
    goto :goto_0

    #@21
    .line 854
    .restart local v9    # "n":I
    :cond_4
    add-int/lit8 v14, v9, -0x1

    #@23
    and-int v8, v14, v7

    #@25
    .local v8, "i":I
    invoke-static {v13, v8}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@28
    move-result-object v5

    #@29
    .local v5, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v5, :cond_6

    #@2b
    .line 856
    new-instance v14, Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@2d
    const/4 v15, 0x0

    #@2e
    move-object/from16 v0, p1

    #@30
    move-object/from16 v1, p2

    #@32
    invoke-direct {v14, v7, v0, v1, v15}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@35
    .line 855
    const/4 v15, 0x0

    #@36
    invoke-static {v13, v8, v15, v14}, Ljava/util/concurrent/ConcurrentHashMap;->casTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)Z

    #@39
    move-result v14

    #@3a
    if-eqz v14, :cond_2

    #@3c
    .line 906
    :cond_5
    const-wide/16 v14, 0x1

    #@3e
    move-object/from16 v0, p0

    #@40
    invoke-direct {v0, v14, v15, v2}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    #@43
    .line 907
    const/4 v14, 0x0

    #@44
    return-object v14

    #@45
    .line 859
    :cond_6
    iget v6, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@47
    .local v6, "fh":I
    const v14, -0x70000001

    #@4a
    if-ne v6, v14, :cond_7

    #@4c
    .line 860
    move-object/from16 v0, p0

    #@4e
    invoke-virtual {v0, v13, v5}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@51
    move-result-object v13

    #@52
    goto :goto_0

    #@53
    .line 862
    :cond_7
    const/4 v10, 0x0

    #@54
    .line 863
    .local v10, "oldVal":Ljava/lang/Object;, "TV;"
    monitor-enter v5

    #@55
    .line 864
    :try_start_0
    invoke-static {v13, v8}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@58
    move-result-object v14

    #@59
    if-ne v14, v5, :cond_9

    #@5b
    .line 865
    if-ltz v6, :cond_d

    #@5d
    .line 866
    const/4 v2, 0x1

    #@5e
    .line 867
    move-object v3, v5

    #@5f
    .line 869
    .local v3, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_1
    iget v14, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@61
    if-ne v14, v7, :cond_b

    #@63
    .line 870
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@65
    .local v4, "ek":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p1

    #@67
    if-eq v4, v0, :cond_8

    #@69
    .line 871
    if-eqz v4, :cond_b

    #@6b
    move-object/from16 v0, p1

    #@6d
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@70
    move-result v14

    #@71
    .line 869
    if-eqz v14, :cond_b

    #@73
    .line 872
    :cond_8
    iget-object v10, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@75
    .line 873
    if-nez p3, :cond_9

    #@77
    .line 874
    move-object/from16 v0, p2

    #@79
    iput-object v0, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7b
    .end local v3    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v4    # "ek":Ljava/lang/Object;, "TK;"
    .end local v10    # "oldVal":Ljava/lang/Object;, "TV;"
    :cond_9
    :goto_2
    monitor-exit v5

    #@7c
    .line 897
    if-eqz v2, :cond_2

    #@7e
    .line 898
    const/16 v14, 0x8

    #@80
    if-lt v2, v14, :cond_a

    #@82
    .line 899
    move-object/from16 v0, p0

    #@84
    invoke-direct {v0, v13, v8}, Ljava/util/concurrent/ConcurrentHashMap;->treeifyBin([Ljava/util/concurrent/ConcurrentHashMap$Node;I)V

    #@87
    .line 900
    :cond_a
    if-eqz v10, :cond_5

    #@89
    .line 901
    return-object v10

    #@8a
    .line 877
    .restart local v3    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v10    # "oldVal":Ljava/lang/Object;, "TV;"
    :cond_b
    move-object v12, v3

    #@8b
    .line 878
    .local v12, "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :try_start_1
    iget-object v3, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@8d
    if-nez v3, :cond_c

    #@8f
    .line 879
    new-instance v14, Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@91
    .line 880
    const/4 v15, 0x0

    #@92
    .line 879
    move-object/from16 v0, p1

    #@94
    move-object/from16 v1, p2

    #@96
    invoke-direct {v14, v7, v0, v1, v15}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@99
    iput-object v14, v12, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@9b
    goto :goto_2

    #@9c
    .line 863
    .end local v3    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v10    # "oldVal":Ljava/lang/Object;, "TV;"
    .end local v12    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_0
    move-exception v14

    #@9d
    monitor-exit v5

    #@9e
    throw v14

    #@9f
    .line 867
    .restart local v3    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v10    # "oldVal":Ljava/lang/Object;, "TV;"
    .restart local v12    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_c
    add-int/lit8 v2, v2, 0x1

    #@a1
    goto :goto_1

    #@a2
    .line 885
    .end local v3    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v12    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_d
    :try_start_2
    instance-of v14, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    #@a4
    if-eqz v14, :cond_9

    #@a6
    .line 887
    const/4 v2, 0x2

    #@a7
    .line 888
    move-object v0, v5

    #@a8
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    #@aa
    move-object v14, v0

    #@ab
    move-object/from16 v0, p1

    #@ad
    move-object/from16 v1, p2

    #@af
    invoke-virtual {v14, v7, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@b2
    move-result-object v11

    #@b3
    .local v11, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v11, :cond_9

    #@b5
    .line 890
    iget-object v10, v11, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@b7
    .line 891
    if-nez p3, :cond_9

    #@b9
    .line 892
    move-object/from16 v0, p2

    #@bb
    iput-object v0, v11, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@bd
    goto :goto_2
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 933
    invoke-virtual {p0, p1, v0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 1375
    if-nez p1, :cond_0

    #@4
    .line 1376
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 1377
    :cond_0
    if-eqz p2, :cond_1

    #@c
    invoke-virtual {p0, p1, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    if-eqz v1, :cond_1

    #@12
    const/4 v0, 0x1

    #@13
    :cond_1
    return v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    #@1
    .line 1399
    if-eqz p1, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    .line 1400
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v0

    #@b
    .line 1401
    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1386
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 1387
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 1386
    :cond_1
    if-eqz p3, :cond_0

    #@c
    .line 1388
    invoke-virtual {p0, p1, p3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    if-eqz v0, :cond_2

    #@12
    const/4 v0, 0x1

    #@13
    :goto_0
    return v0

    #@14
    :cond_2
    const/4 v0, 0x0

    #@15
    goto :goto_0
.end method

.method final replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23
    .param p1, "key"    # Ljava/lang/Object;
    .param p3, "cv"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 942
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    #@3
    move-result v20

    #@4
    invoke-static/range {v20 .. v20}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    #@7
    move-result v9

    #@8
    .line 943
    .local v9, "hash":I
    move-object/from16 v0, p0

    #@a
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@c
    move-object/from16 v18, v0

    #@e
    .line 945
    .local v18, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_0
    :goto_0
    if-eqz v18, :cond_1

    #@10
    move-object/from16 v0, v18

    #@12
    array-length v11, v0

    #@13
    .local v11, "n":I
    if-nez v11, :cond_2

    #@15
    .line 1009
    .end local v11    # "n":I
    :cond_1
    const/16 v20, 0x0

    #@17
    return-object v20

    #@18
    .line 946
    .restart local v11    # "n":I
    :cond_2
    add-int/lit8 v20, v11, -0x1

    #@1a
    and-int v10, v20, v9

    #@1c
    .local v10, "i":I
    move-object/from16 v0, v18

    #@1e
    invoke-static {v0, v10}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@21
    move-result-object v7

    #@22
    .local v7, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v7, :cond_1

    #@24
    .line 948
    iget v8, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@26
    .local v8, "fh":I
    const v20, -0x70000001

    #@29
    move/from16 v0, v20

    #@2b
    if-ne v8, v0, :cond_3

    #@2d
    .line 949
    move-object/from16 v0, p0

    #@2f
    move-object/from16 v1, v18

    #@31
    invoke-virtual {v0, v1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@34
    move-result-object v18

    #@35
    goto :goto_0

    #@36
    .line 951
    :cond_3
    const/4 v12, 0x0

    #@37
    .line 952
    .local v12, "oldVal":Ljava/lang/Object;, "TV;"
    const/16 v19, 0x0

    #@39
    .line 953
    .local v19, "validated":Z
    monitor-enter v7

    #@3a
    .line 954
    :try_start_0
    move-object/from16 v0, v18

    #@3c
    invoke-static {v0, v10}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@3f
    move-result-object v20

    #@40
    move-object/from16 v0, v20

    #@42
    if-ne v0, v7, :cond_7

    #@44
    .line 955
    if-ltz v8, :cond_d

    #@46
    .line 956
    const/16 v19, 0x1

    #@48
    .line 957
    move-object v4, v7

    #@49
    .local v4, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v14, 0x0

    #@4a
    .line 959
    :cond_4
    iget v0, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@4c
    move/from16 v20, v0

    #@4e
    move/from16 v0, v20

    #@50
    if-ne v0, v9, :cond_c

    #@52
    .line 960
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@54
    .local v5, "ek":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p1

    #@56
    if-eq v5, v0, :cond_5

    #@58
    .line 961
    if-eqz v5, :cond_c

    #@5a
    move-object/from16 v0, p1

    #@5c
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@5f
    move-result v20

    #@60
    .line 959
    if-eqz v20, :cond_c

    #@62
    .line 962
    :cond_5
    iget-object v6, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@64
    .line 963
    .local v6, "ev":Ljava/lang/Object;, "TV;"
    if-eqz p3, :cond_6

    #@66
    move-object/from16 v0, p3

    #@68
    if-ne v0, v6, :cond_9

    #@6a
    .line 965
    :cond_6
    :goto_1
    move-object v12, v6

    #@6b
    .line 966
    if-eqz p2, :cond_a

    #@6d
    .line 967
    move-object/from16 v0, p2

    #@6f
    iput-object v0, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@71
    .end local v4    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v5    # "ek":Ljava/lang/Object;, "TK;"
    .end local v6    # "ev":Ljava/lang/Object;, "TV;"
    .end local v12    # "oldVal":Ljava/lang/Object;, "TV;"
    :cond_7
    :goto_2
    monitor-exit v7

    #@72
    .line 999
    if-eqz v19, :cond_0

    #@74
    .line 1000
    if-eqz v12, :cond_1

    #@76
    .line 1001
    if-nez p2, :cond_8

    #@78
    .line 1002
    const-wide/16 v20, -0x1

    #@7a
    const/16 v22, -0x1

    #@7c
    move-object/from16 v0, p0

    #@7e
    move-wide/from16 v1, v20

    #@80
    move/from16 v3, v22

    #@82
    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    #@85
    .line 1003
    :cond_8
    return-object v12

    #@86
    .line 964
    .restart local v4    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v5    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v6    # "ev":Ljava/lang/Object;, "TV;"
    .restart local v12    # "oldVal":Ljava/lang/Object;, "TV;"
    :cond_9
    if-eqz v6, :cond_7

    #@88
    :try_start_1
    move-object/from16 v0, p3

    #@8a
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@8d
    move-result v20

    #@8e
    .line 963
    if-eqz v20, :cond_7

    #@90
    goto :goto_1

    #@91
    .line 968
    :cond_a
    if-eqz v14, :cond_b

    #@93
    .line 969
    iget-object v0, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@95
    move-object/from16 v20, v0

    #@97
    move-object/from16 v0, v20

    #@99
    iput-object v0, v14, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@9b
    goto :goto_2

    #@9c
    .line 953
    .end local v4    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v5    # "ek":Ljava/lang/Object;, "TK;"
    .end local v6    # "ev":Ljava/lang/Object;, "TV;"
    .end local v12    # "oldVal":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v20

    #@9d
    monitor-exit v7

    #@9e
    throw v20

    #@9f
    .line 971
    .restart local v4    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v5    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v6    # "ev":Ljava/lang/Object;, "TV;"
    .restart local v12    # "oldVal":Ljava/lang/Object;, "TV;"
    :cond_b
    :try_start_2
    iget-object v0, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@a1
    move-object/from16 v20, v0

    #@a3
    move-object/from16 v0, v18

    #@a5
    move-object/from16 v1, v20

    #@a7
    invoke-static {v0, v10, v1}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    #@aa
    goto :goto_2

    #@ab
    .line 975
    .end local v5    # "ek":Ljava/lang/Object;, "TK;"
    .end local v6    # "ev":Ljava/lang/Object;, "TV;"
    :cond_c
    move-object v14, v4

    #@ac
    .line 976
    .local v14, "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v4, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@ae
    if-nez v4, :cond_4

    #@b0
    goto :goto_2

    #@b1
    .line 980
    .end local v4    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v14    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_d
    instance-of v0, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    #@b3
    move/from16 v20, v0

    #@b5
    if-eqz v20, :cond_7

    #@b7
    .line 981
    const/16 v19, 0x1

    #@b9
    .line 982
    move-object v0, v7

    #@ba
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    #@bc
    move-object/from16 v17, v0

    #@be
    .line 984
    .local v17, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    move-object/from16 v0, v17

    #@c0
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@c2
    move-object/from16 v16, v0

    #@c4
    .local v16, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v16, :cond_7

    #@c6
    .line 985
    const/16 v20, 0x0

    #@c8
    move-object/from16 v0, v16

    #@ca
    move-object/from16 v1, p1

    #@cc
    move-object/from16 v2, v20

    #@ce
    invoke-virtual {v0, v9, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@d1
    move-result-object v13

    #@d2
    .local v13, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v13, :cond_7

    #@d4
    .line 986
    iget-object v15, v13, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    #@d6
    .line 987
    .local v15, "pv":Ljava/lang/Object;, "TV;"
    if-eqz p3, :cond_e

    #@d8
    move-object/from16 v0, p3

    #@da
    if-ne v0, v15, :cond_f

    #@dc
    .line 989
    :cond_e
    :goto_3
    move-object v12, v15

    #@dd
    .line 990
    if-eqz p2, :cond_10

    #@df
    .line 991
    move-object/from16 v0, p2

    #@e1
    iput-object v0, v13, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    #@e3
    goto :goto_2

    #@e4
    .line 988
    :cond_f
    if-eqz v15, :cond_7

    #@e6
    move-object/from16 v0, p3

    #@e8
    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@eb
    move-result v20

    #@ec
    .line 987
    if-eqz v20, :cond_7

    #@ee
    goto :goto_3

    #@ef
    .line 992
    :cond_10
    move-object/from16 v0, v17

    #@f1
    invoke-virtual {v0, v13}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->removeTreeNode(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    #@f4
    move-result v20

    #@f5
    if-eqz v20, :cond_7

    #@f7
    .line 993
    move-object/from16 v0, v17

    #@f9
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@fb
    move-object/from16 v20, v0

    #@fd
    invoke-static/range {v20 .. v20}, Ljava/util/concurrent/ConcurrentHashMap;->untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@100
    move-result-object v20

    #@101
    move-object/from16 v0, v18

    #@103
    move-object/from16 v1, v20

    #@105
    invoke-static {v0, v10, v1}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@108
    goto/16 :goto_2
.end method

.method public size()I
    .locals 4

    #@0
    .prologue
    .line 746
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    #@3
    move-result-wide v0

    #@4
    .line 747
    .local v0, "n":J
    const-wide/16 v2, 0x0

    #@6
    cmp-long v2, v0, v2

    #@8
    if-gez v2, :cond_0

    #@a
    const/4 v2, 0x0

    #@b
    :goto_0
    return v2

    #@c
    .line 748
    :cond_0
    const-wide/32 v2, 0x7fffffff

    #@f
    cmp-long v2, v0, v2

    #@11
    if-lez v2, :cond_1

    #@13
    const v2, 0x7fffffff

    #@16
    goto :goto_0

    #@17
    .line 749
    :cond_1
    long-to-int v2, v0

    #@18
    goto :goto_0
.end method

.method final sumCount()J
    .locals 8

    #@0
    .prologue
    .line 3193
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    #@2
    .line 3194
    .local v1, "as":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    iget-wide v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->baseCount:J

    #@4
    .line 3195
    .local v4, "sum":J
    if-eqz v1, :cond_1

    #@6
    .line 3196
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    array-length v3, v1

    #@8
    if-ge v2, v3, :cond_1

    #@a
    .line 3197
    aget-object v0, v1, v2

    #@c
    .local v0, "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    if-eqz v0, :cond_0

    #@e
    .line 3198
    iget-wide v6, v0, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;->value:J

    #@10
    add-long/2addr v4, v6

    #@11
    .line 3196
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@13
    goto :goto_0

    #@14
    .line 3201
    .end local v0    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .end local v2    # "i":I
    :cond_1
    return-wide v4
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    .line 1147
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@2
    .local v5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v5, :cond_3

    #@4
    const/4 v0, 0x0

    #@5
    .line 1148
    .local v0, "f":I
    :goto_0
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    #@7
    const/4 v7, 0x0

    #@8
    invoke-direct {v1, v5, v0, v7, v0}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    #@b
    .line 1149
    .local v1, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    .line 1150
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/16 v7, 0x7b

    #@12
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@15
    .line 1152
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@18
    move-result-object v3

    #@19
    .local v3, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_2

    #@1b
    .line 1154
    :goto_1
    iget-object v2, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@1d
    .line 1155
    .local v2, "k":Ljava/lang/Object;, "TK;"
    iget-object v6, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@1f
    .line 1156
    .local v6, "v":Ljava/lang/Object;, "TV;"
    if-ne v2, p0, :cond_0

    #@21
    const-string/jumbo v2, "(this Map)"

    #@24
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    .line 1157
    const/16 v7, 0x3d

    #@29
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2c
    .line 1158
    if-ne v6, p0, :cond_1

    #@2e
    const-string/jumbo v6, "(this Map)"

    #@31
    .end local v6    # "v":Ljava/lang/Object;, "TV;"
    :cond_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    .line 1159
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@37
    move-result-object v3

    #@38
    if-nez v3, :cond_4

    #@3a
    .line 1164
    :cond_2
    const/16 v7, 0x7d

    #@3c
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v7

    #@40
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v7

    #@44
    return-object v7

    #@45
    .line 1147
    .end local v0    # "f":I
    .end local v1    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v3    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    array-length v0, v5

    #@46
    .restart local v0    # "f":I
    goto :goto_0

    #@47
    .line 1161
    .restart local v1    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .restart local v3    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    const/16 v7, 0x2c

    #@49
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v7

    #@4d
    const/16 v8, 0x20

    #@4f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@52
    goto :goto_1
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1091
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->values:Ljava/util/concurrent/ConcurrentHashMap$ValuesView;

    #@2
    .local v0, "vs":Ljava/util/concurrent/ConcurrentHashMap$ValuesView;, "Ljava/util/concurrent/ConcurrentHashMap$ValuesView<TK;TV;>;"
    if-eqz v0, :cond_0

    #@4
    .end local v0    # "vs":Ljava/util/concurrent/ConcurrentHashMap$ValuesView;, "Ljava/util/concurrent/ConcurrentHashMap$ValuesView<TK;TV;>;"
    :goto_0
    return-object v0

    #@5
    .restart local v0    # "vs":Ljava/util/concurrent/ConcurrentHashMap$ValuesView;, "Ljava/util/concurrent/ConcurrentHashMap$ValuesView<TK;TV;>;"
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ValuesView;

    #@7
    .end local v0    # "vs":Ljava/util/concurrent/ConcurrentHashMap$ValuesView;, "Ljava/util/concurrent/ConcurrentHashMap$ValuesView<TK;TV;>;"
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap$ValuesView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    #@a
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->values:Ljava/util/concurrent/ConcurrentHashMap$ValuesView;

    #@c
    goto :goto_0
.end method
