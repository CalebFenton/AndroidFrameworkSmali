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
        Ljava/util/concurrent/ConcurrentHashMap$Traverser;,
        Ljava/util/concurrent/ConcurrentHashMap$TreeBin;,
        Ljava/util/concurrent/ConcurrentHashMap$TreeNode;,
        Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;,
        Ljava/util/concurrent/ConcurrentHashMap$KeySetView;,
        Ljava/util/concurrent/ConcurrentHashMap$ValuesView;,
        Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;,
        Ljava/util/concurrent/ConcurrentHashMap$Segment;,
        Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$CounterCell;,
        Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask;,
        Ljava/util/concurrent/ConcurrentHashMap$BulkTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;,
        Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;,
        Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;,
        Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToDoubleTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;,
        Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;,
        Ljava/util/concurrent/ConcurrentHashMap$CollectionView;,
        Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;,
        Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;,
        Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;,
        Ljava/util/concurrent/ConcurrentHashMap$MapEntry;,
        Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$TableStack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final greylist-max-o ABASE:I

.field private static final greylist-max-o ASHIFT:I

.field private static final greylist-max-o BASECOUNT:J

.field private static final greylist-max-o CELLSBUSY:J

.field private static final greylist-max-o CELLVALUE:J

.field private static final greylist-max-o DEFAULT_CAPACITY:I = 0x10

.field private static final greylist-max-o DEFAULT_CONCURRENCY_LEVEL:I = 0x10

.field static final greylist-max-o HASH_BITS:I = 0x7fffffff

.field private static final greylist-max-o LOAD_FACTOR:F = 0.75f

.field private static final greylist-max-o MAXIMUM_CAPACITY:I = 0x40000000

.field static final greylist-max-o MAX_ARRAY_SIZE:I = 0x7ffffff7

.field private static final greylist-max-o MAX_RESIZERS:I = 0xffff

.field private static final greylist-max-o MIN_TRANSFER_STRIDE:I = 0x10

.field static final greylist-max-o MIN_TREEIFY_CAPACITY:I = 0x40

.field static final greylist-max-o MOVED:I = -0x1

.field static final greylist-max-o NCPU:I

.field static final greylist-max-o RESERVED:I = -0x3

.field private static final greylist-max-o RESIZE_STAMP_BITS:I = 0x10

.field private static final greylist-max-o RESIZE_STAMP_SHIFT:I = 0x10

.field private static final greylist-max-o SIZECTL:J

.field private static final greylist-max-o TRANSFERINDEX:J

.field static final greylist-max-o TREEBIN:I = -0x2

.field static final greylist-max-o TREEIFY_THRESHOLD:I = 0x8

.field private static final blacklist U:Ljdk/internal/misc/Unsafe;

.field static final greylist-max-o UNTREEIFY_THRESHOLD:I = 0x6

.field private static final whitelist serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final whitelist serialVersionUID:J = 0x6499de129d87293dL


# instance fields
.field private volatile transient greylist-max-o baseCount:J

.field private volatile transient greylist-max-o cellsBusy:I

.field private volatile transient greylist-max-o counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

.field private transient greylist-max-o entrySet:Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$EntrySetView<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient greylist-max-o keySet:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile transient greylist-max-o nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile transient greylist-max-o sizeCtl:I

