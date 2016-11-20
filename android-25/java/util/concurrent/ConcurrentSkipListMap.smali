.class public Ljava/util/concurrent/ConcurrentSkipListMap;
.super Ljava/util/AbstractMap;
.source "ConcurrentSkipListMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentNavigableMap;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;,
        Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,
        Ljava/util/concurrent/ConcurrentSkipListMap$Index;,
        Ljava/util/concurrent/ConcurrentSkipListMap$Iter;,
        Ljava/util/concurrent/ConcurrentSkipListMap$KeyIterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,
        Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$Node;,
        Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,
        Ljava/util/concurrent/ConcurrentSkipListMap$ValueIterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$Values;
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
        "Ljava/util/concurrent/ConcurrentNavigableMap",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final BASE_HEADER:Ljava/lang/Object;

.field private static final EQ:I = 0x1

.field private static final GT:I = 0x0

.field private static final HEAD:J

.field private static final LT:I = 0x2

.field private static final U:Lsun/misc/Unsafe;

.field private static final serialVersionUID:J = -0x77b98a51f9eeb959L


# instance fields
.field final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field private transient descendingMap:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient entrySet:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile transient head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient values:Ljava/util/concurrent/ConcurrentSkipListMap$Values;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$Values",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 333
    new-instance v1, Ljava/lang/Object;

    #@2
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v1, Ljava/util/concurrent/ConcurrentSkipListMap;->BASE_HEADER:Ljava/lang/Object;

    #@7
    .line 3570
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@a
    move-result-object v1

    #@b
    sput-object v1, Ljava/util/concurrent/ConcurrentSkipListMap;->U:Lsun/misc/Unsafe;

    #@d
    .line 3574
    :try_start_0
    sget-object v1, Ljava/util/concurrent/ConcurrentSkipListMap;->U:Lsun/misc/Unsafe;

    #@f
    .line 3575
    const-class v2, Ljava/util/concurrent/ConcurrentSkipListMap;

    #@11
    const-string/jumbo v3, "head"

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@17
    move-result-object v2

    #@18
    .line 3574
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@1b
    move-result-wide v2

    #@1c
    sput-wide v2, Ljava/util/concurrent/ConcurrentSkipListMap;->HEAD:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 86
    return-void

    #@1f
    .line 3576
    :catch_0
    move-exception v0

    #@20
    .line 3577
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    #@22
    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@25
    throw v1
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1249
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@3
    .line 1250
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    #@6
    .line 1251
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    #@9
    .line 1249
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1262
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@3
    .line 1263
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    #@5
    .line 1264
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    #@8
    .line 1262
    return-void
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
    .line 1278
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@3
    .line 1279
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    #@6
    .line 1280
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    #@9
    .line 1281
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->putAll(Ljava/util/Map;)V

    #@c
    .line 1278
    return-void
.end method

