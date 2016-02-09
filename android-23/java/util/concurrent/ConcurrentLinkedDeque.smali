.class public Ljava/util/concurrent/ConcurrentLinkedDeque;
.super Ljava/util/AbstractCollection;
.source "ConcurrentLinkedDeque.java"

# interfaces
.implements Ljava/util/Deque;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,
        Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;,
        Ljava/util/concurrent/ConcurrentLinkedDeque$Itr;,
        Ljava/util/concurrent/ConcurrentLinkedDeque$DescendingItr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Ljava/util/Deque",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final HOPS:I = 0x2

.field private static final NEXT_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final PREV_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final headOffset:J

.field private static final serialVersionUID:J = 0xc29535d4a608822L

.field private static final tailOffset:J


# instance fields
.field private volatile transient head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field private volatile transient tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 1420
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@2
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>()V

    #@5
    sput-object v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->PREV_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@7
    .line 1421
    sget-object v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->PREV_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@9
    sget-object v3, Ljava/util/concurrent/ConcurrentLinkedDeque;->PREV_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@b
    iput-object v3, v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@d
    .line 1422
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@f
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>()V

    #@12
    sput-object v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->NEXT_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@14
    .line 1423
    sget-object v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->NEXT_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@16
    sget-object v3, Ljava/util/concurrent/ConcurrentLinkedDeque;->NEXT_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@18
    iput-object v3, v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@1a
    .line 1425
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@1d
    move-result-object v2

    #@1e
    sput-object v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->UNSAFE:Lsun/misc/Unsafe;

    #@20
    .line 1426
    const-class v1, Ljava/util/concurrent/ConcurrentLinkedDeque;

    #@22
    .line 1427
    .local v1, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->UNSAFE:Lsun/misc/Unsafe;

    #@24
    .line 1428
    const-string/jumbo v3, "head"

    #@27
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@2a
    move-result-object v3

    #@2b
    .line 1427
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@2e
    move-result-wide v2

    #@2f
    sput-wide v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->headOffset:J

    #@31
    .line 1429
    sget-object v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->UNSAFE:Lsun/misc/Unsafe;

    #@33
    .line 1430
    const-string/jumbo v3, "tail"

    #@36
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@39
    move-result-object v3

    #@3a
    .line 1429
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@3d
    move-result-wide v2

    #@3e
    sput-wide v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->tailOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@40
    .line 64
    return-void

    #@41
    .line 1431
    :catch_0
    move-exception v0

    #@42
    .line 1432
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    #@44
    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@47
    throw v2
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 805
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    #@3
    .line 806
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>(Ljava/lang/Object;)V

    #@9
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@b
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@d
    .line 805
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 818
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    #@3
    .line 820
    const/4 v2, 0x0

    #@4
    .local v2, "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    const/4 v4, 0x0

    #@5
    .line 821
    .local v4, "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .end local v2    # "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v4    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_1

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    .line 822
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-static {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->checkNotNull(Ljava/lang/Object;)V

    #@16
    .line 823
    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@18
    invoke-direct {v3, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>(Ljava/lang/Object;)V

    #@1b
    .line 824
    .local v3, "newNode":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v2, :cond_0

    #@1d
    .line 825
    move-object v4, v3

    #@1e
    .local v4, "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v2, v3

    #@1f
    .local v2, "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    goto :goto_0

    #@20
    .line 827
    .end local v2    # "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v4    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_0
    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@23
    .line 828
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@26
    .line 829
    move-object v4, v3

    #@27
    .restart local v4    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    goto :goto_0

    #@28
    .line 832
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .end local v3    # "newNode":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v4    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_1
    invoke-direct {p0, v2, v4}, Ljava/util/concurrent/ConcurrentLinkedDeque;->initHeadTail(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@2b
    .line 818
    return-void
.end method

.method private casHead(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1407
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "cmp":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local p2, "val":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedDeque;->UNSAFE:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->headOffset:J

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

.method private casTail(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1411
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "cmp":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local p2, "val":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedDeque;->UNSAFE:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->tailOffset:J

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

.method private static checkNotNull(Ljava/lang/Object;)V
    .locals 1
    .param p0, "v"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 769
    if-nez p0, :cond_0

    #@2
    .line 770
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 768
    :cond_0
    return-void
.end method

.method private initHeadTail(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local p2, "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 839
    if-ne p1, p2, :cond_0

    #@3
    .line 840
    if-nez p1, :cond_1

    #@5
    .line 841
    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@7
    .end local p2    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    invoke-direct {p2, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>(Ljava/lang/Object;)V

    #@a
    .restart local p2    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object p1, p2

    #@b
    .line 850
    :cond_0
    :goto_0
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@d
    .line 851
    iput-object p2, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@f
    .line 838
    return-void

    #@10
    .line 844
    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@12
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>(Ljava/lang/Object;)V

    #@15
    .line 845
    .local v0, "newNode":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@18
    .line 846
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@1b
    .line 847
    move-object p2, v0

    #@1c
    goto :goto_0
.end method

.method private linkFirst(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v6, 0x0

    #@1
    .line 325
    invoke-static {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->checkNotNull(Ljava/lang/Object;)V

    #@4
    .line 326
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@6
    invoke-direct {v2, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>(Ljava/lang/Object;)V

    #@9
    .line 330
    .local v2, "newNode":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@b
    .local v0, "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v3, v0

    #@c
    .line 331
    .local v3, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_1
    :goto_0
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@e
    .local v4, "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eqz v4, :cond_3

    #@10
    .line 332
    move-object v3, v4

    #@11
    iget-object v4, v4, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@13
    if-eqz v4, :cond_3

    #@15
    .line 335
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@17
    .end local v0    # "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v1, "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eq v0, v1, :cond_2

    #@19
    move-object v3, v1

    #@1a
    :goto_1
    move-object v0, v1

    #@1b
    .end local v1    # "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v0    # "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    goto :goto_0

    #@1c
    .end local v0    # "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v1    # "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_2
    move-object v3, v4

    #@1d
    goto :goto_1

    #@1e
    .line 336
    .end local v1    # "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v0    # "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_3
    iget-object v5, v3, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@20
    if-eq v5, v3, :cond_0

    #@22
    .line 340
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@25
    .line 341
    invoke-virtual {v3, v6, v2}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    #@28
    move-result v5

    #@29
    if-eqz v5, :cond_1

    #@2b
    .line 345
    if-eq v3, v0, :cond_4

    #@2d
    .line 346
    invoke-direct {p0, v0, v2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->casHead(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    #@30
    .line 347
    :cond_4
    return-void
.end method

.method private linkLast(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v6, 0x0

    #@1
    .line 358
    invoke-static {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->checkNotNull(Ljava/lang/Object;)V

    #@4
    .line 359
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@6
    invoke-direct {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>(Ljava/lang/Object;)V

    #@9
    .line 363
    .local v0, "newNode":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@b
    .local v3, "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v1, v3

    #@c
    .line 364
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_1
    :goto_0
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@e
    .local v2, "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eqz v2, :cond_3

    #@10
    .line 365
    move-object v1, v2

    #@11
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@13
    if-eqz v2, :cond_3

    #@15
    .line 368
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@17
    .end local v3    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v4, "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eq v3, v4, :cond_2

    #@19
    move-object v1, v4

    #@1a
    :goto_1
    move-object v3, v4

    #@1b
    .end local v4    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v3    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    goto :goto_0

    #@1c
    .end local v3    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v4    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_2
    move-object v1, v2

    #@1d
    goto :goto_1

    #@1e
    .line 369
    .end local v4    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v3    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_3
    iget-object v5, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@20
    if-eq v5, v1, :cond_0

    #@22
    .line 373
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@25
    .line 374
    invoke-virtual {v1, v6, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    #@28
    move-result v5

    #@29
    if-eqz v5, :cond_1

    #@2b
    .line 378
    if-eq v1, v3, :cond_4

    #@2d
    .line 379
    invoke-direct {p0, v3, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->casTail(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    #@30
    .line 380
    :cond_4
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1387
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 1390
    const/4 v0, 0x0

    #@4
    .local v0, "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    const/4 v3, 0x0

    #@5
    .line 1392
    .end local v0    # "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    .local v1, "item":Ljava/lang/Object;
    if-eqz v1, :cond_1

    #@b
    .line 1394
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@d
    invoke-direct {v2, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>(Ljava/lang/Object;)V

    #@10
    .line 1395
    .local v2, "newNode":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v0, :cond_0

    #@12
    .line 1396
    move-object v3, v2

    #@13
    .local v3, "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v0, v2

    #@14
    .local v0, "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    goto :goto_0

    #@15
    .line 1398
    .end local v0    # "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v3    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@18
    .line 1399
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@1b
    .line 1400
    move-object v3, v2

    #@1c
    .restart local v3    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    goto :goto_0

    #@1d
    .line 1403
    .end local v2    # "newNode":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v3    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_1
    invoke-direct {p0, v0, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->initHeadTail(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@20
    .line 1386
    return-void
.end method

.method private screenNullResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 781
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "v":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    #@2
    .line 782
    new-instance v0, Ljava/util/NoSuchElementException;

    #@4
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@7
    throw v0

    #@8
    .line 783
    :cond_0
    return-object p1
.end method

.method private skipDeletedPredecessors(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 631
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "x":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_0
    iget-object v1, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@2
    .line 635
    .local v1, "prev":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v0, v1

    #@3
    .line 638
    .local v0, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@5
    if-eqz v3, :cond_3

    #@7
    .line 653
    :cond_1
    if-eq v1, v0, :cond_2

    #@9
    invoke-virtual {p1, v1, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_4

    #@f
    .line 654
    :cond_2
    return-void

    #@10
    .line 640
    :cond_3
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@12
    .line 641
    .local v2, "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v2, :cond_5

    #@14
    .line 642
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@16
    if-ne v3, v0, :cond_1

    #@18
    .line 656
    .end local v2    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_4
    iget-object v3, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@1a
    if-nez v3, :cond_0

    #@1c
    iget-object v3, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@1e
    if-eqz v3, :cond_0

    #@20
    .line 628
    return-void

    #@21
    .line 646
    .restart local v2    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_5
    if-eq v0, v2, :cond_4

    #@23
    .line 649
    move-object v0, v2

    #@24
    goto :goto_0
.end method

.method private skipDeletedSuccessors(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 662
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "x":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_0
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@2
    .line 666
    .local v0, "next":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v1, v0

    #@3
    .line 669
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@5
    if-eqz v3, :cond_3

    #@7
    .line 684
    :cond_1
    if-eq v0, v1, :cond_2

    #@9
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_4

    #@f
    .line 685
    :cond_2
    return-void

    #@10
    .line 671
    :cond_3
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@12
    .line 672
    .local v2, "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v2, :cond_5

    #@14
    .line 673
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@16
    if-ne v3, v1, :cond_1

    #@18
    .line 687
    .end local v2    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_4
    iget-object v3, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@1a
    if-nez v3, :cond_0

    #@1c
    iget-object v3, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@1e
    if-eqz v3, :cond_0

    #@20
    .line 659
    return-void

    #@21
    .line 677
    .restart local v2    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_5
    if-eq v1, v2, :cond_4

    #@23
    .line 680
    move-object v1, v2

    #@24
    goto :goto_0
.end method

.method private toArrayList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 793
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 794
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@8
    move-result-object v2

    #@9
    .local v2, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    if-eqz v2, :cond_1

    #@b
    .line 795
    iget-object v0, v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@d
    .line 796
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    #@f
    .line 797
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@12
    .line 794
    :cond_0
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->succ(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@15
    move-result-object v2

    #@16
    goto :goto_0

    #@17
    .line 799
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    :cond_1
    return-object v1
.end method

.method private unlinkFirst(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 507
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "first":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local p2, "next":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    const/4 v0, 0x0

    #@1
    .local v0, "o":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v1, p2

    #@2
    .line 508
    .end local v0    # "o":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@4
    if-nez v3, :cond_0

    #@6
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@8
    .local v2, "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v2, :cond_3

    #@a
    .line 509
    .end local v2    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_0
    if-eqz v0, :cond_2

    #@c
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@e
    if-eq v3, v1, :cond_2

    #@10
    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_2

    #@16
    .line 510
    invoke-direct {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->skipDeletedPredecessors(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@19
    .line 511
    iget-object v3, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@1b
    if-nez v3, :cond_2

    #@1d
    .line 512
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@1f
    if-eqz v3, :cond_1

    #@21
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@23
    if-eqz v3, :cond_2

    #@25
    .line 513
    :cond_1
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@27
    if-ne v3, p1, :cond_2

    #@29
    .line 515
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->updateHead()V

    #@2c
    .line 516
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->updateTail()V

    #@2f
    .line 519
    invoke-virtual {v0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@32
    .line 520
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->prevTerminator()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@39
    .line 523
    :cond_2
    return-void

    #@3a
    .line 525
    .restart local v2    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_3
    if-ne v1, v2, :cond_4

    #@3c
    .line 526
    return-void

    #@3d
    .line 528
    :cond_4
    move-object v0, v1

    #@3e
    .line 529
    .local v0, "o":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v1, v2

    #@3f
    goto :goto_0
.end method

.method private unlinkLast(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 541
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "last":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local p2, "prev":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    const/4 v0, 0x0

    #@1
    .local v0, "o":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v1, p2

    #@2
    .line 542
    .end local v0    # "o":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@4
    if-nez v3, :cond_0

    #@6
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@8
    .local v2, "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v2, :cond_3

    #@a
    .line 543
    .end local v2    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_0
    if-eqz v0, :cond_2

    #@c
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@e
    if-eq v3, v1, :cond_2

    #@10
    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_2

    #@16
    .line 544
    invoke-direct {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->skipDeletedSuccessors(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@19
    .line 545
    iget-object v3, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@1b
    if-nez v3, :cond_2

    #@1d
    .line 546
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@1f
    if-eqz v3, :cond_1

    #@21
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@23
    if-eqz v3, :cond_2

    #@25
    .line 547
    :cond_1
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@27
    if-ne v3, p1, :cond_2

    #@29
    .line 549
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->updateHead()V

    #@2c
    .line 550
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->updateTail()V

    #@2f
    .line 553
    invoke-virtual {v0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@32
    .line 554
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->nextTerminator()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@39
    .line 557
    :cond_2
    return-void

    #@3a
    .line 559
    .restart local v2    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_3
    if-ne v1, v2, :cond_4

    #@3c
    .line 560
    return-void

    #@3d
    .line 562
    :cond_4
    move-object v0, v1

    #@3e
    .line 563
    .local v0, "o":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v1, v2

    #@3f
    goto :goto_0
.end method

.method private final updateHead()V
    .locals 4

    #@0
    .prologue
    .line 579
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@2
    .local v0, "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@4
    if-nez v3, :cond_3

    #@6
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@8
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eqz v1, :cond_3

    #@a
    .line 581
    :goto_0
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@c
    .local v2, "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eqz v2, :cond_1

    #@e
    .line 582
    move-object v1, v2

    #@f
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@11
    if-nez v2, :cond_2

    #@13
    .line 585
    :cond_1
    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->casHead(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 586
    return-void

    #@1a
    .line 590
    :cond_2
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@1c
    if-ne v0, v3, :cond_0

    #@1e
    .line 593
    move-object v1, v2

    #@1f
    goto :goto_0

    #@20
    .line 574
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v2    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_3
    return-void
.end method

.method private final updateTail()V
    .locals 4

    #@0
    .prologue
    .line 609
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@2
    .local v2, "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@4
    if-nez v3, :cond_3

    #@6
    iget-object v0, v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@8
    .local v0, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eqz v0, :cond_3

    #@a
    .line 611
    :goto_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@c
    .local v1, "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eqz v1, :cond_1

    #@e
    .line 612
    move-object v0, v1

    #@f
    iget-object v1, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@11
    if-nez v1, :cond_2

    #@13
    .line 615
    :cond_1
    invoke-direct {p0, v2, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->casTail(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 616
    return-void

    #@1a
    .line 620
    :cond_2
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@1c
    if-ne v2, v3, :cond_0

    #@1e
    .line 623
    move-object v0, v1

    #@1f
    goto :goto_0

    #@20
    .line 604
    .end local v0    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v1    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_3
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    const/4 v2, 0x0

    #@1
    .line 1369
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@4
    .line 1372
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@7
    move-result-object v1

    #@8
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_1

    #@a
    .line 1373
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@c
    .line 1374
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    #@e
    .line 1375
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@11
    .line 1372
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->succ(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@14
    move-result-object v1

    #@15
    goto :goto_0

    #@16
    .line 1379
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    :cond_1
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@19
    .line 1366
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 994
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->offerLast(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v10, 0x0

    #@1
    .line 1124
    if-ne p1, p0, :cond_0

    #@3
    .line 1126
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@5
    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@8
    throw v9

    #@9
    .line 1129
    :cond_0
    const/4 v0, 0x0

    #@a
    .local v0, "beginningOfTheEnd":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    const/4 v3, 0x0

    #@b
    .line 1130
    .local v3, "last":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v2

    #@f
    .end local v0    # "beginningOfTheEnd":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v3    # "last":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v2, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v9

    #@13
    if-eqz v9, :cond_2

    #@15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    .line 1131
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->checkNotNull(Ljava/lang/Object;)V

    #@1c
    .line 1132
    new-instance v4, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@1e
    invoke-direct {v4, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>(Ljava/lang/Object;)V

    #@21
    .line 1133
    .local v4, "newNode":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v0, :cond_1

    #@23
    .line 1134
    move-object v3, v4

    #@24
    .local v3, "last":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v0, v4

    #@25
    .local v0, "beginningOfTheEnd":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    goto :goto_0

    #@26
    .line 1136
    .end local v0    # "beginningOfTheEnd":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v3    # "last":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@29
    .line 1137
    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@2c
    .line 1138
    move-object v3, v4

    #@2d
    .restart local v3    # "last":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    goto :goto_0

    #@2e
    .line 1141
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    .end local v3    # "last":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v4    # "newNode":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_2
    if-nez v0, :cond_4

    #@30
    .line 1142
    const/4 v9, 0x0

    #@31
    return v9

    #@32
    .line 1153
    .local v5, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v6, "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v7, "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_3
    iget-object v9, v5, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@34
    if-ne v9, v5, :cond_7

    #@36
    .line 1147
    .end local v5    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v6    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v7    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_4
    iget-object v7, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@38
    .restart local v7    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v5, v7

    #@39
    .line 1148
    .restart local v5    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_5
    :goto_1
    iget-object v6, v5, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@3b
    .restart local v6    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eqz v6, :cond_3

    #@3d
    .line 1149
    move-object v5, v6

    #@3e
    iget-object v6, v6, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@40
    if-eqz v6, :cond_3

    #@42
    .line 1152
    iget-object v8, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@44
    .end local v7    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v8, "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eq v7, v8, :cond_6

    #@46
    move-object v5, v8

    #@47
    :goto_2
    move-object v7, v8

    #@48
    .end local v8    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v7    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    goto :goto_1

    #@49
    .end local v7    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v8    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_6
    move-object v5, v6

    #@4a
    goto :goto_2

    #@4b
    .line 1157
    .end local v8    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v7    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_7
    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@4e
    .line 1158
    invoke-virtual {v5, v10, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    #@51
    move-result v9

    #@52
    if-eqz v9, :cond_5

    #@54
    .line 1161
    invoke-direct {p0, v7, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->casTail(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    #@57
    move-result v9

    #@58
    if-nez v9, :cond_8

    #@5a
    .line 1164
    iget-object v7, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@5c
    .line 1165
    iget-object v9, v3, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@5e
    if-nez v9, :cond_8

    #@60
    .line 1166
    invoke-direct {p0, v7, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->casTail(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    #@63
    .line 1168
    :cond_8
    const/4 v9, 0x1

    #@64
    return v9
.end method

.method public addFirst(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 862
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->linkFirst(Ljava/lang/Object;)V

    #@3
    .line 861
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 875
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->linkLast(Ljava/lang/Object;)V

    #@3
    .line 874
    return-void
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 1179
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pollFirst()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1178
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 1054
    if-nez p1, :cond_0

    #@3
    return v3

    #@4
    .line 1055
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@7
    move-result-object v1

    #@8
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_2

    #@a
    .line 1056
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@c
    .line 1057
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_1

    #@e
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 1058
    const/4 v2, 0x1

    #@15
    return v2

    #@16
    .line 1055
    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->succ(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@19
    move-result-object v1

    #@1a
    goto :goto_0

    #@1b
    .line 1060
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    :cond_2
    return v3
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1273
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque$DescendingItr;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$DescendingItr;-><init>(Ljava/util/concurrent/ConcurrentLinkedDeque;Ljava/util/concurrent/ConcurrentLinkedDeque$DescendingItr;)V

    #@6
    return-object v0
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 1000
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->getFirst()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 720
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@2
    .local v0, "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v2, v0

    #@3
    .line 721
    .local v2, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@5
    .local v3, "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eqz v3, :cond_2

    #@7
    .line 722
    move-object v2, v3

    #@8
    iget-object v3, v3, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@a
    if-eqz v3, :cond_2

    #@c
    .line 725
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@e
    .end local v0    # "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v1, "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eq v0, v1, :cond_1

    #@10
    move-object v2, v1

    #@11
    :goto_1
    move-object v0, v1

    #@12
    .end local v1    # "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v0    # "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    goto :goto_0

    #@13
    .end local v0    # "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v1    # "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_1
    move-object v2, v3

    #@14
    goto :goto_1

    #@15
    .line 726
    .end local v1    # "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v0    # "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_2
    if-eq v2, v0, :cond_3

    #@17
    .line 729
    invoke-direct {p0, v0, v2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->casHead(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    #@1a
    move-result v4

    #@1b
    .line 726
    if-eqz v4, :cond_0

    #@1d
    .line 730
    :cond_3
    return-object v2
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 926
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->peekFirst()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->screenNullResult(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 933
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->peekLast()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->screenNullResult(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 1069
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->peekFirst()Ljava/lang/Object;

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

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1255
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Itr;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Itr;-><init>(Ljava/util/concurrent/ConcurrentLinkedDeque;Ljava/util/concurrent/ConcurrentLinkedDeque$Itr;)V

    #@6
    return-object v0
.end method

.method last()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 745
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@2
    .local v2, "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v0, v2

    #@3
    .line 746
    .local v0, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@5
    .local v1, "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eqz v1, :cond_2

    #@7
    .line 747
    move-object v0, v1

    #@8
    iget-object v1, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@a
    if-eqz v1, :cond_2

    #@c
    .line 750
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@e
    .end local v2    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v3, "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eq v2, v3, :cond_1

    #@10
    move-object v0, v3

    #@11
    :goto_1
    move-object v2, v3

    #@12
    .end local v3    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v2    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    goto :goto_0

    #@13
    .end local v2    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v3    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_1
    move-object v0, v1

    #@14
    goto :goto_1

    #@15
    .line 751
    .end local v3    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v2    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_2
    if-eq v0, v2, :cond_3

    #@17
    .line 754
    invoke-direct {p0, v2, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->casTail(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    #@1a
    move-result v4

    #@1b
    .line 751
    if-eqz v4, :cond_0

    #@1d
    .line 755
    :cond_3
    return-object v0
.end method

.method nextTerminator()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 259
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedDeque;->NEXT_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@2
    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 982
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->offerLast(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 886
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->linkFirst(Ljava/lang/Object;)V

    #@3
    .line 887
    const/4 v0, 0x1

    #@4
    return v0
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 900
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->linkLast(Ljava/lang/Object;)V

    #@3
    .line 901
    const/4 v0, 0x1

    #@4
    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 999
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->peekFirst()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    const/4 v2, 0x0

    #@1
    .line 905
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@4
    move-result-object v1

    #@5
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_1

    #@7
    .line 906
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@9
    .line 907
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    #@b
    .line 908
    return-object v0

    #@c
    .line 905
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->succ(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@f
    move-result-object v1

    #@10
    goto :goto_0

    #@11
    .line 910
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    :cond_1
    return-object v2
.end method

.method public peekLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    const/4 v2, 0x0

    #@1
    .line 914
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->last()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@4
    move-result-object v1

    #@5
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_1

    #@7
    .line 915
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@9
    .line 916
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    #@b
    .line 917
    return-object v0

    #@c
    .line 914
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pred(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@f
    move-result-object v1

    #@10
    goto :goto_0

    #@11
    .line 919
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    :cond_1
    return-object v2
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 997
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pollFirst()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 937
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@4
    move-result-object v1

    #@5
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_1

    #@7
    .line 938
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@9
    .line 939
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    #@b
    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 940
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->unlink(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@14
    .line 941
    return-object v0

    #@15
    .line 937
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->succ(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@18
    move-result-object v1

    #@19
    goto :goto_0

    #@1a
    .line 944
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    :cond_1
    return-object v3
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 948
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->last()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@4
    move-result-object v1

    #@5
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_1

    #@7
    .line 949
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@9
    .line 950
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    #@b
    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 951
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->unlink(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@14
    .line 952
    return-object v0

    #@15
    .line 948
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pred(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@18
    move-result-object v1

    #@19
    goto :goto_0

    #@1a
    .line 955
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    :cond_1
    return-object v3
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 1002
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->removeFirst()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method final pred(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;)",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 707
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@2
    .line 708
    .local v0, "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-ne p1, v0, :cond_0

    #@4
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->last()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@7
    move-result-object v0

    #@8
    .end local v0    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_0
    return-object v0
.end method

.method prevTerminator()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 254
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedDeque;->PREV_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@2
    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1001
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->addFirst(Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 998
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->removeFirst()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1108
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 962
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pollFirst()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->screenNullResult(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 1014
    invoke-static {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->checkNotNull(Ljava/lang/Object;)V

    #@4
    .line 1015
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@7
    move-result-object v1

    #@8
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_1

    #@a
    .line 1016
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@c
    .line 1017
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    #@e
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 1018
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->unlink(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@1d
    .line 1019
    const/4 v2, 0x1

    #@1e
    return v2

    #@1f
    .line 1015
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->succ(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@22
    move-result-object v1

    #@23
    goto :goto_0

    #@24
    .line 1022
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    :cond_1
    const/4 v2, 0x0

    #@25
    return v2
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 969
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pollLast()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->screenNullResult(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 1035
    invoke-static {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->checkNotNull(Ljava/lang/Object;)V

    #@4
    .line 1036
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->last()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@7
    move-result-object v1

    #@8
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_1

    #@a
    .line 1037
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@c
    .line 1038
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    #@e
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 1039
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->unlink(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@1d
    .line 1040
    const/4 v2, 0x1

    #@1e
    return v2

    #@1f
    .line 1036
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pred(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@22
    move-result-object v1

    #@23
    goto :goto_0

    #@24
    .line 1043
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    :cond_1
    const/4 v2, 0x0

    #@25
    return v2
.end method

.method public size()I
    .locals 3

    #@0
    .prologue
    .line 1089
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    const/4 v0, 0x0

    #@1
    .line 1090
    .local v0, "count":I
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@4
    move-result-object v1

    #@5
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_0

    #@7
    .line 1091
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@9
    if-eqz v2, :cond_1

    #@b
    .line 1093
    add-int/lit8 v0, v0, 0x1

    #@d
    const v2, 0x7fffffff

    #@10
    if-ne v0, v2, :cond_1

    #@12
    .line 1095
    :cond_0
    return v0

    #@13
    .line 1090
    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->succ(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@16
    move-result-object v1

    #@17
    goto :goto_0
.end method

.method final succ(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;)",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 697
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@2
    .line 698
    .local v0, "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-ne p1, v0, :cond_0

    #@4
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@7
    move-result-object v0

    #@8
    .end local v0    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_0
    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1197
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->toArrayList()Ljava/util/ArrayList;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 1238
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->toArrayList()Ljava/util/ArrayList;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method unlink(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 398
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "x":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    iget-object v7, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@2
    .line 399
    .local v7, "prev":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    iget-object v5, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@4
    .line 400
    .local v5, "next":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v7, :cond_1

    #@6
    .line 401
    invoke-direct {p0, p1, v5}, Ljava/util/concurrent/ConcurrentLinkedDeque;->unlinkFirst(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@9
    .line 392
    :cond_0
    :goto_0
    return-void

    #@a
    .line 402
    :cond_1
    if-nez v5, :cond_2

    #@c
    .line 403
    invoke-direct {p0, p1, v7}, Ljava/util/concurrent/ConcurrentLinkedDeque;->unlinkLast(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@f
    goto :goto_0

    #@10
    .line 426
    :cond_2
    const/4 v2, 0x1

    #@11
    .line 429
    .local v2, "hops":I
    move-object v6, v7

    #@12
    .line 430
    .local v6, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_1
    iget-object v9, v6, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@14
    if-eqz v9, :cond_3

    #@16
    .line 431
    move-object v0, v6

    #@17
    .line 432
    .local v0, "activePred":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    const/4 v3, 0x0

    #@18
    .line 450
    .local v3, "isFirst":Z
    :goto_2
    move-object v6, v5

    #@19
    .line 451
    :goto_3
    iget-object v9, v6, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@1b
    if-eqz v9, :cond_7

    #@1d
    .line 452
    move-object v1, v6

    #@1e
    .line 453
    .local v1, "activeSucc":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    const/4 v4, 0x0

    #@1f
    .line 471
    .local v4, "isLast":Z
    :goto_4
    const/4 v9, 0x2

    #@20
    if-ge v2, v9, :cond_b

    #@22
    .line 473
    or-int v9, v3, v4

    #@24
    .line 471
    if-eqz v9, :cond_b

    #@26
    .line 474
    return-void

    #@27
    .line 435
    .end local v0    # "activePred":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v1    # "activeSucc":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v3    # "isFirst":Z
    .end local v4    # "isLast":Z
    :cond_3
    iget-object v8, v6, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@29
    .line 436
    .local v8, "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v8, :cond_5

    #@2b
    .line 437
    iget-object v9, v6, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@2d
    if-ne v9, v6, :cond_4

    #@2f
    .line 438
    return-void

    #@30
    .line 439
    :cond_4
    move-object v0, v6

    #@31
    .line 440
    .restart local v0    # "activePred":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    const/4 v3, 0x1

    #@32
    .line 441
    .restart local v3    # "isFirst":Z
    goto :goto_2

    #@33
    .line 443
    .end local v0    # "activePred":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v3    # "isFirst":Z
    :cond_5
    if-ne v6, v8, :cond_6

    #@35
    .line 444
    return-void

    #@36
    .line 446
    :cond_6
    move-object v6, v8

    #@37
    .line 429
    add-int/lit8 v2, v2, 0x1

    #@39
    goto :goto_1

    #@3a
    .line 456
    .end local v8    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v0    # "activePred":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v3    # "isFirst":Z
    :cond_7
    iget-object v8, v6, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@3c
    .line 457
    .restart local v8    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v8, :cond_9

    #@3e
    .line 458
    iget-object v9, v6, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@40
    if-ne v9, v6, :cond_8

    #@42
    .line 459
    return-void

    #@43
    .line 460
    :cond_8
    move-object v1, v6

    #@44
    .line 461
    .restart local v1    # "activeSucc":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    const/4 v4, 0x1

    #@45
    .line 462
    .restart local v4    # "isLast":Z
    goto :goto_4

    #@46
    .line 464
    .end local v1    # "activeSucc":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v4    # "isLast":Z
    :cond_9
    if-ne v6, v8, :cond_a

    #@48
    .line 465
    return-void

    #@49
    .line 467
    :cond_a
    move-object v6, v8

    #@4a
    .line 450
    add-int/lit8 v2, v2, 0x1

    #@4c
    goto :goto_3

    #@4d
    .line 478
    .end local v8    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v1    # "activeSucc":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v4    # "isLast":Z
    :cond_b
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->skipDeletedSuccessors(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@50
    .line 479
    invoke-direct {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->skipDeletedPredecessors(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@53
    .line 482
    or-int v9, v3, v4

    #@55
    if-eqz v9, :cond_0

    #@57
    .line 485
    iget-object v9, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@59
    if-ne v9, v1, :cond_0

    #@5b
    .line 486
    iget-object v9, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@5d
    if-ne v9, v0, :cond_0

    #@5f
    .line 487
    if-eqz v3, :cond_c

    #@61
    iget-object v9, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@63
    if-nez v9, :cond_0

    #@65
    .line 488
    :goto_5
    if-eqz v4, :cond_d

    #@67
    iget-object v9, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@69
    if-nez v9, :cond_0

    #@6b
    .line 490
    :goto_6
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->updateHead()V

    #@6e
    .line 491
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->updateTail()V

    #@71
    .line 494
    if-eqz v3, :cond_e

    #@73
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->prevTerminator()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@76
    move-result-object v9

    #@77
    :goto_7
    invoke-virtual {p1, v9}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@7a
    .line 495
    if-eqz v4, :cond_f

    #@7c
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->nextTerminator()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@7f
    move-result-object v9

    #@80
    :goto_8
    invoke-virtual {p1, v9}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@83
    goto :goto_0

    #@84
    .line 487
    :cond_c
    iget-object v9, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@86
    if-eqz v9, :cond_0

    #@88
    goto :goto_5

    #@89
    .line 488
    :cond_d
    iget-object v9, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@8b
    if-eqz v9, :cond_0

    #@8d
    goto :goto_6

    #@8e
    :cond_e
    move-object v9, p1

    #@8f
    .line 494
    goto :goto_7

    #@90
    :cond_f
    move-object v9, p1

    #@91
    .line 495
    goto :goto_8
.end method
