.class public Ljava/util/concurrent/ConcurrentHashMap;
.super Ljava/util/AbstractMap;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$BulkTask;,
        Ljava/util/concurrent/ConcurrentHashMap$CollectionView;,
        Ljava/util/concurrent/ConcurrentHashMap$CounterCell;,
        Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;,
        Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;,
        Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$KeySetView;,
        Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;,
        Ljava/util/concurrent/ConcurrentHashMap$MapEntry;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToDoubleTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;,
        Ljava/util/concurrent/ConcurrentHashMap$Node;,
        Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;,
        Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;,
        Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;,
        Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;,
        Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;,
        Ljava/util/concurrent/ConcurrentHashMap$Segment;,
        Ljava/util/concurrent/ConcurrentHashMap$TableStack;,
        Ljava/util/concurrent/ConcurrentHashMap$Traverser;,
        Ljava/util/concurrent/ConcurrentHashMap$TreeBin;,
        Ljava/util/concurrent/ConcurrentHashMap$TreeNode;,
        Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;,
        Ljava/util/concurrent/ConcurrentHashMap$ValuesView;
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
.field private static final ABASE:I

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

.field private static final MAX_RESIZERS:I = 0xffff

.field private static final MIN_TRANSFER_STRIDE:I = 0x10

.field static final MIN_TREEIFY_CAPACITY:I = 0x40

.field static final MOVED:I = -0x1

.field static final NCPU:I

.field static final RESERVED:I = -0x3

.field private static final RESIZE_STAMP_BITS:I = 0x10

.field private static final RESIZE_STAMP_SHIFT:I = 0x10

.field private static final SIZECTL:J

.field private static final TRANSFERINDEX:J

.field static final TREEBIN:I = -0x2

.field static final TREEIFY_THRESHOLD:I = 0x8

.field private static final U:Lsun/misc/Unsafe;

