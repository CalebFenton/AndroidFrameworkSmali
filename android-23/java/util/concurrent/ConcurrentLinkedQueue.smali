.class public Ljava/util/concurrent/ConcurrentLinkedQueue;
.super Ljava/util/AbstractQueue;
.source "ConcurrentLinkedQueue.java"

# interfaces
.implements Ljava/util/Queue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,
        Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/util/Queue",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final headOffset:J

.field private static final serialVersionUID:J = 0x2bafb2a664c708cL

.field private static final tailOffset:J


# instance fields
.field private volatile transient head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field private volatile transient tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 791
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v2

    #@4
    sput-object v2, Ljava/util/concurrent/ConcurrentLinkedQueue;->UNSAFE:Lsun/misc/Unsafe;

    #@6
    .line 792
    const-class v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@8
    .line 793
    .local v1, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/util/concurrent/ConcurrentLinkedQueue;->UNSAFE:Lsun/misc/Unsafe;

    #@a
    .line 794
    const-string/jumbo v3, "head"

    #@d
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@10
    move-result-object v3

    #@11
    .line 793
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@14
    move-result-wide v2

    #@15
    sput-wide v2, Ljava/util/concurrent/ConcurrentLinkedQueue;->headOffset:J

    #@17
    .line 795
    sget-object v2, Ljava/util/concurrent/ConcurrentLinkedQueue;->UNSAFE:Lsun/misc/Unsafe;

    #@19
    .line 796
    const-string/jumbo v3, "tail"

    #@1c
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@1f
    move-result-object v3

    #@20
    .line 795
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@23
    move-result-wide v2

    #@24
    sput-wide v2, Ljava/util/concurrent/ConcurrentLinkedQueue;->tailOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 73
    return-void

    #@27
    .line 797
    :catch_0
    move-exception v0

    #@28
    .line 798
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    #@2a
    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@2d
    throw v2
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 223
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    #@3
    .line 224
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;)V

    #@9
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@b
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@d
    .line 223
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v6, 0x0

    #@1
    .line 236
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    #@4
    .line 237
    const/4 v2, 0x0

    #@5
    .local v2, "h":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    const/4 v4, 0x0

    #@6
    .line 238
    .local v4, "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .end local v2    # "h":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v4    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v5

    #@e
    if-eqz v5, :cond_1

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    .line 239
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-static {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->checkNotNull(Ljava/lang/Object;)V

    #@17
    .line 240
    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@19
    invoke-direct {v3, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;)V

    #@1c
    .line 241
    .local v3, "newNode":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v2, :cond_0

    #@1e
    .line 242
    move-object v4, v3

    #@1f
    .local v4, "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    move-object v2, v3

    #@20
    .local v2, "h":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    goto :goto_0

    #@21
    .line 244
    .end local v2    # "h":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v4    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_0
    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    #@24
    .line 245
    move-object v4, v3

    #@25
    .restart local v4    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    goto :goto_0

    #@26
    .line 248
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .end local v3    # "newNode":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v4    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_1
    if-nez v2, :cond_2

    #@28
    .line 249
    new-instance v4, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@2a
    invoke-direct {v4, v6}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;)V

    #@2d
    .restart local v4    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    move-object v2, v4

    #@2e
    .line 250
    .end local v4    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_2
    iput-object v2, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@30
    .line 251
    iput-object v4, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@32
    .line 236
    return-void
.end method

