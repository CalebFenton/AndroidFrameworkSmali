.class public Ljava/util/concurrent/ConcurrentLinkedDeque;
.super Ljava/util/AbstractCollection;
.source "ConcurrentLinkedDeque.java"

# interfaces
.implements Ljava/util/Deque;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;,
        Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;,
        Ljava/util/concurrent/ConcurrentLinkedDeque$DescendingItr;,
        Ljava/util/concurrent/ConcurrentLinkedDeque$Itr;,
        Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
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
.field private static final HEAD:J

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

.field private static final TAIL:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final serialVersionUID:J = 0xc29535d4a608822L


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
    .line 1582
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v1

    #@4
    sput-object v1, Ljava/util/concurrent/ConcurrentLinkedDeque;->U:Lsun/misc/Unsafe;

    #@6
    .line 1586
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@8
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>()V

    #@b
    sput-object v1, Ljava/util/concurrent/ConcurrentLinkedDeque;->PREV_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@d
    .line 1587
    sget-object v1, Ljava/util/concurrent/ConcurrentLinkedDeque;->PREV_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@f
    sget-object v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->PREV_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@11
    iput-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@13
    .line 1588
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@15
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>()V

    #@18
    sput-object v1, Ljava/util/concurrent/ConcurrentLinkedDeque;->NEXT_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@1a
    .line 1589
    sget-object v1, Ljava/util/concurrent/ConcurrentLinkedDeque;->NEXT_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@1c
    sget-object v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->NEXT_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@1e
    iput-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@20
    .line 1591
    :try_start_0
    sget-object v1, Ljava/util/concurrent/ConcurrentLinkedDeque;->U:Lsun/misc/Unsafe;

    #@22
    .line 1592
    const-class v2, Ljava/util/concurrent/ConcurrentLinkedDeque;

    #@24
    const-string/jumbo v3, "head"

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@2a
    move-result-object v2

    #@2b
    .line 1591
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@2e
    move-result-wide v2

    #@2f
    sput-wide v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->HEAD:J

    #@31
    .line 1593
    sget-object v1, Ljava/util/concurrent/ConcurrentLinkedDeque;->U:Lsun/misc/Unsafe;

    #@33
    .line 1594
    const-class v2, Ljava/util/concurrent/ConcurrentLinkedDeque;

    #@35
    const-string/jumbo v3, "tail"

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@3b
    move-result-object v2

    #@3c
    .line 1593
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@3f
    move-result-wide v2

    #@40
    sput-wide v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->TAIL:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@42
    .line 64
    return-void

    #@43
    .line 1595
    :catch_0
    move-exception v0

    #@44
    .line 1596
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    #@46
    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@49
    throw v1
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 775
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    #@3
    .line 776
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
    .line 775
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
    .line 788
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    #@3
    .line 790
    const/4 v2, 0x0

    #@4
    .local v2, "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    const/4 v4, 0x0

    #@5
    .line 791
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
    .line 792
    .local v0, "e":Ljava/lang/Object;, "TE;"
    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@15
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v5

    #@19
    invoke-direct {v3, v5}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>(Ljava/lang/Object;)V

    #@1c
    .line 793
    .local v3, "newNode":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v2, :cond_0

    #@1e
    .line 794
    move-object v4, v3

    #@1f
    .local v4, "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v2, v3

    #@20
    .local v2, "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    goto :goto_0

    #@21
    .line 796
    .end local v2    # "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v4    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_0
    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@24
    .line 797
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@27
    .line 798
    move-object v4, v3

    #@28
    .restart local v4    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    goto :goto_0

    #@29
    .line 801
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .end local v3    # "newNode":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v4    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_1
    invoke-direct {p0, v2, v4}, Ljava/util/concurrent/ConcurrentLinkedDeque;->initHeadTail(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@2c
    .line 788
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
    .line 1573
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "cmp":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local p2, "val":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedDeque;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->HEAD:J

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
    .line 1577
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "cmp":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local p2, "val":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedDeque;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->TAIL:J

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
    .line 808
    if-ne p1, p2, :cond_0

    #@3
    .line 809
    if-nez p1, :cond_1

    #@5
    .line 810
    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@7
    .end local p2    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    invoke-direct {p2, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>(Ljava/lang/Object;)V

    #@a
    .restart local p2    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object p1, p2

    #@b
    .line 819
    :cond_0
    :goto_0
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@d
    .line 820
    iput-object p2, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@f
    .line 807
    return-void

    #@10
    .line 813
    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@12
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>(Ljava/lang/Object;)V

    #@15
    .line 814
    .local v0, "newNode":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@18
    .line 815
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@1b
    .line 816
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
    .line 323
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v5

    #@7
    invoke-direct {v2, v5}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>(Ljava/lang/Object;)V

    #@a
    .line 327
    .local v2, "newNode":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@c
    .local v0, "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v3, v0

    #@d
    .line 328
    .local v3, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_1
    :goto_0
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@f
    .local v4, "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eqz v4, :cond_3

    #@11
    .line 329
    move-object v3, v4

    #@12
    iget-object v4, v4, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@14
    if-eqz v4, :cond_3

    #@16
    .line 332
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@18
    .end local v0    # "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v1, "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eq v0, v1, :cond_2

    #@1a
    move-object v3, v1

    #@1b
    :goto_1
    move-object v0, v1

    #@1c
    .end local v1    # "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v0    # "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    goto :goto_0

    #@1d
    .end local v0    # "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v1    # "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_2
    move-object v3, v4

    #@1e
    goto :goto_1

    #@1f
    .line 333
    .end local v1    # "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v0    # "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_3
    iget-object v5, v3, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@21
    if-eq v5, v3, :cond_0

    #@23
    .line 337
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@26
    .line 338
    invoke-virtual {v3, v6, v2}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    #@29
    move-result v5

    #@2a
    if-eqz v5, :cond_1

    #@2c
    .line 342
    if-eq v3, v0, :cond_4

    #@2e
    .line 343
    invoke-direct {p0, v0, v2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->casHead(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    #@31
    .line 344
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
    .line 355
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v5

    #@7
    invoke-direct {v0, v5}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>(Ljava/lang/Object;)V

    #@a
    .line 359
    .local v0, "newNode":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@c
    .local v3, "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v1, v3

    #@d
    .line 360
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_1
    :goto_0
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@f
    .local v2, "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eqz v2, :cond_3

    #@11
    .line 361
    move-object v1, v2

    #@12
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@14
    if-eqz v2, :cond_3

    #@16
    .line 364
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@18
    .end local v3    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v4, "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eq v3, v4, :cond_2

    #@1a
    move-object v1, v4

    #@1b
    :goto_1
    move-object v3, v4

    #@1c
    .end local v4    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v3    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    goto :goto_0

    #@1d
    .end local v3    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v4    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_2
    move-object v1, v2

    #@1e
    goto :goto_1

    #@1f
    .line 365
    .end local v4    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v3    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_3
    iget-object v5, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@21
    if-eq v5, v1, :cond_0

    #@23
    .line 369
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@26
    .line 370
    invoke-virtual {v1, v6, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    #@29
    move-result v5

    #@2a
    if-eqz v5, :cond_1

    #@2c
    .line 374
    if-eq v1, v3, :cond_4

    #@2e
    .line 375
    invoke-direct {p0, v3, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->casTail(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    #@31
    .line 376
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
    .line 1554
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 1557
    const/4 v0, 0x0

    #@4
    .local v0, "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    const/4 v3, 0x0

    #@5
    .line 1558
    .end local v0    # "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    .local v1, "item":Ljava/lang/Object;
    if-eqz v1, :cond_1

    #@b
    .line 1560
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@d
    invoke-direct {v2, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>(Ljava/lang/Object;)V

    #@10
    .line 1561
    .local v2, "newNode":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v0, :cond_0

    #@12
    .line 1562
    move-object v3, v2

    #@13
    .local v3, "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v0, v2

    #@14
    .local v0, "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    goto :goto_0

    #@15
    .line 1564
    .end local v0    # "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v3    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@18
    .line 1565
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@1b
    .line 1566
    move-object v3, v2

    #@1c
    .restart local v3    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    goto :goto_0

    #@1d
    .line 1569
    .end local v2    # "newNode":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v3    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_1
    invoke-direct {p0, v0, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->initHeadTail(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@20
    .line 1553
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
    .line 767
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "v":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    #@2
    .line 768
    new-instance v0, Ljava/util/NoSuchElementException;

    #@4
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@7
    throw v0

    #@8
    .line 769
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
    .line 627
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "x":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_0
    iget-object v1, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@2
    .line 631
    .local v1, "prev":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v0, v1

    #@3
    .line 634
    .local v0, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@5
    if-eqz v3, :cond_3

    #@7
    .line 649
    :cond_1
    if-eq v1, v0, :cond_2

    #@9
    invoke-virtual {p1, v1, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_4

    #@f
    .line 650
    :cond_2
    return-void

    #@10
    .line 636
    :cond_3
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@12
    .line 637
    .local v2, "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v2, :cond_5

    #@14
    .line 638
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@16
    if-ne v3, v0, :cond_1

    #@18
    .line 652
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
    .line 624
    return-void

    #@21
    .line 642
    .restart local v2    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_5
    if-eq v0, v2, :cond_4

    #@23
    .line 645
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
    .line 658
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "x":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_0
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@2
    .line 662
    .local v0, "next":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v1, v0

    #@3
    .line 665
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@5
    if-eqz v3, :cond_3

    #@7
    .line 680
    :cond_1
    if-eq v0, v1, :cond_2

    #@9
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_4

    #@f
    .line 681
    :cond_2
    return-void

    #@10
    .line 667
    :cond_3
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@12
    .line 668
    .local v2, "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v2, :cond_5

    #@14
    .line 669
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@16
    if-ne v3, v1, :cond_1

    #@18
    .line 683
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
    .line 655
    return-void

    #@21
    .line 673
    .restart local v2    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_5
    if-eq v1, v2, :cond_4

    #@23
    .line 676
    move-object v1, v2

    #@24
    goto :goto_0
.end method

.method private toArrayInternal([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 9
    .param p1, "a"    # [Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 1212
    move-object v5, p1

    #@3
    .line 1214
    .local v5, "x":[Ljava/lang/Object;
    :cond_0
    const/4 v3, 0x0

    #@4
    .line 1215
    .local v3, "size":I
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@7
    move-result-object v1

    #@8
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v2, v1

    #@9
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v2, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move v4, v3

    #@a
    .end local v3    # "size":I
    .local v4, "size":I
    :goto_0
    if-eqz v2, :cond_3

    #@c
    .line 1216
    iget-object v0, v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@e
    .line 1217
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_9

    #@10
    .line 1218
    if-nez v5, :cond_2

    #@12
    .line 1219
    const/4 v6, 0x4

    #@13
    new-array v5, v6, [Ljava/lang/Object;

    #@15
    .line 1222
    :cond_1
    :goto_1
    add-int/lit8 v3, v4, 0x1

    #@17
    .end local v4    # "size":I
    .restart local v3    # "size":I
    aput-object v0, v5, v4

    #@19
    .line 1224
    :goto_2
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@1b
    .end local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eq v2, v1, :cond_0

    #@1d
    move-object v2, v1

    #@1e
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move v4, v3

    #@1f
    .end local v3    # "size":I
    .restart local v4    # "size":I
    goto :goto_0

    #@20
    .line 1220
    :cond_2
    array-length v6, v5

    #@21
    if-ne v4, v6, :cond_1

    #@23
    .line 1221
    add-int/lit8 v6, v4, 0x4

    #@25
    mul-int/lit8 v6, v6, 0x2

    #@27
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@2a
    move-result-object v5

    #@2b
    goto :goto_1

    #@2c
    .line 1227
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    :cond_3
    if-nez v5, :cond_4

    #@2e
    .line 1228
    new-array v6, v8, [Ljava/lang/Object;

    #@30
    return-object v6

    #@31
    .line 1229
    :cond_4
    if-eqz p1, :cond_7

    #@33
    array-length v6, p1

    #@34
    if-gt v4, v6, :cond_7

    #@36
    .line 1230
    if-eq p1, v5, :cond_5

    #@38
    .line 1231
    invoke-static {v5, v8, p1, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3b
    .line 1232
    :cond_5
    array-length v6, p1

    #@3c
    if-ge v4, v6, :cond_6

    #@3e
    .line 1233
    aput-object v7, p1, v4

    #@40
    .line 1234
    :cond_6
    return-object p1

    #@41
    .line 1236
    :cond_7
    array-length v6, v5

    #@42
    if-ne v4, v6, :cond_8

    #@44
    .end local v5    # "x":[Ljava/lang/Object;
    :goto_3
    return-object v5

    #@45
    .restart local v5    # "x":[Ljava/lang/Object;
    :cond_8
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@48
    move-result-object v5

    #@49
    goto :goto_3

    #@4a
    .restart local v0    # "item":Ljava/lang/Object;, "TE;"
    :cond_9
    move v3, v4

    #@4b
    .end local v4    # "size":I
    .restart local v3    # "size":I
    goto :goto_2
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
    .line 503
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "first":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local p2, "next":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    const/4 v0, 0x0

    #@1
    .local v0, "o":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v1, p2

    #@2
    .line 504
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
    .line 505
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
    .line 506
    invoke-direct {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->skipDeletedPredecessors(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@19
    .line 507
    iget-object v3, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@1b
    if-nez v3, :cond_2

    #@1d
    .line 508
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@1f
    if-eqz v3, :cond_1

    #@21
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@23
    if-eqz v3, :cond_2

    #@25
    .line 509
    :cond_1
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@27
    if-ne v3, p1, :cond_2

    #@29
    .line 511
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->updateHead()V

    #@2c
    .line 512
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->updateTail()V

    #@2f
    .line 515
    invoke-virtual {v0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@32
    .line 516
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->prevTerminator()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@39
    .line 519
    :cond_2
    return-void

    #@3a
    .line 521
    .restart local v2    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_3
    if-ne v1, v2, :cond_4

    #@3c
    .line 522
    return-void

    #@3d
    .line 524
    :cond_4
    move-object v0, v1

    #@3e
    .line 525
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
    .line 537
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "last":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local p2, "prev":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    const/4 v0, 0x0

    #@1
    .local v0, "o":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v1, p2

    #@2
    .line 538
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
    .line 539
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
    .line 540
    invoke-direct {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->skipDeletedSuccessors(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@19
    .line 541
    iget-object v3, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@1b
    if-nez v3, :cond_2

    #@1d
    .line 542
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@1f
    if-eqz v3, :cond_1

    #@21
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@23
    if-eqz v3, :cond_2

    #@25
    .line 543
    :cond_1
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@27
    if-ne v3, p1, :cond_2

    #@29
    .line 545
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->updateHead()V

    #@2c
    .line 546
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->updateTail()V

    #@2f
    .line 549
    invoke-virtual {v0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@32
    .line 550
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->nextTerminator()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@39
    .line 553
    :cond_2
    return-void

    #@3a
    .line 555
    .restart local v2    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_3
    if-ne v1, v2, :cond_4

    #@3c
    .line 556
    return-void

    #@3d
    .line 558
    :cond_4
    move-object v0, v1

    #@3e
    .line 559
    .local v0, "o":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v1, v2

    #@3f
    goto :goto_0
.end method

.method private final updateHead()V
    .locals 4

    #@0
    .prologue
    .line 575
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
    .line 577
    :goto_0
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@c
    .local v2, "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eqz v2, :cond_1

    #@e
    .line 578
    move-object v1, v2

    #@f
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@11
    if-nez v2, :cond_2

    #@13
    .line 581
    :cond_1
    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->casHead(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 582
    return-void

    #@1a
    .line 586
    :cond_2
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@1c
    if-ne v0, v3, :cond_0

    #@1e
    .line 589
    move-object v1, v2

    #@1f
    goto :goto_0

    #@20
    .line 570
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v2    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_3
    return-void
.end method

.method private final updateTail()V
    .locals 4

    #@0
    .prologue
    .line 605
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
    .line 607
    :goto_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@c
    .local v1, "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eqz v1, :cond_1

    #@e
    .line 608
    move-object v0, v1

    #@f
    iget-object v1, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@11
    if-nez v1, :cond_2

    #@13
    .line 611
    :cond_1
    invoke-direct {p0, v2, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->casTail(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 612
    return-void

    #@1a
    .line 616
    :cond_2
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@1c
    if-ne v2, v3, :cond_0

    #@1e
    .line 619
    move-object v0, v1

    #@1f
    goto :goto_0

    #@20
    .line 600
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
    .line 1532
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@4
    .line 1535
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@7
    move-result-object v1

    #@8
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_1

    #@a
    .line 1536
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@c
    .line 1537
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    #@e
    .line 1538
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@11
    .line 1535
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->succ(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@14
    move-result-object v1

    #@15
    goto :goto_0

    #@16
    .line 1542
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    :cond_1
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@19
    .line 1529
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
    .line 963
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
    .line 1126
    if-ne p1, p0, :cond_0

    #@3
    .line 1128
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@5
    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@8
    throw v9

    #@9
    .line 1131
    :cond_0
    const/4 v0, 0x0

    #@a
    .local v0, "beginningOfTheEnd":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    const/4 v3, 0x0

    #@b
    .line 1132
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
    .line 1133
    .local v1, "e":Ljava/lang/Object;, "TE;"
    new-instance v4, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@1b
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v9

    #@1f
    invoke-direct {v4, v9}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>(Ljava/lang/Object;)V

    #@22
    .line 1134
    .local v4, "newNode":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v0, :cond_1

    #@24
    .line 1135
    move-object v3, v4

    #@25
    .local v3, "last":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v0, v4

    #@26
    .local v0, "beginningOfTheEnd":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    goto :goto_0

    #@27
    .line 1137
    .end local v0    # "beginningOfTheEnd":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v3    # "last":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@2a
    .line 1138
    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@2d
    .line 1139
    move-object v3, v4

    #@2e
    .restart local v3    # "last":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    goto :goto_0

    #@2f
    .line 1142
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    .end local v3    # "last":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v4    # "newNode":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_2
    if-nez v0, :cond_4

    #@31
    .line 1143
    const/4 v9, 0x0

    #@32
    return v9

    #@33
    .line 1154
    .local v5, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v6, "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v7, "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_3
    iget-object v9, v5, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@35
    if-ne v9, v5, :cond_7

    #@37
    .line 1148
    .end local v5    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v6    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v7    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_4
    iget-object v7, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@39
    .restart local v7    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v5, v7

    #@3a
    .line 1149
    .restart local v5    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_5
    :goto_1
    iget-object v6, v5, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@3c
    .restart local v6    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eqz v6, :cond_3

    #@3e
    .line 1150
    move-object v5, v6

    #@3f
    iget-object v6, v6, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@41
    if-eqz v6, :cond_3

    #@43
    .line 1153
    iget-object v8, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@45
    .end local v7    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v8, "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eq v7, v8, :cond_6

    #@47
    move-object v5, v8

    #@48
    :goto_2
    move-object v7, v8

    #@49
    .end local v8    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v7    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    goto :goto_1

    #@4a
    .end local v7    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v8    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_6
    move-object v5, v6

    #@4b
    goto :goto_2

    #@4c
    .line 1158
    .end local v8    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v7    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_7
    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@4f
    .line 1159
    invoke-virtual {v5, v10, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    #@52
    move-result v9

    #@53
    if-eqz v9, :cond_5

    #@55
    .line 1162
    invoke-direct {p0, v7, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->casTail(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    #@58
    move-result v9

    #@59
    if-nez v9, :cond_8

    #@5b
    .line 1165
    iget-object v7, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@5d
    .line 1166
    iget-object v9, v3, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@5f
    if-nez v9, :cond_8

    #@61
    .line 1167
    invoke-direct {p0, v7, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->casTail(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    #@64
    .line 1169
    :cond_8
    const/4 v9, 0x1

    #@65
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
    .line 831
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->linkFirst(Ljava/lang/Object;)V

    #@3
    .line 830
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
    .line 844
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->linkLast(Ljava/lang/Object;)V

    #@3
    .line 843
    return-void
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 1180
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pollFirst()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1179
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1046
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    if-eqz p1, :cond_1

    #@2
    .line 1047
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@5
    move-result-object v1

    #@6
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_1

    #@8
    .line 1048
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@a
    .line 1049
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    #@c
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 1050
    const/4 v2, 0x1

    #@13
    return v2

    #@14
    .line 1047
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->succ(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@17
    move-result-object v1

    #@18
    goto :goto_0

    #@19
    .line 1053
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_1
    const/4 v2, 0x0

    #@1a
    return v2
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
    .line 1324
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
    .line 982
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
    .line 716
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@2
    .local v0, "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v2, v0

    #@3
    .line 717
    .local v2, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@5
    .local v3, "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eqz v3, :cond_2

    #@7
    .line 718
    move-object v2, v3

    #@8
    iget-object v3, v3, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@a
    if-eqz v3, :cond_2

    #@c
    .line 721
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
    .line 722
    .end local v1    # "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v0    # "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_2
    if-eq v2, v0, :cond_3

    #@17
    .line 725
    invoke-direct {p0, v0, v2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->casHead(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    #@1a
    move-result v4

    #@1b
    .line 722
    if-eqz v4, :cond_0

    #@1d
    .line 726
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
    .line 895
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
    .line 902
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
    .line 1062
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
    .line 1310
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
    .line 741
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@2
    .local v2, "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v0, v2

    #@3
    .line 742
    .local v0, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@5
    .local v1, "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eqz v1, :cond_2

    #@7
    .line 743
    move-object v0, v1

    #@8
    iget-object v1, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@a
    if-eqz v1, :cond_2

    #@c
    .line 746
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
    .line 747
    .end local v3    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v2    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_2
    if-eq v0, v2, :cond_3

    #@17
    .line 750
    invoke-direct {p0, v2, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->casTail(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    #@1a
    move-result v4

    #@1b
    .line 747
    if-eqz v4, :cond_0

    #@1d
    .line 751
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
    .line 951
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
    .line 855
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->linkFirst(Ljava/lang/Object;)V

    #@3
    .line 856
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
    .line 869
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->linkLast(Ljava/lang/Object;)V

    #@3
    .line 870
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
    .line 967
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
    .line 874
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@4
    move-result-object v1

    #@5
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_1

    #@7
    .line 875
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@9
    .line 876
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    #@b
    .line 877
    return-object v0

    #@c
    .line 874
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->succ(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@f
    move-result-object v1

    #@10
    goto :goto_0

    #@11
    .line 879
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
    .line 883
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->last()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@4
    move-result-object v1

    #@5
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_1

    #@7
    .line 884
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@9
    .line 885
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    #@b
    .line 886
    return-object v0

    #@c
    .line 883
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pred(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@f
    move-result-object v1

    #@10
    goto :goto_0

    #@11
    .line 888
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
    .line 966
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
    .line 906
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@4
    move-result-object v1

    #@5
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_1

    #@7
    .line 907
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@9
    .line 908
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    #@b
    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 909
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->unlink(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@14
    .line 910
    return-object v0

    #@15
    .line 906
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->succ(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@18
    move-result-object v1

    #@19
    goto :goto_0

    #@1a
    .line 913
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
    .line 917
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->last()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@4
    move-result-object v1

    #@5
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_1

    #@7
    .line 918
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@9
    .line 919
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    #@b
    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 920
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->unlink(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@14
    .line 921
    return-object v0

    #@15
    .line 917
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pred(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@18
    move-result-object v1

    #@19
    goto :goto_0

    #@1a
    .line 924
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
    .line 977
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
    .line 703
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@2
    .line 704
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
    .line 987
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
    .line 972
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
    .line 1110
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
    .line 931
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
    .line 1002
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    .line 1003
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@7
    move-result-object v1

    #@8
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_1

    #@a
    .line 1004
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@c
    .line 1005
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
    .line 1006
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->unlink(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@1d
    .line 1007
    const/4 v2, 0x1

    #@1e
    return v2

    #@1f
    .line 1003
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->succ(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@22
    move-result-object v1

    #@23
    goto :goto_0

    #@24
    .line 1010
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
    .line 938
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
    .line 1026
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    .line 1027
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->last()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@7
    move-result-object v1

    #@8
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_1

    #@a
    .line 1028
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@c
    .line 1029
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
    .line 1030
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->unlink(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@1d
    .line 1031
    const/4 v2, 0x1

    #@1e
    return v2

    #@1f
    .line 1027
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pred(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@22
    move-result-object v1

    #@23
    goto :goto_0

    #@24
    .line 1034
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    :cond_1
    const/4 v2, 0x0

    #@25
    return v2
.end method

.method public size()I
    .locals 4

    #@0
    .prologue
    .line 1083
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    :cond_0
    const/4 v0, 0x0

    #@1
    .line 1084
    .local v0, "count":I
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@4
    move-result-object v1

    #@5
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v2, v1

    #@6
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v2, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    if-eqz v2, :cond_1

    #@8
    .line 1085
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@a
    if-eqz v3, :cond_2

    #@c
    .line 1086
    add-int/lit8 v0, v0, 0x1

    #@e
    const v3, 0x7fffffff

    #@11
    if-ne v0, v3, :cond_2

    #@13
    .line 1091
    :cond_1
    return v0

    #@14
    .line 1088
    :cond_2
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@16
    .end local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eq v2, v1, :cond_0

    #@18
    move-object v2, v1

    #@19
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    goto :goto_0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1517
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;

    #@2
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;-><init>(Ljava/util/concurrent/ConcurrentLinkedDeque;)V

    #@5
    return-object v0
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
    .line 693
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@2
    .line 694
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
    .line 1254
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->toArrayInternal([Ljava/lang/Object;)[Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
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
    .line 1296
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 1297
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->toArrayInternal([Ljava/lang/Object;)[Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    .line 1185
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    const/4 v0, 0x0

    #@1
    .line 1187
    :cond_0
    const/4 v1, 0x0

    #@2
    .line 1188
    .local v1, "charLength":I
    const/4 v6, 0x0

    #@3
    .line 1189
    .local v6, "size":I
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@6
    move-result-object v3

    #@7
    .local v3, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v4, v3

    #@8
    .end local v3    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v4, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move v7, v6

    #@9
    .end local v6    # "size":I
    .local v7, "size":I
    :goto_0
    if-eqz v4, :cond_3

    #@b
    .line 1190
    iget-object v2, v4, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@d
    .line 1191
    .local v2, "item":Ljava/lang/Object;, "TE;"
    if-eqz v2, :cond_5

    #@f
    .line 1192
    if-nez v0, :cond_2

    #@11
    .line 1193
    const/4 v8, 0x4

    #@12
    new-array v0, v8, [Ljava/lang/String;

    #@14
    .line 1196
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@17
    move-result-object v5

    #@18
    .line 1197
    .local v5, "s":Ljava/lang/String;
    add-int/lit8 v6, v7, 0x1

    #@1a
    .end local v7    # "size":I
    .restart local v6    # "size":I
    aput-object v5, v0, v7

    #@1c
    .line 1198
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@1f
    move-result v8

    #@20
    add-int/2addr v1, v8

    #@21
    .line 1200
    .end local v5    # "s":Ljava/lang/String;
    :goto_2
    iget-object v3, v4, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@23
    .end local v4    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v3    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eq v4, v3, :cond_0

    #@25
    move-object v4, v3

    #@26
    .end local v3    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v4    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move v7, v6

    #@27
    .end local v6    # "size":I
    .restart local v7    # "size":I
    goto :goto_0

    #@28
    .line 1194
    :cond_2
    array-length v8, v0

    #@29
    if-ne v7, v8, :cond_1

    #@2b
    .line 1195
    mul-int/lit8 v8, v7, 0x2

    #@2d
    invoke-static {v0, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, [Ljava/lang/String;

    #@33
    .local v0, "a":[Ljava/lang/String;
    goto :goto_1

    #@34
    .line 1204
    .end local v0    # "a":[Ljava/lang/String;
    .end local v2    # "item":Ljava/lang/Object;, "TE;"
    :cond_3
    if-nez v7, :cond_4

    #@36
    .line 1205
    const-string/jumbo v8, "[]"

    #@39
    return-object v8

    #@3a
    .line 1207
    :cond_4
    invoke-static {v0, v7, v1}, Ljava/util/concurrent/Helpers;->toString([Ljava/lang/Object;II)Ljava/lang/String;

    #@3d
    move-result-object v8

    #@3e
    return-object v8

    #@3f
    .restart local v2    # "item":Ljava/lang/Object;, "TE;"
    :cond_5
    move v6, v7

    #@40
    .end local v7    # "size":I
    .restart local v6    # "size":I
    goto :goto_2
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
    .line 394
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "x":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    iget-object v7, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@2
    .line 395
    .local v7, "prev":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    iget-object v5, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@4
    .line 396
    .local v5, "next":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v7, :cond_1

    #@6
    .line 397
    invoke-direct {p0, p1, v5}, Ljava/util/concurrent/ConcurrentLinkedDeque;->unlinkFirst(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@9
    .line 388
    :cond_0
    :goto_0
    return-void

    #@a
    .line 398
    :cond_1
    if-nez v5, :cond_2

    #@c
    .line 399
    invoke-direct {p0, p1, v7}, Ljava/util/concurrent/ConcurrentLinkedDeque;->unlinkLast(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@f
    goto :goto_0

    #@10
    .line 422
    :cond_2
    const/4 v2, 0x1

    #@11
    .line 425
    .local v2, "hops":I
    move-object v6, v7

    #@12
    .line 426
    .local v6, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_1
    iget-object v9, v6, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@14
    if-eqz v9, :cond_3

    #@16
    .line 427
    move-object v0, v6

    #@17
    .line 428
    .local v0, "activePred":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    const/4 v3, 0x0

    #@18
    .line 446
    .local v3, "isFirst":Z
    :goto_2
    move-object v6, v5

    #@19
    .line 447
    :goto_3
    iget-object v9, v6, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@1b
    if-eqz v9, :cond_7

    #@1d
    .line 448
    move-object v1, v6

    #@1e
    .line 449
    .local v1, "activeSucc":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    const/4 v4, 0x0

    #@1f
    .line 467
    .local v4, "isLast":Z
    :goto_4
    const/4 v9, 0x2

    #@20
    if-ge v2, v9, :cond_b

    #@22
    .line 469
    or-int v9, v3, v4

    #@24
    .line 467
    if-eqz v9, :cond_b

    #@26
    .line 470
    return-void

    #@27
    .line 431
    .end local v0    # "activePred":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v1    # "activeSucc":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v3    # "isFirst":Z
    .end local v4    # "isLast":Z
    :cond_3
    iget-object v8, v6, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@29
    .line 432
    .local v8, "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v8, :cond_5

    #@2b
    .line 433
    iget-object v9, v6, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@2d
    if-ne v9, v6, :cond_4

    #@2f
    .line 434
    return-void

    #@30
    .line 435
    :cond_4
    move-object v0, v6

    #@31
    .line 436
    .restart local v0    # "activePred":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    const/4 v3, 0x1

    #@32
    .line 437
    .restart local v3    # "isFirst":Z
    goto :goto_2

    #@33
    .line 439
    .end local v0    # "activePred":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v3    # "isFirst":Z
    :cond_5
    if-ne v6, v8, :cond_6

    #@35
    .line 440
    return-void

    #@36
    .line 442
    :cond_6
    move-object v6, v8

    #@37
    .line 425
    add-int/lit8 v2, v2, 0x1

    #@39
    goto :goto_1

    #@3a
    .line 452
    .end local v8    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v0    # "activePred":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v3    # "isFirst":Z
    :cond_7
    iget-object v8, v6, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@3c
    .line 453
    .restart local v8    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v8, :cond_9

    #@3e
    .line 454
    iget-object v9, v6, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@40
    if-ne v9, v6, :cond_8

    #@42
    .line 455
    return-void

    #@43
    .line 456
    :cond_8
    move-object v1, v6

    #@44
    .line 457
    .restart local v1    # "activeSucc":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    const/4 v4, 0x1

    #@45
    .line 458
    .restart local v4    # "isLast":Z
    goto :goto_4

    #@46
    .line 460
    .end local v1    # "activeSucc":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v4    # "isLast":Z
    :cond_9
    if-ne v6, v8, :cond_a

    #@48
    .line 461
    return-void

    #@49
    .line 463
    :cond_a
    move-object v6, v8

    #@4a
    .line 446
    add-int/lit8 v2, v2, 0x1

    #@4c
    goto :goto_3

    #@4d
    .line 474
    .end local v8    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v1    # "activeSucc":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v4    # "isLast":Z
    :cond_b
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->skipDeletedSuccessors(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@50
    .line 475
    invoke-direct {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->skipDeletedPredecessors(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@53
    .line 478
    or-int v9, v3, v4

    #@55
    if-eqz v9, :cond_0

    #@57
    .line 481
    iget-object v9, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@59
    if-ne v9, v1, :cond_0

    #@5b
    .line 482
    iget-object v9, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@5d
    if-ne v9, v0, :cond_0

    #@5f
    .line 483
    if-eqz v3, :cond_c

    #@61
    iget-object v9, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@63
    if-nez v9, :cond_0

    #@65
    .line 484
    :goto_5
    if-eqz v4, :cond_d

    #@67
    iget-object v9, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@69
    if-nez v9, :cond_0

    #@6b
    .line 486
    :goto_6
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->updateHead()V

    #@6e
    .line 487
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->updateTail()V

    #@71
    .line 490
    if-eqz v3, :cond_e

    #@73
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->prevTerminator()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@76
    move-result-object v9

    #@77
    :goto_7
    invoke-virtual {p1, v9}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@7a
    .line 491
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
    .line 483
    :cond_c
    iget-object v9, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@86
    if-eqz v9, :cond_0

    #@88
    goto :goto_5

    #@89
    .line 484
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
    .line 490
    goto :goto_7

    #@90
    :cond_f
    move-object v9, p1

    #@91
    .line 491
    goto :goto_8
.end method