.field static final UNTREEIFY_THRESHOLD:I = 0x6

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x6499de129d87293dL


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
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 568
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@4
    move-result-object v3

    #@5
    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    #@8
    move-result v3

    #@9
    sput v3, Ljava/util/concurrent/ConcurrentHashMap;->NCPU:I

    #@b
    .line 580
    const/4 v3, 0x3

    #@c
    new-array v3, v3, [Ljava/io/ObjectStreamField;

    #@e
    .line 581
    new-instance v4, Ljava/io/ObjectStreamField;

    #@10
    const-string/jumbo v5, "segments"

    #@13
    const-class v6, [Ljava/util/concurrent/ConcurrentHashMap$Segment;

    #@15
    invoke-direct {v4, v5, v6}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@18
    aput-object v4, v3, v7

    #@1a
    .line 582
    new-instance v4, Ljava/io/ObjectStreamField;

    #@1c
    const-string/jumbo v5, "segmentMask"

    #@1f
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@21
    invoke-direct {v4, v5, v6}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@24
    const/4 v5, 0x1

    #@25
    aput-object v4, v3, v5

    #@27
    .line 583
    new-instance v4, Ljava/io/ObjectStreamField;

    #@29
    const-string/jumbo v5, "segmentShift"

    #@2c
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@2e
    invoke-direct {v4, v5, v6}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@31
    const/4 v5, 0x2

    #@32
    aput-object v4, v3, v5

    #@34
    .line 580
    sput-object v3, Ljava/util/concurrent/ConcurrentHashMap;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    #@36
    .line 6316
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@39
    move-result-object v3

    #@3a
    sput-object v3, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@3c
    .line 6327
    :try_start_0
    sget-object v3, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@3e
    .line 6328
    const-class v4, Ljava/util/concurrent/ConcurrentHashMap;

    #@40
    const-string/jumbo v5, "sizeCtl"

    #@43
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@46
    move-result-object v4

    #@47
    .line 6327
    invoke-virtual {v3, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@4a
    move-result-wide v4

    #@4b
    sput-wide v4, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    #@4d
    .line 6329
    sget-object v3, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@4f
    .line 6330
    const-class v4, Ljava/util/concurrent/ConcurrentHashMap;

    #@51
    const-string/jumbo v5, "transferIndex"

    #@54
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@57
    move-result-object v4

    #@58
    .line 6329
    invoke-virtual {v3, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@5b
    move-result-wide v4

    #@5c
    sput-wide v4, Ljava/util/concurrent/ConcurrentHashMap;->TRANSFERINDEX:J

    #@5e
    .line 6331
    sget-object v3, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@60
    .line 6332
    const-class v4, Ljava/util/concurrent/ConcurrentHashMap;

    #@62
    const-string/jumbo v5, "baseCount"

    #@65
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@68
    move-result-object v4

    #@69
    .line 6331
    invoke-virtual {v3, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@6c
    move-result-wide v4

    #@6d
    sput-wide v4, Ljava/util/concurrent/ConcurrentHashMap;->BASECOUNT:J

    #@6f
    .line 6333
    sget-object v3, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@71
    .line 6334
    const-class v4, Ljava/util/concurrent/ConcurrentHashMap;

    #@73
    const-string/jumbo v5, "cellsBusy"

    #@76
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@79
    move-result-object v4

    #@7a
    .line 6333
    invoke-virtual {v3, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@7d
    move-result-wide v4

    #@7e
    sput-wide v4, Ljava/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    #@80
    .line 6336
    sget-object v3, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@82
    .line 6337
    const-class v4, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    #@84
    const-string/jumbo v5, "value"

    #@87
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@8a
    move-result-object v4

    #@8b
    .line 6336
    invoke-virtual {v3, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@8e
    move-result-wide v4

    #@8f
    sput-wide v4, Ljava/util/concurrent/ConcurrentHashMap;->CELLVALUE:J

    #@91
    .line 6339
    sget-object v3, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@93
    const-class v4, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@95
    invoke-virtual {v3, v4}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    #@98
    move-result v3

    #@99
    sput v3, Ljava/util/concurrent/ConcurrentHashMap;->ABASE:I

    #@9b
    .line 6340
    sget-object v3, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@9d
    const-class v4, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@9f
    invoke-virtual {v3, v4}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    #@a2
    move-result v2

    #@a3
    .line 6341
    .local v2, "scale":I
    add-int/lit8 v3, v2, -0x1

    #@a5
    and-int/2addr v3, v2

    #@a6
    if-eqz v3, :cond_0

    #@a8
    .line 6342
    new-instance v3, Ljava/lang/Error;

    #@aa
    const-string/jumbo v4, "array index scale not a power of two"

    #@ad
    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@b0
    throw v3
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@b1
    .line 6344
    :catch_0
    move-exception v0

    #@b2
    .line 6345
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v3, Ljava/lang/Error;

    #@b4
    invoke-direct {v3, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@b7
    throw v3

    #@b8
    .line 6343
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_0
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    #@bb
    move-result v3

    #@bc
    rsub-int/lit8 v3, v3, 0x1f

    #@be
    sput v3, Ljava/util/concurrent/ConcurrentHashMap;->ASHIFT:I
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0

    #@c0
    .line 6350
    const-class v1, Ljava/util/concurrent/locks/LockSupport;

    #@c2
    .line 235
    .local v1, "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 802
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
    .line 815
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@3
    .line 816
    if-gez p1, :cond_0

    #@5
    .line 817
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@7
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@a
    throw v1

    #@b
    .line 818
    :cond_0
    const/high16 v1, 0x20000000

    #@d
    if-lt p1, v1, :cond_1

    #@f
    .line 819
    const/high16 v0, 0x40000000    # 2.0f

    #@11
    .line 821
    .local v0, "cap":I
    :goto_0
    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    #@13
    .line 815
    return-void

    #@14
    .line 820
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
    goto :goto_0
.end method

.method public constructor <init>(IF)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    #@0
    .prologue
    .line 850
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    #@4
    .line 849
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
    .line 871
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@4
    .line 873
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
    .line 874
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@10
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@13
    throw v1

    #@14
    .line 873
    :cond_2
    if-lez p3, :cond_1

    #@16
    .line 875
    if-ge p1, p3, :cond_3

    #@18
    .line 876
    move p1, p3

    #@19
    .line 877
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
    .line 878
    .local v2, "size":J
    const-wide/32 v4, 0x40000000

    #@24
    cmp-long v1, v2, v4

    #@26
    if-ltz v1, :cond_4

    #@28
    .line 879
    const/high16 v0, 0x40000000    # 2.0f

    #@2a
    .line 880
    .local v0, "cap":I
    :goto_0
    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    #@2c
    .line 872
    return-void

    #@2d
    .line 879
    .end local v0    # "cap":I
    :cond_4
    long-to-int v1, v2

    #@2e
    invoke-static {v1}, Ljava/util/concurrent/ConcurrentHashMap;->tableSizeFor(I)I

    #@31
    move-result v0

    #@32
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
    .line 829
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@3
    .line 830
    const/16 v0, 0x10

    #@5
    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    #@7
    .line 831
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    #@a
    .line 829
    return-void
.end method

.method private final addCount(JI)V
    .locals 31
    .param p1, "x"    # J
    .param p3, "check"    # I

    #@0
    .prologue
    .line 2297
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    #@4
    move-object/from16 v24, v0

    #@6
    .local v24, "as":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    if-nez v24, :cond_1

    #@8
    .line 2298
    sget-object v4, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@a
    sget-wide v6, Ljava/util/concurrent/ConcurrentHashMap;->BASECOUNT:J

    #@c
    move-object/from16 v0, p0

    #@e
    iget-wide v8, v0, Ljava/util/concurrent/ConcurrentHashMap;->baseCount:J

    #@10
    .local v8, "b":J
    add-long v10, v8, p1

    #@12
    .local v10, "s":J
    move-object/from16 v5, p0

    #@14
    invoke-virtual/range {v4 .. v11}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_1

    #@1a
    .line 2312
    .end local v8    # "b":J
    :goto_0
    if-ltz p3, :cond_0

    #@1c
    .line 2314
    :goto_1
    move-object/from16 v0, p0

    #@1e
    iget v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    #@20
    move/from16 v22, v0

    #@22
    .local v22, "sc":I
    move/from16 v0, v22

    #@24
    int-to-long v4, v0

    #@25
    cmp-long v4, v10, v4

    #@27
    if-ltz v4, :cond_0

    #@29
    move-object/from16 v0, p0

    #@2b
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@2d
    move-object/from16 v29, v0

    #@2f
    .local v29, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v29, :cond_0

    #@31
    .line 2315
    move-object/from16 v0, v29

    #@33
    array-length v0, v0

    #@34
    move/from16 v26, v0

    #@36
    .local v26, "n":I
    const/high16 v4, 0x40000000    # 2.0f

    #@38
    move/from16 v0, v26

    #@3a
    if-ge v0, v4, :cond_0

    #@3c
    .line 2316
    invoke-static/range {v26 .. v26}, Ljava/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    #@3f
    move-result v28

    #@40
    .line 2317
    .local v28, "rs":I
    if-gez v22, :cond_7

    #@42
    .line 2318
    ushr-int/lit8 v4, v22, 0x10

    #@44
    move/from16 v0, v28

    #@46
    if-ne v4, v0, :cond_0

    #@48
    add-int/lit8 v4, v28, 0x1

    #@4a
    move/from16 v0, v22

    #@4c
    if-ne v0, v4, :cond_5

    #@4e
    .line 2295
    .end local v22    # "sc":I
    .end local v26    # "n":I
    .end local v28    # "rs":I
    .end local v29    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_0
    return-void

    #@4f
    .line 2300
    .end local v10    # "s":J
    :cond_1
    const/16 v30, 0x1

    #@51
    .line 2301
    .local v30, "uncontended":Z
    if-eqz v24, :cond_2

    #@53
    move-object/from16 v0, v24

    #@55
    array-length v4, v0

    #@56
    add-int/lit8 v25, v4, -0x1

    #@58
    .local v25, "m":I
    if-gez v25, :cond_3

    #@5a
    .line 2305
    .end local v25    # "m":I
    .end local v30    # "uncontended":Z
    :cond_2
    move-object/from16 v0, p0

    #@5c
    move-wide/from16 v1, p1

    #@5e
    move/from16 v3, v30

    #@60
    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->fullAddCount(JZ)V

    #@63
    .line 2306
    return-void

    #@64
    .line 2302
    .restart local v25    # "m":I
    .restart local v30    # "uncontended":Z
    :cond_3
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->getProbe()I

    #@67
    move-result v4

    #@68
    and-int v4, v4, v25

    #@6a
    aget-object v13, v24, v4

    #@6c
    .local v13, "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    if-eqz v13, :cond_2

    #@6e
    .line 2304
    sget-object v12, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@70
    sget-wide v14, Ljava/util/concurrent/ConcurrentHashMap;->CELLVALUE:J

    #@72
    iget-wide v0, v13, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;->value:J

    #@74
    move-wide/from16 v16, v0

    #@76
    .local v16, "v":J
    add-long v18, v16, p1

    #@78
    invoke-virtual/range {v12 .. v19}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@7b
    move-result v30

    #@7c
    .line 2303
    .local v30, "uncontended":Z
    if-eqz v30, :cond_2

    #@7e
    .line 2308
    const/4 v4, 0x1

    #@7f
    move/from16 v0, p3

    #@81
    if-gt v0, v4, :cond_4

    #@83
    .line 2309
    return-void

    #@84
    .line 2310
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    #@87
    move-result-wide v10

    #@88
    .restart local v10    # "s":J
    goto :goto_0

    #@89
    .line 2319
    .end local v13    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .end local v16    # "v":J
    .end local v25    # "m":I
    .end local v30    # "uncontended":Z
    .restart local v22    # "sc":I
    .restart local v26    # "n":I
    .restart local v28    # "rs":I
    .restart local v29    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_5
    const v4, 0xffff

    #@8c
    add-int v4, v4, v28

    #@8e
    move/from16 v0, v22

    #@90
    if-eq v0, v4, :cond_0

    #@92
    move-object/from16 v0, p0

    #@94
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@96
    move-object/from16 v27, v0

    #@98
    .local v27, "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v27, :cond_0

    #@9a
    .line 2320
    move-object/from16 v0, p0

    #@9c
    iget v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->transferIndex:I

    #@9e
    if-lez v4, :cond_0

    #@a0
    .line 2322
    sget-object v18, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@a2
    sget-wide v20, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    #@a4
    add-int/lit8 v23, v22, 0x1

    #@a6
    move-object/from16 v19, p0

    #@a8
    invoke-virtual/range {v18 .. v23}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@ab
    move-result v4

    #@ac
    if-eqz v4, :cond_6

    #@ae
    .line 2323
    move-object/from16 v0, p0

    #@b0
    move-object/from16 v1, v29

    #@b2
    move-object/from16 v2, v27

    #@b4
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->transfer([Ljava/util/concurrent/ConcurrentHashMap$Node;[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@b7
    .line 2328
    .end local v27    # "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_6
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    #@ba
    move-result-wide v10

    #@bb
    goto/16 :goto_1

    #@bd
    .line 2325
    :cond_7
    sget-object v18, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@bf
    sget-wide v20, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    #@c1
    .line 2326
    shl-int/lit8 v4, v28, 0x10

    #@c3
    add-int/lit8 v23, v4, 0x2

    #@c5
    move-object/from16 v19, p0

    #@c7
    .line 2325
    invoke-virtual/range {v18 .. v23}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@ca
    move-result v4

    #@cb
    if-eqz v4, :cond_6

    #@cd
    .line 2327
    const/4 v4, 0x0

    #@ce
    move-object/from16 v0, p0

    #@d0
    move-object/from16 v1, v29

    #@d2
    invoke-direct {v0, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->transfer([Ljava/util/concurrent/ConcurrentHashMap$Node;[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@d5
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
    .line 739
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
    sget v1, Ljava/util/concurrent/ConcurrentHashMap;->ABASE:I

    #@8
    int-to-long v4, v1

    #@9
    add-long/2addr v2, v4

    #@a
    move-object v1, p0

    #@b
    move-object v4, p2

    #@c
    move-object v5, p3

    #@d
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
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
    .line 686
    instance-of v6, p0, Ljava/lang/Comparable;

    #@3
    if-eqz v6, :cond_2

    #@5
    .line 688
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Ljava/lang/String;

    #@b
    if-ne v1, v6, :cond_0

    #@d
    .line 689
    return-object v1

    #@e
    .line 690
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    #@11
    move-result-object v5

    #@12
    .local v5, "ts":[Ljava/lang/reflect/Type;
    if-eqz v5, :cond_2

    #@14
    .line 691
    const/4 v2, 0x0

    #@15
    .local v2, "i":I
    :goto_0
    array-length v6, v5

    #@16
    if-ge v2, v6, :cond_2

    #@18
    .line 692
    aget-object v4, v5, v2

    #@1a
    .local v4, "t":Ljava/lang/reflect/Type;
    instance-of v6, v4, Ljava/lang/reflect/ParameterizedType;

    #@1c
    if-eqz v6, :cond_1

    #@1e
    move-object v3, v4

    #@1f
    .line 693
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    #@21
    .local v3, "p":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    #@24
    move-result-object v6

    #@25
    .line 694
    const-class v7, Ljava/lang/Comparable;

    #@27
    .line 693
    if-ne v6, v7, :cond_1

    #@29
    .line 695
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    #@2c
    move-result-object v0

    #@2d
    .local v0, "as":[Ljava/lang/reflect/Type;
    if-eqz v0, :cond_1

    #@2f
    .line 696
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
    .line 697
    return-object v1

    #@39
    .line 691
    .end local v0    # "as":[Ljava/lang/reflect/Type;
    .end local v3    # "p":Ljava/lang/reflect/ParameterizedType;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 701
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
    .line 710
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
    .line 711
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

.method private final fullAddCount(JZ)V
    .locals 29
    .param p1, "x"    # J
    .param p3, "wasUncontended"    # Z

    #@0
    .prologue
    .line 2557
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->getProbe()I

    #@3
    move-result v21

    #@4
    .local v21, "h":I
    if-nez v21, :cond_0

    #@6
    .line 2558
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->localInit()V

    #@9
    .line 2559
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->getProbe()I

    #@c
    move-result v21

    #@d
    .line 2560
    const/16 p3, 0x1

    #@f
    .line 2562
    .end local p3    # "wasUncontended":Z
    :cond_0
    const/16 v19, 0x0

    #@11
    .line 2565
    .local v19, "collide":Z
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    #@13
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    #@15
    move-object/from16 v18, v0

    #@17
    .local v18, "as":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    if-eqz v18, :cond_d

    #@19
    move-object/from16 v0, v18

    #@1b
    array-length v0, v0

    #@1c
    move/from16 v26, v0

    #@1e
    .local v26, "n":I
    if-lez v26, :cond_d

    #@20
    .line 2566
    add-int/lit8 v4, v26, -0x1

    #@22
    and-int v4, v4, v21

    #@24
    aget-object v5, v18, v4

    #@26
    .local v5, "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    if-nez v5, :cond_6

    #@28
    .line 2567
    move-object/from16 v0, p0

    #@2a
    iget v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    #@2c
    if-nez v4, :cond_4

    #@2e
    .line 2568
    new-instance v27, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    #@30
    move-object/from16 v0, v27

    #@32
    move-wide/from16 v1, p1

    #@34
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;-><init>(J)V

    #@37
    .line 2569
    .local v27, "r":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    move-object/from16 v0, p0

    #@39
    iget v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    #@3b
    if-nez v4, :cond_4

    #@3d
    .line 2570
    sget-object v4, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@3f
    sget-wide v6, Ljava/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    #@41
    const/4 v8, 0x0

    #@42
    const/4 v9, 0x1

    #@43
    move-object/from16 v5, p0

    #@45
    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@48
    .end local v5    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    move-result v4

    #@49
    .line 2569
    if-eqz v4, :cond_4

    #@4b
    .line 2571
    const/16 v20, 0x0

    #@4d
    .line 2574
    .local v20, "created":Z
    :try_start_0
    move-object/from16 v0, p0

    #@4f
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    #@51
    move-object/from16 v28, v0

    #@53
    .local v28, "rs":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    if-eqz v28, :cond_2

    #@55
    .line 2575
    move-object/from16 v0, v28

    #@57
    array-length v0, v0

    #@58
    move/from16 v25, v0

    #@5a
    .local v25, "m":I
    if-lez v25, :cond_2

    #@5c
    .line 2576
    add-int/lit8 v4, v25, -0x1

    #@5e
    and-int v24, v4, v21

    #@60
    .local v24, "j":I
    aget-object v4, v28, v24

    #@62
    if-nez v4, :cond_2

    #@64
    .line 2577
    aput-object v27, v28, v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@66
    .line 2578
    const/16 v20, 0x1

    #@68
    .line 2581
    .end local v24    # "j":I
    .end local v25    # "m":I
    :cond_2
    const/4 v4, 0x0

    #@69
    move-object/from16 v0, p0

    #@6b
    iput v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    #@6d
    .line 2583
    if-eqz v20, :cond_1

    #@6f
    .line 2555
    .end local v20    # "created":Z
    .end local v26    # "n":I
    .end local v27    # "r":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .end local v28    # "rs":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_3
    :goto_1
    return-void

    #@70
    .line 2580
    .restart local v20    # "created":Z
    .restart local v26    # "n":I
    .restart local v27    # "r":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :catchall_0
    move-exception v4

    #@71
    .line 2581
    const/4 v6, 0x0

    #@72
    move-object/from16 v0, p0

    #@74
    iput v6, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    #@76
    .line 2580
    throw v4

    #@77
    .line 2588
    .end local v20    # "created":Z
    .end local v27    # "r":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_4
    const/16 v19, 0x0

    #@79
    .line 2613
    :cond_5
    :goto_2
    invoke-static/range {v21 .. v21}, Ljava/util/concurrent/ThreadLocalRandom;->advanceProbe(I)I

    #@7c
    move-result v21

    #@7d
    goto :goto_0

    #@7e
    .line 2590
    .restart local v5    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_6
    if-nez p3, :cond_7

    #@80
    .line 2591
    const/16 p3, 0x1

    #@82
    .local p3, "wasUncontended":Z
    goto :goto_2

    #@83
    .line 2592
    .end local p3    # "wasUncontended":Z
    :cond_7
    sget-object v4, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@85
    sget-wide v6, Ljava/util/concurrent/ConcurrentHashMap;->CELLVALUE:J

    #@87
    iget-wide v8, v5, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;->value:J

    #@89
    .local v8, "v":J
    add-long v10, v8, p1

    #@8b
    invoke-virtual/range {v4 .. v11}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@8e
    move-result v4

    #@8f
    if-nez v4, :cond_3

    #@91
    .line 2594
    move-object/from16 v0, p0

    #@93
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    #@95
    move-object/from16 v0, v18

    #@97
    if-ne v4, v0, :cond_8

    #@99
    sget v4, Ljava/util/concurrent/ConcurrentHashMap;->NCPU:I

    #@9b
    move/from16 v0, v26

    #@9d
    if-lt v0, v4, :cond_9

    #@9f
    .line 2595
    :cond_8
    const/16 v19, 0x0

    #@a1
    goto :goto_2

    #@a2
    .line 2596
    :cond_9
    if-nez v19, :cond_a

    #@a4
    .line 2597
    const/16 v19, 0x1

    #@a6
    goto :goto_2

    #@a7
    .line 2598
    :cond_a
    move-object/from16 v0, p0

    #@a9
    iget v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    #@ab
    if-nez v4, :cond_5

    #@ad
    .line 2599
    sget-object v10, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@af
    sget-wide v12, Ljava/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    #@b1
    const/4 v14, 0x0

    #@b2
    const/4 v15, 0x1

    #@b3
    move-object/from16 v11, p0

    #@b5
    invoke-virtual/range {v10 .. v15}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@b8
    move-result v4

    #@b9
    .line 2598
    if-eqz v4, :cond_5

    #@bb
    .line 2601
    :try_start_1
    move-object/from16 v0, p0

    #@bd
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    #@bf
    move-object/from16 v0, v18

    #@c1
    if-ne v4, v0, :cond_c

    #@c3
    .line 2602
    shl-int/lit8 v4, v26, 0x1

    #@c5
    new-array v0, v4, [Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    #@c7
    move-object/from16 v28, v0

    #@c9
    .line 2603
    .restart local v28    # "rs":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    const/16 v22, 0x0

    #@cb
    .local v22, "i":I
    :goto_3
    move/from16 v0, v22

    #@cd
    move/from16 v1, v26

    #@cf
    if-ge v0, v1, :cond_b

    #@d1
    .line 2604
    aget-object v4, v18, v22

    #@d3
    aput-object v4, v28, v22

    #@d5
    .line 2603
    add-int/lit8 v22, v22, 0x1

    #@d7
    goto :goto_3

    #@d8
    .line 2605
    :cond_b
    move-object/from16 v0, v28

    #@da
    move-object/from16 v1, p0

    #@dc
    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@de
    .line 2608
    .end local v22    # "i":I
    .end local v28    # "rs":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_c
    const/4 v4, 0x0

    #@df
    move-object/from16 v0, p0

    #@e1
    iput v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    #@e3
    .line 2610
    const/16 v19, 0x0

    #@e5
    goto/16 :goto_0

    #@e7
    .line 2607
    :catchall_1
    move-exception v4

    #@e8
    .line 2608
    const/4 v6, 0x0

    #@e9
    move-object/from16 v0, p0

    #@eb
    iput v6, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    #@ed
    .line 2607
    throw v4

    #@ee
    .line 2615
    .end local v5    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .end local v8    # "v":J
    .end local v26    # "n":I
    :cond_d
    move-object/from16 v0, p0

    #@f0
    iget v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    #@f2
    if-nez v4, :cond_f

    #@f4
    move-object/from16 v0, p0

    #@f6
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    #@f8
    move-object/from16 v0, v18

    #@fa
    if-ne v4, v0, :cond_f

    #@fc
    .line 2616
    sget-object v10, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@fe
    sget-wide v12, Ljava/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    #@100
    const/4 v14, 0x0

    #@101
    const/4 v15, 0x1

    #@102
    move-object/from16 v11, p0

    #@104
    invoke-virtual/range {v10 .. v15}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@107
    move-result v4

    #@108
    .line 2615
    if-eqz v4, :cond_f

    #@10a
    .line 2617
    const/16 v23, 0x0

    #@10c
    .line 2619
    .local v23, "init":Z
    :try_start_2
    move-object/from16 v0, p0

    #@10e
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    #@110
    move-object/from16 v0, v18

    #@112
    if-ne v4, v0, :cond_e

    #@114
    .line 2620
    const/4 v4, 0x2

    #@115
    new-array v0, v4, [Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    #@117
    move-object/from16 v28, v0

    #@119
    .line 2621
    .restart local v28    # "rs":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    and-int/lit8 v4, v21, 0x1

    #@11b
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    #@11d
    move-wide/from16 v0, p1

    #@11f
    invoke-direct {v6, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;-><init>(J)V

    #@122
    aput-object v6, v28, v4

    #@124
    .line 2622
    move-object/from16 v0, v28

    #@126
    move-object/from16 v1, p0

    #@128
    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@12a
    .line 2623
    const/16 v23, 0x1

    #@12c
    .line 2626
    .end local v28    # "rs":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_e
    const/4 v4, 0x0

    #@12d
    move-object/from16 v0, p0

    #@12f
    iput v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    #@131
    .line 2628
    if-eqz v23, :cond_1

    #@133
    goto/16 :goto_1

    #@135
    .line 2625
    :catchall_2
    move-exception v4

    #@136
    .line 2626
    const/4 v6, 0x0

    #@137
    move-object/from16 v0, p0

    #@139
    iput v6, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    #@13b
    .line 2625
    throw v4

    #@13c
    .line 2631
    .end local v23    # "init":Z
    :cond_f
    sget-object v10, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@13e
    sget-wide v12, Ljava/util/concurrent/ConcurrentHashMap;->BASECOUNT:J

    #@140
    move-object/from16 v0, p0

    #@142
    iget-wide v8, v0, Ljava/util/concurrent/ConcurrentHashMap;->baseCount:J

    #@144
    .restart local v8    # "v":J
    add-long v16, v8, p1

    #@146
    move-object/from16 v11, p0

    #@148
    move-wide v14, v8

    #@149
    invoke-virtual/range {v10 .. v17}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@14c
    move-result v4

    #@14d
    if-eqz v4, :cond_1

    #@14f
    goto/16 :goto_1
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
    .line 2264
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
    .line 2265
    :cond_1
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    #@9
    .local v4, "sc":I
    if-gez v4, :cond_2

    #@b
    .line 2266
    invoke-static {}, Ljava/lang/Thread;->yield()V

    #@e
    goto :goto_0

    #@f
    .line 2267
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
    .line 2269
    :try_start_0
    iget-object v8, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@1d
    if-eqz v8, :cond_3

    #@1f
    array-length v0, v8

    #@20
    if-nez v0, :cond_4

    #@22
    .line 2270
    :cond_3
    if-lez v4, :cond_6

    #@24
    move v6, v4

    #@25
    .line 2272
    .local v6, "n":I
    :goto_1
    new-array v7, v6, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@27
    .line 2273
    .local v7, "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object v8, v7

    #@28
    iput-object v7, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 2274
    ushr-int/lit8 v0, v6, 0x2

    #@2c
    sub-int v4, v6, v0

    #@2e
    .line 2277
    .end local v6    # "n":I
    .end local v7    # "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_4
    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    #@30
    .line 2282
    .end local v4    # "sc":I
    :cond_5
    return-object v8

    #@31
    .line 2270
    .restart local v4    # "sc":I
    :cond_6
    const/16 v6, 0x10

    #@33
    goto :goto_1

    #@34
    .line 2276
    :catchall_0
    move-exception v0

    #@35
    .line 2277
    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    #@37
    .line 2276
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
    .line 2159
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    #@2
    .line 2160
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    #@4
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@7
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@9
    .line 2159
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
    .line 2176
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    #@2
    .line 2177
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    #@4
    invoke-direct {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    #@7
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@9
    .line 2176
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
    .line 1424
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v5, -0x1

    #@1
    move-object/from16 v0, p0

    #@3
    iput v5, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    #@5
    .line 1425
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@8
    .line 1426
    const-wide/16 v26, 0x0

    #@a
    .line 1427
    .local v26, "size":J
    const/16 v22, 0x0

    #@c
    .line 1430
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@f
    move-result-object v18

    #@10
    .line 1432
    .local v18, "k":Ljava/lang/Object;, "TK;"
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@13
    move-result-object v32

    #@14
    .line 1433
    .local v32, "v":Ljava/lang/Object;, "TV;"
    if-eqz v18, :cond_0

    #@16
    if-eqz v32, :cond_0

    #@18
    .line 1434
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
    .line 1435
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
    .line 1440
    .end local v22    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_0
    const-wide/16 v6, 0x0

    #@36
    cmp-long v5, v26, v6

    #@38
    if-nez v5, :cond_1

    #@3a
    .line 1441
    const/4 v5, 0x0

    #@3b
    move-object/from16 v0, p0

    #@3d
    iput v5, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    #@3f
    .line 1416
    :goto_1
    return-void

    #@40
    .line 1444
    :cond_1
    const-wide/32 v6, 0x20000000

    #@43
    cmp-long v5, v26, v6

    #@45
    if-ltz v5, :cond_4

    #@47
    .line 1445
    const/high16 v20, 0x40000000    # 2.0f

    #@49
    .line 1451
    .local v20, "n":I
    :goto_2
    move/from16 v0, v20

    #@4b
    new-array v0, v0, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@4d
    move-object/from16 v30, v0

    #@4f
    .line 1452
    .local v30, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    add-int/lit8 v19, v20, -0x1

    #@51
    .line 1453
    .local v19, "mask":I
    const-wide/16 v10, 0x0

    #@53
    .line 1454
    .local v10, "added":J
    :goto_3
    if-eqz v22, :cond_d

    #@55
    .line 1456
    move-object/from16 v0, v22

    #@57
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@59
    move-object/from16 v21, v0

    #@5b
    .line 1457
    .local v21, "next":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object/from16 v0, v22

    #@5d
    iget v14, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@5f
    .local v14, "h":I
    and-int v17, v14, v19

    #@61
    .line 1458
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
    .line 1459
    const/16 v16, 0x1

    #@6d
    .line 1499
    .local v16, "insertAtFront":Z
    :cond_2
    :goto_4
    if-eqz v16, :cond_3

    #@6f
    .line 1500
    const-wide/16 v6, 0x1

    #@71
    add-long/2addr v10, v6

    #@72
    .line 1501
    move-object/from16 v0, v22

    #@74
    iput-object v13, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@76
    .line 1502
    move-object/from16 v0, v30

    #@78
    move/from16 v1, v17

    #@7a
    move-object/from16 v2, v22

    #@7c
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    #@7f
    .line 1504
    :cond_3
    move-object/from16 v22, v21

    #@81
    .restart local v22    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_3

    #@82
    .line 1447
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
    .line 1448
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
    .line 1461
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
    .line 1462
    iget v5, v13, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@9a
    if-gez v5, :cond_7

    #@9c
    move-object/from16 v29, v13

    #@9e
    .line 1463
    check-cast v29, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    #@a0
    .line 1464
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
    .line 1465
    const-wide/16 v6, 0x1

    #@b0
    add-long/2addr v10, v6

    #@b1
    .line 1466
    :cond_6
    const/16 v16, 0x0

    #@b3
    .restart local v16    # "insertAtFront":Z
    goto :goto_4

    #@b4
    .line 1469
    .end local v16    # "insertAtFront":Z
    .end local v29    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    :cond_7
    const/4 v12, 0x0

    #@b5
    .line 1470
    .local v12, "binCount":I
    const/16 v16, 0x1

    #@b7
    .line 1472
    .restart local v16    # "insertAtFront":Z
    move-object/from16 v24, v13

    #@b9
    .local v24, "q":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_5
    if-eqz v24, :cond_9

    #@bb
    .line 1473
    move-object/from16 v0, v24

    #@bd
    iget v5, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@bf
    if-ne v5, v14, :cond_a

    #@c1
    .line 1474
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
    .line 1475
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
    .line 1473
    if-eqz v5, :cond_a

    #@d9
    .line 1476
    :cond_8
    const/16 v16, 0x0

    #@db
    .line 1481
    .end local v25    # "qk":Ljava/lang/Object;, "TK;"
    :cond_9
    if-eqz v16, :cond_2

    #@dd
    const/16 v5, 0x8

    #@df
    if-lt v12, v5, :cond_2

    #@e1
    .line 1482
    const/16 v16, 0x0

    #@e3
    .line 1483
    const-wide/16 v6, 0x1

    #@e5
    add-long/2addr v10, v6

    #@e6
    .line 1484
    move-object/from16 v0, v22

    #@e8
    iput-object v13, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@ea
    .line 1485
    const/4 v15, 0x0

    #@eb
    .local v15, "hd":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/16 v31, 0x0

    #@ed
    .line 1486
    .local v31, "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    move-object/from16 v24, v22

    #@ef
    .end local v15    # "hd":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v31    # "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_6
    if-eqz v24, :cond_c

    #@f1
    .line 1487
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@f3
    .line 1488
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
    .line 1487
    invoke-direct/range {v4 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    #@104
    .line 1489
    .local v4, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    move-object/from16 v0, v31

    #@106
    iput-object v0, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@108
    if-nez v31, :cond_b

    #@10a
    .line 1490
    move-object v15, v4

    #@10b
    .line 1493
    :goto_7
    move-object/from16 v31, v4

    #@10d
    .line 1486
    .local v31, "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    move-object/from16 v0, v24

    #@10f
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@111
    move-object/from16 v24, v0

    #@113
    goto :goto_6

    #@114
    .line 1479
    .end local v4    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v31    # "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_a
    add-int/lit8 v12, v12, 0x1

    #@116
    .line 1472
    move-object/from16 v0, v24

    #@118
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@11a
    move-object/from16 v24, v0

    #@11c
    goto :goto_5

    #@11d
    .line 1492
    .restart local v4    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_b
    move-object/from16 v0, v31

    #@11f
    iput-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@121
    goto :goto_7

    #@122
    .line 1495
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
    .line 1506
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
    .line 1507
    ushr-int/lit8 v5, v20, 0x2

    #@138
    sub-int v5, v20, v5

    #@13a
    move-object/from16 v0, p0

    #@13c
    iput v5, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    #@13e
    .line 1508
    move-object/from16 v0, p0

    #@140
    iput-wide v10, v0, Ljava/util/concurrent/ConcurrentHashMap;->baseCount:J

    #@142
    goto/16 :goto_1
.end method

.method static final resizeStamp(I)I
    .locals 2
    .param p0, "n"    # I

    #@0
    .prologue
    .line 2256
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    #@3
    move-result v0

    #@4
    const v1, 0x8000

    #@7
    or-int/2addr v0, v1

    #@8
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
    .line 743
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
    sget v1, Ljava/util/concurrent/ConcurrentHashMap;->ABASE:I

    #@8
    int-to-long v4, v1

    #@9
    add-long/2addr v2, v4

    #@a
    invoke-virtual {v0, p0, v2, v3, p2}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    #@d
    .line 742
    return-void
.end method

.method static final spread(I)I
    .locals 2
    .param p0, "h"    # I

    #@0
    .prologue
    .line 664
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
    .line 734
    .local p0, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@2
    int-to-long v2, p1

    #@3
    sget v1, Ljava/util/concurrent/ConcurrentHashMap;->ASHIFT:I

    #@5
    shl-long/2addr v2, v1

    #@6
    sget v1, Ljava/util/concurrent/ConcurrentHashMap;->ABASE:I

    #@8
    int-to-long v4, v1

    #@9
    add-long/2addr v2, v4

    #@a
    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@10
    return-object v0
.end method

.method private static final tableSizeFor(I)I
    .locals 3
    .param p0, "c"    # I

    #@0
    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    #@2
    .line 672
    add-int/lit8 v0, p0, -0x1

    #@4
    .line 673
    .local v0, "n":I
    ushr-int/lit8 v2, v0, 0x1

    #@6
    or-int/2addr v0, v2

    #@7
    .line 674
    ushr-int/lit8 v2, v0, 0x2

    #@9
    or-int/2addr v0, v2

    #@a
    .line 675
    ushr-int/lit8 v2, v0, 0x4

    #@c
    or-int/2addr v0, v2

    #@d
    .line 676
    ushr-int/lit8 v2, v0, 0x8

    #@f
    or-int/2addr v0, v2

    #@10
    .line 677
    ushr-int/lit8 v2, v0, 0x10

    #@12
    or-int/2addr v0, v2

    #@13
    .line 678
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
    .line 2398
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p2, "nextTab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object/from16 v0, p1

    #@2
    array-length v0, v0

    #@3
    move/from16 v44, v0

    #@5
    .line 2399
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
    .line 2400
    const/16 v52, 0x10

    #@18
    .line 2401
    :cond_0
    if-nez p2, :cond_1

    #@1a
    .line 2404
    shl-int/lit8 v6, v44, 0x1

    #@1c
    :try_start_0
    new-array v0, v6, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@1e
    move-object/from16 v46, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 2405
    .local v46, "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object/from16 p2, v46

    #@22
    .line 2410
    move-object/from16 v0, v46

    #@24
    move-object/from16 v1, p0

    #@26
    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@28
    .line 2411
    move/from16 v0, v44

    #@2a
    move-object/from16 v1, p0

    #@2c
    iput v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->transferIndex:I

    #@2e
    .line 2413
    .end local v46    # "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1
    move-object/from16 v0, p2

    #@30
    array-length v0, v0

    #@31
    move/from16 v45, v0

    #@33
    .line 2414
    .local v45, "nextn":I
    new-instance v31, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    #@35
    move-object/from16 v0, v31

    #@37
    move-object/from16 v1, p2

    #@39
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@3c
    .line 2415
    .local v31, "fwd":Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;, "Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode<TK;TV;>;"
    const/16 v23, 0x1

    #@3e
    .line 2416
    .local v23, "advance":Z
    const/16 v30, 0x0

    #@40
    .line 2417
    .local v30, "finishing":Z
    const/16 v37, 0x0

    #@42
    .local v37, "i":I
    const/16 v25, 0x0

    #@44
    .line 2419
    .end local v23    # "advance":Z
    .local v25, "bound":I
    :cond_2
    :goto_1
    if-eqz v23, :cond_8

    #@46
    .line 2421
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
    .line 2422
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
    .line 2399
    goto :goto_0

    #@56
    .line 2406
    .restart local v52    # "stride":I
    :catch_0
    move-exception v27

    #@57
    .line 2407
    .local v27, "ex":Ljava/lang/Throwable;
    const v6, 0x7fffffff

    #@5a
    move-object/from16 v0, p0

    #@5c
    iput v6, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    #@5e
    .line 2408
    return-void

    #@5f
    .line 2423
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
    .line 2424
    const/16 v37, -0x1

    #@67
    .line 2425
    const/16 v23, 0x0

    #@69
    .restart local v23    # "advance":Z
    goto :goto_1

    #@6a
    .line 2427
    .end local v23    # "advance":Z
    :cond_6
    sget-object v6, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@6c
    .line 2428
    sget-wide v8, Ljava/util/concurrent/ConcurrentHashMap;->TRANSFERINDEX:J

    #@6e
    .line 2429
    move/from16 v0, v52

    #@70
    if-le v10, v0, :cond_7

    #@72
    .line 2430
    sub-int v11, v10, v52

    #@74
    .local v11, "nextBound":I
    :goto_2
    move-object/from16 v7, p0

    #@76
    .line 2427
    invoke-virtual/range {v6 .. v11}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@79
    move-result v6

    #@7a
    if-eqz v6, :cond_2

    #@7c
    .line 2431
    move/from16 v25, v11

    #@7e
    .line 2432
    add-int/lit8 v37, v10, -0x1

    #@80
    .line 2433
    const/16 v23, 0x0

    #@82
    .restart local v23    # "advance":Z
    goto :goto_1

    #@83
    .line 2430
    .end local v11    # "nextBound":I
    .end local v23    # "advance":Z
    :cond_7
    const/4 v11, 0x0

    #@84
    goto :goto_2

    #@85
    .line 2436
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
    .line 2438
    :cond_9
    if-eqz v30, :cond_b

    #@8f
    .line 2439
    const/4 v6, 0x0

    #@90
    move-object/from16 v0, p0

    #@92
    iput-object v6, v0, Ljava/util/concurrent/ConcurrentHashMap;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@94
    .line 2440
    move-object/from16 v0, p2

    #@96
    move-object/from16 v1, p0

    #@98
    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@9a
    .line 2441
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
    .line 2442
    return-void

    #@a4
    .line 2436
    :cond_a
    add-int v6, v37, v44

    #@a6
    move/from16 v0, v45

    #@a8
    if-ge v6, v0, :cond_9

    #@aa
    .line 2451
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
    .line 2452
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
    .line 2444
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
    .line 2445
    add-int/lit8 v6, v16, -0x2

    #@d6
    invoke-static/range {v44 .. v44}, Ljava/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    #@d9
    move-result v7

    #@da
    shl-int/lit8 v7, v7, 0x10

    #@dc
    if-eq v6, v7, :cond_c

    #@de
    .line 2446
    return-void

    #@df
    .line 2447
    :cond_c
    const/16 v23, 0x1

    #@e1
    .local v23, "advance":Z
    const/16 v30, 0x1

    #@e3
    .line 2448
    move/from16 v37, v44

    #@e5
    goto/16 :goto_1

    #@e7
    .line 2453
    .end local v16    # "sc":I
    .end local v23    # "advance":Z
    .restart local v28    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_d
    move-object/from16 v0, v28

    #@e9
    iget v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@eb
    move/from16 v29, v0

    #@ed
    .local v29, "fh":I
    const/4 v6, -0x1

    #@ee
    move/from16 v0, v29

    #@f0
    if-ne v0, v6, :cond_e

    #@f2
    .line 2454
    const/16 v23, 0x1

    #@f4
    .restart local v23    # "advance":Z
    goto/16 :goto_1

    #@f6
    .line 2456
    .end local v23    # "advance":Z
    :cond_e
    monitor-enter v28

    #@f7
    .line 2457
    :try_start_1
    move-object/from16 v0, p1

    #@f9
    move/from16 v1, v37

    #@fb
    invoke-static {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@fe
    move-result-object v6

    #@ff
    move-object/from16 v0, v28

    #@101
    if-ne v6, v0, :cond_14

    #@103
    .line 2459
    if-ltz v29, :cond_15

    #@105
    .line 2460
    and-int v51, v29, v44

    #@107
    .line 2461
    .local v51, "runBit":I
    move-object/from16 v38, v28

    #@109
    .line 2462
    .local v38, "lastRun":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object/from16 v0, v28

    #@10b
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@10d
    move-object/from16 v47, v0

    #@10f
    .local v47, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_3
    if-eqz v47, :cond_10

    #@111
    .line 2463
    move-object/from16 v0, v47

    #@113
    iget v6, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@115
    and-int v24, v6, v44

    #@117
    .line 2464
    .local v24, "b":I
    move/from16 v0, v24

    #@119
    move/from16 v1, v51

    #@11b
    if-eq v0, v1, :cond_f

    #@11d
    .line 2465
    move/from16 v51, v24

    #@11f
    .line 2466
    move-object/from16 v38, v47

    #@121
    .line 2462
    :cond_f
    move-object/from16 v0, v47

    #@123
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@125
    move-object/from16 v47, v0

    #@127
    goto :goto_3

    #@128
    .line 2469
    .end local v24    # "b":I
    :cond_10
    if-nez v51, :cond_11

    #@12a
    .line 2470
    move-object/from16 v40, v38

    #@12c
    .line 2471
    .local v40, "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/16 v35, 0x0

    #@12e
    .line 2477
    .end local v40    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_4
    move-object/from16 v47, v28

    #@130
    move-object/from16 v36, v35

    #@132
    .local v36, "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object/from16 v41, v40

    #@134
    .local v41, "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_5
    move-object/from16 v0, v47

    #@136
    move-object/from16 v1, v38

    #@138
    if-eq v0, v1, :cond_13

    #@13a
    .line 2478
    move-object/from16 v0, v47

    #@13c
    iget v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@13e
    move/from16 v48, v0

    #@140
    .local v48, "ph":I
    move-object/from16 v0, v47

    #@142
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@144
    move-object/from16 v49, v0

    #@146
    .local v49, "pk":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, v47

    #@148
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@14a
    move-object/from16 v50, v0

    #@14c
    .line 2479
    .local v50, "pv":Ljava/lang/Object;, "TV;"
    and-int v6, v48, v44

    #@14e
    if-nez v6, :cond_12

    #@150
    .line 2480
    new-instance v40, Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@152
    move-object/from16 v0, v40

    #@154
    move/from16 v1, v48

    #@156
    move-object/from16 v2, v49

    #@158
    move-object/from16 v3, v50

    #@15a
    move-object/from16 v4, v41

    #@15c
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@15f
    .end local v41    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v40    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object/from16 v35, v36

    #@161
    .line 2477
    .end local v36    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v35, "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_6
    move-object/from16 v0, v47

    #@163
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@165
    move-object/from16 v47, v0

    #@167
    move-object/from16 v36, v35

    #@169
    .end local v35    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v36    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object/from16 v41, v40

    #@16b
    .end local v40    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v41    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_5

    #@16c
    .line 2474
    .end local v36    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v41    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v48    # "ph":I
    .end local v49    # "pk":Ljava/lang/Object;, "TK;"
    .end local v50    # "pv":Ljava/lang/Object;, "TV;"
    :cond_11
    move-object/from16 v35, v38

    #@16e
    .line 2475
    .restart local v35    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/16 v40, 0x0

    #@170
    .local v40, "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_4

    #@171
    .line 2482
    .end local v35    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v40    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v36    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v41    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v48    # "ph":I
    .restart local v49    # "pk":Ljava/lang/Object;, "TK;"
    .restart local v50    # "pv":Ljava/lang/Object;, "TV;"
    :cond_12
    new-instance v35, Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@173
    move-object/from16 v0, v35

    #@175
    move/from16 v1, v48

    #@177
    move-object/from16 v2, v49

    #@179
    move-object/from16 v3, v50

    #@17b
    move-object/from16 v4, v36

    #@17d
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@180
    .end local v36    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v35    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object/from16 v40, v41

    #@182
    .end local v41    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v40, "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_6

    #@183
    .line 2484
    .end local v35    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v40    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v48    # "ph":I
    .end local v49    # "pk":Ljava/lang/Object;, "TK;"
    .end local v50    # "pv":Ljava/lang/Object;, "TV;"
    .restart local v36    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v41    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_13
    move-object/from16 v0, p2

    #@185
    move/from16 v1, v37

    #@187
    move-object/from16 v2, v41

    #@189
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    #@18c
    .line 2485
    add-int v6, v37, v44

    #@18e
    move-object/from16 v0, p2

    #@190
    move-object/from16 v1, v36

    #@192
    invoke-static {v0, v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    #@195
    .line 2486
    move-object/from16 v0, p1

    #@197
    move/from16 v1, v37

    #@199
    move-object/from16 v2, v31

    #@19b
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19e
    .line 2487
    const/16 v23, 0x1

    #@1a0
    .end local v36    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v38    # "lastRun":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v41    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v47    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v51    # "runBit":I
    :cond_14
    :goto_7
    monitor-exit v28

    #@1a1
    goto/16 :goto_1

    #@1a3
    .line 2489
    :cond_15
    :try_start_2
    move-object/from16 v0, v28

    #@1a5
    instance-of v6, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    #@1a7
    if-eqz v6, :cond_14

    #@1a9
    .line 2490
    move-object/from16 v0, v28

    #@1ab
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    #@1ad
    move-object/from16 v53, v0

    #@1af
    .line 2491
    .local v53, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    const/16 v42, 0x0

    #@1b1
    .local v42, "lo":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/16 v43, 0x0

    #@1b3
    .line 2492
    .local v43, "loTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/16 v33, 0x0

    #@1b5
    .local v33, "hi":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/16 v34, 0x0

    #@1b7
    .line 2493
    .local v34, "hiTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/16 v39, 0x0

    #@1b9
    .local v39, "lc":I
    const/16 v32, 0x0

    #@1bb
    .line 2494
    .local v32, "hc":I
    move-object/from16 v0, v53

    #@1bd
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@1bf
    move-object/from16 v26, v0

    #@1c1
    .end local v33    # "hi":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v34    # "hiTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v42    # "lo":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v43    # "loTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v26, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_8
    if-eqz v26, :cond_19

    #@1c3
    .line 2495
    move-object/from16 v0, v26

    #@1c5
    iget v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@1c7
    move/from16 v18, v0

    #@1c9
    .line 2496
    .local v18, "h":I
    new-instance v17, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@1cb
    .line 2497
    move-object/from16 v0, v26

    #@1cd
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@1cf
    move-object/from16 v19, v0

    #@1d1
    move-object/from16 v0, v26

    #@1d3
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@1d5
    move-object/from16 v20, v0

    #@1d7
    const/16 v21, 0x0

    #@1d9
    const/16 v22, 0x0

    #@1db
    .line 2496
    invoke-direct/range {v17 .. v22}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    #@1de
    .line 2498
    .local v17, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    and-int v6, v18, v44

    #@1e0
    if-nez v6, :cond_17

    #@1e2
    .line 2499
    move-object/from16 v0, v43

    #@1e4
    move-object/from16 v1, v17

    #@1e6
    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@1e8
    if-nez v43, :cond_16

    #@1ea
    .line 2500
    move-object/from16 v42, v17

    #@1ec
    .line 2503
    :goto_9
    move-object/from16 v43, v17

    #@1ee
    .line 2504
    .local v43, "loTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    add-int/lit8 v39, v39, 0x1

    #@1f0
    .line 2494
    .end local v43    # "loTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_a
    move-object/from16 v0, v26

    #@1f2
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@1f4
    move-object/from16 v26, v0

    #@1f6
    goto :goto_8

    #@1f7
    .line 2502
    :cond_16
    move-object/from16 v0, v17

    #@1f9
    move-object/from16 v1, v43

    #@1fb
    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1fd
    goto :goto_9

    #@1fe
    .line 2456
    .end local v17    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v18    # "h":I
    .end local v26    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v32    # "hc":I
    .end local v39    # "lc":I
    .end local v53    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    :catchall_0
    move-exception v6

    #@1ff
    monitor-exit v28

    #@200
    throw v6

    #@201
    .line 2507
    .restart local v17    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v18    # "h":I
    .restart local v26    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v32    # "hc":I
    .restart local v39    # "lc":I
    .restart local v53    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    :cond_17
    :try_start_3
    move-object/from16 v0, v34

    #@203
    move-object/from16 v1, v17

    #@205
    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@207
    if-nez v34, :cond_18

    #@209
    .line 2508
    move-object/from16 v33, v17

    #@20b
    .line 2511
    :goto_b
    move-object/from16 v34, v17

    #@20d
    .line 2512
    .local v34, "hiTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    add-int/lit8 v32, v32, 0x1

    #@20f
    goto :goto_a

    #@210
    .line 2510
    .end local v34    # "hiTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_18
    move-object/from16 v0, v17

    #@212
    move-object/from16 v1, v34

    #@214
    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@216
    goto :goto_b

    #@217
    .line 2515
    .end local v17    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v18    # "h":I
    :cond_19
    const/4 v6, 0x6

    #@218
    move/from16 v0, v39

    #@21a
    if-gt v0, v6, :cond_1a

    #@21c
    invoke-static/range {v42 .. v42}, Ljava/util/concurrent/ConcurrentHashMap;->untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@21f
    move-result-object v40

    #@220
    .line 2517
    .restart local v40    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_c
    const/4 v6, 0x6

    #@221
    move/from16 v0, v32

    #@223
    if-gt v0, v6, :cond_1c

    #@225
    invoke-static/range {v33 .. v33}, Ljava/util/concurrent/ConcurrentHashMap;->untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@228
    move-result-object v35

    #@229
    .line 2519
    .restart local v35    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_d
    move-object/from16 v0, p2

    #@22b
    move/from16 v1, v37

    #@22d
    move-object/from16 v2, v40

    #@22f
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    #@232
    .line 2520
    add-int v6, v37, v44

    #@234
    move-object/from16 v0, p2

    #@236
    move-object/from16 v1, v35

    #@238
    invoke-static {v0, v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    #@23b
    .line 2521
    move-object/from16 v0, p1

    #@23d
    move/from16 v1, v37

    #@23f
    move-object/from16 v2, v31

    #@241
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    #@244
    .line 2522
    const/16 v23, 0x1

    #@246
    .restart local v23    # "advance":Z
    goto/16 :goto_7

    #@248
    .line 2516
    .end local v23    # "advance":Z
    .end local v35    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v40    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1a
    if-eqz v32, :cond_1b

    #@24a
    new-instance v40, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    #@24c
    move-object/from16 v0, v40

    #@24e
    move-object/from16 v1, v42

    #@250
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    #@253
    .restart local v40    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_c

    #@254
    .end local v40    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1b
    move-object/from16 v40, v53

    #@256
    .restart local v40    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_c

    #@257
    .line 2518
    :cond_1c
    if-eqz v39, :cond_1d

    #@259
    new-instance v35, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    #@25b
    move-object/from16 v0, v35

    #@25d
    move-object/from16 v1, v33

    #@25f
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@262
    .restart local v35    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_d

    #@263
    .end local v35    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1d
    move-object/from16 v35, v53

    #@265
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
    .line 2644
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz p1, :cond_0

    #@2
    .line 2645
    array-length v9, p1

    #@3
    .local v9, "n":I
    const/16 v1, 0x40

    #@5
    if-ge v9, v1, :cond_1

    #@7
    .line 2646
    shl-int/lit8 v1, v9, 0x1

    #@9
    invoke-direct {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->tryPresize(I)V

    #@c
    .line 2642
    .end local v9    # "n":I
    :cond_0
    :goto_0
    return-void

    #@d
    .line 2647
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
    .line 2648
    monitor-enter v6

    #@18
    .line 2649
    :try_start_0
    invoke-static {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@1b
    move-result-object v1

    #@1c
    if-ne v1, v6, :cond_4

    #@1e
    .line 2650
    const/4 v8, 0x0

    #@1f
    .local v8, "hd":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v10, 0x0

    #@20
    .line 2651
    .local v10, "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    move-object v7, v6

    #@21
    .end local v8    # "hd":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v10    # "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v7, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_1
    if-eqz v7, :cond_3

    #@23
    .line 2653
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@25
    iget v1, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@27
    iget-object v2, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@29
    iget-object v3, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@2b
    .line 2654
    const/4 v4, 0x0

    #@2c
    const/4 v5, 0x0

    #@2d
    .line 2653
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    #@30
    .line 2655
    .local v0, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iput-object v10, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@32
    if-nez v10, :cond_2

    #@34
    .line 2656
    move-object v8, v0

    #@35
    .line 2659
    :goto_2
    move-object v10, v0

    #@36
    .line 2651
    .local v10, "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v7, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@38
    goto :goto_1

    #@39
    .line 2658
    .end local v10    # "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_2
    iput-object v0, v10, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    goto :goto_2

    #@3c
    .line 2648
    .end local v0    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v7    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_0
    move-exception v1

    #@3d
    monitor-exit v6

    #@3e
    throw v1

    #@3f
    .line 2661
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
    .line 2362
    const/high16 v0, 0x20000000

    #@3
    if-lt p1, v0, :cond_3

    #@5
    const/high16 v6, 0x40000000    # 2.0f

    #@7
    .line 2365
    .local v6, "c":I
    :cond_0
    :goto_0
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    #@9
    .local v4, "sc":I
    if-ltz v4, :cond_6

    #@b
    .line 2366
    iget-object v10, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@d
    .line 2367
    .local v10, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v10, :cond_1

    #@f
    array-length v7, v10

    #@10
    .local v7, "n":I
    if-nez v7, :cond_5

    #@12
    .line 2368
    .end local v7    # "n":I
    :cond_1
    if-le v4, v6, :cond_4

    #@14
    move v7, v4

    #@15
    .line 2369
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
    .line 2371
    :try_start_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@23
    if-ne v0, v10, :cond_2

    #@25
    .line 2373
    new-array v8, v7, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@27
    .line 2374
    .local v8, "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iput-object v8, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 2375
    ushr-int/lit8 v0, v7, 0x2

    #@2b
    sub-int v4, v7, v0

    #@2d
    .line 2378
    .end local v8    # "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2
    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    #@2f
    goto :goto_0

    #@30
    .line 2363
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
    .line 2368
    .restart local v4    # "sc":I
    .restart local v10    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_4
    move v7, v6

    #@3b
    .restart local v7    # "n":I
    goto :goto_1

    #@3c
    .line 2377
    :catchall_0
    move-exception v0

    #@3d
    .line 2378
    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    #@3f
    .line 2377
    throw v0

    #@40
    .line 2382
    :cond_5
    if-le v6, v4, :cond_6

    #@42
    const/high16 v0, 0x40000000    # 2.0f

    #@44
    if-lt v7, v0, :cond_7

    #@46
    .line 2361
    .end local v7    # "n":I
    .end local v10    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_6
    return-void

    #@47
    .line 2384
    .restart local v7    # "n":I
    .restart local v10    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_7
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@49
    if-ne v10, v0, :cond_0

    #@4b
    .line 2385
    invoke-static {v7}, Ljava/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    #@4e
    move-result v9

    #@4f
    .line 2386
    .local v9, "rs":I
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@51
    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    #@53
    .line 2387
    shl-int/lit8 v1, v9, 0x10

    #@55
    add-int/lit8 v5, v1, 0x2

    #@57
    move-object v1, p0

    #@58
    .line 2386
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@5b
    move-result v0

    #@5c
    if-eqz v0, :cond_0

    #@5e
    .line 2388
    invoke-direct {p0, v10, v11}, Ljava/util/concurrent/ConcurrentHashMap;->transfer([Ljava/util/concurrent/ConcurrentHashMap$Node;[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@61
    goto :goto_0
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
    .line 2672
    const/4 v0, 0x0

    #@2
    .local v0, "hd":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v3, 0x0

    #@3
    .line 2673
    .local v3, "tl":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object v2, p0

    #@4
    .end local v0    # "hd":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v3    # "tl":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v2, "q":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_1

    #@6
    .line 2674
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
    .line 2675
    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v3, :cond_0

    #@13
    .line 2676
    move-object v0, v1

    #@14
    .line 2679
    :goto_1
    move-object v3, v1

    #@15
    .line 2673
    .local v3, "tl":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@17
    goto :goto_0

    #@18
    .line 2678
    .end local v3    # "tl":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_0
    iput-object v1, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@1a
    goto :goto_1

    #@1b
    .line 2681
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
    .line 1377
    const/4 v6, 0x0

    #@4
    .line 1378
    .local v6, "sshift":I
    const/4 v7, 0x1

    #@5
    .line 1379
    .local v7, "ssize":I
    :goto_0
    if-ge v7, v10, :cond_0

    #@7
    .line 1380
    add-int/lit8 v6, v6, 0x1

    #@9
    .line 1381
    shl-int/lit8 v7, v7, 0x1

    #@b
    goto :goto_0

    #@c
    .line 1383
    :cond_0
    rsub-int/lit8 v4, v6, 0x20

    #@e
    .line 1384
    .local v4, "segmentShift":I
    add-int/lit8 v3, v7, -0x1

    #@10
    .line 1387
    .local v3, "segmentMask":I
    new-array v5, v10, [Ljava/util/concurrent/ConcurrentHashMap$Segment;

    #@12
    .line 1388
    .local v5, "segments":[Ljava/util/concurrent/ConcurrentHashMap$Segment;, "[Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    const/4 v0, 0x0

    #@13
    .local v0, "i":I
    :goto_1
    array-length v10, v5

    #@14
    if-ge v0, v10, :cond_1

    #@16
    .line 1389
    new-instance v10, Ljava/util/concurrent/ConcurrentHashMap$Segment;

    #@18
    const/high16 v11, 0x3f400000    # 0.75f

    #@1a
    invoke-direct {v10, v11}, Ljava/util/concurrent/ConcurrentHashMap$Segment;-><init>(F)V

    #@1d
    aput-object v10, v5, v0

    #@1f
    .line 1388
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_1

    #@22
    .line 1390
    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    #@25
    move-result-object v8

    #@26
    .line 1391
    .local v8, "streamFields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v10, "segments"

    #@29
    invoke-virtual {v8, v10, v5}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@2c
    .line 1392
    const-string/jumbo v10, "segmentShift"

    #@2f
    invoke-virtual {v8, v10, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@32
    .line 1393
    const-string/jumbo v10, "segmentMask"

    #@35
    invoke-virtual {v8, v10, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@38
    .line 1394
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    #@3b
    .line 1397
    iget-object v9, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@3d
    .local v9, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v9, :cond_2

    #@3f
    .line 1398
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
    .line 1399
    .local v1, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_2
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@4a
    move-result-object v2

    #@4b
    .local v2, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_2

    #@4d
    .line 1400
    iget-object v10, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@4f
    invoke-virtual {p1, v10}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@52
    .line 1401
    iget-object v10, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@54
    invoke-virtual {p1, v10}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@57
    goto :goto_2

    #@58
    .line 1404
    .end local v1    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v2    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2
    invoke-virtual {p1, v13}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@5b
    .line 1405
    invoke-virtual {p1, v13}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@5e
    .line 1374
    return-void
.end method


# virtual methods
.method final batchFor(J)I
    .locals 7
    .param p1, "b"    # J

    #@0
    .prologue
    .line 3669
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const-wide v4, 0x7fffffffffffffffL

    #@5
    cmp-long v3, p1, v4

    #@7
    if-eqz v3, :cond_0

    #@9
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    #@c
    move-result-wide v0

    #@d
    .local v0, "n":J
    const-wide/16 v4, 0x1

    #@f
    cmp-long v3, v0, v4

    #@11
    if-gtz v3, :cond_1

    #@13
    .line 3670
    .end local v0    # "n":J
    :cond_0
    const/4 v3, 0x0

    #@14
    return v3

    #@15
    .line 3669
    .restart local v0    # "n":J
    :cond_1
    cmp-long v3, v0, p1

    #@17
    if-ltz v3, :cond_0

    #@19
    .line 3671
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    #@1c
    move-result v3

    #@1d
    shl-int/lit8 v2, v3, 0x2

    #@1f
    .line 3672
    .local v2, "sp":I
    const-wide/16 v4, 0x0

    #@21
    cmp-long v3, p1, v4

    #@23
    if-lez v3, :cond_2

    #@25
    div-long/2addr v0, p1

    #@26
    int-to-long v4, v2

    #@27
    cmp-long v3, v0, v4

    #@29
    if-ltz v3, :cond_3

    #@2b
    .end local v2    # "sp":I
    :cond_2
    :goto_0
    return v2

    #@2c
    .restart local v2    # "sp":I
    :cond_3
    long-to-int v2, v0

    #@2d
    goto :goto_0
.end method

.method public clear()V
    .locals 13

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v12, -0x1

    #@1
    .line 1163
    const-wide/16 v2, 0x0

    #@3
    .line 1164
    .local v2, "delta":J
    const/4 v6, 0x0

    #@4
    .line 1165
    .local v6, "i":I
    iget-object v9, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@6
    .local v9, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move v7, v6

    #@7
    .line 1166
    .end local v6    # "i":I
    .local v7, "i":I
    :goto_0
    if-eqz v9, :cond_5

    #@9
    array-length v10, v9

    #@a
    if-ge v7, v10, :cond_5

    #@c
    .line 1168
    invoke-static {v9, v7}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@f
    move-result-object v4

    #@10
    .line 1169
    .local v4, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v4, :cond_0

    #@12
    .line 1170
    add-int/lit8 v6, v7, 0x1

    #@14
    .end local v7    # "i":I
    .restart local v6    # "i":I
    :goto_1
    move v7, v6

    #@15
    .end local v6    # "i":I
    .restart local v7    # "i":I
    goto :goto_0

    #@16
    .line 1171
    :cond_0
    iget v5, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@18
    .local v5, "fh":I
    if-ne v5, v12, :cond_1

    #@1a
    .line 1172
    invoke-virtual {p0, v9, v4}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@1d
    move-result-object v9

    #@1e
    .line 1173
    const/4 v6, 0x0

    #@1f
    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_1

    #@20
    .line 1176
    .end local v6    # "i":I
    .restart local v7    # "i":I
    :cond_1
    monitor-enter v4

    #@21
    .line 1177
    :try_start_0
    invoke-static {v9, v7}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@24
    move-result-object v10

    #@25
    if-ne v10, v4, :cond_7

    #@27
    .line 1178
    if-ltz v5, :cond_2

    #@29
    move-object v8, v4

    #@2a
    .line 1181
    :goto_2
    if-eqz v8, :cond_4

    #@2c
    .line 1182
    const-wide/16 v10, 0x1

    #@2e
    sub-long/2addr v2, v10

    #@2f
    .line 1183
    iget-object v8, v8, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@31
    .local v8, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_2

    #@32
    .line 1179
    .end local v8    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2
    instance-of v10, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    #@34
    if-eqz v10, :cond_3

    #@36
    .line 1180
    move-object v0, v4

    #@37
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    #@39
    move-object v10, v0

    #@3a
    iget-object v8, v10, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    .restart local v8    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_2

    #@3d
    .end local v8    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_3
    const/4 v8, 0x0

    #@3e
    .local v8, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_2

    #@3f
    .line 1185
    .end local v8    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_4
    add-int/lit8 v6, v7, 0x1

    #@41
    .end local v7    # "i":I
    .restart local v6    # "i":I
    const/4 v10, 0x0

    #@42
    :try_start_1
    invoke-static {v9, v7, v10}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@45
    :goto_3
    monitor-exit v4

    #@46
    goto :goto_1

    #@47
    .line 1176
    .end local v6    # "i":I
    .restart local v7    # "i":I
    :catchall_0
    move-exception v10

    #@48
    move v6, v7

    #@49
    .end local v7    # "i":I
    .restart local v6    # "i":I
    :goto_4
    monitor-exit v4

    #@4a
    throw v10

    #@4b
    .line 1190
    .end local v4    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v5    # "fh":I
    .end local v6    # "i":I
    .restart local v7    # "i":I
    :cond_5
    const-wide/16 v10, 0x0

    #@4d
    cmp-long v10, v2, v10

    #@4f
    if-eqz v10, :cond_6

    #@51
    .line 1191
    invoke-direct {p0, v2, v3, v12}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    #@54
    .line 1162
    :cond_6
    return-void

    #@55
    .line 1176
    .end local v7    # "i":I
    .restart local v4    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v5    # "fh":I
    .restart local v6    # "i":I
    :catchall_1
    move-exception v10

    #@56
    goto :goto_4

    #@57
    .end local v6    # "i":I
    .restart local v7    # "i":I
    :cond_7
    move v6, v7

    #@58
    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_3
.end method

.method public compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 1868
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 1869
    :cond_0
    new-instance v24, Ljava/lang/NullPointerException;

    #@6
    invoke-direct/range {v24 .. v24}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v24

    #@a
    .line 1870
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    #@d
    move-result v24

    #@e
    invoke-static/range {v24 .. v24}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    #@11
    move-result v11

    #@12
    .line 1871
    .local v11, "h":I
    const/16 v23, 0x0

    #@14
    .line 1872
    .local v23, "val":Ljava/lang/Object;, "TV;"
    const/4 v5, 0x0

    #@15
    .line 1873
    .local v5, "delta":I
    const/4 v4, 0x0

    #@16
    .line 1874
    .local v4, "binCount":I
    move-object/from16 v0, p0

    #@18
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@1a
    move-object/from16 v22, v0

    #@1c
    .line 1876
    .end local v23    # "val":Ljava/lang/Object;, "TV;"
    .local v22, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2
    :goto_0
    if-eqz v22, :cond_3

    #@1e
    move-object/from16 v0, v22

    #@20
    array-length v13, v0

    #@21
    .local v13, "n":I
    if-nez v13, :cond_4

    #@23
    .line 1877
    .end local v13    # "n":I
    :cond_3
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap;->initTable()[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@26
    move-result-object v22

    #@27
    goto :goto_0

    #@28
    .line 1878
    .restart local v13    # "n":I
    :cond_4
    add-int/lit8 v24, v13, -0x1

    #@2a
    and-int v12, v24, v11

    #@2c
    .local v12, "i":I
    move-object/from16 v0, v22

    #@2e
    invoke-static {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@31
    move-result-object v9

    #@32
    .local v9, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v9, :cond_9

    #@34
    .line 1879
    new-instance v19, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    #@36
    invoke-direct/range {v19 .. v19}, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;-><init>()V

    #@39
    .line 1880
    .local v19, "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    monitor-enter v19

    #@3a
    .line 1881
    const/16 v24, 0x0

    #@3c
    :try_start_0
    move-object/from16 v0, v22

    #@3e
    move-object/from16 v1, v24

    #@40
    move-object/from16 v2, v19

    #@42
    invoke-static {v0, v12, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->casTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@45
    move-result v24

    #@46
    if-eqz v24, :cond_6

    #@48
    .line 1882
    const/4 v4, 0x1

    #@49
    .line 1883
    const/4 v14, 0x0

    #@4a
    .line 1885
    .local v14, "node":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/16 v24, 0x0

    #@4c
    :try_start_1
    move-object/from16 v0, p2

    #@4e
    move-object/from16 v1, p1

    #@50
    move-object/from16 v2, v24

    #@52
    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    move-result-object v23

    #@56
    .restart local v23    # "val":Ljava/lang/Object;, "TV;"
    if-eqz v23, :cond_5

    #@58
    .line 1886
    const/4 v5, 0x1

    #@59
    .line 1887
    new-instance v15, Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@5b
    const/16 v24, 0x0

    #@5d
    move-object/from16 v0, p1

    #@5f
    move-object/from16 v1, v23

    #@61
    move-object/from16 v2, v24

    #@63
    invoke-direct {v15, v11, v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@66
    .local v15, "node":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object v14, v15

    #@67
    .line 1890
    .end local v14    # "node":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v15    # "node":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_5
    :try_start_2
    move-object/from16 v0, v22

    #@69
    invoke-static {v0, v12, v14}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@6c
    .end local v23    # "val":Ljava/lang/Object;, "TV;"
    :cond_6
    monitor-exit v19

    #@6d
    .line 1894
    if-eqz v4, :cond_2

    #@6f
    .line 1971
    .end local v19    # "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_7
    :goto_1
    if-eqz v5, :cond_8

    #@71
    .line 1972
    int-to-long v0, v5

    #@72
    move-wide/from16 v24, v0

    #@74
    move-object/from16 v0, p0

    #@76
    move-wide/from16 v1, v24

    #@78
    invoke-direct {v0, v1, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    #@7b
    .line 1973
    :cond_8
    return-object v23

    #@7c
    .line 1889
    .restart local v14    # "node":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v19    # "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_0
    move-exception v24

    #@7d
    .line 1890
    :try_start_3
    move-object/from16 v0, v22

    #@7f
    invoke-static {v0, v12, v14}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    #@82
    .line 1889
    throw v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@83
    .line 1880
    .end local v14    # "node":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_1
    move-exception v24

    #@84
    monitor-exit v19

    #@85
    throw v24

    #@86
    .line 1897
    .end local v19    # "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_9
    iget v10, v9, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@88
    .local v10, "fh":I
    const/16 v24, -0x1

    #@8a
    move/from16 v0, v24

    #@8c
    if-ne v10, v0, :cond_a

    #@8e
    .line 1898
    move-object/from16 v0, p0

    #@90
    move-object/from16 v1, v22

    #@92
    invoke-virtual {v0, v1, v9}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@95
    move-result-object v22

    #@96
    goto :goto_0

    #@97
    .line 1900
    :cond_a
    monitor-enter v9

    #@98
    .line 1901
    :try_start_4
    move-object/from16 v0, v22

    #@9a
    invoke-static {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@9d
    move-result-object v24

    #@9e
    move-object/from16 v0, v24

    #@a0
    if-ne v0, v9, :cond_c

    #@a2
    .line 1902
    if-ltz v10, :cond_12

    #@a4
    .line 1903
    const/4 v4, 0x1

    #@a5
    .line 1904
    move-object v6, v9

    #@a6
    .local v6, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/16 v17, 0x0

    #@a8
    .line 1906
    :goto_2
    iget v0, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@aa
    move/from16 v24, v0

    #@ac
    move/from16 v0, v24

    #@ae
    if-ne v0, v11, :cond_f

    #@b0
    .line 1907
    iget-object v7, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@b2
    .local v7, "ek":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p1

    #@b4
    if-eq v7, v0, :cond_b

    #@b6
    .line 1908
    if-eqz v7, :cond_f

    #@b8
    move-object/from16 v0, p1

    #@ba
    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@bd
    move-result v24

    #@be
    .line 1906
    if-eqz v24, :cond_f

    #@c0
    .line 1909
    :cond_b
    iget-object v0, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@c2
    move-object/from16 v24, v0

    #@c4
    move-object/from16 v0, p2

    #@c6
    move-object/from16 v1, p1

    #@c8
    move-object/from16 v2, v24

    #@ca
    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@cd
    move-result-object v23

    #@ce
    .line 1910
    .restart local v23    # "val":Ljava/lang/Object;, "TV;"
    if-eqz v23, :cond_d

    #@d0
    .line 1911
    move-object/from16 v0, v23

    #@d2
    iput-object v0, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@d4
    .end local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    .end local v23    # "val":Ljava/lang/Object;, "TV;"
    :cond_c
    :goto_3
    monitor-exit v9

    #@d5
    .line 1964
    if-eqz v4, :cond_2

    #@d7
    .line 1965
    const/16 v24, 0x8

    #@d9
    move/from16 v0, v24

    #@db
    if-lt v4, v0, :cond_7

    #@dd
    .line 1966
    move-object/from16 v0, p0

    #@df
    move-object/from16 v1, v22

    #@e1
    invoke-direct {v0, v1, v12}, Ljava/util/concurrent/ConcurrentHashMap;->treeifyBin([Ljava/util/concurrent/ConcurrentHashMap$Node;I)V

    #@e4
    goto :goto_1

    #@e5
    .line 1913
    .restart local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v7    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v23    # "val":Ljava/lang/Object;, "TV;"
    :cond_d
    const/4 v5, -0x1

    #@e6
    .line 1914
    :try_start_5
    iget-object v8, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@e8
    .line 1915
    .local v8, "en":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v17, :cond_e

    #@ea
    .line 1916
    move-object/from16 v0, v17

    #@ec
    iput-object v8, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@ee
    goto :goto_3

    #@ef
    .line 1900
    .end local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    .end local v8    # "en":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v23    # "val":Ljava/lang/Object;, "TV;"
    :catchall_2
    move-exception v24

    #@f0
    monitor-exit v9

    #@f1
    throw v24

    #@f2
    .line 1918
    .restart local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v7    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v8    # "en":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v23    # "val":Ljava/lang/Object;, "TV;"
    :cond_e
    :try_start_6
    move-object/from16 v0, v22

    #@f4
    invoke-static {v0, v12, v8}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    #@f7
    goto :goto_3

    #@f8
    .line 1922
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    .end local v8    # "en":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v23    # "val":Ljava/lang/Object;, "TV;"
    :cond_f
    move-object/from16 v17, v6

    #@fa
    .line 1923
    .local v17, "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v6, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@fc
    if-nez v6, :cond_11

    #@fe
    .line 1924
    const/16 v24, 0x0

    #@100
    move-object/from16 v0, p2

    #@102
    move-object/from16 v1, p1

    #@104
    move-object/from16 v2, v24

    #@106
    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@109
    move-result-object v23

    #@10a
    .line 1925
    .restart local v23    # "val":Ljava/lang/Object;, "TV;"
    if-eqz v23, :cond_c

    #@10c
    .line 1926
    move-object/from16 v0, v17

    #@10e
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@110
    move-object/from16 v24, v0

    #@112
    if-eqz v24, :cond_10

    #@114
    .line 1927
    new-instance v24, Ljava/lang/IllegalStateException;

    #@116
    const-string/jumbo v25, "Recursive update"

    #@119
    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11c
    throw v24

    #@11d
    .line 1928
    :cond_10
    const/4 v5, 0x1

    #@11e
    .line 1930
    new-instance v24, Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@120
    const/16 v25, 0x0

    #@122
    move-object/from16 v0, v24

    #@124
    move-object/from16 v1, p1

    #@126
    move-object/from16 v2, v23

    #@128
    move-object/from16 v3, v25

    #@12a
    invoke-direct {v0, v11, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@12d
    .line 1929
    move-object/from16 v0, v24

    #@12f
    move-object/from16 v1, v17

    #@131
    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@133
    goto :goto_3

    #@134
    .line 1904
    .end local v23    # "val":Ljava/lang/Object;, "TV;"
    :cond_11
    add-int/lit8 v4, v4, 0x1

    #@136
    goto/16 :goto_2

    #@138
    .line 1936
    .end local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v17    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_12
    instance-of v0, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    #@13a
    move/from16 v24, v0

    #@13c
    if-eqz v24, :cond_17

    #@13e
    .line 1937
    const/4 v4, 0x1

    #@13f
    .line 1938
    move-object v0, v9

    #@140
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    #@142
    move-object/from16 v21, v0

    #@144
    .line 1940
    .local v21, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    move-object/from16 v0, v21

    #@146
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@148
    move-object/from16 v20, v0

    #@14a
    .local v20, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v20, :cond_13

    #@14c
    .line 1941
    const/16 v24, 0x0

    #@14e
    move-object/from16 v0, v20

    #@150
    move-object/from16 v1, p1

    #@152
    move-object/from16 v2, v24

    #@154
    invoke-virtual {v0, v11, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@157
    move-result-object v16

    #@158
    .line 1944
    :goto_4
    if-nez v16, :cond_14

    #@15a
    const/16 v18, 0x0

    #@15c
    .line 1945
    .local v18, "pv":Ljava/lang/Object;, "TV;"
    :goto_5
    move-object/from16 v0, p2

    #@15e
    move-object/from16 v1, p1

    #@160
    move-object/from16 v2, v18

    #@162
    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@165
    move-result-object v23

    #@166
    .line 1946
    .restart local v23    # "val":Ljava/lang/Object;, "TV;"
    if-eqz v23, :cond_16

    #@168
    .line 1947
    if-eqz v16, :cond_15

    #@16a
    .line 1948
    move-object/from16 v0, v23

    #@16c
    move-object/from16 v1, v16

    #@16e
    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    #@170
    goto/16 :goto_3

    #@172
    .line 1943
    .end local v18    # "pv":Ljava/lang/Object;, "TV;"
    .end local v23    # "val":Ljava/lang/Object;, "TV;"
    :cond_13
    const/16 v16, 0x0

    #@174
    .local v16, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_4

    #@175
    .line 1944
    .end local v16    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_14
    move-object/from16 v0, v16

    #@177
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    #@179
    move-object/from16 v18, v0

    #@17b
    goto :goto_5

    #@17c
    .line 1950
    .restart local v18    # "pv":Ljava/lang/Object;, "TV;"
    .restart local v23    # "val":Ljava/lang/Object;, "TV;"
    :cond_15
    const/4 v5, 0x1

    #@17d
    .line 1951
    move-object/from16 v0, v21

    #@17f
    move-object/from16 v1, p1

    #@181
    move-object/from16 v2, v23

    #@183
    invoke-virtual {v0, v11, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@186
    goto/16 :goto_3

    #@188
    .line 1954
    :cond_16
    if-eqz v16, :cond_c

    #@18a
    .line 1955
    const/4 v5, -0x1

    #@18b
    .line 1956
    move-object/from16 v0, v21

    #@18d
    move-object/from16 v1, v16

    #@18f
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->removeTreeNode(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    #@192
    move-result v24

    #@193
    if-eqz v24, :cond_c

    #@195
    .line 1957
    move-object/from16 v0, v21

    #@197
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@199
    move-object/from16 v24, v0

    #@19b
    invoke-static/range {v24 .. v24}, Ljava/util/concurrent/ConcurrentHashMap;->untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@19e
    move-result-object v24

    #@19f
    move-object/from16 v0, v22

    #@1a1
    move-object/from16 v1, v24

    #@1a3
    invoke-static {v0, v12, v1}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    #@1a6
    goto/16 :goto_3

    #@1a8
    .line 1960
    .end local v18    # "pv":Ljava/lang/Object;, "TV;"
    .end local v20    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v21    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .end local v23    # "val":Ljava/lang/Object;, "TV;"
    :cond_17
    instance-of v0, v9, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    #@1aa
    move/from16 v24, v0

    #@1ac
    if-eqz v24, :cond_c

    #@1ae
    .line 1961
    new-instance v24, Ljava/lang/IllegalStateException;

    #@1b0
    const-string/jumbo v25, "Recursive update"

    #@1b3
    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b6
    throw v24
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
.end method

.method public computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function",
            "<-TK;+TV;>;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 1670
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 1671
    :cond_0
    new-instance v22, Ljava/lang/NullPointerException;

    #@6
    invoke-direct/range {v22 .. v22}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v22

    #@a
    .line 1672
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    #@d
    move-result v22

    #@e
    invoke-static/range {v22 .. v22}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    #@11
    move-result v10

    #@12
    .line 1673
    .local v10, "h":I
    const/16 v21, 0x0

    #@14
    .line 1674
    .local v21, "val":Ljava/lang/Object;, "TV;"
    const/4 v5, 0x0

    #@15
    .line 1675
    .local v5, "binCount":I
    move-object/from16 v0, p0

    #@17
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@19
    move-object/from16 v20, v0

    #@1b
    .line 1677
    .end local v21    # "val":Ljava/lang/Object;, "TV;"
    .local v20, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2
    :goto_0
    if-eqz v20, :cond_3

    #@1d
    move-object/from16 v0, v20

    #@1f
    array-length v12, v0

    #@20
    .local v12, "n":I
    if-nez v12, :cond_4

    #@22
    .line 1678
    .end local v12    # "n":I
    :cond_3
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap;->initTable()[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@25
    move-result-object v20

    #@26
    goto :goto_0

    #@27
    .line 1679
    .restart local v12    # "n":I
    :cond_4
    add-int/lit8 v22, v12, -0x1

    #@29
    and-int v11, v22, v10

    #@2b
    .local v11, "i":I
    move-object/from16 v0, v20

    #@2d
    invoke-static {v0, v11}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@30
    move-result-object v8

    #@31
    .local v8, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v8, :cond_9

    #@33
    .line 1680
    new-instance v17, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    #@35
    invoke-direct/range {v17 .. v17}, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;-><init>()V

    #@38
    .line 1681
    .local v17, "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    monitor-enter v17

    #@39
    .line 1682
    const/16 v22, 0x0

    #@3b
    :try_start_0
    move-object/from16 v0, v20

    #@3d
    move-object/from16 v1, v22

    #@3f
    move-object/from16 v2, v17

    #@41
    invoke-static {v0, v11, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->casTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@44
    move-result v22

    #@45
    if-eqz v22, :cond_6

    #@47
    .line 1683
    const/4 v5, 0x1

    #@48
    .line 1684
    const/4 v13, 0x0

    #@49
    .line 1686
    .local v13, "node":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :try_start_1
    move-object/from16 v0, p2

    #@4b
    move-object/from16 v1, p1

    #@4d
    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@50
    move-result-object v21

    #@51
    .restart local v21    # "val":Ljava/lang/Object;, "TV;"
    if-eqz v21, :cond_5

    #@53
    .line 1687
    new-instance v14, Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@55
    const/16 v22, 0x0

    #@57
    move-object/from16 v0, p1

    #@59
    move-object/from16 v1, v21

    #@5b
    move-object/from16 v2, v22

    #@5d
    invoke-direct {v14, v10, v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@60
    .local v14, "node":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object v13, v14

    #@61
    .line 1689
    .end local v13    # "node":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v14    # "node":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_5
    :try_start_2
    move-object/from16 v0, v20

    #@63
    invoke-static {v0, v11, v13}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@66
    .end local v21    # "val":Ljava/lang/Object;, "TV;"
    :cond_6
    monitor-exit v17

    #@67
    .line 1693
    if-eqz v5, :cond_2

    #@69
    .line 1749
    .end local v17    # "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_7
    if-eqz v21, :cond_8

    #@6b
    .line 1750
    const-wide/16 v22, 0x1

    #@6d
    move-object/from16 v0, p0

    #@6f
    move-wide/from16 v1, v22

    #@71
    invoke-direct {v0, v1, v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    #@74
    .line 1751
    :cond_8
    return-object v21

    #@75
    .line 1688
    .restart local v13    # "node":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v17    # "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_0
    move-exception v22

    #@76
    .line 1689
    :try_start_3
    move-object/from16 v0, v20

    #@78
    invoke-static {v0, v11, v13}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    #@7b
    .line 1688
    throw v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@7c
    .line 1681
    .end local v13    # "node":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_1
    move-exception v22

    #@7d
    monitor-exit v17

    #@7e
    throw v22

    #@7f
    .line 1696
    .end local v17    # "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_9
    iget v9, v8, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@81
    .local v9, "fh":I
    const/16 v22, -0x1

    #@83
    move/from16 v0, v22

    #@85
    if-ne v9, v0, :cond_a

    #@87
    .line 1697
    move-object/from16 v0, p0

    #@89
    move-object/from16 v1, v20

    #@8b
    invoke-virtual {v0, v1, v8}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@8e
    move-result-object v20

    #@8f
    goto :goto_0

    #@90
    .line 1699
    :cond_a
    const/4 v4, 0x0

    #@91
    .line 1700
    .local v4, "added":Z
    monitor-enter v8

    #@92
    .line 1701
    :try_start_4
    move-object/from16 v0, v20

    #@94
    invoke-static {v0, v11}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@97
    move-result-object v22

    #@98
    move-object/from16 v0, v22

    #@9a
    if-ne v0, v8, :cond_c

    #@9c
    .line 1702
    if-ltz v9, :cond_11

    #@9e
    .line 1703
    const/4 v5, 0x1

    #@9f
    .line 1704
    move-object v6, v8

    #@a0
    .line 1706
    .local v6, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_1
    iget v0, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@a2
    move/from16 v22, v0

    #@a4
    move/from16 v0, v22

    #@a6
    if-ne v0, v10, :cond_e

    #@a8
    .line 1707
    iget-object v7, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@aa
    .local v7, "ek":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p1

    #@ac
    if-eq v7, v0, :cond_b

    #@ae
    .line 1708
    if-eqz v7, :cond_e

    #@b0
    move-object/from16 v0, p1

    #@b2
    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@b5
    move-result v22

    #@b6
    .line 1706
    if-eqz v22, :cond_e

    #@b8
    .line 1709
    :cond_b
    iget-object v0, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@ba
    move-object/from16 v21, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@bc
    .end local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    :cond_c
    :goto_2
    monitor-exit v8

    #@bd
    .line 1740
    if-eqz v5, :cond_2

    #@bf
    .line 1741
    const/16 v22, 0x8

    #@c1
    move/from16 v0, v22

    #@c3
    if-lt v5, v0, :cond_d

    #@c5
    .line 1742
    move-object/from16 v0, p0

    #@c7
    move-object/from16 v1, v20

    #@c9
    invoke-direct {v0, v1, v11}, Ljava/util/concurrent/ConcurrentHashMap;->treeifyBin([Ljava/util/concurrent/ConcurrentHashMap$Node;I)V

    #@cc
    .line 1743
    :cond_d
    if-nez v4, :cond_7

    #@ce
    .line 1744
    return-object v21

    #@cf
    .line 1712
    .restart local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_e
    move-object/from16 v16, v6

    #@d1
    .line 1713
    .local v16, "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :try_start_5
    iget-object v6, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@d3
    if-nez v6, :cond_10

    #@d5
    .line 1714
    move-object/from16 v0, p2

    #@d7
    move-object/from16 v1, p1

    #@d9
    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@dc
    move-result-object v21

    #@dd
    .restart local v21    # "val":Ljava/lang/Object;, "TV;"
    if-eqz v21, :cond_c

    #@df
    .line 1715
    move-object/from16 v0, v16

    #@e1
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@e3
    move-object/from16 v22, v0

    #@e5
    if-eqz v22, :cond_f

    #@e7
    .line 1716
    new-instance v22, Ljava/lang/IllegalStateException;

    #@e9
    const-string/jumbo v23, "Recursive update"

    #@ec
    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@ef
    throw v22
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@f0
    .line 1700
    .end local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v16    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v21    # "val":Ljava/lang/Object;, "TV;"
    :catchall_2
    move-exception v22

    #@f1
    monitor-exit v8

    #@f2
    throw v22

    #@f3
    .line 1717
    .restart local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v16    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v21    # "val":Ljava/lang/Object;, "TV;"
    :cond_f
    const/4 v4, 0x1

    #@f4
    .line 1718
    :try_start_6
    new-instance v22, Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@f6
    const/16 v23, 0x0

    #@f8
    move-object/from16 v0, v22

    #@fa
    move-object/from16 v1, p1

    #@fc
    move-object/from16 v2, v21

    #@fe
    move-object/from16 v3, v23

    #@100
    invoke-direct {v0, v10, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@103
    move-object/from16 v0, v22

    #@105
    move-object/from16 v1, v16

    #@107
    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@109
    goto :goto_2

    #@10a
    .line 1704
    .end local v21    # "val":Ljava/lang/Object;, "TV;"
    :cond_10
    add-int/lit8 v5, v5, 0x1

    #@10c
    goto :goto_1

    #@10d
    .line 1724
    .end local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v16    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_11
    instance-of v0, v8, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    #@10f
    move/from16 v22, v0

    #@111
    if-eqz v22, :cond_13

    #@113
    .line 1725
    const/4 v5, 0x2

    #@114
    .line 1726
    move-object v0, v8

    #@115
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    #@117
    move-object/from16 v19, v0

    #@119
    .line 1728
    .local v19, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    move-object/from16 v0, v19

    #@11b
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@11d
    move-object/from16 v18, v0

    #@11f
    .local v18, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v18, :cond_12

    #@121
    .line 1729
    const/16 v22, 0x0

    #@123
    move-object/from16 v0, v18

    #@125
    move-object/from16 v1, p1

    #@127
    move-object/from16 v2, v22

    #@129
    invoke-virtual {v0, v10, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@12c
    move-result-object v15

    #@12d
    .local v15, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v15, :cond_12

    #@12f
    .line 1730
    iget-object v0, v15, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    #@131
    move-object/from16 v21, v0

    #@133
    .restart local v21    # "val":Ljava/lang/Object;, "TV;"
    goto :goto_2

    #@134
    .line 1731
    .end local v15    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v21    # "val":Ljava/lang/Object;, "TV;"
    :cond_12
    move-object/from16 v0, p2

    #@136
    move-object/from16 v1, p1

    #@138
    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@13b
    move-result-object v21

    #@13c
    .restart local v21    # "val":Ljava/lang/Object;, "TV;"
    if-eqz v21, :cond_c

    #@13e
    .line 1732
    const/4 v4, 0x1

    #@13f
    .line 1733
    move-object/from16 v0, v19

    #@141
    move-object/from16 v1, p1

    #@143
    move-object/from16 v2, v21

    #@145
    invoke-virtual {v0, v10, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@148
    goto/16 :goto_2

    #@14a
    .line 1736
    .end local v18    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v19    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .end local v21    # "val":Ljava/lang/Object;, "TV;"
    :cond_13
    instance-of v0, v8, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    #@14c
    move/from16 v22, v0

    #@14e
    if-eqz v22, :cond_c

    #@150
    .line 1737
    new-instance v22, Ljava/lang/IllegalStateException;

    #@152
    const-string/jumbo v23, "Recursive update"

    #@155
    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@158
    throw v22
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
.end method

.method public computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 1775
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 1776
    :cond_0
    new-instance v20, Ljava/lang/NullPointerException;

    #@6
    invoke-direct/range {v20 .. v20}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v20

    #@a
    .line 1777
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    #@d
    move-result v20

    #@e
    invoke-static/range {v20 .. v20}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    #@11
    move-result v11

    #@12
    .line 1778
    .local v11, "h":I
    const/16 v19, 0x0

    #@14
    .line 1779
    .local v19, "val":Ljava/lang/Object;, "TV;"
    const/4 v5, 0x0

    #@15
    .line 1780
    .local v5, "delta":I
    const/4 v4, 0x0

    #@16
    .line 1781
    .local v4, "binCount":I
    move-object/from16 v0, p0

    #@18
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@1a
    move-object/from16 v18, v0

    #@1c
    .line 1783
    .end local v19    # "val":Ljava/lang/Object;, "TV;"
    .local v18, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2
    :goto_0
    if-eqz v18, :cond_3

    #@1e
    move-object/from16 v0, v18

    #@20
    array-length v13, v0

    #@21
    .local v13, "n":I
    if-nez v13, :cond_4

    #@23
    .line 1784
    .end local v13    # "n":I
    :cond_3
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap;->initTable()[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@26
    move-result-object v18

    #@27
    goto :goto_0

    #@28
    .line 1785
    .restart local v13    # "n":I
    :cond_4
    add-int/lit8 v20, v13, -0x1

    #@2a
    and-int v12, v20, v11

    #@2c
    .local v12, "i":I
    move-object/from16 v0, v18

    #@2e
    invoke-static {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@31
    move-result-object v9

    #@32
    .local v9, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v9, :cond_6

    #@34
    .line 1841
    :goto_1
    if-eqz v5, :cond_5

    #@36
    .line 1842
    int-to-long v0, v5

    #@37
    move-wide/from16 v20, v0

    #@39
    move-object/from16 v0, p0

    #@3b
    move-wide/from16 v1, v20

    #@3d
    invoke-direct {v0, v1, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    #@40
    .line 1843
    :cond_5
    return-object v19

    #@41
    .line 1787
    :cond_6
    iget v10, v9, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@43
    .local v10, "fh":I
    const/16 v20, -0x1

    #@45
    move/from16 v0, v20

    #@47
    if-ne v10, v0, :cond_7

    #@49
    .line 1788
    move-object/from16 v0, p0

    #@4b
    move-object/from16 v1, v18

    #@4d
    invoke-virtual {v0, v1, v9}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@50
    move-result-object v18

    #@51
    goto :goto_0

    #@52
    .line 1790
    :cond_7
    monitor-enter v9

    #@53
    .line 1791
    :try_start_0
    move-object/from16 v0, v18

    #@55
    invoke-static {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@58
    move-result-object v20

    #@59
    move-object/from16 v0, v20

    #@5b
    if-ne v0, v9, :cond_9

    #@5d
    .line 1792
    if-ltz v10, :cond_d

    #@5f
    .line 1793
    const/4 v4, 0x1

    #@60
    .line 1794
    move-object v6, v9

    #@61
    .local v6, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v15, 0x0

    #@62
    .line 1796
    :goto_2
    iget v0, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@64
    move/from16 v20, v0

    #@66
    move/from16 v0, v20

    #@68
    if-ne v0, v11, :cond_c

    #@6a
    .line 1797
    iget-object v7, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@6c
    .local v7, "ek":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p1

    #@6e
    if-eq v7, v0, :cond_8

    #@70
    .line 1798
    if-eqz v7, :cond_c

    #@72
    move-object/from16 v0, p1

    #@74
    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@77
    move-result v20

    #@78
    .line 1796
    if-eqz v20, :cond_c

    #@7a
    .line 1799
    :cond_8
    iget-object v0, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@7c
    move-object/from16 v20, v0

    #@7e
    move-object/from16 v0, p2

    #@80
    move-object/from16 v1, p1

    #@82
    move-object/from16 v2, v20

    #@84
    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@87
    move-result-object v19

    #@88
    .line 1800
    .restart local v19    # "val":Ljava/lang/Object;, "TV;"
    if-eqz v19, :cond_a

    #@8a
    .line 1801
    move-object/from16 v0, v19

    #@8c
    iput-object v0, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8e
    .end local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    .end local v19    # "val":Ljava/lang/Object;, "TV;"
    :cond_9
    :goto_3
    monitor-exit v9

    #@8f
    .line 1837
    if-eqz v4, :cond_2

    #@91
    goto :goto_1

    #@92
    .line 1803
    .restart local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v7    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v19    # "val":Ljava/lang/Object;, "TV;"
    :cond_a
    const/4 v5, -0x1

    #@93
    .line 1804
    :try_start_1
    iget-object v8, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@95
    .line 1805
    .local v8, "en":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v15, :cond_b

    #@97
    .line 1806
    iput-object v8, v15, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@99
    goto :goto_3

    #@9a
    .line 1790
    .end local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    .end local v8    # "en":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v19    # "val":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v20

    #@9b
    monitor-exit v9

    #@9c
    throw v20

    #@9d
    .line 1808
    .restart local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v7    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v8    # "en":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v19    # "val":Ljava/lang/Object;, "TV;"
    :cond_b
    :try_start_2
    move-object/from16 v0, v18

    #@9f
    invoke-static {v0, v12, v8}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    #@a2
    goto :goto_3

    #@a3
    .line 1812
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    .end local v8    # "en":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v19    # "val":Ljava/lang/Object;, "TV;"
    :cond_c
    move-object v15, v6

    #@a4
    .line 1813
    .local v15, "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v6, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@a6
    if-eqz v6, :cond_9

    #@a8
    .line 1794
    add-int/lit8 v4, v4, 0x1

    #@aa
    goto :goto_2

    #@ab
    .line 1817
    .end local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v15    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_d
    instance-of v0, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    #@ad
    move/from16 v20, v0

    #@af
    if-eqz v20, :cond_f

    #@b1
    .line 1818
    const/4 v4, 0x2

    #@b2
    .line 1819
    move-object v0, v9

    #@b3
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    #@b5
    move-object/from16 v17, v0

    #@b7
    .line 1821
    .local v17, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    move-object/from16 v0, v17

    #@b9
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@bb
    move-object/from16 v16, v0

    #@bd
    .local v16, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v16, :cond_9

    #@bf
    .line 1822
    const/16 v20, 0x0

    #@c1
    move-object/from16 v0, v16

    #@c3
    move-object/from16 v1, p1

    #@c5
    move-object/from16 v2, v20

    #@c7
    invoke-virtual {v0, v11, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@ca
    move-result-object v14

    #@cb
    .local v14, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v14, :cond_9

    #@cd
    .line 1823
    iget-object v0, v14, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    #@cf
    move-object/from16 v20, v0

    #@d1
    move-object/from16 v0, p2

    #@d3
    move-object/from16 v1, p1

    #@d5
    move-object/from16 v2, v20

    #@d7
    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@da
    move-result-object v19

    #@db
    .line 1824
    .restart local v19    # "val":Ljava/lang/Object;, "TV;"
    if-eqz v19, :cond_e

    #@dd
    .line 1825
    move-object/from16 v0, v19

    #@df
    iput-object v0, v14, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    #@e1
    goto :goto_3

    #@e2
    .line 1827
    :cond_e
    const/4 v5, -0x1

    #@e3
    .line 1828
    move-object/from16 v0, v17

    #@e5
    invoke-virtual {v0, v14}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->removeTreeNode(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    #@e8
    move-result v20

    #@e9
    if-eqz v20, :cond_9

    #@eb
    .line 1829
    move-object/from16 v0, v17

    #@ed
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@ef
    move-object/from16 v20, v0

    #@f1
    invoke-static/range {v20 .. v20}, Ljava/util/concurrent/ConcurrentHashMap;->untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@f4
    move-result-object v20

    #@f5
    move-object/from16 v0, v18

    #@f7
    move-object/from16 v1, v20

    #@f9
    invoke-static {v0, v12, v1}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    #@fc
    goto :goto_3

    #@fd
    .line 1833
    .end local v14    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v16    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v17    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .end local v19    # "val":Ljava/lang/Object;, "TV;"
    :cond_f
    instance-of v0, v9, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    #@ff
    move/from16 v20, v0

    #@101
    if-eqz v20, :cond_9

    #@103
    .line 1834
    new-instance v20, Ljava/lang/IllegalStateException;

    #@105
    const-string/jumbo v21, "Recursive update"

    #@108
    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10b
    throw v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2106
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
    .line 943
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
    .line 957
    if-nez p1, :cond_0

    #@3
    .line 958
    new-instance v4, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v4

    #@9
    .line 960
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@b
    .local v2, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_3

    #@d
    .line 961
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    #@f
    array-length v4, v2

    #@10
    array-length v5, v2

    #@11
    invoke-direct {v0, v2, v4, v6, v5}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    #@14
    .line 962
    .local v0, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@17
    move-result-object v1

    #@18
    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_3

    #@1a
    .line 964
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
    .line 965
    :cond_2
    const/4 v4, 0x1

    #@27
    return v4

    #@28
    .line 968
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
    .line 2129
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@2
    .local v1, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v1, :cond_0

    #@4
    const/4 v2, 0x0

    #@5
    .line 2130
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
    .line 2129
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
    .line 1263
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
    .line 1328
    if-eq p1, p0, :cond_8

    #@3
    .line 1329
    instance-of v11, p1, Ljava/util/Map;

    #@5
    if-nez v11, :cond_0

    #@7
    .line 1330
    return v12

    #@8
    :cond_0
    move-object v4, p1

    #@9
    .line 1331
    check-cast v4, Ljava/util/Map;

    #@b
    .line 1333
    .local v4, "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    iget-object v8, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@d
    .local v8, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v8, :cond_3

    #@f
    const/4 v2, 0x0

    #@10
    .line 1334
    .local v2, "f":I
    :goto_0
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    #@12
    invoke-direct {v3, v8, v2, v12, v2}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    #@15
    .line 1335
    .local v3, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@18
    move-result-object v7

    #@19
    .local v7, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v7, :cond_4

    #@1b
    .line 1336
    iget-object v10, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@1d
    .line 1337
    .local v10, "val":Ljava/lang/Object;, "TV;"
    iget-object v11, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@1f
    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v9

    #@23
    .line 1338
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
    .line 1339
    :cond_2
    return v12

    #@2e
    .line 1333
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
    .line 1341
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
    .line 1343
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@47
    move-result-object v5

    #@48
    .local v5, "mk":Ljava/lang/Object;
    if-eqz v5, :cond_6

    #@4a
    .line 1344
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@4d
    move-result-object v6

    #@4e
    .local v6, "mv":Ljava/lang/Object;
    if-nez v6, :cond_7

    #@50
    .line 1347
    .end local v6    # "mv":Ljava/lang/Object;
    :cond_6
    return v12

    #@51
    .line 1345
    .restart local v6    # "mv":Ljava/lang/Object;
    :cond_7
    invoke-virtual {p0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@54
    move-result-object v9

    #@55
    .restart local v9    # "v":Ljava/lang/Object;
    if-eqz v9, :cond_6

    #@57
    .line 1346
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
    .line 1350
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

.method public forEach(JLjava/util/function/BiConsumer;)V
    .locals 7
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/BiConsumer",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    const/4 v1, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 3685
    if-nez p3, :cond_0

    #@4
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 3686
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask;

    #@c
    .line 3687
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    #@f
    move-result v2

    #@10
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@12
    move v4, v3

    #@13
    move-object v6, p3

    #@14
    .line 3686
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/BiConsumer;)V

    #@17
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask;->invoke()Ljava/lang/Object;

    #@1a
    .line 3684
    return-void
.end method

.method public forEach(JLjava/util/function/BiFunction;Ljava/util/function/Consumer;)V
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TU;>;",
            "Ljava/util/function/Consumer",
            "<-TU;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    .local p4, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    const/4 v3, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 3707
    if-eqz p3, :cond_0

    #@4
    if-nez p4, :cond_1

    #@6
    .line 3708
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@b
    throw v0

    #@c
    .line 3709
    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;

    #@e
    .line 3710
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    #@11
    move-result v2

    #@12
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@14
    move v4, v3

    #@15
    move-object v6, p3

    #@16
    move-object v7, p4

    #@17
    .line 3709
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/BiFunction;Ljava/util/function/Consumer;)V

    #@1a
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->invoke()Ljava/lang/Object;

    #@1d
    .line 3706
    return-void
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1579
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v3, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v3

    #@8
    .line 1581
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@a
    .local v2, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_1

    #@c
    .line 1582
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    #@e
    array-length v3, v2

    #@f
    array-length v4, v2

    #@10
    const/4 v5, 0x0

    #@11
    invoke-direct {v0, v2, v3, v5, v4}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    #@14
    .line 1583
    .local v0, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@17
    move-result-object v1

    #@18
    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_1

    #@1a
    .line 1584
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@1c
    iget-object v4, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@1e
    invoke-interface {p1, v3, v4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    #@21
    goto :goto_0

    #@22
    .line 1578
    .end local v0    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1
    return-void
.end method

.method public forEachEntry(JLjava/util/function/Consumer;)V
    .locals 7
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/Consumer",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v1, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 4224
    if-nez p3, :cond_0

    #@4
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 4225
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;

    #@c
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    #@f
    move-result v2

    #@10
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@12
    move v4, v3

    #@13
    move-object v6, p3

    #@14
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Consumer;)V

    #@17
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->invoke()Ljava/lang/Object;

    #@1a
    .line 4223
    return-void
.end method

.method public forEachEntry(JLjava/util/function/Function;Ljava/util/function/Consumer;)V
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;+TU;>;",
            "Ljava/util/function/Consumer",
            "<-TU;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    .local p4, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    const/4 v3, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 4245
    if-eqz p3, :cond_0

    #@4
    if-nez p4, :cond_1

    #@6
    .line 4246
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@b
    throw v0

    #@c
    .line 4247
    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;

    #@e
    .line 4248
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    #@11
    move-result v2

    #@12
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@14
    move v4, v3

    #@15
    move-object v6, p3

    #@16
    move-object v7, p4

    #@17
    .line 4247
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    #@1a
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->invoke()Ljava/lang/Object;

    #@1d
    .line 4244
    return-void
.end method

.method public forEachKey(JLjava/util/function/Consumer;)V
    .locals 7
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/Consumer",
            "<-TK;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    const/4 v1, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 3852
    if-nez p3, :cond_0

    #@4
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 3853
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;

    #@c
    .line 3854
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    #@f
    move-result v2

    #@10
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@12
    move v4, v3

    #@13
    move-object v6, p3

    #@14
    .line 3853
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Consumer;)V

    #@17
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;->invoke()Ljava/lang/Object;

    #@1a
    .line 3851
    return-void
.end method

.method public forEachKey(JLjava/util/function/Function;Ljava/util/function/Consumer;)V
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function",
            "<-TK;+TU;>;",
            "Ljava/util/function/Consumer",
            "<-TU;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    .local p4, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    const/4 v3, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 3874
    if-eqz p3, :cond_0

    #@4
    if-nez p4, :cond_1

    #@6
    .line 3875
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@b
    throw v0

    #@c
    .line 3876
    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;

    #@e
    .line 3877
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    #@11
    move-result v2

    #@12
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@14
    move v4, v3

    #@15
    move-object v6, p3

    #@16
    move-object v7, p4

    #@17
    .line 3876
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    #@1a
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;->invoke()Ljava/lang/Object;

    #@1d
    .line 3873
    return-void
.end method

.method public forEachValue(JLjava/util/function/Consumer;)V
    .locals 7
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/Consumer",
            "<-TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    const/4 v1, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 4038
    if-nez p3, :cond_0

    #@4
    .line 4039
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 4040
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;

    #@c
    .line 4041
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    #@f
    move-result v2

    #@10
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@12
    move v4, v3

    #@13
    move-object v6, p3

    #@14
    .line 4040
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Consumer;)V

    #@17
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->invoke()Ljava/lang/Object;

    #@1a
    .line 4037
    return-void
.end method

.method public forEachValue(JLjava/util/function/Function;Ljava/util/function/Consumer;)V
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function",
            "<-TV;+TU;>;",
            "Ljava/util/function/Consumer",
            "<-TU;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    .local p4, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    const/4 v3, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 4061
    if-eqz p3, :cond_0

    #@4
    if-nez p4, :cond_1

    #@6
    .line 4062
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@b
    throw v0

    #@c
    .line 4063
    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;

    #@e
    .line 4064
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    #@11
    move-result v2

    #@12
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@14
    move v4, v3

    #@15
    move-object v6, p3

    #@16
    move-object v7, p4

    #@17
    .line 4063
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    #@1a
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;->invoke()Ljava/lang/Object;

    #@1d
    .line 4060
    return-void
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
    .line 915
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    #@4
    move-result v8

    #@5
    invoke-static {v8}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    #@8
    move-result v3

    #@9
    .line 916
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
    .line 917
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
    .line 918
    iget v1, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@1b
    .local v1, "eh":I
    if-ne v1, v3, :cond_1

    #@1d
    .line 919
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
    .line 920
    :cond_0
    iget-object v7, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@2b
    return-object v7

    #@2c
    .line 922
    .end local v2    # "ek":Ljava/lang/Object;, "TK;"
    :cond_1
    if-gez v1, :cond_3

    #@2e
    .line 923
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
    .line 924
    .end local v5    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_3
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@39
    if-eqz v0, :cond_5

    #@3b
    .line 925
    iget v8, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@3d
    if-ne v8, v3, :cond_3

    #@3f
    .line 926
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
    .line 925
    if-eqz v8, :cond_3

    #@4b
    .line 927
    :cond_4
    iget-object v7, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@4d
    return-object v7

    #@4e
    .line 930
    .end local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v1    # "eh":I
    .end local v2    # "ek":Ljava/lang/Object;, "TK;"
    .end local v4    # "n":I
    :cond_5
    return-object v7
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 1575
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .local v0, "v":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_0

    #@6
    .end local p2    # "defaultValue":Ljava/lang/Object;, "TV;"
    :goto_0
    return-object p2

    #@7
    .restart local p2    # "defaultValue":Ljava/lang/Object;, "TV;"
    :cond_0
    move-object p2, v0

    #@8
    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    #@0
    .prologue
    .line 1274
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 1276
    .local v0, "h":I
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@3
    .local v3, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_0

    #@5
    .line 1277
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
    .line 1278
    .local v1, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@10
    move-result-object v2

    #@11
    .local v2, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_0

    #@13
    .line 1279
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
    .line 1281
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
    .line 2338
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p2, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz p1, :cond_3

    #@2
    instance-of v0, p2, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    #@4
    if-eqz v0, :cond_3

    #@6
    .line 2339
    check-cast p2, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    #@8
    .end local p2    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v6, p2, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@a
    .local v6, "nextTab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v6, :cond_3

    #@c
    .line 2340
    array-length v0, p1

    #@d
    invoke-static {v0}, Ljava/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    #@10
    move-result v7

    #@11
    .line 2341
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
    .line 2342
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    #@1b
    .local v4, "sc":I
    if-gez v4, :cond_1

    #@1d
    .line 2343
    ushr-int/lit8 v0, v4, 0x10

    #@1f
    if-ne v0, v7, :cond_1

    #@21
    add-int/lit8 v0, v7, 0x1

    #@23
    if-ne v4, v0, :cond_2

    #@25
    .line 2351
    .end local v4    # "sc":I
    :cond_1
    :goto_0
    return-object v6

    #@26
    .line 2344
    .restart local v4    # "sc":I
    :cond_2
    const v0, 0xffff

    #@29
    add-int/2addr v0, v7

    #@2a
    if-eq v4, v0, :cond_1

    #@2c
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->transferIndex:I

    #@2e
    if-lez v0, :cond_1

    #@30
    .line 2346
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    #@32
    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    #@34
    add-int/lit8 v5, v4, 0x1

    #@36
    move-object v1, p0

    #@37
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_0

    #@3d
    .line 2347
    invoke-direct {p0, p1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->transfer([Ljava/util/concurrent/ConcurrentHashMap$Node;[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@40
    goto :goto_0

    #@41
    .line 2353
    .end local v4    # "sc":I
    .end local v6    # "nextTab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "rs":I
    :cond_3
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@43
    return-object v0
.end method

.method public isEmpty()Z
    .locals 4

    #@0
    .prologue
    .line 899
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
    .line 1218
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
    .line 2192
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "mappedValue":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    #@2
    .line 2193
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 2194
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
    .line 2117
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@2
    .local v1, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v1, :cond_0

    #@4
    const/4 v2, 0x0

    #@5
    .line 2118
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
    .line 2117
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
    .line 2146
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    #@5
    move-result-wide v0

    #@6
    .line 2147
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

.method public merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction",
            "<-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 1997
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 1998
    :cond_0
    new-instance v20, Ljava/lang/NullPointerException;

    #@6
    invoke-direct/range {v20 .. v20}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v20

    #@a
    .line 1997
    :cond_1
    if-eqz p3, :cond_0

    #@c
    .line 1999
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    #@f
    move-result v20

    #@10
    invoke-static/range {v20 .. v20}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    #@13
    move-result v11

    #@14
    .line 2000
    .local v11, "h":I
    const/16 v19, 0x0

    #@16
    .line 2001
    .local v19, "val":Ljava/lang/Object;, "TV;"
    const/4 v5, 0x0

    #@17
    .line 2002
    .local v5, "delta":I
    const/4 v4, 0x0

    #@18
    .line 2003
    .local v4, "binCount":I
    move-object/from16 v0, p0

    #@1a
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@1c
    move-object/from16 v18, v0

    #@1e
    .line 2005
    .end local v19    # "val":Ljava/lang/Object;, "TV;"
    .local v18, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2
    :goto_0
    if-eqz v18, :cond_3

    #@20
    move-object/from16 v0, v18

    #@22
    array-length v13, v0

    #@23
    .local v13, "n":I
    if-nez v13, :cond_4

    #@25
    .line 2006
    .end local v13    # "n":I
    :cond_3
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap;->initTable()[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@28
    move-result-object v18

    #@29
    goto :goto_0

    #@2a
    .line 2007
    .restart local v13    # "n":I
    :cond_4
    add-int/lit8 v20, v13, -0x1

    #@2c
    and-int v12, v20, v11

    #@2e
    .local v12, "i":I
    move-object/from16 v0, v18

    #@30
    invoke-static {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@33
    move-result-object v9

    #@34
    .local v9, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v9, :cond_7

    #@36
    .line 2008
    new-instance v20, Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@38
    const/16 v21, 0x0

    #@3a
    move-object/from16 v0, v20

    #@3c
    move-object/from16 v1, p1

    #@3e
    move-object/from16 v2, p2

    #@40
    move-object/from16 v3, v21

    #@42
    invoke-direct {v0, v11, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@45
    const/16 v21, 0x0

    #@47
    move-object/from16 v0, v18

    #@49
    move-object/from16 v1, v21

    #@4b
    move-object/from16 v2, v20

    #@4d
    invoke-static {v0, v12, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->casTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)Z

    #@50
    move-result v20

    #@51
    if-eqz v20, :cond_2

    #@53
    .line 2009
    const/4 v5, 0x1

    #@54
    .line 2010
    move-object/from16 v19, p2

    #@56
    .line 2082
    :cond_5
    :goto_1
    if-eqz v5, :cond_6

    #@58
    .line 2083
    int-to-long v0, v5

    #@59
    move-wide/from16 v20, v0

    #@5b
    move-object/from16 v0, p0

    #@5d
    move-wide/from16 v1, v20

    #@5f
    invoke-direct {v0, v1, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    #@62
    .line 2084
    :cond_6
    return-object v19

    #@63
    .line 2014
    :cond_7
    iget v10, v9, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@65
    .local v10, "fh":I
    const/16 v20, -0x1

    #@67
    move/from16 v0, v20

    #@69
    if-ne v10, v0, :cond_8

    #@6b
    .line 2015
    move-object/from16 v0, p0

    #@6d
    move-object/from16 v1, v18

    #@6f
    invoke-virtual {v0, v1, v9}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@72
    move-result-object v18

    #@73
    goto :goto_0

    #@74
    .line 2017
    :cond_8
    monitor-enter v9

    #@75
    .line 2018
    :try_start_0
    move-object/from16 v0, v18

    #@77
    invoke-static {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@7a
    move-result-object v20

    #@7b
    move-object/from16 v0, v20

    #@7d
    if-ne v0, v9, :cond_a

    #@7f
    .line 2019
    if-ltz v10, :cond_f

    #@81
    .line 2020
    const/4 v4, 0x1

    #@82
    .line 2021
    move-object v6, v9

    #@83
    .local v6, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v15, 0x0

    #@84
    .line 2023
    :goto_2
    iget v0, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@86
    move/from16 v20, v0

    #@88
    move/from16 v0, v20

    #@8a
    if-ne v0, v11, :cond_d

    #@8c
    .line 2024
    iget-object v7, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@8e
    .local v7, "ek":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p1

    #@90
    if-eq v7, v0, :cond_9

    #@92
    .line 2025
    if-eqz v7, :cond_d

    #@94
    move-object/from16 v0, p1

    #@96
    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@99
    move-result v20

    #@9a
    .line 2023
    if-eqz v20, :cond_d

    #@9c
    .line 2026
    :cond_9
    iget-object v0, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@9e
    move-object/from16 v20, v0

    #@a0
    move-object/from16 v0, p3

    #@a2
    move-object/from16 v1, v20

    #@a4
    move-object/from16 v2, p2

    #@a6
    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a9
    move-result-object v19

    #@aa
    .line 2027
    .restart local v19    # "val":Ljava/lang/Object;, "TV;"
    if-eqz v19, :cond_b

    #@ac
    .line 2028
    move-object/from16 v0, v19

    #@ae
    iput-object v0, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b0
    .end local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    .end local v19    # "val":Ljava/lang/Object;, "TV;"
    :cond_a
    :goto_3
    monitor-exit v9

    #@b1
    .line 2075
    if-eqz v4, :cond_2

    #@b3
    .line 2076
    const/16 v20, 0x8

    #@b5
    move/from16 v0, v20

    #@b7
    if-lt v4, v0, :cond_5

    #@b9
    .line 2077
    move-object/from16 v0, p0

    #@bb
    move-object/from16 v1, v18

    #@bd
    invoke-direct {v0, v1, v12}, Ljava/util/concurrent/ConcurrentHashMap;->treeifyBin([Ljava/util/concurrent/ConcurrentHashMap$Node;I)V

    #@c0
    goto :goto_1

    #@c1
    .line 2030
    .restart local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v7    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v19    # "val":Ljava/lang/Object;, "TV;"
    :cond_b
    const/4 v5, -0x1

    #@c2
    .line 2031
    :try_start_1
    iget-object v8, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@c4
    .line 2032
    .local v8, "en":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v15, :cond_c

    #@c6
    .line 2033
    iput-object v8, v15, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c8
    goto :goto_3

    #@c9
    .line 2017
    .end local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    .end local v8    # "en":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v19    # "val":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v20

    #@ca
    monitor-exit v9

    #@cb
    throw v20

    #@cc
    .line 2035
    .restart local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v7    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v8    # "en":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v19    # "val":Ljava/lang/Object;, "TV;"
    :cond_c
    :try_start_2
    move-object/from16 v0, v18

    #@ce
    invoke-static {v0, v12, v8}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    #@d1
    goto :goto_3

    #@d2
    .line 2039
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    .end local v8    # "en":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v19    # "val":Ljava/lang/Object;, "TV;"
    :cond_d
    move-object v15, v6

    #@d3
    .line 2040
    .local v15, "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v6, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@d5
    if-nez v6, :cond_e

    #@d7
    .line 2041
    const/4 v5, 0x1

    #@d8
    .line 2042
    move-object/from16 v19, p2

    #@da
    .line 2044
    .restart local v19    # "val":Ljava/lang/Object;, "TV;"
    new-instance v20, Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@dc
    const/16 v21, 0x0

    #@de
    move-object/from16 v0, v20

    #@e0
    move-object/from16 v1, p1

    #@e2
    move-object/from16 v2, p2

    #@e4
    move-object/from16 v3, v21

    #@e6
    invoke-direct {v0, v11, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@e9
    .line 2043
    move-object/from16 v0, v20

    #@eb
    iput-object v0, v15, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@ed
    goto :goto_3

    #@ee
    .line 2021
    .end local v19    # "val":Ljava/lang/Object;, "TV;"
    :cond_e
    add-int/lit8 v4, v4, 0x1

    #@f0
    goto :goto_2

    #@f1
    .line 2049
    .end local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v15    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_f
    instance-of v0, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    #@f3
    move/from16 v20, v0

    #@f5
    if-eqz v20, :cond_14

    #@f7
    .line 2050
    const/4 v4, 0x2

    #@f8
    .line 2051
    move-object v0, v9

    #@f9
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    #@fb
    move-object/from16 v17, v0

    #@fd
    .line 2052
    .local v17, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    move-object/from16 v0, v17

    #@ff
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@101
    move-object/from16 v16, v0

    #@103
    .line 2053
    .local v16, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v16, :cond_10

    #@105
    const/4 v14, 0x0

    #@106
    .line 2055
    .local v14, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_4
    if-nez v14, :cond_11

    #@108
    move-object/from16 v19, p2

    #@10a
    .line 2057
    .restart local v19    # "val":Ljava/lang/Object;, "TV;"
    :goto_5
    if-eqz v19, :cond_13

    #@10c
    .line 2058
    if-eqz v14, :cond_12

    #@10e
    .line 2059
    move-object/from16 v0, v19

    #@110
    iput-object v0, v14, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    #@112
    goto :goto_3

    #@113
    .line 2054
    .end local v14    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v19    # "val":Ljava/lang/Object;, "TV;"
    :cond_10
    const/16 v20, 0x0

    #@115
    move-object/from16 v0, v16

    #@117
    move-object/from16 v1, p1

    #@119
    move-object/from16 v2, v20

    #@11b
    invoke-virtual {v0, v11, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@11e
    move-result-object v14

    #@11f
    goto :goto_4

    #@120
    .line 2056
    .restart local v14    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_11
    iget-object v0, v14, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    #@122
    move-object/from16 v20, v0

    #@124
    move-object/from16 v0, p3

    #@126
    move-object/from16 v1, v20

    #@128
    move-object/from16 v2, p2

    #@12a
    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12d
    move-result-object v19

    #@12e
    goto :goto_5

    #@12f
    .line 2061
    .restart local v19    # "val":Ljava/lang/Object;, "TV;"
    :cond_12
    const/4 v5, 0x1

    #@130
    .line 2062
    move-object/from16 v0, v17

    #@132
    move-object/from16 v1, p1

    #@134
    move-object/from16 v2, v19

    #@136
    invoke-virtual {v0, v11, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@139
    goto/16 :goto_3

    #@13b
    .line 2065
    :cond_13
    if-eqz v14, :cond_a

    #@13d
    .line 2066
    const/4 v5, -0x1

    #@13e
    .line 2067
    move-object/from16 v0, v17

    #@140
    invoke-virtual {v0, v14}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->removeTreeNode(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    #@143
    move-result v20

    #@144
    if-eqz v20, :cond_a

    #@146
    .line 2068
    move-object/from16 v0, v17

    #@148
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@14a
    move-object/from16 v20, v0

    #@14c
    invoke-static/range {v20 .. v20}, Ljava/util/concurrent/ConcurrentHashMap;->untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@14f
    move-result-object v20

    #@150
    move-object/from16 v0, v18

    #@152
    move-object/from16 v1, v20

    #@154
    invoke-static {v0, v12, v1}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    #@157
    goto/16 :goto_3

    #@159
    .line 2071
    .end local v14    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v16    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v17    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .end local v19    # "val":Ljava/lang/Object;, "TV;"
    :cond_14
    instance-of v0, v9, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    #@15b
    move/from16 v20, v0

    #@15d
    if-eqz v20, :cond_a

    #@15f
    .line 2072
    new-instance v20, Ljava/lang/IllegalStateException;

    #@161
    const-string/jumbo v21, "Recursive update"

    #@164
    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@167
    throw v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
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
    .line 985
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
    .line 1063
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    #@3
    move-result v2

    #@4
    invoke-direct {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->tryPresize(I)V

    #@7
    .line 1064
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
    .line 1065
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
    .line 1062
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
    .line 1522
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
    .line 990
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
    .line 991
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    #@d
    move-result v14

    #@e
    invoke-static {v14}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    #@11
    move-result v7

    #@12
    .line 992
    .local v7, "hash":I
    const/4 v2, 0x0

    #@13
    .line 993
    .local v2, "binCount":I
    move-object/from16 v0, p0

    #@15
    iget-object v13, v0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@17
    .line 995
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
    .line 996
    .end local v9    # "n":I
    :cond_3
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap;->initTable()[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@1f
    move-result-object v13

    #@20
    goto :goto_0

    #@21
    .line 997
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
    .line 999
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
    .line 998
    const/4 v15, 0x0

    #@36
    invoke-static {v13, v8, v15, v14}, Ljava/util/concurrent/ConcurrentHashMap;->casTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)Z

    #@39
    move-result v14

    #@3a
    if-eqz v14, :cond_2

    #@3c
    .line 1051
    :cond_5
    const-wide/16 v14, 0x1

    #@3e
    move-object/from16 v0, p0

    #@40
    invoke-direct {v0, v14, v15, v2}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    #@43
    .line 1052
    const/4 v14, 0x0

    #@44
    return-object v14

    #@45
    .line 1002
    :cond_6
    iget v6, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@47
    .local v6, "fh":I
    const/4 v14, -0x1

    #@48
    if-ne v6, v14, :cond_7

    #@4a
    .line 1003
    move-object/from16 v0, p0

    #@4c
    invoke-virtual {v0, v13, v5}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@4f
    move-result-object v13

    #@50
    goto :goto_0

    #@51
    .line 1005
    :cond_7
    const/4 v10, 0x0

    #@52
    .line 1006
    .local v10, "oldVal":Ljava/lang/Object;, "TV;"
    monitor-enter v5

    #@53
    .line 1007
    :try_start_0
    invoke-static {v13, v8}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@56
    move-result-object v14

    #@57
    if-ne v14, v5, :cond_9

    #@59
    .line 1008
    if-ltz v6, :cond_d

    #@5b
    .line 1009
    const/4 v2, 0x1

    #@5c
    .line 1010
    move-object v3, v5

    #@5d
    .line 1012
    .local v3, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_1
    iget v14, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@5f
    if-ne v14, v7, :cond_b

    #@61
    .line 1013
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@63
    .local v4, "ek":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p1

    #@65
    if-eq v4, v0, :cond_8

    #@67
    .line 1014
    if-eqz v4, :cond_b

    #@69
    move-object/from16 v0, p1

    #@6b
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@6e
    move-result v14

    #@6f
    .line 1012
    if-eqz v14, :cond_b

    #@71
    .line 1015
    :cond_8
    iget-object v10, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@73
    .line 1016
    if-nez p3, :cond_9

    #@75
    .line 1017
    move-object/from16 v0, p2

    #@77
    iput-object v0, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@79
    .end local v3    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v4    # "ek":Ljava/lang/Object;, "TK;"
    .end local v10    # "oldVal":Ljava/lang/Object;, "TV;"
    :cond_9
    :goto_2
    monitor-exit v5

    #@7a
    .line 1042
    if-eqz v2, :cond_2

    #@7c
    .line 1043
    const/16 v14, 0x8

    #@7e
    if-lt v2, v14, :cond_a

    #@80
    .line 1044
    move-object/from16 v0, p0

    #@82
    invoke-direct {v0, v13, v8}, Ljava/util/concurrent/ConcurrentHashMap;->treeifyBin([Ljava/util/concurrent/ConcurrentHashMap$Node;I)V

    #@85
    .line 1045
    :cond_a
    if-eqz v10, :cond_5

    #@87
    .line 1046
    return-object v10

    #@88
    .line 1020
    .restart local v3    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v10    # "oldVal":Ljava/lang/Object;, "TV;"
    :cond_b
    move-object v12, v3

    #@89
    .line 1021
    .local v12, "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :try_start_1
    iget-object v3, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@8b
    if-nez v3, :cond_c

    #@8d
    .line 1022
    new-instance v14, Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@8f
    .line 1023
    const/4 v15, 0x0

    #@90
    .line 1022
    move-object/from16 v0, p1

    #@92
    move-object/from16 v1, p2

    #@94
    invoke-direct {v14, v7, v0, v1, v15}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@97
    iput-object v14, v12, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@99
    goto :goto_2

    #@9a
    .line 1006
    .end local v3    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v10    # "oldVal":Ljava/lang/Object;, "TV;"
    .end local v12    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_0
    move-exception v14

    #@9b
    monitor-exit v5

    #@9c
    throw v14

    #@9d
    .line 1010
    .restart local v3    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v10    # "oldVal":Ljava/lang/Object;, "TV;"
    .restart local v12    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_c
    add-int/lit8 v2, v2, 0x1

    #@9f
    goto :goto_1

    #@a0
    .line 1028
    .end local v3    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v12    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_d
    :try_start_2
    instance-of v14, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    #@a2
    if-eqz v14, :cond_e

    #@a4
    .line 1030
    const/4 v2, 0x2

    #@a5
    .line 1031
    move-object v0, v5

    #@a6
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    #@a8
    move-object v14, v0

    #@a9
    move-object/from16 v0, p1

    #@ab
    move-object/from16 v1, p2

    #@ad
    invoke-virtual {v14, v7, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@b0
    move-result-object v11

    #@b1
    .local v11, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v11, :cond_9

    #@b3
    .line 1033
    iget-object v10, v11, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@b5
    .line 1034
    if-nez p3, :cond_9

    #@b7
    .line 1035
    move-object/from16 v0, p2

    #@b9
    iput-object v0, v11, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@bb
    goto :goto_2

    #@bc
    .line 1038
    .end local v11    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_e
    instance-of v14, v5, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    #@be
    if-eqz v14, :cond_9

    #@c0
    .line 1039
    new-instance v14, Ljava/lang/IllegalStateException;

    #@c2
    const-string/jumbo v15, "Recursive update"

    #@c5
    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c8
    throw v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public reduce(JLjava/util/function/BiFunction;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TU;>;",
            "Ljava/util/function/BiFunction",
            "<-TU;-TU;+TU;>;)TU;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    .local p4, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    const/4 v3, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 3757
    if-eqz p3, :cond_0

    #@4
    if-nez p4, :cond_1

    #@6
    .line 3758
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@b
    throw v0

    #@c
    .line 3759
    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;

    #@e
    .line 3760
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    #@11
    move-result v2

    #@12
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@14
    move v4, v3

    #@15
    move-object v6, v1

    #@16
    move-object v7, p3

    #@17
    move-object v8, p4

    #@18
    .line 3759
    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;Ljava/util/function/BiFunction;Ljava/util/function/BiFunction;)V

    #@1b
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->invoke()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method public reduceEntries(JLjava/util/function/Function;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;+TU;>;",
            "Ljava/util/function/BiFunction",
            "<-TU;-TU;+TU;>;)TU;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    .local p4, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    const/4 v3, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 4313
    if-eqz p3, :cond_0

    #@4
    if-nez p4, :cond_1

    #@6
    .line 4314
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@b
    throw v0

    #@c
    .line 4315
    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;

    #@e
    .line 4316
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    #@11
    move-result v2

    #@12
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@14
    move v4, v3

    #@15
    move-object v6, v1

    #@16
    move-object v7, p3

    #@17
    move-object v8, p4

    #@18
    .line 4315
    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;Ljava/util/function/Function;Ljava/util/function/BiFunction;)V

    #@1b
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->invoke()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method public reduceEntries(JLjava/util/function/BiFunction;)Ljava/util/Map$Entry;
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/BiFunction",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;+",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/util/Map$Entry<TK;TV;>;Ljava/util/Map$Entry<TK;TV;>;+Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v3, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 4288
    if-nez p3, :cond_0

    #@4
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 4289
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    #@c
    .line 4290
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    #@f
    move-result v2

    #@10
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@12
    move v4, v3

    #@13
    move-object v6, v1

    #@14
    move-object v7, p3

    #@15
    .line 4289
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;Ljava/util/function/BiFunction;)V

    #@18
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->invoke()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Ljava/util/Map$Entry;

    #@1e
    return-object v0
.end method

.method public reduceEntriesToDouble(JLjava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)D
    .locals 11
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # D
    .param p6, "reducer"    # Ljava/util/function/DoubleBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToDoubleFunction",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;D",
            "Ljava/util/function/DoubleBinaryOperator;",
            ")D"
        }
    .end annotation

    #@0
    .prologue
    .line 4339
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p3, :cond_0

    #@2
    if-nez p6, :cond_1

    #@4
    .line 4340
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 4341
    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

    #@c
    .line 4342
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    #@f
    move-result v2

    #@10
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@12
    const/4 v1, 0x0

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x0

    #@15
    .line 4343
    const/4 v6, 0x0

    #@16
    move-object v7, p3

    #@17
    move-wide v8, p4

    #@18
    move-object/from16 v10, p6

    #@1a
    .line 4341
    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;Ljava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)V

    #@1d
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->invoke()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Ljava/lang/Double;

    #@23
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    #@26
    move-result-wide v0

    #@27
    return-wide v0
.end method

.method public reduceEntriesToInt(JLjava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)I
    .locals 11
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # I
    .param p5, "reducer"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToIntFunction",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;I",
            "Ljava/util/function/IntBinaryOperator;",
            ")I"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v3, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 4391
    if-eqz p3, :cond_0

    #@4
    if-nez p5, :cond_1

    #@6
    .line 4392
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@b
    throw v0

    #@c
    .line 4393
    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;

    #@e
    .line 4394
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    #@11
    move-result v2

    #@12
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@14
    move v4, v3

    #@15
    move-object v6, v1

    #@16
    move-object v7, p3

    #@17
    move v8, p4

    #@18
    move-object/from16 v9, p5

    #@1a
    .line 4393
    invoke-direct/range {v0 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V

    #@1d
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->invoke()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Ljava/lang/Integer;

    #@23
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@26
    move-result v0

    #@27
    return v0
.end method

.method public reduceEntriesToLong(JLjava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)J
    .locals 11
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # J
    .param p6, "reducer"    # Ljava/util/function/LongBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToLongFunction",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;J",
            "Ljava/util/function/LongBinaryOperator;",
            ")J"
        }
    .end annotation

    #@0
    .prologue
    .line 4365
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p3, :cond_0

    #@2
    if-nez p6, :cond_1

    #@4
    .line 4366
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 4367
    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;

    #@c
    .line 4368
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    #@f
    move-result v2

    #@10
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@12
    const/4 v1, 0x0

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x0

    #@15
    .line 4369
    const/4 v6, 0x0

    #@16
    move-object v7, p3

    #@17
    move-wide v8, p4

    #@18
    move-object/from16 v10, p6

    #@1a
    .line 4367
    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;Ljava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)V

    #@1d
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->invoke()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Ljava/lang/Long;

    #@23
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@26
    move-result-wide v0

    #@27
    return-wide v0
.end method

.method public reduceKeys(JLjava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/BiFunction",
            "<-TK;-TK;+TK;>;)TK;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TK;+TK;>;"
    const/4 v3, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 3918
    if-nez p3, :cond_0

    #@4
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 3919
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    #@c
    .line 3920
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    #@f
    move-result v2

    #@10
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@12
    move v4, v3

    #@13
    move-object v6, v1

    #@14
    move-object v7, p3

    #@15
    .line 3919
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;Ljava/util/function/BiFunction;)V

    #@18
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->invoke()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method

.method public reduceKeys(JLjava/util/function/Function;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function",
            "<-TK;+TU;>;",
            "Ljava/util/function/BiFunction",
            "<-TU;-TU;+TU;>;)TU;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    .local p4, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    const/4 v3, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 3943
    if-eqz p3, :cond_0

    #@4
    if-nez p4, :cond_1

    #@6
    .line 3944
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@b
    throw v0

    #@c
    .line 3945
    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;

    #@e
    .line 3946
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    #@11
    move-result v2

    #@12
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@14
    move v4, v3

    #@15
    move-object v6, v1

    #@16
    move-object v7, p3

    #@17
    move-object v8, p4

    #@18
    .line 3945
    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;Ljava/util/function/Function;Ljava/util/function/BiFunction;)V

    #@1b
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;->invoke()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method public reduceKeysToDouble(JLjava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)D
    .locals 11
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # D
    .param p6, "reducer"    # Ljava/util/function/DoubleBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToDoubleFunction",
            "<-TK;>;D",
            "Ljava/util/function/DoubleBinaryOperator;",
            ")D"
        }
    .end annotation

    #@0
    .prologue
    .line 3969
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TK;>;"
    if-eqz p3, :cond_0

    #@2
    if-nez p6, :cond_1

    #@4
    .line 3970
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 3971
    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;

    #@c
    .line 3972
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    #@f
    move-result v2

    #@10
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@12
    const/4 v1, 0x0

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x0

    #@15
    .line 3973
    const/4 v6, 0x0

    #@16
    move-object v7, p3

    #@17
    move-wide v8, p4

    #@18
    move-object/from16 v10, p6

    #@1a
    .line 3971
    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;Ljava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)V

    #@1d
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->invoke()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Ljava/lang/Double;

    #@23
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    #@26
    move-result-wide v0

    #@27
    return-wide v0
.end method

.method public reduceKeysToInt(JLjava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)I
    .locals 11
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # I
    .param p5, "reducer"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToIntFunction",
            "<-TK;>;I",
            "Ljava/util/function/IntBinaryOperator;",
            ")I"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TK;>;"
    const/4 v3, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 4021
    if-eqz p3, :cond_0

    #@4
    if-nez p5, :cond_1

    #@6
    .line 4022
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@b
    throw v0

    #@c
    .line 4023
    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;

    #@e
    .line 4024
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    #@11
    move-result v2

    #@12
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@14
    move v4, v3

    #@15
    move-object v6, v1

    #@16
    move-object v7, p3

    #@17
    move v8, p4

    #@18
    move-object/from16 v9, p5

    #@1a
    .line 4023
    invoke-direct/range {v0 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V

    #@1d
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->invoke()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Ljava/lang/Integer;

    #@23
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@26
    move-result v0

    #@27
    return v0
.end method

.method public reduceKeysToLong(JLjava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)J
    .locals 11
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # J
    .param p6, "reducer"    # Ljava/util/function/LongBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToLongFunction",
            "<-TK;>;J",
            "Ljava/util/function/LongBinaryOperator;",
            ")J"
        }
    .end annotation

    #@0
    .prologue
    .line 3995
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TK;>;"
    if-eqz p3, :cond_0

    #@2
    if-nez p6, :cond_1

    #@4
    .line 3996
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 3997
    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;

    #@c
    .line 3998
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    #@f
    move-result v2

    #@10
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@12
    const/4 v1, 0x0

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x0

    #@15
    .line 3999
    const/4 v6, 0x0

    #@16
    move-object v7, p3

    #@17
    move-wide v8, p4

    #@18
    move-object/from16 v10, p6

    #@1a
    .line 3997
    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;Ljava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)V

    #@1d
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->invoke()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Ljava/lang/Long;

    #@23
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@26
    move-result-wide v0

    #@27
    return-wide v0
.end method

.method public reduceToDouble(JLjava/util/function/ToDoubleBiFunction;DLjava/util/function/DoubleBinaryOperator;)D
    .locals 11
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # D
    .param p6, "reducer"    # Ljava/util/function/DoubleBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToDoubleBiFunction",
            "<-TK;-TV;>;D",
            "Ljava/util/function/DoubleBinaryOperator;",
            ")D"
        }
    .end annotation

    #@0
    .prologue
    .line 3783
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToDoubleBiFunction;, "Ljava/util/function/ToDoubleBiFunction<-TK;-TV;>;"
    if-eqz p3, :cond_0

    #@2
    if-nez p6, :cond_1

    #@4
    .line 3784
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 3785
    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

    #@c
    .line 3786
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    #@f
    move-result v2

    #@10
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@12
    const/4 v1, 0x0

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x0

    #@15
    .line 3787
    const/4 v6, 0x0

    #@16
    move-object v7, p3

    #@17
    move-wide v8, p4

    #@18
    move-object/from16 v10, p6

    #@1a
    .line 3785
    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;Ljava/util/function/ToDoubleBiFunction;DLjava/util/function/DoubleBinaryOperator;)V

    #@1d
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->invoke()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Ljava/lang/Double;

    #@23
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    #@26
    move-result-wide v0

    #@27
    return-wide v0
.end method

.method public reduceToInt(JLjava/util/function/ToIntBiFunction;ILjava/util/function/IntBinaryOperator;)I
    .locals 11
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # I
    .param p5, "reducer"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToIntBiFunction",
            "<-TK;-TV;>;I",
            "Ljava/util/function/IntBinaryOperator;",
            ")I"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToIntBiFunction;, "Ljava/util/function/ToIntBiFunction<-TK;-TV;>;"
    const/4 v3, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 3835
    if-eqz p3, :cond_0

    #@4
    if-nez p5, :cond_1

    #@6
    .line 3836
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@b
    throw v0

    #@c
    .line 3837
    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

    #@e
    .line 3838
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    #@11
    move-result v2

    #@12
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@14
    move v4, v3

    #@15
    move-object v6, v1

    #@16
    move-object v7, p3

    #@17
    move v8, p4

    #@18
    move-object/from16 v9, p5

    #@1a
    .line 3837
    invoke-direct/range {v0 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;Ljava/util/function/ToIntBiFunction;ILjava/util/function/IntBinaryOperator;)V

    #@1d
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->invoke()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Ljava/lang/Integer;

    #@23
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@26
    move-result v0

    #@27
    return v0
.end method

.method public reduceToLong(JLjava/util/function/ToLongBiFunction;JLjava/util/function/LongBinaryOperator;)J
    .locals 11
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # J
    .param p6, "reducer"    # Ljava/util/function/LongBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToLongBiFunction",
            "<-TK;-TV;>;J",
            "Ljava/util/function/LongBinaryOperator;",
            ")J"
        }
    .end annotation

    #@0
    .prologue
    .line 3809
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    if-eqz p3, :cond_0

    #@2
    if-nez p6, :cond_1

    #@4
    .line 3810
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 3811
    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

    #@c
    .line 3812
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    #@f
    move-result v2

    #@10
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@12
    const/4 v1, 0x0

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x0

    #@15
    .line 3813
    const/4 v6, 0x0

    #@16
    move-object v7, p3

    #@17
    move-wide v8, p4

    #@18
    move-object/from16 v10, p6

    #@1a
    .line 3811
    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;Ljava/util/function/ToLongBiFunction;JLjava/util/function/LongBinaryOperator;)V

    #@1d
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->invoke()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Ljava/lang/Long;

    #@23
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@26
    move-result-wide v0

    #@27
    return-wide v0
.end method

.method public reduceValues(JLjava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/BiFunction",
            "<-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    const/4 v3, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 4104
    if-nez p3, :cond_0

    #@4
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 4105
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    #@c
    .line 4106
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    #@f
    move-result v2

    #@10
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@12
    move v4, v3

    #@13
    move-object v6, v1

    #@14
    move-object v7, p3

    #@15
    .line 4105
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;Ljava/util/function/BiFunction;)V

    #@18
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->invoke()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method

.method public reduceValues(JLjava/util/function/Function;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function",
            "<-TV;+TU;>;",
            "Ljava/util/function/BiFunction",
            "<-TU;-TU;+TU;>;)TU;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    .local p4, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    const/4 v3, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 4129
    if-eqz p3, :cond_0

    #@4
    if-nez p4, :cond_1

    #@6
    .line 4130
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@b
    throw v0

    #@c
    .line 4131
    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;

    #@e
    .line 4132
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    #@11
    move-result v2

    #@12
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@14
    move v4, v3

    #@15
    move-object v6, v1

    #@16
    move-object v7, p3

    #@17
    move-object v8, p4

    #@18
    .line 4131
    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;Ljava/util/function/Function;Ljava/util/function/BiFunction;)V

    #@1b
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->invoke()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method public reduceValuesToDouble(JLjava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)D
    .locals 11
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # D
    .param p6, "reducer"    # Ljava/util/function/DoubleBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToDoubleFunction",
            "<-TV;>;D",
            "Ljava/util/function/DoubleBinaryOperator;",
            ")D"
        }
    .end annotation

    #@0
    .prologue
    .line 4155
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TV;>;"
    if-eqz p3, :cond_0

    #@2
    if-nez p6, :cond_1

    #@4
    .line 4156
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 4157
    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToDoubleTask;

    #@c
    .line 4158
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    #@f
    move-result v2

    #@10
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@12
    const/4 v1, 0x0

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x0

    #@15
    .line 4159
    const/4 v6, 0x0

    #@16
    move-object v7, p3

    #@17
    move-wide v8, p4

    #@18
    move-object/from16 v10, p6

    #@1a
    .line 4157
    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToDoubleTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToDoubleTask;Ljava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)V

    #@1d
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToDoubleTask;->invoke()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Ljava/lang/Double;

    #@23
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    #@26
    move-result-wide v0

    #@27
    return-wide v0
.end method

.method public reduceValuesToInt(JLjava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)I
    .locals 11
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # I
    .param p5, "reducer"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToIntFunction",
            "<-TV;>;I",
            "Ljava/util/function/IntBinaryOperator;",
            ")I"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TV;>;"
    const/4 v3, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 4207
    if-eqz p3, :cond_0

    #@4
    if-nez p5, :cond_1

    #@6
    .line 4208
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@b
    throw v0

    #@c
    .line 4209
    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

    #@e
    .line 4210
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    #@11
    move-result v2

    #@12
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@14
    move v4, v3

    #@15
    move-object v6, v1

    #@16
    move-object v7, p3

    #@17
    move v8, p4

    #@18
    move-object/from16 v9, p5

    #@1a
    .line 4209
    invoke-direct/range {v0 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V

    #@1d
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->invoke()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Ljava/lang/Integer;

    #@23
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@26
    move-result v0

    #@27
    return v0
.end method

.method public reduceValuesToLong(JLjava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)J
    .locals 11
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # J
    .param p6, "reducer"    # Ljava/util/function/LongBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToLongFunction",
            "<-TV;>;J",
            "Ljava/util/function/LongBinaryOperator;",
            ")J"
        }
    .end annotation

    #@0
    .prologue
    .line 4181
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TV;>;"
    if-eqz p3, :cond_0

    #@2
    if-nez p6, :cond_1

    #@4
    .line 4182
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 4183
    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;

    #@c
    .line 4184
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    #@f
    move-result v2

    #@10
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@12
    const/4 v1, 0x0

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x0

    #@15
    .line 4185
    const/4 v6, 0x0

    #@16
    move-object v7, p3

    #@17
    move-wide v8, p4

    #@18
    move-object/from16 v10, p6

    #@1a
    .line 4183
    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;Ljava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)V

    #@1d
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->invoke()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Ljava/lang/Long;

    #@23
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@26
    move-result-wide v0

    #@27
    return-wide v0
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
    .line 1078
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
    .line 1531
    if-nez p1, :cond_0

    #@4
    .line 1532
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 1533
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

.method removeEntryIf(Ljava/util/function/Predicate;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v10, 0x0

    #@1
    .line 1612
    if-nez p1, :cond_0

    #@3
    new-instance v7, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v7

    #@9
    .line 1614
    :cond_0
    const/4 v4, 0x0

    #@a
    .line 1615
    .local v4, "removed":Z
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@c
    .local v5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v5, :cond_2

    #@e
    .line 1616
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    #@10
    array-length v7, v5

    #@11
    array-length v8, v5

    #@12
    const/4 v9, 0x0

    #@13
    invoke-direct {v1, v5, v7, v9, v8}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    #@16
    .line 1617
    .local v1, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@19
    move-result-object v3

    #@1a
    .local v3, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_2

    #@1c
    .line 1618
    iget-object v2, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@1e
    .line 1619
    .local v2, "k":Ljava/lang/Object;, "TK;"
    iget-object v6, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@20
    .line 1620
    .local v6, "v":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@22
    invoke-direct {v0, v2, v6}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@25
    .line 1621
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    #@28
    move-result v7

    #@29
    if-eqz v7, :cond_1

    #@2b
    invoke-virtual {p0, v2, v10, v6}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    move-result-object v7

    #@2f
    if-eqz v7, :cond_1

    #@31
    .line 1622
    const/4 v4, 0x1

    #@32
    goto :goto_0

    #@33
    .line 1625
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    .end local v3    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v6    # "v":Ljava/lang/Object;, "TV;"
    :cond_2
    return v4
.end method

.method removeValueIf(Ljava/util/function/Predicate;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-TV;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TV;>;"
    const/4 v9, 0x0

    #@1
    .line 1632
    if-nez p1, :cond_0

    #@3
    new-instance v6, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v6

    #@9
    .line 1634
    :cond_0
    const/4 v3, 0x0

    #@a
    .line 1635
    .local v3, "removed":Z
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@c
    .local v4, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v4, :cond_2

    #@e
    .line 1636
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    #@10
    array-length v6, v4

    #@11
    array-length v7, v4

    #@12
    const/4 v8, 0x0

    #@13
    invoke-direct {v0, v4, v6, v8, v7}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    #@16
    .line 1637
    .local v0, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@19
    move-result-object v2

    #@1a
    .local v2, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_2

    #@1c
    .line 1638
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@1e
    .line 1639
    .local v1, "k":Ljava/lang/Object;, "TK;"
    iget-object v5, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@20
    .line 1640
    .local v5, "v":Ljava/lang/Object;, "TV;"
    invoke-interface {p1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    #@23
    move-result v6

    #@24
    if-eqz v6, :cond_1

    #@26
    invoke-virtual {p0, v1, v9, v5}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    move-result-object v6

    #@2a
    if-eqz v6, :cond_1

    #@2c
    .line 1641
    const/4 v3, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 1644
    .end local v0    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v1    # "k":Ljava/lang/Object;, "TK;"
    .end local v2    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v5    # "v":Ljava/lang/Object;, "TV;"
    :cond_2
    return v3
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
    .line 1555
    if-eqz p1, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    .line 1556
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v0

    #@b
    .line 1557
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
    .line 1542
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 1543
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 1542
    :cond_1
    if-eqz p3, :cond_0

    #@c
    .line 1544
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

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1590
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v6, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v6

    #@8
    .line 1592
    :cond_0
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@a
    .local v5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v5, :cond_4

    #@c
    .line 1593
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    #@e
    array-length v6, v5

    #@f
    array-length v7, v5

    #@10
    const/4 v8, 0x0

    #@11
    invoke-direct {v0, v5, v6, v8, v7}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    #@14
    .line 1594
    .local v0, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@17
    move-result-object v4

    #@18
    .local v4, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v4, :cond_4

    #@1a
    .line 1595
    iget-object v3, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@1c
    .line 1596
    .local v3, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v1, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@1e
    .line 1597
    .local v1, "key":Ljava/lang/Object;, "TK;"
    :cond_2
    invoke-interface {p1, v1, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    .line 1598
    .local v2, "newValue":Ljava/lang/Object;, "TV;"
    if-nez v2, :cond_3

    #@24
    .line 1599
    new-instance v6, Ljava/lang/NullPointerException;

    #@26
    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    #@29
    throw v6

    #@2a
    .line 1600
    :cond_3
    invoke-virtual {p0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    move-result-object v6

    #@2e
    if-nez v6, :cond_1

    #@30
    .line 1601
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    move-result-object v3

    #@34
    if-nez v3, :cond_2

    #@36
    goto :goto_0

    #@37
    .line 1589
    .end local v0    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v2    # "newValue":Ljava/lang/Object;, "TV;"
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local v4    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_4
    return-void
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
    .line 1087
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
    .line 1088
    .local v9, "hash":I
    move-object/from16 v0, p0

    #@a
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@c
    move-object/from16 v18, v0

    #@e
    .line 1090
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
    .line 1156
    .end local v11    # "n":I
    :cond_1
    const/16 v20, 0x0

    #@17
    return-object v20

    #@18
    .line 1091
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
    .line 1093
    iget v8, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@26
    .local v8, "fh":I
    const/16 v20, -0x1

    #@28
    move/from16 v0, v20

    #@2a
    if-ne v8, v0, :cond_3

    #@2c
    .line 1094
    move-object/from16 v0, p0

    #@2e
    move-object/from16 v1, v18

    #@30
    invoke-virtual {v0, v1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@33
    move-result-object v18

    #@34
    goto :goto_0

    #@35
    .line 1096
    :cond_3
    const/4 v12, 0x0

    #@36
    .line 1097
    .local v12, "oldVal":Ljava/lang/Object;, "TV;"
    const/16 v19, 0x0

    #@38
    .line 1098
    .local v19, "validated":Z
    monitor-enter v7

    #@39
    .line 1099
    :try_start_0
    move-object/from16 v0, v18

    #@3b
    invoke-static {v0, v10}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@3e
    move-result-object v20

    #@3f
    move-object/from16 v0, v20

    #@41
    if-ne v0, v7, :cond_7

    #@43
    .line 1100
    if-ltz v8, :cond_d

    #@45
    .line 1101
    const/16 v19, 0x1

    #@47
    .line 1102
    move-object v4, v7

    #@48
    .local v4, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v14, 0x0

    #@49
    .line 1104
    :cond_4
    iget v0, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@4b
    move/from16 v20, v0

    #@4d
    move/from16 v0, v20

    #@4f
    if-ne v0, v9, :cond_c

    #@51
    .line 1105
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@53
    .local v5, "ek":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p1

    #@55
    if-eq v5, v0, :cond_5

    #@57
    .line 1106
    if-eqz v5, :cond_c

    #@59
    move-object/from16 v0, p1

    #@5b
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@5e
    move-result v20

    #@5f
    .line 1104
    if-eqz v20, :cond_c

    #@61
    .line 1107
    :cond_5
    iget-object v6, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@63
    .line 1108
    .local v6, "ev":Ljava/lang/Object;, "TV;"
    if-eqz p3, :cond_6

    #@65
    move-object/from16 v0, p3

    #@67
    if-ne v0, v6, :cond_9

    #@69
    .line 1110
    :cond_6
    :goto_1
    move-object v12, v6

    #@6a
    .line 1111
    if-eqz p2, :cond_a

    #@6c
    .line 1112
    move-object/from16 v0, p2

    #@6e
    iput-object v0, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@70
    .end local v4    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v5    # "ek":Ljava/lang/Object;, "TK;"
    .end local v6    # "ev":Ljava/lang/Object;, "TV;"
    .end local v12    # "oldVal":Ljava/lang/Object;, "TV;"
    :cond_7
    :goto_2
    monitor-exit v7

    #@71
    .line 1146
    if-eqz v19, :cond_0

    #@73
    .line 1147
    if-eqz v12, :cond_1

    #@75
    .line 1148
    if-nez p2, :cond_8

    #@77
    .line 1149
    const-wide/16 v20, -0x1

    #@79
    const/16 v22, -0x1

    #@7b
    move-object/from16 v0, p0

    #@7d
    move-wide/from16 v1, v20

    #@7f
    move/from16 v3, v22

    #@81
    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    #@84
    .line 1150
    :cond_8
    return-object v12

    #@85
    .line 1109
    .restart local v4    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v5    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v6    # "ev":Ljava/lang/Object;, "TV;"
    .restart local v12    # "oldVal":Ljava/lang/Object;, "TV;"
    :cond_9
    if-eqz v6, :cond_7

    #@87
    :try_start_1
    move-object/from16 v0, p3

    #@89
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@8c
    move-result v20

    #@8d
    .line 1108
    if-eqz v20, :cond_7

    #@8f
    goto :goto_1

    #@90
    .line 1113
    :cond_a
    if-eqz v14, :cond_b

    #@92
    .line 1114
    iget-object v0, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@94
    move-object/from16 v20, v0

    #@96
    move-object/from16 v0, v20

    #@98
    iput-object v0, v14, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@9a
    goto :goto_2

    #@9b
    .line 1098
    .end local v4    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v5    # "ek":Ljava/lang/Object;, "TK;"
    .end local v6    # "ev":Ljava/lang/Object;, "TV;"
    .end local v12    # "oldVal":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v20

    #@9c
    monitor-exit v7

    #@9d
    throw v20

    #@9e
    .line 1116
    .restart local v4    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v5    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v6    # "ev":Ljava/lang/Object;, "TV;"
    .restart local v12    # "oldVal":Ljava/lang/Object;, "TV;"
    :cond_b
    :try_start_2
    iget-object v0, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@a0
    move-object/from16 v20, v0

    #@a2
    move-object/from16 v0, v18

    #@a4
    move-object/from16 v1, v20

    #@a6
    invoke-static {v0, v10, v1}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    #@a9
    goto :goto_2

    #@aa
    .line 1120
    .end local v5    # "ek":Ljava/lang/Object;, "TK;"
    .end local v6    # "ev":Ljava/lang/Object;, "TV;"
    :cond_c
    move-object v14, v4

    #@ab
    .line 1121
    .local v14, "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v4, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@ad
    if-nez v4, :cond_4

    #@af
    goto :goto_2

    #@b0
    .line 1125
    .end local v4    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v14    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_d
    instance-of v0, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    #@b2
    move/from16 v20, v0

    #@b4
    if-eqz v20, :cond_11

    #@b6
    .line 1126
    const/16 v19, 0x1

    #@b8
    .line 1127
    move-object v0, v7

    #@b9
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    #@bb
    move-object/from16 v17, v0

    #@bd
    .line 1129
    .local v17, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    move-object/from16 v0, v17

    #@bf
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@c1
    move-object/from16 v16, v0

    #@c3
    .local v16, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v16, :cond_7

    #@c5
    .line 1130
    const/16 v20, 0x0

    #@c7
    move-object/from16 v0, v16

    #@c9
    move-object/from16 v1, p1

    #@cb
    move-object/from16 v2, v20

    #@cd
    invoke-virtual {v0, v9, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@d0
    move-result-object v13

    #@d1
    .local v13, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v13, :cond_7

    #@d3
    .line 1131
    iget-object v15, v13, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    #@d5
    .line 1132
    .local v15, "pv":Ljava/lang/Object;, "TV;"
    if-eqz p3, :cond_e

    #@d7
    move-object/from16 v0, p3

    #@d9
    if-ne v0, v15, :cond_f

    #@db
    .line 1134
    :cond_e
    :goto_3
    move-object v12, v15

    #@dc
    .line 1135
    if-eqz p2, :cond_10

    #@de
    .line 1136
    move-object/from16 v0, p2

    #@e0
    iput-object v0, v13, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    #@e2
    goto :goto_2

    #@e3
    .line 1133
    :cond_f
    if-eqz v15, :cond_7

    #@e5
    move-object/from16 v0, p3

    #@e7
    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@ea
    move-result v20

    #@eb
    .line 1132
    if-eqz v20, :cond_7

    #@ed
    goto :goto_3

    #@ee
    .line 1137
    :cond_10
    move-object/from16 v0, v17

    #@f0
    invoke-virtual {v0, v13}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->removeTreeNode(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    #@f3
    move-result v20

    #@f4
    if-eqz v20, :cond_7

    #@f6
    .line 1138
    move-object/from16 v0, v17

    #@f8
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@fa
    move-object/from16 v20, v0

    #@fc
    invoke-static/range {v20 .. v20}, Ljava/util/concurrent/ConcurrentHashMap;->untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@ff
    move-result-object v20

    #@100
    move-object/from16 v0, v18

    #@102
    move-object/from16 v1, v20

    #@104
    invoke-static {v0, v10, v1}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    #@107
    goto/16 :goto_2

    #@109
    .line 1142
    .end local v13    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v15    # "pv":Ljava/lang/Object;, "TV;"
    .end local v16    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v17    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    :cond_11
    instance-of v0, v7, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    #@10b
    move/from16 v20, v0

    #@10d
    if-eqz v20, :cond_7

    #@10f
    .line 1143
    new-instance v20, Ljava/lang/IllegalStateException;

    #@111
    const-string/jumbo v21, "Recursive update"

    #@114
    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@117
    throw v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public search(JLjava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TU;>;)TU;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "searchFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    const/4 v1, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 3732
    if-nez p3, :cond_0

    #@4
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 3733
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;

    #@c
    .line 3734
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    #@f
    move-result v2

    #@10
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@12
    .line 3735
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    #@14
    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@17
    move v4, v3

    #@18
    move-object v6, p3

    #@19
    .line 3733
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/BiFunction;Ljava/util/concurrent/atomic/AtomicReference;)V

    #@1c
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->invoke()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method

.method public searchEntries(JLjava/util/function/Function;)Ljava/lang/Object;
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;+TU;>;)TU;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    const/4 v1, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 4270
    if-nez p3, :cond_0

    #@4
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 4271
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;

    #@c
    .line 4272
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    #@f
    move-result v2

    #@10
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@12
    .line 4273
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    #@14
    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@17
    move v4, v3

    #@18
    move-object v6, p3

    #@19
    .line 4271
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/concurrent/atomic/AtomicReference;)V

    #@1c
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->invoke()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method

.method public searchKeys(JLjava/util/function/Function;)Ljava/lang/Object;
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function",
            "<-TK;+TU;>;)TU;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    const/4 v1, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 3899
    if-nez p3, :cond_0

    #@4
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 3900
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;

    #@c
    .line 3901
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    #@f
    move-result v2

    #@10
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@12
    .line 3902
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    #@14
    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@17
    move v4, v3

    #@18
    move-object v6, p3

    #@19
    .line 3900
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/concurrent/atomic/AtomicReference;)V

    #@1c
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;->invoke()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method

.method public searchValues(JLjava/util/function/Function;)Ljava/lang/Object;
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function",
            "<-TV;+TU;>;)TU;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    const/4 v1, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 4086
    if-nez p3, :cond_0

    #@4
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 4087
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;

    #@c
    .line 4088
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    #@f
    move-result v2

    #@10
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@12
    .line 4089
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    #@14
    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@17
    move v4, v3

    #@18
    move-object v6, p3

    #@19
    .line 4087
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/concurrent/atomic/AtomicReference;)V

    #@1c
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;->invoke()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method

.method public size()I
    .locals 4

    #@0
    .prologue
    .line 889
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    #@3
    move-result-wide v0

    #@4
    .line 890
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
    .line 891
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
    .line 892
    :cond_1
    long-to-int v2, v0

    #@18
    goto :goto_0
.end method

.method final sumCount()J
    .locals 8

    #@0
    .prologue
    .line 2543
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    #@2
    .line 2544
    .local v1, "as":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    iget-wide v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->baseCount:J

    #@4
    .line 2545
    .local v4, "sum":J
    if-eqz v1, :cond_1

    #@6
    .line 2546
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    array-length v3, v1

    #@8
    if-ge v2, v3, :cond_1

    #@a
    .line 2547
    aget-object v0, v1, v2

    #@c
    .local v0, "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    if-eqz v0, :cond_0

    #@e
    .line 2548
    iget-wide v6, v0, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;->value:J

    #@10
    add-long/2addr v4, v6

    #@11
    .line 2546
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@13
    goto :goto_0

    #@14
    .line 2551
    .end local v0    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .end local v2    # "i":I
    :cond_1
    return-wide v4
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    .line 1297
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@2
    .local v5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v5, :cond_3

    #@4
    const/4 v0, 0x0

    #@5
    .line 1298
    .local v0, "f":I
    :goto_0
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    #@7
    const/4 v7, 0x0

    #@8
    invoke-direct {v1, v5, v0, v7, v0}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    #@b
    .line 1299
    .local v1, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    .line 1300
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/16 v7, 0x7b

    #@12
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@15
    .line 1302
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@18
    move-result-object v3

    #@19
    .local v3, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_2

    #@1b
    .line 1304
    :goto_1
    iget-object v2, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@1d
    .line 1305
    .local v2, "k":Ljava/lang/Object;, "TK;"
    iget-object v6, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@1f
    .line 1306
    .local v6, "v":Ljava/lang/Object;, "TV;"
    if-ne v2, p0, :cond_0

    #@21
    const-string/jumbo v2, "(this Map)"

    #@24
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    .line 1307
    const/16 v7, 0x3d

    #@29
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2c
    .line 1308
    if-ne v6, p0, :cond_1

    #@2e
    const-string/jumbo v6, "(this Map)"

    #@31
    .end local v6    # "v":Ljava/lang/Object;, "TV;"
    :cond_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    .line 1309
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@37
    move-result-object v3

    #@38
    if-nez v3, :cond_4

    #@3a
    .line 1314
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
    .line 1297
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
    .line 1311
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
    .line 1241
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
