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
        Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;,
        Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TE;>;",
        "Ljava/util/Queue<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final blacklist HEAD:Ljava/lang/invoke/VarHandle;

.field static final blacklist ITEM:Ljava/lang/invoke/VarHandle;

.field private static final blacklist MAX_HOPS:I = 0x8

.field static final blacklist NEXT:Ljava/lang/invoke/VarHandle;

.field private static final blacklist TAIL:Ljava/lang/invoke/VarHandle;

.field private static final whitelist serialVersionUID:J = 0x2bafb2a664c708cL


# instance fields
.field volatile transient greylist-max-o head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field private volatile transient greylist-max-o tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 1064
    const-class v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    :try_start_2
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    .line 1065
    .local v1, "l":Ljava/lang/invoke/MethodHandles$Lookup;
    const-string v2, "head"

    const-class v3, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/ConcurrentLinkedQueue;->HEAD:Ljava/lang/invoke/VarHandle;

    .line 1067
    const-string v2, "tail"

    const-class v3, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/ConcurrentLinkedQueue;->TAIL:Ljava/lang/invoke/VarHandle;

    .line 1069
    const-class v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    const-string v2, "item"

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/ConcurrentLinkedQueue;->ITEM:Ljava/lang/invoke/VarHandle;

    .line 1070
    const-class v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    const-string v2, "next"

    const-class v3, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/ConcurrentLinkedQueue;->NEXT:Ljava/lang/invoke/VarHandle;
    :try_end_32
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_32} :catch_34

    .line 1073
    .end local v1    # "l":Ljava/lang/invoke/MethodHandles$Lookup;
    nop

    .line 1074
    return-void

    .line 1071
    :catch_34
    move-exception v0

    .line 1072
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 244
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 245
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 246
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

    .line 257
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 258
    const/4 v0, 0x0

    .local v0, "h":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    const/4 v1, 0x0

    .line 259
    .local v1, "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 260
    .local v3, "e":Ljava/lang/Object;, "TE;"
    new-instance v4, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;)V

    .line 261
    .local v4, "newNode":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v0, :cond_21

    .line 262
    move-object v1, v4

    move-object v0, v4

    goto :goto_26

    .line 264
    :cond_21
    move-object v5, v4

    .end local v1    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v5, "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->appendRelaxed(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    move-object v1, v5

    .line 265
    .end local v3    # "e":Ljava/lang/Object;, "TE;"
    .end local v4    # "newNode":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v5    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v1    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_26
    goto :goto_9

    .line 266
    :cond_27
    if-nez v0, :cond_30

    .line 267
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;-><init>()V

    move-object v1, v2

    move-object v0, v2

    .line 268
    :cond_30
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 269
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 270
    return-void
.end method

