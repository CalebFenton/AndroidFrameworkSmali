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
        Ljava/util/concurrent/ConcurrentSkipListMap$Index;,
        Ljava/util/concurrent/ConcurrentSkipListMap$Node;,
        Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,
        Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;,
        Ljava/util/concurrent/ConcurrentSkipListMap$Values;,
        Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,
        Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$KeyIterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$ValueIterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$Iter;
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
        "Ljava/util/concurrent/ConcurrentNavigableMap<",
        "TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final blacklist ADDER:Ljava/lang/invoke/VarHandle;

.field private static final greylist-max-o EQ:I = 0x1

.field private static final greylist-max-o GT:I = 0x0

.field private static final blacklist HEAD:Ljava/lang/invoke/VarHandle;

.field private static final greylist-max-o LT:I = 0x2

.field private static final blacklist NEXT:Ljava/lang/invoke/VarHandle;

.field private static final blacklist RIGHT:Ljava/lang/invoke/VarHandle;

.field private static final blacklist VAL:Ljava/lang/invoke/VarHandle;

.field private static final whitelist serialVersionUID:J = -0x77b98a51f9eeb959L


# instance fields
.field private transient blacklist adder:Ljava/util/concurrent/atomic/LongAdder;

.field final greylist-max-o comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field

.field private transient blacklist descendingMap:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient greylist-max-o entrySet:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient blacklist head:Ljava/util/concurrent/ConcurrentSkipListMap$Index;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$Index<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient greylist-max-o keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient greylist-max-o values:Ljava/util/concurrent/ConcurrentSkipListMap$Values;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$Values<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 3431
    const-class v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    :try_start_2
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    .line 3432
    .local v1, "l":Ljava/lang/invoke/MethodHandles$Lookup;
    const-string v2, "head"

    const-class v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/ConcurrentSkipListMap;->HEAD:Ljava/lang/invoke/VarHandle;

    .line 3434
    const-string v2, "adder"

    const-class v3, Ljava/util/concurrent/atomic/LongAdder;

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/ConcurrentSkipListMap;->ADDER:Ljava/lang/invoke/VarHandle;

    .line 3436
    const-class v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    const-string v2, "next"

    const-class v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/ConcurrentSkipListMap;->NEXT:Ljava/lang/invoke/VarHandle;

    .line 3437
    const-class v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    const-string v2, "val"

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/ConcurrentSkipListMap;->VAL:Ljava/lang/invoke/VarHandle;

    .line 3438
    const-class v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    const-string v2, "right"

    const-class v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/ConcurrentSkipListMap;->RIGHT:Ljava/lang/invoke/VarHandle;
    :try_end_3e
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_3e} :catch_40

    .line 3441
    .end local v1    # "l":Ljava/lang/invoke/MethodHandles$Lookup;
    nop

    .line 3442
    return-void

    .line 3439
    :catch_40
    move-exception v0

    .line 3440
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 1072
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1073
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 1074
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Comparator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)V"
        }
    .end annotation

    .line 1084
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1085
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 1086
    return-void
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

    .line 1099
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1100
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 1101
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->putAll(Ljava/util/Map;)V

    .line 1102
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/SortedMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "TK;+TV;>;)V"
        }
    .end annotation

    .line 1113
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "m":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1114
    invoke-interface {p1}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 1115
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->buildFromSorted(Ljava/util/SortedMap;)V

    .line 1116
    return-void
.end method

.method private blacklist addCount(J)V
    .registers 7
    .param p1, "c"    # J

    .line 439
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    nop

    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->adder:Ljava/util/concurrent/atomic/LongAdder;

    move-object v1, v0

    .local v1, "a":Ljava/util/concurrent/atomic/LongAdder;
    if-nez v0, :cond_16

    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap;->ADDER:Ljava/lang/invoke/VarHandle;

    new-instance v2, Ljava/util/concurrent/atomic/LongAdder;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/LongAdder;-><init>()V

    move-object v1, v2

    .line 440
    const/4 v3, 0x0

    invoke-polymorphic {v0, p0, v3, v2}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Void;Ljava/util/concurrent/atomic/LongAdder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    :cond_16
    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/atomic/LongAdder;->add(J)V

    .line 442
    return-void
.end method

.method static blacklist addIndices(Ljava/util/concurrent/ConcurrentSkipListMap$Index;ILjava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/Comparator;)Z
    .registers 13
    .param p1, "skips"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Index<",
            "TK;TV;>;I",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Index<",
            "TK;TV;>;",
            "Ljava/util/Comparator<",
            "-TK;>;)Z"
        }
    .end annotation

    .line 705
    .local p0, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local p2, "x":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local p3, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    const/4 v0, 0x0

    if-eqz p2, :cond_64

    iget-object v1, p2, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v2, v1

    .local v2, "z":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v1, :cond_64

    iget-object v1, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    move-object v3, v1

    .local v3, "key":Ljava/lang/Object;, "TK;"
    if-eqz v1, :cond_64

    if-eqz p0, :cond_64

    .line 707
    const/4 v1, 0x0

    .line 710
    .local v1, "retrying":Z
    :goto_10
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v5, v4

    .local v5, "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v4, :cond_3a

    .line 712
    iget-object v4, v5, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v6, v4

    .local v6, "p":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v4, :cond_30

    iget-object v4, v6, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    move-object v7, v4

    .local v7, "k":Ljava/lang/Object;, "TK;"
    if-eqz v4, :cond_30

    iget-object v4, v6, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    if-nez v4, :cond_24

    goto :goto_30

    .line 717
    :cond_24
    invoke-static {p3, v3, v7}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    move v8, v4

    .local v8, "c":I
    if-lez v4, :cond_2d

    .line 718
    move-object p0, v5

    goto :goto_39

    .line 719
    :cond_2d
    if-nez v8, :cond_39

    .line 720
    goto :goto_64

    .line 714
    .end local v7    # "k":Ljava/lang/Object;, "TK;"
    .end local v8    # "c":I
    :cond_30
    :goto_30
    sget-object v4, Ljava/util/concurrent/ConcurrentSkipListMap;->RIGHT:Ljava/lang/invoke/VarHandle;

    iget-object v7, v5, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    invoke-polymorphic {v4, p0, v5, v7}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    .line 715
    const/4 v8, 0x0

    .line 721
    .end local v6    # "p":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .restart local v8    # "c":I
    :cond_39
    :goto_39
    goto :goto_3b

    .line 723
    .end local v8    # "c":I
    :cond_3a
    const/4 v8, -0x1

    .line 725
    .restart local v8    # "c":I
    :goto_3b
    if-gez v8, :cond_63

    .line 726
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v6, v4

    .local v6, "d":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v4, :cond_48

    if-lez p1, :cond_48

    .line 727
    add-int/lit8 p1, p1, -0x1

    .line 728
    move-object p0, v6

    goto :goto_63

    .line 730
    :cond_48
    if-eqz v6, :cond_55

    if-nez v1, :cond_55

    iget-object v4, p2, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 731
    invoke-static {v6, v0, v4, p3}, Ljava/util/concurrent/ConcurrentSkipListMap;->addIndices(Ljava/util/concurrent/ConcurrentSkipListMap$Index;ILjava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/Comparator;)Z

    move-result v4

    if-nez v4, :cond_55

    .line 732
    goto :goto_64

    .line 734
    :cond_55
    iput-object v5, p2, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 735
    sget-object v4, Ljava/util/concurrent/ConcurrentSkipListMap;->RIGHT:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v4, p0, v5, p2}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 736
    const/4 v0, 0x1

    return v0

    .line 738
    :cond_62
    const/4 v1, 0x1

    .line 741
    .end local v5    # "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v6    # "d":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v8    # "c":I
    :cond_63
    :goto_63
    goto :goto_10

    .line 743
    .end local v1    # "retrying":Z
    .end local v2    # "z":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    :cond_64
    :goto_64
    return v0
.end method