.method private casHead(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 781
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, "cmp":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local p2, "val":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedQueue;->UNSAFE:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/ConcurrentLinkedQueue;->headOffset:J

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

.method private casTail(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 777
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, "cmp":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local p2, "val":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedQueue;->UNSAFE:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/ConcurrentLinkedQueue;->tailOffset:J

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
    .line 772
    if-nez p0, :cond_0

    #@2
    .line 773
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 771
    :cond_0
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    const/4 v4, 0x0

    #@1
    .line 745
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@4
    .line 748
    const/4 v0, 0x0

    #@5
    .local v0, "h":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    const/4 v3, 0x0

    #@6
    .line 750
    .end local v0    # "h":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .local v1, "item":Ljava/lang/Object;
    if-eqz v1, :cond_1

    #@c
    .line 752
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@e
    invoke-direct {v2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;)V

    #@11
    .line 753
    .local v2, "newNode":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v0, :cond_0

    #@13
    .line 754
    move-object v3, v2

    #@14
    .local v3, "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    move-object v0, v2

    #@15
    .local v0, "h":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    goto :goto_0

    #@16
    .line 756
    .end local v0    # "h":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v3    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    #@19
    .line 757
    move-object v3, v2

    #@1a
    .restart local v3    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    goto :goto_0

    #@1b
    .line 760
    .end local v2    # "newNode":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v3    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_1
    if-nez v0, :cond_2

    #@1d
    .line 761
    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@1f
    invoke-direct {v3, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;)V

    #@22
    .restart local v3    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    move-object v0, v3

    #@23
    .line 762
    .end local v3    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_2
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@25
    .line 763
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@27
    .line 744
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
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    const/4 v2, 0x0

    #@1
    .line 727
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@4
    .line 730
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@7
    move-result-object v1

    #@8
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_1

    #@a
    .line 731
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    #@c
    .line 732
    .local v0, "item":Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@e
    .line 733
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@11
    .line 730
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->succ(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@14
    move-result-object v1

    #@15
    goto :goto_0

    #@16
    .line 737
    .end local v0    # "item":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@19
    .line 724
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
    .line 265
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

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
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v10, 0x0

    #@1
    .line 486
    if-ne p1, p0, :cond_0

    #@3
    .line 488
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@5
    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@8
    throw v9

    #@9
    .line 491
    :cond_0
    const/4 v0, 0x0

    #@a
    .local v0, "beginningOfTheEnd":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    const/4 v3, 0x0

    #@b
    .line 492
    .local v3, "last":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v2

    #@f
    .end local v0    # "beginningOfTheEnd":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v3    # "last":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
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
    .line 493
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->checkNotNull(Ljava/lang/Object;)V

    #@1c
    .line 494
    new-instance v4, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@1e
    invoke-direct {v4, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;)V

    #@21
    .line 495
    .local v4, "newNode":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v0, :cond_1

    #@23
    .line 496
    move-object v3, v4

    #@24
    .local v3, "last":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    move-object v0, v4

    #@25
    .local v0, "beginningOfTheEnd":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    goto :goto_0

    #@26
    .line 498
    .end local v0    # "beginningOfTheEnd":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v3    # "last":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    #@29
    .line 499
    move-object v3, v4

    #@2a
    .restart local v3    # "last":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    goto :goto_0

    #@2b
    .line 502
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    .end local v3    # "last":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v4    # "newNode":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_2
    if-nez v0, :cond_3

    #@2d
    .line 503
    const/4 v9, 0x0

    #@2e
    return v9

    #@2f
    .line 506
    :cond_3
    iget-object v7, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@31
    .local v7, "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    move-object v5, v7

    #@32
    .line 507
    .local v5, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_4
    :goto_1
    iget-object v6, v5, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@34
    .line 508
    .local v6, "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v6, :cond_6

    #@36
    .line 510
    invoke-virtual {v5, v10, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->casNext(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    #@39
    move-result v9

    #@3a
    if-eqz v9, :cond_4

    #@3c
    .line 513
    invoke-direct {p0, v7, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->casTail(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    #@3f
    move-result v9

    #@40
    if-nez v9, :cond_5

    #@42
    .line 516
    iget-object v7, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@44
    .line 517
    iget-object v9, v3, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@46
    if-nez v9, :cond_5

    #@48
    .line 518
    invoke-direct {p0, v7, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->casTail(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    #@4b
    .line 520
    :cond_5
    const/4 v9, 0x1

    #@4c
    return v9

    #@4d
    .line 524
    :cond_6
    if-ne v5, v6, :cond_8

    #@4f
    .line 529
    iget-object v8, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@51
    .end local v7    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v8, "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-eq v7, v8, :cond_7

    #@53
    move-object v5, v8

    #@54
    move-object v7, v8

    #@55
    .end local v8    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v7    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    goto :goto_1

    #@56
    .end local v7    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v8    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_7
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@58
    move-object v7, v8

    #@59
    .end local v8    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v7    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    goto :goto_1

    #@5a
    .line 532
    :cond_8
    if-eq v5, v7, :cond_a

    #@5c
    iget-object v8, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@5e
    .end local v7    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v8    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-eq v7, v8, :cond_9

    #@60
    move-object v5, v8

    #@61
    move-object v7, v8

    #@62
    .end local v8    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v7    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    goto :goto_1

    #@63
    .end local v7    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v8    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_9
    move-object v7, v8

    #@64
    .end local v8    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v7    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_a
    move-object v5, v6

    #@65
    goto :goto_1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 435
    if-nez p1, :cond_0

    #@3
    return v3

    #@4
    .line 436
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@7
    move-result-object v1

    #@8
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_2

    #@a
    .line 437
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    #@c
    .line 438
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_1

    #@e
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 439
    const/4 v2, 0x1

    #@15
    return v2

    #@16
    .line 436
    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->succ(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@19
    move-result-object v1

    #@1a
    goto :goto_0

    #@1b
    .line 441
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    :cond_2
    return v3
.end method

.method first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    const/4 v4, 0x0

    #@1
    .line 377
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@3
    .local v0, "h":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    move-object v2, v0

    #@4
    .line 378
    .local v2, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_0
    iget-object v5, v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    #@6
    if-eqz v5, :cond_2

    #@8
    const/4 v1, 0x1

    #@9
    .line 379
    .local v1, "hasItem":Z
    :goto_1
    if-nez v1, :cond_1

    #@b
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@d
    .local v3, "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v3, :cond_4

    #@f
    .line 380
    .end local v3    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_1
    invoke-virtual {p0, v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->updateHead(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    #@12
    .line 381
    if-eqz v1, :cond_3

    #@14
    .end local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_2
    return-object v2

    #@15
    .line 378
    .end local v1    # "hasItem":Z
    .restart local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_2
    const/4 v1, 0x0

    #@16
    .restart local v1    # "hasItem":Z
    goto :goto_1

    #@17
    :cond_3
    move-object v2, v4

    #@18
    .line 381
    goto :goto_2

    #@19
    .line 383
    .restart local v3    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_4
    if-eq v2, v3, :cond_0

    #@1b
    .line 386
    move-object v2, v3

    #@1c
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 397
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

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
    .line 635
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;

    #@2
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;-><init>(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    #@5
    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v6, 0x0

    #@1
    .line 295
    invoke-static {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->checkNotNull(Ljava/lang/Object;)V

    #@4
    .line 296
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@6
    invoke-direct {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;)V

    #@9
    .line 298
    .local v0, "newNode":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@b
    .local v3, "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    move-object v1, v3

    #@c
    .line 299
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_0
    :goto_0
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@e
    .line 300
    .local v2, "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v2, :cond_2

    #@10
    .line 302
    invoke-virtual {v1, v6, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->casNext(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    #@13
    move-result v5

    #@14
    if-eqz v5, :cond_0

    #@16
    .line 306
    if-eq v1, v3, :cond_1

    #@18
    .line 307
    invoke-direct {p0, v3, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->casTail(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    #@1b
    .line 308
    :cond_1
    const/4 v5, 0x1

    #@1c
    return v5

    #@1d
    .line 312
    :cond_2
    if-ne v1, v2, :cond_4

    #@1f
    .line 317
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@21
    .end local v3    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v4, "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-eq v3, v4, :cond_3

    #@23
    move-object v1, v4

    #@24
    move-object v3, v4

    #@25
    .end local v4    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v3    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    goto :goto_0

    #@26
    .end local v3    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v4    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_3
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@28
    move-object v3, v4

    #@29
    .end local v4    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v3    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    goto :goto_0

    #@2a
    .line 320
    :cond_4
    if-eq v1, v3, :cond_6

    #@2c
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@2e
    .end local v3    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v4    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-eq v3, v4, :cond_5

    #@30
    move-object v1, v4

    #@31
    move-object v3, v4

    #@32
    .end local v4    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v3    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    goto :goto_0

    #@33
    .end local v3    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v4    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_5
    move-object v3, v4

    #@34
    .end local v4    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v3    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_6
    move-object v1, v2

    #@35
    goto :goto_0
.end method

.method public peek()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 352
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@2
    .local v0, "h":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    move-object v2, v0

    #@3
    .line 353
    .local v2, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_0
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    #@5
    .line 354
    .local v1, "item":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_1

    #@7
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@9
    .local v3, "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v3, :cond_2

    #@b
    .line 355
    .end local v3    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_1
    invoke-virtual {p0, v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->updateHead(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    #@e
    .line 356
    return-object v1

    #@f
    .line 358
    .restart local v3    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_2
    if-eq v2, v3, :cond_0

    #@11
    .line 361
    move-object v2, v3

    #@12
    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    const/4 v5, 0x0

    #@1
    .line 327
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@3
    .local v0, "h":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    move-object v2, v0

    #@4
    .line 328
    .local v2, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_0
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    #@6
    .line 330
    .local v1, "item":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_3

    #@8
    invoke-virtual {v2, v1, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_3

    #@e
    .line 333
    if-eq v2, v0, :cond_1

    #@10
    .line 334
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@12
    .local v3, "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-eqz v3, :cond_2

    #@14
    .end local v3    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_1
    invoke-virtual {p0, v0, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->updateHead(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    #@17
    .line 335
    :cond_1
    return-object v1

    #@18
    .restart local v3    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_2
    move-object v3, v2

    #@19
    .line 334
    goto :goto_1

    #@1a
    .line 337
    .end local v3    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_3
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@1c
    .restart local v3    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v3, :cond_4

    #@1e
    .line 338
    invoke-virtual {p0, v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->updateHead(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    #@21
    .line 339
    return-object v5

    #@22
    .line 341
    :cond_4
    if-eq v2, v3, :cond_0

    #@24
    .line 344
    move-object v2, v3

    #@25
    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 456
    if-nez p1, :cond_0

    #@4
    return v6

    #@5
    .line 457
    :cond_0
    const/4 v3, 0x0

    #@6
    .line 458
    .local v3, "pred":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@9
    move-result-object v2

    #@a
    .end local v3    # "pred":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v2, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_0
    if-eqz v2, :cond_3

    #@c
    .line 459
    iget-object v0, v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    #@e
    .line 460
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_2

    #@10
    .line 461
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v4

    #@14
    .line 460
    if-eqz v4, :cond_2

    #@16
    .line 462
    invoke-virtual {v2, v0, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@19
    move-result v4

    #@1a
    .line 460
    if-eqz v4, :cond_2

    #@1c
    .line 463
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->succ(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@1f
    move-result-object v1

    #@20
    .line 464
    .local v1, "next":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-eqz v3, :cond_1

    #@22
    if-eqz v1, :cond_1

    #@24
    .line 465
    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->casNext(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    #@27
    .line 466
    :cond_1
    const/4 v4, 0x1

    #@28
    return v4

    #@29
    .line 468
    .end local v1    # "next":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_2
    move-object v3, v2

    #@2a
    .line 458
    .local v3, "pred":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->succ(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@2d
    move-result-object v2

    #@2e
    goto :goto_0

    #@2f
    .line 470
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    .end local v3    # "pred":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_3
    return v6
.end method

.method public size()I
    .locals 3

    #@0
    .prologue
    .line 417
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    const/4 v0, 0x0

    #@1
    .line 418
    .local v0, "count":I
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@4
    move-result-object v1

    #@5
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_0

    #@7
    .line 419
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    #@9
    if-eqz v2, :cond_1

    #@b
    .line 421
    add-int/lit8 v0, v0, 0x1

    #@d
    const v2, 0x7fffffff

    #@10
    if-ne v0, v2, :cond_1

    #@12
    .line 423
    :cond_0
    return v0

    #@13
    .line 418
    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->succ(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@16
    move-result-object v1

    #@17
    goto :goto_0
.end method

.method final succ(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;)",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 283
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@2
    .line 284
    .local v0, "next":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-ne p1, v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@6
    .end local v0    # "next":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_0
    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .line 551
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 552
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@8
    move-result-object v2

    #@9
    .local v2, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_0
    if-eqz v2, :cond_1

    #@b
    .line 553
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    #@d
    .line 554
    .local v1, "item":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_0

    #@f
    .line 555
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@12
    .line 552
    :cond_0
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->succ(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@15
    move-result-object v2

    #@16
    goto :goto_0

    #@17
    .line 557
    .end local v1    # "item":Ljava/lang/Object;, "TE;"
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    return-object v3
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v7, 0x0

    #@1
    .line 598
    const/4 v2, 0x0

    #@2
    .line 600
    .local v2, "k":I
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@5
    move-result-object v4

    #@6
    .local v4, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    move v3, v2

    #@7
    .end local v2    # "k":I
    .local v3, "k":I
    :goto_0
    if-eqz v4, :cond_0

    #@9
    array-length v6, p1

    #@a
    if-ge v3, v6, :cond_0

    #@c
    .line 601
    iget-object v1, v4, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    #@e
    .line 602
    .local v1, "item":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_5

    #@10
    .line 603
    add-int/lit8 v2, v3, 0x1

    #@12
    .end local v3    # "k":I
    .restart local v2    # "k":I
    aput-object v1, p1, v3

    #@14
    .line 600
    :goto_1
    invoke-virtual {p0, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->succ(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@17
    move-result-object v4

    #@18
    move v3, v2

    #@19
    .end local v2    # "k":I
    .restart local v3    # "k":I
    goto :goto_0

    #@1a
    .line 605
    .end local v1    # "item":Ljava/lang/Object;, "TE;"
    :cond_0
    if-nez v4, :cond_2

    #@1c
    .line 606
    array-length v6, p1

    #@1d
    if-ge v3, v6, :cond_1

    #@1f
    .line 607
    aput-object v7, p1, v3

    #@21
    .line 608
    :cond_1
    return-object p1

    #@22
    .line 612
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    #@24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@27
    .line 613
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@2a
    move-result-object v5

    #@2b
    .local v5, "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_2
    if-eqz v5, :cond_4

    #@2d
    .line 614
    iget-object v1, v5, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    #@2f
    .line 615
    .restart local v1    # "item":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_3

    #@31
    .line 616
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@34
    .line 613
    :cond_3
    invoke-virtual {p0, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->succ(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@37
    move-result-object v5

    #@38
    goto :goto_2

    #@39
    .line 618
    .end local v1    # "item":Ljava/lang/Object;, "TE;"
    :cond_4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@3c
    move-result-object v6

    #@3d
    return-object v6

    #@3e
    .end local v0    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .end local v5    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v1    # "item":Ljava/lang/Object;, "TE;"
    :cond_5
    move v2, v3

    #@3f
    .end local v3    # "k":I
    .restart local v2    # "k":I
    goto :goto_1
.end method

.method final updateHead(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 273
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, "h":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local p2, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-eq p1, p2, :cond_0

    #@2
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->casHead(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 274
    invoke-virtual {p1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    #@b
    .line 272
    :cond_0
    return-void
.end method