.field volatile transient greylist-max-o table:[Ljava/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile transient greylist-max-o transferIndex:I

.field private transient greylist-max-o values:Ljava/util/concurrent/ConcurrentHashMap$ValuesView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$ValuesView<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetU()Ljdk/internal/misc/Unsafe;
    .registers 1

    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Ljdk/internal/misc/Unsafe;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 597
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Ljava/util/concurrent/ConcurrentHashMap;->NCPU:I

    .line 609
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "segments"

    const-class v3, [Ljava/util/concurrent/ConcurrentHashMap$Segment;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "segmentMask"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "segmentShift"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Ljava/util/concurrent/ConcurrentHashMap;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 6366
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Ljdk/internal/misc/Unsafe;

    .line 6367
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Ljdk/internal/misc/Unsafe;

    .line 6368
    const-class v1, Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "sizeCtl"

    invoke-virtual {v0, v1, v2}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    .line 6369
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Ljdk/internal/misc/Unsafe;

    .line 6370
    const-string v2, "transferIndex"

    invoke-virtual {v0, v1, v2}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/ConcurrentHashMap;->TRANSFERINDEX:J

    .line 6371
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Ljdk/internal/misc/Unsafe;

    .line 6372
    const-string v2, "baseCount"

    invoke-virtual {v0, v1, v2}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/ConcurrentHashMap;->BASECOUNT:J

    .line 6373
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Ljdk/internal/misc/Unsafe;

    .line 6374
    const-string v2, "cellsBusy"

    invoke-virtual {v0, v1, v2}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    .line 6375
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Ljdk/internal/misc/Unsafe;

    const-class v1, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    .line 6376
    const-string v2, "value"

    invoke-virtual {v0, v1, v2}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/ConcurrentHashMap;->CELLVALUE:J

    .line 6377
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Ljdk/internal/misc/Unsafe;

    const-class v1, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    invoke-virtual {v0, v1}, Ljdk/internal/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    sput v0, Ljava/util/concurrent/ConcurrentHashMap;->ABASE:I

    .line 6381
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Ljdk/internal/misc/Unsafe;

    const-class v1, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    invoke-virtual {v0, v1}, Ljdk/internal/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    .line 6382
    .local v0, "scale":I
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-nez v1, :cond_93

    .line 6384
    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    sput v1, Ljava/util/concurrent/ConcurrentHashMap;->ASHIFT:I

    .line 6388
    const-class v1, Ljava/util/concurrent/locks/LockSupport;

    .line 6391
    .local v1, "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    .line 6392
    .end local v0    # "scale":I
    .end local v1    # "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void

    .line 6383
    .restart local v0    # "scale":I
    :cond_93
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    const-string v2, "array index scale not a power of two"

    invoke-direct {v1, v2}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 828
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 829
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 4
    .param p1, "initialCapacity"    # I

    .line 842
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 843
    return-void
.end method

.method public constructor whitelist test-api <init>(IF)V
    .registers 4
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 871
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 872
    return-void
.end method

.method public constructor whitelist test-api <init>(IFI)V
    .registers 8
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F
    .param p3, "concurrencyLevel"    # I

    .line 893
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 894
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_29

    if-ltz p1, :cond_29

    if-lez p3, :cond_29

    .line 896
    if-ge p1, p3, :cond_f

    .line 897
    move p1, p3

    .line 898
    :cond_f
    int-to-long v0, p1

    long-to-float v0, v0

    div-float/2addr v0, p2

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-long v0, v0

    .line 899
    .local v0, "size":J
    const-wide/32 v2, 0x40000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_21

    .line 900
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_26

    :cond_21
    long-to-int v2, v0

    invoke-static {v2}, Ljava/util/concurrent/ConcurrentHashMap;->tableSizeFor(I)I

    move-result v2

    .line 901
    .local v2, "cap":I
    :goto_26
    iput v2, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 902
    return-void

    .line 895
    .end local v0    # "size":J
    .end local v2    # "cap":I
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 850
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 851
    const/16 v0, 0x10

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 852
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 853
    return-void
.end method

.method private final greylist-max-o addCount(JI)V
    .registers 26
    .param p1, "x"    # J
    .param p3, "check"    # I

    .line 2331
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    move-object/from16 v1, p0

    move-wide/from16 v8, p1

    move/from16 v10, p3

    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object v11, v0

    .local v11, "cs":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    if-nez v0, :cond_1b

    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap;->BASECOUNT:J

    iget-wide v4, v1, Ljava/util/concurrent/ConcurrentHashMap;->baseCount:J

    move-wide v12, v4

    .local v12, "b":J
    add-long v6, v12, v8

    move-wide v14, v6

    .line 2332
    .local v14, "s":J
    invoke-virtual/range {v0 .. v7}, Ljdk/internal/misc/Unsafe;->compareAndSetLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 2334
    .end local v12    # "b":J
    .end local v14    # "s":J
    :cond_1b
    const/4 v0, 0x1

    .line 2335
    .local v0, "uncontended":Z
    if-eqz v11, :cond_ac

    array-length v2, v11

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move v4, v2

    .local v4, "m":I
    if-ltz v2, :cond_ac

    .line 2336
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v2

    and-int/2addr v2, v4

    aget-object v2, v11, v2

    move-object v13, v2

    .local v13, "c":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    if-eqz v2, :cond_ac

    sget-object v12, Ljava/util/concurrent/ConcurrentHashMap;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v14, Ljava/util/concurrent/ConcurrentHashMap;->CELLVALUE:J

    iget-wide v5, v13, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;->value:J

    move-wide/from16 v20, v5

    .local v20, "v":J
    add-long v18, v20, v8

    .line 2338
    move-wide/from16 v16, v5

    invoke-virtual/range {v12 .. v19}, Ljdk/internal/misc/Unsafe;->compareAndSetLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    move v0, v2

    if-nez v2, :cond_43

    goto/16 :goto_ac

    .line 2342
    :cond_43
    if-gt v10, v3, :cond_46

    .line 2343
    return-void

    .line 2344
    :cond_46
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v14

    .line 2346
    .end local v0    # "uncontended":Z
    .end local v4    # "m":I
    .end local v13    # "c":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .end local v20    # "v":J
    .restart local v14    # "s":J
    :cond_4a
    if-ltz v10, :cond_ab

    .line 2348
    :goto_4c
    iget v4, v1, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    move v0, v4

    .local v0, "sc":I
    int-to-long v2, v4

    cmp-long v2, v14, v2

    if-ltz v2, :cond_aa

    iget-object v2, v1, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v6, v2

    .local v6, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_a8

    array-length v2, v6

    move v7, v2

    .local v7, "n":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ge v2, v3, :cond_a6

    .line 2350
    invoke-static {v7}, Ljava/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    move-result v2

    shl-int/lit8 v12, v2, 0x10

    .line 2351
    .local v12, "rs":I
    if-gez v0, :cond_90

    .line 2352
    const v2, 0xffff

    add-int/2addr v2, v12

    if-eq v0, v2, :cond_8e

    add-int/lit8 v2, v12, 0x1

    if-eq v0, v2, :cond_8e

    iget-object v2, v1, Ljava/util/concurrent/ConcurrentHashMap;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v13, v2

    .local v13, "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_8c

    iget v2, v1, Ljava/util/concurrent/ConcurrentHashMap;->transferIndex:I

    if-gtz v2, :cond_7b

    .line 2354
    goto :goto_ab

    .line 2355
    :cond_7b
    move v4, v0

    .end local v0    # "sc":I
    .local v4, "sc":I
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    add-int/lit8 v5, v4, 0x1

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 2356
    invoke-direct {v1, v6, v13}, Ljava/util/concurrent/ConcurrentHashMap;->transfer([Ljava/util/concurrent/ConcurrentHashMap$Node;[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_a1

    .line 2352
    .end local v4    # "sc":I
    .restart local v0    # "sc":I
    :cond_8c
    move v4, v0

    .end local v0    # "sc":I
    .restart local v4    # "sc":I
    goto :goto_ab

    .end local v4    # "sc":I
    .end local v13    # "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v0    # "sc":I
    :cond_8e
    move v4, v0

    .end local v0    # "sc":I
    .restart local v4    # "sc":I
    goto :goto_ab

    .line 2358
    .end local v4    # "sc":I
    .restart local v0    # "sc":I
    :cond_90
    move v4, v0

    .end local v0    # "sc":I
    .restart local v4    # "sc":I
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    add-int/lit8 v5, v12, 0x2

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 2359
    const/4 v0, 0x0

    invoke-direct {v1, v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->transfer([Ljava/util/concurrent/ConcurrentHashMap$Node;[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2360
    :cond_a1
    :goto_a1
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v14

    .line 2361
    .end local v12    # "rs":I
    goto :goto_4c

    .line 2348
    .end local v4    # "sc":I
    .restart local v0    # "sc":I
    :cond_a6
    move v4, v0

    .end local v0    # "sc":I
    .restart local v4    # "sc":I
    goto :goto_ab

    .end local v4    # "sc":I
    .end local v7    # "n":I
    .restart local v0    # "sc":I
    :cond_a8
    move v4, v0

    .end local v0    # "sc":I
    .restart local v4    # "sc":I
    goto :goto_ab

    .end local v4    # "sc":I
    .end local v6    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v0    # "sc":I
    :cond_aa
    move v4, v0

    .line 2363
    .end local v0    # "sc":I
    :cond_ab
    :goto_ab
    return-void

    .line 2339
    .end local v14    # "s":J
    .local v0, "uncontended":Z
    :cond_ac
    :goto_ac
    invoke-direct {v1, v8, v9, v0}, Ljava/util/concurrent/ConcurrentHashMap;->fullAddCount(JZ)V

    .line 2340
    return-void
.end method

.method static final greylist-max-o casTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)Z
    .registers 10
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;I",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 765
    .local p0, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p2, "c":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p3, "v":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Ljdk/internal/misc/Unsafe;

    int-to-long v1, p1

    sget v3, Ljava/util/concurrent/ConcurrentHashMap;->ASHIFT:I

    shl-long/2addr v1, v3

    sget v3, Ljava/util/concurrent/ConcurrentHashMap;->ABASE:I

    int-to-long v3, v3

    add-long v2, v1, v3

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    .end local p0    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local p2    # "c":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local p3    # "v":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v4, "c":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v5, "v":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->compareAndSetReference(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static greylist-max-o comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;
    .registers 11
    .param p0, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 714
    instance-of v0, p0, Ljava/lang/Comparable;

    if-eqz v0, :cond_3f

    .line 716
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/String;

    if-ne v0, v2, :cond_e

    .line 717
    return-object v1

    .line 718
    :cond_e
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    move-object v2, v0

    .local v2, "ts":[Ljava/lang/reflect/Type;
    if-eqz v0, :cond_3f

    .line 719
    array-length v0, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_18
    if-ge v4, v0, :cond_3f

    aget-object v5, v2, v4

    .line 720
    .local v5, "t":Ljava/lang/reflect/Type;
    instance-of v6, v5, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_3c

    move-object v6, v5

    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    move-object v7, v6

    .line 721
    .local v7, "p":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v6

    const-class v8, Ljava/lang/Comparable;

    if-ne v6, v8, :cond_3c

    .line 723
    invoke-interface {v7}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v6

    move-object v8, v6

    .local v8, "as":[Ljava/lang/reflect/Type;
    if-eqz v6, :cond_3c

    array-length v6, v8

    const/4 v9, 0x1

    if-ne v6, v9, :cond_3c

    aget-object v6, v8, v3

    if-ne v6, v1, :cond_3c

    .line 725
    return-object v1

    .line 719
    .end local v5    # "t":Ljava/lang/reflect/Type;
    .end local v7    # "p":Ljava/lang/reflect/ParameterizedType;
    .end local v8    # "as":[Ljava/lang/reflect/Type;
    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 729
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "ts":[Ljava/lang/reflect/Type;
    :cond_3f
    const/4 v0, 0x0

    return-object v0
.end method

.method static greylist-max-o compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "k"    # Ljava/lang/Object;
    .param p2, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 738
    .local p0, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, p0, :cond_9

    goto :goto_11

    .line 739
    :cond_9
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_12

    .line 738
    :cond_11
    :goto_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method private final greylist-max-o fullAddCount(JZ)V
    .registers 28
    .param p1, "x"    # J
    .param p3, "wasUncontended"    # Z

    .line 2590
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    move-object/from16 v1, p0

    move-wide/from16 v8, p1

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v0

    move v2, v0

    .local v2, "h":I
    if-nez v0, :cond_14

    .line 2591
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->localInit()V

    .line 2592
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v2

    .line 2593
    const/4 v0, 0x1

    .end local p3    # "wasUncontended":Z
    .local v0, "wasUncontended":Z
    goto :goto_16

    .line 2590
    .end local v0    # "wasUncontended":Z
    .restart local p3    # "wasUncontended":Z
    :cond_14
    move/from16 v0, p3

    .line 2595
    .end local p3    # "wasUncontended":Z
    .restart local v0    # "wasUncontended":Z
    :goto_16
    const/4 v3, 0x0

    move v10, v0

    move v11, v2

    move v12, v3

    .line 2598
    .end local v0    # "wasUncontended":Z
    .end local v2    # "h":I
    .local v10, "wasUncontended":Z
    .local v11, "h":I
    .local v12, "collide":Z
    :cond_1a
    :goto_1a
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object v13, v0

    .local v13, "cs":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    const/4 v6, 0x0

    if-eqz v0, :cond_bc

    array-length v0, v13

    move v7, v0

    .local v7, "n":I
    if-lez v0, :cond_bc

    .line 2599
    add-int/lit8 v0, v7, -0x1

    and-int/2addr v0, v11

    aget-object v0, v13, v0

    move-object v15, v0

    .local v15, "c":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    if-nez v0, :cond_68

    .line 2600
    iget v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v0, :cond_66

    .line 2601
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    invoke-direct {v0, v8, v9}, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;-><init>(J)V

    move-object v14, v0

    .line 2602
    .local v14, "r":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    iget v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v0, :cond_66

    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    .line 2603
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 2604
    const/4 v2, 0x0

    .line 2607
    .local v2, "created":Z
    :try_start_47
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object v3, v0

    .local v3, "rs":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    if-eqz v0, :cond_5b

    array-length v0, v3

    move v4, v0

    .local v4, "m":I
    if-lez v0, :cond_5b

    add-int/lit8 v0, v4, -0x1

    and-int/2addr v0, v11

    move v5, v0

    .local v5, "j":I
    aget-object v0, v3, v0

    if-nez v0, :cond_5b

    .line 2610
    aput-object v14, v3, v5
    :try_end_5a
    .catchall {:try_start_47 .. :try_end_5a} :catchall_62

    .line 2611
    const/4 v2, 0x1

    .line 2614
    .end local v3    # "rs":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .end local v4    # "m":I
    .end local v5    # "j":I
    :cond_5b
    iput v6, v1, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    .line 2615
    nop

    .line 2616
    if-eqz v2, :cond_1a

    .line 2617
    goto/16 :goto_ff

    .line 2614
    :catchall_62
    move-exception v0

    iput v6, v1, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    .line 2615
    throw v0

    .line 2621
    .end local v2    # "created":Z
    .end local v14    # "r":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_66
    const/4 v12, 0x0

    goto :goto_b6

    .line 2623
    :cond_68
    if-nez v10, :cond_6c

    .line 2624
    const/4 v10, 0x1

    goto :goto_b6

    .line 2625
    :cond_6c
    sget-object v14, Ljava/util/concurrent/ConcurrentHashMap;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v16, Ljava/util/concurrent/ConcurrentHashMap;->CELLVALUE:J

    iget-wide v2, v15, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;->value:J

    move-wide/from16 v22, v2

    .local v22, "v":J
    add-long v20, v22, v8

    move-wide/from16 v18, v2

    invoke-virtual/range {v14 .. v21}, Ljdk/internal/misc/Unsafe;->compareAndSetLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 2626
    goto/16 :goto_ff

    .line 2627
    :cond_80
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    if-ne v0, v13, :cond_b5

    sget v0, Ljava/util/concurrent/ConcurrentHashMap;->NCPU:I

    if-lt v7, v0, :cond_89

    goto :goto_b5

    .line 2629
    :cond_89
    if-nez v12, :cond_8d

    .line 2630
    const/4 v12, 0x1

    goto :goto_b6

    .line 2631
    :cond_8d
    iget v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v0, :cond_b6

    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    .line 2632
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 2634
    :try_start_9d
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    if-ne v0, v13, :cond_ab

    .line 2635
    shl-int/lit8 v0, v7, 0x1

    invoke-static {v13, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :try_end_ab
    .catchall {:try_start_9d .. :try_end_ab} :catchall_b1

    .line 2637
    :cond_ab
    iput v6, v1, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    .line 2638
    nop

    .line 2639
    const/4 v12, 0x0

    .line 2640
    goto/16 :goto_1a

    .line 2637
    :catchall_b1
    move-exception v0

    iput v6, v1, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    .line 2638
    throw v0

    .line 2628
    :cond_b5
    :goto_b5
    const/4 v12, 0x0

    .line 2642
    .end local v22    # "v":J
    :cond_b6
    :goto_b6
    invoke-static {v11}, Ljava/util/concurrent/ThreadLocalRandom;->advanceProbe(I)I

    move-result v0

    move v11, v0

    .end local v11    # "h":I
    .local v0, "h":I
    goto :goto_100

    .line 2644
    .end local v0    # "h":I
    .end local v7    # "n":I
    .end local v15    # "c":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v11    # "h":I
    :cond_bc
    iget v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v0, :cond_ef

    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    if-ne v0, v13, :cond_ef

    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    .line 2645
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 2646
    const/4 v2, 0x0

    .line 2648
    .local v2, "init":Z
    :try_start_d1
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    if-ne v0, v13, :cond_e4

    .line 2649
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    .line 2650
    .local v0, "rs":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    and-int/lit8 v3, v11, 0x1

    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    invoke-direct {v4, v8, v9}, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;-><init>(J)V

    aput-object v4, v0, v3

    .line 2651
    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :try_end_e3
    .catchall {:try_start_d1 .. :try_end_e3} :catchall_eb

    .line 2652
    const/4 v2, 0x1

    .line 2655
    .end local v0    # "rs":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_e4
    iput v6, v1, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    .line 2656
    nop

    .line 2657
    if-eqz v2, :cond_ea

    .line 2658
    goto :goto_ff

    .line 2659
    .end local v2    # "init":Z
    :cond_ea
    goto :goto_100

    .line 2655
    .restart local v2    # "init":Z
    :catchall_eb
    move-exception v0

    iput v6, v1, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    .line 2656
    throw v0

    .line 2660
    .end local v2    # "init":Z
    :cond_ef
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap;->BASECOUNT:J

    iget-wide v4, v1, Ljava/util/concurrent/ConcurrentHashMap;->baseCount:J

    move-wide v14, v4

    .local v14, "v":J
    add-long v6, v14, v8

    invoke-virtual/range {v0 .. v7}, Ljdk/internal/misc/Unsafe;->compareAndSetLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_100

    .line 2661
    nop

    .line 2663
    .end local v13    # "cs":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .end local v14    # "v":J
    :goto_ff
    return-void

    .line 2662
    :cond_100
    :goto_100
    move-object/from16 v1, p0

    goto/16 :goto_1a
.end method

.method private final greylist-max-o initTable()[Ljava/util/concurrent/ConcurrentHashMap$Node;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2298
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    nop

    :cond_1
    :goto_1
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    .local v1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_c

    array-length v0, v1

    if-nez v0, :cond_a

    goto :goto_c

    :cond_a
    move-object v3, p0

    goto :goto_3c

    .line 2299
    :cond_c
    :goto_c
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    move v6, v0

    .local v6, "sc":I
    if-gez v0, :cond_15

    .line 2300
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_1

    .line 2301
    :cond_15
    sget-object v2, Ljava/util/concurrent/ConcurrentHashMap;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    const/4 v7, -0x1

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Ljdk/internal/misc/Unsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2303
    :try_start_21
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    if-eqz v0, :cond_29

    array-length v0, v1

    if-nez v0, :cond_38

    .line 2304
    :cond_29
    if-lez v6, :cond_2d

    move v0, v6

    goto :goto_2f

    :cond_2d
    const/16 v0, 0x10

    .line 2306
    .local v0, "n":I
    :goto_2f
    new-array v2, v0, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 2307
    .local v2, "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object v1, v2

    iput-object v2, v3, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_34
    .catchall {:try_start_21 .. :try_end_34} :catchall_3d

    .line 2308
    ushr-int/lit8 v4, v0, 0x2

    sub-int v6, v0, v4

    .line 2311
    .end local v0    # "n":I
    .end local v2    # "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_38
    iput v6, v3, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 2312
    nop

    .line 2313
    nop

    .line 2316
    .end local v6    # "sc":I
    :goto_3c
    return-object v1

    .line 2311
    .restart local v6    # "sc":I
    :catchall_3d
    move-exception v0

    iput v6, v3, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 2312
    throw v0
.end method

.method public static whitelist test-api newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<",
            "TK;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2193
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist test-api newKeySet(I)Ljava/util/concurrent/ConcurrentHashMap$KeySetView;
    .registers 4
    .param p0, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<",
            "TK;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2210
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V

    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 33
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1452
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    move-object/from16 v0, p0

    const/4 v1, -0x1

    iput v1, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 1453
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1454
    const-wide/16 v1, 0x0

    .line 1455
    .local v1, "size":J
    const/4 v3, 0x0

    .line 1458
    .local v3, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_b
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 1460
    .local v4, "k":Ljava/lang/Object;, "TK;"
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    .line 1461
    .local v5, "v":Ljava/lang/Object;, "TV;"
    const-wide/16 v6, 0x1

    if-eqz v4, :cond_29

    if-eqz v5, :cond_29

    .line 1462
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap$Node;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v9

    invoke-direct {v8, v9, v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    move-object v3, v8

    .line 1463
    add-long/2addr v1, v6

    .line 1467
    .end local v4    # "k":Ljava/lang/Object;, "TK;"
    .end local v5    # "v":Ljava/lang/Object;, "TV;"
    goto :goto_b

    .line 1468
    :cond_29
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_36

    .line 1469
    const/4 v4, 0x0

    iput v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    move-wide/from16 v16, v1

    goto/16 :goto_127

    .line 1471
    :cond_36
    long-to-float v4, v1

    const/high16 v5, 0x3f400000    # 0.75f

    div-float/2addr v4, v5

    float-to-double v4, v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v8

    double-to-long v4, v4

    .line 1472
    .local v4, "ts":J
    const-wide/32 v8, 0x40000000

    cmp-long v8, v4, v8

    if-ltz v8, :cond_49

    .line 1473
    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_4e

    :cond_49
    long-to-int v8, v4

    invoke-static {v8}, Ljava/util/concurrent/ConcurrentHashMap;->tableSizeFor(I)I

    move-result v8

    .line 1475
    .local v8, "n":I
    :goto_4e
    new-array v9, v8, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1476
    .local v9, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    add-int/lit8 v10, v8, -0x1

    .line 1477
    .local v10, "mask":I
    const-wide/16 v11, 0x0

    .line 1478
    .local v11, "added":J
    :goto_54
    if-eqz v3, :cond_119

    .line 1480
    iget-object v13, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1481
    .local v13, "next":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget v14, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    .local v14, "h":I
    and-int v15, v14, v10

    .line 1482
    .local v15, "j":I
    invoke-static {v9, v15}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v16

    move-object/from16 v17, v16

    .local v17, "first":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v16, :cond_72

    .line 1483
    const/16 v16, 0x1

    move-wide/from16 v21, v4

    move-wide/from16 v18, v6

    move/from16 v20, v16

    move-object/from16 v7, v17

    move-wide/from16 v16, v1

    .local v16, "insertAtFront":Z
    goto/16 :goto_107

    .line 1485
    .end local v16    # "insertAtFront":Z
    :cond_72
    move-wide/from16 v18, v6

    iget-object v6, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .line 1486
    .local v6, "k":Ljava/lang/Object;, "TK;"
    move-object/from16 v7, v17

    move-wide/from16 v16, v1

    .end local v1    # "size":J
    .end local v17    # "first":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v7, "first":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v16, "size":J
    iget v1, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-gez v1, :cond_92

    .line 1487
    move-object v1, v7

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    .line 1488
    .local v1, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    iget-object v2, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-virtual {v1, v14, v6, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v2

    if-nez v2, :cond_8b

    .line 1489
    add-long v11, v11, v18

    .line 1490
    :cond_8b
    const/4 v1, 0x0

    .line 1491
    .local v1, "insertAtFront":Z
    move/from16 v20, v1

    move-wide/from16 v21, v4

    goto/16 :goto_107

    .line 1493
    .end local v1    # "insertAtFront":Z
    :cond_92
    const/4 v1, 0x0

    .line 1494
    .local v1, "binCount":I
    const/4 v2, 0x1

    .line 1496
    .local v2, "insertAtFront":Z
    move-object/from16 v20, v7

    move-object/from16 v30, v20

    move/from16 v20, v2

    move-object/from16 v2, v30

    .local v2, "q":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v20, "insertAtFront":Z
    :goto_9c
    if-eqz v2, :cond_bc

    .line 1497
    move-wide/from16 v21, v4

    .end local v4    # "ts":J
    .local v21, "ts":J
    iget v4, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v4, v14, :cond_b5

    iget-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v5, v4

    .local v5, "qk":Ljava/lang/Object;, "TK;"
    if-eq v4, v6, :cond_b1

    if-eqz v5, :cond_b5

    .line 1499
    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b5

    .line 1500
    :cond_b1
    const/4 v4, 0x0

    .line 1501
    .end local v20    # "insertAtFront":Z
    .local v4, "insertAtFront":Z
    move/from16 v20, v4

    goto :goto_be

    .line 1503
    .end local v4    # "insertAtFront":Z
    .end local v5    # "qk":Ljava/lang/Object;, "TK;"
    .restart local v20    # "insertAtFront":Z
    :cond_b5
    add-int/lit8 v1, v1, 0x1

    .line 1496
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-wide/from16 v4, v21

    goto :goto_9c

    .end local v21    # "ts":J
    .local v4, "ts":J
    :cond_bc
    move-wide/from16 v21, v4

    .line 1505
    .end local v4    # "ts":J
    .restart local v21    # "ts":J
    :goto_be
    if-eqz v20, :cond_105

    const/16 v4, 0x8

    if-lt v1, v4, :cond_105

    .line 1506
    const/4 v4, 0x0

    .line 1507
    .end local v20    # "insertAtFront":Z
    .local v4, "insertAtFront":Z
    add-long v11, v11, v18

    .line 1508
    iput-object v7, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1509
    const/4 v5, 0x0

    .local v5, "hd":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/16 v20, 0x0

    .line 1510
    .local v20, "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    move-object v2, v3

    move/from16 v23, v1

    move-object/from16 v1, v20

    .end local v20    # "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v1, "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v23, "binCount":I
    :goto_d1
    if-eqz v2, :cond_fa

    .line 1511
    new-instance v24, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move/from16 v20, v4

    .end local v4    # "insertAtFront":Z
    .local v20, "insertAtFront":Z
    iget v4, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move/from16 v25, v4

    iget-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v26, v4

    iget-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v29}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    move-object/from16 v4, v24

    .line 1513
    .local v4, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iput-object v1, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v1, :cond_f2

    .line 1514
    move-object v5, v4

    goto :goto_f4

    .line 1516
    :cond_f2
    iput-object v4, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1517
    :goto_f4
    move-object v1, v4

    .line 1510
    .end local v4    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move/from16 v4, v20

    goto :goto_d1

    .line 1519
    .end local v20    # "insertAtFront":Z
    .local v4, "insertAtFront":Z
    :cond_fa
    move/from16 v20, v4

    .end local v4    # "insertAtFront":Z
    .restart local v20    # "insertAtFront":Z
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    invoke-direct {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    invoke-static {v9, v15, v4}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_107

    .line 1505
    .end local v5    # "hd":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v23    # "binCount":I
    .local v1, "binCount":I
    :cond_105
    move/from16 v23, v1

    .line 1523
    .end local v1    # "binCount":I
    .end local v2    # "q":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v6    # "k":Ljava/lang/Object;, "TK;"
    :goto_107
    if-eqz v20, :cond_110

    .line 1524
    add-long v11, v11, v18

    .line 1525
    iput-object v7, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1526
    invoke-static {v9, v15, v3}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1528
    :cond_110
    move-object v3, v13

    .line 1529
    .end local v7    # "first":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v13    # "next":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v14    # "h":I
    .end local v15    # "j":I
    .end local v20    # "insertAtFront":Z
    move-wide/from16 v1, v16

    move-wide/from16 v6, v18

    move-wide/from16 v4, v21

    goto/16 :goto_54

    .line 1530
    .end local v16    # "size":J
    .end local v21    # "ts":J
    .local v1, "size":J
    .local v4, "ts":J
    :cond_119
    move-wide/from16 v16, v1

    move-wide/from16 v21, v4

    .end local v1    # "size":J
    .end local v4    # "ts":J
    .restart local v16    # "size":J
    .restart local v21    # "ts":J
    iput-object v9, v0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1531
    ushr-int/lit8 v1, v8, 0x2

    sub-int v1, v8, v1

    iput v1, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 1532
    iput-wide v11, v0, Ljava/util/concurrent/ConcurrentHashMap;->baseCount:J

    .line 1534
    .end local v8    # "n":I
    .end local v9    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v10    # "mask":I
    .end local v11    # "added":J
    .end local v21    # "ts":J
    :goto_127
    return-void
.end method

.method static final greylist-max-o resizeStamp(I)I
    .registers 3
    .param p0, "n"    # I

    .line 2290
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    const v1, 0x8000

    or-int/2addr v0, v1

    return v0
.end method

.method static final greylist-max-o setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V
    .registers 8
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;I",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 769
    .local p0, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p2, "v":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Ljdk/internal/misc/Unsafe;

    int-to-long v1, p1

    sget v3, Ljava/util/concurrent/ConcurrentHashMap;->ASHIFT:I

    shl-long/2addr v1, v3

    sget v3, Ljava/util/concurrent/ConcurrentHashMap;->ABASE:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p2}, Ljdk/internal/misc/Unsafe;->putReferenceRelease(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 770
    return-void
.end method

.method static final greylist-max-o spread(I)I
    .registers 3
    .param p0, "h"    # I

    .line 697
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr v0, p0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method static final greylist-max-o tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;
    .registers 7
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;I)",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 760
    .local p0, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Ljdk/internal/misc/Unsafe;

    int-to-long v1, p1

    sget v3, Ljava/util/concurrent/ConcurrentHashMap;->ASHIFT:I

    shl-long/2addr v1, v3

    sget v3, Ljava/util/concurrent/ConcurrentHashMap;->ABASE:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Ljdk/internal/misc/Unsafe;->getReferenceAcquire(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$Node;

    return-object v0
.end method

.method private static final greylist-max-o tableSizeFor(I)I
    .registers 3
    .param p0, "c"    # I

    .line 705
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    const/4 v1, -0x1

    ushr-int v0, v1, v0

    .line 706
    .local v0, "n":I
    if-gez v0, :cond_d

    const/4 v1, 0x1

    goto :goto_14

    :cond_d
    const/high16 v1, 0x40000000    # 2.0f

    if-lt v0, v1, :cond_12

    goto :goto_14

    :cond_12
    add-int/lit8 v1, v0, 0x1

    :goto_14
    return v1
.end method

.method private final greylist-max-o transfer([Ljava/util/concurrent/ConcurrentHashMap$Node;[Ljava/util/concurrent/ConcurrentHashMap$Node;)V
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2430
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p2, "nextTab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object/from16 v1, p0

    move-object/from16 v6, p1

    array-length v7, v6

    .line 2431
    .local v7, "n":I
    sget v0, Ljava/util/concurrent/ConcurrentHashMap;->NCPU:I

    const/4 v8, 0x1

    if-le v0, v8, :cond_10

    ushr-int/lit8 v0, v7, 0x3

    sget v2, Ljava/util/concurrent/ConcurrentHashMap;->NCPU:I

    div-int/2addr v0, v2

    goto :goto_11

    :cond_10
    move v0, v7

    :goto_11
    move v2, v0

    .local v2, "stride":I
    const/16 v9, 0x10

    if-ge v0, v9, :cond_1a

    .line 2432
    const/16 v2, 0x10

    move v10, v2

    goto :goto_1b

    .line 2431
    :cond_1a
    move v10, v2

    .line 2433
    .end local v2    # "stride":I
    .local v10, "stride":I
    :goto_1b
    if-nez p2, :cond_30

    .line 2436
    shl-int/lit8 v0, v7, 0x1

    :try_start_1f
    new-array v0, v0, [Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_29

    .line 2437
    .local v0, "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    nop

    .line 2441
    .end local p2    # "nextTab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v0, "nextTab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    nop

    .line 2442
    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 2443
    iput v7, v1, Ljava/util/concurrent/ConcurrentHashMap;->transferIndex:I

    move-object v11, v0

    goto :goto_32

    .line 2438
    .end local v0    # "nextTab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local p2    # "nextTab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_29
    move-exception v0

    .line 2439
    .local v0, "ex":Ljava/lang/Throwable;
    const v2, 0x7fffffff

    iput v2, v1, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 2440
    return-void

    .line 2433
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_30
    move-object/from16 v11, p2

    .line 2445
    .end local p2    # "nextTab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v11, "nextTab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_32
    array-length v12, v11

    .line 2446
    .local v12, "nextn":I
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    invoke-direct {v0, v11}, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    move-object v13, v0

    .line 2447
    .local v13, "fwd":Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;, "Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode<TK;TV;>;"
    const/4 v0, 0x1

    .line 2448
    .local v0, "advance":Z
    const/4 v2, 0x0

    .line 2449
    .local v2, "finishing":Z
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x0

    move v14, v0

    move v15, v2

    move v2, v3

    move v3, v4

    .line 2451
    .end local v0    # "advance":Z
    .local v2, "i":I
    .local v3, "bound":I
    .local v14, "advance":Z
    .local v15, "finishing":Z
    :goto_41
    if-eqz v14, :cond_8d

    .line 2453
    add-int/lit8 v0, v2, -0x1

    .end local v2    # "i":I
    .local v0, "i":I
    if-ge v0, v3, :cond_82

    if-eqz v15, :cond_4e

    move/from16 v17, v0

    move/from16 v16, v3

    goto :goto_86

    .line 2455
    :cond_4e
    iget v4, v1, Ljava/util/concurrent/ConcurrentHashMap;->transferIndex:I

    move v2, v4

    .local v4, "nextIndex":I
    if-gtz v2, :cond_58

    .line 2456
    const/4 v0, -0x1

    .line 2457
    const/4 v2, 0x0

    move v14, v2

    move v2, v0

    .end local v14    # "advance":Z
    .local v2, "advance":Z
    goto :goto_8c

    .line 2459
    .end local v2    # "advance":Z
    .restart local v14    # "advance":Z
    :cond_58
    move v2, v0

    .end local v0    # "i":I
    .local v2, "i":I
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Ljdk/internal/misc/Unsafe;

    move v5, v2

    move/from16 v16, v3

    .end local v2    # "i":I
    .end local v3    # "bound":I
    .local v5, "i":I
    .local v16, "bound":I
    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap;->TRANSFERINDEX:J

    .line 2461
    if-le v4, v10, :cond_65

    .line 2462
    sub-int v17, v4, v10

    goto :goto_67

    :cond_65
    const/16 v17, 0x0

    :goto_67
    move/from16 v18, v17

    .line 2460
    .local v18, "nextBound":I
    move/from16 v29, v17

    move/from16 v17, v5

    move/from16 v5, v29

    .end local v5    # "i":I
    .local v17, "i":I
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 2463
    move/from16 v0, v18

    .line 2464
    .end local v16    # "bound":I
    .local v0, "bound":I
    add-int/lit8 v2, v4, -0x1

    .line 2465
    .end local v17    # "i":I
    .restart local v2    # "i":I
    const/4 v3, 0x0

    move v14, v3

    move v3, v0

    .end local v14    # "advance":Z
    .local v3, "advance":Z
    goto :goto_8c

    .line 2460
    .end local v0    # "bound":I
    .end local v2    # "i":I
    .end local v3    # "advance":Z
    .restart local v14    # "advance":Z
    .restart local v16    # "bound":I
    .restart local v17    # "i":I
    :cond_7d
    move/from16 v3, v16

    move/from16 v2, v17

    goto :goto_8c

    .line 2453
    .end local v4    # "nextIndex":I
    .end local v16    # "bound":I
    .end local v17    # "i":I
    .end local v18    # "nextBound":I
    .local v0, "i":I
    .local v3, "bound":I
    :cond_82
    move/from16 v17, v0

    move/from16 v16, v3

    .line 2454
    .end local v0    # "i":I
    .end local v3    # "bound":I
    .restart local v16    # "bound":I
    .restart local v17    # "i":I
    :goto_86
    const/4 v0, 0x0

    move v14, v0

    move/from16 v3, v16

    move/from16 v2, v17

    .line 2467
    .end local v16    # "bound":I
    .end local v17    # "i":I
    .restart local v2    # "i":I
    .restart local v3    # "bound":I
    :goto_8c
    goto :goto_41

    .line 2468
    :cond_8d
    move/from16 v16, v3

    .end local v3    # "bound":I
    .restart local v16    # "bound":I
    const/4 v0, 0x0

    if-ltz v2, :cond_23a

    if-ge v2, v7, :cond_23a

    add-int v3, v2, v7

    if-lt v3, v12, :cond_a4

    move/from16 v21, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v22, v10

    move/from16 v20, v12

    goto/16 :goto_244

    .line 2483
    :cond_a4
    invoke-static {v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    move-object v4, v3

    .local v4, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v3, :cond_bc

    .line 2484
    invoke-static {v6, v2, v0, v13}, Ljava/util/concurrent/ConcurrentHashMap;->casTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)Z

    move-result v0

    move v14, v0

    move/from16 v21, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v22, v10

    move/from16 v20, v12

    .end local v14    # "advance":Z
    .local v0, "advance":Z
    goto/16 :goto_278

    .line 2485
    .end local v0    # "advance":Z
    .restart local v14    # "advance":Z
    :cond_bc
    iget v0, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v3, v0

    .local v3, "fh":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_d0

    .line 2486
    const/4 v0, 0x1

    move v14, v0

    move/from16 v21, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v22, v10

    move/from16 v20, v12

    .end local v14    # "advance":Z
    .restart local v0    # "advance":Z
    goto/16 :goto_278

    .line 2488
    .end local v0    # "advance":Z
    .restart local v14    # "advance":Z
    :cond_d0
    monitor-enter v4

    .line 2489
    :try_start_d1
    invoke-static {v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0
    :try_end_d5
    .catchall {:try_start_d1 .. :try_end_d5} :catchall_22d

    if-ne v0, v4, :cond_21f

    .line 2491
    if-ltz v3, :cond_174

    .line 2492
    and-int v0, v3, v7

    .line 2493
    .local v0, "runBit":I
    move-object v5, v4

    .line 2494
    .local v5, "lastRun":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move/from16 v17, v8

    :try_start_de
    iget-object v8, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_e0
    .catchall {:try_start_de .. :try_end_e0} :catchall_169

    .local v8, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_e0
    if-eqz v8, :cond_fc

    .line 2495
    move/from16 v18, v9

    :try_start_e4
    iget v9, v8, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    and-int/2addr v9, v7

    .line 2496
    .local v9, "b":I
    if-eq v9, v0, :cond_eb

    .line 2497
    move v0, v9

    .line 2498
    move-object v5, v8

    .line 2494
    .end local v9    # "b":I
    :cond_eb
    iget-object v9, v8, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_ed
    .catchall {:try_start_e4 .. :try_end_ed} :catchall_f1

    move-object v8, v9

    move/from16 v9, v18

    goto :goto_e0

    .line 2559
    .end local v0    # "runBit":I
    .end local v5    # "lastRun":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v8    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_f1
    move-exception v0

    move/from16 p2, v3

    move/from16 v21, v7

    move/from16 v22, v10

    move/from16 v20, v12

    goto/16 :goto_236

    .line 2494
    .restart local v0    # "runBit":I
    .restart local v5    # "lastRun":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v8    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_fc
    move/from16 v18, v9

    .line 2501
    .end local v8    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v0, :cond_103

    .line 2502
    move-object v8, v5

    .line 2503
    .local v8, "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v9, 0x0

    .local v9, "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_105

    .line 2506
    .end local v8    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_103
    move-object v9, v5

    .line 2507
    .restart local v9    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v8, 0x0

    .line 2509
    .restart local v8    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_105
    move-object/from16 v19, v4

    move-object/from16 v29, v19

    move/from16 v19, v0

    move-object/from16 v0, v29

    .local v0, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v19, "runBit":I
    :goto_10d
    if-eq v0, v5, :cond_14c

    .line 2510
    move/from16 p2, v3

    .end local v3    # "fh":I
    .local p2, "fh":I
    :try_start_111
    iget v3, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move-object/from16 v20, v5

    .end local v5    # "lastRun":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v3, "ph":I
    .local v20, "lastRun":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v5, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;
    :try_end_117
    .catchall {:try_start_111 .. :try_end_117} :catchall_143

    move/from16 v21, v7

    .end local v7    # "n":I
    .local v5, "pk":Ljava/lang/Object;, "TK;"
    .local v21, "n":I
    :try_start_119
    iget-object v7, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;
    :try_end_11b
    .catchall {:try_start_119 .. :try_end_11b} :catchall_13c

    .line 2511
    .local v7, "pv":Ljava/lang/Object;, "TV;"
    and-int v22, v3, v21

    if-nez v22, :cond_128

    .line 2512
    move/from16 v22, v10

    .end local v10    # "stride":I
    .local v22, "stride":I
    :try_start_121
    new-instance v10, Ljava/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v10, v3, v5, v7, v8}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    move-object v8, v10

    .end local v8    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v10, "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_130

    .line 2514
    .end local v22    # "stride":I
    .restart local v8    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v10, "stride":I
    :cond_128
    move/from16 v22, v10

    .end local v10    # "stride":I
    .restart local v22    # "stride":I
    new-instance v10, Ljava/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v10, v3, v5, v7, v9}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .end local v9    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v10, "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object v9, v10

    .line 2509
    .end local v3    # "ph":I
    .end local v5    # "pk":Ljava/lang/Object;, "TK;"
    .end local v7    # "pv":Ljava/lang/Object;, "TV;"
    .end local v10    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v9    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_130
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v0, v3

    move/from16 v3, p2

    move-object/from16 v5, v20

    move/from16 v7, v21

    move/from16 v10, v22

    goto :goto_10d

    .line 2559
    .end local v0    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v8    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v19    # "runBit":I
    .end local v20    # "lastRun":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v22    # "stride":I
    .local v10, "stride":I
    :catchall_13c
    move-exception v0

    move/from16 v22, v10

    move/from16 v20, v12

    .end local v10    # "stride":I
    .restart local v22    # "stride":I
    goto/16 :goto_236

    .end local v21    # "n":I
    .end local v22    # "stride":I
    .local v7, "n":I
    .restart local v10    # "stride":I
    :catchall_143
    move-exception v0

    move/from16 v21, v7

    move/from16 v22, v10

    move/from16 v20, v12

    .end local v7    # "n":I
    .end local v10    # "stride":I
    .restart local v21    # "n":I
    .restart local v22    # "stride":I
    goto/16 :goto_236

    .line 2509
    .end local v21    # "n":I
    .end local v22    # "stride":I
    .end local p2    # "fh":I
    .restart local v0    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v3, "fh":I
    .local v5, "lastRun":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v7    # "n":I
    .restart local v8    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v9    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v10    # "stride":I
    .restart local v19    # "runBit":I
    :cond_14c
    move/from16 p2, v3

    move-object/from16 v20, v5

    move/from16 v21, v7

    move/from16 v22, v10

    .line 2516
    .end local v0    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v3    # "fh":I
    .end local v5    # "lastRun":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "n":I
    .end local v10    # "stride":I
    .restart local v20    # "lastRun":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v21    # "n":I
    .restart local v22    # "stride":I
    .restart local p2    # "fh":I
    invoke-static {v11, v2, v8}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2517
    add-int v7, v2, v21

    invoke-static {v11, v7, v9}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2518
    invoke-static {v6, v2, v13}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_15f
    .catchall {:try_start_121 .. :try_end_15f} :catchall_164

    .line 2519
    const/4 v14, 0x1

    .line 2520
    .end local v19    # "runBit":I
    .end local v20    # "lastRun":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move/from16 v20, v12

    goto/16 :goto_22b

    .line 2559
    .end local v8    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_164
    move-exception v0

    move/from16 v20, v12

    goto/16 :goto_236

    .end local v21    # "n":I
    .end local v22    # "stride":I
    .end local p2    # "fh":I
    .restart local v3    # "fh":I
    .restart local v7    # "n":I
    .restart local v10    # "stride":I
    :catchall_169
    move-exception v0

    move/from16 p2, v3

    move/from16 v21, v7

    move/from16 v22, v10

    move/from16 v20, v12

    .end local v3    # "fh":I
    .end local v7    # "n":I
    .end local v10    # "stride":I
    .restart local v21    # "n":I
    .restart local v22    # "stride":I
    .restart local p2    # "fh":I
    goto/16 :goto_236

    .line 2521
    .end local v21    # "n":I
    .end local v22    # "stride":I
    .end local p2    # "fh":I
    .restart local v3    # "fh":I
    .restart local v7    # "n":I
    .restart local v10    # "stride":I
    :cond_174
    move/from16 p2, v3

    move/from16 v21, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v22, v10

    .end local v3    # "fh":I
    .end local v7    # "n":I
    .end local v10    # "stride":I
    .restart local v21    # "n":I
    .restart local v22    # "stride":I
    .restart local p2    # "fh":I
    :try_start_17e
    instance-of v0, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v0, :cond_20c

    .line 2522
    move-object v0, v4

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    .line 2523
    .local v0, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    const/4 v3, 0x0

    .local v3, "lo":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v5, 0x0

    .line 2524
    .local v5, "loTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v7, 0x0

    .local v7, "hi":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v8, 0x0

    .line 2525
    .local v8, "hiTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v9, 0x0

    .local v9, "lc":I
    const/4 v10, 0x0

    .line 2526
    .local v10, "hc":I
    move-object/from16 v19, v3

    .end local v3    # "lo":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v19, "lo":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_18f
    .catchall {:try_start_17e .. :try_end_18f} :catchall_21b

    move-object/from16 v29, v19

    move-object/from16 v19, v0

    move v0, v10

    move v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v5

    move-object/from16 v5, v29

    .local v0, "hc":I
    .local v3, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v5, "lo":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v7, "loTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v8, "hi":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v9, "hiTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v10, "lc":I
    .local v19, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    :goto_19a
    if-eqz v3, :cond_1d6

    .line 2527
    move/from16 v20, v12

    .end local v12    # "nextn":I
    .local v20, "nextn":I
    :try_start_19e
    iget v12, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move/from16 v24, v12

    .line 2528
    .local v24, "h":I
    new-instance v23, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iget-object v12, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v25, v12

    iget-object v12, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v26, v12

    invoke-direct/range {v23 .. v28}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    move-object/from16 v12, v23

    .line 2530
    .local v12, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    and-int v23, v24, v21

    if-nez v23, :cond_1c5

    .line 2531
    iput-object v7, v12, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v7, :cond_1bf

    .line 2532
    move-object v5, v12

    goto :goto_1c1

    .line 2534
    :cond_1bf
    iput-object v12, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 2535
    :goto_1c1
    move-object v7, v12

    .line 2536
    add-int/lit8 v10, v10, 0x1

    goto :goto_1d0

    .line 2539
    :cond_1c5
    iput-object v9, v12, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v9, :cond_1cb

    .line 2540
    move-object v8, v12

    goto :goto_1cd

    .line 2542
    :cond_1cb
    iput-object v12, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 2543
    :goto_1cd
    move-object v9, v12

    .line 2544
    add-int/lit8 v0, v0, 0x1

    .line 2526
    .end local v12    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v24    # "h":I
    :goto_1d0
    iget-object v12, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v3, v12

    move/from16 v12, v20

    goto :goto_19a

    .end local v20    # "nextn":I
    .local v12, "nextn":I
    :cond_1d6
    move/from16 v20, v12

    .line 2547
    .end local v3    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v12    # "nextn":I
    .restart local v20    # "nextn":I
    const/4 v3, 0x6

    if-gt v10, v3, :cond_1e0

    invoke-static {v5}, Ljava/util/concurrent/ConcurrentHashMap;->untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v12

    goto :goto_1ea

    .line 2548
    :cond_1e0
    if-eqz v0, :cond_1e8

    new-instance v12, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    invoke-direct {v12, v5}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    goto :goto_1ea

    :cond_1e8
    move-object/from16 v12, v19

    :goto_1ea
    nop

    .line 2549
    .local v12, "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-gt v0, v3, :cond_1f2

    invoke-static {v8}, Ljava/util/concurrent/ConcurrentHashMap;->untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    goto :goto_1fc

    .line 2550
    :cond_1f2
    if-eqz v10, :cond_1fa

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    invoke-direct {v3, v8}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    goto :goto_1fc

    :cond_1fa
    move-object/from16 v3, v19

    :goto_1fc
    nop

    .line 2551
    .local v3, "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    invoke-static {v11, v2, v12}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2552
    move/from16 v23, v0

    .end local v0    # "hc":I
    .local v23, "hc":I
    add-int v0, v2, v21

    invoke-static {v11, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2553
    invoke-static {v6, v2, v13}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2554
    const/4 v14, 0x1

    .line 2555
    .end local v5    # "lo":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v7    # "loTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v8    # "hi":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v9    # "hiTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v10    # "lc":I
    .end local v19    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .end local v23    # "hc":I
    goto :goto_22b

    .line 2556
    .end local v3    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v20    # "nextn":I
    .local v12, "nextn":I
    :cond_20c
    move/from16 v20, v12

    .end local v12    # "nextn":I
    .restart local v20    # "nextn":I
    instance-of v0, v4, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    if-nez v0, :cond_213

    goto :goto_22b

    .line 2557
    :cond_213
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Recursive update"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "i":I
    .end local v4    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v11    # "nextTab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v13    # "fwd":Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;, "Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode<TK;TV;>;"
    .end local v14    # "advance":Z
    .end local v15    # "finishing":Z
    .end local v16    # "bound":I
    .end local v20    # "nextn":I
    .end local v21    # "n":I
    .end local v22    # "stride":I
    .end local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .end local p1    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local p2    # "fh":I
    throw v0

    .line 2559
    .restart local v2    # "i":I
    .restart local v4    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v11    # "nextTab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v12    # "nextn":I
    .restart local v13    # "fwd":Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;, "Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode<TK;TV;>;"
    .restart local v14    # "advance":Z
    .restart local v15    # "finishing":Z
    .restart local v16    # "bound":I
    .restart local v21    # "n":I
    .restart local v22    # "stride":I
    .restart local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .restart local p1    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local p2    # "fh":I
    :catchall_21b
    move-exception v0

    move/from16 v20, v12

    .end local v12    # "nextn":I
    .restart local v20    # "nextn":I
    goto :goto_236

    .line 2489
    .end local v20    # "nextn":I
    .end local v21    # "n":I
    .end local v22    # "stride":I
    .end local p2    # "fh":I
    .local v3, "fh":I
    .local v7, "n":I
    .local v10, "stride":I
    .restart local v12    # "nextn":I
    :cond_21f
    move/from16 p2, v3

    move/from16 v21, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v22, v10

    move/from16 v20, v12

    .line 2559
    .end local v3    # "fh":I
    .end local v7    # "n":I
    .end local v10    # "stride":I
    .end local v12    # "nextn":I
    .restart local v20    # "nextn":I
    .restart local v21    # "n":I
    .restart local v22    # "stride":I
    .restart local p2    # "fh":I
    :goto_22b
    monitor-exit v4

    goto :goto_278

    .end local v20    # "nextn":I
    .end local v21    # "n":I
    .end local v22    # "stride":I
    .end local p2    # "fh":I
    .restart local v3    # "fh":I
    .restart local v7    # "n":I
    .restart local v10    # "stride":I
    .restart local v12    # "nextn":I
    :catchall_22d
    move-exception v0

    move/from16 p2, v3

    move/from16 v21, v7

    move/from16 v22, v10

    move/from16 v20, v12

    .end local v3    # "fh":I
    .end local v7    # "n":I
    .end local v10    # "stride":I
    .end local v12    # "nextn":I
    .restart local v20    # "nextn":I
    .restart local v21    # "n":I
    .restart local v22    # "stride":I
    .restart local p2    # "fh":I
    :goto_236
    monitor-exit v4
    :try_end_237
    .catchall {:try_start_19e .. :try_end_237} :catchall_238

    throw v0

    :catchall_238
    move-exception v0

    goto :goto_236

    .line 2468
    .end local v4    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v20    # "nextn":I
    .end local v21    # "n":I
    .end local v22    # "stride":I
    .end local p2    # "fh":I
    .restart local v7    # "n":I
    .restart local v10    # "stride":I
    .restart local v12    # "nextn":I
    :cond_23a
    move/from16 v21, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v22, v10

    move/from16 v20, v12

    .line 2470
    .end local v7    # "n":I
    .end local v10    # "stride":I
    .end local v12    # "nextn":I
    .restart local v20    # "nextn":I
    .restart local v21    # "n":I
    .restart local v22    # "stride":I
    :goto_244
    if-eqz v15, :cond_252

    .line 2471
    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 2472
    iput-object v11, v1, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 2473
    shl-int/lit8 v0, v21, 0x1

    ushr-int/lit8 v3, v21, 0x1

    sub-int/2addr v0, v3

    iput v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 2474
    return-void

    .line 2476
    :cond_252
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Ljdk/internal/misc/Unsafe;

    move v4, v2

    .end local v2    # "i":I
    .local v4, "i":I
    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    move v5, v4

    .end local v4    # "i":I
    .local v5, "i":I
    iget v4, v1, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    move v7, v4

    .local v7, "sc":I
    move v8, v5

    .end local v5    # "i":I
    .local v8, "i":I
    add-int/lit8 v5, v7, -0x1

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_276

    .line 2477
    add-int/lit8 v0, v7, -0x2

    invoke-static/range {v21 .. v21}, Ljava/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    if-eq v0, v1, :cond_26f

    .line 2478
    return-void

    .line 2479
    :cond_26f
    move/from16 v14, v17

    move/from16 v15, v17

    .line 2480
    move/from16 v2, v21

    .end local v8    # "i":I
    .restart local v2    # "i":I
    goto :goto_277

    .line 2476
    .end local v2    # "i":I
    .restart local v8    # "i":I
    :cond_276
    move v2, v8

    .line 2482
    .end local v7    # "sc":I
    .end local v8    # "i":I
    .restart local v2    # "i":I
    :goto_277
    nop

    .line 2561
    :goto_278
    move-object/from16 v1, p0

    move/from16 v3, v16

    move/from16 v8, v17

    move/from16 v9, v18

    move/from16 v12, v20

    move/from16 v7, v21

    move/from16 v10, v22

    goto/16 :goto_41
.end method

.method private final greylist-max-o treeifyBin([Ljava/util/concurrent/ConcurrentHashMap$Node;I)V
    .registers 14
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;I)V"
        }
    .end annotation

    .line 2673
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz p1, :cond_4c

    .line 2674
    array-length v0, p1

    move v1, v0

    .local v1, "n":I
    const/16 v2, 0x40

    if-ge v0, v2, :cond_e

    .line 2675
    shl-int/lit8 v0, v1, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->tryPresize(I)V

    goto :goto_4c

    .line 2676
    :cond_e
    invoke-static {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v2, v0

    .local v2, "b":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_4c

    iget v0, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ltz v0, :cond_4c

    .line 2677
    monitor-enter v2

    .line 2678
    :try_start_1a
    invoke-static {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    if-ne v0, v2, :cond_47

    .line 2679
    const/4 v0, 0x0

    .local v0, "hd":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v3, 0x0

    .line 2680
    .local v3, "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    move-object v4, v2

    .local v4, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_23
    if-eqz v4, :cond_3f

    .line 2681
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iget v6, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    iget-object v7, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v8, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    .line 2684
    .local v5, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iput-object v3, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v3, :cond_38

    .line 2685
    move-object v0, v5

    goto :goto_3a

    .line 2687
    :cond_38
    iput-object v5, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 2688
    :goto_3a
    move-object v3, v5

    .line 2680
    .end local v5    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v4, v5

    goto :goto_23

    .line 2690
    .end local v4    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_3f
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    invoke-direct {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    invoke-static {p1, p2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2692
    .end local v0    # "hd":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v3    # "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_47
    monitor-exit v2

    goto :goto_4c

    :catchall_49
    move-exception v0

    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_1a .. :try_end_4b} :catchall_49

    throw v0

    .line 2695
    .end local v1    # "n":I
    .end local v2    # "b":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_4c
    :goto_4c
    return-void
.end method

.method private final greylist-max-o tryPresize(I)V
    .registers 13
    .param p1, "size"    # I

    .line 2394
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/high16 v0, 0x20000000

    const/high16 v1, 0x40000000    # 2.0f

    if-lt p1, v0, :cond_8

    move v0, v1

    goto :goto_11

    .line 2395
    :cond_8
    ushr-int/lit8 v0, p1, 0x1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/ConcurrentHashMap;->tableSizeFor(I)I

    move-result v0

    :goto_11
    move v2, v0

    .line 2397
    .local v2, "c":I
    :goto_12
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    move v7, v0

    .local v7, "sc":I
    if-ltz v0, :cond_6e

    .line 2398
    iget-object v9, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 2399
    .local v9, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v9, :cond_47

    array-length v0, v9

    move v10, v0

    .local v10, "n":I
    if-nez v0, :cond_21

    move-object v4, p0

    goto :goto_48

    .line 2414
    :cond_21
    if-le v2, v7, :cond_45

    if-lt v10, v1, :cond_27

    .line 2415
    move-object v4, p0

    goto :goto_6f

    .line 2416
    :cond_27
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-ne v9, v0, :cond_43

    .line 2417
    invoke-static {v10}, Ljava/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    move-result v0

    .line 2418
    .local v0, "rs":I
    sget-object v3, Ljava/util/concurrent/ConcurrentHashMap;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v5, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    shl-int/lit8 v4, v0, 0x10

    add-int/lit8 v8, v4, 0x2

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Ljdk/internal/misc/Unsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 2420
    const/4 v3, 0x0

    invoke-direct {p0, v9, v3}, Ljava/util/concurrent/ConcurrentHashMap;->transfer([Ljava/util/concurrent/ConcurrentHashMap$Node;[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_6d

    .line 2416
    .end local v0    # "rs":I
    :cond_43
    move-object v4, p0

    goto :goto_6d

    .line 2414
    :cond_45
    move-object v4, p0

    goto :goto_6f

    .line 2399
    .end local v10    # "n":I
    :cond_47
    move-object v4, p0

    .line 2400
    :goto_48
    if-le v7, v2, :cond_4c

    move v0, v7

    goto :goto_4d

    :cond_4c
    move v0, v2

    :goto_4d
    move v10, v0

    .line 2401
    .restart local v10    # "n":I
    sget-object v3, Ljava/util/concurrent/ConcurrentHashMap;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v5, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    const/4 v8, -0x1

    invoke-virtual/range {v3 .. v8}, Ljdk/internal/misc/Unsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 2403
    :try_start_59
    iget-object v0, v4, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-ne v0, v9, :cond_66

    .line 2405
    new-array v0, v10, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 2406
    .local v0, "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iput-object v0, v4, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_61
    .catchall {:try_start_59 .. :try_end_61} :catchall_69

    .line 2407
    ushr-int/lit8 v3, v10, 0x2

    sub-int v3, v10, v3

    move v7, v3

    .line 2410
    .end local v0    # "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_66
    iput v7, v4, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 2411
    goto :goto_6d

    .line 2410
    :catchall_69
    move-exception v0

    iput v7, v4, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 2411
    throw v0

    .line 2422
    .end local v9    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v10    # "n":I
    :cond_6d
    :goto_6d
    goto :goto_12

    .line 2397
    :cond_6e
    move-object v4, p0

    .line 2423
    :goto_6f
    return-void
.end method

.method static greylist-max-o untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;)",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2701
    .local p0, "b":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "hd":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v1, 0x0

    .line 2702
    .local v1, "tl":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object v2, p0

    .local v2, "q":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_3
    if-eqz v2, :cond_1a

    .line 2703
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap$Node;

    iget v4, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    iget-object v5, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v6, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-direct {v3, v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2704
    .local v3, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v1, :cond_14

    .line 2705
    move-object v0, v3

    goto :goto_16

    .line 2707
    :cond_14
    iput-object v3, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 2708
    :goto_16
    move-object v1, v3

    .line 2702
    .end local v3    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_3

    .line 2710
    .end local v2    # "q":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1a
    return-object v0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 13
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1405
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 1406
    .local v0, "sshift":I
    const/4 v1, 0x1

    .line 1407
    .local v1, "ssize":I
    :goto_2
    const/16 v2, 0x10

    if-ge v1, v2, :cond_b

    .line 1408
    add-int/lit8 v0, v0, 0x1

    .line 1409
    shl-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1411
    :cond_b
    rsub-int/lit8 v3, v0, 0x20

    .line 1412
    .local v3, "segmentShift":I
    add-int/lit8 v4, v1, -0x1

    .line 1414
    .local v4, "segmentMask":I
    new-array v2, v2, [Ljava/util/concurrent/ConcurrentHashMap$Segment;

    .line 1416
    .local v2, "segments":[Ljava/util/concurrent/ConcurrentHashMap$Segment;, "[Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_12
    array-length v6, v2

    if-ge v5, v6, :cond_21

    .line 1417
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap$Segment;

    const/high16 v7, 0x3f400000    # 0.75f

    invoke-direct {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap$Segment;-><init>(F)V

    aput-object v6, v2, v5

    .line 1416
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 1418
    .end local v5    # "i":I
    :cond_21
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v5

    .line 1419
    .local v5, "streamFields":Ljava/io/ObjectOutputStream$PutField;
    const-string v6, "segments"

    invoke-virtual {v5, v6, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1420
    const-string v6, "segmentShift"

    invoke-virtual {v5, v6, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1421
    const-string v6, "segmentMask"

    invoke-virtual {v5, v6, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1422
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1425
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v7, v6

    .local v7, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v6, :cond_56

    .line 1426
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v8, v7

    const/4 v9, 0x0

    array-length v10, v7

    invoke-direct {v6, v7, v8, v9, v10}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 1427
    .local v6, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_44
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v8

    move-object v9, v8

    .local v9, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v8, :cond_56

    .line 1428
    iget-object v8, v9, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {p1, v8}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1429
    iget-object v8, v9, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-virtual {p1, v8}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_44

    .line 1432
    .end local v6    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v9    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_56
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1433
    invoke-virtual {p1, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1434
    return-void
.end method


# virtual methods
.method final greylist-max-o batchFor(J)I
    .registers 11
    .param p1, "b"    # J

    .line 3690
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v0

    move-wide v2, v0

    .local v2, "n":J
    const-wide/16 v4, 0x1

    cmp-long v0, v0, v4

    if-lez v0, :cond_32

    cmp-long v0, v2, p1

    if-gez v0, :cond_19

    goto :goto_32

    .line 3692
    :cond_19
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    .line 3693
    .local v0, "sp":I
    const-wide/16 v4, 0x0

    cmp-long v1, p1, v4

    if-lez v1, :cond_30

    div-long v4, v2, p1

    move-wide v2, v4

    int-to-long v6, v0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_2e

    goto :goto_30

    :cond_2e
    long-to-int v1, v2

    goto :goto_31

    :cond_30
    :goto_30
    move v1, v0

    :goto_31
    return v1

    .line 3691
    .end local v0    # "sp":I
    .end local v2    # "n":J
    :cond_32
    :goto_32
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api clear()V
    .registers 11

    .line 1187
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const-wide/16 v0, 0x0

    .line 1188
    .local v0, "delta":J
    const/4 v2, 0x0

    .line 1189
    .local v2, "i":I
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1190
    .local v3, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_5
    const/4 v4, -0x1

    if-eqz v3, :cond_4f

    array-length v5, v3

    if-ge v2, v5, :cond_4f

    .line 1192
    invoke-static {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v5

    .line 1193
    .local v5, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v5, :cond_14

    .line 1194
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .line 1195
    :cond_14
    iget v6, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v7, v6

    .local v7, "fh":I
    if-ne v6, v4, :cond_1f

    .line 1196
    invoke-virtual {p0, v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    .line 1197
    const/4 v2, 0x0

    goto :goto_4b

    .line 1200
    :cond_1f
    monitor-enter v5

    .line 1201
    :try_start_20
    invoke-static {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v4

    if-ne v4, v5, :cond_4a

    .line 1202
    const/4 v4, 0x0

    if-ltz v7, :cond_2b

    move-object v6, v5

    goto :goto_36

    .line 1203
    :cond_2b
    instance-of v6, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v6, :cond_35

    .line 1204
    move-object v6, v5

    check-cast v6, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    iget-object v6, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_36

    :cond_35
    move-object v6, v4

    :goto_36
    nop

    .line 1205
    .local v6, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_37
    if-eqz v6, :cond_40

    .line 1206
    const-wide/16 v8, 0x1

    sub-long/2addr v0, v8

    .line 1207
    iget-object v8, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_3e
    .catchall {:try_start_20 .. :try_end_3e} :catchall_4c

    move-object v6, v8

    goto :goto_37

    .line 1209
    :cond_40
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "i":I
    .local v8, "i":I
    :try_start_42
    invoke-static {v3, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_47

    move v2, v8

    goto :goto_4a

    .line 1211
    .end local v6    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_47
    move-exception v4

    move v2, v8

    goto :goto_4d

    .end local v8    # "i":I
    .restart local v2    # "i":I
    :cond_4a
    :goto_4a
    :try_start_4a
    monitor-exit v5

    .line 1213
    .end local v5    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "fh":I
    :goto_4b
    goto :goto_5

    .line 1211
    .restart local v5    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v7    # "fh":I
    :catchall_4c
    move-exception v4

    :goto_4d
    monitor-exit v5
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_4c

    throw v4

    .line 1214
    .end local v5    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "fh":I
    :cond_4f
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-eqz v5, :cond_58

    .line 1215
    invoke-direct {p0, v0, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    .line 1216
    :cond_58
    return-void
.end method

.method public whitelist test-api compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1904
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-eqz v2, :cond_141

    if-eqz v3, :cond_141

    .line 1906
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v4

    .line 1907
    .local v4, "h":I
    const/4 v0, 0x0

    .line 1908
    .local v0, "val":Ljava/lang/Object;, "TV;"
    const/4 v5, 0x0

    .line 1909
    .local v5, "delta":I
    const/4 v6, 0x0

    .line 1910
    .local v6, "binCount":I
    iget-object v7, v1, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v8, v7

    move v7, v6

    move v6, v5

    move-object v5, v0

    .line 1912
    .end local v0    # "val":Ljava/lang/Object;, "TV;"
    .local v5, "val":Ljava/lang/Object;, "TV;"
    .local v6, "delta":I
    .local v7, "binCount":I
    .local v8, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_1b
    if-eqz v8, :cond_138

    array-length v0, v8

    move v9, v0

    .local v9, "n":I
    if-nez v0, :cond_23

    goto/16 :goto_138

    .line 1914
    :cond_23
    add-int/lit8 v0, v9, -0x1

    and-int/2addr v0, v4

    move v10, v0

    .local v10, "i":I
    invoke-static {v8, v0}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v11, v0

    .local v11, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v12, 0x0

    if-nez v0, :cond_60

    .line 1915
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;-><init>()V

    move-object v13, v0

    .line 1916
    .local v13, "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    monitor-enter v13

    .line 1917
    :try_start_36
    invoke-static {v8, v10, v12, v13}, Ljava/util/concurrent/ConcurrentHashMap;->casTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)Z

    move-result v0
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_5d

    if-eqz v0, :cond_56

    .line 1918
    const/4 v7, 0x1

    .line 1919
    const/4 v14, 0x0

    .line 1921
    .local v14, "node":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :try_start_3e
    invoke-interface {v3, v2, v12}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    if-eqz v0, :cond_4c

    .line 1922
    const/4 v6, 0x1

    .line 1923
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v0, v4, v2, v5}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_4b
    .catchall {:try_start_3e .. :try_end_4b} :catchall_50

    move-object v14, v0

    .line 1926
    :cond_4c
    :try_start_4c
    invoke-static {v8, v10, v14}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1927
    goto :goto_56

    .line 1926
    :catchall_50
    move-exception v0

    invoke-static {v8, v10, v14}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1927
    nop

    .end local v4    # "h":I
    .end local v5    # "val":Ljava/lang/Object;, "TV;"
    .end local v6    # "delta":I
    .end local v7    # "binCount":I
    .end local v8    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "n":I
    .end local v10    # "i":I
    .end local v11    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v13    # "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    throw v0

    .line 1929
    .end local v14    # "node":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v4    # "h":I
    .restart local v5    # "val":Ljava/lang/Object;, "TV;"
    .restart local v6    # "delta":I
    .restart local v7    # "binCount":I
    .restart local v8    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v9    # "n":I
    .restart local v10    # "i":I
    .restart local v11    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v13    # "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    :cond_56
    :goto_56
    monitor-exit v13

    .line 1930
    if-eqz v7, :cond_5b

    .line 1931
    goto/16 :goto_12e

    .line 1932
    .end local v13    # "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_5b
    goto/16 :goto_13d

    .line 1929
    .restart local v13    # "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_5d
    move-exception v0

    monitor-exit v13
    :try_end_5f
    .catchall {:try_start_4c .. :try_end_5f} :catchall_5d

    throw v0

    .line 1933
    .end local v13    # "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_60
    iget v0, v11, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v13, v0

    .local v13, "fh":I
    const/4 v14, -0x1

    if-ne v0, v14, :cond_6d

    .line 1934
    invoke-virtual {v1, v8, v11}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v8, v0

    .end local v8    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v0, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto/16 :goto_13d

    .line 1936
    .end local v0    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v8    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_6d
    monitor-enter v11

    .line 1937
    :try_start_6e
    invoke-static {v8, v10}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0
    :try_end_72
    .catchall {:try_start_6e .. :try_end_72} :catchall_135

    if-ne v0, v11, :cond_124

    .line 1938
    if-ltz v13, :cond_da

    .line 1939
    const/4 v0, 0x1

    .line 1940
    .end local v7    # "binCount":I
    .local v0, "binCount":I
    move-object v7, v11

    .local v7, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v14, 0x0

    move-object/from16 v17, v14

    move v14, v0

    move-object/from16 v0, v17

    .line 1942
    .local v0, "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v14, "binCount":I
    :goto_7e
    :try_start_7e
    iget v15, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v15, v4, :cond_b0

    iget-object v15, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v16, v15

    .local v16, "ek":Ljava/lang/Object;, "TK;"
    if-eq v15, v2, :cond_96

    if-eqz v16, :cond_93

    .line 1944
    move-object/from16 v15, v16

    .end local v16    # "ek":Ljava/lang/Object;, "TK;"
    .local v15, "ek":Ljava/lang/Object;, "TK;"
    invoke-virtual {v2, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b0

    goto :goto_98

    .line 1942
    .end local v15    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v16    # "ek":Ljava/lang/Object;, "TK;"
    :cond_93
    move-object/from16 v15, v16

    .end local v16    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v15    # "ek":Ljava/lang/Object;, "TK;"
    goto :goto_b0

    .end local v15    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v16    # "ek":Ljava/lang/Object;, "TK;"
    :cond_96
    move-object/from16 v15, v16

    .line 1945
    .end local v16    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v15    # "ek":Ljava/lang/Object;, "TK;"
    :goto_98
    iget-object v12, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v3, v2, v12}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v5, v12

    .line 1946
    if-eqz v5, :cond_a4

    .line 1947
    iput-object v5, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    goto :goto_d2

    .line 1949
    :cond_a4
    const/4 v6, -0x1

    .line 1950
    iget-object v12, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1951
    .local v12, "en":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_ac

    .line 1952
    iput-object v12, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_af

    .line 1954
    :cond_ac
    invoke-static {v8, v10, v12}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1956
    .end local v12    # "en":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_af
    goto :goto_d2

    .line 1958
    .end local v15    # "ek":Ljava/lang/Object;, "TK;"
    :cond_b0
    :goto_b0
    move-object v0, v7

    .line 1959
    iget-object v15, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v7, v15

    if-nez v15, :cond_d4

    .line 1960
    invoke-interface {v3, v2, v12}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v5, v12

    .line 1961
    if-eqz v5, :cond_d2

    .line 1962
    iget-object v12, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-nez v12, :cond_ca

    .line 1964
    const/4 v6, 0x1

    .line 1965
    new-instance v12, Ljava/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v12, v4, v2, v5}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v12, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_d2

    .line 1963
    :cond_ca
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v15, "Recursive update"

    invoke-direct {v12, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "h":I
    .end local v5    # "val":Ljava/lang/Object;, "TV;"
    .end local v6    # "delta":I
    .end local v8    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "n":I
    .end local v10    # "i":I
    .end local v11    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v13    # "fh":I
    .end local v14    # "binCount":I
    .end local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    throw v12
    :try_end_d2
    .catchall {:try_start_7e .. :try_end_d2} :catchall_d7

    .line 1940
    .end local v0    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v4    # "h":I
    .restart local v5    # "val":Ljava/lang/Object;, "TV;"
    .restart local v6    # "delta":I
    .restart local v8    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v9    # "n":I
    .restart local v10    # "i":I
    .restart local v11    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v13    # "fh":I
    .restart local v14    # "binCount":I
    .restart local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    :cond_d2
    :goto_d2
    move v7, v14

    goto :goto_124

    .restart local v0    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v7    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_d4
    add-int/lit8 v14, v14, 0x1

    goto :goto_7e

    .line 1998
    .end local v0    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_d7
    move-exception v0

    move v7, v14

    goto :goto_136

    .line 1971
    .end local v14    # "binCount":I
    .local v7, "binCount":I
    :cond_da
    :try_start_da
    instance-of v0, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v0, :cond_117

    .line 1972
    const/4 v7, 0x1

    .line 1973
    move-object v0, v11

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    .line 1975
    .local v0, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    iget-object v14, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v15, v14

    .local v15, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v14, :cond_ec

    .line 1976
    invoke-virtual {v15, v4, v2, v12}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v14

    .local v14, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_ed

    .line 1978
    .end local v14    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_ec
    const/4 v14, 0x0

    .line 1979
    .restart local v14    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_ed
    if-nez v14, :cond_f0

    goto :goto_f2

    :cond_f0
    iget-object v12, v14, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    .line 1980
    .local v12, "pv":Ljava/lang/Object;, "TV;"
    :goto_f2
    invoke-interface {v3, v2, v12}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    .line 1981
    if-eqz v5, :cond_104

    .line 1982
    if-eqz v14, :cond_ff

    .line 1983
    iput-object v5, v14, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    goto :goto_116

    .line 1985
    :cond_ff
    const/4 v6, 0x1

    .line 1986
    invoke-virtual {v0, v4, v2, v5}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_116

    .line 1989
    :cond_104
    if-eqz v14, :cond_116

    .line 1990
    const/4 v6, -0x1

    .line 1991
    invoke-virtual {v0, v14}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->removeTreeNode(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v16

    if-eqz v16, :cond_116

    .line 1992
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    invoke-static {v2}, Ljava/util/concurrent/ConcurrentHashMap;->untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    invoke-static {v8, v10, v2}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1994
    .end local v0    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .end local v12    # "pv":Ljava/lang/Object;, "TV;"
    .end local v14    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v15    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_116
    :goto_116
    goto :goto_124

    .line 1995
    :cond_117
    instance-of v0, v11, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    if-nez v0, :cond_11c

    goto :goto_124

    .line 1996
    :cond_11c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Recursive update"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "h":I
    .end local v5    # "val":Ljava/lang/Object;, "TV;"
    .end local v6    # "delta":I
    .end local v7    # "binCount":I
    .end local v8    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "n":I
    .end local v10    # "i":I
    .end local v11    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v13    # "fh":I
    .end local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    throw v0

    .line 1998
    .restart local v4    # "h":I
    .restart local v5    # "val":Ljava/lang/Object;, "TV;"
    .restart local v6    # "delta":I
    .restart local v7    # "binCount":I
    .restart local v8    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v9    # "n":I
    .restart local v10    # "i":I
    .restart local v11    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v13    # "fh":I
    .restart local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    :cond_124
    :goto_124
    monitor-exit v11
    :try_end_125
    .catchall {:try_start_da .. :try_end_125} :catchall_135

    .line 1999
    if-eqz v7, :cond_13d

    .line 2000
    const/16 v0, 0x8

    if-lt v7, v0, :cond_12e

    .line 2001
    invoke-direct {v1, v8, v10}, Ljava/util/concurrent/ConcurrentHashMap;->treeifyBin([Ljava/util/concurrent/ConcurrentHashMap$Node;I)V

    .line 2006
    .end local v8    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "n":I
    .end local v10    # "i":I
    .end local v11    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v13    # "fh":I
    :cond_12e
    :goto_12e
    if-eqz v6, :cond_134

    .line 2007
    int-to-long v8, v6

    invoke-direct {v1, v8, v9, v7}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    .line 2008
    :cond_134
    return-object v5

    .line 1998
    .restart local v8    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v9    # "n":I
    .restart local v10    # "i":I
    .restart local v11    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v13    # "fh":I
    :catchall_135
    move-exception v0

    :goto_136
    :try_start_136
    monitor-exit v11
    :try_end_137
    .catchall {:try_start_136 .. :try_end_137} :catchall_135

    throw v0

    .line 1913
    .end local v9    # "n":I
    .end local v10    # "i":I
    .end local v11    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v13    # "fh":I
    :cond_138
    :goto_138
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;->initTable()[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v8, v0

    .line 2005
    :cond_13d
    :goto_13d
    move-object/from16 v2, p1

    goto/16 :goto_1b

    .line 1905
    .end local v4    # "h":I
    .end local v5    # "val":Ljava/lang/Object;, "TV;"
    .end local v6    # "delta":I
    .end local v7    # "binCount":I
    .end local v8    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_141
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function<",
            "-TK;+TV;>;)TV;"
        }
    .end annotation

    .line 1697
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    if-eqz p1, :cond_10a

    if-eqz p2, :cond_10a

    .line 1699
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v0

    .line 1700
    .local v0, "h":I
    const/4 v1, 0x0

    .line 1701
    .local v1, "val":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x0

    .line 1702
    .local v2, "binCount":I
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1704
    .local v3, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_10
    if-eqz v3, :cond_104

    array-length v4, v3

    move v5, v4

    .local v5, "n":I
    if-nez v4, :cond_18

    goto/16 :goto_104

    .line 1706
    :cond_18
    add-int/lit8 v4, v5, -0x1

    and-int/2addr v4, v0

    move v6, v4

    .local v6, "i":I
    invoke-static {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v4

    move-object v7, v4

    .local v7, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v8, 0x0

    if-nez v4, :cond_53

    .line 1707
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;-><init>()V

    .line 1708
    .local v4, "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    monitor-enter v4

    .line 1709
    :try_start_2a
    invoke-static {v3, v6, v8, v4}, Ljava/util/concurrent/ConcurrentHashMap;->casTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)Z

    move-result v8
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_50

    if-eqz v8, :cond_49

    .line 1710
    const/4 v2, 0x1

    .line 1711
    const/4 v8, 0x0

    .line 1713
    .local v8, "node":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :try_start_32
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v1, v9

    if-eqz v9, :cond_3f

    .line 1714
    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v9, v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_3e
    .catchall {:try_start_32 .. :try_end_3e} :catchall_43

    move-object v8, v9

    .line 1716
    :cond_3f
    :try_start_3f
    invoke-static {v3, v6, v8}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1717
    goto :goto_49

    .line 1716
    :catchall_43
    move-exception v9

    invoke-static {v3, v6, v8}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1717
    nop

    .end local v0    # "h":I
    .end local v1    # "val":Ljava/lang/Object;, "TV;"
    .end local v2    # "binCount":I
    .end local v3    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v4    # "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v5    # "n":I
    .end local v6    # "i":I
    .end local v7    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    throw v9

    .line 1719
    .end local v8    # "node":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v0    # "h":I
    .restart local v1    # "val":Ljava/lang/Object;, "TV;"
    .restart local v2    # "binCount":I
    .restart local v3    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v4    # "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v5    # "n":I
    .restart local v6    # "i":I
    .restart local v7    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    :cond_49
    :goto_49
    monitor-exit v4

    .line 1720
    if-eqz v2, :cond_4e

    .line 1721
    goto/16 :goto_f9

    .line 1722
    .end local v4    # "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_4e
    goto/16 :goto_108

    .line 1719
    .restart local v4    # "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_50
    move-exception v8

    monitor-exit v4
    :try_end_52
    .catchall {:try_start_3f .. :try_end_52} :catchall_50

    throw v8

    .line 1723
    .end local v4    # "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_53
    iget v4, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v9, v4

    .local v9, "fh":I
    const/4 v10, -0x1

    if-ne v4, v10, :cond_5f

    .line 1724
    invoke-virtual {p0, v3, v7}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    goto/16 :goto_108

    .line 1725
    :cond_5f
    if-ne v9, v0, :cond_74

    iget-object v4, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v10, v4

    .local v10, "fk":Ljava/lang/Object;, "TK;"
    if-eq v4, p1, :cond_6e

    if-eqz v10, :cond_74

    .line 1726
    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74

    :cond_6e
    iget-object v4, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object v11, v4

    .local v11, "fv":Ljava/lang/Object;, "TV;"
    if-eqz v4, :cond_74

    .line 1728
    return-object v11

    .line 1730
    .end local v10    # "fk":Ljava/lang/Object;, "TK;"
    .end local v11    # "fv":Ljava/lang/Object;, "TV;"
    :cond_74
    const/4 v4, 0x0

    .line 1731
    .local v4, "added":Z
    monitor-enter v7

    .line 1732
    :try_start_76
    invoke-static {v3, v6}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v10

    if-ne v10, v7, :cond_ec

    .line 1733
    if-ltz v9, :cond_bb

    .line 1734
    const/4 v2, 0x1

    .line 1735
    move-object v8, v7

    .line 1737
    .local v8, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_80
    iget v10, v8, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v10, v0, :cond_95

    iget-object v10, v8, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v11, v10

    .local v11, "ek":Ljava/lang/Object;, "TK;"
    if-eq v10, p1, :cond_91

    if-eqz v11, :cond_95

    .line 1739
    invoke-virtual {p1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_95

    .line 1740
    :cond_91
    iget-object v10, v8, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 1741
    .end local v1    # "val":Ljava/lang/Object;, "TV;"
    .local v10, "val":Ljava/lang/Object;, "TV;"
    move-object v1, v10

    goto :goto_b7

    .line 1743
    .end local v10    # "val":Ljava/lang/Object;, "TV;"
    .end local v11    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v1    # "val":Ljava/lang/Object;, "TV;"
    :cond_95
    move-object v10, v8

    .line 1744
    .local v10, "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v11, v8, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v8, v11

    if-nez v11, :cond_b8

    .line 1745
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v1, v11

    if-eqz v11, :cond_b7

    .line 1746
    iget-object v11, v10, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-nez v11, :cond_af

    .line 1748
    const/4 v4, 0x1

    .line 1749
    new-instance v11, Ljava/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v11, v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v11, v10, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_b7

    .line 1747
    :cond_af
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Recursive update"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "h":I
    .end local v1    # "val":Ljava/lang/Object;, "TV;"
    .end local v2    # "binCount":I
    .end local v3    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v4    # "added":Z
    .end local v5    # "n":I
    .end local v6    # "i":I
    .end local v7    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "fh":I
    .end local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    throw v11

    .line 1735
    .end local v8    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v10    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v0    # "h":I
    .restart local v1    # "val":Ljava/lang/Object;, "TV;"
    .restart local v2    # "binCount":I
    .restart local v3    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v4    # "added":Z
    .restart local v5    # "n":I
    .restart local v6    # "i":I
    .restart local v7    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v9    # "fh":I
    .restart local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    :cond_b7
    :goto_b7
    goto :goto_ec

    .restart local v8    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_b8
    add-int/lit8 v2, v2, 0x1

    goto :goto_80

    .line 1755
    .end local v8    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_bb
    instance-of v10, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v10, :cond_df

    .line 1756
    const/4 v2, 0x2

    .line 1757
    move-object v10, v7

    check-cast v10, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    .line 1759
    .local v10, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    iget-object v11, v10, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v12, v11

    .local v12, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v11, :cond_d3

    .line 1760
    invoke-virtual {v12, v0, p1, v8}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v8

    move-object v11, v8

    .local v11, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v8, :cond_d3

    .line 1761
    iget-object v8, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    move-object v1, v8

    .end local v1    # "val":Ljava/lang/Object;, "TV;"
    .local v8, "val":Ljava/lang/Object;, "TV;"
    goto :goto_de

    .line 1762
    .end local v8    # "val":Ljava/lang/Object;, "TV;"
    .end local v11    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v1    # "val":Ljava/lang/Object;, "TV;"
    :cond_d3
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v1, v8

    if-eqz v8, :cond_de

    .line 1763
    const/4 v4, 0x1

    .line 1764
    invoke-virtual {v10, v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 1766
    .end local v10    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .end local v12    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_de
    :goto_de
    goto :goto_ec

    .line 1767
    :cond_df
    instance-of v8, v7, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    if-nez v8, :cond_e4

    goto :goto_ec

    .line 1768
    :cond_e4
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v10, "Recursive update"

    invoke-direct {v8, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "h":I
    .end local v1    # "val":Ljava/lang/Object;, "TV;"
    .end local v2    # "binCount":I
    .end local v3    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v4    # "added":Z
    .end local v5    # "n":I
    .end local v6    # "i":I
    .end local v7    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "fh":I
    .end local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    throw v8

    .line 1770
    .restart local v0    # "h":I
    .restart local v1    # "val":Ljava/lang/Object;, "TV;"
    .restart local v2    # "binCount":I
    .restart local v3    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v4    # "added":Z
    .restart local v5    # "n":I
    .restart local v6    # "i":I
    .restart local v7    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v9    # "fh":I
    .restart local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    :cond_ec
    :goto_ec
    monitor-exit v7
    :try_end_ed
    .catchall {:try_start_76 .. :try_end_ed} :catchall_101

    .line 1771
    if-eqz v2, :cond_108

    .line 1772
    const/16 v8, 0x8

    if-lt v2, v8, :cond_f6

    .line 1773
    invoke-direct {p0, v3, v6}, Ljava/util/concurrent/ConcurrentHashMap;->treeifyBin([Ljava/util/concurrent/ConcurrentHashMap$Node;I)V

    .line 1774
    :cond_f6
    if-nez v4, :cond_f9

    .line 1775
    return-object v1

    .line 1780
    .end local v3    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v4    # "added":Z
    .end local v5    # "n":I
    .end local v6    # "i":I
    .end local v7    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "fh":I
    :cond_f9
    :goto_f9
    if-eqz v1, :cond_100

    .line 1781
    const-wide/16 v3, 0x1

    invoke-direct {p0, v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    .line 1782
    :cond_100
    return-object v1

    .line 1770
    .restart local v3    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v4    # "added":Z
    .restart local v5    # "n":I
    .restart local v6    # "i":I
    .restart local v7    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v9    # "fh":I
    :catchall_101
    move-exception v8

    :try_start_102
    monitor-exit v7
    :try_end_103
    .catchall {:try_start_102 .. :try_end_103} :catchall_101

    throw v8

    .line 1705
    .end local v4    # "added":Z
    .end local v5    # "n":I
    .end local v6    # "i":I
    .end local v7    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "fh":I
    :cond_104
    :goto_104
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;->initTable()[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    .line 1779
    :cond_108
    :goto_108
    goto/16 :goto_10

    .line 1698
    .end local v0    # "h":I
    .end local v1    # "val":Ljava/lang/Object;, "TV;"
    .end local v2    # "binCount":I
    .end local v3    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_10a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1809
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    if-eqz p1, :cond_c5

    if-eqz p2, :cond_c5

    .line 1811
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v0

    .line 1812
    .local v0, "h":I
    const/4 v1, 0x0

    .line 1813
    .local v1, "val":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x0

    .line 1814
    .local v2, "delta":I
    const/4 v3, 0x0

    .line 1815
    .local v3, "binCount":I
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1817
    .local v4, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_11
    if-eqz v4, :cond_bf

    array-length v5, v4

    move v6, v5

    .local v6, "n":I
    if-nez v5, :cond_19

    goto/16 :goto_bf

    .line 1819
    :cond_19
    add-int/lit8 v5, v6, -0x1

    and-int/2addr v5, v0

    move v7, v5

    .local v7, "i":I
    invoke-static {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v5

    move-object v8, v5

    .local v8, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v5, :cond_26

    .line 1820
    goto/16 :goto_b5

    .line 1821
    :cond_26
    iget v5, v8, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v9, v5

    .local v9, "fh":I
    const/4 v10, -0x1

    if-ne v5, v10, :cond_32

    .line 1822
    invoke-virtual {p0, v4, v8}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v4

    goto/16 :goto_c3

    .line 1824
    :cond_32
    monitor-enter v8

    .line 1825
    :try_start_33
    invoke-static {v4, v7}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v5

    if-ne v5, v8, :cond_b1

    .line 1826
    if-ltz v9, :cond_72

    .line 1827
    const/4 v3, 0x1

    .line 1828
    move-object v5, v8

    .local v5, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v10, 0x0

    .line 1830
    .local v10, "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_3e
    iget v11, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v11, v0, :cond_67

    iget-object v11, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v12, v11

    .local v12, "ek":Ljava/lang/Object;, "TK;"
    if-eq v11, p1, :cond_4f

    if-eqz v12, :cond_67

    .line 1832
    invoke-virtual {p1, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_67

    .line 1833
    :cond_4f
    iget-object v11, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {p2, p1, v11}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v1, v11

    .line 1834
    if-eqz v1, :cond_5b

    .line 1835
    iput-object v1, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    goto :goto_6e

    .line 1837
    :cond_5b
    const/4 v2, -0x1

    .line 1838
    iget-object v11, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1839
    .local v11, "en":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v10, :cond_63

    .line 1840
    iput-object v11, v10, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_66

    .line 1842
    :cond_63
    invoke-static {v4, v7, v11}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1844
    .end local v11    # "en":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_66
    goto :goto_6e

    .line 1846
    .end local v12    # "ek":Ljava/lang/Object;, "TK;"
    :cond_67
    move-object v10, v5

    .line 1847
    iget-object v11, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v5, v11

    if-nez v11, :cond_6f

    .line 1848
    nop

    .line 1828
    .end local v5    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v10    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_6e
    goto :goto_b1

    .restart local v5    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v10    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 1851
    .end local v5    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v10    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_72
    instance-of v5, v8, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v5, :cond_a4

    .line 1852
    const/4 v3, 0x2

    .line 1853
    move-object v5, v8

    check-cast v5, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    .line 1855
    .local v5, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    iget-object v10, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v11, v10

    .local v11, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v10, :cond_a3

    .line 1856
    const/4 v10, 0x0

    invoke-virtual {v11, v0, p1, v10}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v10

    move-object v12, v10

    .local v12, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v10, :cond_a3

    .line 1857
    iget-object v10, v12, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    invoke-interface {p2, p1, v10}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v1, v10

    .line 1858
    if-eqz v1, :cond_93

    .line 1859
    iput-object v1, v12, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    goto :goto_a3

    .line 1861
    :cond_93
    const/4 v2, -0x1

    .line 1862
    invoke-virtual {v5, v12}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->removeTreeNode(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v10

    if-eqz v10, :cond_a3

    .line 1863
    iget-object v10, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    invoke-static {v10}, Ljava/util/concurrent/ConcurrentHashMap;->untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v10

    invoke-static {v4, v7, v10}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1866
    .end local v5    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .end local v11    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v12    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_a3
    :goto_a3
    goto :goto_b1

    .line 1867
    :cond_a4
    instance-of v5, v8, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    if-nez v5, :cond_a9

    goto :goto_b1

    .line 1868
    :cond_a9
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v10, "Recursive update"

    invoke-direct {v5, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "h":I
    .end local v1    # "val":Ljava/lang/Object;, "TV;"
    .end local v2    # "delta":I
    .end local v3    # "binCount":I
    .end local v4    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v6    # "n":I
    .end local v7    # "i":I
    .end local v8    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "fh":I
    .end local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    throw v5

    .line 1870
    .restart local v0    # "h":I
    .restart local v1    # "val":Ljava/lang/Object;, "TV;"
    .restart local v2    # "delta":I
    .restart local v3    # "binCount":I
    .restart local v4    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v6    # "n":I
    .restart local v7    # "i":I
    .restart local v8    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v9    # "fh":I
    .restart local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    :cond_b1
    :goto_b1
    monitor-exit v8
    :try_end_b2
    .catchall {:try_start_33 .. :try_end_b2} :catchall_bc

    .line 1871
    if-eqz v3, :cond_c3

    .line 1872
    nop

    .line 1875
    .end local v4    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v6    # "n":I
    .end local v7    # "i":I
    .end local v8    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "fh":I
    :goto_b5
    if-eqz v2, :cond_bb

    .line 1876
    int-to-long v4, v2

    invoke-direct {p0, v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    .line 1877
    :cond_bb
    return-object v1

    .line 1870
    .restart local v4    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v6    # "n":I
    .restart local v7    # "i":I
    .restart local v8    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v9    # "fh":I
    :catchall_bc
    move-exception v5

    :try_start_bd
    monitor-exit v8
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_bc

    throw v5

    .line 1818
    .end local v6    # "n":I
    .end local v7    # "i":I
    .end local v8    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "fh":I
    :cond_bf
    :goto_bf
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;->initTable()[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v4

    .line 1874
    :cond_c3
    :goto_c3
    goto/16 :goto_11

    .line 1810
    .end local v0    # "h":I
    .end local v1    # "val":Ljava/lang/Object;, "TV;"
    .end local v2    # "delta":I
    .end local v3    # "binCount":I
    .end local v4    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_c5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 2140
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 964
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api containsValue(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "value"    # Ljava/lang/Object;

    .line 978
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    if-eqz p1, :cond_28

    .line 981
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    .local v1, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_27

    .line 982
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v3, v1

    array-length v4, v1

    invoke-direct {v0, v1, v3, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 983
    .local v0, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_f
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    move-object v4, v3

    .local v4, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_27

    .line 985
    iget-object v3, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object v5, v3

    .local v5, "v":Ljava/lang/Object;, "TV;"
    if-eq v3, p1, :cond_25

    if-eqz v5, :cond_24

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_25

    .line 987
    .end local v5    # "v":Ljava/lang/Object;, "TV;"
    :cond_24
    goto :goto_f

    .line 986
    .restart local v5    # "v":Ljava/lang/Object;, "TV;"
    :cond_25
    :goto_25
    const/4 v2, 0x1

    return v2

    .line 989
    .end local v0    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v4    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v5    # "v":Ljava/lang/Object;, "TV;"
    :cond_27
    return v2

    .line 979
    .end local v1    # "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_28
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api elements()Ljava/util/Enumeration;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "TV;>;"
        }
    .end annotation

    .line 2163
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, v0

    .local v2, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_8

    :cond_7
    array-length v0, v2

    :goto_8
    move v3, v0

    .line 2164
    .local v3, "f":I
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;

    const/4 v4, 0x0

    move v5, v3

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIILjava/util/concurrent/ConcurrentHashMap;)V

    return-object v1
.end method

.method public whitelist test-api entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1290
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->entrySet:Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;

    move-object v1, v0

    .local v1, "es":Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySetView<TK;TV;>;"
    if-eqz v0, :cond_6

    return-object v1

    .line 1291
    :cond_6
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->entrySet:Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 13
    .param p1, "o"    # Ljava/lang/Object;

    .line 1356
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    if-eq p1, p0, :cond_68

    .line 1357
    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1358
    return v1

    .line 1359
    :cond_8
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    .line 1361
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v3, v2

    .local v3, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v2, :cond_12

    move v2, v1

    goto :goto_13

    :cond_12
    array-length v2, v3

    .line 1362
    .local v2, "f":I
    :goto_13
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    invoke-direct {v4, v3, v2, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 1363
    .local v4, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_18
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v5

    move-object v6, v5

    .local v6, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v5, :cond_34

    .line 1364
    iget-object v5, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 1365
    .local v5, "val":Ljava/lang/Object;, "TV;"
    iget-object v7, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1366
    .local v7, "v":Ljava/lang/Object;
    if-eqz v7, :cond_33

    if-eq v7, v5, :cond_32

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_32

    goto :goto_33

    .line 1368
    .end local v5    # "val":Ljava/lang/Object;, "TV;"
    .end local v7    # "v":Ljava/lang/Object;
    :cond_32
    goto :goto_18

    .line 1367
    .restart local v5    # "val":Ljava/lang/Object;, "TV;"
    .restart local v7    # "v":Ljava/lang/Object;
    :cond_33
    :goto_33
    return v1

    .line 1369
    .end local v5    # "val":Ljava/lang/Object;, "TV;"
    .end local v6    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "v":Ljava/lang/Object;
    :cond_34
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_68

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1371
    .local v6, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    .local v8, "mk":Ljava/lang/Object;
    if-eqz v7, :cond_67

    .line 1372
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    .local v9, "mv":Ljava/lang/Object;
    if-eqz v7, :cond_67

    .line 1373
    invoke-virtual {p0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    .local v10, "v":Ljava/lang/Object;
    if-eqz v7, :cond_67

    if-eq v9, v10, :cond_66

    .line 1374
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_66

    goto :goto_67

    .line 1376
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v8    # "mk":Ljava/lang/Object;
    .end local v9    # "mv":Ljava/lang/Object;
    .end local v10    # "v":Ljava/lang/Object;
    :cond_66
    goto :goto_3c

    .line 1375
    .restart local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .restart local v8    # "mk":Ljava/lang/Object;
    :cond_67
    :goto_67
    return v1

    .line 1378
    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v2    # "f":I
    .end local v3    # "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v4    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v8    # "mk":Ljava/lang/Object;
    :cond_68
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api forEach(JLjava/util/function/BiConsumer;)V
    .registers 11
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 3706
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    if-eqz p3, :cond_15

    .line 3707
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask;

    .line 3708
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v6, p3

    .end local p3    # "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    .local v6, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/BiConsumer;)V

    .line 3709
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask;->invoke()Ljava/lang/Object;

    .line 3710
    return-void

    .line 3706
    .end local v6    # "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    .restart local p3    # "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    :cond_15
    move-object v6, p3

    .end local p3    # "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    .restart local v6    # "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public whitelist test-api forEach(JLjava/util/function/BiFunction;Ljava/util/function/Consumer;)V
    .registers 13
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TU;>;",
            "Ljava/util/function/Consumer<",
            "-TU;>;)V"
        }
    .end annotation

    .line 3728
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    .local p4, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    if-eqz p3, :cond_18

    if-eqz p4, :cond_18

    .line 3730
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;

    .line 3731
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v6, p3

    move-object v7, p4

    .end local p3    # "transformer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    .end local p4    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    .local v6, "transformer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    .local v7, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/BiFunction;Ljava/util/function/Consumer;)V

    .line 3732
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->invoke()Ljava/lang/Object;

    .line 3733
    return-void

    .line 3728
    .end local v6    # "transformer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    .end local v7    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    .restart local p3    # "transformer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    .restart local p4    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    :cond_18
    move-object v6, p3

    move-object v7, p4

    .line 3729
    .end local p3    # "transformer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    .end local p4    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    .restart local v6    # "transformer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    .restart local v7    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public whitelist test-api forEach(Ljava/util/function/BiConsumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 1603
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    if-eqz p1, :cond_1f

    .line 1605
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    .local v1, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_1e

    .line 1606
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v2, v1

    const/4 v3, 0x0

    array-length v4, v1

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 1607
    .local v0, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_f
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    move-object v3, v2

    .local v3, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_1e

    .line 1608
    iget-object v2, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v4, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {p1, v2, v4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_f

    .line 1611
    .end local v0    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v3    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1e
    return-void

    .line 1603
    .end local v1    # "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api forEachEntry(JLjava/util/function/Consumer;)V
    .registers 11
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 4245
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p3, :cond_15

    .line 4246
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v6, p3

    .end local p3    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    .local v6, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Consumer;)V

    .line 4247
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->invoke()Ljava/lang/Object;

    .line 4248
    return-void

    .line 4245
    .end local v6    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    .restart local p3    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_15
    move-object v6, p3

    .end local p3    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    .restart local v6    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public whitelist test-api forEachEntry(JLjava/util/function/Function;Ljava/util/function/Consumer;)V
    .registers 13
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;+TU;>;",
            "Ljava/util/function/Consumer<",
            "-TU;>;)V"
        }
    .end annotation

    .line 4266
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    .local p4, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    if-eqz p3, :cond_18

    if-eqz p4, :cond_18

    .line 4268
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;

    .line 4269
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v6, p3

    move-object v7, p4

    .end local p3    # "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    .end local p4    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    .local v6, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    .local v7, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    .line 4270
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->invoke()Ljava/lang/Object;

    .line 4271
    return-void

    .line 4266
    .end local v6    # "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    .end local v7    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    .restart local p3    # "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    .restart local p4    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    :cond_18
    move-object v6, p3

    move-object v7, p4

    .line 4267
    .end local p3    # "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    .end local p4    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    .restart local v6    # "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    .restart local v7    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public whitelist test-api forEachKey(JLjava/util/function/Consumer;)V
    .registers 11
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/Consumer<",
            "-TK;>;)V"
        }
    .end annotation

    .line 3873
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    if-eqz p3, :cond_15

    .line 3874
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;

    .line 3875
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v6, p3

    .end local p3    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    .local v6, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Consumer;)V

    .line 3876
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;->invoke()Ljava/lang/Object;

    .line 3877
    return-void

    .line 3873
    .end local v6    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    .restart local p3    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    :cond_15
    move-object v6, p3

    .end local p3    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    .restart local v6    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public whitelist test-api forEachKey(JLjava/util/function/Function;Ljava/util/function/Consumer;)V
    .registers 13
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function<",
            "-TK;+TU;>;",
            "Ljava/util/function/Consumer<",
            "-TU;>;)V"
        }
    .end annotation

    .line 3895
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    .local p4, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    if-eqz p3, :cond_18

    if-eqz p4, :cond_18

    .line 3897
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;

    .line 3898
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v6, p3

    move-object v7, p4

    .end local p3    # "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    .end local p4    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    .local v6, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    .local v7, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    .line 3899
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;->invoke()Ljava/lang/Object;

    .line 3900
    return-void

    .line 3895
    .end local v6    # "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    .end local v7    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    .restart local p3    # "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    .restart local p4    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    :cond_18
    move-object v6, p3

    move-object v7, p4

    .line 3896
    .end local p3    # "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    .end local p4    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    .restart local v6    # "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    .restart local v7    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public whitelist test-api forEachValue(JLjava/util/function/Consumer;)V
    .registers 11
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/Consumer<",
            "-TV;>;)V"
        }
    .end annotation

    .line 4059
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    if-eqz p3, :cond_15

    .line 4061
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;

    .line 4062
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v6, p3

    .end local p3    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    .local v6, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Consumer;)V

    .line 4063
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->invoke()Ljava/lang/Object;

    .line 4064
    return-void

    .line 4060
    .end local v6    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    .restart local p3    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    :cond_15
    move-object v6, p3

    .end local p3    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    .restart local v6    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public whitelist test-api forEachValue(JLjava/util/function/Function;Ljava/util/function/Consumer;)V
    .registers 13
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function<",
            "-TV;+TU;>;",
            "Ljava/util/function/Consumer<",
            "-TU;>;)V"
        }
    .end annotation

    .line 4082
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    .local p4, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    if-eqz p3, :cond_18

    if-eqz p4, :cond_18

    .line 4084
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;

    .line 4085
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v6, p3

    move-object v7, p4

    .end local p3    # "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    .end local p4    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    .local v6, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    .local v7, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    .line 4086
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;->invoke()Ljava/lang/Object;

    .line 4087
    return-void

    .line 4082
    .end local v6    # "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    .end local v7    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    .restart local p3    # "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    .restart local p4    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    :cond_18
    move-object v6, p3

    move-object v7, p4

    .line 4083
    .end local p3    # "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    .end local p4    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    .restart local v6    # "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    .restart local v7    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 936
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v0

    .line 937
    .local v0, "h":I
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, v1

    .local v2, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v3, 0x0

    if-eqz v1, :cond_56

    array-length v1, v2

    move v4, v1

    .local v4, "n":I
    if-lez v1, :cond_56

    add-int/lit8 v1, v4, -0x1

    and-int/2addr v1, v0

    .line 938
    invoke-static {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    move-object v5, v1

    .local v5, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_56

    .line 939
    iget v1, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v6, v1

    .local v6, "eh":I
    if-ne v1, v0, :cond_31

    .line 940
    iget-object v1, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v7, v1

    .local v7, "ek":Ljava/lang/Object;, "TK;"
    if-eq v1, p1, :cond_2e

    if-eqz v7, :cond_3d

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 941
    :cond_2e
    iget-object v1, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    return-object v1

    .line 943
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    :cond_31
    if-gez v6, :cond_3d

    .line 944
    invoke-virtual {v5, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap$Node;->find(ILjava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    move-object v7, v1

    .local v7, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_3c

    iget-object v3, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    :cond_3c
    return-object v3

    .line 945
    .end local v7    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_3d
    iget-object v1, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v5, v1

    if-eqz v1, :cond_56

    .line 946
    iget v1, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v1, v0, :cond_3d

    iget-object v1, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v7, v1

    .local v7, "ek":Ljava/lang/Object;, "TK;"
    if-eq v1, p1, :cond_53

    if-eqz v7, :cond_3d

    .line 947
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 948
    :cond_53
    iget-object v1, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    return-object v1

    .line 951
    .end local v4    # "n":I
    .end local v5    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v6    # "eh":I
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    :cond_56
    return-object v3
.end method

.method public whitelist test-api getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .line 1599
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_9

    move-object v0, p2

    goto :goto_a

    :cond_9
    move-object v0, v1

    :goto_a
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 1302
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 1304
    .local v0, "h":I
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, v1

    .local v2, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_24

    .line 1305
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v3, v2

    const/4 v4, 0x0

    array-length v5, v2

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 1306
    .local v1, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_e
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    move-object v4, v3

    .local v4, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_24

    .line 1307
    iget-object v3, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    iget-object v5, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    xor-int/2addr v3, v5

    add-int/2addr v0, v3

    goto :goto_e

    .line 1309
    .end local v1    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v4    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_24
    return v0
.end method

.method final greylist-max-o helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;)[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2370
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p2, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz p1, :cond_4b

    instance-of v0, p2, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    if-eqz v0, :cond_4b

    move-object v0, p2

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    .local v1, "nextTab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_49

    .line 2372
    array-length v0, p1

    invoke-static {v0}, Ljava/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    .line 2373
    .local v0, "rs":I
    :cond_15
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-ne v1, v2, :cond_47

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-ne v2, p1, :cond_47

    iget v2, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    move v7, v2

    .local v7, "sc":I
    if-gez v2, :cond_45

    .line 2375
    const v2, 0xffff

    add-int/2addr v2, v0

    if-eq v7, v2, :cond_43

    add-int/lit8 v2, v0, 0x1

    if-eq v7, v2, :cond_43

    iget v2, p0, Ljava/util/concurrent/ConcurrentHashMap;->transferIndex:I

    if-gtz v2, :cond_32

    .line 2377
    move-object v4, p0

    goto :goto_48

    .line 2378
    :cond_32
    sget-object v3, Ljava/util/concurrent/ConcurrentHashMap;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v5, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    add-int/lit8 v8, v7, 0x1

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Ljdk/internal/misc/Unsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2379
    invoke-direct {p0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->transfer([Ljava/util/concurrent/ConcurrentHashMap$Node;[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2380
    goto :goto_48

    .line 2375
    :cond_43
    move-object v4, p0

    goto :goto_48

    .line 2373
    :cond_45
    move-object v4, p0

    goto :goto_48

    .end local v7    # "sc":I
    :cond_47
    move-object v4, p0

    .line 2383
    :goto_48
    return-object v1

    .line 2370
    .end local v0    # "rs":I
    :cond_49
    move-object v4, p0

    goto :goto_4c

    .end local v1    # "nextTab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_4b
    move-object v4, p0

    .line 2385
    :goto_4c
    iget-object v0, v4, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    return-object v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 5

    .line 920
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist test-api keySet()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1243
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->keySet:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-object v1, v0

    .local v1, "ks":Ljava/util/concurrent/ConcurrentHashMap$KeySetView;, "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<TK;TV;>;"
    if-eqz v0, :cond_6

    return-object v1

    .line 1244
    :cond_6
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->keySet:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    return-object v0
.end method

.method public bridge synthetic whitelist keySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    return-object v0
.end method

.method public whitelist test-api keySet(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$KeySetView;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2226
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "mappedValue":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_8

    .line 2228
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V

    return-object v0

    .line 2227
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api keys()Ljava/util/Enumeration;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "TK;>;"
        }
    .end annotation

    .line 2151
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, v0

    .local v2, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_8

    :cond_7
    array-length v0, v2

    :goto_8
    move v3, v0

    .line 2152
    .local v3, "f":I
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;

    const/4 v4, 0x0

    move v5, v3

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIILjava/util/concurrent/ConcurrentHashMap;)V

    return-object v1
.end method

.method public whitelist test-api mappingCount()J
    .registers 6

    .line 2180
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v0

    .line 2181
    .local v0, "n":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_b

    goto :goto_c

    :cond_b
    move-wide v2, v0

    :goto_c
    return-wide v2
.end method

.method public whitelist test-api merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction<",
            "-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 2032
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    if-eqz v2, :cond_148

    if-eqz v3, :cond_148

    if-eqz v4, :cond_148

    .line 2034
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v5

    .line 2035
    .local v5, "h":I
    const/4 v0, 0x0

    .line 2036
    .local v0, "val":Ljava/lang/Object;, "TV;"
    const/4 v6, 0x0

    .line 2037
    .local v6, "delta":I
    const/4 v7, 0x0

    .line 2038
    .local v7, "binCount":I
    iget-object v8, v1, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v9, v8

    move v8, v7

    move v7, v6

    move-object v6, v0

    .line 2040
    .end local v0    # "val":Ljava/lang/Object;, "TV;"
    .local v6, "val":Ljava/lang/Object;, "TV;"
    .local v7, "delta":I
    .local v8, "binCount":I
    .local v9, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_1f
    if-eqz v9, :cond_13b

    array-length v0, v9

    move v10, v0

    .local v10, "n":I
    if-nez v0, :cond_29

    move-object/from16 v16, v6

    goto/16 :goto_13d

    .line 2042
    :cond_29
    add-int/lit8 v0, v10, -0x1

    and-int/2addr v0, v5

    move v11, v0

    .local v11, "i":I
    invoke-static {v9, v0}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v12, v0

    .local v12, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v13, 0x0

    if-nez v0, :cond_45

    .line 2043
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v0, v5, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v9, v11, v13, v0}, Ljava/util/concurrent/ConcurrentHashMap;->casTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)Z

    move-result v0

    if-eqz v0, :cond_144

    .line 2044
    const/4 v0, 0x1

    .line 2045
    .end local v7    # "delta":I
    .local v0, "delta":I
    move-object/from16 v6, p2

    .line 2046
    goto/16 :goto_12d

    .line 2049
    .end local v0    # "delta":I
    .restart local v7    # "delta":I
    :cond_45
    iget v0, v12, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v14, v0

    .local v14, "fh":I
    const/4 v15, -0x1

    if-ne v0, v15, :cond_52

    .line 2050
    invoke-virtual {v1, v9, v12}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v9, v0

    .end local v9    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v0, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto/16 :goto_144

    .line 2052
    .end local v0    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v9    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_52
    monitor-enter v12

    .line 2053
    :try_start_53
    invoke-static {v9, v11}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0
    :try_end_57
    .catchall {:try_start_53 .. :try_end_57} :catchall_134

    if-ne v0, v12, :cond_11e

    .line 2054
    if-ltz v14, :cond_ca

    .line 2055
    const/4 v0, 0x1

    .line 2056
    .end local v8    # "binCount":I
    .local v0, "binCount":I
    move-object v8, v12

    .local v8, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v13, 0x0

    move-object/from16 v17, v13

    move v13, v0

    move-object/from16 v0, v17

    .line 2058
    .local v0, "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v13, "binCount":I
    :goto_63
    :try_start_63
    iget v15, v8, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v15, v5, :cond_9f

    iget-object v15, v8, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;
    :try_end_69
    .catchall {:try_start_63 .. :try_end_69} :catchall_c4

    move-object/from16 v16, v15

    .local v16, "ek":Ljava/lang/Object;, "TK;"
    if-eq v15, v2, :cond_80

    if-eqz v16, :cond_7b

    .line 2060
    move-object/from16 v15, v16

    .end local v16    # "ek":Ljava/lang/Object;, "TK;"
    .local v15, "ek":Ljava/lang/Object;, "TK;"
    :try_start_71
    invoke-virtual {v2, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16
    :try_end_75
    .catchall {:try_start_71 .. :try_end_75} :catchall_b5

    if-eqz v16, :cond_78

    goto :goto_82

    :cond_78
    move-object/from16 v16, v6

    goto :goto_a1

    .line 2058
    .end local v15    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v16    # "ek":Ljava/lang/Object;, "TK;"
    :cond_7b
    move-object/from16 v15, v16

    .end local v16    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v15    # "ek":Ljava/lang/Object;, "TK;"
    move-object/from16 v16, v6

    goto :goto_a1

    .end local v15    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v16    # "ek":Ljava/lang/Object;, "TK;"
    :cond_80
    move-object/from16 v15, v16

    .line 2061
    .end local v16    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v15    # "ek":Ljava/lang/Object;, "TK;"
    :goto_82
    move-object/from16 v16, v6

    .end local v6    # "val":Ljava/lang/Object;, "TV;"
    .local v16, "val":Ljava/lang/Object;, "TV;"
    :try_start_84
    iget-object v6, v8, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v4, v6, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_8a
    .catchall {:try_start_84 .. :try_end_8a} :catchall_be

    .line 2062
    .end local v16    # "val":Ljava/lang/Object;, "TV;"
    .restart local v6    # "val":Ljava/lang/Object;, "TV;"
    if-eqz v6, :cond_8f

    .line 2063
    :try_start_8c
    iput-object v6, v8, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;
    :try_end_8e
    .catchall {:try_start_8c .. :try_end_8e} :catchall_b5

    goto :goto_b2

    .line 2065
    :cond_8f
    const/4 v7, -0x1

    .line 2066
    move-object/from16 v16, v6

    .end local v6    # "val":Ljava/lang/Object;, "TV;"
    .restart local v16    # "val":Ljava/lang/Object;, "TV;"
    :try_start_92
    iget-object v6, v8, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 2067
    .local v6, "en":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_99

    .line 2068
    iput-object v6, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_9c

    .line 2070
    :cond_99
    invoke-static {v9, v11, v6}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2072
    .end local v6    # "en":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_9c
    move-object/from16 v6, v16

    goto :goto_b2

    .line 2058
    .end local v15    # "ek":Ljava/lang/Object;, "TK;"
    .end local v16    # "val":Ljava/lang/Object;, "TV;"
    .local v6, "val":Ljava/lang/Object;, "TV;"
    :cond_9f
    move-object/from16 v16, v6

    .line 2074
    .end local v6    # "val":Ljava/lang/Object;, "TV;"
    .restart local v16    # "val":Ljava/lang/Object;, "TV;"
    :goto_a1
    move-object v0, v8

    .line 2075
    iget-object v6, v8, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_a4
    .catchall {:try_start_92 .. :try_end_a4} :catchall_be

    move-object v8, v6

    if-nez v6, :cond_b9

    .line 2076
    const/4 v7, 0x1

    .line 2077
    move-object/from16 v6, p2

    .line 2078
    .end local v16    # "val":Ljava/lang/Object;, "TV;"
    .restart local v6    # "val":Ljava/lang/Object;, "TV;"
    :try_start_aa
    new-instance v15, Ljava/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v15, v5, v2, v6}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v15, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_b1
    .catchall {:try_start_aa .. :try_end_b1} :catchall_b5

    .line 2079
    nop

    .line 2056
    .end local v0    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v8    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_b2
    move v8, v13

    goto/16 :goto_122

    .line 2108
    :catchall_b5
    move-exception v0

    move v8, v13

    goto/16 :goto_137

    .line 2056
    .end local v6    # "val":Ljava/lang/Object;, "TV;"
    .restart local v0    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v8    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v16    # "val":Ljava/lang/Object;, "TV;"
    :cond_b9
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v6, v16

    goto :goto_63

    .line 2108
    .end local v0    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v8    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_be
    move-exception v0

    move v8, v13

    move-object/from16 v6, v16

    goto/16 :goto_137

    .end local v16    # "val":Ljava/lang/Object;, "TV;"
    .restart local v6    # "val":Ljava/lang/Object;, "TV;"
    :catchall_c4
    move-exception v0

    move-object/from16 v16, v6

    move v8, v13

    .end local v6    # "val":Ljava/lang/Object;, "TV;"
    .restart local v16    # "val":Ljava/lang/Object;, "TV;"
    goto/16 :goto_137

    .line 2083
    .end local v13    # "binCount":I
    .end local v16    # "val":Ljava/lang/Object;, "TV;"
    .restart local v6    # "val":Ljava/lang/Object;, "TV;"
    .local v8, "binCount":I
    :cond_ca
    move-object/from16 v16, v6

    .end local v6    # "val":Ljava/lang/Object;, "TV;"
    .restart local v16    # "val":Ljava/lang/Object;, "TV;"
    :try_start_cc
    instance-of v0, v12, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v0, :cond_10d

    .line 2084
    const/4 v8, 0x2

    .line 2085
    move-object v0, v12

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    .line 2086
    .local v0, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    iget-object v6, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2087
    .local v6, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v6, :cond_d9

    goto :goto_dd

    .line 2088
    :cond_d9
    invoke-virtual {v6, v5, v2, v13}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v13

    :goto_dd
    nop

    .line 2089
    .local v13, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v13, :cond_e2

    move-object v15, v3

    goto :goto_e8

    .line 2090
    :cond_e2
    iget-object v15, v13, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    invoke-interface {v4, v15, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15
    :try_end_e8
    .catchall {:try_start_cc .. :try_end_e8} :catchall_11a

    :goto_e8
    nop

    .line 2091
    .end local v16    # "val":Ljava/lang/Object;, "TV;"
    .local v15, "val":Ljava/lang/Object;, "TV;"
    if-eqz v15, :cond_f5

    .line 2092
    if-eqz v13, :cond_f0

    .line 2093
    :try_start_ed
    iput-object v15, v13, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    goto :goto_10b

    .line 2095
    :cond_f0
    const/4 v7, 0x1

    .line 2096
    invoke-virtual {v0, v5, v2, v15}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_10b

    .line 2099
    :cond_f5
    if-eqz v13, :cond_10b

    .line 2100
    const/4 v7, -0x1

    .line 2101
    invoke-virtual {v0, v13}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->removeTreeNode(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v16

    if-eqz v16, :cond_10b

    .line 2102
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    invoke-static {v2}, Ljava/util/concurrent/ConcurrentHashMap;->untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    invoke-static {v9, v11, v2}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_107
    .catchall {:try_start_ed .. :try_end_107} :catchall_108

    goto :goto_10b

    .line 2108
    .end local v0    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .end local v6    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v13    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :catchall_108
    move-exception v0

    move-object v6, v15

    goto :goto_137

    .line 2104
    :cond_10b
    :goto_10b
    move-object v6, v15

    goto :goto_122

    .line 2105
    .end local v15    # "val":Ljava/lang/Object;, "TV;"
    .restart local v16    # "val":Ljava/lang/Object;, "TV;"
    :cond_10d
    :try_start_10d
    instance-of v0, v12, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    if-nez v0, :cond_112

    goto :goto_120

    .line 2106
    :cond_112
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Recursive update"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v5    # "h":I
    .end local v7    # "delta":I
    .end local v8    # "binCount":I
    .end local v9    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v10    # "n":I
    .end local v11    # "i":I
    .end local v12    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v14    # "fh":I
    .end local v16    # "val":Ljava/lang/Object;, "TV;"
    .end local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    .end local p3    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    throw v0
    :try_end_11a
    .catchall {:try_start_10d .. :try_end_11a} :catchall_11a

    .line 2108
    .restart local v5    # "h":I
    .restart local v7    # "delta":I
    .restart local v8    # "binCount":I
    .restart local v9    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v10    # "n":I
    .restart local v11    # "i":I
    .restart local v12    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v14    # "fh":I
    .restart local v16    # "val":Ljava/lang/Object;, "TV;"
    .restart local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "value":Ljava/lang/Object;, "TV;"
    .restart local p3    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    :catchall_11a
    move-exception v0

    move-object/from16 v6, v16

    goto :goto_137

    .line 2053
    .end local v16    # "val":Ljava/lang/Object;, "TV;"
    .local v6, "val":Ljava/lang/Object;, "TV;"
    :cond_11e
    move-object/from16 v16, v6

    .line 2108
    .end local v6    # "val":Ljava/lang/Object;, "TV;"
    .restart local v16    # "val":Ljava/lang/Object;, "TV;"
    :goto_120
    move-object/from16 v6, v16

    .end local v16    # "val":Ljava/lang/Object;, "TV;"
    .restart local v6    # "val":Ljava/lang/Object;, "TV;"
    :goto_122
    :try_start_122
    monitor-exit v12
    :try_end_123
    .catchall {:try_start_122 .. :try_end_123} :catchall_139

    .line 2109
    if-eqz v8, :cond_144

    .line 2110
    const/16 v0, 0x8

    if-lt v8, v0, :cond_12c

    .line 2111
    invoke-direct {v1, v9, v11}, Ljava/util/concurrent/ConcurrentHashMap;->treeifyBin([Ljava/util/concurrent/ConcurrentHashMap$Node;I)V

    .line 2116
    .end local v9    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v10    # "n":I
    .end local v11    # "i":I
    .end local v12    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v14    # "fh":I
    :cond_12c
    move v0, v7

    .end local v7    # "delta":I
    .local v0, "delta":I
    :goto_12d
    if-eqz v0, :cond_133

    .line 2117
    int-to-long v9, v0

    invoke-direct {v1, v9, v10, v8}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    .line 2118
    :cond_133
    return-object v6

    .line 2108
    .end local v0    # "delta":I
    .restart local v7    # "delta":I
    .restart local v9    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v10    # "n":I
    .restart local v11    # "i":I
    .restart local v12    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v14    # "fh":I
    :catchall_134
    move-exception v0

    move-object/from16 v16, v6

    :goto_137
    :try_start_137
    monitor-exit v12
    :try_end_138
    .catchall {:try_start_137 .. :try_end_138} :catchall_139

    throw v0

    :catchall_139
    move-exception v0

    goto :goto_137

    .line 2040
    .end local v10    # "n":I
    .end local v11    # "i":I
    .end local v12    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v14    # "fh":I
    :cond_13b
    move-object/from16 v16, v6

    .line 2041
    .end local v6    # "val":Ljava/lang/Object;, "TV;"
    .restart local v16    # "val":Ljava/lang/Object;, "TV;"
    :goto_13d
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;->initTable()[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v9, v0

    move-object/from16 v6, v16

    .line 2115
    .end local v16    # "val":Ljava/lang/Object;, "TV;"
    .restart local v6    # "val":Ljava/lang/Object;, "TV;"
    :cond_144
    :goto_144
    move-object/from16 v2, p1

    goto/16 :goto_1f

    .line 2033
    .end local v5    # "h":I
    .end local v6    # "val":Ljava/lang/Object;, "TV;"
    .end local v7    # "delta":I
    .end local v8    # "binCount":I
    .end local v9    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_148
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1006
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api putAll(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 1087
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->tryPresize(I)V

    .line 1088
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1089
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    goto :goto_f

    .line 1090
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_28
    return-void
.end method

.method public whitelist test-api putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1546
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final greylist-max-o putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 16
    .param p3, "onlyIfAbsent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;Z)TV;"
        }
    .end annotation

    .line 1011
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_ca

    if-eqz p2, :cond_ca

    .line 1012
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v0

    .line 1013
    .local v0, "hash":I
    const/4 v1, 0x0

    .line 1014
    .local v1, "binCount":I
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1016
    .local v2, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_f
    if-eqz v2, :cond_c4

    array-length v3, v2

    move v4, v3

    .local v4, "n":I
    if-nez v3, :cond_17

    goto/16 :goto_c4

    .line 1018
    :cond_17
    add-int/lit8 v3, v4, -0x1

    and-int/2addr v3, v0

    move v5, v3

    .local v5, "i":I
    invoke-static {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    move-object v6, v3

    .local v6, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v7, 0x0

    if-nez v3, :cond_30

    .line 1019
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v3, v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2, v5, v7, v3}, Ljava/util/concurrent/ConcurrentHashMap;->casTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)Z

    move-result v3

    if-eqz v3, :cond_c8

    .line 1020
    goto/16 :goto_bb

    .line 1022
    :cond_30
    iget v3, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v8, v3

    .local v8, "fh":I
    const/4 v9, -0x1

    if-ne v3, v9, :cond_3c

    .line 1023
    invoke-virtual {p0, v2, v6}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    goto/16 :goto_c8

    .line 1024
    :cond_3c
    if-eqz p3, :cond_53

    if-ne v8, v0, :cond_53

    iget-object v3, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v9, v3

    .local v9, "fk":Ljava/lang/Object;, "TK;"
    if-eq v3, p1, :cond_4d

    if-eqz v9, :cond_53

    .line 1026
    invoke-virtual {p1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    :cond_4d
    iget-object v3, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object v10, v3

    .local v10, "fv":Ljava/lang/Object;, "TV;"
    if-eqz v3, :cond_53

    .line 1028
    return-object v10

    .line 1030
    .end local v9    # "fk":Ljava/lang/Object;, "TK;"
    .end local v10    # "fv":Ljava/lang/Object;, "TV;"
    :cond_53
    const/4 v3, 0x0

    .line 1031
    .local v3, "oldVal":Ljava/lang/Object;, "TV;"
    monitor-enter v6

    .line 1032
    :try_start_55
    invoke-static {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v9

    if-ne v9, v6, :cond_ae

    .line 1033
    if-ltz v8, :cond_8a

    .line 1034
    const/4 v1, 0x1

    .line 1035
    move-object v9, v6

    .line 1037
    .local v9, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_5f
    iget v10, v9, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v10, v0, :cond_78

    iget-object v10, v9, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v11, v10

    .local v11, "ek":Ljava/lang/Object;, "TK;"
    if-eq v10, p1, :cond_70

    if-eqz v11, :cond_78

    .line 1039
    invoke-virtual {p1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_78

    .line 1040
    :cond_70
    iget-object v10, v9, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object v3, v10

    .line 1041
    if-nez p3, :cond_86

    .line 1042
    iput-object p2, v9, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    goto :goto_86

    .line 1045
    .end local v11    # "ek":Ljava/lang/Object;, "TK;"
    :cond_78
    move-object v10, v9

    .line 1046
    .local v10, "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v11, v9, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v9, v11

    if-nez v11, :cond_87

    .line 1047
    new-instance v11, Ljava/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v11, v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v11, v10, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1048
    nop

    .line 1035
    .end local v9    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v10    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_86
    :goto_86
    goto :goto_ae

    .restart local v9    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_87
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 1052
    .end local v9    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_8a
    instance-of v9, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v9, :cond_a1

    .line 1054
    const/4 v1, 0x2

    .line 1055
    move-object v9, v6

    check-cast v9, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    invoke-virtual {v9, v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v9

    move-object v10, v9

    .local v10, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v9, :cond_a0

    .line 1057
    iget-object v9, v10, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object v3, v9

    .line 1058
    if-nez p3, :cond_a0

    .line 1059
    iput-object p2, v10, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 1061
    .end local v10    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_a0
    goto :goto_ae

    .line 1062
    :cond_a1
    instance-of v9, v6, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    if-nez v9, :cond_a6

    goto :goto_ae

    .line 1063
    :cond_a6
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v9, "Recursive update"

    invoke-direct {v7, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "hash":I
    .end local v1    # "binCount":I
    .end local v2    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v3    # "oldVal":Ljava/lang/Object;, "TV;"
    .end local v4    # "n":I
    .end local v5    # "i":I
    .end local v6    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v8    # "fh":I
    .end local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    .end local p3    # "onlyIfAbsent":Z
    throw v7

    .line 1065
    .restart local v0    # "hash":I
    .restart local v1    # "binCount":I
    .restart local v2    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v3    # "oldVal":Ljava/lang/Object;, "TV;"
    .restart local v4    # "n":I
    .restart local v5    # "i":I
    .restart local v6    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v8    # "fh":I
    .restart local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "value":Ljava/lang/Object;, "TV;"
    .restart local p3    # "onlyIfAbsent":Z
    :cond_ae
    :goto_ae
    monitor-exit v6
    :try_end_af
    .catchall {:try_start_55 .. :try_end_af} :catchall_c1

    .line 1066
    if-eqz v1, :cond_c8

    .line 1067
    const/16 v9, 0x8

    if-lt v1, v9, :cond_b8

    .line 1068
    invoke-direct {p0, v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->treeifyBin([Ljava/util/concurrent/ConcurrentHashMap$Node;I)V

    .line 1069
    :cond_b8
    if-eqz v3, :cond_bb

    .line 1070
    return-object v3

    .line 1075
    .end local v2    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v3    # "oldVal":Ljava/lang/Object;, "TV;"
    .end local v4    # "n":I
    .end local v5    # "i":I
    .end local v6    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v8    # "fh":I
    :cond_bb
    :goto_bb
    const-wide/16 v2, 0x1

    invoke-direct {p0, v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    .line 1076
    return-object v7

    .line 1065
    .restart local v2    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v3    # "oldVal":Ljava/lang/Object;, "TV;"
    .restart local v4    # "n":I
    .restart local v5    # "i":I
    .restart local v6    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v8    # "fh":I
    :catchall_c1
    move-exception v7

    :try_start_c2
    monitor-exit v6
    :try_end_c3
    .catchall {:try_start_c2 .. :try_end_c3} :catchall_c1

    throw v7

    .line 1017
    .end local v3    # "oldVal":Ljava/lang/Object;, "TV;"
    .end local v4    # "n":I
    .end local v5    # "i":I
    .end local v6    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v8    # "fh":I
    :cond_c4
    :goto_c4
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;->initTable()[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    .line 1074
    :cond_c8
    :goto_c8
    goto/16 :goto_f

    .line 1011
    .end local v0    # "hash":I
    .end local v1    # "binCount":I
    .end local v2    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_ca
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api reduce(JLjava/util/function/BiFunction;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 14
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TU;>;",
            "Ljava/util/function/BiFunction<",
            "-TU;-TU;+TU;>;)TU;"
        }
    .end annotation

    .line 3778
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    .local p4, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    if-eqz p3, :cond_1a

    if-eqz p4, :cond_1a

    .line 3780
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;

    .line 3781
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p3

    move-object v8, p4

    .end local p3    # "transformer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    .end local p4    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    .local v7, "transformer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    .local v8, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;Ljava/util/function/BiFunction;Ljava/util/function/BiFunction;)V

    .line 3782
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->invoke()Ljava/lang/Object;

    move-result-object p3

    .line 3780
    return-object p3

    .line 3778
    .end local v7    # "transformer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    .end local v8    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    .restart local p3    # "transformer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    .restart local p4    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    :cond_1a
    move-object v7, p3

    move-object v8, p4

    .line 3779
    .end local p3    # "transformer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    .end local p4    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    .restart local v7    # "transformer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    .restart local v8    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public whitelist test-api reduceEntries(JLjava/util/function/Function;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 14
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;+TU;>;",
            "Ljava/util/function/BiFunction<",
            "-TU;-TU;+TU;>;)TU;"
        }
    .end annotation

    .line 4334
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    .local p4, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    if-eqz p3, :cond_1a

    if-eqz p4, :cond_1a

    .line 4336
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;

    .line 4337
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p3

    move-object v8, p4

    .end local p3    # "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    .end local p4    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    .local v7, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    .local v8, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;Ljava/util/function/Function;Ljava/util/function/BiFunction;)V

    .line 4338
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->invoke()Ljava/lang/Object;

    move-result-object p3

    .line 4336
    return-object p3

    .line 4334
    .end local v7    # "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    .end local v8    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    .restart local p3    # "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    .restart local p4    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    :cond_1a
    move-object v7, p3

    move-object v8, p4

    .line 4335
    .end local p3    # "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    .end local p4    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    .restart local v7    # "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    .restart local v8    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public whitelist test-api reduceEntries(JLjava/util/function/BiFunction;)Ljava/util/Map$Entry;
    .registers 12
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/BiFunction<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;+",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4309
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/util/Map$Entry<TK;TV;>;Ljava/util/Map$Entry<TK;TV;>;+Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p3, :cond_19

    .line 4310
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    .line 4311
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p3

    .end local p3    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/util/Map$Entry<TK;TV;>;Ljava/util/Map$Entry<TK;TV;>;+Ljava/util/Map$Entry<TK;TV;>;>;"
    .local v7, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/util/Map$Entry<TK;TV;>;Ljava/util/Map$Entry<TK;TV;>;+Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;Ljava/util/function/BiFunction;)V

    .line 4312
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->invoke()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 4310
    return-object p3

    .line 4309
    .end local v7    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/util/Map$Entry<TK;TV;>;Ljava/util/Map$Entry<TK;TV;>;+Ljava/util/Map$Entry<TK;TV;>;>;"
    .restart local p3    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/util/Map$Entry<TK;TV;>;Ljava/util/Map$Entry<TK;TV;>;+Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_19
    move-object v7, p3

    .end local p3    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/util/Map$Entry<TK;TV;>;Ljava/util/Map$Entry<TK;TV;>;+Ljava/util/Map$Entry<TK;TV;>;>;"
    .restart local v7    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/util/Map$Entry<TK;TV;>;Ljava/util/Map$Entry<TK;TV;>;+Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public whitelist test-api reduceEntriesToDouble(JLjava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)D
    .registers 18
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # D
    .param p6, "reducer"    # Ljava/util/function/DoubleBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToDoubleFunction<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;D",
            "Ljava/util/function/DoubleBinaryOperator;",
            ")D"
        }
    .end annotation

    .line 4360
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p3, :cond_22

    if-eqz p6, :cond_22

    .line 4362
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

    .line 4363
    invoke-virtual/range {p0 .. p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;Ljava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)V

    .line 4364
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 4362
    return-wide v0

    .line 4361
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api reduceEntriesToInt(JLjava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)I
    .registers 16
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # I
    .param p5, "reducer"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToIntFunction<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;I",
            "Ljava/util/function/IntBinaryOperator;",
            ")I"
        }
    .end annotation

    .line 4412
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p3, :cond_21

    if-eqz p5, :cond_21

    .line 4414
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;

    .line 4415
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p3

    move v8, p4

    move-object v9, p5

    .end local p3    # "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    .end local p4    # "basis":I
    .end local p5    # "reducer":Ljava/util/function/IntBinaryOperator;
    .local v7, "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    .local v8, "basis":I
    .local v9, "reducer":Ljava/util/function/IntBinaryOperator;
    invoke-direct/range {v0 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V

    .line 4416
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->invoke()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 4414
    return p3

    .line 4412
    .end local v7    # "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    .end local v8    # "basis":I
    .end local v9    # "reducer":Ljava/util/function/IntBinaryOperator;
    .restart local p3    # "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    .restart local p4    # "basis":I
    .restart local p5    # "reducer":Ljava/util/function/IntBinaryOperator;
    :cond_21
    move-object v7, p3

    move v8, p4

    move-object v9, p5

    .line 4413
    .end local p3    # "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    .end local p4    # "basis":I
    .end local p5    # "reducer":Ljava/util/function/IntBinaryOperator;
    .restart local v7    # "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    .restart local v8    # "basis":I
    .restart local v9    # "reducer":Ljava/util/function/IntBinaryOperator;
    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public whitelist test-api reduceEntriesToLong(JLjava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)J
    .registers 18
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # J
    .param p6, "reducer"    # Ljava/util/function/LongBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToLongFunction<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;J",
            "Ljava/util/function/LongBinaryOperator;",
            ")J"
        }
    .end annotation

    .line 4386
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p3, :cond_22

    if-eqz p6, :cond_22

    .line 4388
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;

    .line 4389
    invoke-virtual/range {p0 .. p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;Ljava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)V

    .line 4390
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 4388
    return-wide v0

    .line 4387
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api reduceKeys(JLjava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 12
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/BiFunction<",
            "-TK;-TK;+TK;>;)TK;"
        }
    .end annotation

    .line 3939
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TK;+TK;>;"
    if-eqz p3, :cond_17

    .line 3940
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    .line 3941
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p3

    .end local p3    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TK;+TK;>;"
    .local v7, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TK;+TK;>;"
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;Ljava/util/function/BiFunction;)V

    .line 3942
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->invoke()Ljava/lang/Object;

    move-result-object p3

    .line 3940
    return-object p3

    .line 3939
    .end local v7    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TK;+TK;>;"
    .restart local p3    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TK;+TK;>;"
    :cond_17
    move-object v7, p3

    .end local p3    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TK;+TK;>;"
    .restart local v7    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TK;+TK;>;"
    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public whitelist test-api reduceKeys(JLjava/util/function/Function;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 14
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function<",
            "-TK;+TU;>;",
            "Ljava/util/function/BiFunction<",
            "-TU;-TU;+TU;>;)TU;"
        }
    .end annotation

    .line 3964
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    .local p4, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    if-eqz p3, :cond_1a

    if-eqz p4, :cond_1a

    .line 3966
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;

    .line 3967
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p3

    move-object v8, p4

    .end local p3    # "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    .end local p4    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    .local v7, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    .local v8, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;Ljava/util/function/Function;Ljava/util/function/BiFunction;)V

    .line 3968
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;->invoke()Ljava/lang/Object;

    move-result-object p3

    .line 3966
    return-object p3

    .line 3964
    .end local v7    # "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    .end local v8    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    .restart local p3    # "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    .restart local p4    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    :cond_1a
    move-object v7, p3

    move-object v8, p4

    .line 3965
    .end local p3    # "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    .end local p4    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    .restart local v7    # "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    .restart local v8    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public whitelist test-api reduceKeysToDouble(JLjava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)D
    .registers 18
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # D
    .param p6, "reducer"    # Ljava/util/function/DoubleBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToDoubleFunction<",
            "-TK;>;D",
            "Ljava/util/function/DoubleBinaryOperator;",
            ")D"
        }
    .end annotation

    .line 3990
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TK;>;"
    if-eqz p3, :cond_22

    if-eqz p6, :cond_22

    .line 3992
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;

    .line 3993
    invoke-virtual/range {p0 .. p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;Ljava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)V

    .line 3994
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 3992
    return-wide v0

    .line 3991
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api reduceKeysToInt(JLjava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)I
    .registers 16
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # I
    .param p5, "reducer"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToIntFunction<",
            "-TK;>;I",
            "Ljava/util/function/IntBinaryOperator;",
            ")I"
        }
    .end annotation

    .line 4042
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TK;>;"
    if-eqz p3, :cond_21

    if-eqz p5, :cond_21

    .line 4044
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;

    .line 4045
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p3

    move v8, p4

    move-object v9, p5

    .end local p3    # "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TK;>;"
    .end local p4    # "basis":I
    .end local p5    # "reducer":Ljava/util/function/IntBinaryOperator;
    .local v7, "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TK;>;"
    .local v8, "basis":I
    .local v9, "reducer":Ljava/util/function/IntBinaryOperator;
    invoke-direct/range {v0 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V

    .line 4046
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->invoke()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 4044
    return p3

    .line 4042
    .end local v7    # "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TK;>;"
    .end local v8    # "basis":I
    .end local v9    # "reducer":Ljava/util/function/IntBinaryOperator;
    .restart local p3    # "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TK;>;"
    .restart local p4    # "basis":I
    .restart local p5    # "reducer":Ljava/util/function/IntBinaryOperator;
    :cond_21
    move-object v7, p3

    move v8, p4

    move-object v9, p5

    .line 4043
    .end local p3    # "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TK;>;"
    .end local p4    # "basis":I
    .end local p5    # "reducer":Ljava/util/function/IntBinaryOperator;
    .restart local v7    # "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TK;>;"
    .restart local v8    # "basis":I
    .restart local v9    # "reducer":Ljava/util/function/IntBinaryOperator;
    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public whitelist test-api reduceKeysToLong(JLjava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)J
    .registers 18
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # J
    .param p6, "reducer"    # Ljava/util/function/LongBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToLongFunction<",
            "-TK;>;J",
            "Ljava/util/function/LongBinaryOperator;",
            ")J"
        }
    .end annotation

    .line 4016
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TK;>;"
    if-eqz p3, :cond_22

    if-eqz p6, :cond_22

    .line 4018
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;

    .line 4019
    invoke-virtual/range {p0 .. p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;Ljava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)V

    .line 4020
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 4018
    return-wide v0

    .line 4017
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api reduceToDouble(JLjava/util/function/ToDoubleBiFunction;DLjava/util/function/DoubleBinaryOperator;)D
    .registers 18
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # D
    .param p6, "reducer"    # Ljava/util/function/DoubleBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToDoubleBiFunction<",
            "-TK;-TV;>;D",
            "Ljava/util/function/DoubleBinaryOperator;",
            ")D"
        }
    .end annotation

    .line 3804
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToDoubleBiFunction;, "Ljava/util/function/ToDoubleBiFunction<-TK;-TV;>;"
    if-eqz p3, :cond_22

    if-eqz p6, :cond_22

    .line 3806
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

    .line 3807
    invoke-virtual/range {p0 .. p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;Ljava/util/function/ToDoubleBiFunction;DLjava/util/function/DoubleBinaryOperator;)V

    .line 3808
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 3806
    return-wide v0

    .line 3805
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api reduceToInt(JLjava/util/function/ToIntBiFunction;ILjava/util/function/IntBinaryOperator;)I
    .registers 16
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # I
    .param p5, "reducer"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToIntBiFunction<",
            "-TK;-TV;>;I",
            "Ljava/util/function/IntBinaryOperator;",
            ")I"
        }
    .end annotation

    .line 3856
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToIntBiFunction;, "Ljava/util/function/ToIntBiFunction<-TK;-TV;>;"
    if-eqz p3, :cond_21

    if-eqz p5, :cond_21

    .line 3858
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

    .line 3859
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p3

    move v8, p4

    move-object v9, p5

    .end local p3    # "transformer":Ljava/util/function/ToIntBiFunction;, "Ljava/util/function/ToIntBiFunction<-TK;-TV;>;"
    .end local p4    # "basis":I
    .end local p5    # "reducer":Ljava/util/function/IntBinaryOperator;
    .local v7, "transformer":Ljava/util/function/ToIntBiFunction;, "Ljava/util/function/ToIntBiFunction<-TK;-TV;>;"
    .local v8, "basis":I
    .local v9, "reducer":Ljava/util/function/IntBinaryOperator;
    invoke-direct/range {v0 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;Ljava/util/function/ToIntBiFunction;ILjava/util/function/IntBinaryOperator;)V

    .line 3860
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->invoke()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 3858
    return p3

    .line 3856
    .end local v7    # "transformer":Ljava/util/function/ToIntBiFunction;, "Ljava/util/function/ToIntBiFunction<-TK;-TV;>;"
    .end local v8    # "basis":I
    .end local v9    # "reducer":Ljava/util/function/IntBinaryOperator;
    .restart local p3    # "transformer":Ljava/util/function/ToIntBiFunction;, "Ljava/util/function/ToIntBiFunction<-TK;-TV;>;"
    .restart local p4    # "basis":I
    .restart local p5    # "reducer":Ljava/util/function/IntBinaryOperator;
    :cond_21
    move-object v7, p3

    move v8, p4

    move-object v9, p5

    .line 3857
    .end local p3    # "transformer":Ljava/util/function/ToIntBiFunction;, "Ljava/util/function/ToIntBiFunction<-TK;-TV;>;"
    .end local p4    # "basis":I
    .end local p5    # "reducer":Ljava/util/function/IntBinaryOperator;
    .restart local v7    # "transformer":Ljava/util/function/ToIntBiFunction;, "Ljava/util/function/ToIntBiFunction<-TK;-TV;>;"
    .restart local v8    # "basis":I
    .restart local v9    # "reducer":Ljava/util/function/IntBinaryOperator;
    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public whitelist test-api reduceToLong(JLjava/util/function/ToLongBiFunction;JLjava/util/function/LongBinaryOperator;)J
    .registers 18
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # J
    .param p6, "reducer"    # Ljava/util/function/LongBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToLongBiFunction<",
            "-TK;-TV;>;J",
            "Ljava/util/function/LongBinaryOperator;",
            ")J"
        }
    .end annotation

    .line 3830
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    if-eqz p3, :cond_22

    if-eqz p6, :cond_22

    .line 3832
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

    .line 3833
    invoke-virtual/range {p0 .. p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;Ljava/util/function/ToLongBiFunction;JLjava/util/function/LongBinaryOperator;)V

    .line 3834
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3832
    return-wide v0

    .line 3831
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api reduceValues(JLjava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 12
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/BiFunction<",
            "-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 4125
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    if-eqz p3, :cond_17

    .line 4126
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    .line 4127
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p3

    .end local p3    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    .local v7, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;Ljava/util/function/BiFunction;)V

    .line 4128
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->invoke()Ljava/lang/Object;

    move-result-object p3

    .line 4126
    return-object p3

    .line 4125
    .end local v7    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    .restart local p3    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    :cond_17
    move-object v7, p3

    .end local p3    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    .restart local v7    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public whitelist test-api reduceValues(JLjava/util/function/Function;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 14
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function<",
            "-TV;+TU;>;",
            "Ljava/util/function/BiFunction<",
            "-TU;-TU;+TU;>;)TU;"
        }
    .end annotation

    .line 4150
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    .local p4, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    if-eqz p3, :cond_1a

    if-eqz p4, :cond_1a

    .line 4152
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;

    .line 4153
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p3

    move-object v8, p4

    .end local p3    # "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    .end local p4    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    .local v7, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    .local v8, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;Ljava/util/function/Function;Ljava/util/function/BiFunction;)V

    .line 4154
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->invoke()Ljava/lang/Object;

    move-result-object p3

    .line 4152
    return-object p3

    .line 4150
    .end local v7    # "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    .end local v8    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    .restart local p3    # "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    .restart local p4    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    :cond_1a
    move-object v7, p3

    move-object v8, p4

    .line 4151
    .end local p3    # "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    .end local p4    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    .restart local v7    # "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    .restart local v8    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public whitelist test-api reduceValuesToDouble(JLjava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)D
    .registers 18
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # D
    .param p6, "reducer"    # Ljava/util/function/DoubleBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToDoubleFunction<",
            "-TV;>;D",
            "Ljava/util/function/DoubleBinaryOperator;",
            ")D"
        }
    .end annotation

    .line 4176
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TV;>;"
    if-eqz p3, :cond_22

    if-eqz p6, :cond_22

    .line 4178
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToDoubleTask;

    .line 4179
    invoke-virtual/range {p0 .. p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToDoubleTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToDoubleTask;Ljava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)V

    .line 4180
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToDoubleTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 4178
    return-wide v0

    .line 4177
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api reduceValuesToInt(JLjava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)I
    .registers 16
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # I
    .param p5, "reducer"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToIntFunction<",
            "-TV;>;I",
            "Ljava/util/function/IntBinaryOperator;",
            ")I"
        }
    .end annotation

    .line 4228
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TV;>;"
    if-eqz p3, :cond_21

    if-eqz p5, :cond_21

    .line 4230
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

    .line 4231
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p3

    move v8, p4

    move-object v9, p5

    .end local p3    # "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TV;>;"
    .end local p4    # "basis":I
    .end local p5    # "reducer":Ljava/util/function/IntBinaryOperator;
    .local v7, "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TV;>;"
    .local v8, "basis":I
    .local v9, "reducer":Ljava/util/function/IntBinaryOperator;
    invoke-direct/range {v0 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V

    .line 4232
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->invoke()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 4230
    return p3

    .line 4228
    .end local v7    # "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TV;>;"
    .end local v8    # "basis":I
    .end local v9    # "reducer":Ljava/util/function/IntBinaryOperator;
    .restart local p3    # "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TV;>;"
    .restart local p4    # "basis":I
    .restart local p5    # "reducer":Ljava/util/function/IntBinaryOperator;
    :cond_21
    move-object v7, p3

    move v8, p4

    move-object v9, p5

    .line 4229
    .end local p3    # "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TV;>;"
    .end local p4    # "basis":I
    .end local p5    # "reducer":Ljava/util/function/IntBinaryOperator;
    .restart local v7    # "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TV;>;"
    .restart local v8    # "basis":I
    .restart local v9    # "reducer":Ljava/util/function/IntBinaryOperator;
    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public whitelist test-api reduceValuesToLong(JLjava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)J
    .registers 18
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # J
    .param p6, "reducer"    # Ljava/util/function/LongBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToLongFunction<",
            "-TV;>;J",
            "Ljava/util/function/LongBinaryOperator;",
            ")J"
        }
    .end annotation

    .line 4202
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TV;>;"
    if-eqz p3, :cond_22

    if-eqz p6, :cond_22

    .line 4204
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;

    .line 4205
    invoke-virtual/range {p0 .. p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;Ljava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)V

    .line 4206
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 4204
    return-wide v0

    .line 4203
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1102
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 1555
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    if-eqz p1, :cond_f

    .line 1557
    if-eqz p2, :cond_d

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0

    .line 1556
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method greylist-max-o removeEntryIf(Ljava/util/function/Predicate;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)Z"
        }
    .end annotation

    .line 1636
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p1, :cond_30

    .line 1638
    const/4 v0, 0x0

    .line 1639
    .local v0, "removed":Z
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, v1

    .local v2, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_2f

    .line 1640
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v3, v2

    const/4 v4, 0x0

    array-length v5, v2

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 1641
    .local v1, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_10
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    move-object v4, v3

    .local v4, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_2f

    .line 1642
    iget-object v3, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .line 1643
    .local v3, "k":Ljava/lang/Object;, "TK;"
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 1644
    .local v5, "v":Ljava/lang/Object;, "TV;"
    new-instance v6, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v6, v3, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1645
    .local v6, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {p1, v6}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    const/4 v7, 0x0

    invoke-virtual {p0, v3, v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2e

    .line 1646
    const/4 v0, 0x1

    .line 1647
    .end local v3    # "k":Ljava/lang/Object;, "TK;"
    .end local v5    # "v":Ljava/lang/Object;, "TV;"
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_2e
    goto :goto_10

    .line 1649
    .end local v1    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v4    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2f
    return v0

    .line 1636
    .end local v0    # "removed":Z
    .end local v2    # "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_30
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method greylist-max-o removeValueIf(Ljava/util/function/Predicate;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TV;>;)Z"
        }
    .end annotation

    .line 1656
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TV;>;"
    if-eqz p1, :cond_2b

    .line 1658
    const/4 v0, 0x0

    .line 1659
    .local v0, "removed":Z
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, v1

    .local v2, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_2a

    .line 1660
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v3, v2

    const/4 v4, 0x0

    array-length v5, v2

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 1661
    .local v1, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_10
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    move-object v4, v3

    .local v4, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_2a

    .line 1662
    iget-object v3, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .line 1663
    .local v3, "k":Ljava/lang/Object;, "TK;"
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 1664
    .local v5, "v":Ljava/lang/Object;, "TV;"
    invoke-interface {p1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_29

    .line 1665
    const/4 v0, 0x1

    .line 1666
    .end local v3    # "k":Ljava/lang/Object;, "TK;"
    .end local v5    # "v":Ljava/lang/Object;, "TV;"
    :cond_29
    goto :goto_10

    .line 1668
    .end local v1    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v4    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2a
    return v0

    .line 1656
    .end local v0    # "removed":Z
    .end local v2    # "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1579
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    .line 1581
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1580
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 1566
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    if-eqz p3, :cond_10

    .line 1568
    invoke-virtual {p0, p1, p3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0

    .line 1567
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api replaceAll(Ljava/util/function/BiFunction;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .line 1614
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    if-eqz p1, :cond_37

    .line 1616
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    .local v1, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_36

    .line 1617
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v2, v1

    const/4 v3, 0x0

    array-length v4, v1

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 1618
    .local v0, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_f
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    move-object v3, v2

    .local v3, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_36

    .line 1619
    iget-object v2, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 1620
    .local v2, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .line 1621
    .local v4, "key":Ljava/lang/Object;, "TK;"
    :goto_1a
    invoke-interface {p1, v4, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1622
    .local v5, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz v5, :cond_30

    .line 1624
    invoke-virtual {p0, v4, v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2f

    .line 1625
    invoke-virtual {p0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    if-nez v6, :cond_2e

    .line 1626
    goto :goto_2f

    .line 1627
    .end local v5    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_2e
    goto :goto_1a

    .line 1628
    .end local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    :cond_2f
    :goto_2f
    goto :goto_f

    .line 1623
    .restart local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    .restart local v4    # "key":Ljava/lang/Object;, "TK;"
    .restart local v5    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_30
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 1630
    .end local v0    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local v3    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_36
    return-void

    .line 1614
    .end local v1    # "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_37
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method final greylist-max-o replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 22
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

    .line 1111
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v5

    .line 1112
    .local v5, "hash":I
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v6, v0

    .line 1114
    .local v6, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_13
    if-eqz v6, :cond_e5

    array-length v7, v6

    move v8, v7

    .local v8, "n":I
    if-eqz v7, :cond_e5

    add-int/lit8 v7, v8, -0x1

    and-int/2addr v7, v5

    move v9, v7

    .line 1115
    .local v9, "i":I
    invoke-static {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v7

    move-object v10, v7

    .local v10, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v7, :cond_26

    .line 1116
    goto/16 :goto_e5

    .line 1117
    :cond_26
    iget v7, v10, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v11, v7

    .local v11, "fh":I
    const/4 v12, -0x1

    if-ne v7, v12, :cond_33

    .line 1118
    invoke-virtual {v1, v6, v10}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v6, v0

    .end local v6    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v0, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto/16 :goto_de

    .line 1120
    .end local v0    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v6    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_33
    const/4 v7, 0x0

    .line 1121
    .local v7, "oldVal":Ljava/lang/Object;, "TV;"
    const/4 v13, 0x0

    .line 1122
    .local v13, "validated":Z
    monitor-enter v10

    .line 1123
    :try_start_36
    invoke-static {v6, v9}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v14

    if-ne v14, v10, :cond_d0

    .line 1124
    if-ltz v11, :cond_8a

    .line 1125
    const/4 v13, 0x1

    .line 1126
    move-object v14, v10

    .local v14, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v15, 0x0

    .line 1128
    .local v15, "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_41
    iget v12, v14, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v12, v5, :cond_80

    iget-object v12, v14, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v16, v12

    .local v16, "ek":Ljava/lang/Object;, "TK;"
    if-eq v12, v2, :cond_59

    if-eqz v16, :cond_56

    .line 1130
    move-object/from16 v12, v16

    .end local v16    # "ek":Ljava/lang/Object;, "TK;"
    .local v12, "ek":Ljava/lang/Object;, "TK;"
    invoke-virtual {v2, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_80

    goto :goto_5b

    .line 1128
    .end local v12    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v16    # "ek":Ljava/lang/Object;, "TK;"
    :cond_56
    move-object/from16 v12, v16

    .end local v16    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v12    # "ek":Ljava/lang/Object;, "TK;"
    goto :goto_80

    .end local v12    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v16    # "ek":Ljava/lang/Object;, "TK;"
    :cond_59
    move-object/from16 v12, v16

    .line 1131
    .end local v16    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v12    # "ek":Ljava/lang/Object;, "TK;"
    :goto_5b
    iget-object v0, v14, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 1132
    .local v0, "ev":Ljava/lang/Object;, "TV;"
    if-eqz v4, :cond_69

    if-eq v4, v0, :cond_69

    if-eqz v0, :cond_87

    .line 1133
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_87

    .line 1134
    :cond_69
    move-object v7, v0

    .line 1135
    if-eqz v3, :cond_6f

    .line 1136
    iput-object v3, v14, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    goto :goto_87

    .line 1137
    :cond_6f
    if-eqz v15, :cond_78

    .line 1138
    move-object/from16 v17, v0

    .end local v0    # "ev":Ljava/lang/Object;, "TV;"
    .local v17, "ev":Ljava/lang/Object;, "TV;"
    iget-object v0, v14, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    iput-object v0, v15, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_87

    .line 1140
    .end local v17    # "ev":Ljava/lang/Object;, "TV;"
    .restart local v0    # "ev":Ljava/lang/Object;, "TV;"
    :cond_78
    move-object/from16 v17, v0

    .end local v0    # "ev":Ljava/lang/Object;, "TV;"
    .restart local v17    # "ev":Ljava/lang/Object;, "TV;"
    iget-object v0, v14, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    invoke-static {v6, v9, v0}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_87

    .line 1144
    .end local v12    # "ek":Ljava/lang/Object;, "TK;"
    .end local v17    # "ev":Ljava/lang/Object;, "TV;"
    :cond_80
    :goto_80
    move-object v15, v14

    .line 1145
    iget-object v0, v14, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v14, v0

    if-nez v0, :cond_88

    .line 1146
    nop

    .end local v14    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v15    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_87
    :goto_87
    goto :goto_d0

    .line 1145
    .restart local v14    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v15    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_88
    const/4 v12, -0x1

    goto :goto_41

    .line 1149
    .end local v14    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v15    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_8a
    instance-of v0, v10, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v0, :cond_c3

    .line 1150
    const/4 v13, 0x1

    .line 1151
    move-object v0, v10

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    .line 1153
    .local v0, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    iget-object v12, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v14, v12

    .local v14, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v12, :cond_c2

    .line 1154
    const/4 v12, 0x0

    invoke-virtual {v14, v5, v2, v12}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v15

    move-object v12, v15

    .local v12, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v15, :cond_c2

    .line 1155
    iget-object v15, v12, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    .line 1156
    .local v15, "pv":Ljava/lang/Object;, "TV;"
    if-eqz v4, :cond_ad

    if-eq v4, v15, :cond_ad

    if-eqz v15, :cond_c2

    .line 1157
    invoke-virtual {v4, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c2

    .line 1158
    :cond_ad
    move-object v7, v15

    .line 1159
    if-eqz v3, :cond_b3

    .line 1160
    iput-object v3, v12, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    goto :goto_c2

    .line 1161
    :cond_b3
    invoke-virtual {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->removeTreeNode(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v17

    if-eqz v17, :cond_c2

    .line 1162
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    invoke-static {v2}, Ljava/util/concurrent/ConcurrentHashMap;->untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    invoke-static {v6, v9, v2}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1165
    .end local v0    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .end local v12    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v14    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v15    # "pv":Ljava/lang/Object;, "TV;"
    :cond_c2
    :goto_c2
    goto :goto_d0

    .line 1166
    :cond_c3
    instance-of v0, v10, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    if-nez v0, :cond_c8

    goto :goto_d0

    .line 1167
    :cond_c8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Recursive update"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v5    # "hash":I
    .end local v6    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "oldVal":Ljava/lang/Object;, "TV;"
    .end local v8    # "n":I
    .end local v9    # "i":I
    .end local v10    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v11    # "fh":I
    .end local v13    # "validated":Z
    .end local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    .end local p3    # "cv":Ljava/lang/Object;
    throw v0

    .line 1169
    .restart local v5    # "hash":I
    .restart local v6    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v7    # "oldVal":Ljava/lang/Object;, "TV;"
    .restart local v8    # "n":I
    .restart local v9    # "i":I
    .restart local v10    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v11    # "fh":I
    .restart local v13    # "validated":Z
    .restart local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .restart local p1    # "key":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;, "TV;"
    .restart local p3    # "cv":Ljava/lang/Object;
    :cond_d0
    :goto_d0
    monitor-exit v10
    :try_end_d1
    .catchall {:try_start_36 .. :try_end_d1} :catchall_e2

    .line 1170
    if-eqz v13, :cond_de

    .line 1171
    if-eqz v7, :cond_e5

    .line 1172
    if-nez v3, :cond_dd

    .line 1173
    const-wide/16 v14, -0x1

    const/4 v0, -0x1

    invoke-direct {v1, v14, v15, v0}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    .line 1174
    :cond_dd
    return-object v7

    .line 1179
    .end local v7    # "oldVal":Ljava/lang/Object;, "TV;"
    .end local v8    # "n":I
    .end local v9    # "i":I
    .end local v10    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v11    # "fh":I
    .end local v13    # "validated":Z
    :cond_de
    :goto_de
    move-object/from16 v2, p1

    goto/16 :goto_13

    .line 1169
    .restart local v7    # "oldVal":Ljava/lang/Object;, "TV;"
    .restart local v8    # "n":I
    .restart local v9    # "i":I
    .restart local v10    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v11    # "fh":I
    .restart local v13    # "validated":Z
    :catchall_e2
    move-exception v0

    :try_start_e3
    monitor-exit v10
    :try_end_e4
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_e2

    throw v0

    .line 1180
    .end local v6    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "oldVal":Ljava/lang/Object;, "TV;"
    .end local v8    # "n":I
    .end local v9    # "i":I
    .end local v10    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v11    # "fh":I
    .end local v13    # "validated":Z
    :cond_e5
    :goto_e5
    const/16 v16, 0x0

    return-object v16
.end method

.method public whitelist test-api search(JLjava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 12
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TU;>;)TU;"
        }
    .end annotation

    .line 3753
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "searchFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    if-eqz p3, :cond_1b

    .line 3754
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;

    .line 3755
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, p3

    .end local p3    # "searchFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    .local v6, "searchFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/BiFunction;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 3756
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->invoke()Ljava/lang/Object;

    move-result-object p3

    .line 3754
    return-object p3

    .line 3753
    .end local v6    # "searchFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    .restart local p3    # "searchFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    :cond_1b
    move-object v6, p3

    .end local p3    # "searchFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    .restart local v6    # "searchFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public whitelist test-api searchEntries(JLjava/util/function/Function;)Ljava/lang/Object;
    .registers 12
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;+TU;>;)TU;"
        }
    .end annotation

    .line 4291
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    if-eqz p3, :cond_1b

    .line 4292
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;

    .line 4293
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, p3

    .end local p3    # "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    .local v6, "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 4294
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->invoke()Ljava/lang/Object;

    move-result-object p3

    .line 4292
    return-object p3

    .line 4291
    .end local v6    # "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    .restart local p3    # "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    :cond_1b
    move-object v6, p3

    .end local p3    # "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    .restart local v6    # "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public whitelist test-api searchKeys(JLjava/util/function/Function;)Ljava/lang/Object;
    .registers 12
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function<",
            "-TK;+TU;>;)TU;"
        }
    .end annotation

    .line 3920
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    if-eqz p3, :cond_1b

    .line 3921
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;

    .line 3922
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, p3

    .end local p3    # "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    .local v6, "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 3923
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;->invoke()Ljava/lang/Object;

    move-result-object p3

    .line 3921
    return-object p3

    .line 3920
    .end local v6    # "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    .restart local p3    # "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    :cond_1b
    move-object v6, p3

    .end local p3    # "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    .restart local v6    # "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public whitelist test-api searchValues(JLjava/util/function/Function;)Ljava/lang/Object;
    .registers 12
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function<",
            "-TV;+TU;>;)TU;"
        }
    .end annotation

    .line 4107
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    if-eqz p3, :cond_1b

    .line 4108
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;

    .line 4109
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, p3

    .end local p3    # "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    .local v6, "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 4110
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;->invoke()Ljava/lang/Object;

    move-result-object p3

    .line 4108
    return-object p3

    .line 4107
    .end local v6    # "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    .restart local p3    # "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    :cond_1b
    move-object v6, p3

    .end local p3    # "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    .restart local v6    # "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public whitelist test-api size()I
    .registers 5

    .line 910
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v0

    .line 911
    .local v0, "n":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_c

    const/4 v2, 0x0

    goto :goto_18

    .line 912
    :cond_c
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_17

    const v2, 0x7fffffff

    goto :goto_18

    .line 913
    :cond_17
    long-to-int v2, v0

    .line 911
    :goto_18
    return v2
.end method

.method final greylist-max-o sumCount()J
    .registers 9

    .line 2577
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    .line 2578
    .local v0, "cs":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    iget-wide v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->baseCount:J

    .line 2579
    .local v1, "sum":J
    if-eqz v0, :cond_14

    .line 2580
    array-length v3, v0

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_14

    aget-object v5, v0, v4

    .line 2581
    .local v5, "c":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    if-eqz v5, :cond_11

    .line 2582
    iget-wide v6, v5, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;->value:J

    add-long/2addr v1, v6

    .line 2580
    .end local v5    # "c":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 2584
    :cond_14
    return-wide v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 10

    .line 1325
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    .local v1, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v2, 0x0

    if-nez v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    array-length v0, v1

    .line 1326
    .local v0, "f":I
    :goto_9
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    invoke-direct {v3, v1, v0, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 1327
    .local v3, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1328
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1330
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v4

    move-object v5, v4

    .local v5, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v4, :cond_4d

    .line 1332
    :goto_1f
    iget-object v4, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .line 1333
    .local v4, "k":Ljava/lang/Object;, "TK;"
    iget-object v6, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 1334
    .local v6, "v":Ljava/lang/Object;, "TV;"
    const-string v7, "(this Map)"

    if-ne v4, p0, :cond_29

    move-object v8, v7

    goto :goto_2a

    :cond_29
    move-object v8, v4

    :goto_2a
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1335
    const/16 v8, 0x3d

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1336
    if-ne v6, p0, :cond_35

    goto :goto_36

    :cond_35
    move-object v7, v6

    :goto_36
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1337
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v7

    move-object v5, v7

    if-nez v7, :cond_41

    .line 1338
    goto :goto_4d

    .line 1339
    :cond_41
    const/16 v7, 0x2c

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1340
    .end local v4    # "k":Ljava/lang/Object;, "TK;"
    .end local v6    # "v":Ljava/lang/Object;, "TV;"
    goto :goto_1f

    .line 1342
    :cond_4d
    :goto_4d
    const/16 v4, 0x7d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public whitelist test-api values()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1267
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->values:Ljava/util/concurrent/ConcurrentHashMap$ValuesView;

    move-object v1, v0

    .local v1, "vs":Ljava/util/concurrent/ConcurrentHashMap$ValuesView;, "Ljava/util/concurrent/ConcurrentHashMap$ValuesView<TK;TV;>;"
    if-eqz v0, :cond_6

    return-object v1

    .line 1268
    :cond_6
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ValuesView;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap$ValuesView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->values:Ljava/util/concurrent/ConcurrentHashMap$ValuesView;

    return-object v0
.end method