.method private blacklist bulkRemove(Ljava/util/function/Predicate;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 995
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    const/4 v0, 0x0

    .line 997
    .local v0, "removed":Z
    :goto_1
    const/16 v1, 0x8

    .line 1000
    .local v1, "hops":I
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .local v2, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    move-object v3, v2

    .local v3, "c":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    const/4 v4, 0x0

    .local v4, "pred":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_7
    if-eqz v2, :cond_47

    .line 1001
    iget-object v5, v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 1003
    .local v5, "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    iget-object v6, v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    move-object v7, v6

    .local v7, "item":Ljava/lang/Object;, "TE;"
    if-eqz v6, :cond_12

    const/4 v6, 0x1

    goto :goto_13

    :cond_12
    const/4 v6, 0x0

    :goto_13
    move v8, v6

    .local v8, "pAlive":Z
    if-eqz v6, :cond_25

    .line 1004
    invoke-interface {p1, v7}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 1005
    const/4 v6, 0x0

    invoke-virtual {v2, v7, v6}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 1006
    const/4 v0, 0x1

    .line 1007
    :cond_24
    const/4 v8, 0x0

    .line 1010
    :cond_25
    if-nez v8, :cond_2d

    if-eqz v5, :cond_2d

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_2e

    :cond_2d
    goto :goto_31

    .line 1021
    :cond_2e
    if-ne v2, v5, :cond_45

    .line 1022
    goto :goto_1

    .line 1014
    :goto_31
    if-eq v3, v2, :cond_3b

    move-object v6, v2

    .end local v3    # "c":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v6, "c":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    invoke-direct {p0, v4, v3, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->tryCasSuccessor(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    move-result v3

    if-eqz v3, :cond_3e

    move-object v3, v6

    .end local v6    # "c":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v3    # "c":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_3b
    if-eqz v8, :cond_45

    move-object v6, v3

    .line 1017
    .end local v3    # "c":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v6    # "c":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_3e
    const/16 v1, 0x8

    .line 1018
    move-object v3, v2

    .line 1019
    .end local v4    # "pred":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v3, "pred":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    move-object v4, v5

    move-object v9, v4

    move-object v4, v3

    move-object v3, v9

    .line 1000
    .end local v6    # "c":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v7    # "item":Ljava/lang/Object;, "TE;"
    .end local v8    # "pAlive":Z
    .local v3, "c":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v4    # "pred":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_45
    move-object v2, v5

    goto :goto_7

    .line 1024
    .end local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v3    # "c":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v4    # "pred":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v5    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_47
    return v0
.end method

.method static synthetic blacklist lambda$clear$2(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "e"    # Ljava/lang/Object;

    .line 984
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic blacklist lambda$removeAll$0(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "c"    # Ljava/util/Collection;
    .param p1, "e"    # Ljava/lang/Object;

    .line 972
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$retainAll$1(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "c"    # Ljava/util/Collection;
    .param p1, "e"    # Ljava/lang/Object;

    .line 980
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
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

    .line 840
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 843
    const/4 v0, 0x0

    .local v0, "h":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    const/4 v1, 0x0

    .line 844
    .local v1, "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_5
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    .local v3, "item":Ljava/lang/Object;
    if-eqz v2, :cond_1c

    .line 846
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-direct {v2, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;)V

    .line 847
    .local v2, "newNode":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v0, :cond_16

    .line 848
    move-object v1, v2

    move-object v0, v2

    goto :goto_1b

    .line 850
    :cond_16
    move-object v4, v2

    .end local v1    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v4, "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->appendRelaxed(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    move-object v1, v4

    .line 851
    .end local v2    # "newNode":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v4    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v1    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_1b
    goto :goto_5

    .line 852
    .end local v3    # "item":Ljava/lang/Object;
    :cond_1c
    if-nez v0, :cond_25

    .line 853
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;-><init>()V

    move-object v1, v2

    move-object v0, v2

    .line 854
    :cond_25
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 855
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 856
    return-void
.end method

.method private blacklist skipDeadNodes(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;)",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;"
        }
    .end annotation

    .line 337
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, "pred":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local p2, "c":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local p3, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local p4, "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez p4, :cond_6

    .line 339
    if-ne p2, p3, :cond_5

    return-object p1

    .line 340
    :cond_5
    move-object p4, p3

    .line 342
    :cond_6
    invoke-direct {p0, p1, p2, p4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->tryCasSuccessor(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    move-result v0

    if-eqz v0, :cond_19

    if-eqz p1, :cond_17

    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedQueue;->ITEM:Ljava/lang/invoke/VarHandle;

    .line 343
    invoke-polymorphic {v0, p1}, Ljava/lang/invoke/VarHandle;->get([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 344
    :cond_17
    move-object v0, p1

    goto :goto_1a

    :cond_19
    move-object v0, p3

    .line 342
    :goto_1a
    return-object v0
.end method

.method private greylist-max-o toArrayInternal([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 8
    .param p1, "a"    # [Ljava/lang/Object;

    .line 633
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    move-object v0, p1

    .line 635
    .local v0, "x":[Ljava/lang/Object;
    :goto_1
    const/4 v1, 0x0

    .line 636
    .local v1, "size":I
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v2

    .local v2, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_6
    if-eqz v2, :cond_2b

    .line 638
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    move-object v4, v3

    .local v4, "item":Ljava/lang/Object;, "TE;"
    if-eqz v3, :cond_23

    .line 639
    if-nez v0, :cond_13

    .line 640
    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/Object;

    goto :goto_1e

    .line 641
    :cond_13
    array-length v3, v0

    if-ne v1, v3, :cond_1e

    .line 642
    add-int/lit8 v3, v1, 0x4

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 643
    :cond_1e
    :goto_1e
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "size":I
    .local v3, "size":I
    aput-object v4, v0, v1

    move v1, v3

    .line 645
    .end local v3    # "size":I
    .restart local v1    # "size":I
    :cond_23
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v5, v3

    .end local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v5, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-ne v2, v3, :cond_29

    .line 646
    goto :goto_1

    .line 647
    .end local v4    # "item":Ljava/lang/Object;, "TE;"
    :cond_29
    move-object v2, v5

    goto :goto_6

    .line 648
    .end local v5    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_2b
    const/4 v2, 0x0

    if-nez v0, :cond_31

    .line 649
    new-array v2, v2, [Ljava/lang/Object;

    return-object v2

    .line 650
    :cond_31
    if-eqz p1, :cond_42

    array-length v3, p1

    if-gt v1, v3, :cond_42

    .line 651
    if-eq p1, v0, :cond_3b

    .line 652
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 653
    :cond_3b
    array-length v2, p1

    if-ge v1, v2, :cond_41

    .line 654
    const/4 v2, 0x0

    aput-object v2, p1, v1

    .line 655
    :cond_41
    return-object p1

    .line 657
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

.method private blacklist tryCasSuccessor(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;)Z"
        }
    .end annotation

    .line 315
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, "pred":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local p2, "c":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local p3, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-eqz p1, :cond_a

    .line 316
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedQueue;->NEXT:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p1, p2, p3}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    move-result v0

    return v0

    .line 317
    :cond_a
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedQueue;->HEAD:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p2, p3}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 318
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedQueue;->NEXT:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p2, p2}, Ljava/lang/invoke/VarHandle;->setRelease([Ljava/lang/Object;)V, (Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    .line 319
    const/4 v0, 0x1

    return v0

    .line 321
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 818
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 821
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v0

    .local v0, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_7
    if-eqz v0, :cond_16

    .line 823
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "item":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_11

    .line 824
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 821
    .end local v2    # "item":Ljava/lang/Object;, "TE;"
    :cond_11
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->succ(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v0

    goto :goto_7

    .line 828
    .end local v0    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_16
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 829
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

    .line 283
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

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

    .line 558
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    if-eq p1, p0, :cond_6d

    .line 563
    const/4 v0, 0x0

    .local v0, "beginningOfTheEnd":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    const/4 v1, 0x0

    .line 564
    .local v1, "last":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 565
    .local v3, "e":Ljava/lang/Object;, "TE;"
    new-instance v4, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;)V

    .line 566
    .local v4, "newNode":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v0, :cond_20

    .line 567
    move-object v1, v4

    move-object v0, v4

    goto :goto_25

    .line 569
    :cond_20
    move-object v5, v4

    .end local v1    # "last":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v5, "last":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->appendRelaxed(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    move-object v1, v5

    .line 570
    .end local v3    # "e":Ljava/lang/Object;, "TE;"
    .end local v4    # "newNode":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v5    # "last":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v1    # "last":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_25
    goto :goto_8

    .line 571
    :cond_26
    if-nez v0, :cond_2a

    .line 572
    const/4 v2, 0x0

    return v2

    .line 575
    :cond_2a
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .local v2, "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    move-object v3, v2

    .line 576
    .local v3, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_2d
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 577
    .local v4, "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v4, :cond_52

    .line 579
    sget-object v5, Ljava/util/concurrent/ConcurrentLinkedQueue;->NEXT:Ljava/lang/invoke/VarHandle;

    const/4 v6, 0x0

    invoke-polymorphic {v5, v3, v6, v0}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/lang/Void;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 582
    sget-object v5, Ljava/util/concurrent/ConcurrentLinkedQueue;->TAIL:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v5, p0, v2, v1}, Ljava/lang/invoke/VarHandle;->weakCompareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    move-result v5

    if-nez v5, :cond_50

    .line 585
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 586
    iget-object v5, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-nez v5, :cond_50

    .line 587
    sget-object v5, Ljava/util/concurrent/ConcurrentLinkedQueue;->TAIL:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v5, p0, v2, v1}, Ljava/lang/invoke/VarHandle;->weakCompareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    .line 589
    :cond_50
    const/4 v5, 0x1

    return v5

    .line 593
    :cond_52
    if-ne v3, v4, :cond_60

    .line 598
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v6, v5

    .end local v2    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v6, "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-eq v2, v5, :cond_5b

    move-object v2, v6

    goto :goto_5d

    :cond_5b
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    :goto_5d
    move-object v3, v2

    move-object v2, v6

    .end local v3    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v2, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    goto :goto_6c

    .line 601
    .end local v6    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v2, "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v3    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_60
    if-eq v3, v2, :cond_6a

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v6, v5

    .end local v2    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v6    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-eq v2, v5, :cond_69

    move-object v2, v6

    goto :goto_6b

    :cond_69
    move-object v2, v6

    .end local v6    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v2    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_6a
    move-object v6, v4

    :goto_6b
    move-object v3, v6

    .line 602
    .end local v4    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_6c
    :goto_6c
    goto :goto_2d

    .line 560
    .end local v0    # "beginningOfTheEnd":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v1    # "last":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v2    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v3    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_6d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api clear()V
    .registers 2

    .line 984
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->bulkRemove(Ljava/util/function/Predicate;)Z

    .line 985
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 489
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 491
    :cond_4
    :goto_4
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    const/4 v2, 0x0

    .local v2, "pred":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_7
    if-eqz v1, :cond_31

    .line 492
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 494
    .local v3, "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    iget-object v4, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    move-object v5, v4

    .local v5, "item":Ljava/lang/Object;, "TE;"
    if-eqz v4, :cond_1b

    .line 495
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 496
    const/4 v0, 0x1

    return v0

    .line 497
    :cond_18
    move-object v2, v1

    move-object v1, v3

    goto :goto_7

    .line 499
    :cond_1b
    move-object v4, v1

    .line 500
    .local v4, "c":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_1c
    if-eqz v3, :cond_2b

    iget-object v6, v3, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-eqz v6, :cond_23

    goto :goto_2b

    .line 503
    :cond_23
    move-object v6, v3

    .end local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v6, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-ne v1, v3, :cond_27

    goto :goto_4

    .line 499
    :cond_27
    iget-object v3, v6, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v1, v6

    goto :goto_1c

    .line 501
    .end local v6    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_2b
    :goto_2b
    invoke-direct {p0, v2, v4, v1, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->skipDeadNodes(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v2

    move-object v1, v3

    .line 505
    .end local v3    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v4    # "c":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v5    # "item":Ljava/lang/Object;, "TE;"
    goto :goto_7

    .line 506
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v2    # "pred":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_31
    return v0
.end method

.method greylist-max-o first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;"
        }
    .end annotation

    .line 429
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    nop

    :goto_1
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .local v0, "h":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    move-object v1, v0

    .line 430
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_4
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    .line 431
    .local v2, "hasItem":Z
    :goto_b
    if-nez v2, :cond_18

    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v4, v3

    .local v4, "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v3, :cond_13

    goto :goto_18

    .line 435
    :cond_13
    if-ne v1, v4, :cond_16

    .line 436
    goto :goto_1

    .line 429
    .end local v2    # "hasItem":Z
    :cond_16
    move-object v1, v4

    goto :goto_4

    .line 432
    .end local v4    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v2    # "hasItem":Z
    :cond_18
    :goto_18
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->updateHead(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    .line 433
    if-eqz v2, :cond_1f

    move-object v3, v1

    goto :goto_20

    :cond_1f
    const/4 v3, 0x0

    :goto_20
    return-object v3
.end method

.method public whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1053
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->forEachFrom(Ljava/util/function/Consumer;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    .line 1055
    return-void
.end method

.method blacklist forEachFrom(Ljava/util/function/Consumer;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 1033
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    .local p2, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    const/4 v0, 0x0

    .local v0, "pred":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_1
    if-eqz p2, :cond_2c

    .line 1034
    iget-object v1, p2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 1036
    .local v1, "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    iget-object v2, p2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    move-object v3, v2

    .local v3, "item":Ljava/lang/Object;, "TE;"
    if-eqz v2, :cond_10

    .line 1037
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1038
    move-object v0, p2

    move-object p2, v1

    goto :goto_1

    .line 1040
    :cond_10
    move-object v2, p2

    .line 1041
    .local v2, "c":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_11
    if-eqz v1, :cond_26

    iget-object v4, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-eqz v4, :cond_18

    goto :goto_26

    .line 1044
    :cond_18
    move-object v4, v1

    .end local p2    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v4, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-ne p2, v1, :cond_22

    const/4 p2, 0x0

    .end local v0    # "pred":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local p2, "pred":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v5, v0

    move-object v0, p2

    move-object p2, v5

    .end local v4    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v0, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    goto :goto_2b

    .line 1040
    .end local p2    # "pred":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v0, "pred":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v4    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_22
    iget-object v1, v4, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object p2, v4

    goto :goto_11

    .line 1042
    .end local v4    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local p2, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_26
    :goto_26
    invoke-direct {p0, v0, v2, p2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->skipDeadNodes(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v0

    move-object p2, v1

    .line 1046
    .end local v1    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v2    # "c":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v3    # "item":Ljava/lang/Object;, "TE;"
    :goto_2b
    goto :goto_1

    .line 1047
    .end local v0    # "pred":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_2c
    return-void
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 447
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

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

    .line 729
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;-><init>(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    return-object v0
.end method

.method public whitelist test-api offer(Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 355
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;)V

    .line 357
    .local v0, "newNode":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .local v1, "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    move-object v2, v1

    .line 358
    .local v2, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_c
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 359
    .local v3, "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v3, :cond_24

    .line 361
    sget-object v4, Ljava/util/concurrent/ConcurrentLinkedQueue;->NEXT:Ljava/lang/invoke/VarHandle;

    const/4 v5, 0x0

    invoke-polymorphic {v4, v2, v5, v0}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/lang/Void;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 365
    if-eq v2, v1, :cond_22

    .line 366
    sget-object v4, Ljava/util/concurrent/ConcurrentLinkedQueue;->TAIL:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v4, p0, v1, v0}, Ljava/lang/invoke/VarHandle;->weakCompareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    .line 367
    :cond_22
    const/4 v4, 0x1

    return v4

    .line 371
    :cond_24
    if-ne v2, v3, :cond_32

    .line 376
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v5, v4

    .end local v1    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v5, "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-eq v1, v4, :cond_2d

    move-object v1, v5

    goto :goto_2f

    :cond_2d
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    :goto_2f
    move-object v2, v1

    move-object v1, v5

    .end local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    goto :goto_3e

    .line 379
    .end local v5    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v1, "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_32
    if-eq v2, v1, :cond_3c

    iget-object v4, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v5, v4

    .end local v1    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v5    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-eq v1, v4, :cond_3b

    move-object v1, v5

    goto :goto_3d

    :cond_3b
    move-object v1, v5

    .end local v5    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v1    # "t":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_3c
    move-object v5, v3

    :goto_3d
    move-object v2, v5

    .line 380
    .end local v3    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_3e
    :goto_3e
    goto :goto_c
.end method

.method public whitelist test-api peek()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 406
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    nop

    :goto_1
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .local v0, "h":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    move-object v1, v0

    .line 408
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_4
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    move-object v3, v2

    .local v3, "item":Ljava/lang/Object;, "TE;"
    if-nez v2, :cond_14

    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v4, v2

    .local v4, "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v2, :cond_f

    goto :goto_14

    .line 413
    :cond_f
    if-ne v1, v4, :cond_12

    .line 414
    goto :goto_1

    .line 406
    .end local v3    # "item":Ljava/lang/Object;, "TE;"
    :cond_12
    move-object v1, v4

    goto :goto_4

    .line 410
    .end local v4    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v3    # "item":Ljava/lang/Object;, "TE;"
    :cond_14
    :goto_14
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->updateHead(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    .line 411
    return-object v3
.end method

.method public whitelist test-api poll()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 385
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    nop

    :goto_1
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .local v0, "h":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    move-object v1, v0

    .line 387
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_4
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    move-object v3, v2

    .local v3, "item":Ljava/lang/Object;, "TE;"
    const/4 v4, 0x0

    if-eqz v2, :cond_1e

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 390
    if-eq v1, v0, :cond_1d

    .line 391
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v4, v2

    .local v4, "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-eqz v2, :cond_19

    move-object v2, v4

    goto :goto_1a

    :cond_19
    move-object v2, v1

    :goto_1a
    invoke-virtual {p0, v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->updateHead(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    .line 392
    .end local v4    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_1d
    return-object v3

    .line 394
    :cond_1e
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v5, v2

    .local v5, "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v2, :cond_27

    .line 395
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->updateHead(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    .line 396
    return-object v4

    .line 398
    :cond_27
    if-ne v1, v5, :cond_2a

    .line 399
    goto :goto_1

    .line 385
    .end local v3    # "item":Ljava/lang/Object;, "TE;"
    :cond_2a
    move-object v1, v5

    goto :goto_4
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 522
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 524
    :cond_4
    :goto_4
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    const/4 v2, 0x0

    .local v2, "pred":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_7
    if-eqz v1, :cond_3b

    .line 525
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 527
    .local v3, "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    iget-object v4, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    move-object v5, v4

    .local v5, "item":Ljava/lang/Object;, "TE;"
    if-eqz v4, :cond_25

    .line 528
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    const/4 v4, 0x0

    invoke-virtual {v1, v5, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 529
    invoke-direct {p0, v2, v1, v1, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->skipDeadNodes(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 530
    const/4 v0, 0x1

    return v0

    .line 532
    :cond_22
    move-object v2, v1

    move-object v1, v3

    goto :goto_7

    .line 534
    :cond_25
    move-object v4, v1

    .line 535
    .local v4, "c":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_26
    if-eqz v3, :cond_35

    iget-object v6, v3, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-eqz v6, :cond_2d

    goto :goto_35

    .line 538
    :cond_2d
    move-object v6, v3

    .end local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v6, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-ne v1, v3, :cond_31

    goto :goto_4

    .line 534
    :cond_31
    iget-object v3, v6, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v1, v6

    goto :goto_26

    .line 536
    .end local v6    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_35
    :goto_35
    invoke-direct {p0, v2, v4, v1, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->skipDeadNodes(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v2

    move-object v1, v3

    .line 540
    .end local v3    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v4    # "c":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v5    # "item":Ljava/lang/Object;, "TE;"
    goto :goto_7

    .line 541
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v2    # "pred":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_3b
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

    .line 971
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue$$ExternalSyntheticLambda1;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->bulkRemove(Ljava/util/function/Predicate;)Z

    move-result v0

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

    .line 963
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->bulkRemove(Ljava/util/function/Predicate;)Z

    move-result v0

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

    .line 979
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue$$ExternalSyntheticLambda0;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->bulkRemove(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api size()I
    .registers 5

    .line 468
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    nop

    :goto_1
    const/4 v0, 0x0

    .line 469
    .local v0, "count":I
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_6
    if-eqz v1, :cond_1c

    .line 470
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-eqz v2, :cond_14

    .line 471
    add-int/lit8 v0, v0, 0x1

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_14

    .line 472
    goto :goto_1c

    .line 473
    :cond_14
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v3, v2

    .end local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v3, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-ne v1, v2, :cond_1a

    .line 474
    goto :goto_1

    .line 473
    :cond_1a
    move-object v1, v3

    goto :goto_6

    .line 476
    .end local v3    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
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

    .line 956
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;-><init>(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    return-object v0
.end method

.method final greylist-max-o succ(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;)",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;"
        }
    .end annotation

    .line 302
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v1, v0

    .end local p1    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-ne p1, v0, :cond_7

    .line 303
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 304
    :cond_7
    return-object v1
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 2

    .line 675
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->toArrayInternal([Ljava/lang/Object;)[Ljava/lang/Object;

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

    .line 715
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->toArrayInternal([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 606
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    const/4 v0, 0x0

    .line 608
    .local v0, "a":[Ljava/lang/String;
    :goto_1
    const/4 v1, 0x0

    .line 609
    .local v1, "charLength":I
    const/4 v2, 0x0

    .line 610
    .local v2, "size":I
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v3

    .local v3, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_7
    if-eqz v3, :cond_36

    .line 612
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    move-object v5, v4

    .local v5, "item":Ljava/lang/Object;, "TE;"
    if-eqz v4, :cond_2e

    .line 613
    if-nez v0, :cond_14

    .line 614
    const/4 v4, 0x4

    new-array v0, v4, [Ljava/lang/String;

    goto :goto_20

    .line 615
    :cond_14
    array-length v4, v0

    if-ne v2, v4, :cond_20

    .line 616
    mul-int/lit8 v4, v2, 0x2

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    .line 617
    :cond_20
    :goto_20
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 618
    .local v4, "s":Ljava/lang/String;
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "size":I
    .local v6, "size":I
    aput-object v4, v0, v2

    .line 619
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    move v2, v6

    .line 621
    .end local v4    # "s":Ljava/lang/String;
    .end local v6    # "size":I
    .restart local v2    # "size":I
    :cond_2e
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v6, v4

    .end local v3    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v6, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-ne v3, v4, :cond_34

    .line 622
    goto :goto_1

    .line 623
    .end local v5    # "item":Ljava/lang/Object;, "TE;"
    :cond_34
    move-object v3, v6

    goto :goto_7

    .line 625
    .end local v6    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_36
    if-nez v2, :cond_3b

    .line 626
    const-string v3, "[]"

    return-object v3

    .line 628
    :cond_3b
    invoke-static {v0, v2, v1}, Ljava/util/concurrent/Helpers;->toString([Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method final greylist-max-o updateHead(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 292
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, "h":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local p2, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-eq p1, p2, :cond_11

    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedQueue;->HEAD:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 293
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedQueue;->NEXT:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p1, p1}, Ljava/lang/invoke/VarHandle;->setRelease([Ljava/lang/Object;)V, (Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    .line 294
    :cond_11
    return-void
.end method
