.class public Ljava/util/concurrent/ConcurrentSkipListSet;
.super Ljava/util/AbstractSet;
.source "ConcurrentSkipListSet.java"

# interfaces
.implements Ljava/util/NavigableSet;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;",
        "Ljava/util/NavigableSet",
        "<TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final mapOffset:J

.field private static final serialVersionUID:J = -0x2267af8642300ea5L


# instance fields
.field private final m:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TE;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 454
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v2

    #@4
    sput-object v2, Ljava/util/concurrent/ConcurrentSkipListSet;->UNSAFE:Lsun/misc/Unsafe;

    #@6
    .line 455
    const-class v1, Ljava/util/concurrent/ConcurrentSkipListSet;

    #@8
    .line 456
    .local v1, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/util/concurrent/ConcurrentSkipListSet;->UNSAFE:Lsun/misc/Unsafe;

    #@a
    .line 457
    const-string/jumbo v3, "m"

    #@d
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@10
    move-result-object v3

    #@11
    .line 456
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@14
    move-result-wide v2

    #@15
    sput-wide v2, Ljava/util/concurrent/ConcurrentSkipListSet;->mapOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 56
    return-void

    #@18
    .line 458
    :catch_0
    move-exception v0

    #@19
    .line 459
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    #@1b
    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@1e
    throw v2
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 73
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@3
    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    #@8
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@a
    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 100
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@3
    .line 101
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    #@8
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@a
    .line 102
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->addAll(Ljava/util/Collection;)Z

    #@d
    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 85
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@3
    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    #@5
    invoke-direct {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>(Ljava/util/Comparator;)V

    #@8
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@a
    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/util/SortedSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 113
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    .local p1, "s":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@3
    .line 114
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    #@5
    invoke-interface {p1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>(Ljava/util/Comparator;)V

    #@c
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@e
    .line 115
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->addAll(Ljava/util/Collection;)Z

    #@11
    .line 113
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TE;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 121
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    .local p1, "m":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<TE;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@3
    .line 122
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@5
    .line 121
    return-void
.end method

.method private setMap(Ljava/util/concurrent/ConcurrentNavigableMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TE;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 447
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<TE;Ljava/lang/Object;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListSet;->UNSAFE:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/ConcurrentSkipListSet;->mapOffset:J

    #@4
    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    #@7
    .line 446
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 203
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@4
    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    if-nez v0, :cond_0

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

.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 325
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 228
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->clear()V

    #@5
    .line 227
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
    .line 131
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListSet;->clone()Ljava/util/concurrent/ConcurrentSkipListSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public clone()Ljava/util/concurrent/ConcurrentSkipListSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 135
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractSet;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    #@6
    .line 136
    .local v0, "clone":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    new-instance v2, Ljava/util/concurrent/ConcurrentSkipListMap;

    #@8
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@a
    invoke-direct {v2, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>(Ljava/util/SortedMap;)V

    #@d
    invoke-direct {v0, v2}, Ljava/util/concurrent/ConcurrentSkipListSet;->setMap(Ljava/util/concurrent/ConcurrentNavigableMap;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 137
    return-object v0

    #@11
    .line 138
    .end local v0    # "clone":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    :catch_0
    move-exception v1

    #@12
    .line 139
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    #@14
    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    #@17
    throw v2
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 351
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->comparator()Ljava/util/Comparator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 185
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 246
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->descendingKeySet()Ljava/util/NavigableSet;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 442
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    #@2
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@4
    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    #@b
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 266
    if-ne p1, p0, :cond_0

    #@3
    .line 267
    const/4 v3, 0x1

    #@4
    return v3

    #@5
    .line 268
    :cond_0
    instance-of v4, p1, Ljava/util/Set;

    #@7
    if-nez v4, :cond_1

    #@9
    .line 269
    return v3

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 270
    check-cast v0, Ljava/util/Collection;

    #@d
    .line 272
    .local v0, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->containsAll(Ljava/util/Collection;)Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_2

    #@13
    invoke-interface {v0, p0}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result v3

    #@17
    :cond_2
    return v3

    #@18
    .line 275
    :catch_0
    move-exception v2

    #@19
    .line 276
    .local v2, "unused":Ljava/lang/NullPointerException;
    return v3

    #@1a
    .line 273
    .end local v2    # "unused":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    #@1b
    .line 274
    .local v1, "unused":Ljava/lang/ClassCastException;
    return v3
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 358
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->firstKey()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 317
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 417
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 389
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    #@2
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@4
    invoke-interface {v1, p1, p2}, Ljava/util/concurrent/ConcurrentNavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    #@b
    return-object v0
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1, "toElement"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 416
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->headSet(Ljava/lang/Object;)Ljava/util/NavigableSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 333
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 170
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 237
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 365
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->lastKey()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 309
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 337
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@3
    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentNavigableMap;->pollFirstEntry()Ljava/util/Map$Entry;

    #@6
    move-result-object v0

    #@7
    .line 338
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TE;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    #@9
    :goto_0
    return-object v1

    #@a
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    goto :goto_0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 342
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@3
    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentNavigableMap;->pollLastEntry()Ljava/util/Map$Entry;

    #@6
    move-result-object v0

    #@7
    .line 343
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TE;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    #@9
    :goto_0
    return-object v1

    #@a
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 221
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@4
    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 295
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v2, 0x0

    #@1
    .line 296
    .local v2, "modified":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v1

    #@5
    .local v1, "e$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_1

    #@b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    .line 297
    .local v0, "e":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->remove(Ljava/lang/Object;)Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_0

    #@15
    .line 298
    const/4 v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 299
    .end local v0    # "e":Ljava/lang/Object;
    :cond_1
    return v2
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 162
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 408
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p2, "toElement":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v0, p2, v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 378
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p3, "toElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    #@2
    .line 379
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@4
    invoke-interface {v1, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentNavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    #@7
    move-result-object v1

    #@8
    .line 378
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    #@b
    return-object v0
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1, "fromElement"    # Ljava/lang/Object;
    .param p2, "toElement"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 407
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 426
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 398
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    #@2
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@4
    invoke-interface {v1, p1, p2}, Ljava/util/concurrent/ConcurrentNavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    #@b
    return-object v0
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1, "fromElement"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 425
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->tailSet(Ljava/lang/Object;)Ljava/util/NavigableSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