.method private greylist-max-o buildFromSorted(Ljava/util/SortedMap;)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "TK;+TV;>;)V"
        }
    .end annotation

    .line 1147
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    move-object/from16 v0, p0

    if-eqz p1, :cond_b2

    .line 1149
    nop

    .line 1150
    invoke-interface/range {p1 .. p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1160
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    const/16 v2, 0x40

    new-array v2, v2, [Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 1161
    .local v2, "preds":[Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "[Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    new-instance v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v4}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    .line 1162
    .local v3, "bp":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    new-instance v5, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    invoke-direct {v5, v3, v4, v4}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)V

    const/4 v6, 0x0

    aput-object v5, v2, v6

    .line 1163
    .local v5, "h":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    const-wide/16 v6, 0x0

    .line 1165
    .local v6, "count":J
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_a0

    .line 1166
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1167
    .local v8, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    .line 1168
    .local v11, "k":Ljava/lang/Object;, "TK;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    .line 1169
    .local v12, "v":Ljava/lang/Object;, "TV;"
    if-eqz v11, :cond_9a

    if-eqz v12, :cond_9a

    .line 1171
    new-instance v13, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    invoke-direct {v13, v11, v12, v4}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    .line 1172
    .local v13, "z":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iput-object v13, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v3, v13

    .line 1173
    const-wide/16 v14, 0x1

    add-long v16, v6, v14

    move-wide/from16 v6, v16

    const-wide/16 v18, 0x3

    and-long v16, v16, v18

    cmp-long v16, v16, v9

    if-nez v16, :cond_98

    .line 1174
    const/16 v16, 0x2

    ushr-long v16, v6, v16

    .line 1175
    .local v16, "m":J
    const/16 v18, 0x0

    .line 1176
    .local v18, "i":I
    const/16 v19, 0x0

    move-wide/from16 v24, v9

    move-object/from16 v9, v19

    move-wide/from16 v19, v24

    .line 1178
    .local v9, "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_5f
    new-instance v10, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    invoke-direct {v10, v13, v9, v4}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)V

    move-object v9, v10

    .line 1179
    aget-object v10, v2, v18

    move-object/from16 v21, v10

    .local v21, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-nez v10, :cond_79

    .line 1180
    new-instance v10, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    iget-object v4, v5, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    invoke-direct {v10, v4, v5, v9}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)V

    move-object v4, v10

    .end local v5    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local v4, "h":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    aput-object v10, v2, v18

    move-object v5, v4

    move-object/from16 v10, v21

    goto :goto_7f

    .line 1182
    .end local v4    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v5    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_79
    move-object/from16 v10, v21

    .end local v21    # "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local v10, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iput-object v9, v10, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    aput-object v9, v2, v18

    .line 1183
    :goto_7f
    add-int/lit8 v4, v18, 0x1

    move-wide/from16 v22, v14

    .end local v18    # "i":I
    .local v4, "i":I
    array-length v14, v2

    if-ge v4, v14, :cond_98

    const/4 v14, 0x1

    ushr-long v14, v16, v14

    move-wide/from16 v16, v14

    and-long v14, v14, v22

    cmp-long v14, v14, v19

    if-nez v14, :cond_92

    goto :goto_98

    :cond_92
    move/from16 v18, v4

    move-wide/from16 v14, v22

    const/4 v4, 0x0

    goto :goto_5f

    .line 1185
    .end local v4    # "i":I
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    .end local v9    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v10    # "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v11    # "k":Ljava/lang/Object;, "TK;"
    .end local v12    # "v":Ljava/lang/Object;, "TV;"
    .end local v13    # "z":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v16    # "m":J
    :cond_98
    :goto_98
    const/4 v4, 0x0

    goto :goto_21

    .line 1170
    .restart local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    .restart local v11    # "k":Ljava/lang/Object;, "TK;"
    .restart local v12    # "v":Ljava/lang/Object;, "TV;"
    :cond_9a
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 1186
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    .end local v11    # "k":Ljava/lang/Object;, "TK;"
    .end local v12    # "v":Ljava/lang/Object;, "TV;"
    :cond_a0
    move-wide/from16 v19, v9

    cmp-long v4, v6, v19

    if-eqz v4, :cond_b1

    .line 1187
    invoke-static {}, Ljava/lang/invoke/VarHandle;->releaseFence()V

    .line 1188
    invoke-direct {v0, v6, v7}, Ljava/util/concurrent/ConcurrentSkipListMap;->addCount(J)V

    .line 1189
    iput-object v5, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 1190
    invoke-static {}, Ljava/lang/invoke/VarHandle;->fullFence()V

    .line 1192
    :cond_b1
    return-void

    .line 1148
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    .end local v2    # "preds":[Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "[Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v3    # "bp":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v5    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v6    # "count":J
    :cond_b2
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
.end method

.method static greylist-max-o cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p0, "c"    # Ljava/util/Comparator;
    .param p1, "x"    # Ljava/lang/Object;
    .param p2, "y"    # Ljava/lang/Object;

    .line 393
    if-eqz p0, :cond_7

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_e

    :cond_7
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    :goto_e
    return v0
.end method

