.class public Ljava/util/concurrent/LinkedTransferQueue;
.super Ljava/util/AbstractQueue;
.source "LinkedTransferQueue.java"

# interfaces
.implements Ljava/util/concurrent/TransferQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/LinkedTransferQueue$DualNode;,
        Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;,
        Ljava/util/concurrent/LinkedTransferQueue$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TE;>;",
        "Ljava/util/concurrent/TransferQueue<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final blacklist HEAD:Ljava/lang/invoke/VarHandle;

.field private static final blacklist MAX_HOPS:I = 0x8

.field static final blacklist SWEEPVOTES:Ljava/lang/invoke/VarHandle;

.field static final greylist-max-o SWEEP_THRESHOLD:I = 0xf

.field static final blacklist TAIL:Ljava/lang/invoke/VarHandle;

.field private static final whitelist serialVersionUID:J = -0x2cbacc91e0a3c166L


# instance fields
.field volatile transient blacklist head:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

.field volatile transient greylist-max-o sweepVotes:I

.field volatile transient blacklist tail:Ljava/util/concurrent/LinkedTransferQueue$DualNode;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 1625
    :try_start_0
    const-class v0, Ljava/util/concurrent/LinkedTransferQueue;

    .local v0, "ltq":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 1626
    .local v1, "tn":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v2

    .line 1627
    .local v2, "l":Ljava/lang/invoke/MethodHandles$Lookup;
    const-string v3, "head"

    invoke-virtual {v2, v0, v3, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v3

    sput-object v3, Ljava/util/concurrent/LinkedTransferQueue;->HEAD:Ljava/lang/invoke/VarHandle;

    .line 1628
    const-string v3, "tail"

    invoke-virtual {v2, v0, v3, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v3

    sput-object v3, Ljava/util/concurrent/LinkedTransferQueue;->TAIL:Ljava/lang/invoke/VarHandle;

    .line 1629
    const-string v3, "sweepVotes"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v0, v3, v4}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v3

    sput-object v3, Ljava/util/concurrent/LinkedTransferQueue;->SWEEPVOTES:Ljava/lang/invoke/VarHandle;
    :try_end_22
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_22} :catch_24

    .line 1632
    .end local v0    # "ltq":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "tn":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "l":Ljava/lang/invoke/MethodHandles$Lookup;
    nop

    .line 1633
    return-void

    .line 1630
    :catch_24
    move-exception v0

    .line 1631
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 1113
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 1114
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Collection;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 1125
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 1126
    const/4 v0, 0x0

    .local v0, "h":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    const/4 v1, 0x0

    .line 1127
    .local v1, "t":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1128
    .local v3, "e":Ljava/lang/Object;, "TE;"
    new-instance v4, Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/util/concurrent/LinkedTransferQueue$DualNode;-><init>(Ljava/lang/Object;Z)V

    .line 1129
    .local v4, "newNode":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-nez v1, :cond_21

    .line 1130
    move-object v0, v4

    goto :goto_23

    .line 1132
    :cond_21
    iput-object v4, v1, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 1133
    :goto_23
    move-object v1, v4

    .line 1134
    .end local v3    # "e":Ljava/lang/Object;, "TE;"
    .end local v4    # "newNode":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    goto :goto_9

    .line 1135
    :cond_25
    iput-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 1136
    iput-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->tail:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 1137
    return-void
.end method