.method public constructor <init>(Ljava/util/SortedMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1293
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "m":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@3
    .line 1294
    invoke-interface {p1}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    #@9
    .line 1295
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    #@c
    .line 1296
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->buildFromSorted(Ljava/util/SortedMap;)V

    #@f
    .line 1293
    return-void
.end method

.method private buildFromSorted(Ljava/util/SortedMap;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1324
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    if-nez p1, :cond_0

    #@2
    .line 1325
    new-instance v16, Ljava/lang/NullPointerException;

    #@4
    invoke-direct/range {v16 .. v16}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v16

    #@8
    .line 1327
    :cond_0
    move-object/from16 v0, p0

    #@a
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@c
    .line 1328
    .local v3, "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    iget-object v1, v3, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@e
    .line 1332
    .local v1, "basepred":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    new-instance v11, Ljava/util/ArrayList;

    #@10
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    #@13
    .line 1335
    .local v11, "preds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;>;"
    const/4 v5, 0x0

    #@14
    .local v5, "i":I
    :goto_0
    iget v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    #@16
    move/from16 v16, v0

    #@18
    move/from16 v0, v16

    #@1a
    if-gt v5, v0, :cond_1

    #@1c
    .line 1336
    const/16 v16, 0x0

    #@1e
    move-object/from16 v0, v16

    #@20
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@23
    .line 1335
    add-int/lit8 v5, v5, 0x1

    #@25
    goto :goto_0

    #@26
    .line 1337
    :cond_1
    move-object v12, v3

    #@27
    .line 1338
    .local v12, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iget v5, v3, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    #@29
    :goto_1
    if-lez v5, :cond_2

    #@2b
    .line 1339
    invoke-virtual {v11, v5, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@2e
    .line 1340
    iget-object v12, v12, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@30
    .line 1338
    add-int/lit8 v5, v5, -0x1

    #@32
    goto :goto_1

    #@33
    .line 1344
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    #@36
    move-result-object v16

    #@37
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@3a
    move-result-object v8

    #@3b
    .line 1345
    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@3e
    move-result v16

    #@3f
    if-eqz v16, :cond_9

    #@41
    .line 1346
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@44
    move-result-object v2

    #@45
    check-cast v2, Ljava/util/Map$Entry;

    #@47
    .line 1347
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    #@4a
    move-result-object v16

    #@4b
    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    #@4e
    move-result v13

    #@4f
    .line 1348
    .local v13, "rnd":I
    const/4 v9, 0x0

    #@50
    .line 1349
    .local v9, "j":I
    const v16, -0x7fffffff

    #@53
    and-int v16, v16, v13

    #@55
    if-nez v16, :cond_5

    #@57
    .line 1351
    :cond_4
    add-int/lit8 v9, v9, 0x1

    #@59
    .line 1352
    ushr-int/lit8 v13, v13, 0x1

    #@5b
    and-int/lit8 v16, v13, 0x1

    #@5d
    if-nez v16, :cond_4

    #@5f
    .line 1353
    iget v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    #@61
    move/from16 v16, v0

    #@63
    move/from16 v0, v16

    #@65
    if-le v9, v0, :cond_5

    #@67
    iget v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    #@69
    move/from16 v16, v0

    #@6b
    add-int/lit8 v9, v16, 0x1

    #@6d
    .line 1355
    :cond_5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@70
    move-result-object v10

    #@71
    .line 1356
    .local v10, "k":Ljava/lang/Object;, "TK;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@74
    move-result-object v14

    #@75
    .line 1357
    .local v14, "v":Ljava/lang/Object;, "TV;"
    if-eqz v10, :cond_6

    #@77
    if-nez v14, :cond_7

    #@79
    .line 1358
    :cond_6
    new-instance v16, Ljava/lang/NullPointerException;

    #@7b
    invoke-direct/range {v16 .. v16}, Ljava/lang/NullPointerException;-><init>()V

    #@7e
    throw v16

    #@7f
    .line 1359
    :cond_7
    new-instance v15, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@81
    const/16 v16, 0x0

    #@83
    move-object/from16 v0, v16

    #@85
    invoke-direct {v15, v10, v14, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    #@88
    .line 1360
    .local v15, "z":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iput-object v15, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@8a
    .line 1361
    move-object v1, v15

    #@8b
    .line 1362
    if-lez v9, :cond_3

    #@8d
    .line 1363
    const/4 v6, 0x0

    #@8e
    .line 1364
    .local v6, "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    const/4 v5, 0x1

    #@8f
    move-object v7, v6

    #@90
    .local v7, "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    move-object v4, v3

    #@91
    .end local v3    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .end local v6    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local v4, "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :goto_3
    if-gt v5, v9, :cond_b

    #@93
    .line 1365
    new-instance v6, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@95
    const/16 v16, 0x0

    #@97
    move-object/from16 v0, v16

    #@99
    invoke-direct {v6, v15, v7, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)V

    #@9c
    .line 1366
    .end local v7    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local v6, "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iget v0, v4, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    #@9e
    move/from16 v16, v0

    #@a0
    move/from16 v0, v16

    #@a2
    if-le v5, v0, :cond_a

    #@a4
    .line 1367
    new-instance v3, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@a6
    iget-object v0, v4, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@a8
    move-object/from16 v16, v0

    #@aa
    move-object/from16 v0, v16

    #@ac
    invoke-direct {v3, v0, v4, v6, v5}, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;I)V

    #@af
    .line 1369
    .end local v4    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v3    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :goto_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@b2
    move-result v16

    #@b3
    move/from16 v0, v16

    #@b5
    if-ge v5, v0, :cond_8

    #@b7
    .line 1370
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@ba
    move-result-object v16

    #@bb
    check-cast v16, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@bd
    move-object/from16 v0, v16

    #@bf
    iput-object v6, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@c1
    .line 1371
    invoke-virtual {v11, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@c4
    .line 1364
    :goto_5
    add-int/lit8 v5, v5, 0x1

    #@c6
    move-object v7, v6

    #@c7
    .end local v6    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v7    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    move-object v4, v3

    #@c8
    .end local v3    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v4    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    goto :goto_3

    #@c9
    .line 1373
    .end local v4    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .end local v7    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v3    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v6    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_8
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@cc
    goto :goto_5

    #@cd
    .line 1377
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    .end local v6    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v9    # "j":I
    .end local v10    # "k":Ljava/lang/Object;, "TK;"
    .end local v13    # "rnd":I
    .end local v14    # "v":Ljava/lang/Object;, "TV;"
    .end local v15    # "z":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_9
    move-object/from16 v0, p0

    #@cf
    iput-object v3, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@d1
    .line 1323
    return-void

    #@d2
    .end local v3    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    .restart local v4    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v6    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v9    # "j":I
    .restart local v10    # "k":Ljava/lang/Object;, "TK;"
    .restart local v13    # "rnd":I
    .restart local v14    # "v":Ljava/lang/Object;, "TV;"
    .restart local v15    # "z":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_a
    move-object v3, v4

    #@d3
    .end local v4    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v3    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    goto :goto_4

    #@d4
    .end local v3    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .end local v6    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v4    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v7    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_b
    move-object v3, v4

    #@d5
    .end local v4    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v3    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    goto/16 :goto_2
.end method

.method private casHead(Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex",
            "<TK;TV;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 375
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "cmp":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .local p2, "val":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/ConcurrentSkipListMap;->HEAD:J

    #@4
    move-object v1, p0

    #@5
    move-object v4, p1

    #@6
    move-object v5, p2

    #@7
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method private clearIndexToFirst()V
    .locals 3

    #@0
    .prologue
    .line 1046
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@2
    .line 1047
    .local v0, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_1
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@4
    .line 1048
    .local v1, "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v1, :cond_2

    #@6
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->indexesDeletedNode()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_2

    #@c
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->unlink(Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 1050
    :cond_2
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@14
    if-nez v0, :cond_1

    #@16
    .line 1051
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@18
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@1a
    if-nez v2, :cond_3

    #@1c
    .line 1052
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->tryReduceLevel()V

    #@1f
    .line 1053
    :cond_3
    return-void
.end method

.method static final cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p0, "c"    # Ljava/util/Comparator;
    .param p1, "x"    # Ljava/lang/Object;
    .param p2, "y"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 621
    if-eqz p0, :cond_0

    #@2
    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    .end local p1    # "x":Ljava/lang/Object;
    :goto_0
    return v0

    #@7
    .restart local p1    # "x":Ljava/lang/Object;
    :cond_0
    check-cast p1, Ljava/lang/Comparable;

    #@9
    .end local p1    # "x":Ljava/lang/Object;
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@c
    move-result v0

    #@d
    goto :goto_0
.end method

.method private doGet(Ljava/lang/Object;)Ljava/lang/Object;
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
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v8, 0x0

    #@1
    .line 743
    if-nez p1, :cond_0

    #@3
    .line 744
    new-instance v7, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v7

    #@9
    .line 745
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    #@b
    .line 747
    .local v2, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :cond_1
    :goto_0
    invoke-direct {p0, p1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@e
    move-result-object v0

    #@f
    .local v0, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@11
    .line 749
    .local v4, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_1
    if-nez v4, :cond_3

    #@13
    .line 770
    :cond_2
    return-object v8

    #@14
    .line 751
    :cond_3
    iget-object v3, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@16
    .line 752
    .local v3, "f":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v7, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@18
    if-ne v4, v7, :cond_1

    #@1a
    .line 754
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@1c
    .local v5, "v":Ljava/lang/Object;
    if-nez v5, :cond_4

    #@1e
    .line 755
    invoke-virtual {v4, v0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    #@21
    goto :goto_0

    #@22
    .line 758
    :cond_4
    iget-object v7, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@24
    if-eqz v7, :cond_1

    #@26
    if-eq v5, v4, :cond_1

    #@28
    .line 760
    iget-object v7, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@2a
    invoke-static {v2, p1, v7}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    #@2d
    move-result v1

    #@2e
    .local v1, "c":I
    if-nez v1, :cond_5

    #@30
    .line 761
    move-object v6, v5

    #@31
    .line 762
    .local v6, "vv":Ljava/lang/Object;, "TV;"
    return-object v5

    #@32
    .line 764
    .end local v6    # "vv":Ljava/lang/Object;, "TV;"
    :cond_5
    if-ltz v1, :cond_2

    #@34
    .line 766
    move-object v0, v4

    #@35
    .line 767
    move-object v4, v3

    #@36
    goto :goto_1
.end method

.method private doPut(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 30
    .param p3, "onlyIfAbsent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;Z)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 785
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    #@2
    .line 786
    new-instance v29, Ljava/lang/NullPointerException;

    #@4
    invoke-direct/range {v29 .. v29}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v29

    #@8
    .line 787
    :cond_0
    move-object/from16 v0, p0

    #@a
    iget-object v6, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    #@c
    .line 789
    .local v6, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    #@e
    move-object/from16 v1, p1

    #@10
    invoke-direct {v0, v1, v6}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@13
    move-result-object v4

    #@14
    .local v4, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v0, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@16
    move-object/from16 v17, v0

    #@18
    .line 790
    .local v17, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_1
    if-eqz v17, :cond_5

    #@1a
    .line 792
    move-object/from16 v0, v17

    #@1c
    iget-object v7, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@1e
    .line 793
    .local v7, "f":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v0, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@20
    move-object/from16 v29, v0

    #@22
    move-object/from16 v0, v17

    #@24
    move-object/from16 v1, v29

    #@26
    if-ne v0, v1, :cond_1

    #@28
    .line 795
    move-object/from16 v0, v17

    #@2a
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@2c
    move-object/from16 v26, v0

    #@2e
    .local v26, "v":Ljava/lang/Object;
    if-nez v26, :cond_2

    #@30
    .line 796
    move-object/from16 v0, v17

    #@32
    invoke-virtual {v0, v4, v7}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    #@35
    goto :goto_0

    #@36
    .line 799
    :cond_2
    iget-object v0, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@38
    move-object/from16 v29, v0

    #@3a
    if-eqz v29, :cond_1

    #@3c
    move-object/from16 v0, v26

    #@3e
    move-object/from16 v1, v17

    #@40
    if-eq v0, v1, :cond_1

    #@42
    .line 801
    move-object/from16 v0, v17

    #@44
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@46
    move-object/from16 v29, v0

    #@48
    move-object/from16 v0, p1

    #@4a
    move-object/from16 v1, v29

    #@4c
    invoke-static {v6, v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    #@4f
    move-result v5

    #@50
    .local v5, "c":I
    if-lez v5, :cond_3

    #@52
    .line 802
    move-object/from16 v4, v17

    #@54
    .line 803
    move-object/from16 v17, v7

    #@56
    .line 804
    goto :goto_1

    #@57
    .line 806
    :cond_3
    if-nez v5, :cond_5

    #@59
    .line 807
    if-nez p3, :cond_4

    #@5b
    move-object/from16 v0, v17

    #@5d
    move-object/from16 v1, v26

    #@5f
    move-object/from16 v2, p2

    #@61
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@64
    move-result v29

    #@65
    if-eqz v29, :cond_1

    #@67
    .line 808
    :cond_4
    move-object/from16 v27, v26

    #@69
    .line 809
    .local v27, "vv":Ljava/lang/Object;, "TV;"
    return-object v26

    #@6a
    .line 816
    .end local v5    # "c":I
    .end local v7    # "f":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v26    # "v":Ljava/lang/Object;
    .end local v27    # "vv":Ljava/lang/Object;, "TV;"
    :cond_5
    new-instance v28, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@6c
    move-object/from16 v0, v28

    #@6e
    move-object/from16 v1, p1

    #@70
    move-object/from16 v2, p2

    #@72
    move-object/from16 v3, v17

    #@74
    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    #@77
    .line 817
    .local v28, "z":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    move-object/from16 v0, v17

    #@79
    move-object/from16 v1, v28

    #@7b
    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casNext(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    #@7e
    move-result v29

    #@7f
    if-eqz v29, :cond_1

    #@81
    .line 823
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->nextSecondarySeed()I

    #@84
    move-result v24

    #@85
    .line 824
    .local v24, "rnd":I
    const v29, -0x7fffffff

    #@88
    and-int v29, v29, v24

    #@8a
    if-nez v29, :cond_a

    #@8c
    .line 825
    const/4 v15, 0x1

    #@8d
    .line 826
    .local v15, "level":I
    :goto_2
    ushr-int/lit8 v24, v24, 0x1

    #@8f
    and-int/lit8 v29, v24, 0x1

    #@91
    if-eqz v29, :cond_6

    #@93
    .line 827
    add-int/lit8 v15, v15, 0x1

    #@95
    goto :goto_2

    #@96
    .line 828
    :cond_6
    const/4 v10, 0x0

    #@97
    .line 829
    .local v10, "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    move-object/from16 v0, p0

    #@99
    iget-object v8, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@9b
    .line 830
    .local v8, "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    iget v0, v8, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    #@9d
    move/from16 v16, v0

    #@9f
    .local v16, "max":I
    move/from16 v0, v16

    #@a1
    if-gt v15, v0, :cond_7

    #@a3
    .line 831
    const/4 v9, 0x1

    #@a4
    .local v9, "i":I
    move-object v11, v10

    #@a5
    .end local v10    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local v11, "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_3
    if-gt v9, v15, :cond_13

    #@a7
    .line 832
    new-instance v10, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@a9
    const/16 v29, 0x0

    #@ab
    move-object/from16 v0, v28

    #@ad
    move-object/from16 v1, v29

    #@af
    invoke-direct {v10, v0, v11, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)V

    #@b2
    .line 831
    .end local v11    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local v10, "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    add-int/lit8 v9, v9, 0x1

    #@b4
    move-object v11, v10

    #@b5
    .end local v10    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v11    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    goto :goto_3

    #@b6
    .line 835
    .end local v9    # "i":I
    .end local v11    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local v10, "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_7
    add-int/lit8 v15, v16, 0x1

    #@b8
    .line 837
    add-int/lit8 v29, v15, 0x1

    #@ba
    move/from16 v0, v29

    #@bc
    new-array v12, v0, [Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@be
    .line 838
    .local v12, "idxs":[Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "[Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    const/4 v9, 0x1

    #@bf
    .restart local v9    # "i":I
    move-object v11, v10

    #@c0
    .end local v10    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v11    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_4
    if-gt v9, v15, :cond_8

    #@c2
    .line 839
    new-instance v10, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@c4
    const/16 v29, 0x0

    #@c6
    move-object/from16 v0, v28

    #@c8
    move-object/from16 v1, v29

    #@ca
    invoke-direct {v10, v0, v11, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)V

    #@cd
    .end local v11    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local v10, "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    aput-object v10, v12, v9

    #@cf
    .line 838
    add-int/lit8 v9, v9, 0x1

    #@d1
    move-object v11, v10

    #@d2
    .end local v10    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v11    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    goto :goto_4

    #@d3
    .line 841
    :cond_8
    move-object/from16 v0, p0

    #@d5
    iget-object v8, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@d7
    .line 842
    iget v0, v8, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    #@d9
    move/from16 v20, v0

    #@db
    .line 843
    .local v20, "oldLevel":I
    move/from16 v0, v20

    #@dd
    if-gt v15, v0, :cond_b

    #@df
    move-object v10, v11

    #@e0
    .line 857
    .end local v11    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v12    # "idxs":[Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "[Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v20    # "oldLevel":I
    .restart local v10    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_5
    move v13, v15

    #@e1
    .line 858
    .local v13, "insertionLevel":I
    :cond_9
    iget v14, v8, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    #@e3
    .line 859
    .local v14, "j":I
    move-object/from16 v22, v8

    #@e5
    .local v22, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iget-object v0, v8, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@e7
    move-object/from16 v23, v0

    #@e9
    .local v23, "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    move-object/from16 v25, v10

    #@eb
    .line 860
    .local v25, "t":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_6
    if-eqz v22, :cond_a

    #@ed
    if-nez v25, :cond_d

    #@ef
    .line 897
    .end local v8    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .end local v9    # "i":I
    .end local v10    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v13    # "insertionLevel":I
    .end local v14    # "j":I
    .end local v15    # "level":I
    .end local v16    # "max":I
    .end local v22    # "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v23    # "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v25    # "t":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_a
    :goto_7
    const/16 v29, 0x0

    #@f1
    return-object v29

    #@f2
    .line 845
    .restart local v8    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v9    # "i":I
    .restart local v11    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v12    # "idxs":[Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "[Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v15    # "level":I
    .restart local v16    # "max":I
    .restart local v20    # "oldLevel":I
    :cond_b
    move-object/from16 v18, v8

    #@f4
    .line 846
    .local v18, "newh":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    iget-object v0, v8, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@f6
    move-object/from16 v21, v0

    #@f8
    .line 847
    .local v21, "oldbase":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    add-int/lit8 v14, v20, 0x1

    #@fa
    .restart local v14    # "j":I
    move-object/from16 v19, v18

    #@fc
    .end local v18    # "newh":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .local v19, "newh":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :goto_8
    if-gt v14, v15, :cond_c

    #@fe
    .line 848
    new-instance v18, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@100
    aget-object v29, v12, v14

    #@102
    move-object/from16 v0, v18

    #@104
    move-object/from16 v1, v21

    #@106
    move-object/from16 v2, v19

    #@108
    move-object/from16 v3, v29

    #@10a
    invoke-direct {v0, v1, v2, v3, v14}, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;I)V

    #@10d
    .line 847
    .end local v19    # "newh":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v18    # "newh":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    add-int/lit8 v14, v14, 0x1

    #@10f
    move-object/from16 v19, v18

    #@111
    .end local v18    # "newh":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v19    # "newh":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    goto :goto_8

    #@112
    .line 849
    :cond_c
    move-object/from16 v0, p0

    #@114
    move-object/from16 v1, v19

    #@116
    invoke-direct {v0, v8, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->casHead(Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;)Z

    #@119
    move-result v29

    #@11a
    if-eqz v29, :cond_8

    #@11c
    .line 850
    move-object/from16 v8, v19

    #@11e
    .line 851
    move/from16 v15, v20

    #@120
    aget-object v10, v12, v20

    #@122
    .end local v11    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v10    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    goto :goto_5

    #@123
    .line 862
    .end local v12    # "idxs":[Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "[Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v19    # "newh":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .end local v20    # "oldLevel":I
    .end local v21    # "oldbase":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .restart local v13    # "insertionLevel":I
    .restart local v22    # "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v23    # "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v25    # "t":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_d
    if-eqz v23, :cond_f

    #@125
    .line 863
    move-object/from16 v0, v23

    #@127
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@129
    move-object/from16 v17, v0

    #@12b
    .line 865
    move-object/from16 v0, v17

    #@12d
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@12f
    move-object/from16 v29, v0

    #@131
    move-object/from16 v0, p1

    #@133
    move-object/from16 v1, v29

    #@135
    invoke-static {v6, v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    #@138
    move-result v5

    #@139
    .line 866
    .restart local v5    # "c":I
    move-object/from16 v0, v17

    #@13b
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@13d
    move-object/from16 v29, v0

    #@13f
    if-nez v29, :cond_e

    #@141
    .line 867
    invoke-virtual/range {v22 .. v23}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->unlink(Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    #@144
    move-result v29

    #@145
    if-eqz v29, :cond_9

    #@147
    .line 869
    move-object/from16 v0, v22

    #@149
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@14b
    move-object/from16 v23, v0

    #@14d
    goto :goto_6

    #@14e
    .line 872
    :cond_e
    if-lez v5, :cond_f

    #@150
    .line 873
    move-object/from16 v22, v23

    #@152
    .line 874
    move-object/from16 v0, v23

    #@154
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@156
    move-object/from16 v23, v0

    #@158
    goto :goto_6

    #@159
    .line 879
    .end local v5    # "c":I
    :cond_f
    if-ne v14, v13, :cond_11

    #@15b
    .line 880
    move-object/from16 v0, v22

    #@15d
    move-object/from16 v1, v23

    #@15f
    move-object/from16 v2, v25

    #@161
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->link(Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    #@164
    move-result v29

    #@165
    if-eqz v29, :cond_9

    #@167
    .line 882
    move-object/from16 v0, v25

    #@169
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@16b
    move-object/from16 v29, v0

    #@16d
    move-object/from16 v0, v29

    #@16f
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@171
    move-object/from16 v29, v0

    #@173
    if-nez v29, :cond_10

    #@175
    .line 883
    invoke-direct/range {p0 .. p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@178
    goto/16 :goto_7

    #@17a
    .line 886
    :cond_10
    add-int/lit8 v13, v13, -0x1

    #@17c
    if-eqz v13, :cond_a

    #@17e
    .line 890
    :cond_11
    add-int/lit8 v14, v14, -0x1

    #@180
    if-lt v14, v13, :cond_12

    #@182
    if-ge v14, v15, :cond_12

    #@184
    .line 891
    move-object/from16 v0, v25

    #@186
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@188
    move-object/from16 v25, v0

    #@18a
    .line 892
    :cond_12
    move-object/from16 v0, v22

    #@18c
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@18e
    move-object/from16 v22, v0

    #@190
    .line 893
    move-object/from16 v0, v22

    #@192
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@194
    move-object/from16 v23, v0

    #@196
    goto/16 :goto_6

    #@198
    .end local v10    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v13    # "insertionLevel":I
    .end local v14    # "j":I
    .end local v22    # "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v23    # "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v25    # "t":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v11    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_13
    move-object v10, v11

    #@199
    .end local v11    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v10    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    goto/16 :goto_5
.end method

.method private doRemoveFirstEntry()Ljava/util/Map$Entry;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v6, 0x0

    #@1
    .line 1021
    :cond_0
    :goto_0
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@3
    iget-object v0, v5, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@5
    .local v0, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@7
    .local v2, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v2, :cond_1

    #@9
    .line 1022
    return-object v6

    #@a
    .line 1023
    :cond_1
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@c
    .line 1024
    .local v1, "f":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v5, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@e
    if-ne v2, v5, :cond_0

    #@10
    .line 1026
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@12
    .line 1027
    .local v3, "v":Ljava/lang/Object;
    if-nez v3, :cond_2

    #@14
    .line 1028
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    #@17
    goto :goto_0

    #@18
    .line 1031
    :cond_2
    invoke-virtual {v2, v3, v6}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1b
    move-result v5

    #@1c
    if-eqz v5, :cond_0

    #@1e
    .line 1033
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->appendMarker(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    #@21
    move-result v5

    #@22
    if-eqz v5, :cond_3

    #@24
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casNext(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    #@27
    move-result v5

    #@28
    if-eqz v5, :cond_3

    #@2a
    .line 1035
    :goto_1
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->clearIndexToFirst()V

    #@2d
    .line 1036
    move-object v4, v3

    #@2e
    .line 1037
    .local v4, "vv":Ljava/lang/Object;, "TV;"
    new-instance v5, Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@30
    iget-object v6, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@32
    invoke-direct {v5, v6, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@35
    return-object v5

    #@36
    .line 1034
    .end local v4    # "vv":Ljava/lang/Object;, "TV;"
    :cond_3
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@39
    goto :goto_1
.end method

.method private doRemoveLastEntry()Ljava/util/Map$Entry;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v7, 0x0

    #@1
    .line 1066
    :cond_0
    :goto_0
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessorOfLast()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@4
    move-result-object v0

    #@5
    .line 1067
    .local v0, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@7
    .line 1068
    .local v3, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v3, :cond_2

    #@9
    .line 1069
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->isBaseHeader()Z

    #@c
    move-result v6

    #@d
    if-eqz v6, :cond_0

    #@f
    .line 1070
    return-object v7

    #@10
    .line 1085
    .local v1, "f":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .local v4, "v":Ljava/lang/Object;
    :cond_1
    if-eqz v1, :cond_4

    #@12
    .line 1086
    move-object v0, v3

    #@13
    .line 1087
    move-object v3, v1

    #@14
    .line 1075
    .end local v1    # "f":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v4    # "v":Ljava/lang/Object;
    :cond_2
    iget-object v1, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@16
    .line 1076
    .restart local v1    # "f":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v6, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@18
    if-ne v3, v6, :cond_0

    #@1a
    .line 1078
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@1c
    .line 1079
    .restart local v4    # "v":Ljava/lang/Object;
    if-nez v4, :cond_3

    #@1e
    .line 1080
    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    #@21
    goto :goto_0

    #@22
    .line 1083
    :cond_3
    iget-object v6, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@24
    if-eqz v6, :cond_0

    #@26
    if-ne v4, v3, :cond_1

    #@28
    goto :goto_0

    #@29
    .line 1090
    :cond_4
    invoke-virtual {v3, v4, v7}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2c
    move-result v6

    #@2d
    if-eqz v6, :cond_0

    #@2f
    .line 1092
    iget-object v2, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@31
    .line 1093
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->appendMarker(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    #@34
    move-result v6

    #@35
    if-eqz v6, :cond_6

    #@37
    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casNext(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    #@3a
    move-result v6

    #@3b
    if-eqz v6, :cond_6

    #@3d
    .line 1096
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    #@3f
    invoke-direct {p0, v2, v6}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@42
    .line 1097
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@44
    iget-object v6, v6, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@46
    if-nez v6, :cond_5

    #@48
    .line 1098
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->tryReduceLevel()V

    #@4b
    .line 1100
    :cond_5
    :goto_1
    move-object v5, v4

    #@4c
    .line 1101
    .local v5, "vv":Ljava/lang/Object;, "TV;"
    new-instance v6, Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@4e
    invoke-direct {v6, v2, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@51
    return-object v6

    #@52
    .line 1094
    .end local v5    # "vv":Ljava/lang/Object;, "TV;"
    :cond_6
    invoke-direct {p0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@55
    goto :goto_1
.end method

.method private findNode(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 8
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v7, 0x0

    #@1
    .line 707
    if-nez p1, :cond_0

    #@3
    .line 708
    new-instance v6, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v6

    #@9
    .line 709
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    #@b
    .line 711
    .local v2, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :cond_1
    :goto_0
    invoke-direct {p0, p1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@e
    move-result-object v0

    #@f
    .local v0, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@11
    .line 713
    .local v4, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_1
    if-nez v4, :cond_3

    #@13
    .line 732
    :cond_2
    return-object v7

    #@14
    .line 715
    :cond_3
    iget-object v3, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@16
    .line 716
    .local v3, "f":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v6, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@18
    if-ne v4, v6, :cond_1

    #@1a
    .line 718
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@1c
    .local v5, "v":Ljava/lang/Object;
    if-nez v5, :cond_4

    #@1e
    .line 719
    invoke-virtual {v4, v0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    #@21
    goto :goto_0

    #@22
    .line 722
    :cond_4
    iget-object v6, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@24
    if-eqz v6, :cond_1

    #@26
    if-eq v5, v4, :cond_1

    #@28
    .line 724
    iget-object v6, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@2a
    invoke-static {v2, p1, v6}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    #@2d
    move-result v1

    #@2e
    .local v1, "c":I
    if-nez v1, :cond_5

    #@30
    .line 725
    return-object v4

    #@31
    .line 726
    :cond_5
    if-ltz v1, :cond_2

    #@33
    .line 728
    move-object v0, v4

    #@34
    .line 729
    move-object v4, v3

    #@35
    goto :goto_1
.end method

.method private findPredecessor(Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<-TK;>;)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 635
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p2, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    if-nez p1, :cond_0

    #@2
    .line 636
    new-instance v5, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v5

    #@8
    .line 638
    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@a
    .local v3, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@c
    .line 639
    .local v4, "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_0
    if-eqz v4, :cond_2

    #@e
    .line 640
    iget-object v2, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@10
    .line 641
    .local v2, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@12
    .line 642
    .local v1, "k":Ljava/lang/Object;, "TK;"
    iget-object v5, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@14
    if-nez v5, :cond_1

    #@16
    .line 643
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->unlink(Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_0

    #@1c
    .line 645
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@1e
    goto :goto_0

    #@1f
    .line 648
    :cond_1
    invoke-static {p2, p1, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    #@22
    move-result v5

    #@23
    if-lez v5, :cond_2

    #@25
    .line 649
    move-object v3, v4

    #@26
    .line 650
    iget-object v4, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@28
    goto :goto_0

    #@29
    .line 654
    .end local v1    # "k":Ljava/lang/Object;, "TK;"
    .end local v2    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_2
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@2b
    .local v0, "d":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-nez v0, :cond_3

    #@2d
    .line 655
    iget-object v5, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@2f
    return-object v5

    #@30
    .line 656
    :cond_3
    move-object v3, v0

    #@31
    .line 657
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@33
    goto :goto_0
.end method

.method private findPredecessorOfLast()Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1161
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    :goto_0
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@2
    .line 1163
    .local v1, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_1
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@4
    .local v2, "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v2, :cond_1

    #@6
    .line 1164
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->indexesDeletedNode()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_0

    #@c
    .line 1165
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->unlink(Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    #@f
    goto :goto_0

    #@10
    .line 1169
    :cond_0
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@12
    iget-object v3, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@14
    if-eqz v3, :cond_1

    #@16
    .line 1170
    move-object v1, v2

    #@17
    .line 1171
    goto :goto_1

    #@18
    .line 1174
    :cond_1
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@1a
    .local v0, "d":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v0, :cond_2

    #@1c
    .line 1175
    move-object v1, v0

    #@1d
    goto :goto_1

    #@1e
    .line 1177
    :cond_2
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@20
    return-object v3
.end method

.method private initialize()V
    .locals 4

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v3, 0x0

    #@1
    .line 363
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    #@3
    .line 364
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;

    #@5
    .line 365
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->values:Ljava/util/concurrent/ConcurrentSkipListMap$Values;

    #@7
    .line 366
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->descendingMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@9
    .line 367
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@b
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@d
    sget-object v2, Ljava/util/concurrent/ConcurrentSkipListMap;->BASE_HEADER:Ljava/lang/Object;

    #@f
    invoke-direct {v1, v3, v2, v3}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    #@12
    .line 368
    const/4 v2, 0x1

    #@13
    .line 367
    invoke-direct {v0, v1, v3, v3, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;I)V

    #@16
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@18
    .line 362
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 17
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1420
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 1422
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    #@6
    .line 1432
    move-object/from16 v0, p0

    #@8
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@a
    .line 1433
    .local v2, "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@c
    .line 1434
    .local v1, "basepred":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    new-instance v10, Ljava/util/ArrayList;

    #@e
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@11
    .line 1435
    .local v10, "preds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;>;"
    const/4 v4, 0x0

    #@12
    .local v4, "i":I
    :goto_0
    iget v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    #@14
    move/from16 v16, v0

    #@16
    move/from16 v0, v16

    #@18
    if-gt v4, v0, :cond_0

    #@1a
    .line 1436
    const/16 v16, 0x0

    #@1c
    move-object/from16 v0, v16

    #@1e
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21
    .line 1435
    add-int/lit8 v4, v4, 0x1

    #@23
    goto :goto_0

    #@24
    .line 1437
    :cond_0
    move-object v11, v2

    #@25
    .line 1438
    .local v11, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iget v4, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    #@27
    :goto_1
    if-lez v4, :cond_2

    #@29
    .line 1439
    invoke-virtual {v10, v4, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@2c
    .line 1440
    iget-object v11, v11, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@2e
    .line 1438
    add-int/lit8 v4, v4, -0x1

    #@30
    goto :goto_1

    #@31
    .end local v2    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .local v3, "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .local v6, "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local v7, "j":I
    .local v8, "k":Ljava/lang/Object;
    .local v9, "key":Ljava/lang/Object;, "TK;"
    .local v12, "rnd":I
    .local v13, "v":Ljava/lang/Object;
    .local v14, "val":Ljava/lang/Object;, "TV;"
    .local v15, "z":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_1
    move-object v2, v3

    #@32
    .line 1444
    .end local v3    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .end local v6    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v7    # "j":I
    .end local v8    # "k":Ljava/lang/Object;
    .end local v9    # "key":Ljava/lang/Object;, "TK;"
    .end local v12    # "rnd":I
    .end local v13    # "v":Ljava/lang/Object;
    .end local v14    # "val":Ljava/lang/Object;, "TV;"
    .end local v15    # "z":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .restart local v2    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@35
    move-result-object v8

    #@36
    .line 1445
    .restart local v8    # "k":Ljava/lang/Object;
    if-nez v8, :cond_3

    #@38
    .line 1478
    move-object/from16 v0, p0

    #@3a
    iput-object v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@3c
    .line 1418
    return-void

    #@3d
    .line 1447
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@40
    move-result-object v13

    #@41
    .line 1448
    .restart local v13    # "v":Ljava/lang/Object;
    if-nez v13, :cond_4

    #@43
    .line 1449
    new-instance v16, Ljava/lang/NullPointerException;

    #@45
    invoke-direct/range {v16 .. v16}, Ljava/lang/NullPointerException;-><init>()V

    #@48
    throw v16

    #@49
    .line 1450
    :cond_4
    move-object v9, v8

    #@4a
    .line 1451
    .restart local v9    # "key":Ljava/lang/Object;, "TK;"
    move-object v14, v13

    #@4b
    .line 1452
    .restart local v14    # "val":Ljava/lang/Object;, "TV;"
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    #@4e
    move-result-object v16

    #@4f
    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    #@52
    move-result v12

    #@53
    .line 1453
    .restart local v12    # "rnd":I
    const/4 v7, 0x0

    #@54
    .line 1454
    .restart local v7    # "j":I
    const v16, -0x7fffffff

    #@57
    and-int v16, v16, v12

    #@59
    if-nez v16, :cond_6

    #@5b
    .line 1456
    :cond_5
    add-int/lit8 v7, v7, 0x1

    #@5d
    .line 1457
    ushr-int/lit8 v12, v12, 0x1

    #@5f
    and-int/lit8 v16, v12, 0x1

    #@61
    if-nez v16, :cond_5

    #@63
    .line 1458
    iget v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    #@65
    move/from16 v16, v0

    #@67
    move/from16 v0, v16

    #@69
    if-le v7, v0, :cond_6

    #@6b
    iget v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    #@6d
    move/from16 v16, v0

    #@6f
    add-int/lit8 v7, v16, 0x1

    #@71
    .line 1460
    :cond_6
    new-instance v15, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@73
    const/16 v16, 0x0

    #@75
    move-object/from16 v0, v16

    #@77
    invoke-direct {v15, v8, v13, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    #@7a
    .line 1461
    .restart local v15    # "z":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iput-object v15, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@7c
    .line 1462
    move-object v1, v15

    #@7d
    .line 1463
    if-lez v7, :cond_2

    #@7f
    .line 1464
    const/4 v5, 0x0

    #@80
    .line 1465
    .local v5, "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    const/4 v4, 0x1

    #@81
    move-object v6, v5

    #@82
    .restart local v6    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    move-object v3, v2

    #@83
    .end local v2    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .end local v5    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v3    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :goto_2
    if-gt v4, v7, :cond_1

    #@85
    .line 1466
    new-instance v5, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@87
    const/16 v16, 0x0

    #@89
    move-object/from16 v0, v16

    #@8b
    invoke-direct {v5, v15, v6, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)V

    #@8e
    .line 1467
    .end local v6    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local v5, "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iget v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    #@90
    move/from16 v16, v0

    #@92
    move/from16 v0, v16

    #@94
    if-le v4, v0, :cond_8

    #@96
    .line 1468
    new-instance v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@98
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@9a
    move-object/from16 v16, v0

    #@9c
    move-object/from16 v0, v16

    #@9e
    invoke-direct {v2, v0, v3, v5, v4}, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;I)V

    #@a1
    .line 1470
    .end local v3    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v2    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :goto_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@a4
    move-result v16

    #@a5
    move/from16 v0, v16

    #@a7
    if-ge v4, v0, :cond_7

    #@a9
    .line 1471
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@ac
    move-result-object v16

    #@ad
    check-cast v16, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@af
    move-object/from16 v0, v16

    #@b1
    iput-object v5, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@b3
    .line 1472
    invoke-virtual {v10, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@b6
    .line 1465
    :goto_4
    add-int/lit8 v4, v4, 0x1

    #@b8
    move-object v6, v5

    #@b9
    .end local v5    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v6    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    move-object v3, v2

    #@ba
    .end local v2    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v3    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    goto :goto_2

    #@bb
    .line 1474
    .end local v3    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .end local v6    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v2    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v5    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_7
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@be
    goto :goto_4

    #@bf
    .end local v2    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v3    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :cond_8
    move-object v2, v3

    #@c0
    .end local v3    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v2    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    goto :goto_3
.end method

.method static final toList(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2324
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 2325
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    .line 2326
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16
    goto :goto_0

    #@17
    .line 2327
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    return-object v2
.end method

.method private tryReduceLevel()V
    .locals 5

    #@0
    .prologue
    .line 985
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@2
    .line 988
    .local v2, "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    iget v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    #@4
    const/4 v4, 0x3

    #@5
    if-le v3, v4, :cond_0

    #@7
    .line 989
    iget-object v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@9
    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@b
    .local v0, "d":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    if-eqz v0, :cond_0

    #@d
    .line 990
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@f
    check-cast v1, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@11
    .local v1, "e":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    if-eqz v1, :cond_0

    #@13
    .line 991
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@15
    if-nez v3, :cond_0

    #@17
    .line 992
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@19
    if-nez v3, :cond_0

    #@1b
    .line 993
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@1d
    if-nez v3, :cond_0

    #@1f
    .line 994
    invoke-direct {p0, v2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->casHead(Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;)Z

    #@22
    move-result v3

    #@23
    .line 988
    if-eqz v3, :cond_0

    #@25
    .line 995
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@27
    if-eqz v3, :cond_0

    #@29
    .line 996
    invoke-direct {p0, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->casHead(Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;)Z

    #@2c
    .line 984
    .end local v0    # "d":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .end local v1    # "e":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v3, 0x0

    #@1
    .line 1396
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@4
    .line 1399
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@7
    move-result-object v0

    #@8
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    #@a
    .line 1400
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    .line 1401
    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_0

    #@10
    .line 1402
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@12
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@15
    .line 1403
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@18
    .line 1399
    :cond_0
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@1a
    goto :goto_0

    #@1b
    .line 1406
    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    :cond_1
    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@1e
    .line 1394
    return-void
.end method


# virtual methods
.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2142
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->getNear(Ljava/lang/Object;I)Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    #@1
    .line 2150
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    #@3
    const/4 v3, 0x1

    #@4
    invoke-virtual {p0, p1, v3, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;ILjava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@7
    move-result-object v0

    #@8
    .line 2151
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    #@a
    :goto_0
    return-object v1

    #@b
    :cond_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@d
    goto :goto_0
.end method

.method public clear()V
    .locals 0

    #@0
    .prologue
    .line 1624
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    #@3
    .line 1623
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 1305
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->clone()Ljava/util/concurrent/ConcurrentSkipListMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public clone()Ljava/util/concurrent/ConcurrentSkipListMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1309
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    #@6
    .line 1310
    .local v0, "clone":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    #@9
    .line 1311
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->buildFromSorted(Ljava/util/SortedMap;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 1312
    return-object v0

    #@d
    .line 1313
    .end local v0    # "clone":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    :catch_0
    move-exception v1

    #@e
    .line 1314
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    #@10
    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    #@13
    throw v2
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1993
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    #@2
    return-object v0
.end method

.method public compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    const/4 v5, 0x0

    #@1
    .line 1701
    if-eqz p1, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    .line 1702
    :cond_0
    new-instance v4, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v4

    #@b
    .line 1705
    :cond_1
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@e
    move-result-object v0

    #@f
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_3

    #@11
    .line 1706
    invoke-interface {p2, p1, v5}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    .local v1, "r":Ljava/lang/Object;, "TV;"
    if-nez v1, :cond_2

    #@17
    .line 1721
    :goto_0
    return-object v5

    #@18
    .line 1708
    :cond_2
    const/4 v4, 0x1

    #@19
    invoke-direct {p0, p1, v1, v4}, Ljava/util/concurrent/ConcurrentSkipListMap;->doPut(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    #@1c
    move-result-object v4

    #@1d
    if-nez v4, :cond_1

    #@1f
    .line 1709
    return-object v1

    #@20
    .line 1711
    .end local v1    # "r":Ljava/lang/Object;, "TV;"
    :cond_3
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@22
    .local v2, "v":Ljava/lang/Object;
    if-eqz v2, :cond_1

    #@24
    .line 1712
    move-object v3, v2

    #@25
    .line 1713
    .local v3, "vv":Ljava/lang/Object;, "TV;"
    invoke-interface {p2, p1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    .restart local v1    # "r":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_4

    #@2b
    .line 1714
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2e
    move-result v4

    #@2f
    if-eqz v4, :cond_1

    #@31
    .line 1715
    return-object v1

    #@32
    .line 1717
    :cond_4
    invoke-virtual {p0, p1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    move-result-object v4

    #@36
    if-eqz v4, :cond_1

    #@38
    goto :goto_0
.end method

.method public computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function",
            "<-TK;+TV;>;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 1644
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 1645
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v3

    #@a
    .line 1647
    :cond_1
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->doGet(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    .local v2, "v":Ljava/lang/Object;, "TV;"
    if-nez v2, :cond_2

    #@10
    .line 1648
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    .local v1, "r":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_2

    #@16
    .line 1649
    const/4 v3, 0x1

    #@17
    invoke-direct {p0, p1, v1, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->doPut(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    .local v0, "p":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_3

    #@1d
    move-object v2, v1

    #@1e
    .line 1650
    .end local v0    # "p":Ljava/lang/Object;, "TV;"
    .end local v1    # "r":Ljava/lang/Object;, "TV;"
    :cond_2
    :goto_0
    return-object v2

    #@1f
    .line 1649
    .restart local v0    # "p":Ljava/lang/Object;, "TV;"
    .restart local v1    # "r":Ljava/lang/Object;, "TV;"
    :cond_3
    move-object v2, v0

    #@20
    goto :goto_0
.end method

.method public computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    const/4 v5, 0x0

    #@1
    .line 1668
    if-eqz p1, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    .line 1669
    :cond_0
    new-instance v4, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v4

    #@b
    .line 1671
    :cond_1
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@e
    move-result-object v0

    #@f
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v0, :cond_3

    #@11
    .line 1672
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@13
    .local v2, "v":Ljava/lang/Object;
    if-eqz v2, :cond_1

    #@15
    .line 1673
    move-object v3, v2

    #@16
    .line 1674
    .local v3, "vv":Ljava/lang/Object;, "TV;"
    invoke-interface {p2, p1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    .line 1675
    .local v1, "r":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_2

    #@1c
    .line 1676
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1f
    move-result v4

    #@20
    if-eqz v4, :cond_1

    #@22
    .line 1677
    return-object v1

    #@23
    .line 1679
    :cond_2
    invoke-virtual {p0, p1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    move-result-object v4

    #@27
    if-eqz v4, :cond_1

    #@29
    .line 1683
    .end local v1    # "r":Ljava/lang/Object;, "TV;"
    .end local v2    # "v":Ljava/lang/Object;
    .end local v3    # "vv":Ljava/lang/Object;, "TV;"
    :cond_3
    return-object v5
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1494
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->doGet(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1577
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    if-nez p1, :cond_0

    #@2
    .line 1578
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v2

    #@8
    .line 1579
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@b
    move-result-object v0

    #@c
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    #@e
    .line 1580
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    .line 1581
    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_1

    #@14
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_1

    #@1a
    .line 1582
    const/4 v2, 0x1

    #@1b
    return v2

    #@1c
    .line 1579
    :cond_1
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@1e
    goto :goto_0

    #@1f
    .line 1584
    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    :cond_2
    const/4 v2, 0x0

    #@20
    return v2
.end method

.method public descendingKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1873
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public bridge synthetic descendingMap()Ljava/util/NavigableMap;
    .locals 1

    #@0
    .prologue
    .line 1866
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 1867
    iget-object v7, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->descendingMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@4
    .line 1868
    .local v7, "dm":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<TK;TV;>;"
    if-eqz v7, :cond_0

    #@6
    .end local v7    # "dm":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<TK;TV;>;"
    :goto_0
    return-object v7

    #@7
    .restart local v7    # "dm":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<TK;TV;>;"
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@9
    .line 1869
    const/4 v6, 0x1

    #@a
    move-object v1, p0

    #@b
    move-object v4, v2

    #@c
    move v5, v3

    #@d
    .line 1868
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    #@10
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->descendingMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@12
    move-object v7, v0

    #@13
    goto :goto_0
.end method

.method final doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v8, 0x0

    #@1
    .line 922
    if-nez p1, :cond_0

    #@3
    .line 923
    new-instance v7, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v7

    #@9
    .line 924
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    #@b
    .line 926
    .local v2, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :cond_1
    :goto_0
    invoke-direct {p0, p1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@e
    move-result-object v0

    #@f
    .local v0, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@11
    .line 928
    .local v4, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_1
    if-nez v4, :cond_3

    #@13
    .line 961
    :cond_2
    return-object v8

    #@14
    .line 930
    :cond_3
    iget-object v3, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@16
    .line 931
    .local v3, "f":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v7, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@18
    if-ne v4, v7, :cond_1

    #@1a
    .line 933
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@1c
    .local v5, "v":Ljava/lang/Object;
    if-nez v5, :cond_4

    #@1e
    .line 934
    invoke-virtual {v4, v0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    #@21
    goto :goto_0

    #@22
    .line 937
    :cond_4
    iget-object v7, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@24
    if-eqz v7, :cond_1

    #@26
    if-eq v5, v4, :cond_1

    #@28
    .line 939
    iget-object v7, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@2a
    invoke-static {v2, p1, v7}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    #@2d
    move-result v1

    #@2e
    .local v1, "c":I
    if-ltz v1, :cond_2

    #@30
    .line 941
    if-lez v1, :cond_5

    #@32
    .line 942
    move-object v0, v4

    #@33
    .line 943
    move-object v4, v3

    #@34
    .line 944
    goto :goto_1

    #@35
    .line 946
    :cond_5
    if-eqz p2, :cond_6

    #@37
    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v7

    #@3b
    if-eqz v7, :cond_2

    #@3d
    .line 948
    :cond_6
    invoke-virtual {v4, v5, v8}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@40
    move-result v7

    #@41
    if-eqz v7, :cond_1

    #@43
    .line 950
    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->appendMarker(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    #@46
    move-result v7

    #@47
    if-eqz v7, :cond_8

    #@49
    invoke-virtual {v0, v4, v3}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casNext(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    #@4c
    move-result v7

    #@4d
    if-eqz v7, :cond_8

    #@4f
    .line 953
    invoke-direct {p0, p1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@52
    .line 954
    iget-object v7, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@54
    iget-object v7, v7, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@56
    if-nez v7, :cond_7

    #@58
    .line 955
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->tryReduceLevel()V

    #@5b
    .line 957
    :cond_7
    :goto_2
    move-object v6, v5

    #@5c
    .line 958
    .local v6, "vv":Ljava/lang/Object;, "TV;"
    return-object v5

    #@5d
    .line 951
    .end local v6    # "vv":Ljava/lang/Object;, "TV;"
    :cond_8
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@60
    goto :goto_2
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
    .line 1862
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;

    #@2
    .line 1863
    .local v0, "es":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK;TV;>;"
    if-eqz v0, :cond_0

    #@4
    .end local v0    # "es":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK;TV;>;"
    :goto_0
    return-object v0

    #@5
    .restart local v0    # "es":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK;TV;>;"
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;

    #@7
    .end local v0    # "es":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK;TV;>;"
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    #@a
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;

    #@c
    goto :goto_0
.end method

.method final entrySpliterator()Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v4, 0x0

    #@1
    .line 3558
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    #@3
    .line 3561
    .local v1, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :goto_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@5
    .local v2, "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    iget-object v6, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@7
    .line 3562
    .local v6, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v3, v6, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@9
    .local v3, "p":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v3, :cond_0

    #@b
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@d
    if-eqz v0, :cond_2

    #@f
    .line 3563
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;

    #@11
    if-nez v3, :cond_1

    #@13
    .line 3564
    const/4 v5, 0x0

    #@14
    .line 3563
    :goto_1
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;-><init>(Ljava/util/Comparator;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;I)V

    #@17
    return-object v0

    #@18
    .line 3564
    :cond_1
    const v5, 0x7fffffff

    #@1b
    goto :goto_1

    #@1c
    .line 3565
    :cond_2
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@1e
    invoke-virtual {v3, v6, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    #@21
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 12
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 1891
    if-ne p1, p0, :cond_0

    #@4
    .line 1892
    return v11

    #@5
    .line 1893
    :cond_0
    instance-of v8, p1, Ljava/util/Map;

    #@7
    if-nez v8, :cond_1

    #@9
    .line 1894
    return v10

    #@a
    :cond_1
    move-object v4, p1

    #@b
    .line 1895
    check-cast v4, Ljava/util/Map;

    #@d
    .line 1897
    .local v4, "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    #@10
    move-result-object v8

    #@11
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v2

    #@15
    .local v2, "e$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v8

    #@19
    if-eqz v8, :cond_3

    #@1b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Ljava/util/Map$Entry;

    #@21
    .line 1898
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@24
    move-result-object v8

    #@25
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@28
    move-result-object v9

    #@29
    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    move-result-object v9

    #@2d
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v8

    #@31
    if-nez v8, :cond_2

    #@33
    .line 1899
    return v10

    #@34
    .line 1900
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_3
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@37
    move-result-object v8

    #@38
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3b
    move-result-object v2

    #@3c
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@3f
    move-result v8

    #@40
    if-eqz v8, :cond_6

    #@42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@45
    move-result-object v0

    #@46
    check-cast v0, Ljava/util/Map$Entry;

    #@48
    .line 1901
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@4b
    move-result-object v3

    #@4c
    .line 1902
    .local v3, "k":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@4f
    move-result-object v7

    #@50
    .line 1903
    .local v7, "v":Ljava/lang/Object;
    if-eqz v3, :cond_4

    #@52
    if-nez v7, :cond_5

    #@54
    .line 1904
    :cond_4
    return v10

    #@55
    .line 1903
    :cond_5
    invoke-virtual {p0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@58
    move-result-object v8

    #@59
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@5c
    move-result v8

    #@5d
    if-eqz v8, :cond_4

    #@5f
    goto :goto_0

    #@60
    .line 1906
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v3    # "k":Ljava/lang/Object;
    .end local v7    # "v":Ljava/lang/Object;
    :cond_6
    return v11

    #@61
    .line 1909
    .end local v2    # "e$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v6

    #@62
    .line 1910
    .local v6, "unused":Ljava/lang/NullPointerException;
    return v10

    #@63
    .line 1907
    .end local v6    # "unused":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v5

    #@64
    .line 1908
    .local v5, "unused":Ljava/lang/ClassCastException;
    return v10
.end method

.method final findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v3, 0x0

    #@1
    .line 1007
    :goto_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@3
    iget-object v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@5
    .local v0, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@7
    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v1, :cond_0

    #@9
    .line 1008
    return-object v3

    #@a
    .line 1009
    :cond_0
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 1010
    return-object v1

    #@f
    .line 1011
    :cond_1
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@11
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    #@14
    goto :goto_0
.end method

.method final findLast()Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v7, 0x0

    #@1
    .line 1118
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@3
    .line 1121
    .local v4, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_0
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@5
    .local v5, "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v5, :cond_1

    #@7
    .line 1122
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->indexesDeletedNode()Z

    #@a
    move-result v8

    #@b
    if-eqz v8, :cond_0

    #@d
    .line 1123
    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->unlink(Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    #@10
    .line 1124
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@12
    goto :goto_0

    #@13
    .line 1127
    :cond_0
    move-object v4, v5

    #@14
    goto :goto_0

    #@15
    .line 1128
    :cond_1
    iget-object v1, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@17
    .local v1, "d":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v1, :cond_2

    #@19
    .line 1129
    move-object v4, v1

    #@1a
    goto :goto_0

    #@1b
    .line 1131
    :cond_2
    iget-object v0, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@1d
    .local v0, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@1f
    .line 1132
    .local v3, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_1
    if-nez v3, :cond_4

    #@21
    .line 1133
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->isBaseHeader()Z

    #@24
    move-result v8

    #@25
    if-eqz v8, :cond_3

    #@27
    move-object v0, v7

    #@28
    .end local v0    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_3
    return-object v0

    #@29
    .line 1134
    .restart local v0    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_4
    iget-object v2, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@2b
    .line 1135
    .local v2, "f":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v8, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@2d
    if-eq v3, v8, :cond_6

    #@2f
    .line 1147
    :cond_5
    :goto_2
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@31
    goto :goto_0

    #@32
    .line 1137
    :cond_6
    iget-object v6, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@34
    .line 1138
    .local v6, "v":Ljava/lang/Object;
    if-nez v6, :cond_7

    #@36
    .line 1139
    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    #@39
    goto :goto_2

    #@3a
    .line 1142
    :cond_7
    iget-object v8, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@3c
    if-eqz v8, :cond_5

    #@3e
    if-eq v6, v3, :cond_5

    #@40
    .line 1144
    move-object v0, v3

    #@41
    .line 1145
    move-object v3, v2

    #@42
    goto :goto_1
.end method

.method final findNear(Ljava/lang/Object;ILjava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 7
    .param p2, "rel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Ljava/util/Comparator",
            "<-TK;>;)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    const/4 v5, 0x0

    #@1
    .line 1197
    if-nez p1, :cond_1

    #@3
    .line 1198
    new-instance v5, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v5

    #@9
    .line 1204
    .local v0, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .local v3, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_0
    iget-object v2, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@b
    .line 1205
    .local v2, "f":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v6, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@d
    if-eq v3, v6, :cond_4

    #@f
    .line 1200
    .end local v0    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v2    # "f":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v3    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p3}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@12
    move-result-object v0

    #@13
    .restart local v0    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@15
    .line 1202
    .restart local v3    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_1
    if-nez v3, :cond_0

    #@17
    .line 1203
    and-int/lit8 v6, p2, 0x2

    #@19
    if-eqz v6, :cond_2

    #@1b
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->isBaseHeader()Z

    #@1e
    move-result v6

    #@1f
    if-eqz v6, :cond_3

    #@21
    :cond_2
    move-object v0, v5

    #@22
    .end local v0    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_3
    return-object v0

    #@23
    .line 1207
    .restart local v0    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .restart local v2    # "f":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_4
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@25
    .local v4, "v":Ljava/lang/Object;
    if-nez v4, :cond_5

    #@27
    .line 1208
    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    #@2a
    goto :goto_0

    #@2b
    .line 1211
    :cond_5
    iget-object v6, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@2d
    if-eqz v6, :cond_1

    #@2f
    if-eq v4, v3, :cond_1

    #@31
    .line 1213
    iget-object v6, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@33
    invoke-static {p3, p1, v6}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    #@36
    move-result v1

    #@37
    .line 1214
    .local v1, "c":I
    if-nez v1, :cond_7

    #@39
    and-int/lit8 v6, p2, 0x1

    #@3b
    if-eqz v6, :cond_7

    #@3d
    .line 1216
    :cond_6
    return-object v3

    #@3e
    .line 1215
    :cond_7
    if-gez v1, :cond_8

    #@40
    and-int/lit8 v6, p2, 0x2

    #@42
    if-eqz v6, :cond_6

    #@44
    .line 1217
    :cond_8
    if-gtz v1, :cond_a

    #@46
    and-int/lit8 v6, p2, 0x2

    #@48
    if-eqz v6, :cond_a

    #@4a
    .line 1218
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->isBaseHeader()Z

    #@4d
    move-result v6

    #@4e
    if-eqz v6, :cond_9

    #@50
    :goto_2
    return-object v5

    #@51
    :cond_9
    move-object v5, v0

    #@52
    goto :goto_2

    #@53
    .line 1219
    :cond_a
    move-object v0, v3

    #@54
    .line 1220
    move-object v3, v2

    #@55
    goto :goto_1
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v2, 0x0

    #@1
    .line 2186
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@4
    move-result-object v1

    #@5
    .line 2187
    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v1, :cond_1

    #@7
    .line 2188
    return-object v2

    #@8
    .line 2189
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->createSnapshot()Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@b
    move-result-object v0

    #@c
    .line 2190
    .local v0, "e":Ljava/util/AbstractMap$SimpleImmutableEntry;, "Ljava/util/AbstractMap$SimpleImmutableEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    #@e
    .line 2191
    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 2000
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@3
    move-result-object v0

    #@4
    .line 2001
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    #@6
    .line 2002
    new-instance v1, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v1

    #@c
    .line 2003
    :cond_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@e
    return-object v1
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2119
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x3

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->getNear(Ljava/lang/Object;I)Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    #@1
    .line 2128
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    #@3
    const/4 v3, 0x3

    #@4
    invoke-virtual {p0, p1, v3, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;ILjava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@7
    move-result-object v0

    #@8
    .line 2129
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    #@a
    :goto_0
    return-object v1

    #@b
    :cond_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@d
    goto :goto_0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3202
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v2

    #@8
    .line 3204
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@b
    move-result-object v0

    #@c
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    #@e
    .line 3205
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_1

    #@14
    .line 3206
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@16
    invoke-interface {p1, v2, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    #@19
    .line 3204
    :cond_1
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@1b
    goto :goto_0

    #@1c
    .line 3201
    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    :cond_2
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
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
    .line 1512
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->doGet(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method final getNear(Ljava/lang/Object;I)Ljava/util/AbstractMap$SimpleImmutableEntry;
    .locals 4
    .param p2, "rel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)",
            "Ljava/util/AbstractMap$SimpleImmutableEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v3, 0x0

    #@1
    .line 1232
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    #@3
    .line 1234
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;ILjava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@6
    move-result-object v2

    #@7
    .line 1235
    .local v2, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v2, :cond_1

    #@9
    .line 1236
    return-object v3

    #@a
    .line 1237
    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->createSnapshot()Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@d
    move-result-object v1

    #@e
    .line 1238
    .local v1, "e":Ljava/util/AbstractMap$SimpleImmutableEntry;, "Ljava/util/AbstractMap$SimpleImmutableEntry<TK;TV;>;"
    if-eqz v1, :cond_0

    #@10
    .line 1239
    return-object v1
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
    .line 1528
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->doGet(Ljava/lang/Object;)Ljava/lang/Object;

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

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "toKey"    # Ljava/lang/Object;
    .param p2, "inclusive"    # Z

    #@0
    .prologue
    .line 2036
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "toKey"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2071
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2072
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 7
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 2038
    if-nez p1, :cond_0

    #@4
    .line 2039
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 2040
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@c
    move-object v1, p0

    #@d
    move-object v4, p1

    #@e
    move v5, p2

    #@f
    move v6, v3

    #@10
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    #@13
    return-object v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2165
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->getNear(Ljava/lang/Object;I)Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    #@1
    .line 2174
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    #@3
    const/4 v3, 0x0

    #@4
    invoke-virtual {p0, p1, v3, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;ILjava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@7
    move-result-object v0

    #@8
    .line 2175
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    #@a
    :goto_0
    return-object v1

    #@b
    :cond_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@d
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 1617
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_0

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

.method public keySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1801
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    #@2
    .line 1802
    .local v0, "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    if-eqz v0, :cond_0

    #@4
    .end local v0    # "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    :goto_0
    return-object v0

    #@5
    .restart local v0    # "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    #@7
    .end local v0    # "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    #@a
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    #@c
    goto :goto_0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    #@0
    .prologue
    .line 1800
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet()Ljava/util/NavigableSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method final keySpliterator()Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v4, 0x0

    #@1
    .line 3367
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    #@3
    .line 3370
    .local v1, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :goto_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@5
    .local v2, "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    iget-object v6, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@7
    .line 3371
    .local v6, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v3, v6, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@9
    .local v3, "p":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v3, :cond_0

    #@b
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@d
    if-eqz v0, :cond_2

    #@f
    .line 3372
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;

    #@11
    if-nez v3, :cond_1

    #@13
    .line 3373
    const/4 v5, 0x0

    #@14
    .line 3372
    :goto_1
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;-><init>(Ljava/util/Comparator;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;I)V

    #@17
    return-object v0

    #@18
    .line 3373
    :cond_1
    const v5, 0x7fffffff

    #@1b
    goto :goto_1

    #@1c
    .line 3374
    :cond_2
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@1e
    invoke-virtual {v3, v6, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    #@21
    goto :goto_0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v2, 0x0

    #@1
    .line 2203
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findLast()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@4
    move-result-object v1

    #@5
    .line 2204
    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v1, :cond_1

    #@7
    .line 2205
    return-object v2

    #@8
    .line 2206
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->createSnapshot()Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@b
    move-result-object v0

    #@c
    .line 2207
    .local v0, "e":Ljava/util/AbstractMap$SimpleImmutableEntry;, "Ljava/util/AbstractMap$SimpleImmutableEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    #@e
    .line 2208
    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 2010
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findLast()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@3
    move-result-object v0

    #@4
    .line 2011
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    #@6
    .line 2012
    new-instance v1, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v1

    #@c
    .line 2013
    :cond_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@e
    return-object v1
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2096
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->getNear(Ljava/lang/Object;I)Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    #@1
    .line 2104
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    #@3
    const/4 v3, 0x2

    #@4
    invoke-virtual {p0, p1, v3, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;ILjava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@7
    move-result-object v0

    #@8
    .line 2105
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    #@a
    :goto_0
    return-object v1

    #@b
    :cond_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@d
    goto :goto_0
.end method

.method public merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction",
            "<-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    const/4 v5, 0x0

    #@1
    .line 1741
    if-eqz p1, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    .line 1742
    :cond_0
    new-instance v4, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v4

    #@b
    .line 1741
    :cond_1
    if-eqz p3, :cond_0

    #@d
    .line 1745
    :cond_2
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@10
    move-result-object v0

    #@11
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_3

    #@13
    .line 1746
    const/4 v4, 0x1

    #@14
    invoke-direct {p0, p1, p2, v4}, Ljava/util/concurrent/ConcurrentSkipListMap;->doPut(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    #@17
    move-result-object v4

    #@18
    if-nez v4, :cond_2

    #@1a
    .line 1747
    return-object p2

    #@1b
    .line 1749
    :cond_3
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@1d
    .local v2, "v":Ljava/lang/Object;
    if-eqz v2, :cond_2

    #@1f
    .line 1750
    move-object v3, v2

    #@20
    .line 1751
    .local v3, "vv":Ljava/lang/Object;, "TV;"
    invoke-interface {p3, v2, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    .local v1, "r":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_4

    #@26
    .line 1752
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@29
    move-result v4

    #@2a
    if-eqz v4, :cond_2

    #@2c
    .line 1753
    return-object v1

    #@2d
    .line 1755
    :cond_4
    invoke-virtual {p0, p1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v4

    #@31
    if-eqz v4, :cond_2

    #@33
    .line 1756
    return-object v5
.end method

.method public navigableKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1806
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    #@2
    .line 1807
    .local v0, "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    if-eqz v0, :cond_0

    #@4
    .end local v0    # "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    :goto_0
    return-object v0

    #@5
    .restart local v0    # "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    #@7
    .end local v0    # "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    #@a
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    #@c
    goto :goto_0
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2219
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemoveFirstEntry()Ljava/util/Map$Entry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2229
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemoveLastEntry()Ljava/util/Map$Entry;

    #@3
    move-result-object v0

    #@4
    return-object v0
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
    .line 1545
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p2, :cond_0

    #@2
    .line 1546
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 1547
    :cond_0
    const/4 v0, 0x0

    #@9
    invoke-direct {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->doPut(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    return-object v0
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
    .line 1926
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p2, :cond_0

    #@2
    .line 1927
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 1928
    :cond_0
    const/4 v0, 0x1

    #@9
    invoke-direct {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->doPut(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    return-object v0
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
    .line 1561
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 1939
    if-nez p1, :cond_0

    #@3
    .line 1940
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v0

    #@9
    .line 1941
    :cond_0
    if-eqz p2, :cond_1

    #@b
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    if-eqz v1, :cond_1

    #@11
    const/4 v0, 0x1

    #@12
    :cond_1
    return v0
.end method

.method removeEntryIf(Ljava/util/function/Predicate;)Z
    .locals 6
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
    .line 3227
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v5, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v5

    #@8
    .line 3228
    :cond_0
    const/4 v3, 0x0

    #@9
    .line 3229
    .local v3, "removed":Z
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@c
    move-result-object v2

    #@d
    .local v2, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_2

    #@f
    .line 3231
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    #@12
    move-result-object v4

    #@13
    .local v4, "v":Ljava/lang/Object;, "TV;"
    if-eqz v4, :cond_1

    #@15
    .line 3232
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@17
    .line 3233
    .local v1, "k":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@19
    invoke-direct {v0, v1, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@1c
    .line 3234
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    #@1f
    move-result v5

    #@20
    if-eqz v5, :cond_1

    #@22
    invoke-virtual {p0, v1, v4}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@25
    move-result v5

    #@26
    if-eqz v5, :cond_1

    #@28
    .line 3235
    const/4 v3, 0x1

    #@29
    .line 3229
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1    # "k":Ljava/lang/Object;, "TK;"
    :cond_1
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@2b
    goto :goto_0

    #@2c
    .line 3238
    .end local v4    # "v":Ljava/lang/Object;, "TV;"
    :cond_2
    return v3
.end method

.method removeValueIf(Ljava/util/function/Predicate;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-TV;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 3245
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TV;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v4

    #@8
    .line 3246
    :cond_0
    const/4 v2, 0x0

    #@9
    .line 3247
    .local v2, "removed":Z
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@c
    move-result-object v1

    #@d
    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v1, :cond_2

    #@f
    .line 3249
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    #@12
    move-result-object v3

    #@13
    .local v3, "v":Ljava/lang/Object;, "TV;"
    if-eqz v3, :cond_1

    #@15
    .line 3250
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@17
    .line 3251
    .local v0, "k":Ljava/lang/Object;, "TK;"
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_1

    #@1d
    invoke-virtual {p0, v0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@20
    move-result v4

    #@21
    if-eqz v4, :cond_1

    #@23
    .line 3252
    const/4 v2, 0x1

    #@24
    .line 3247
    .end local v0    # "k":Ljava/lang/Object;, "TK;"
    :cond_1
    iget-object v1, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@26
    goto :goto_0

    #@27
    .line 3255
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    :cond_2
    return v2
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v4, 0x0

    #@1
    .line 1977
    if-eqz p1, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    .line 1978
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v3

    #@b
    .line 1981
    :cond_1
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@e
    move-result-object v0

    #@f
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_2

    #@11
    .line 1982
    return-object v4

    #@12
    .line 1983
    :cond_2
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@14
    .local v1, "v":Ljava/lang/Object;
    if-eqz v1, :cond_1

    #@16
    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_1

    #@1c
    .line 1984
    move-object v2, v1

    #@1d
    .line 1985
    .local v2, "vv":Ljava/lang/Object;, "TV;"
    return-object v1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    const/4 v3, 0x0

    #@1
    .line 1952
    if-eqz p1, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    .line 1953
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v2

    #@b
    .line 1952
    :cond_1
    if-eqz p3, :cond_0

    #@d
    .line 1956
    :cond_2
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@10
    move-result-object v0

    #@11
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_3

    #@13
    .line 1957
    return v3

    #@14
    .line 1958
    :cond_3
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@16
    .local v1, "v":Ljava/lang/Object;
    if-eqz v1, :cond_2

    #@18
    .line 1959
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    if-nez v2, :cond_4

    #@1e
    .line 1960
    return v3

    #@1f
    .line 1961
    :cond_4
    invoke-virtual {v0, v1, p3}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_2

    #@25
    .line 1962
    const/4 v2, 0x1

    #@26
    return v2
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3211
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v3, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v3

    #@8
    .line 3213
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@b
    move-result-object v0

    #@c
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_4

    #@e
    .line 3214
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    .local v2, "v":Ljava/lang/Object;, "TV;"
    if-eqz v2, :cond_3

    #@14
    .line 3215
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@16
    invoke-interface {p1, v3, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    .line 3216
    .local v1, "r":Ljava/lang/Object;, "TV;"
    if-nez v1, :cond_2

    #@1c
    new-instance v3, Ljava/lang/NullPointerException;

    #@1e
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@21
    throw v3

    #@22
    .line 3217
    :cond_2
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_1

    #@28
    .line 3213
    .end local v1    # "r":Ljava/lang/Object;, "TV;"
    :cond_3
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@2a
    goto :goto_0

    #@2b
    .line 3210
    .end local v2    # "v":Ljava/lang/Object;, "TV;"
    :cond_4
    return-void
.end method

.method public size()I
    .locals 6

    #@0
    .prologue
    .line 1604
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const-wide/16 v0, 0x0

    #@2
    .line 1605
    .local v0, "count":J
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@5
    move-result-object v2

    #@6
    .local v2, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_1

    #@8
    .line 1606
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    #@b
    move-result-object v3

    #@c
    if-eqz v3, :cond_0

    #@e
    .line 1607
    const-wide/16 v4, 0x1

    #@10
    add-long/2addr v0, v4

    #@11
    .line 1605
    :cond_0
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@13
    goto :goto_0

    #@14
    .line 1609
    :cond_1
    const-wide/32 v4, 0x7fffffff

    #@17
    cmp-long v3, v0, v4

    #@19
    if-ltz v3, :cond_2

    #@1b
    const v3, 0x7fffffff

    #@1e
    :goto_1
    return v3

    #@1f
    :cond_2
    long-to-int v3, v0

    #@20
    goto :goto_1
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "fromKey"    # Ljava/lang/Object;
    .param p2, "fromInclusive"    # Z
    .param p3, "toKey"    # Ljava/lang/Object;
    .param p4, "toInclusive"    # Z

    #@0
    .prologue
    .line 2021
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentSkipListMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "fromKey"    # Ljava/lang/Object;
    .param p2, "toKey"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2062
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2063
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v0, p2, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 7
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2025
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    if-eqz p1, :cond_0

    #@2
    if-nez p3, :cond_1

    #@4
    .line 2026
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 2027
    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@c
    .line 2028
    const/4 v6, 0x0

    #@d
    move-object v1, p0

    #@e
    move-object v2, p1

    #@f
    move v3, p2

    #@10
    move-object v4, p3

    #@11
    move v5, p4

    #@12
    .line 2027
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    #@15
    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "fromKey"    # Ljava/lang/Object;
    .param p2, "inclusive"    # Z

    #@0
    .prologue
    .line 2049
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "fromKey"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2080
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2081
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 7
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 2051
    if-nez p1, :cond_0

    #@4
    .line 2052
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 2053
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@c
    move-object v1, p0

    #@d
    move-object v2, p1

    #@e
    move v3, p2

    #@f
    move v6, v5

    #@10
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    #@13
    return-object v0
.end method

.method final valueSpliterator()Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v4, 0x0

    #@1
    .line 3454
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    #@3
    .line 3457
    .local v1, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :goto_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@5
    .local v2, "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    iget-object v6, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@7
    .line 3458
    .local v6, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v3, v6, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@9
    .local v3, "p":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v3, :cond_0

    #@b
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@d
    if-eqz v0, :cond_2

    #@f
    .line 3459
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;

    #@11
    if-nez v3, :cond_1

    #@13
    .line 3460
    const/4 v5, 0x0

    #@14
    .line 3459
    :goto_1
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;-><init>(Ljava/util/Comparator;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;I)V

    #@17
    return-object v0

    #@18
    .line 3460
    :cond_1
    const v5, 0x7fffffff

    #@1b
    goto :goto_1

    #@1c
    .line 3461
    :cond_2
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@1e
    invoke-virtual {v3, v6, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    #@21
    goto :goto_0
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
    .line 1830
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->values:Ljava/util/concurrent/ConcurrentSkipListMap$Values;

    #@2
    .line 1831
    .local v0, "vs":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap$Values<TK;TV;>;"
    if-eqz v0, :cond_0

    #@4
    .end local v0    # "vs":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap$Values<TK;TV;>;"
    :goto_0
    return-object v0

    #@5
    .restart local v0    # "vs":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap$Values<TK;TV;>;"
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;

    #@7
    .end local v0    # "vs":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap$Values<TK;TV;>;"
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$Values;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    #@a
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->values:Ljava/util/concurrent/ConcurrentSkipListMap$Values;

    #@c
    goto :goto_0
.end method