.method private greylist-max-o doGet(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 539
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-static {}, Ljava/lang/invoke/VarHandle;->acquireFence()V

    .line 540
    if-eqz p1, :cond_62

    .line 542
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 543
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    const/4 v1, 0x0

    .line 544
    .local v1, "result":Ljava/lang/Object;, "TV;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v3, v2

    .local v3, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v2, :cond_61

    .line 546
    :goto_d
    iget-object v2, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v4, v2

    .local v4, "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v2, :cond_39

    .line 548
    iget-object v2, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v5, v2

    .local v5, "p":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v2, :cond_30

    iget-object v2, v5, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    move-object v6, v2

    .local v6, "k":Ljava/lang/Object;, "TK;"
    if-eqz v2, :cond_30

    iget-object v2, v5, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    move-object v7, v2

    .local v7, "v":Ljava/lang/Object;, "TV;"
    if-nez v2, :cond_22

    goto :goto_30

    .line 551
    :cond_22
    invoke-static {v0, p1, v6}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    move v8, v2

    .local v8, "c":I
    if-lez v2, :cond_2c

    .line 552
    move-object v2, v4

    move-object v3, v2

    .end local v3    # "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local v2, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    goto :goto_38

    .line 553
    .end local v2    # "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v3    # "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_2c
    if-nez v8, :cond_39

    .line 554
    move-object v1, v7

    .line 555
    goto :goto_61

    .line 550
    .end local v6    # "k":Ljava/lang/Object;, "TK;"
    .end local v7    # "v":Ljava/lang/Object;, "TV;"
    .end local v8    # "c":I
    :cond_30
    :goto_30
    sget-object v2, Ljava/util/concurrent/ConcurrentSkipListMap;->RIGHT:Ljava/lang/invoke/VarHandle;

    iget-object v6, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    invoke-polymorphic {v2, v3, v4, v6}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    .line 559
    .end local v5    # "p":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_38
    goto :goto_d

    .line 560
    :cond_39
    iget-object v2, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v5, v2

    .local v5, "d":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v2, :cond_40

    .line 561
    move-object v3, v5

    goto :goto_d

    .line 564
    :cond_40
    iget-object v2, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v6, v2

    .local v6, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v2, :cond_61

    .line 565
    :goto_45
    iget-object v2, v6, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v7, v2

    .local v7, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v2, :cond_61

    .line 567
    iget-object v2, v7, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 568
    .local v2, "k":Ljava/lang/Object;, "TK;"
    iget-object v8, v7, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    move-object v9, v8

    .local v9, "v":Ljava/lang/Object;, "TV;"
    if-eqz v8, :cond_5f

    if-eqz v2, :cond_5f

    .line 569
    invoke-static {v0, p1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    move v10, v8

    .local v10, "c":I
    if-lez v8, :cond_5b

    goto :goto_5f

    .line 572
    :cond_5b
    if-nez v10, :cond_61

    .line 573
    move-object v1, v9

    goto :goto_61

    .line 570
    .end local v10    # "c":I
    :cond_5f
    :goto_5f
    move-object v6, v7

    .line 576
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    .end local v9    # "v":Ljava/lang/Object;, "TV;"
    goto :goto_45

    .line 582
    .end local v4    # "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v5    # "d":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v6    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v7    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_61
    :goto_61
    return-object v1

    .line 541
    .end local v0    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .end local v1    # "result":Ljava/lang/Object;, "TV;"
    .end local v3    # "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_62
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private greylist-max-o doPut(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 21
    .param p3, "onlyIfAbsent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;Z)TV;"
        }
    .end annotation

    .line 597
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v1, :cond_11d

    .line 599
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 602
    .local v3, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :goto_a
    invoke-static {}, Ljava/lang/invoke/VarHandle;->acquireFence()V

    .line 603
    const/4 v4, 0x0

    .line 604
    .local v4, "levels":I
    iget-object v5, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v6, v5

    .local v6, "h":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    const/4 v7, 0x0

    if-nez v5, :cond_2c

    .line 605
    new-instance v5, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    invoke-direct {v5, v7, v7, v7}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    .line 606
    .local v5, "base":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    new-instance v8, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    invoke-direct {v8, v5, v7, v7}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)V

    move-object v6, v8

    .line 607
    sget-object v8, Ljava/util/concurrent/ConcurrentSkipListMap;->HEAD:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v8, v0, v7, v6}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Void;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    move-result v8

    if-eqz v8, :cond_2a

    move-object v8, v5

    goto :goto_2b

    :cond_2a
    move-object v8, v7

    .line 608
    .end local v5    # "base":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .local v8, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_2b
    goto :goto_5e

    .line 610
    .end local v8    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_2c
    move-object v5, v6

    .line 611
    .local v5, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_2d
    iget-object v8, v5, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v9, v8

    .local v9, "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v8, :cond_52

    .line 613
    iget-object v8, v9, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v10, v8

    .local v10, "p":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v8, :cond_49

    iget-object v8, v10, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    move-object v11, v8

    .local v11, "k":Ljava/lang/Object;, "TK;"
    if-eqz v8, :cond_49

    iget-object v8, v10, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    if-nez v8, :cond_41

    goto :goto_49

    .line 616
    :cond_41
    invoke-static {v3, v1, v11}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    if-lez v8, :cond_52

    .line 617
    move-object v5, v9

    goto :goto_51

    .line 615
    .end local v11    # "k":Ljava/lang/Object;, "TK;"
    :cond_49
    :goto_49
    sget-object v8, Ljava/util/concurrent/ConcurrentSkipListMap;->RIGHT:Ljava/lang/invoke/VarHandle;

    iget-object v11, v9, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    invoke-polymorphic {v8, v5, v9, v11}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    .line 620
    .end local v10    # "p":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_51
    goto :goto_2d

    .line 621
    :cond_52
    iget-object v8, v5, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v10, v8

    .local v10, "d":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v8, :cond_5b

    .line 622
    add-int/lit8 v4, v4, 0x1

    .line 623
    move-object v5, v10

    goto :goto_2d

    .line 626
    :cond_5b
    iget-object v8, v5, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 627
    .restart local v8    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    nop

    .line 631
    .end local v5    # "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v9    # "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v10    # "d":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_5e
    if-eqz v8, :cond_119

    .line 632
    const/4 v5, 0x0

    .line 635
    .local v5, "z":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_61
    iget-object v9, v8, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v10, v9

    .local v10, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v9, :cond_6f

    .line 636
    iget-object v9, v8, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    if-nez v9, :cond_6d

    .line 637
    invoke-static {v3, v1, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 638
    :cond_6d
    const/4 v9, -0x1

    .local v9, "c":I
    goto :goto_98

    .line 640
    .end local v9    # "c":I
    :cond_6f
    iget-object v9, v10, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    move-object v11, v9

    .restart local v11    # "k":Ljava/lang/Object;, "TK;"
    if-nez v9, :cond_75

    .line 641
    goto :goto_ab

    .line 642
    :cond_75
    iget-object v9, v10, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    move-object v12, v9

    .local v12, "v":Ljava/lang/Object;, "TV;"
    if-nez v9, :cond_7f

    .line 643
    invoke-static {v8, v10}, Ljava/util/concurrent/ConcurrentSkipListMap;->unlinkNode(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    .line 644
    const/4 v9, 0x1

    .restart local v9    # "c":I
    goto :goto_98

    .line 646
    .end local v9    # "c":I
    :cond_7f
    invoke-static {v3, v1, v11}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    move v13, v9

    .local v13, "c":I
    if-lez v9, :cond_89

    .line 647
    move-object v8, v10

    move v9, v13

    goto :goto_98

    .line 648
    :cond_89
    if-nez v13, :cond_97

    if-nez p3, :cond_96

    sget-object v9, Ljava/util/concurrent/ConcurrentSkipListMap;->VAL:Ljava/lang/invoke/VarHandle;

    .line 649
    invoke-polymorphic {v9, v10, v12, v2}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_97

    .line 650
    :cond_96
    return-object v12

    .line 652
    .end local v11    # "k":Ljava/lang/Object;, "TK;"
    .end local v12    # "v":Ljava/lang/Object;, "TV;"
    :cond_97
    move v9, v13

    .end local v13    # "c":I
    .restart local v9    # "c":I
    :goto_98
    if-gez v9, :cond_111

    sget-object v11, Ljava/util/concurrent/ConcurrentSkipListMap;->NEXT:Ljava/lang/invoke/VarHandle;

    new-instance v12, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    invoke-direct {v12, v1, v2, v10}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    move-object v13, v12

    .line 653
    .local v13, "p":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    invoke-polymorphic {v11, v8, v10, v12}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v11

    if-eqz v11, :cond_10e

    .line 655
    move-object v5, v13

    .line 656
    nop

    .line 660
    .end local v9    # "c":I
    .end local v10    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v13    # "p":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_ab
    if-eqz v5, :cond_119

    .line 661
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->nextSecondarySeed()I

    move-result v9

    .line 662
    .local v9, "lr":I
    and-int/lit8 v10, v9, 0x3

    if-nez v10, :cond_106

    .line 663
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->nextSecondarySeed()I

    move-result v10

    .line 664
    .local v10, "hr":I
    int-to-long v11, v10

    const/16 v13, 0x20

    shl-long/2addr v11, v13

    int-to-long v13, v9

    const-wide v15, 0xffffffffL

    and-long/2addr v13, v15

    or-long/2addr v11, v13

    .line 665
    .local v11, "rnd":J
    move v13, v4

    .line 666
    .local v13, "skips":I
    const/4 v14, 0x0

    .line 668
    .local v14, "x":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_c7
    new-instance v15, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    invoke-direct {v15, v5, v14, v7}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)V

    move-object v14, v15

    .line 669
    const-wide/16 v15, 0x0

    cmp-long v15, v11, v15

    if-gez v15, :cond_db

    add-int/lit8 v13, v13, -0x1

    if-gez v13, :cond_d8

    .line 670
    goto :goto_db

    .line 672
    :cond_d8
    const/4 v15, 0x1

    shl-long/2addr v11, v15

    goto :goto_c7

    .line 674
    :cond_db
    :goto_db
    invoke-static {v6, v13, v14, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->addIndices(Ljava/util/concurrent/ConcurrentSkipListMap$Index;ILjava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/Comparator;)Z

    move-result v15

    if-eqz v15, :cond_fc

    if-gez v13, :cond_fc

    iget-object v15, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-ne v15, v6, :cond_fc

    .line 676
    new-instance v15, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    invoke-direct {v15, v5, v14, v7}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)V

    .line 677
    .local v15, "hx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    move-object/from16 v16, v7

    new-instance v7, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    iget-object v2, v6, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    invoke-direct {v7, v2, v6, v15}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)V

    .line 678
    .local v7, "nh":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    sget-object v2, Ljava/util/concurrent/ConcurrentSkipListMap;->HEAD:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v2, v0, v6, v7}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    goto :goto_fe

    .line 674
    .end local v7    # "nh":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v15    # "hx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_fc
    move-object/from16 v16, v7

    .line 680
    :goto_fe
    iget-object v2, v5, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    if-nez v2, :cond_108

    .line 681
    invoke-direct {v0, v1, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_108

    .line 662
    .end local v10    # "hr":I
    .end local v11    # "rnd":J
    .end local v13    # "skips":I
    .end local v14    # "x":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_106
    move-object/from16 v16, v7

    .line 683
    :cond_108
    :goto_108
    const-wide/16 v10, 0x1

    invoke-direct {v0, v10, v11}, Ljava/util/concurrent/ConcurrentSkipListMap;->addCount(J)V

    .line 684
    return-object v16

    .line 653
    .local v9, "c":I
    .local v10, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .local v13, "p":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_10e
    move-object/from16 v16, v7

    goto :goto_113

    .line 652
    .end local v13    # "p":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_111
    move-object/from16 v16, v7

    .line 658
    .end local v9    # "c":I
    .end local v10    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_113
    move-object/from16 v2, p2

    move-object/from16 v7, v16

    goto/16 :goto_61

    .line 687
    .end local v4    # "levels":I
    .end local v5    # "z":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v6    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v8    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_119
    move-object/from16 v2, p2

    goto/16 :goto_a

    .line 598
    .end local v3    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :cond_11d
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2
.end method

.method private blacklist doRemoveFirstEntry()Ljava/util/AbstractMap$SimpleImmutableEntry;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/AbstractMap$SimpleImmutableEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 865
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->baseHead()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_36

    .line 866
    :cond_8
    :goto_8
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v3, v0

    .local v3, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v0, :cond_36

    .line 867
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    move-object v4, v0

    .local v4, "v":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_1b

    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap;->VAL:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, v3, v4, v2}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;Ljava/lang/Void;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 868
    :cond_1b
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 869
    .local v0, "k":Ljava/lang/Object;, "TK;"
    invoke-static {v1, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->unlinkNode(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    .line 870
    if-eqz v4, :cond_35

    .line 871
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->tryReduceLevel()V

    .line 872
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    invoke-direct {p0, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 873
    const-wide/16 v5, -0x1

    invoke-direct {p0, v5, v6}, Ljava/util/concurrent/ConcurrentSkipListMap;->addCount(J)V

    .line 874
    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v2, v0, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 876
    .end local v0    # "k":Ljava/lang/Object;, "TK;"
    :cond_35
    goto :goto_8

    .line 879
    .end local v3    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v4    # "v":Ljava/lang/Object;, "TV;"
    :cond_36
    return-object v2
.end method

.method private greylist-max-o doRemoveLastEntry()Ljava/util/Map$Entry;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 952
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    nop

    :goto_1
    invoke-static {}, Ljava/lang/invoke/VarHandle;->acquireFence()V

    .line 953
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v1, v0

    .local v1, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    const/4 v2, 0x0

    if-nez v0, :cond_b

    .line 954
    goto :goto_3f

    .line 957
    :cond_b
    :goto_b
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v3, v0

    .local v3, "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v0, :cond_29

    .line 958
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v4, v0

    .local v4, "p":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v0, :cond_20

    iget-object v0, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    if-nez v0, :cond_1a

    goto :goto_20

    .line 960
    :cond_1a
    iget-object v0, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-eqz v0, :cond_29

    .line 961
    move-object v1, v3

    goto :goto_b

    .line 959
    :cond_20
    :goto_20
    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap;->RIGHT:Ljava/lang/invoke/VarHandle;

    iget-object v5, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    invoke-polymorphic {v0, v1, v3, v5}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    goto :goto_b

    .line 965
    .end local v4    # "p":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_29
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v4, v0

    .local v4, "d":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v0, :cond_30

    .line 966
    move-object v1, v4

    .line 971
    .end local v3    # "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v4    # "d":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    goto :goto_b

    .line 968
    .restart local v3    # "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v4    # "d":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_30
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 969
    .local v0, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    nop

    .line 972
    .end local v3    # "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v4    # "d":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v0, :cond_75

    .line 975
    :goto_35
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v4, v3

    .local v4, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v3, :cond_40

    .line 976
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    if-nez v3, :cond_75

    .line 977
    nop

    .line 997
    .end local v0    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v1    # "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v4    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_3f
    return-object v2

    .line 981
    .restart local v0    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .restart local v1    # "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v4    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_40
    iget-object v3, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    move-object v5, v3

    .local v5, "k":Ljava/lang/Object;, "TK;"
    if-nez v3, :cond_46

    .line 982
    goto :goto_75

    .line 983
    :cond_46
    iget-object v3, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    move-object v6, v3

    .local v6, "v":Ljava/lang/Object;, "TV;"
    if-nez v3, :cond_4f

    .line 984
    invoke-static {v0, v4}, Ljava/util/concurrent/ConcurrentSkipListMap;->unlinkNode(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_74

    .line 985
    :cond_4f
    iget-object v3, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-eqz v3, :cond_55

    .line 986
    move-object v0, v4

    goto :goto_74

    .line 987
    :cond_55
    sget-object v3, Ljava/util/concurrent/ConcurrentSkipListMap;->VAL:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v3, v4, v6, v2}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;Ljava/lang/Void;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 988
    invoke-static {v0, v4}, Ljava/util/concurrent/ConcurrentSkipListMap;->unlinkNode(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    .line 989
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->tryReduceLevel()V

    .line 990
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    invoke-direct {p0, v5, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 991
    const-wide/16 v2, -0x1

    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->addCount(J)V

    .line 992
    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v2, v5, v6}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 994
    .end local v4    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v5    # "k":Ljava/lang/Object;, "TK;"
    .end local v6    # "v":Ljava/lang/Object;, "TV;"
    :cond_74
    :goto_74
    goto :goto_35

    .line 996
    .end local v0    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v1    # "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_75
    :goto_75
    goto :goto_1
.end method

.method private greylist-max-o findNode(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .registers 9
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 505
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    if-eqz p1, :cond_2f

    .line 507
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 509
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :goto_4
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    move-object v2, v1

    .local v2, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v1, :cond_2d

    .line 512
    :goto_b
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v3, v1

    .local v3, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v1, :cond_11

    .line 513
    goto :goto_2d

    .line 514
    :cond_11
    iget-object v1, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    move-object v4, v1

    .local v4, "k":Ljava/lang/Object;, "TK;"
    if-nez v1, :cond_17

    .line 515
    goto :goto_4

    .line 516
    :cond_17
    iget-object v1, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    move-object v5, v1

    .local v5, "v":Ljava/lang/Object;, "TV;"
    if-nez v1, :cond_20

    .line 517
    invoke-static {v2, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->unlinkNode(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_29

    .line 518
    :cond_20
    invoke-static {v0, p1, v4}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    move v6, v1

    .local v6, "c":I
    if-lez v1, :cond_2a

    .line 519
    move-object v1, v3

    move-object v2, v1

    .line 524
    .end local v3    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v4    # "k":Ljava/lang/Object;, "TK;"
    .end local v5    # "v":Ljava/lang/Object;, "TV;"
    .end local v6    # "c":I
    :goto_29
    goto :goto_b

    .line 520
    .restart local v3    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .restart local v4    # "k":Ljava/lang/Object;, "TK;"
    .restart local v5    # "v":Ljava/lang/Object;, "TV;"
    .restart local v6    # "c":I
    :cond_2a
    if-nez v6, :cond_2d

    .line 521
    return-object v3

    .line 526
    .end local v3    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v4    # "k":Ljava/lang/Object;, "TK;"
    .end local v5    # "v":Ljava/lang/Object;, "TV;"
    .end local v6    # "c":I
    :cond_2d
    :goto_2d
    const/4 v1, 0x0

    return-object v1

    .line 506
    .end local v0    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .end local v2    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_2f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private greylist-max-o findPredecessor(Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .registers 8
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 467
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p2, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-static {}, Ljava/lang/invoke/VarHandle;->acquireFence()V

    .line 468
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v1, v0

    .local v1, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v0, :cond_3b

    if-nez p1, :cond_b

    goto :goto_3b

    .line 472
    :cond_b
    :goto_b
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v2, v0

    .local v2, "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v0, :cond_31

    .line 474
    iget-object v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v3, v0

    .local v3, "p":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v0, :cond_28

    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    move-object v4, v0

    .local v4, "k":Ljava/lang/Object;, "TK;"
    if-eqz v0, :cond_28

    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    if-nez v0, :cond_1f

    goto :goto_28

    .line 477
    :cond_1f
    invoke-static {p2, p1, v4}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_31

    .line 478
    move-object v0, v2

    move-object v1, v0

    .end local v1    # "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local v0, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    goto :goto_30

    .line 476
    .end local v0    # "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v4    # "k":Ljava/lang/Object;, "TK;"
    .restart local v1    # "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_28
    :goto_28
    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap;->RIGHT:Ljava/lang/invoke/VarHandle;

    iget-object v4, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    invoke-polymorphic {v0, v1, v2, v4}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    .line 481
    .end local v3    # "p":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_30
    goto :goto_b

    .line 482
    :cond_31
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v3, v0

    .local v3, "d":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v0, :cond_38

    .line 483
    move-object v1, v3

    goto :goto_b

    .line 485
    :cond_38
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    return-object v0

    .line 469
    .end local v2    # "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v3    # "d":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_3b
    :goto_3b
    const/4 v0, 0x0

    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 28
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1237
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1241
    const/16 v1, 0x40

    new-array v1, v1, [Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 1242
    .local v1, "preds":[Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "[Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    new-instance v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    .line 1243
    .local v2, "bp":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    new-instance v4, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    invoke-direct {v4, v2, v3, v3}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)V

    const/4 v5, 0x0

    aput-object v4, v1, v5

    .line 1244
    .local v4, "h":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iget-object v5, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 1245
    .local v5, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    const/4 v6, 0x0

    .line 1246
    .local v6, "prevKey":Ljava/lang/Object;, "TK;"
    const-wide/16 v7, 0x0

    .line 1249
    .local v7, "count":J
    :goto_1c
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v9

    .line 1250
    .local v9, "k":Ljava/lang/Object;, "TK;"
    const-wide/16 v10, 0x0

    if-nez v9, :cond_35

    .line 1251
    nop

    .line 1273
    .end local v9    # "k":Ljava/lang/Object;, "TK;"
    cmp-long v3, v7, v10

    if-eqz v3, :cond_34

    .line 1274
    invoke-static {}, Ljava/lang/invoke/VarHandle;->releaseFence()V

    .line 1275
    invoke-direct {v0, v7, v8}, Ljava/util/concurrent/ConcurrentSkipListMap;->addCount(J)V

    .line 1276
    iput-object v4, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 1277
    invoke-static {}, Ljava/lang/invoke/VarHandle;->fullFence()V

    .line 1279
    :cond_34
    return-void

    .line 1252
    .restart local v9    # "k":Ljava/lang/Object;, "TK;"
    :cond_35
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v12

    .line 1253
    .local v12, "v":Ljava/lang/Object;, "TV;"
    if-eqz v12, :cond_ad

    .line 1255
    if-eqz v6, :cond_4c

    invoke-static {v5, v6, v9}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v13

    if-gtz v13, :cond_44

    goto :goto_4c

    .line 1256
    :cond_44
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v10, "out of order"

    invoke-direct {v3, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1257
    :cond_4c
    :goto_4c
    move-object v6, v9

    .line 1258
    new-instance v13, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    invoke-direct {v13, v9, v12, v3}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    .line 1259
    .local v13, "z":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iput-object v13, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v2, v13

    .line 1260
    const-wide/16 v14, 0x1

    add-long v16, v7, v14

    move-wide/from16 v7, v16

    const-wide/16 v18, 0x3

    and-long v16, v16, v18

    cmp-long v16, v16, v10

    if-nez v16, :cond_aa

    .line 1261
    const/16 v16, 0x2

    ushr-long v16, v7, v16

    .line 1262
    .local v16, "m":J
    const/16 v18, 0x0

    .line 1263
    .local v18, "i":I
    const/16 v19, 0x0

    move-wide/from16 v24, v10

    move-object/from16 v10, v19

    move-wide/from16 v19, v24

    .line 1265
    .local v10, "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_71
    new-instance v11, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    invoke-direct {v11, v13, v10, v3}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)V

    move-object v10, v11

    .line 1266
    aget-object v11, v1, v18

    move-object/from16 v21, v11

    .local v21, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-nez v11, :cond_8b

    .line 1267
    new-instance v11, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    iget-object v3, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    invoke-direct {v11, v3, v4, v10}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)V

    move-object v3, v11

    .end local v4    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local v3, "h":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    aput-object v11, v1, v18

    move-object v4, v3

    move-object/from16 v11, v21

    goto :goto_91

    .line 1269
    .end local v3    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v4    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_8b
    move-object/from16 v11, v21

    .end local v21    # "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local v11, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iput-object v10, v11, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    aput-object v10, v1, v18

    .line 1270
    :goto_91
    add-int/lit8 v3, v18, 0x1

    move-wide/from16 v22, v14

    .end local v18    # "i":I
    .local v3, "i":I
    array-length v14, v1

    if-ge v3, v14, :cond_aa

    const/4 v14, 0x1

    ushr-long v14, v16, v14

    move-wide/from16 v16, v14

    and-long v14, v14, v22

    cmp-long v14, v14, v19

    if-nez v14, :cond_a4

    goto :goto_aa

    :cond_a4
    move/from16 v18, v3

    move-wide/from16 v14, v22

    const/4 v3, 0x0

    goto :goto_71

    .line 1272
    .end local v3    # "i":I
    .end local v9    # "k":Ljava/lang/Object;, "TK;"
    .end local v10    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v11    # "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v12    # "v":Ljava/lang/Object;, "TV;"
    .end local v13    # "z":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v16    # "m":J
    :cond_aa
    :goto_aa
    const/4 v3, 0x0

    goto/16 :goto_1c

    .line 1254
    .restart local v9    # "k":Ljava/lang/Object;, "TK;"
    .restart local v12    # "v":Ljava/lang/Object;, "TV;"
    :cond_ad
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3
.end method

.method static final greylist-max-o toList(Ljava/util/Collection;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 2187
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2188
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2189
    .local v2, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 2190
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_17
    return-object v0
.end method

.method private greylist-max-o tryReduceLevel()V
    .registers 5

    .line 816
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v1, v0

    .local v1, "h":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v0, :cond_2e

    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-nez v0, :cond_2e

    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v2, v0

    .local v2, "d":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v0, :cond_2e

    iget-object v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-nez v0, :cond_2e

    iget-object v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v3, v0

    .local v3, "e":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v0, :cond_2e

    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-nez v0, :cond_2e

    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap;->HEAD:Ljava/lang/invoke/VarHandle;

    .line 819
    invoke-polymorphic {v0, p0, v1, v2}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-eqz v0, :cond_2e

    .line 821
    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap;->HEAD:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, v2, v1}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    .line 822
    .end local v2    # "d":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v3    # "e":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_2e
    return-void
.end method

.method static blacklist unlinkNode(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node<",
            "TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 415
    .local p0, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .local p1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz p0, :cond_27

    if-eqz p1, :cond_27

    .line 418
    :cond_4
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v1, v0

    .local v1, "f":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v0, :cond_10

    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    if-nez v0, :cond_10

    .line 419
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 420
    .local v0, "p":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    goto :goto_21

    .line 422
    .end local v0    # "p":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_10
    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap;->NEXT:Ljava/lang/invoke/VarHandle;

    new-instance v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    invoke-polymorphic {v0, p1, v1, v2}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 424
    move-object v0, v1

    .line 425
    .restart local v0    # "p":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    nop

    .line 428
    :goto_21
    sget-object v2, Ljava/util/concurrent/ConcurrentSkipListMap;->NEXT:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v2, p0, p1, v0}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    .line 430
    .end local v0    # "p":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v1    # "f":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_27
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 6
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1210
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1214
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->baseHead()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v0, :cond_1e

    .line 1215
    :goto_a
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v2, v0

    .local v2, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v0, :cond_1e

    .line 1216
    iget-object v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    move-object v3, v0

    .local v3, "v":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_1c

    .line 1217
    iget-object v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1218
    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1220
    :cond_1c
    move-object v1, v2

    goto :goto_a

    .line 1223
    .end local v2    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    :cond_1e
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1224
    return-void
.end method


# virtual methods
.method final blacklist baseHead()Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 401
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-static {}, Ljava/lang/invoke/VarHandle;->acquireFence()V

    .line 402
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v1, v0

    .local v1, "h":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_c

    :cond_a
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    :goto_c
    return-object v0
.end method

.method public whitelist test-api ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2023
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNearEntry(Ljava/lang/Object;ILjava/util/Comparator;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 2031
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;ILjava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 2032
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_b

    const/4 v1, 0x0

    goto :goto_d

    :cond_b
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    :goto_d
    return-object v1
.end method

.method public whitelist test-api clear()V
    .registers 13

    .line 1413
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-static {}, Ljava/lang/invoke/VarHandle;->acquireFence()V

    .line 1414
    :goto_3
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v1, v0

    .local v1, "h":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v0, :cond_4f

    .line 1415
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v2, v0

    .local v2, "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    const/4 v3, 0x0

    if-eqz v0, :cond_15

    .line 1416
    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap;->RIGHT:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, v1, v2, v3}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/lang/Void;)Z

    goto :goto_3

    .line 1417
    :cond_15
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v4, v0

    .local v4, "d":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v0, :cond_21

    .line 1418
    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap;->HEAD:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, v1, v4}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    goto :goto_3

    .line 1420
    :cond_21
    const-wide/16 v5, 0x0

    .line 1421
    .local v5, "count":J
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v7, v0

    .local v7, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v0, :cond_45

    .line 1423
    :cond_28
    :goto_28
    iget-object v0, v7, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v8, v0

    .local v8, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v0, :cond_45

    .line 1424
    iget-object v0, v8, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    move-object v9, v0

    .local v9, "v":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_3f

    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap;->VAL:Ljava/lang/invoke/VarHandle;

    .line 1425
    invoke-polymorphic {v0, v8, v9, v3}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;Ljava/lang/Void;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1426
    const-wide/16 v10, 0x1

    sub-long/2addr v5, v10

    .line 1427
    const/4 v9, 0x0

    .line 1429
    :cond_3f
    if-nez v9, :cond_28

    .line 1430
    invoke-static {v7, v8}, Ljava/util/concurrent/ConcurrentSkipListMap;->unlinkNode(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_28

    .line 1433
    .end local v8    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v9    # "v":Ljava/lang/Object;, "TV;"
    :cond_45
    const-wide/16 v8, 0x0

    cmp-long v0, v5, v8

    if-eqz v0, :cond_4f

    .line 1434
    invoke-direct {p0, v5, v6}, Ljava/util/concurrent/ConcurrentSkipListMap;->addCount(J)V

    .line 1437
    .end local v5    # "count":J
    goto :goto_3

    .line 1439
    .end local v2    # "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v4    # "d":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v7    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_4f
    return-void
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 112
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->clone()Ljava/util/concurrent/ConcurrentSkipListMap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api clone()Ljava/util/concurrent/ConcurrentSkipListMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1127
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    nop

    .line 1128
    :try_start_1
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 1129
    .local v0, "clone":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v1, 0x0

    iput-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    .line 1130
    iput-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;

    .line 1131
    iput-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->values:Ljava/util/concurrent/ConcurrentSkipListMap$Values;

    .line 1132
    iput-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->descendingMap:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    .line 1133
    iput-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->adder:Ljava/util/concurrent/atomic/LongAdder;

    .line 1134
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->buildFromSorted(Ljava/util/SortedMap;)V
    :try_end_15
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_15} :catch_16

    .line 1135
    return-object v0

    .line 1136
    .end local v0    # "clone":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    :catch_16
    move-exception v0

    .line 1137
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public whitelist test-api comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 1850
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public whitelist test-api compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1514
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    if-eqz p1, :cond_3b

    if-eqz p2, :cond_3b

    .line 1518
    :goto_4
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    const/4 v2, 0x0

    if-nez v0, :cond_1c

    .line 1519
    invoke-interface {p2, p1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    .local v3, "r":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_14

    .line 1520
    goto :goto_39

    .line 1521
    :cond_14
    const/4 v0, 0x1

    invoke-direct {p0, p1, v3, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->doPut(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3a

    .line 1522
    return-object v3

    .line 1524
    .end local v3    # "r":Ljava/lang/Object;, "TV;"
    :cond_1c
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    move-object v3, v0

    .local v3, "v":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_3a

    .line 1525
    invoke-interface {p2, p1, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    .local v4, "r":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_32

    .line 1526
    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap;->VAL:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, v1, v3, v4}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1527
    return-object v4

    .line 1529
    :cond_32
    invoke-virtual {p0, p1, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 1530
    nop

    .line 1533
    .end local v1    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    .end local v4    # "r":Ljava/lang/Object;, "TV;"
    :goto_39
    return-object v2

    .line 1532
    :cond_3a
    goto :goto_4

    .line 1515
    :cond_3b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function<",
            "-TK;+TV;>;)TV;"
        }
    .end annotation

    .line 1458
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    if-eqz p1, :cond_1f

    if-eqz p2, :cond_1f

    .line 1461
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->doGet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_1e

    .line 1462
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    .local v2, "r":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_1e

    .line 1463
    const/4 v0, 0x1

    invoke-direct {p0, p1, v2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->doPut(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    .local v3, "p":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_1c

    move-object v0, v2

    goto :goto_1d

    :cond_1c
    move-object v0, v3

    :goto_1d
    move-object v1, v0

    .line 1464
    .end local v2    # "r":Ljava/lang/Object;, "TV;"
    .end local v3    # "p":Ljava/lang/Object;, "TV;"
    :cond_1e
    return-object v1

    .line 1459
    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    :cond_1f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1482
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    if-eqz p1, :cond_2a

    if-eqz p2, :cond_2a

    .line 1485
    :cond_4
    :goto_4
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v0, :cond_28

    .line 1486
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    move-object v2, v0

    .local v2, "v":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_4

    .line 1487
    invoke-interface {p2, p1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1488
    .local v0, "r":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_20

    .line 1489
    sget-object v3, Ljava/util/concurrent/ConcurrentSkipListMap;->VAL:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v3, v1, v2, v0}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1490
    return-object v0

    .line 1492
    :cond_20
    invoke-virtual {p0, p1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 1493
    goto :goto_28

    .line 1494
    .end local v0    # "r":Ljava/lang/Object;, "TV;"
    :cond_27
    goto :goto_4

    .line 1496
    .end local v2    # "v":Ljava/lang/Object;, "TV;"
    :cond_28
    :goto_28
    const/4 v0, 0x0

    return-object v0

    .line 1483
    .end local v1    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_2a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 1294
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->doGet(Ljava/lang/Object;)Ljava/lang/Object;

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
    .registers 6
    .param p1, "value"    # Ljava/lang/Object;

    .line 1377
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    if-eqz p1, :cond_1f

    .line 1380
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->baseHead()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v0, :cond_1d

    .line 1381
    :goto_9
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v2, v0

    .local v2, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v0, :cond_1d

    .line 1382
    iget-object v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    move-object v3, v0

    .local v3, "v":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_1b

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1383
    const/4 v0, 0x1

    return v0

    .line 1385
    :cond_1b
    move-object v1, v2

    goto :goto_9

    .line 1388
    .end local v2    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    :cond_1d
    const/4 v0, 0x0

    return v0

    .line 1378
    .end local v1    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_1f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api descendingKeySet()Ljava/util/NavigableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 1691
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api descendingMap()Ljava/util/NavigableMap;
    .registers 2

    .line 112
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentNavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1685
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->descendingMap:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-object v1, v0

    .local v1, "dm":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<TK;TV;>;"
    if-eqz v0, :cond_6

    return-object v1

    .line 1686
    :cond_6
    new-instance v2, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    iput-object v2, v3, Ljava/util/concurrent/ConcurrentSkipListMap;->descendingMap:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    return-object v2
.end method

.method final greylist-max-o doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
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

    .line 759
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    if-eqz p1, :cond_54

    .line 761
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 762
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    const/4 v1, 0x0

    .line 764
    .local v1, "result":Ljava/lang/Object;, "TV;"
    :goto_5
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v2

    move-object v3, v2

    .local v3, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v2, :cond_49

    if-nez v1, :cond_49

    .line 768
    :goto_e
    iget-object v2, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v4, v2

    .local v4, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v2, :cond_14

    .line 769
    goto :goto_49

    .line 770
    :cond_14
    iget-object v2, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    move-object v5, v2

    .local v5, "k":Ljava/lang/Object;, "TK;"
    if-nez v2, :cond_1a

    .line 771
    goto :goto_5

    .line 772
    :cond_1a
    iget-object v2, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    move-object v6, v2

    .local v6, "v":Ljava/lang/Object;, "TV;"
    if-nez v2, :cond_23

    .line 773
    invoke-static {v3, v4}, Ljava/util/concurrent/ConcurrentSkipListMap;->unlinkNode(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_48

    .line 774
    :cond_23
    invoke-static {v0, p1, v5}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    move v7, v2

    .local v7, "c":I
    if-lez v2, :cond_2d

    .line 775
    move-object v2, v4

    move-object v3, v2

    .end local v3    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .local v2, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    goto :goto_48

    .line 776
    .end local v2    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .restart local v3    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_2d
    if-gez v7, :cond_30

    .line 777
    goto :goto_49

    .line 778
    :cond_30
    if-eqz p2, :cond_39

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 779
    goto :goto_49

    .line 780
    :cond_39
    sget-object v2, Ljava/util/concurrent/ConcurrentSkipListMap;->VAL:Ljava/lang/invoke/VarHandle;

    const/4 v8, 0x0

    invoke-polymorphic {v2, v4, v6, v8}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;Ljava/lang/Void;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 781
    move-object v1, v6

    .line 782
    invoke-static {v3, v4}, Ljava/util/concurrent/ConcurrentSkipListMap;->unlinkNode(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    .line 783
    goto :goto_5

    .line 785
    .end local v4    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v5    # "k":Ljava/lang/Object;, "TK;"
    .end local v6    # "v":Ljava/lang/Object;, "TV;"
    .end local v7    # "c":I
    :cond_48
    :goto_48
    goto :goto_e

    .line 787
    :cond_49
    :goto_49
    if-eqz v1, :cond_53

    .line 788
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->tryReduceLevel()V

    .line 789
    const-wide/16 v4, -0x1

    invoke-direct {p0, v4, v5}, Ljava/util/concurrent/ConcurrentSkipListMap;->addCount(J)V

    .line 791
    :cond_53
    return-object v1

    .line 760
    .end local v0    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .end local v1    # "result":Ljava/lang/Object;, "TV;"
    .end local v3    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_54
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
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

    .line 1679
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;

    move-object v1, v0

    .local v1, "es":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK;TV;>;"
    if-eqz v0, :cond_6

    return-object v1

    .line 1680
    :cond_6
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;

    return-object v0
.end method

.method final greylist-max-o entrySpliterator()Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3411
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-static {}, Ljava/lang/invoke/VarHandle;->acquireFence()V

    .line 3412
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v3, v0

    .local v3, "h":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-nez v0, :cond_e

    .line 3413
    const/4 v0, 0x0

    .line 3414
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    const-wide/16 v1, 0x0

    move-object v4, v0

    move-wide v6, v1

    .local v1, "est":J
    goto :goto_16

    .line 3417
    .end local v0    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v1    # "est":J
    :cond_e
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3418
    .restart local v0    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->getAdderCount()J

    move-result-wide v1

    move-object v4, v0

    move-wide v6, v1

    .line 3420
    .end local v0    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .local v4, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .local v6, "est":J
    :goto_16
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;-><init>(Ljava/util/Comparator;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;J)V

    return-object v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 15
    .param p1, "o"    # Ljava/lang/Object;

    .line 1709
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 1710
    return v0

    .line 1711
    :cond_4
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1712
    return v2

    .line 1713
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    .line 1715
    .local v1, "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :try_start_d
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 1717
    .local v3, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1718
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<**>;>;"
    instance-of v5, v1, Ljava/util/SortedMap;

    if-eqz v5, :cond_6e

    move-object v5, v1

    check-cast v5, Ljava/util/SortedMap;

    .line 1719
    invoke-interface {v5}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v5

    if-ne v5, v3, :cond_6e

    .line 1721
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->baseHead()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v5

    move-object v6, v5

    .local v6, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v5, :cond_68

    .line 1722
    :goto_2b
    iget-object v5, v6, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v7, v5

    .local v7, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v5, :cond_68

    .line 1724
    iget-object v5, v7, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    move-object v8, v5

    .local v8, "v":Ljava/lang/Object;, "TV;"
    if-eqz v5, :cond_66

    iget-object v5, v7, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    move-object v9, v5

    .local v9, "k":Ljava/lang/Object;, "TK;"
    if-eqz v5, :cond_66

    .line 1725
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_41

    .line 1726
    return v2

    .line 1727
    :cond_41
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1728
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    .line 1729
    .local v10, "mk":Ljava/lang/Object;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11
    :try_end_4f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_4f} :catch_bd
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_4f} :catch_bd

    .line 1730
    .local v11, "mv":Ljava/lang/Object;
    if-eqz v10, :cond_65

    if-nez v11, :cond_54

    goto :goto_65

    .line 1733
    :cond_54
    :try_start_54
    invoke-static {v3, v9, v10}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v12
    :try_end_58
    .catch Ljava/lang/ClassCastException; {:try_start_54 .. :try_end_58} :catch_63
    .catch Ljava/lang/NullPointerException; {:try_start_54 .. :try_end_58} :catch_bd

    if-eqz v12, :cond_5b

    .line 1734
    return v2

    .line 1737
    :cond_5b
    nop

    .line 1738
    :try_start_5c
    invoke-virtual {v11, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_66

    .line 1739
    return v2

    .line 1735
    :catch_63
    move-exception v0

    .line 1736
    .local v0, "cce":Ljava/lang/ClassCastException;
    return v2

    .line 1731
    .end local v0    # "cce":Ljava/lang/ClassCastException;
    :cond_65
    :goto_65
    return v2

    .line 1741
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v9    # "k":Ljava/lang/Object;, "TK;"
    .end local v10    # "mk":Ljava/lang/Object;
    .end local v11    # "mv":Ljava/lang/Object;
    :cond_66
    move-object v6, v7

    .line 1742
    .end local v8    # "v":Ljava/lang/Object;, "TV;"
    goto :goto_2b

    .line 1744
    .end local v7    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_68
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    xor-int/2addr v0, v2

    return v0

    .line 1747
    .end local v6    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_6e
    :goto_6e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_96

    .line 1749
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1750
    .restart local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 1751
    .local v6, "mk":Ljava/lang/Object;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 1752
    .local v7, "mv":Ljava/lang/Object;
    if-eqz v6, :cond_95

    if-eqz v7, :cond_95

    .line 1753
    invoke-virtual {p0, v6}, Ljava/util/concurrent/ConcurrentSkipListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    .local v9, "v":Ljava/lang/Object;, "TV;"
    if-eqz v8, :cond_95

    invoke-virtual {v9, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_94

    goto :goto_95

    .line 1755
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v6    # "mk":Ljava/lang/Object;
    .end local v7    # "mv":Ljava/lang/Object;
    .end local v9    # "v":Ljava/lang/Object;, "TV;"
    :cond_94
    goto :goto_6e

    .line 1754
    .restart local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .restart local v6    # "mk":Ljava/lang/Object;
    .restart local v7    # "mv":Ljava/lang/Object;
    :cond_95
    :goto_95
    return v2

    .line 1757
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v6    # "mk":Ljava/lang/Object;
    .end local v7    # "mv":Ljava/lang/Object;
    :cond_96
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->baseHead()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v5

    move-object v6, v5

    .local v6, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v5, :cond_bc

    .line 1759
    :goto_9d
    iget-object v5, v6, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v7, v5

    .local v7, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v5, :cond_bc

    .line 1760
    iget-object v5, v7, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    move-object v8, v5

    .restart local v8    # "v":Ljava/lang/Object;, "TV;"
    if-eqz v5, :cond_ba

    iget-object v5, v7, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    move-object v9, v5

    .local v9, "k":Ljava/lang/Object;, "TK;"
    if-eqz v5, :cond_ba

    .line 1761
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    .local v10, "mv":Ljava/lang/Object;
    if-eqz v5, :cond_b9

    invoke-virtual {v10, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_b7
    .catch Ljava/lang/ClassCastException; {:try_start_5c .. :try_end_b7} :catch_bd
    .catch Ljava/lang/NullPointerException; {:try_start_5c .. :try_end_b7} :catch_bd

    if-nez v5, :cond_ba

    .line 1762
    :cond_b9
    return v2

    .line 1763
    .end local v9    # "k":Ljava/lang/Object;, "TK;"
    .end local v10    # "mv":Ljava/lang/Object;
    :cond_ba
    move-object v6, v7

    goto :goto_9d

    .line 1766
    .end local v7    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v8    # "v":Ljava/lang/Object;, "TV;"
    :cond_bc
    return v0

    .line 1768
    .end local v3    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<**>;>;"
    .end local v6    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :catch_bd
    move-exception v0

    .line 1769
    .local v0, "unused":Ljava/lang/RuntimeException;
    return v2
.end method

.method final greylist-max-o findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 832
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->baseHead()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v0, :cond_15

    .line 833
    :goto_7
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v2, v0

    .local v2, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v0, :cond_15

    .line 834
    iget-object v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    if-nez v0, :cond_14

    .line 835
    invoke-static {v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->unlinkNode(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_7

    .line 837
    :cond_14
    return-object v2

    .line 840
    .end local v2    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method final blacklist findFirstEntry()Ljava/util/AbstractMap$SimpleImmutableEntry;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/AbstractMap$SimpleImmutableEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 848
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->baseHead()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v0, :cond_1d

    .line 849
    :goto_7
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v2, v0

    .local v2, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v0, :cond_1d

    .line 850
    iget-object v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    move-object v3, v0

    .local v3, "v":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_15

    .line 851
    invoke-static {v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->unlinkNode(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_7

    .line 853
    :cond_15
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v4, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-direct {v0, v4, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 856
    .end local v2    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method final greylist-max-o findLast()Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 891
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    nop

    :goto_1
    invoke-static {}, Ljava/lang/invoke/VarHandle;->acquireFence()V

    .line 892
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v1, v0

    .local v1, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-nez v0, :cond_a

    .line 893
    goto :goto_3b

    .line 895
    :cond_a
    :goto_a
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v2, v0

    .local v2, "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v0, :cond_25

    .line 897
    iget-object v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v3, v0

    .local v3, "p":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v0, :cond_1c

    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    if-nez v0, :cond_19

    goto :goto_1c

    .line 900
    :cond_19
    move-object v0, v2

    move-object v1, v0

    .end local v1    # "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local v0, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    goto :goto_24

    .line 898
    .end local v0    # "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v1    # "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_1c
    :goto_1c
    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap;->RIGHT:Ljava/lang/invoke/VarHandle;

    iget-object v4, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    invoke-polymorphic {v0, v1, v2, v4}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    .line 901
    .end local v3    # "p":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_24
    goto :goto_a

    .line 902
    :cond_25
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v3, v0

    .local v3, "d":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v0, :cond_2c

    .line 903
    move-object v1, v3

    goto :goto_a

    .line 905
    :cond_2c
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 906
    .local v0, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    nop

    .line 909
    .end local v2    # "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v3    # "d":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v0, :cond_4d

    .line 912
    :goto_31
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v3, v2

    .local v3, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v2, :cond_3e

    .line 913
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    if-nez v2, :cond_3d

    .line 914
    nop

    .line 927
    .end local v0    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v1    # "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v3    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_3b
    const/4 v0, 0x0

    return-object v0

    .line 916
    .restart local v0    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .restart local v1    # "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v3    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_3d
    return-object v0

    .line 918
    :cond_3e
    iget-object v2, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    if-nez v2, :cond_43

    .line 919
    goto :goto_4d

    .line 920
    :cond_43
    iget-object v2, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    if-nez v2, :cond_4b

    .line 921
    invoke-static {v0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->unlinkNode(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_4c

    .line 923
    :cond_4b
    move-object v0, v3

    .line 924
    .end local v3    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_4c
    goto :goto_31

    .line 926
    .end local v0    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v1    # "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_4d
    :goto_4d
    goto :goto_1
.end method

.method final blacklist findLastEntry()Ljava/util/AbstractMap$SimpleImmutableEntry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/AbstractMap$SimpleImmutableEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 937
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    nop

    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findLast()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_a

    .line 938
    const/4 v0, 0x0

    return-object v0

    .line 939
    :cond_a
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    move-object v2, v0

    .local v2, "v":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_17

    .line 940
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v3, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-direct {v0, v3, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 941
    .end local v1    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v2    # "v":Ljava/lang/Object;, "TV;"
    :cond_17
    goto :goto_1
.end method

.method final greylist-max-o findNear(Ljava/lang/Object;ILjava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .registers 10
    .param p2, "rel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1015
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    if-eqz p1, :cond_4e

    .line 1019
    :goto_2
    invoke-direct {p0, p1, p3}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_b

    .line 1020
    const/4 v0, 0x0

    .line 1021
    .local v0, "result":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    goto :goto_4a

    .line 1025
    .end local v0    # "result":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_b
    :goto_b
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v2, v0

    .local v2, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    const/4 v3, 0x0

    if-nez v0, :cond_1c

    .line 1026
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1a

    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    if-eqz v0, :cond_1a

    move-object v3, v1

    :cond_1a
    move-object v0, v3

    .line 1027
    .restart local v0    # "result":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    goto :goto_4a

    .line 1029
    .end local v0    # "result":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_1c
    iget-object v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    move-object v4, v0

    .local v4, "k":Ljava/lang/Object;, "TK;"
    if-nez v0, :cond_22

    .line 1030
    goto :goto_2

    .line 1031
    :cond_22
    iget-object v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    if-nez v0, :cond_2a

    .line 1032
    invoke-static {v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->unlinkNode(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_4d

    .line 1033
    :cond_2a
    invoke-static {p3, p1, v4}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    move v5, v0

    .local v5, "c":I
    if-nez v0, :cond_35

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_3b

    :cond_35
    if-gez v5, :cond_3d

    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_3d

    .line 1035
    :cond_3b
    move-object v0, v2

    .line 1036
    .restart local v0    # "result":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    goto :goto_4a

    .line 1038
    .end local v0    # "result":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_3d
    if-gtz v5, :cond_4b

    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_4b

    .line 1039
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    if-eqz v0, :cond_48

    move-object v3, v1

    :cond_48
    move-object v0, v3

    .line 1040
    .restart local v0    # "result":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    nop

    .line 1046
    .end local v1    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v2    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v4    # "k":Ljava/lang/Object;, "TK;"
    .end local v5    # "c":I
    :goto_4a
    return-object v0

    .line 1043
    .end local v0    # "result":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .restart local v1    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .restart local v2    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .restart local v4    # "k":Ljava/lang/Object;, "TK;"
    .restart local v5    # "c":I
    :cond_4b
    move-object v0, v2

    move-object v1, v0

    .line 1044
    .end local v2    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v4    # "k":Ljava/lang/Object;, "TK;"
    .end local v5    # "c":I
    :goto_4d
    goto :goto_b

    .line 1016
    .end local v1    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_4e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method final blacklist findNearEntry(Ljava/lang/Object;ILjava/util/Comparator;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    .registers 8
    .param p2, "rel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Ljava/util/AbstractMap$SimpleImmutableEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1059
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;ILjava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_a

    .line 1060
    const/4 v0, 0x0

    return-object v0

    .line 1061
    :cond_a
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    move-object v2, v0

    .local v2, "v":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_17

    .line 1062
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v3, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-direct {v0, v3, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 1063
    .end local v1    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v2    # "v":Ljava/lang/Object;, "TV;"
    :cond_17
    goto :goto_1
.end method

.method public whitelist test-api firstEntry()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2066
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirstEntry()Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api firstKey()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1857
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 1858
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v0, :cond_9

    .line 1860
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    return-object v1

    .line 1859
    :cond_9
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public whitelist test-api floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2000
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x3

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNearEntry(Ljava/lang/Object;ILjava/util/Comparator;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 2009
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x3

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;ILjava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 2010
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_b

    const/4 v1, 0x0

    goto :goto_d

    :cond_b
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    :goto_d
    return-object v1
.end method

.method public whitelist test-api forEach(Ljava/util/function/BiConsumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 3049
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    if-eqz p1, :cond_1b

    .line 3051
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->baseHead()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v0, :cond_1a

    .line 3052
    :goto_9
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v2, v0

    .local v2, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v0, :cond_1a

    .line 3053
    iget-object v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    move-object v3, v0

    .local v3, "v":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_18

    .line 3054
    iget-object v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-interface {p1, v0, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3055
    :cond_18
    move-object v1, v2

    goto :goto_9

    .line 3058
    .end local v2    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    :cond_1a
    return-void

    .line 3049
    .end local v1    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1312
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->doGet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final blacklist getAdderCount()J
    .registers 9

    .line 449
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    nop

    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->adder:Ljava/util/concurrent/atomic/LongAdder;

    move-object v1, v0

    .local v1, "a":Ljava/util/concurrent/atomic/LongAdder;
    if-nez v0, :cond_16

    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap;->ADDER:Ljava/lang/invoke/VarHandle;

    new-instance v2, Ljava/util/concurrent/atomic/LongAdder;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/LongAdder;-><init>()V

    move-object v1, v2

    .line 450
    const/4 v3, 0x0

    invoke-polymorphic {v0, p0, v3, v2}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Void;Ljava/util/concurrent/atomic/LongAdder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    :cond_16
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/LongAdder;->sum()J

    move-result-wide v2

    move-wide v4, v2

    .local v4, "c":J
    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-gtz v0, :cond_22

    goto :goto_23

    :cond_22
    move-wide v6, v4

    :goto_23
    return-wide v6
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

    .line 1328
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->doGet(Ljava/lang/Object;)Ljava/lang/Object;

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

.method public bridge synthetic whitelist test-api headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 112
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 112
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/ConcurrentNavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1953
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .registers 10
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/concurrent/ConcurrentNavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1919
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    if-eqz p1, :cond_e

    .line 1921
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    .end local p1    # "toKey":Ljava/lang/Object;, "TK;"
    .end local p2    # "inclusive":Z
    .local v4, "toKey":Ljava/lang/Object;, "TK;"
    .local v5, "inclusive":Z
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    return-object v0

    .line 1920
    .end local v4    # "toKey":Ljava/lang/Object;, "TK;"
    .end local v5    # "inclusive":Z
    .restart local p1    # "toKey":Ljava/lang/Object;, "TK;"
    .restart local p2    # "inclusive":Z
    :cond_e
    move-object v4, p1

    .end local p1    # "toKey":Ljava/lang/Object;, "TK;"
    .restart local v4    # "toKey":Ljava/lang/Object;, "TK;"
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public whitelist test-api higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2046
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNearEntry(Ljava/lang/Object;ILjava/util/Comparator;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 2055
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;ILjava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 2056
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_b

    const/4 v1, 0x0

    goto :goto_d

    :cond_b
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    :goto_d
    return-object v1
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 1405
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api keySet()Ljava/util/NavigableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 1615
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    move-object v1, v0

    .local v1, "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    if-eqz v0, :cond_6

    return-object v1

    .line 1616
    :cond_6
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api keySet()Ljava/util/Set;
    .registers 2

    .line 112
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method final greylist-max-o keySpliterator()Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3221
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-static {}, Ljava/lang/invoke/VarHandle;->acquireFence()V

    .line 3222
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v3, v0

    .local v3, "h":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-nez v0, :cond_e

    .line 3223
    const/4 v0, 0x0

    .line 3224
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    const-wide/16 v1, 0x0

    move-object v4, v0

    move-wide v6, v1

    .local v1, "est":J
    goto :goto_16

    .line 3227
    .end local v0    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v1    # "est":J
    :cond_e
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3228
    .restart local v0    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->getAdderCount()J

    move-result-wide v1

    move-object v4, v0

    move-wide v6, v1

    .line 3230
    .end local v0    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .local v4, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .local v6, "est":J
    :goto_16
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;-><init>(Ljava/util/Comparator;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;J)V

    return-object v1
.end method

.method public whitelist test-api lastEntry()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2076
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findLastEntry()Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api lastKey()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1867
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findLast()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 1868
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v0, :cond_9

    .line 1870
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    return-object v1

    .line 1869
    :cond_9
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public whitelist test-api lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1977
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x2

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNearEntry(Ljava/lang/Object;ILjava/util/Comparator;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 1985
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x2

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;ILjava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 1986
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_b

    const/4 v1, 0x0

    goto :goto_d

    :cond_b
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    :goto_d
    return-object v1
.end method

.method public whitelist test-api merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction<",
            "-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1553
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    if-eqz p1, :cond_34

    if-eqz p2, :cond_34

    if-eqz p3, :cond_34

    .line 1557
    :goto_6
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_15

    .line 1558
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->doPut(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_33

    .line 1559
    return-object p2

    .line 1561
    :cond_15
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    move-object v2, v0

    .local v2, "v":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_33

    .line 1562
    invoke-interface {p3, v2, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    .local v3, "r":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_2b

    .line 1563
    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap;->VAL:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, v1, v2, v3}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1564
    return-object v3

    .line 1566
    :cond_2b
    invoke-virtual {p0, p1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 1567
    const/4 v0, 0x0

    return-object v0

    .line 1569
    .end local v1    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v2    # "v":Ljava/lang/Object;, "TV;"
    .end local v3    # "r":Ljava/lang/Object;, "TV;"
    :cond_33
    goto :goto_6

    .line 1554
    :cond_34
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api navigableKeySet()Ljava/util/NavigableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 1621
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    move-object v1, v0

    .local v1, "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    if-eqz v0, :cond_6

    return-object v1

    .line 1622
    :cond_6
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    return-object v0
.end method

.method public whitelist test-api pollFirstEntry()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2086
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemoveFirstEntry()Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api pollLastEntry()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2096
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemoveLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1345
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p2, :cond_8

    .line 1347
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->doPut(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1346
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api putFirst(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1882
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1785
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p2, :cond_8

    .line 1787
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->doPut(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1786
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api putLast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1894
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

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

    .line 1361
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 1798
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    if-eqz p1, :cond_e

    .line 1800
    if-eqz p2, :cond_c

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    .line 1799
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method greylist-max-o removeEntryIf(Ljava/util/function/Predicate;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)Z"
        }
    .end annotation

    .line 3080
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p1, :cond_2b

    .line 3081
    const/4 v0, 0x0

    .line 3083
    .local v0, "removed":Z
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->baseHead()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    move-object v2, v1

    .local v2, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v1, :cond_2a

    .line 3084
    :goto_a
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v3, v1

    .local v3, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v1, :cond_2a

    .line 3085
    iget-object v1, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    move-object v4, v1

    .local v4, "v":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_28

    .line 3086
    iget-object v1, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 3087
    .local v1, "k":Ljava/lang/Object;, "TK;"
    new-instance v5, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v5, v1, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3088
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {p1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    invoke-virtual {p0, v1, v4}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 3089
    const/4 v0, 0x1

    .line 3091
    .end local v1    # "k":Ljava/lang/Object;, "TK;"
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_28
    move-object v2, v3

    goto :goto_a

    .line 3094
    .end local v3    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v4    # "v":Ljava/lang/Object;, "TV;"
    :cond_2a
    return v0

    .line 3080
    .end local v0    # "removed":Z
    .end local v2    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_2b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method greylist-max-o removeValueIf(Ljava/util/function/Predicate;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TV;>;)Z"
        }
    .end annotation

    .line 3101
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TV;>;"
    if-eqz p1, :cond_26

    .line 3102
    const/4 v0, 0x0

    .line 3104
    .local v0, "removed":Z
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->baseHead()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    move-object v2, v1

    .local v2, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v1, :cond_25

    .line 3105
    :goto_a
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v3, v1

    .local v3, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v1, :cond_25

    .line 3106
    iget-object v1, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    move-object v4, v1

    .local v4, "v":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_23

    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {p0, v1, v4}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 3107
    const/4 v0, 0x1

    .line 3108
    :cond_23
    move-object v2, v3

    goto :goto_a

    .line 3111
    .end local v3    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v4    # "v":Ljava/lang/Object;, "TV;"
    :cond_25
    return v0

    .line 3101
    .end local v0    # "removed":Z
    .end local v2    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_26
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1836
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_1d

    if-eqz p2, :cond_1d

    .line 1840
    :goto_4
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_d

    .line 1841
    const/4 v0, 0x0

    return-object v0

    .line 1842
    :cond_d
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    move-object v2, v0

    .local v2, "v":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_1c

    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap;->VAL:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, v1, v2, p2}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1843
    return-object v2

    .line 1844
    .end local v1    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v2    # "v":Ljava/lang/Object;, "TV;"
    :cond_1c
    goto :goto_4

    .line 1837
    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 1811
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_27

    if-eqz p2, :cond_27

    if-eqz p3, :cond_27

    .line 1815
    :goto_6
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    const/4 v2, 0x0

    if-nez v0, :cond_f

    .line 1816
    return v2

    .line 1817
    :cond_f
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    move-object v3, v0

    .local v3, "v":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_26

    .line 1818
    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1819
    return v2

    .line 1820
    :cond_1b
    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap;->VAL:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, v1, v3, p3}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1821
    const/4 v0, 0x1

    return v0

    .line 1823
    .end local v1    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    :cond_26
    goto :goto_6

    .line 1812
    :cond_27
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api replaceAll(Ljava/util/function/BiFunction;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .line 3061
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    if-eqz p1, :cond_2f

    .line 3063
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->baseHead()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v0, :cond_2e

    .line 3064
    :goto_9
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v2, v0

    .local v2, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v0, :cond_2e

    .line 3065
    :goto_e
    iget-object v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    move-object v3, v0

    .local v3, "v":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_2c

    .line 3066
    iget-object v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-interface {p1, v0, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3067
    .local v0, "r":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_26

    .line 3068
    sget-object v4, Ljava/util/concurrent/ConcurrentSkipListMap;->VAL:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v4, v2, v3, v0}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 3069
    goto :goto_2c

    .line 3070
    .end local v0    # "r":Ljava/lang/Object;, "TV;"
    :cond_25
    goto :goto_e

    .line 3067
    .restart local v0    # "r":Ljava/lang/Object;, "TV;"
    :cond_26
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 3071
    .end local v0    # "r":Ljava/lang/Object;, "TV;"
    :cond_2c
    :goto_2c
    move-object v1, v2

    goto :goto_9

    .line 3074
    .end local v2    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    :cond_2e
    return-void

    .line 3061
    .end local v1    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_2f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api size()I
    .registers 7

    .line 1396
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->baseHead()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_19

    .line 1397
    :cond_8
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->getAdderCount()J

    move-result-wide v0

    move-wide v2, v0

    .local v2, "c":J
    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v0, v4

    if-ltz v0, :cond_18

    .line 1398
    const v0, 0x7fffffff

    goto :goto_19

    :cond_18
    long-to-int v0, v2

    .line 1396
    .end local v2    # "c":J
    :goto_19
    return v0
.end method

.method public bridge synthetic whitelist test-api subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 112
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentSkipListMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 112
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/concurrent/ConcurrentNavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1944
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .registers 12
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/concurrent/ConcurrentNavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1906
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    if-eqz p1, :cond_10

    if-eqz p3, :cond_10

    .line 1908
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    .end local p1    # "fromKey":Ljava/lang/Object;, "TK;"
    .end local p2    # "fromInclusive":Z
    .end local p3    # "toKey":Ljava/lang/Object;, "TK;"
    .end local p4    # "toInclusive":Z
    .local v2, "fromKey":Ljava/lang/Object;, "TK;"
    .local v3, "fromInclusive":Z
    .local v4, "toKey":Ljava/lang/Object;, "TK;"
    .local v5, "toInclusive":Z
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    return-object v0

    .line 1906
    .end local v2    # "fromKey":Ljava/lang/Object;, "TK;"
    .end local v3    # "fromInclusive":Z
    .end local v4    # "toKey":Ljava/lang/Object;, "TK;"
    .end local v5    # "toInclusive":Z
    .restart local p1    # "fromKey":Ljava/lang/Object;, "TK;"
    .restart local p2    # "fromInclusive":Z
    .restart local p3    # "toKey":Ljava/lang/Object;, "TK;"
    .restart local p4    # "toInclusive":Z
    :cond_10
    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    .line 1907
    .end local p1    # "fromKey":Ljava/lang/Object;, "TK;"
    .end local p2    # "fromInclusive":Z
    .end local p3    # "toKey":Ljava/lang/Object;, "TK;"
    .end local p4    # "toInclusive":Z
    .restart local v2    # "fromKey":Ljava/lang/Object;, "TK;"
    .restart local v3    # "fromInclusive":Z
    .restart local v4    # "toKey":Ljava/lang/Object;, "TK;"
    .restart local v5    # "toInclusive":Z
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public bridge synthetic whitelist test-api tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 112
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 112
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/ConcurrentNavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1962
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .registers 10
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/concurrent/ConcurrentNavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1932
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    if-eqz p1, :cond_e

    .line 1934
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    .end local p1    # "fromKey":Ljava/lang/Object;, "TK;"
    .end local p2    # "inclusive":Z
    .local v2, "fromKey":Ljava/lang/Object;, "TK;"
    .local v3, "inclusive":Z
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    return-object v0

    .line 1933
    .end local v2    # "fromKey":Ljava/lang/Object;, "TK;"
    .end local v3    # "inclusive":Z
    .restart local p1    # "fromKey":Ljava/lang/Object;, "TK;"
    .restart local p2    # "inclusive":Z
    :cond_e
    move-object v2, p1

    .end local p1    # "fromKey":Ljava/lang/Object;, "TK;"
    .restart local v2    # "fromKey":Ljava/lang/Object;, "TK;"
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method final greylist-max-o valueSpliterator()Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3307
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-static {}, Ljava/lang/invoke/VarHandle;->acquireFence()V

    .line 3308
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v3, v0

    .local v3, "h":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-nez v0, :cond_e

    .line 3309
    const/4 v0, 0x0

    .line 3310
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    const-wide/16 v1, 0x0

    move-object v4, v0

    move-wide v6, v1

    .local v1, "est":J
    goto :goto_16

    .line 3313
    .end local v0    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v1    # "est":J
    :cond_e
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3314
    .restart local v0    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->getAdderCount()J

    move-result-wide v1

    move-object v4, v0

    move-wide v6, v1

    .line 3316
    .end local v0    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .local v4, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .local v6, "est":J
    :goto_16
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;-><init>(Ljava/util/Comparator;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;J)V

    return-object v1
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

    .line 1646
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->values:Ljava/util/concurrent/ConcurrentSkipListMap$Values;

    move-object v1, v0

    .local v1, "vs":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap$Values<TK;TV;>;"
    if-eqz v0, :cond_6

    return-object v1

    .line 1647
    :cond_6
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$Values;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->values:Ljava/util/concurrent/ConcurrentSkipListMap$Values;

    return-object v0
.end method