.method private blacklist bulkRemove(Ljava/util/function/Predicate;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1549
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    const/4 v0, 0x0

    .line 1551
    .local v0, "removed":Z
    :goto_1
    const/16 v1, 0x8

    .line 1554
    .local v1, "hops":I
    iget-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .local v2, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    move-object v3, v2

    .local v3, "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    const/4 v4, 0x0

    .local v4, "pred":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :goto_7
    if-eqz v2, :cond_4f

    .line 1555
    iget-boolean v5, v2, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->isData:Z

    .line 1556
    .local v5, "isData":Z
    iget-object v6, v2, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->item:Ljava/lang/Object;

    .line 1557
    .local v6, "item":Ljava/lang/Object;
    iget-object v7, v2, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 1558
    .local v7, "q":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-eqz v6, :cond_15

    if-eqz v5, :cond_15

    const/4 v8, 0x1

    goto :goto_16

    :cond_15
    const/4 v8, 0x0

    :goto_16
    move v9, v8

    .local v9, "pAlive":Z
    if-eqz v8, :cond_28

    .line 1559
    invoke-interface {p1, v6}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 1560
    invoke-virtual {p0, v2, v6}, Ljava/util/concurrent/LinkedTransferQueue;->tryMatchData(Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    .line 1561
    const/4 v0, 0x1

    .line 1562
    :cond_26
    const/4 v9, 0x0

    goto :goto_2d

    .line 1565
    :cond_28
    if-nez v5, :cond_2d

    if-nez v6, :cond_2d

    .line 1566
    goto :goto_4f

    .line 1567
    :cond_2d
    :goto_2d
    if-nez v9, :cond_35

    if-eqz v7, :cond_35

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_36

    :cond_35
    goto :goto_39

    .line 1577
    :cond_36
    if-ne v2, v7, :cond_4d

    .line 1578
    goto :goto_1

    .line 1571
    :goto_39
    if-eq v3, v2, :cond_43

    move-object v8, v2

    .end local v3    # "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .local v8, "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    invoke-virtual {p0, v4, v3, v2}, Ljava/util/concurrent/LinkedTransferQueue;->tryCasSuccessor(Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;)Z

    move-result v3

    if-eqz v3, :cond_46

    move-object v3, v8

    .end local v8    # "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .restart local v3    # "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_43
    if-eqz v9, :cond_4d

    move-object v8, v3

    .line 1573
    .end local v3    # "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .restart local v8    # "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_46
    const/16 v1, 0x8

    .line 1574
    move-object v3, v2

    .line 1575
    .end local v4    # "pred":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .local v3, "pred":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    move-object v4, v7

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    .line 1554
    .end local v5    # "isData":Z
    .end local v6    # "item":Ljava/lang/Object;
    .end local v8    # "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .end local v9    # "pAlive":Z
    .local v3, "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .restart local v4    # "pred":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_4d
    move-object v2, v7

    goto :goto_7

    .line 1580
    .end local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .end local v3    # "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .end local v4    # "pred":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .end local v7    # "q":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_4f
    :goto_4f
    return v0
.end method

.method static synthetic blacklist lambda$clear$2(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "e"    # Ljava/lang/Object;

    .line 1536
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic blacklist lambda$removeAll$0(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "c"    # Ljava/util/Collection;
    .param p1, "e"    # Ljava/lang/Object;

    .line 1524
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$retainAll$1(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "c"    # Ljava/util/Collection;
    .param p1, "e"    # Ljava/lang/Object;

    .line 1532
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

    .line 1498
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x0

    .local v0, "h":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    const/4 v1, 0x0

    .line 1499
    .local v1, "t":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :goto_2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    .local v3, "item":Ljava/lang/Object;
    if-eqz v2, :cond_17

    .line 1500
    new-instance v2, Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/LinkedTransferQueue$DualNode;-><init>(Ljava/lang/Object;Z)V

    .line 1501
    .local v2, "newNode":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-nez v1, :cond_13

    .line 1502
    move-object v0, v2

    goto :goto_15

    .line 1504
    :cond_13
    iput-object v2, v1, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 1505
    :goto_15
    move-object v1, v2

    .line 1506
    .end local v2    # "newNode":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    goto :goto_2

    .line 1507
    .end local v3    # "item":Ljava/lang/Object;
    :cond_17
    iput-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 1508
    iput-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->tail:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 1509
    return-void
.end method

.method private greylist-max-o toArrayInternal([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 8
    .param p1, "a"    # [Ljava/lang/Object;

    .line 796
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    move-object v0, p1

    .line 798
    .local v0, "x":[Ljava/lang/Object;
    :goto_1
    const/4 v1, 0x0

    .line 799
    .local v1, "size":I
    iget-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .local v2, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :goto_4
    if-eqz v2, :cond_30

    .line 800
    iget-object v3, v2, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->item:Ljava/lang/Object;

    .line 801
    .local v3, "item":Ljava/lang/Object;
    iget-boolean v4, v2, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->isData:Z

    if-eqz v4, :cond_25

    .line 802
    if-eqz v3, :cond_28

    .line 803
    if-nez v0, :cond_14

    .line 804
    const/4 v4, 0x4

    new-array v0, v4, [Ljava/lang/Object;

    goto :goto_1f

    .line 805
    :cond_14
    array-length v4, v0

    if-ne v1, v4, :cond_1f

    .line 806
    add-int/lit8 v4, v1, 0x4

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 807
    :cond_1f
    :goto_1f
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "size":I
    .local v4, "size":I
    aput-object v3, v0, v1

    move v1, v4

    goto :goto_28

    .line 809
    .end local v4    # "size":I
    .restart local v1    # "size":I
    :cond_25
    if-nez v3, :cond_28

    .line 810
    goto :goto_30

    .line 811
    :cond_28
    :goto_28
    iget-object v4, v2, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-object v5, v4

    .end local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .local v5, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-ne v2, v4, :cond_2e

    .line 812
    goto :goto_1

    .line 813
    .end local v3    # "item":Ljava/lang/Object;
    :cond_2e
    move-object v2, v5

    goto :goto_4

    .line 814
    .end local v5    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_30
    :goto_30
    const/4 v2, 0x0

    if-nez v0, :cond_36

    .line 815
    new-array v2, v2, [Ljava/lang/Object;

    return-object v2

    .line 816
    :cond_36
    if-eqz p1, :cond_47

    array-length v3, p1

    if-gt v1, v3, :cond_47

    .line 817
    if-eq p1, v0, :cond_40

    .line 818
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 819
    :cond_40
    array-length v2, p1

    if-ge v1, v2, :cond_46

    .line 820
    const/4 v2, 0x0

    aput-object v2, p1, v1

    .line 821
    :cond_46
    return-object p1

    .line 823
    :cond_47
    array-length v2, v0

    if-ne v1, v2, :cond_4c

    move-object v2, v0

    goto :goto_50

    :cond_4c
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    :goto_50
    return-object v2
.end method

.method private blacklist unsplice(Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;)V
    .registers 10
    .param p1, "pred"    # Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .param p2, "s"    # Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 633
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x0

    .line 634
    .local v0, "seen":Z
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .local v1, "h":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    move-object v2, v1

    .local v2, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :goto_4
    if-eqz v2, :cond_29

    .line 636
    if-ne v2, p2, :cond_b

    .line 637
    const/4 v3, 0x1

    move v0, v3

    .local v3, "matched":Z
    goto :goto_f

    .line 639
    .end local v3    # "matched":Z
    :cond_b
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->matched()Z

    move-result v3

    .line 640
    .restart local v3    # "matched":Z
    :goto_f
    iget-object v4, v2, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-object v5, v4

    .local v5, "f":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-ne v4, v2, :cond_19

    .line 641
    iget-object v4, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-object v1, v4

    move-object v2, v4

    .end local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .local v4, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    goto :goto_1e

    .line 642
    .end local v4    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .restart local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_19
    if-eqz v5, :cond_1f

    if-eqz v3, :cond_1f

    .line 643
    move-object v2, v5

    .line 649
    .end local v3    # "matched":Z
    :goto_1e
    goto :goto_4

    .line 645
    .restart local v3    # "matched":Z
    :cond_1f
    if-eq v2, v1, :cond_29

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/LinkedTransferQueue;->cmpExHead(Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;)Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-result-object v4

    if-ne v4, v1, :cond_29

    .line 646
    iput-object v1, v1, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 651
    .end local v1    # "h":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .end local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .end local v3    # "matched":Z
    .end local v5    # "f":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_29
    if-nez v0, :cond_73

    if-eqz p1, :cond_73

    iget-object v1, p1, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    if-ne v1, p2, :cond_73

    if-eqz p2, :cond_73

    iget-object v1, p2, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-object v2, v1

    .local v2, "sn":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-eq v1, p2, :cond_73

    if-eqz v2, :cond_46

    .line 653
    invoke-virtual {p1, p2, v2}, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->cmpExNext(Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;)Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-result-object v1

    if-ne v1, p2, :cond_46

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->matched()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 654
    :cond_46
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedTransferQueue;->sweepNow()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 655
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 656
    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :goto_4e
    if-eqz v1, :cond_73

    iget-object v3, v1, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-object v4, v3

    .local v4, "f":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-eqz v3, :cond_73

    iget-object v3, v4, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-object v5, v3

    .local v5, "n":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-eqz v3, :cond_73

    .line 657
    if-ne v4, v1, :cond_5f

    iget-object v3, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    goto :goto_71

    .line 658
    :cond_5f
    invoke-virtual {v4}, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->matched()Z

    move-result v3

    if-nez v3, :cond_67

    move-object v3, v4

    goto :goto_71

    .line 659
    :cond_67
    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->cmpExNext(Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;)Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-result-object v3

    move-object v6, v3

    .local v6, "u":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-ne v4, v3, :cond_70

    move-object v3, v5

    goto :goto_71

    :cond_70
    move-object v3, v6

    .end local v6    # "u":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :goto_71
    move-object v1, v3

    goto :goto_4e

    .line 662
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .end local v2    # "sn":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .end local v4    # "f":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .end local v5    # "n":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_73
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1480
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1481
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedTransferQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1482
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_7

    .line 1484
    :cond_15
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1485
    return-void
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1187
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1189
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api clear()V
    .registers 2

    .line 1536
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/LinkedTransferQueue$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedTransferQueue$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->bulkRemove(Ljava/util/function/Predicate;)Z

    .line 1537
    return-void
.end method

.method final blacklist cmpExHead(Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;)Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .registers 4
    .param p1, "cmp"    # Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .param p2, "val"    # Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 539
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue;->HEAD:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->compareAndExchange([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/LinkedTransferQueue;Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;)Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-result-object v0

    return-object v0
.end method

.method final blacklist cmpExTail(Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;)Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .registers 4
    .param p1, "cmp"    # Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .param p2, "val"    # Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 536
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue;->TAIL:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->compareAndExchange([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/LinkedTransferQueue;Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;)Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .line 1433
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1435
    :cond_4
    :goto_4
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    const/4 v2, 0x0

    .local v2, "pred":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :goto_7
    if-eqz v1, :cond_39

    .line 1436
    iget-boolean v3, v1, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->isData:Z

    .line 1437
    .local v3, "isData":Z
    iget-object v4, v1, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->item:Ljava/lang/Object;

    .line 1438
    .local v4, "item":Ljava/lang/Object;
    iget-object v5, v1, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 1439
    .local v5, "q":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-eqz v4, :cond_1e

    .line 1440
    if-eqz v3, :cond_21

    .line 1441
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 1442
    const/4 v0, 0x1

    return v0

    .line 1443
    :cond_1b
    move-object v2, v1

    move-object v1, v5

    goto :goto_7

    .line 1446
    :cond_1e
    if-nez v3, :cond_21

    .line 1447
    goto :goto_39

    .line 1448
    :cond_21
    move-object v6, v1

    .line 1449
    .local v6, "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :goto_22
    if-eqz v5, :cond_33

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->matched()Z

    move-result v7

    if-nez v7, :cond_2b

    goto :goto_33

    .line 1452
    :cond_2b
    move-object v7, v5

    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .local v7, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-ne v1, v5, :cond_2f

    goto :goto_4

    .line 1448
    :cond_2f
    iget-object v5, v7, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-object v1, v7

    goto :goto_22

    .line 1450
    .end local v7    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_33
    :goto_33
    invoke-virtual {p0, v2, v6, v1, v5}, Ljava/util/concurrent/LinkedTransferQueue;->skipDeadNodes(Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;)Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-result-object v2

    move-object v1, v5

    .line 1454
    .end local v3    # "isData":Z
    .end local v4    # "item":Ljava/lang/Object;
    .end local v5    # "q":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .end local v6    # "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    goto :goto_7

    .line 1455
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .end local v2    # "pred":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_39
    :goto_39
    return v0
.end method

.method final greylist-max-o countOfMode(Z)I
    .registers 6
    .param p1, "data"    # Z

    .line 750
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    nop

    :goto_1
    const/4 v0, 0x0

    .line 751
    .local v0, "count":I
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :goto_4
    if-eqz v1, :cond_22

    .line 752
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->matched()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 753
    iget-boolean v2, v1, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->isData:Z

    if-eq v2, p1, :cond_12

    .line 754
    const/4 v2, 0x0

    return v2

    .line 755
    :cond_12
    add-int/lit8 v0, v0, 0x1

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_1a

    .line 756
    goto :goto_22

    .line 758
    :cond_1a
    iget-object v2, v1, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-object v3, v2

    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .local v3, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-ne v1, v2, :cond_20

    .line 759
    goto :goto_1

    .line 758
    :cond_20
    move-object v1, v3

    goto :goto_4

    .line 761
    .end local v3    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_22
    :goto_22
    return v0
.end method

.method public whitelist test-api drainTo(Ljava/util/Collection;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;)I"
        }
    .end annotation

    .line 1283
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    if-eq p1, p0, :cond_14

    .line 1286
    const/4 v0, 0x0

    .line 1287
    .local v0, "n":I
    :goto_6
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedTransferQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .local v2, "e":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_13

    .line 1288
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1287
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1289
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_13
    return v0

    .line 1285
    .end local v0    # "n":I
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api drainTo(Ljava/util/Collection;I)I
    .registers 6
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;I)I"
        }
    .end annotation

    .line 1297
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    if-eq p1, p0, :cond_16

    .line 1300
    const/4 v0, 0x0

    .line 1301
    .local v0, "n":I
    :goto_6
    if-ge v0, p2, :cond_15

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedTransferQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .local v2, "e":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_15

    .line 1302
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1301
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1303
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_15
    return v0

    .line 1299
    .end local v0    # "n":I
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method final blacklist firstDataNode()Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .registers 8

    .line 721
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .local v0, "h":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :goto_3
    if-eqz v1, :cond_33

    .line 722
    iget-boolean v2, v1, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->isData:Z

    .line 723
    .local v2, "isData":Z
    iget-object v3, v1, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->item:Ljava/lang/Object;

    .line 724
    .local v3, "item":Ljava/lang/Object;
    if-eqz v2, :cond_e

    if-eqz v3, :cond_e

    .line 725
    return-object v1

    .line 726
    :cond_e
    if-nez v2, :cond_13

    if-nez v3, :cond_13

    .line 727
    goto :goto_33

    .line 728
    :cond_13
    iget-object v4, v1, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-object v5, v4

    .local v5, "q":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-nez v4, :cond_19

    .line 729
    goto :goto_33

    .line 730
    :cond_19
    if-ne v1, v5, :cond_20

    .line 731
    iget-object v4, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-object v0, v4

    move-object v1, v4

    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .local v4, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    goto :goto_32

    .line 732
    .end local v4    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_20
    if-ne v1, v0, :cond_24

    .line 733
    move-object v1, v5

    goto :goto_32

    .line 734
    :cond_24
    invoke-virtual {p0, v0, v5}, Ljava/util/concurrent/LinkedTransferQueue;->cmpExHead(Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;)Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-result-object v4

    move-object v6, v4

    .local v6, "u":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-eq v4, v0, :cond_2e

    .line 735
    move-object v0, v6

    move-object v1, v6

    goto :goto_32

    .line 737
    :cond_2e
    iput-object v0, v0, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 738
    move-object v0, v5

    move-object v1, v5

    .line 740
    .end local v2    # "isData":Z
    .end local v3    # "item":Ljava/lang/Object;
    .end local v6    # "u":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :goto_32
    goto :goto_3

    .line 741
    .end local v0    # "h":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .end local v5    # "q":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_33
    :goto_33
    const/4 v0, 0x0

    return-object v0
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

    .line 1615
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1616
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/LinkedTransferQueue;->forEachFrom(Ljava/util/function/Consumer;Ljava/util/concurrent/LinkedTransferQueue$DualNode;)V

    .line 1617
    return-void
.end method

.method blacklist forEachFrom(Ljava/util/function/Consumer;Ljava/util/concurrent/LinkedTransferQueue$DualNode;)V
    .registers 10
    .param p2, "p"    # Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;",
            "Ljava/util/concurrent/LinkedTransferQueue$DualNode;",
            ")V"
        }
    .end annotation

    .line 1590
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    const/4 v0, 0x0

    .local v0, "pred":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :goto_1
    if-eqz p2, :cond_34

    .line 1591
    iget-boolean v1, p2, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->isData:Z

    .line 1592
    .local v1, "isData":Z
    iget-object v2, p2, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->item:Ljava/lang/Object;

    .line 1593
    .local v2, "item":Ljava/lang/Object;
    iget-object v3, p2, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 1594
    .local v3, "q":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-eqz v2, :cond_13

    .line 1595
    if-eqz v1, :cond_16

    .line 1596
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1597
    move-object v0, p2

    move-object p2, v3

    goto :goto_1

    .line 1600
    :cond_13
    if-nez v1, :cond_16

    .line 1601
    goto :goto_34

    .line 1602
    :cond_16
    move-object v4, p2

    .line 1603
    .local v4, "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :goto_17
    if-eqz v3, :cond_2e

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->matched()Z

    move-result v5

    if-nez v5, :cond_20

    goto :goto_2e

    .line 1606
    :cond_20
    move-object v5, v3

    .end local p2    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .local v5, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-ne p2, v3, :cond_2a

    const/4 p2, 0x0

    .end local v0    # "pred":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .local p2, "pred":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-object v6, v0

    move-object v0, p2

    move-object p2, v6

    .end local v5    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .local v0, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    goto :goto_33

    .line 1602
    .end local p2    # "pred":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .local v0, "pred":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .restart local v5    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_2a
    iget-object v3, v5, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-object p2, v5

    goto :goto_17

    .line 1604
    .end local v5    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .local p2, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_2e
    :goto_2e
    invoke-virtual {p0, v0, v4, p2, v3}, Ljava/util/concurrent/LinkedTransferQueue;->skipDeadNodes(Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;)Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-result-object v0

    move-object p2, v3

    .line 1608
    .end local v1    # "isData":Z
    .end local v2    # "item":Ljava/lang/Object;
    .end local v3    # "q":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .end local v4    # "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :goto_33
    goto :goto_1

    .line 1609
    .end local v0    # "pred":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_34
    :goto_34
    return-void
.end method

.method public whitelist test-api getWaitingConsumerCount()I
    .registers 2

    .line 1381
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->countOfMode(Z)I

    move-result v0

    return v0
.end method

.method public whitelist test-api hasWaitingConsumer()Z
    .registers 5

    .line 1349
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    nop

    :goto_1
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .local v0, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :goto_3
    if-eqz v0, :cond_1a

    .line 1350
    iget-object v1, v0, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->item:Ljava/lang/Object;

    .line 1351
    .local v1, "item":Ljava/lang/Object;
    iget-boolean v2, v0, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->isData:Z

    if-eqz v2, :cond_e

    .line 1352
    if-eqz v1, :cond_12

    .line 1353
    goto :goto_1a

    .line 1355
    :cond_e
    if-nez v1, :cond_12

    .line 1356
    const/4 v2, 0x1

    return v2

    .line 1357
    :cond_12
    iget-object v2, v0, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-object v3, v2

    .end local v0    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .local v3, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-ne v0, v2, :cond_18

    .line 1358
    goto :goto_1

    .line 1359
    .end local v1    # "item":Ljava/lang/Object;
    :cond_18
    move-object v0, v3

    goto :goto_3

    .line 1360
    .end local v3    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 1344
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedTransferQueue;->firstDataNode()Ljava/util/concurrent/LinkedTransferQueue$DualNode;

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

    .line 1316
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/LinkedTransferQueue$Itr;

    invoke-direct {v0, p0}, Ljava/util/concurrent/LinkedTransferQueue$Itr;-><init>(Ljava/util/concurrent/LinkedTransferQueue;)V

    return-object v0
.end method

.method public whitelist test-api offer(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1173
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1175
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 7
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .line 1160
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1162
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api peek()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1321
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    nop

    :goto_1
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .local v0, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :goto_3
    if-eqz v0, :cond_1a

    .line 1322
    iget-object v1, v0, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->item:Ljava/lang/Object;

    .line 1323
    .local v1, "item":Ljava/lang/Object;
    iget-boolean v2, v0, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->isData:Z

    if-eqz v2, :cond_f

    .line 1324
    if-eqz v1, :cond_12

    .line 1325
    move-object v2, v1

    .line 1326
    .local v2, "e":Ljava/lang/Object;, "TE;"
    return-object v2

    .line 1329
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_f
    if-nez v1, :cond_12

    .line 1330
    goto :goto_1a

    .line 1331
    :cond_12
    iget-object v2, v0, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-object v3, v2

    .end local v0    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .local v3, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-ne v0, v2, :cond_18

    .line 1332
    goto :goto_1

    .line 1333
    .end local v1    # "item":Ljava/lang/Object;
    :cond_18
    move-object v0, v3

    goto :goto_3

    .line 1334
    .end local v3    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api poll()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1275
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 8
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1267
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1268
    .local v0, "nanos":J
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    .local v3, "e":Ljava/lang/Object;
    if-nez v2, :cond_1f

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_1f

    .line 1270
    :cond_19
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    .line 1269
    :cond_1f
    :goto_1f
    return-object v3
.end method

.method public whitelist test-api put(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1146
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1148
    return-void
.end method

.method public whitelist test-api remainingCapacity()I
    .registers 2

    .line 1467
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const v0, 0x7fffffff

    return v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .line 1396
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1398
    :cond_4
    :goto_4
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    const/4 v2, 0x0

    .local v2, "pred":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :goto_7
    if-eqz v1, :cond_42

    .line 1399
    iget-boolean v3, v1, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->isData:Z

    .line 1400
    .local v3, "isData":Z
    iget-object v4, v1, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->item:Ljava/lang/Object;

    .line 1401
    .local v4, "item":Ljava/lang/Object;
    iget-object v5, v1, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 1402
    .local v5, "q":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-eqz v4, :cond_27

    .line 1403
    if-eqz v3, :cond_2a

    .line 1404
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-virtual {p0, v1, v4}, Ljava/util/concurrent/LinkedTransferQueue;->tryMatchData(Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 1405
    invoke-virtual {p0, v2, v1, v1, v5}, Ljava/util/concurrent/LinkedTransferQueue;->skipDeadNodes(Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;)Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 1406
    const/4 v0, 0x1

    return v0

    .line 1408
    :cond_24
    move-object v2, v1

    move-object v1, v5

    goto :goto_7

    .line 1411
    :cond_27
    if-nez v3, :cond_2a

    .line 1412
    goto :goto_42

    .line 1413
    :cond_2a
    move-object v6, v1

    .line 1414
    .local v6, "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :goto_2b
    if-eqz v5, :cond_3c

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->matched()Z

    move-result v7

    if-nez v7, :cond_34

    goto :goto_3c

    .line 1417
    :cond_34
    move-object v7, v5

    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .local v7, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-ne v1, v5, :cond_38

    goto :goto_4

    .line 1413
    :cond_38
    iget-object v5, v7, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-object v1, v7

    goto :goto_2b

    .line 1415
    .end local v7    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_3c
    :goto_3c
    invoke-virtual {p0, v2, v6, v1, v5}, Ljava/util/concurrent/LinkedTransferQueue;->skipDeadNodes(Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;)Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-result-object v2

    move-object v1, v5

    .line 1419
    .end local v3    # "isData":Z
    .end local v4    # "item":Ljava/lang/Object;
    .end local v5    # "q":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .end local v6    # "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    goto :goto_7

    .line 1420
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .end local v2    # "pred":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_42
    :goto_42
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

    .line 1523
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1524
    new-instance v0, Ljava/util/concurrent/LinkedTransferQueue$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Ljava/util/concurrent/LinkedTransferQueue$$ExternalSyntheticLambda1;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->bulkRemove(Ljava/util/function/Predicate;)Z

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

    .line 1515
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1516
    invoke-direct {p0, p1}, Ljava/util/concurrent/LinkedTransferQueue;->bulkRemove(Ljava/util/function/Predicate;)Z

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

    .line 1531
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1532
    new-instance v0, Ljava/util/concurrent/LinkedTransferQueue$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Ljava/util/concurrent/LinkedTransferQueue$$ExternalSyntheticLambda2;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->bulkRemove(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 1377
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->countOfMode(Z)I

    move-result v0

    return v0
.end method

.method final blacklist skipDeadNodes(Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;)Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .registers 6
    .param p1, "pred"    # Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .param p2, "c"    # Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .param p3, "p"    # Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .param p4, "q"    # Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 691
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    if-nez p4, :cond_6

    .line 692
    if-ne p2, p3, :cond_5

    .line 693
    return-object p1

    .line 694
    :cond_5
    move-object p4, p3

    .line 696
    :cond_6
    invoke-virtual {p0, p1, p2, p4}, Ljava/util/concurrent/LinkedTransferQueue;->tryCasSuccessor(Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;)Z

    move-result v0

    if-eqz v0, :cond_16

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->matched()Z

    move-result v0

    if-nez v0, :cond_16

    .line 697
    :cond_14
    move-object v0, p1

    goto :goto_17

    :cond_16
    move-object v0, p3

    .line 696
    :goto_17
    return-object v0
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

    .line 1107
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;

    invoke-direct {v0, p0}, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;-><init>(Ljava/util/concurrent/LinkedTransferQueue;)V

    return-object v0
.end method

.method final blacklist sweepNow()Z
    .registers 4

    .line 554
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue;->SWEEPVOTES:Ljava/lang/invoke/VarHandle;

    .line 555
    const/4 v1, 0x1

    invoke-polymorphic {v0, p0, v1}, Ljava/lang/invoke/VarHandle;->getAndAdd([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/LinkedTransferQueue;I)I

    move-result v0

    const/16 v2, 0xf

    and-int/2addr v0, v2

    if-ne v2, v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 554
    :goto_f
    return v1
.end method

.method public whitelist test-api take()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1256
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1257
    const/4 v0, 0x0

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .local v1, "e":Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 1258
    return-object v1

    .line 1259
    :cond_14
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1261
    .end local v1    # "e":Ljava/lang/Object;
    :cond_17
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 2

    .line 841
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->toArrayInternal([Ljava/lang/Object;)[Ljava/lang/Object;

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

    .line 881
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    invoke-direct {p0, p1}, Ljava/util/concurrent/LinkedTransferQueue;->toArrayInternal([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 766
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x0

    .line 768
    .local v0, "a":[Ljava/lang/String;
    :goto_1
    const/4 v1, 0x0

    .line 769
    .local v1, "charLength":I
    const/4 v2, 0x0

    .line 770
    .local v2, "size":I
    iget-object v3, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .local v3, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :goto_5
    if-eqz v3, :cond_3b

    .line 771
    iget-object v4, v3, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->item:Ljava/lang/Object;

    .line 772
    .local v4, "item":Ljava/lang/Object;
    iget-boolean v5, v3, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->isData:Z

    if-eqz v5, :cond_30

    .line 773
    if-eqz v4, :cond_33

    .line 774
    if-nez v0, :cond_15

    .line 775
    const/4 v5, 0x4

    new-array v0, v5, [Ljava/lang/String;

    goto :goto_21

    .line 776
    :cond_15
    array-length v5, v0

    if-ne v2, v5, :cond_21

    .line 777
    mul-int/lit8 v5, v2, 0x2

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [Ljava/lang/String;

    .line 778
    :cond_21
    :goto_21
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 779
    .local v5, "s":Ljava/lang/String;
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "size":I
    .local v6, "size":I
    aput-object v5, v0, v2

    .line 780
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 781
    .end local v5    # "s":Ljava/lang/String;
    move v2, v6

    goto :goto_33

    .line 782
    .end local v6    # "size":I
    .restart local v2    # "size":I
    :cond_30
    if-nez v4, :cond_33

    .line 783
    goto :goto_3b

    .line 784
    :cond_33
    :goto_33
    iget-object v5, v3, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-object v6, v5

    .end local v3    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .local v6, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-ne v3, v5, :cond_39

    .line 785
    goto :goto_1

    .line 786
    .end local v4    # "item":Ljava/lang/Object;
    :cond_39
    move-object v3, v6

    goto :goto_5

    .line 788
    .end local v6    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_3b
    :goto_3b
    if-nez v2, :cond_40

    .line 789
    const-string v3, "[]"

    return-object v3

    .line 791
    :cond_40
    invoke-static {v0, v2, v1}, Ljava/util/concurrent/Helpers;->toString([Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public whitelist test-api transfer(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1219
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1221
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_15

    .line 1222
    return-void

    .line 1223
    :cond_15
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1225
    :cond_18
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method final blacklist tryCasSuccessor(Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;)Z
    .registers 7
    .param p1, "pred"    # Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .param p2, "c"    # Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .param p3, "p"    # Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 670
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_d

    .line 671
    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->cmpExNext(Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;)Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-result-object v2

    if-ne v2, p2, :cond_b

    goto :goto_c

    :cond_b
    move v0, v1

    :goto_c
    return v0

    .line 672
    :cond_d
    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/LinkedTransferQueue;->cmpExHead(Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;)Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-result-object v2

    if-eq v2, p2, :cond_14

    .line 673
    return v1

    .line 674
    :cond_14
    if-eqz p2, :cond_18

    .line 675
    iput-object p2, p2, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 677
    :cond_18
    return v0
.end method

.method final blacklist tryMatchData(Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "p"    # Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .param p2, "x"    # Ljava/lang/Object;

    .line 705
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    if-eqz p1, :cond_16

    iget-boolean v0, p1, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->isData:Z

    if-eqz v0, :cond_16

    if-eqz p2, :cond_16

    .line 706
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->cmpExItem(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_16

    .line 707
    iget-object v0, p1, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->waiter:Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 708
    const/4 v0, 0x1

    return v0

    .line 710
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api tryTransfer(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1203
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public whitelist test-api tryTransfer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 9
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1244
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1246
    .local v0, "nanos":J
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_15

    .line 1247
    const/4 v2, 0x1

    return v2

    .line 1248
    :cond_15
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1249
    const/4 v2, 0x0

    return v2

    .line 1250
    :cond_1d
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2
.end method

.method final blacklist xfer(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 20
    .param p1, "e"    # Ljava/lang/Object;
    .param p2, "ns"    # J

    .line 575
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    move-object/from16 v4, p0

    move-object/from16 v1, p1

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    move v3, v0

    goto :goto_b

    :cond_a
    move v3, v2

    :goto_b
    move v6, v3

    .line 577
    .local v6, "haveData":Z
    const/4 v3, 0x0

    .line 578
    .local v3, "s":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    const/4 v5, 0x0

    .line 580
    .local v5, "prevp":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :goto_e
    iget-object v7, v4, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-object v8, v7

    .local v8, "h":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    if-nez v7, :cond_2a

    cmp-long v7, p2, v10

    if-eqz v7, :cond_27

    new-instance v7, Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    invoke-direct {v7, v1, v6}, Ljava/util/concurrent/LinkedTransferQueue$DualNode;-><init>(Ljava/lang/Object;Z)V

    move-object v3, v7

    .line 582
    invoke-virtual {v4, v9, v7}, Ljava/util/concurrent/LinkedTransferQueue;->cmpExHead(Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;)Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-result-object v7

    move-object v8, v7

    if-nez v7, :cond_2a

    .line 583
    :cond_27
    const/4 v7, 0x0

    .line 584
    .local v7, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    goto/16 :goto_7e

    .line 586
    .end local v7    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_2a
    iget-object v7, v4, Ljava/util/concurrent/LinkedTransferQueue;->tail:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-object v12, v7

    .local v12, "t":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-eqz v7, :cond_37

    iget-boolean v7, v12, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->isData:Z

    if-ne v7, v6, :cond_37

    if-eq v12, v5, :cond_37

    move-object v7, v12

    goto :goto_38

    :cond_37
    move-object v7, v8

    .line 587
    .restart local v7    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :goto_38
    move-object v5, v7

    .line 589
    :goto_39
    iget-object v13, v7, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->item:Ljava/lang/Object;

    .line 590
    .local v13, "m":Ljava/lang/Object;
    iget-object v14, v7, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 591
    .local v14, "q":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    iget-boolean v15, v7, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->isData:Z

    if-eq v15, v6, :cond_63

    if-eqz v13, :cond_45

    move v15, v0

    goto :goto_46

    :cond_45
    move v15, v2

    :goto_46
    if-eq v6, v15, :cond_63

    .line 592
    invoke-virtual {v7, v13, v1}, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->cmpExItem(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v13, :cond_63

    .line 593
    iget-object v0, v7, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->waiter:Ljava/lang/Thread;

    .line 594
    .local v0, "w":Ljava/lang/Thread;
    if-eq v7, v8, :cond_5f

    if-nez v14, :cond_56

    move-object v2, v7

    goto :goto_57

    :cond_56
    move-object v2, v14

    :goto_57
    invoke-virtual {v4, v8, v2}, Ljava/util/concurrent/LinkedTransferQueue;->cmpExHead(Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;)Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-result-object v2

    if-ne v8, v2, :cond_5f

    .line 595
    iput-object v8, v8, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 596
    :cond_5f
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 597
    return-object v13

    .line 598
    .end local v0    # "w":Ljava/lang/Thread;
    :cond_63
    if-nez v14, :cond_a8

    .line 599
    cmp-long v15, p2, v10

    if-nez v15, :cond_6a

    .line 600
    goto :goto_7e

    .line 601
    :cond_6a
    if-nez v3, :cond_72

    .line 602
    new-instance v15, Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    invoke-direct {v15, v1, v6}, Ljava/util/concurrent/LinkedTransferQueue$DualNode;-><init>(Ljava/lang/Object;Z)V

    move-object v3, v15

    .line 603
    :cond_72
    invoke-virtual {v7, v9, v3}, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->cmpExNext(Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;)Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-result-object v15

    move-object v14, v15

    if-nez v15, :cond_a8

    .line 604
    if-eq v7, v12, :cond_7e

    .line 605
    invoke-virtual {v4, v12, v3}, Ljava/util/concurrent/LinkedTransferQueue;->cmpExTail(Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;)Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 611
    .end local v5    # "prevp":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .end local v8    # "h":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .end local v12    # "t":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .end local v13    # "m":Ljava/lang/Object;
    .end local v14    # "q":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_7e
    :goto_7e
    if-eqz v3, :cond_a4

    cmp-long v5, p2, v10

    if-gtz v5, :cond_86

    move-object v0, v3

    goto :goto_a5

    .line 613
    :cond_86
    if-eqz v7, :cond_8f

    iget-object v5, v7, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->waiter:Ljava/lang/Thread;

    if-nez v5, :cond_8d

    goto :goto_8f

    :cond_8d
    move v5, v2

    goto :goto_90

    :cond_8f
    :goto_8f
    move v5, v0

    :goto_90
    move-object v0, v3

    move-wide/from16 v2, p2

    .end local v3    # "s":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .local v0, "s":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->await(Ljava/lang/Object;JLjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    .local v2, "m":Ljava/lang/Object;
    if-ne v5, v1, :cond_9e

    .line 615
    invoke-direct {v4, v7, v0}, Ljava/util/concurrent/LinkedTransferQueue;->unsplice(Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;)V

    goto :goto_a7

    .line 616
    :cond_9e
    if-eqz v2, :cond_a7

    .line 617
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->selfLinkItem()V

    goto :goto_a7

    .line 611
    .end local v0    # "s":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .end local v2    # "m":Ljava/lang/Object;
    .restart local v3    # "s":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_a4
    move-object v0, v3

    .line 612
    .end local v3    # "s":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .restart local v0    # "s":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :goto_a5
    move-object/from16 v2, p1

    .line 619
    .restart local v2    # "m":Ljava/lang/Object;
    :cond_a7
    :goto_a7
    return-object v2

    .line 609
    .end local v0    # "s":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .end local v2    # "m":Ljava/lang/Object;
    .restart local v3    # "s":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .restart local v5    # "prevp":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .restart local v8    # "h":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .restart local v12    # "t":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .restart local v13    # "m":Ljava/lang/Object;
    .restart local v14    # "q":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_a8
    move-object v15, v14

    .end local v7    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .local v15, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-ne v7, v14, :cond_ad

    .line 610
    .end local v8    # "h":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .end local v12    # "t":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .end local v14    # "q":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    goto/16 :goto_e

    .line 609
    .restart local v8    # "h":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .restart local v12    # "t":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .restart local v14    # "q":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_ad
    move-object v7, v15

    goto :goto_39
.end method
