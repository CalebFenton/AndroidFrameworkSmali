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
        Ljava/util/concurrent/ConcurrentLinkedDeque$Itr;,
        Ljava/util/concurrent/ConcurrentLinkedDeque$DescendingItr;,
        Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;,
        Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TE;>;",
        "Ljava/util/Deque<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final blacklist HEAD:Ljava/lang/invoke/VarHandle;

.field private static final greylist-max-o HOPS:I = 0x2

.field private static final blacklist ITEM:Ljava/lang/invoke/VarHandle;

.field private static final blacklist NEXT:Ljava/lang/invoke/VarHandle;

.field private static final greylist-max-o NEXT_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist PREV:Ljava/lang/invoke/VarHandle;

.field private static final greylist-max-o PREV_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAIL:Ljava/lang/invoke/VarHandle;

.field private static final whitelist serialVersionUID:J = 0xc29535d4a608822L


# instance fields
.field private volatile transient greylist-max-o head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field private volatile transient greylist-max-o tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 1660
    const-class v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>()V

    sput-object v1, Ljava/util/concurrent/ConcurrentLinkedDeque;->PREV_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 1661
    sget-object v1, Ljava/util/concurrent/ConcurrentLinkedDeque;->PREV_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    sget-object v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->PREV_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    iput-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 1662
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>()V

    sput-object v1, Ljava/util/concurrent/ConcurrentLinkedDeque;->NEXT_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 1663
    sget-object v1, Ljava/util/concurrent/ConcurrentLinkedDeque;->NEXT_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    sget-object v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->NEXT_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    iput-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 1665
    :try_start_1c
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    .line 1666
    .local v1, "l":Ljava/lang/invoke/MethodHandles$Lookup;
    const-string v2, "head"

    const-class v3, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->HEAD:Ljava/lang/invoke/VarHandle;

    .line 1668
    const-string v2, "tail"

    const-class v3, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/ConcurrentLinkedDeque;->TAIL:Ljava/lang/invoke/VarHandle;

    .line 1670
    const-class v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    const-string v2, "prev"

    const-class v3, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/ConcurrentLinkedDeque;->PREV:Ljava/lang/invoke/VarHandle;

    .line 1671
    const-class v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    const-string v2, "next"

    const-class v3, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/ConcurrentLinkedDeque;->NEXT:Ljava/lang/invoke/VarHandle;

    .line 1672
    const-class v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    const-string v2, "item"

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/ConcurrentLinkedDeque;->ITEM:Ljava/lang/invoke/VarHandle;
    :try_end_58
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1c .. :try_end_58} :catch_5a

    .line 1675
    .end local v1    # "l":Ljava/lang/invoke/MethodHandles$Lookup;
    nop

    .line 1676
    return-void

    .line 1673
    :catch_5a
    move-exception v0

    .line 1674
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 771
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 772
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 773
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Collection;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 784
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 786
    const/4 v0, 0x0

    .local v0, "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    const/4 v1, 0x0

    .line 787
    .local v1, "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 788
    .local v3, "e":Ljava/lang/Object;, "TE;"
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/concurrent/ConcurrentLinkedDeque;->newNode(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v4

    .line 789
    .local v4, "newNode":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v0, :cond_20

    .line 790
    move-object v1, v4

    move-object v0, v4

    goto :goto_2d

    .line 792
    :cond_20
    sget-object v5, Ljava/util/concurrent/ConcurrentLinkedDeque;->NEXT:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v5, v1, v4}, Ljava/lang/invoke/VarHandle;->set([Ljava/lang/Object;)V, (Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 793
    sget-object v5, Ljava/util/concurrent/ConcurrentLinkedDeque;->PREV:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v5, v4, v1}, Ljava/lang/invoke/VarHandle;->set([Ljava/lang/Object;)V, (Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 794
    move-object v1, v4

    .line 796
    .end local v3    # "e":Ljava/lang/Object;, "TE;"
    .end local v4    # "newNode":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_2d
    goto :goto_9

    .line 797
    :cond_2e
    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->initHeadTail(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 798
    return-void
.end method

.method private blacklist bulkRemove(Ljava/util/function/Predicate;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1628
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    const/4 v0, 0x0

    .line 1629
    .local v0, "removed":Z
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_5
    if-eqz v1, :cond_26

    .line 1630
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->succ(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v2

    .line 1632
    .local v2, "succ":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    move-object v4, v3

    .local v4, "item":Ljava/lang/Object;, "TE;"
    if-eqz v3, :cond_24

    .line 1633
    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    sget-object v3, Ljava/util/concurrent/ConcurrentLinkedDeque;->ITEM:Ljava/lang/invoke/VarHandle;

    .line 1634
    const/4 v5, 0x0

    invoke-polymorphic {v3, v1, v4, v5}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/lang/Object;Ljava/lang/Void;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1635
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->unlink(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 1636
    const/4 v0, 0x1

    .line 1629
    .end local v4    # "item":Ljava/lang/Object;, "TE;"
    :cond_24
    move-object v1, v2

    goto :goto_5

    .line 1639
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v2    # "succ":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_26
    return v0
.end method

.method private greylist-max-o initHeadTail(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<",
            "TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 804
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local p2, "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-ne p1, p2, :cond_1e

    .line 805
    if-nez p1, :cond_c

    .line 806
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>()V

    move-object p2, v0

    move-object p1, v0

    goto :goto_1e

    .line 809
    :cond_c
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>()V

    .line 810
    .local v0, "newNode":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    sget-object v1, Ljava/util/concurrent/ConcurrentLinkedDeque;->NEXT:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v1, p2, v0}, Ljava/lang/invoke/VarHandle;->set([Ljava/lang/Object;)V, (Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 811
    sget-object v1, Ljava/util/concurrent/ConcurrentLinkedDeque;->PREV:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v1, v0, p2}, Ljava/lang/invoke/VarHandle;->set([Ljava/lang/Object;)V, (Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 812
    move-object p2, v0

    .line 815
    .end local v0    # "newNode":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_1e
    :goto_1e
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 816
    iput-object p2, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 817
    return-void
.end method

.method static synthetic blacklist lambda$removeAll$0(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "c"    # Ljava/util/Collection;
    .param p1, "e"    # Ljava/lang/Object;

    .line 1615
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$retainAll$1(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "c"    # Ljava/util/Collection;
    .param p1, "e"    # Ljava/lang/Object;

    .line 1623
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private greylist-max-o linkFirst(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 315
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->newNode(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v0

    .line 319
    .local v0, "newNode":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_8
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .local v1, "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v2, v1

    .line 320
    .local v2, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_b
    :goto_b
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v4, v3

    .local v4, "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eqz v3, :cond_21

    move-object v2, v4

    iget-object v3, v4, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v4, v3

    if-eqz v3, :cond_21

    .line 324
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v5, v3

    .end local v1    # "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v5, "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eq v1, v3, :cond_1d

    move-object v1, v5

    goto :goto_1e

    :cond_1d
    move-object v1, v4

    :goto_1e
    move-object v2, v1

    move-object v1, v5

    goto :goto_b

    .line 325
    .end local v5    # "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v1    # "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_21
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-ne v3, v2, :cond_26

    .line 326
    goto :goto_8

    .line 329
    :cond_26
    sget-object v3, Ljava/util/concurrent/ConcurrentLinkedDeque;->NEXT:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v3, v0, v2}, Ljava/lang/invoke/VarHandle;->set([Ljava/lang/Object;)V, (Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 330
    sget-object v3, Ljava/util/concurrent/ConcurrentLinkedDeque;->PREV:Ljava/lang/invoke/VarHandle;

    const/4 v5, 0x0

    invoke-polymorphic {v3, v2, v5, v0}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/lang/Void;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 334
    if-eq v2, v1, :cond_3e

    .line 335
    sget-object v3, Ljava/util/concurrent/ConcurrentLinkedDeque;->HEAD:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v3, p0, v1, v0}, Ljava/lang/invoke/VarHandle;->weakCompareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentLinkedDeque;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    .line 336
    :cond_3e
    return-void
.end method

.method private greylist-max-o linkLast(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 347
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->newNode(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v0

    .line 351
    .local v0, "newNode":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_8
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .local v1, "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v2, v1

    .line 352
    .local v2, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_b
    :goto_b
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v4, v3

    .local v4, "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eqz v3, :cond_21

    move-object v2, v4

    iget-object v3, v4, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v4, v3

    if-eqz v3, :cond_21

    .line 356
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v5, v3

    .end local v1    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v5, "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eq v1, v3, :cond_1d

    move-object v1, v5

    goto :goto_1e

    :cond_1d
    move-object v1, v4

    :goto_1e
    move-object v2, v1

    move-object v1, v5

    goto :goto_b

    .line 357
    .end local v5    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v1    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_21
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-ne v3, v2, :cond_26

    .line 358
    goto :goto_8

    .line 361
    :cond_26
    sget-object v3, Ljava/util/concurrent/ConcurrentLinkedDeque;->PREV:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v3, v0, v2}, Ljava/lang/invoke/VarHandle;->set([Ljava/lang/Object;)V, (Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 362
    sget-object v3, Ljava/util/concurrent/ConcurrentLinkedDeque;->NEXT:Ljava/lang/invoke/VarHandle;

    const/4 v5, 0x0

    invoke-polymorphic {v3, v2, v5, v0}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/lang/Void;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 366
    if-eq v2, v1, :cond_3e

    .line 367
    sget-object v3, Ljava/util/concurrent/ConcurrentLinkedDeque;->TAIL:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v3, p0, v1, v0}, Ljava/lang/invoke/VarHandle;->weakCompareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentLinkedDeque;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    .line 368
    :cond_3e
    return-void
.end method

.method static blacklist newNode(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<",
            "TE;>;"
        }
    .end annotation

    .line 306
    .local p0, "item":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>()V

    .line 307
    .local v0, "node":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    sget-object v1, Ljava/util/concurrent/ConcurrentLinkedDeque;->ITEM:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v1, v0, p0}, Ljava/lang/invoke/VarHandle;->set([Ljava/lang/Object;)V, (Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/lang/Object;)V

    .line 308
    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 7
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1584
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1587
    const/4 v0, 0x0

    .local v0, "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    const/4 v1, 0x0

    .line 1588
    .local v1, "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_5
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    .local v3, "item":Ljava/lang/Object;
    if-eqz v2, :cond_23

    .line 1590
    invoke-static {v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->newNode(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v2

    .line 1591
    .local v2, "newNode":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v0, :cond_15

    .line 1592
    move-object v1, v2

    move-object v0, v2

    goto :goto_22

    .line 1594
    :cond_15
    sget-object v4, Ljava/util/concurrent/ConcurrentLinkedDeque;->NEXT:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v4, v1, v2}, Ljava/lang/invoke/VarHandle;->set([Ljava/lang/Object;)V, (Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 1595
    sget-object v4, Ljava/util/concurrent/ConcurrentLinkedDeque;->PREV:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v4, v2, v1}, Ljava/lang/invoke/VarHandle;->set([Ljava/lang/Object;)V, (Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 1596
    move-object v1, v2

    .line 1598
    .end local v2    # "newNode":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_22
    goto :goto_5

    .line 1599
    .end local v3    # "item":Ljava/lang/Object;
    :cond_23
    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->initHeadTail(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 1600
    return-void
.end method

.method private greylist-max-o screenNullResult(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 763
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "v":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_3

    .line 765
    return-object p1

    .line 764
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method private greylist-max-o skipDeletedPredecessors(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 621
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "x":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    nop

    :cond_1
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 625
    .local v0, "prev":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v1, v0

    .line 628
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_4
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-eqz v2, :cond_9

    .line 629
    goto :goto_12

    .line 630
    :cond_9
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 631
    .local v2, "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v2, :cond_1e

    .line 632
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-ne v3, v1, :cond_12

    .line 633
    goto :goto_21

    .line 643
    .end local v2    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_12
    :goto_12
    if-eq v0, v1, :cond_1d

    sget-object v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->PREV:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v2, p1, v0, v1}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 644
    :cond_1d
    return-void

    .line 636
    .restart local v2    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_1e
    if-ne v1, v2, :cond_2a

    .line 637
    nop

    .line 646
    .end local v0    # "prev":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v2    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_21
    :goto_21
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eqz v0, :cond_1

    .line 647
    return-void

    .line 639
    .restart local v0    # "prev":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v2    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_2a
    move-object v1, v2

    .line 640
    .end local v2    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    goto :goto_4
.end method

.method private greylist-max-o skipDeletedSuccessors(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 652
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "x":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    nop

    :cond_1
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 656
    .local v0, "next":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v1, v0

    .line 659
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_4
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-eqz v2, :cond_9

    .line 660
    goto :goto_12

    .line 661
    :cond_9
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 662
    .local v2, "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v2, :cond_1e

    .line 663
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-ne v3, v1, :cond_12

    .line 664
    goto :goto_21

    .line 674
    .end local v2    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_12
    :goto_12
    if-eq v0, v1, :cond_1d

    sget-object v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->NEXT:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v2, p1, v0, v1}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 675
    :cond_1d
    return-void

    .line 667
    .restart local v2    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_1e
    if-ne v1, v2, :cond_2a

    .line 668
    nop

    .line 677
    .end local v0    # "next":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v2    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_21
    :goto_21
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eqz v0, :cond_1

    .line 678
    return-void

    .line 670
    .restart local v0    # "next":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v2    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_2a
    move-object v1, v2

    .line 671
    .end local v2    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    goto :goto_4
.end method

.method private greylist-max-o toArrayInternal([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 8
    .param p1, "a"    # [Ljava/lang/Object;

    .line 1244
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    move-object v0, p1

    .line 1246
    .local v0, "x":[Ljava/lang/Object;
    :goto_1
    const/4 v1, 0x0

    .line 1247
    .local v1, "size":I
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v2

    .local v2, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_6
    if-eqz v2, :cond_2b

    .line 1249
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    move-object v4, v3

    .local v4, "item":Ljava/lang/Object;, "TE;"
    if-eqz v3, :cond_23

    .line 1250
    if-nez v0, :cond_13

    .line 1251
    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/Object;

    goto :goto_1e

    .line 1252
    :cond_13
    array-length v3, v0

    if-ne v1, v3, :cond_1e

    .line 1253
    add-int/lit8 v3, v1, 0x4

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 1254
    :cond_1e
    :goto_1e
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "size":I
    .local v3, "size":I
    aput-object v4, v0, v1

    move v1, v3

    .line 1256
    .end local v3    # "size":I
    .restart local v1    # "size":I
    :cond_23
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v5, v3

    .end local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v5, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-ne v2, v3, :cond_29

    .line 1257
    goto :goto_1

    .line 1258
    .end local v4    # "item":Ljava/lang/Object;, "TE;"
    :cond_29
    move-object v2, v5

    goto :goto_6

    .line 1259
    .end local v5    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_2b
    const/4 v2, 0x0

    if-nez v0, :cond_31

    .line 1260
    new-array v2, v2, [Ljava/lang/Object;

    return-object v2

    .line 1261
    :cond_31
    if-eqz p1, :cond_42

    array-length v3, p1

    if-gt v1, v3, :cond_42

    .line 1262
    if-eq p1, v0, :cond_3b

    .line 1263
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1264
    :cond_3b
    array-length v2, p1

    if-ge v1, v2, :cond_41

    .line 1265
    const/4 v2, 0x0

    aput-object v2, p1, v1

    .line 1266
    :cond_41
    return-object p1

    .line 1268
    :cond_42
    array-length v2, v0

    if-ne v1, v2, :cond_47

    move-object v2, v0

    goto :goto_4b

    :cond_47
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    :goto_4b
    return-object v2
.end method

.method private greylist-max-o unlinkFirst(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<",
            "TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 495
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "first":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local p2, "next":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    const/4 v0, 0x0

    .local v0, "o":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v1, p2

    .line 496
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_2
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-nez v2, :cond_12

    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v3, v2

    .local v3, "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v2, :cond_c

    goto :goto_12

    .line 514
    :cond_c
    if-ne v1, v3, :cond_f

    .line 515
    return-void

    .line 517
    :cond_f
    move-object v0, v1

    .line 518
    move-object v1, v3

    goto :goto_2

    .line 497
    .end local v3    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_12
    :goto_12
    if-eqz v0, :cond_4a

    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eq v2, v1, :cond_4a

    sget-object v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->NEXT:Ljava/lang/invoke/VarHandle;

    .line 498
    invoke-polymorphic {v2, p1, p2, v1}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 499
    invoke-direct {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->skipDeletedPredecessors(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 500
    iget-object v2, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-nez v2, :cond_4a

    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eqz v2, :cond_30

    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-eqz v2, :cond_4a

    :cond_30
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-ne v2, p1, :cond_4a

    .line 504
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->updateHead()V

    .line 505
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->updateTail()V

    .line 508
    sget-object v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->NEXT:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v2, v0, v0}, Ljava/lang/invoke/VarHandle;->setRelease([Ljava/lang/Object;)V, (Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 509
    sget-object v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->PREV:Ljava/lang/invoke/VarHandle;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->prevTerminator()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v3

    invoke-polymorphic {v2, v0, v3}, Ljava/lang/invoke/VarHandle;->setRelease([Ljava/lang/Object;)V, (Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 512
    :cond_4a
    return-void
.end method

.method private greylist-max-o unlinkLast(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<",
            "TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 530
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "last":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local p2, "prev":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    const/4 v0, 0x0

    .local v0, "o":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v1, p2

    .line 531
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_2
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-nez v2, :cond_12

    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v3, v2

    .local v3, "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v2, :cond_c

    goto :goto_12

    .line 549
    :cond_c
    if-ne v1, v3, :cond_f

    .line 550
    return-void

    .line 552
    :cond_f
    move-object v0, v1

    .line 553
    move-object v1, v3

    goto :goto_2

    .line 532
    .end local v3    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_12
    :goto_12
    if-eqz v0, :cond_4a

    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eq v2, v1, :cond_4a

    sget-object v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->PREV:Ljava/lang/invoke/VarHandle;

    .line 533
    invoke-polymorphic {v2, p1, p2, v1}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 534
    invoke-direct {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->skipDeletedSuccessors(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 535
    iget-object v2, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-nez v2, :cond_4a

    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eqz v2, :cond_30

    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-eqz v2, :cond_4a

    :cond_30
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-ne v2, p1, :cond_4a

    .line 539
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->updateHead()V

    .line 540
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->updateTail()V

    .line 543
    sget-object v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->PREV:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v2, v0, v0}, Ljava/lang/invoke/VarHandle;->setRelease([Ljava/lang/Object;)V, (Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 544
    sget-object v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->NEXT:Ljava/lang/invoke/VarHandle;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->nextTerminator()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v3

    invoke-polymorphic {v2, v0, v3}, Ljava/lang/invoke/VarHandle;->setRelease([Ljava/lang/Object;)V, (Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 547
    :cond_4a
    return-void
.end method

.method private final greylist-max-o updateHead()V
    .registers 5

    .line 569
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    nop

    :cond_1
    :goto_1
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v1, v0

    .local v1, "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-nez v0, :cond_2a

    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v2, v0

    .local v2, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eqz v0, :cond_2a

    .line 571
    :goto_d
    iget-object v0, v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v3, v0

    .local v3, "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eqz v0, :cond_20

    move-object v2, v3

    iget-object v0, v3, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v3, v0

    if-nez v0, :cond_19

    goto :goto_20

    .line 580
    :cond_19
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eq v1, v0, :cond_1e

    .line 581
    goto :goto_1

    .line 583
    :cond_1e
    move-object v2, v3

    goto :goto_d

    .line 575
    :cond_20
    :goto_20
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedDeque;->HEAD:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, v1, v2}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentLinkedDeque;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    return-void

    .line 586
    .end local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v3    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_2a
    return-void
.end method

.method private final greylist-max-o updateTail()V
    .registers 5

    .line 599
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    nop

    :cond_1
    :goto_1
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v1, v0

    .local v1, "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-nez v0, :cond_2a

    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v2, v0

    .local v2, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eqz v0, :cond_2a

    .line 601
    :goto_d
    iget-object v0, v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v3, v0

    .local v3, "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eqz v0, :cond_20

    move-object v2, v3

    iget-object v0, v3, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v3, v0

    if-nez v0, :cond_19

    goto :goto_20

    .line 610
    :cond_19
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eq v1, v0, :cond_1e

    .line 611
    goto :goto_1

    .line 613
    :cond_1e
    move-object v2, v3

    goto :goto_d

    .line 605
    :cond_20
    :goto_20
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedDeque;->TAIL:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, v1, v2}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentLinkedDeque;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 606
    return-void

    .line 616
    .end local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v3    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_2a
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1562
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1565
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v0

    .local v0, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_7
    if-eqz v0, :cond_16

    .line 1567
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "item":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_11

    .line 1568
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1565
    .end local v2    # "item":Ljava/lang/Object;, "TE;"
    :cond_11
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->succ(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v0

    goto :goto_7

    .line 1572
    .end local v0    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_16
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1573
    return-void
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 991
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 1158
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    if-eq p1, p0, :cond_76

    .line 1163
    const/4 v0, 0x0

    .local v0, "beginningOfTheEnd":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    const/4 v1, 0x0

    .line 1164
    .local v1, "last":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1165
    .local v3, "e":Ljava/lang/Object;, "TE;"
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/concurrent/ConcurrentLinkedDeque;->newNode(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v4

    .line 1166
    .local v4, "newNode":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v0, :cond_1f

    .line 1167
    move-object v1, v4

    move-object v0, v4

    goto :goto_2c

    .line 1169
    :cond_1f
    sget-object v5, Ljava/util/concurrent/ConcurrentLinkedDeque;->NEXT:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v5, v1, v4}, Ljava/lang/invoke/VarHandle;->set([Ljava/lang/Object;)V, (Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 1170
    sget-object v5, Ljava/util/concurrent/ConcurrentLinkedDeque;->PREV:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v5, v4, v1}, Ljava/lang/invoke/VarHandle;->set([Ljava/lang/Object;)V, (Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 1171
    move-object v1, v4

    .line 1173
    .end local v3    # "e":Ljava/lang/Object;, "TE;"
    .end local v4    # "newNode":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_2c
    goto :goto_8

    .line 1174
    :cond_2d
    if-nez v0, :cond_31

    .line 1175
    const/4 v2, 0x0

    return v2

    .line 1180
    :cond_31
    :goto_31
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .local v2, "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v3, v2

    .line 1181
    .local v3, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_34
    :goto_34
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v5, v4

    .local v5, "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eqz v4, :cond_4a

    move-object v3, v5

    iget-object v4, v5, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v5, v4

    if-eqz v4, :cond_4a

    .line 1185
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v6, v4

    .end local v2    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v6, "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eq v2, v4, :cond_46

    move-object v2, v6

    goto :goto_47

    :cond_46
    move-object v2, v5

    :goto_47
    move-object v3, v2

    move-object v2, v6

    goto :goto_34

    .line 1186
    .end local v6    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v2    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_4a
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-ne v4, v3, :cond_4f

    .line 1187
    goto :goto_31

    .line 1190
    :cond_4f
    sget-object v4, Ljava/util/concurrent/ConcurrentLinkedDeque;->PREV:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v4, v0, v3}, Ljava/lang/invoke/VarHandle;->set([Ljava/lang/Object;)V, (Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 1191
    sget-object v4, Ljava/util/concurrent/ConcurrentLinkedDeque;->NEXT:Ljava/lang/invoke/VarHandle;

    const/4 v6, 0x0

    invoke-polymorphic {v4, v3, v6, v0}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/lang/Void;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 1194
    sget-object v4, Ljava/util/concurrent/ConcurrentLinkedDeque;->TAIL:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v4, p0, v2, v1}, Ljava/lang/invoke/VarHandle;->weakCompareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentLinkedDeque;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    move-result v4

    if-nez v4, :cond_74

    .line 1197
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 1198
    iget-object v4, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-nez v4, :cond_74

    .line 1199
    sget-object v4, Ljava/util/concurrent/ConcurrentLinkedDeque;->TAIL:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v4, p0, v2, v1}, Ljava/lang/invoke/VarHandle;->weakCompareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentLinkedDeque;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    .line 1201
    :cond_74
    const/4 v4, 0x1

    return v4

    .line 1160
    .end local v0    # "beginningOfTheEnd":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v1    # "last":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v2    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v3    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v5    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api addFirst(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 827
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->linkFirst(Ljava/lang/Object;)V

    .line 828
    return-void
.end method

.method public whitelist test-api addLast(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 840
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->linkLast(Ljava/lang/Object;)V

    .line 841
    return-void
.end method

.method public whitelist test-api clear()V
    .registers 2

    .line 1212
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    nop

    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1213
    goto :goto_1

    .line 1214
    :cond_8
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1078
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    if-eqz p1, :cond_1a

    .line 1079
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v0

    .local v0, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_6
    if-eqz v0, :cond_1a

    .line 1081
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "item":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_15

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1082
    const/4 v1, 0x1

    return v1

    .line 1079
    .end local v2    # "item":Ljava/lang/Object;, "TE;"
    :cond_15
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->succ(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v0

    goto :goto_6

    .line 1085
    .end local v0    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api descendingIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1356
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque$DescendingItr;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedDeque$DescendingItr;-><init>(Ljava/util/concurrent/ConcurrentLinkedDeque;)V

    return-object v0
.end method

.method public whitelist test-api element()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1010
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<",
            "TE;>;"
        }
    .end annotation

    .line 712
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    nop

    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .local v0, "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v1, v0

    .line 713
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_4
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v3, v2

    .local v3, "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eqz v2, :cond_1a

    move-object v1, v3

    iget-object v2, v3, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v3, v2

    if-eqz v2, :cond_1a

    .line 717
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v4, v2

    .end local v0    # "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v4, "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eq v0, v2, :cond_16

    move-object v0, v4

    goto :goto_17

    :cond_16
    move-object v0, v3

    :goto_17
    move-object v1, v0

    move-object v0, v4

    goto :goto_4

    .line 718
    .end local v4    # "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v0    # "h":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_1a
    if-eq v1, v0, :cond_25

    sget-object v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->HEAD:Ljava/lang/invoke/VarHandle;

    .line 721
    invoke-polymorphic {v2, p0, v0, v1}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentLinkedDeque;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 722
    :cond_25
    return-object v1
.end method

.method public whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1646
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1648
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v0

    .local v0, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_7
    if-eqz v0, :cond_16

    .line 1649
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "item":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_11

    .line 1650
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1648
    :cond_11
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->succ(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v0

    goto :goto_7

    .line 1651
    .end local v0    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v2    # "item":Ljava/lang/Object;, "TE;"
    :cond_16
    return-void
.end method

.method public whitelist test-api getFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 903
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->screenNullResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getLast()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 910
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->screenNullResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 1094
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1342
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Itr;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedDeque$Itr;-><init>(Ljava/util/concurrent/ConcurrentLinkedDeque;)V

    return-object v0
.end method

.method greylist-max-o last()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<",
            "TE;>;"
        }
    .end annotation

    .line 737
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    nop

    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .local v0, "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v1, v0

    .line 738
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_4
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v3, v2

    .local v3, "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eqz v2, :cond_1a

    move-object v1, v3

    iget-object v2, v3, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v3, v2

    if-eqz v2, :cond_1a

    .line 742
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v4, v2

    .end local v0    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v4, "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eq v0, v2, :cond_16

    move-object v0, v4

    goto :goto_17

    :cond_16
    move-object v0, v3

    :goto_17
    move-object v1, v0

    move-object v0, v4

    goto :goto_4

    .line 743
    .end local v4    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v0    # "t":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_1a
    if-eq v1, v0, :cond_25

    sget-object v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->TAIL:Ljava/lang/invoke/VarHandle;

    .line 746
    invoke-polymorphic {v2, p0, v0, v1}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentLinkedDeque;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 747
    :cond_25
    return-object v1
.end method

.method greylist-max-o nextTerminator()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<",
            "TE;>;"
        }
    .end annotation

    .line 292
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedDeque;->NEXT_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    return-object v0
.end method

.method public whitelist test-api offer(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 979
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api offerFirst(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 851
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->linkFirst(Ljava/lang/Object;)V

    .line 852
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api offerLast(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 865
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->linkLast(Ljava/lang/Object;)V

    .line 866
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api peek()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 995
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api peekFirst()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 872
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    nop

    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v0

    .local v0, "first":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v1, v0

    .line 873
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_6
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    move-object v3, v2

    .local v3, "item":Ljava/lang/Object;, "TE;"
    if-nez v2, :cond_17

    .line 874
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v4, v2

    .end local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v4, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-ne v1, v2, :cond_11

    goto :goto_1

    .line 875
    :cond_11
    if-nez v4, :cond_15

    .line 876
    move-object v1, v4

    goto :goto_17

    .line 875
    :cond_15
    move-object v1, v4

    goto :goto_6

    .line 879
    .end local v4    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_17
    :goto_17
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eqz v2, :cond_1c

    goto :goto_1

    .line 880
    :cond_1c
    return-object v3
.end method

.method public whitelist test-api peekLast()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 887
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    nop

    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->last()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v0

    .local v0, "last":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v1, v0

    .line 888
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_6
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    move-object v3, v2

    .local v3, "item":Ljava/lang/Object;, "TE;"
    if-nez v2, :cond_17

    .line 889
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v4, v2

    .end local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v4, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-ne v1, v2, :cond_11

    goto :goto_1

    .line 890
    :cond_11
    if-nez v4, :cond_15

    .line 891
    move-object v1, v4

    goto :goto_17

    .line 890
    :cond_15
    move-object v1, v4

    goto :goto_6

    .line 894
    .end local v4    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_17
    :goto_17
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eqz v2, :cond_1c

    goto :goto_1

    .line 895
    :cond_1c
    return-object v3
.end method

.method public whitelist test-api poll()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 994
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api pollFirst()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 915
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    nop

    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v0

    .local v0, "first":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v1, v0

    .line 917
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_6
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    move-object v3, v2

    .local v3, "item":Ljava/lang/Object;, "TE;"
    const/4 v4, 0x0

    if-eqz v2, :cond_1e

    .line 919
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eqz v2, :cond_11

    goto :goto_1

    .line 920
    :cond_11
    sget-object v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->ITEM:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v2, v1, v3, v4}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/lang/Object;Ljava/lang/Void;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 921
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->unlink(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 922
    return-object v3

    .line 925
    :cond_1e
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v5, v2

    .end local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v5, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-ne v1, v2, :cond_24

    goto :goto_1

    .line 926
    :cond_24
    if-nez v5, :cond_2c

    .line 927
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eqz v1, :cond_2b

    goto :goto_1

    .line 928
    :cond_2b
    return-object v4

    .line 930
    .end local v3    # "item":Ljava/lang/Object;, "TE;"
    :cond_2c
    move-object v1, v5

    goto :goto_6
.end method

.method public whitelist test-api pollLast()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 936
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    nop

    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->last()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v0

    .local v0, "last":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v1, v0

    .line 938
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_6
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    move-object v3, v2

    .local v3, "item":Ljava/lang/Object;, "TE;"
    const/4 v4, 0x0

    if-eqz v2, :cond_1e

    .line 940
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eqz v2, :cond_11

    goto :goto_1

    .line 941
    :cond_11
    sget-object v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->ITEM:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v2, v1, v3, v4}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/lang/Object;Ljava/lang/Void;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 942
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->unlink(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 943
    return-object v3

    .line 946
    :cond_1e
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v5, v2

    .end local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v5, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-ne v1, v2, :cond_24

    goto :goto_1

    .line 947
    :cond_24
    if-nez v5, :cond_2c

    .line 948
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eqz v1, :cond_2b

    goto :goto_1

    .line 949
    :cond_2b
    return-object v4

    .line 951
    .end local v3    # "item":Ljava/lang/Object;, "TE;"
    :cond_2c
    move-object v1, v5

    goto :goto_6
.end method

.method public whitelist test-api pop()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1005
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final greylist-max-o pred(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<",
            "TE;>;)",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<",
            "TE;>;"
        }
    .end annotation

    .line 698
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v1, v0

    .end local p1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-ne p1, v0, :cond_9

    .line 699
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->last()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    .line 700
    :cond_9
    return-object v1
.end method

.method greylist-max-o prevTerminator()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<",
            "TE;>;"
        }
    .end annotation

    .line 287
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedDeque;->PREV_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    return-object v0
.end method

.method public whitelist test-api push(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1015
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public whitelist test-api remove()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1000
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1142
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1614
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1615
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque$$ExternalSyntheticLambda0;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->bulkRemove(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api removeFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 959
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->screenNullResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api removeFirstOccurrence(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 1030
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v0

    .local v0, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_7
    if-eqz v0, :cond_28

    .line 1033
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "item":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_23

    .line 1034
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    sget-object v1, Ljava/util/concurrent/ConcurrentLinkedDeque;->ITEM:Ljava/lang/invoke/VarHandle;

    .line 1035
    const/4 v3, 0x0

    invoke-polymorphic {v1, v0, v2, v3}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/lang/Object;Ljava/lang/Void;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1036
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->unlink(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 1037
    const/4 v1, 0x1

    return v1

    .line 1031
    .end local v2    # "item":Ljava/lang/Object;, "TE;"
    :cond_23
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->succ(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v0

    goto :goto_7

    .line 1040
    .end local v0    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api removeIf(Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1606
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1607
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->bulkRemove(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api removeLast()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 966
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->screenNullResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api removeLastOccurrence(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 1056
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->last()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v0

    .local v0, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_7
    if-eqz v0, :cond_28

    .line 1059
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "item":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_23

    .line 1060
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    sget-object v1, Ljava/util/concurrent/ConcurrentLinkedDeque;->ITEM:Ljava/lang/invoke/VarHandle;

    .line 1061
    const/4 v3, 0x0

    invoke-polymorphic {v1, v0, v2, v3}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/lang/Object;Ljava/lang/Void;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1062
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->unlink(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 1063
    const/4 v1, 0x1

    return v1

    .line 1057
    .end local v2    # "item":Ljava/lang/Object;, "TE;"
    :cond_23
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pred(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v0

    goto :goto_7

    .line 1066
    .end local v0    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1622
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1623
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque$$ExternalSyntheticLambda1;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->bulkRemove(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api size()I
    .registers 5

    .line 1115
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    nop

    :goto_1
    const/4 v0, 0x0

    .line 1116
    .local v0, "count":I
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_6
    if-eqz v1, :cond_1c

    .line 1117
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-eqz v2, :cond_14

    .line 1118
    add-int/lit8 v0, v0, 0x1

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_14

    .line 1119
    goto :goto_1c

    .line 1120
    :cond_14
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v3, v2

    .end local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v3, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-ne v1, v2, :cond_1a

    .line 1121
    goto :goto_1

    .line 1120
    :cond_1a
    move-object v1, v3

    goto :goto_6

    .line 1123
    .end local v3    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_1c
    :goto_1c
    return v0
.end method

.method public whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 1547
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;-><init>(Ljava/util/concurrent/ConcurrentLinkedDeque;)V

    return-object v0
.end method

.method final greylist-max-o succ(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<",
            "TE;>;)",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<",
            "TE;>;"
        }
    .end annotation

    .line 687
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v1, v0

    .end local p1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-ne p1, v0, :cond_9

    .line 688
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    .line 689
    :cond_9
    return-object v1
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 2

    .line 1286
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->toArrayInternal([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 1328
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    if-eqz p1, :cond_7

    .line 1329
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->toArrayInternal([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1328
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 1217
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    const/4 v0, 0x0

    .line 1219
    .local v0, "a":[Ljava/lang/String;
    :goto_1
    const/4 v1, 0x0

    .line 1220
    .local v1, "charLength":I
    const/4 v2, 0x0

    .line 1221
    .local v2, "size":I
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v3

    .local v3, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_7
    if-eqz v3, :cond_36

    .line 1223
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    move-object v5, v4

    .local v5, "item":Ljava/lang/Object;, "TE;"
    if-eqz v4, :cond_2e

    .line 1224
    if-nez v0, :cond_14

    .line 1225
    const/4 v4, 0x4

    new-array v0, v4, [Ljava/lang/String;

    goto :goto_20

    .line 1226
    :cond_14
    array-length v4, v0

    if-ne v2, v4, :cond_20

    .line 1227
    mul-int/lit8 v4, v2, 0x2

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    .line 1228
    :cond_20
    :goto_20
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1229
    .local v4, "s":Ljava/lang/String;
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "size":I
    .local v6, "size":I
    aput-object v4, v0, v2

    .line 1230
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    move v2, v6

    .line 1232
    .end local v4    # "s":Ljava/lang/String;
    .end local v6    # "size":I
    .restart local v2    # "size":I
    :cond_2e
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v6, v4

    .end local v3    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v6, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-ne v3, v4, :cond_34

    .line 1233
    goto :goto_1

    .line 1234
    .end local v5    # "item":Ljava/lang/Object;, "TE;"
    :cond_34
    move-object v3, v6

    goto :goto_7

    .line 1236
    .end local v6    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_36
    if-nez v2, :cond_3b

    .line 1237
    const-string v3, "[]"

    return-object v3

    .line 1239
    :cond_3b
    invoke-static {v0, v2, v1}, Ljava/util/concurrent/Helpers;->toString([Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method greylist-max-o unlink(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 386
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, "x":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 387
    .local v0, "prev":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    iget-object v1, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 388
    .local v1, "next":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v0, :cond_b

    .line 389
    invoke-direct {p0, p1, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->unlinkFirst(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    goto/16 :goto_90

    .line 390
    :cond_b
    if-nez v1, :cond_12

    .line 391
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->unlinkLast(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    goto/16 :goto_90

    .line 414
    :cond_12
    const/4 v2, 0x1

    .line 417
    .local v2, "hops":I
    move-object v3, v0

    .line 418
    .local v3, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_14
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-eqz v4, :cond_1d

    .line 419
    move-object v4, v3

    .line 420
    .local v4, "activePred":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    const/4 v5, 0x0

    .line 421
    .local v5, "isFirst":Z
    move v6, v5

    move-object v5, v4

    goto :goto_29

    .line 423
    .end local v4    # "activePred":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v5    # "isFirst":Z
    :cond_1d
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 424
    .local v4, "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v4, :cond_98

    .line 425
    iget-object v5, v3, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-ne v5, v3, :cond_26

    .line 426
    return-void

    .line 427
    :cond_26
    move-object v5, v3

    .line 428
    .local v5, "activePred":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    const/4 v6, 0x1

    .line 429
    .local v6, "isFirst":Z
    nop

    .line 438
    .end local v3    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v4    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_29
    move-object v3, v1

    .line 439
    .restart local v3    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_2a
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-eqz v4, :cond_31

    .line 440
    move-object v4, v3

    .line 441
    .local v4, "activeSucc":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    const/4 v7, 0x0

    .line 442
    .local v7, "isLast":Z
    goto :goto_3e

    .line 444
    .end local v4    # "activeSucc":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v7    # "isLast":Z
    :cond_31
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 445
    .local v4, "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v4, :cond_91

    .line 446
    iget-object v7, v3, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-ne v7, v3, :cond_3a

    .line 447
    return-void

    .line 448
    :cond_3a
    move-object v7, v3

    .line 449
    .local v7, "activeSucc":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    const/4 v8, 0x1

    .line 450
    .local v8, "isLast":Z
    move-object v4, v7

    move v7, v8

    .line 459
    .end local v3    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v8    # "isLast":Z
    .local v4, "activeSucc":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v7, "isLast":Z
    :goto_3e
    const/4 v3, 0x2

    if-ge v2, v3, :cond_46

    or-int v3, v6, v7

    if-eqz v3, :cond_46

    .line 462
    return-void

    .line 466
    :cond_46
    invoke-direct {p0, v5}, Ljava/util/concurrent/ConcurrentLinkedDeque;->skipDeletedSuccessors(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 467
    invoke-direct {p0, v4}, Ljava/util/concurrent/ConcurrentLinkedDeque;->skipDeletedPredecessors(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 470
    or-int v3, v6, v7

    if-eqz v3, :cond_90

    iget-object v3, v5, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-ne v3, v4, :cond_90

    iget-object v3, v4, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-ne v3, v5, :cond_90

    if-eqz v6, :cond_5f

    iget-object v3, v5, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-nez v3, :cond_90

    goto :goto_63

    :cond_5f
    iget-object v3, v5, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-eqz v3, :cond_90

    :goto_63
    if-eqz v7, :cond_6a

    iget-object v3, v4, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-nez v3, :cond_90

    goto :goto_6e

    :cond_6a
    iget-object v3, v4, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-eqz v3, :cond_90

    .line 478
    :goto_6e
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->updateHead()V

    .line 479
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->updateTail()V

    .line 482
    sget-object v3, Ljava/util/concurrent/ConcurrentLinkedDeque;->PREV:Ljava/lang/invoke/VarHandle;

    if-eqz v6, :cond_7d

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->prevTerminator()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v8

    goto :goto_7e

    :cond_7d
    move-object v8, p1

    :goto_7e
    invoke-polymorphic {v3, p1, v8}, Ljava/lang/invoke/VarHandle;->setRelease([Ljava/lang/Object;)V, (Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/lang/Object;)V

    .line 483
    sget-object v3, Ljava/util/concurrent/ConcurrentLinkedDeque;->NEXT:Ljava/lang/invoke/VarHandle;

    if-eqz v7, :cond_8b

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->nextTerminator()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v8

    goto :goto_8c

    :cond_8b
    move-object v8, p1

    :goto_8c
    invoke-polymorphic {v3, p1, v8}, Ljava/lang/invoke/VarHandle;->setRelease([Ljava/lang/Object;)V, (Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/lang/Object;)V

    .line 486
    .end local v2    # "hops":I
    .end local v4    # "activeSucc":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v5    # "activePred":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v6    # "isFirst":Z
    .end local v7    # "isLast":Z
    :cond_90
    :goto_90
    return-void

    .line 452
    .restart local v2    # "hops":I
    .restart local v3    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v4, "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v5    # "activePred":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v6    # "isFirst":Z
    :cond_91
    if-ne v3, v4, :cond_94

    .line 453
    return-void

    .line 455
    :cond_94
    move-object v3, v4

    .line 438
    .end local v4    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 431
    .end local v5    # "activePred":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v6    # "isFirst":Z
    .restart local v4    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_98
    if-ne v3, v4, :cond_9b

    .line 432
    return-void

    .line 434
    :cond_9b
    move-object v3, v4

    .line 417
    .end local v4    # "q":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_14
.end method
