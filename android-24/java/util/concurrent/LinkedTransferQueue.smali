.class public Ljava/util/concurrent/LinkedTransferQueue;
.super Ljava/util/AbstractQueue;
.source "LinkedTransferQueue.java"

# interfaces
.implements Ljava/util/concurrent/TransferQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/LinkedTransferQueue$Itr;,
        Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;,
        Ljava/util/concurrent/LinkedTransferQueue$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/util/concurrent/TransferQueue",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ASYNC:I = 0x1

.field private static final CHAINED_SPINS:I = 0x40

.field private static final FRONT_SPINS:I = 0x80

.field private static final HEAD:J

.field private static final MP:Z

.field private static final NOW:I = 0x0

.field private static final SWEEPVOTES:J

.field static final SWEEP_THRESHOLD:I = 0x20

.field private static final SYNC:I = 0x2

.field private static final TAIL:J

.field private static final TIMED:I = 0x3

.field private static final U:Lsun/misc/Unsafe;

.field private static final serialVersionUID:J = -0x2cbacc91e0a3c166L


# instance fields
.field volatile transient head:Ljava/util/concurrent/LinkedTransferQueue$Node;

.field private volatile transient sweepVotes:I

.field private volatile transient tail:Ljava/util/concurrent/LinkedTransferQueue$Node;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 386
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@4
    move-result-object v3

    #@5
    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    #@8
    move-result v3

    #@9
    if-le v3, v2, :cond_0

    #@b
    .line 385
    :goto_0
    sput-boolean v2, Ljava/util/concurrent/LinkedTransferQueue;->MP:Z

    #@d
    .line 1538
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@10
    move-result-object v2

    #@11
    sput-object v2, Ljava/util/concurrent/LinkedTransferQueue;->U:Lsun/misc/Unsafe;

    #@13
    .line 1544
    :try_start_0
    sget-object v2, Ljava/util/concurrent/LinkedTransferQueue;->U:Lsun/misc/Unsafe;

    #@15
    .line 1545
    const-class v3, Ljava/util/concurrent/LinkedTransferQueue;

    #@17
    const-string/jumbo v4, "head"

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@1d
    move-result-object v3

    #@1e
    .line 1544
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@21
    move-result-wide v2

    #@22
    sput-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->HEAD:J

    #@24
    .line 1546
    sget-object v2, Ljava/util/concurrent/LinkedTransferQueue;->U:Lsun/misc/Unsafe;

    #@26
    .line 1547
    const-class v3, Ljava/util/concurrent/LinkedTransferQueue;

    #@28
    const-string/jumbo v4, "tail"

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@2e
    move-result-object v3

    #@2f
    .line 1546
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@32
    move-result-wide v2

    #@33
    sput-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->TAIL:J

    #@35
    .line 1548
    sget-object v2, Ljava/util/concurrent/LinkedTransferQueue;->U:Lsun/misc/Unsafe;

    #@37
    .line 1549
    const-class v3, Ljava/util/concurrent/LinkedTransferQueue;

    #@39
    const-string/jumbo v4, "sweepVotes"

    #@3c
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@3f
    move-result-object v3

    #@40
    .line 1548
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@43
    move-result-wide v2

    #@44
    sput-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->SWEEPVOTES:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@46
    .line 1556
    const-class v1, Ljava/util/concurrent/locks/LockSupport;

    #@48
    .line 59
    .local v1, "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void

    #@49
    .line 386
    .end local v1    # "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/4 v2, 0x0

    #@4a
    goto :goto_0

    #@4b
    .line 1550
    :catch_0
    move-exception v0

    #@4c
    .line 1551
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Ljava/lang/Error;

    #@4e
    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@51
    throw v2
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1196
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1209
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/concurrent/LinkedTransferQueue;-><init>()V

    #@3
    .line 1210
    invoke-virtual {p0, p1}, Ljava/util/AbstractQueue;->addAll(Ljava/util/Collection;)Z

    #@6
    .line 1208
    return-void
.end method

.method private awaitMatch(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .locals 13
    .param p1, "s"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p2, "pred"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p4, "timed"    # Z
    .param p5, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedTransferQueue$Node;",
            "Ljava/util/concurrent/LinkedTransferQueue$Node;",
            "TE;ZJ)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 665
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p3, "e":Ljava/lang/Object;, "TE;"
    if-eqz p4, :cond_1

    #@2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@5
    move-result-wide v10

    #@6
    add-long v2, v10, p5

    #@8
    .line 666
    .local v2, "deadline":J
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@b
    move-result-object v8

    #@c
    .line 667
    .local v8, "w":Ljava/lang/Thread;
    const/4 v7, -0x1

    #@d
    .line 668
    .local v7, "spins":I
    const/4 v6, 0x0

    #@e
    .line 671
    :cond_0
    :goto_1
    iget-object v4, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    #@10
    .line 672
    .local v4, "item":Ljava/lang/Object;
    move-object/from16 v0, p3

    #@12
    if-eq v4, v0, :cond_2

    #@14
    .line 674
    invoke-virtual {p1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->forgetContents()V

    #@17
    .line 675
    move-object v5, v4

    #@18
    .line 676
    .local v5, "itemE":Ljava/lang/Object;, "TE;"
    return-object v4

    #@19
    .line 665
    .end local v2    # "deadline":J
    .end local v4    # "item":Ljava/lang/Object;
    .end local v5    # "itemE":Ljava/lang/Object;, "TE;"
    .end local v7    # "spins":I
    .end local v8    # "w":Ljava/lang/Thread;
    :cond_1
    const-wide/16 v2, 0x0

    #@1b
    .restart local v2    # "deadline":J
    goto :goto_0

    #@1c
    .line 678
    .restart local v4    # "item":Ljava/lang/Object;
    .restart local v7    # "spins":I
    .restart local v8    # "w":Ljava/lang/Thread;
    :cond_2
    invoke-virtual {v8}, Ljava/lang/Thread;->isInterrupted()Z

    #@1f
    move-result v9

    #@20
    if-nez v9, :cond_3

    #@22
    if-eqz p4, :cond_4

    #@24
    const-wide/16 v10, 0x0

    #@26
    cmp-long v9, p5, v10

    #@28
    if-gtz v9, :cond_4

    #@2a
    .line 679
    :cond_3
    invoke-virtual {p0, p2, p1}, Ljava/util/concurrent/LinkedTransferQueue;->unsplice(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)V

    #@2d
    .line 680
    move-object/from16 v0, p3

    #@2f
    invoke-virtual {p1, v0, p1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@32
    move-result v9

    #@33
    if-eqz v9, :cond_0

    #@35
    .line 681
    return-object p3

    #@36
    .line 683
    :cond_4
    if-gez v7, :cond_5

    #@38
    .line 684
    iget-boolean v9, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    #@3a
    invoke-static {p2, v9}, Ljava/util/concurrent/LinkedTransferQueue;->spinsFor(Ljava/util/concurrent/LinkedTransferQueue$Node;Z)I

    #@3d
    move-result v7

    #@3e
    if-lez v7, :cond_0

    #@40
    .line 685
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    #@43
    move-result-object v6

    #@44
    .local v6, "randomYields":Ljava/util/concurrent/ThreadLocalRandom;
    goto :goto_1

    #@45
    .line 687
    .end local v6    # "randomYields":Ljava/util/concurrent/ThreadLocalRandom;
    :cond_5
    if-lez v7, :cond_6

    #@47
    .line 688
    add-int/lit8 v7, v7, -0x1

    #@49
    .line 689
    const/16 v9, 0x40

    #@4b
    invoke-virtual {v6, v9}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    #@4e
    move-result v9

    #@4f
    if-nez v9, :cond_0

    #@51
    .line 690
    invoke-static {}, Ljava/lang/Thread;->yield()V

    #@54
    goto :goto_1

    #@55
    .line 692
    :cond_6
    iget-object v9, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    #@57
    if-nez v9, :cond_7

    #@59
    .line 693
    iput-object v8, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    #@5b
    goto :goto_1

    #@5c
    .line 695
    :cond_7
    if-eqz p4, :cond_8

    #@5e
    .line 696
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@61
    move-result-wide v10

    #@62
    sub-long p5, v2, v10

    #@64
    .line 697
    const-wide/16 v10, 0x0

    #@66
    cmp-long v9, p5, v10

    #@68
    if-lez v9, :cond_0

    #@6a
    .line 698
    move-wide/from16 v0, p5

    #@6c
    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    #@6f
    goto :goto_1

    #@70
    .line 701
    :cond_8
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    #@73
    goto :goto_1
.end method

.method private casHead(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z
    .locals 6
    .param p1, "cmp"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p2, "val"    # Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@0
    .prologue
    .line 545
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->HEAD:J

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

.method private casSweepVotes(II)Z
    .locals 6
    .param p1, "cmp"    # I
    .param p2, "val"    # I

    #@0
    .prologue
    .line 549
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->SWEEPVOTES:J

    #@4
    move-object v1, p0

    #@5
    move v4, p1

    #@6
    move v5, p2

    #@7
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method private casTail(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z
    .locals 6
    .param p1, "cmp"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p2, "val"    # Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@0
    .prologue
    .line 541
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->TAIL:J

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

.method private countOfMode(Z)I
    .locals 4
    .param p1, "data"    # Z

    #@0
    .prologue
    .line 762
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    :cond_0
    const/4 v0, 0x0

    #@1
    .line 763
    .local v0, "count":I
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@3
    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move-object v2, v1

    #@4
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .local v2, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v2, :cond_2

    #@6
    .line 764
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    #@9
    move-result v3

    #@a
    if-nez v3, :cond_3

    #@c
    .line 765
    iget-boolean v3, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    #@e
    if-eq v3, p1, :cond_1

    #@10
    .line 766
    const/4 v3, 0x0

    #@11
    return v3

    #@12
    .line 767
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@14
    const v3, 0x7fffffff

    #@17
    if-ne v0, v3, :cond_3

    #@19
    .line 773
    :cond_2
    return v0

    #@1a
    .line 770
    :cond_3
    iget-object v1, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@1c
    .end local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v2, v1, :cond_0

    #@1e
    move-object v2, v1

    #@1f
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_0
.end method

.method private findAndRemove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "e"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1171
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    if-eqz p1, :cond_2

    #@2
    .line 1172
    const/4 v2, 0x0

    #@3
    .local v2, "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@5
    .end local v2    # "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    #@7
    .line 1173
    iget-object v0, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    #@9
    .line 1174
    .local v0, "item":Ljava/lang/Object;
    iget-boolean v3, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    #@b
    if-eqz v3, :cond_1

    #@d
    .line 1175
    if-eqz v0, :cond_3

    #@f
    if-eq v0, v1, :cond_3

    #@11
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_3

    #@17
    .line 1176
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->tryMatchData()Z

    #@1a
    move-result v3

    #@1b
    .line 1175
    if-eqz v3, :cond_3

    #@1d
    .line 1177
    invoke-virtual {p0, v2, v1}, Ljava/util/concurrent/LinkedTransferQueue;->unsplice(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)V

    #@20
    .line 1178
    const/4 v3, 0x1

    #@21
    return v3

    #@22
    .line 1181
    :cond_1
    if-nez v0, :cond_3

    #@24
    .line 1190
    .end local v0    # "item":Ljava/lang/Object;
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_2
    const/4 v3, 0x0

    #@25
    return v3

    #@26
    .line 1183
    .restart local v0    # "item":Ljava/lang/Object;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_3
    move-object v2, v1

    #@27
    .line 1184
    .local v2, "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    iget-object v1, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@29
    if-ne v1, v2, :cond_0

    #@2b
    .line 1185
    const/4 v2, 0x0

    #@2c
    .line 1186
    .local v2, "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@2e
    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1525
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 1528
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    .line 1529
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    #@9
    .line 1524
    return-void

    #@a
    .line 1532
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->offer(Ljava/lang/Object;)Z

    #@d
    goto :goto_0
.end method

.method private static spinsFor(Ljava/util/concurrent/LinkedTransferQueue$Node;Z)I
    .locals 1
    .param p0, "pred"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p1, "haveData"    # Z

    #@0
    .prologue
    .line 711
    sget-boolean v0, Ljava/util/concurrent/LinkedTransferQueue;->MP:Z

    #@2
    if-eqz v0, :cond_2

    #@4
    if-eqz p0, :cond_2

    #@6
    .line 712
    iget-boolean v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    #@8
    if-eq v0, p1, :cond_0

    #@a
    .line 713
    const/16 v0, 0xc0

    #@c
    return v0

    #@d
    .line 714
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 715
    const/16 v0, 0x80

    #@15
    return v0

    #@16
    .line 716
    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    #@18
    if-nez v0, :cond_2

    #@1a
    .line 717
    const/16 v0, 0x40

    #@1c
    return v0

    #@1d
    .line 719
    :cond_2
    const/4 v0, 0x0

    #@1e
    return v0
.end method

.method private sweep()V
    .locals 4

    #@0
    .prologue
    .line 1153
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@2
    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v1, :cond_1

    #@4
    iget-object v2, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@6
    .local v2, "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v2, :cond_1

    #@8
    .line 1154
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    #@b
    move-result v3

    #@c
    if-nez v3, :cond_0

    #@e
    .line 1156
    move-object v1, v2

    #@f
    goto :goto_0

    #@10
    .line 1157
    :cond_0
    iget-object v0, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@12
    .local v0, "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-nez v0, :cond_2

    #@14
    .line 1152
    .end local v0    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v2    # "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_1
    return-void

    #@15
    .line 1159
    .restart local v0    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v2    # "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_2
    if-ne v2, v0, :cond_3

    #@17
    .line 1161
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@19
    goto :goto_0

    #@1a
    .line 1163
    :cond_3
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    #@1d
    goto :goto_0
.end method

.method private toArrayInternal([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 9
    .param p1, "a"    # [Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 808
    move-object v5, p1

    #@3
    .line 810
    .local v5, "x":[Ljava/lang/Object;
    :cond_0
    const/4 v3, 0x0

    #@4
    .line 811
    .local v3, "size":I
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@6
    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move-object v2, v1

    #@7
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .local v2, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move v4, v3

    #@8
    .end local v3    # "size":I
    .local v4, "size":I
    :goto_0
    if-eqz v2, :cond_5

    #@a
    .line 812
    iget-object v0, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    #@c
    .line 813
    .local v0, "item":Ljava/lang/Object;
    iget-boolean v6, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    #@e
    if-eqz v6, :cond_4

    #@10
    .line 814
    if-eqz v0, :cond_2

    #@12
    if-eq v0, v2, :cond_2

    #@14
    .line 815
    if-nez v5, :cond_3

    #@16
    .line 816
    const/4 v6, 0x4

    #@17
    new-array v5, v6, [Ljava/lang/Object;

    #@19
    .line 819
    :cond_1
    :goto_1
    add-int/lit8 v3, v4, 0x1

    #@1b
    .end local v4    # "size":I
    .restart local v3    # "size":I
    aput-object v0, v5, v4

    #@1d
    .line 823
    :goto_2
    iget-object v1, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@1f
    .end local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v2, v1, :cond_0

    #@21
    move-object v2, v1

    #@22
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move v4, v3

    #@23
    .end local v3    # "size":I
    .restart local v4    # "size":I
    goto :goto_0

    #@24
    :cond_2
    move v3, v4

    #@25
    .line 814
    .end local v4    # "size":I
    .restart local v3    # "size":I
    goto :goto_2

    #@26
    .line 817
    .end local v3    # "size":I
    .restart local v4    # "size":I
    :cond_3
    array-length v6, v5

    #@27
    if-ne v4, v6, :cond_1

    #@29
    .line 818
    add-int/lit8 v6, v4, 0x4

    #@2b
    mul-int/lit8 v6, v6, 0x2

    #@2d
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@30
    move-result-object v5

    #@31
    goto :goto_1

    #@32
    .line 821
    :cond_4
    if-nez v0, :cond_b

    #@34
    .line 826
    .end local v0    # "item":Ljava/lang/Object;
    :cond_5
    if-nez v5, :cond_6

    #@36
    .line 827
    new-array v6, v8, [Ljava/lang/Object;

    #@38
    return-object v6

    #@39
    .line 828
    :cond_6
    if-eqz p1, :cond_9

    #@3b
    array-length v6, p1

    #@3c
    if-gt v4, v6, :cond_9

    #@3e
    .line 829
    if-eq p1, v5, :cond_7

    #@40
    .line 830
    invoke-static {v5, v8, p1, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@43
    .line 831
    :cond_7
    array-length v6, p1

    #@44
    if-ge v4, v6, :cond_8

    #@46
    .line 832
    aput-object v7, p1, v4

    #@48
    .line 833
    :cond_8
    return-object p1

    #@49
    .line 835
    :cond_9
    array-length v6, v5

    #@4a
    if-ne v4, v6, :cond_a

    #@4c
    .end local v5    # "x":[Ljava/lang/Object;
    :goto_3
    return-object v5

    #@4d
    .restart local v5    # "x":[Ljava/lang/Object;
    :cond_a
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@50
    move-result-object v5

    #@51
    goto :goto_3

    #@52
    .restart local v0    # "item":Ljava/lang/Object;
    :cond_b
    move v3, v4

    #@53
    .end local v4    # "size":I
    .restart local v3    # "size":I
    goto :goto_2
.end method

.method private tryAppend(Ljava/util/concurrent/LinkedTransferQueue$Node;Z)Ljava/util/concurrent/LinkedTransferQueue$Node;
    .locals 6
    .param p1, "s"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p2, "haveData"    # Z

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v5, 0x0

    #@1
    .line 627
    iget-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue;->tail:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@3
    .local v2, "t":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move-object v1, v2

    #@4
    .line 629
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    #@6
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@8
    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-nez v1, :cond_1

    #@a
    .line 630
    invoke-direct {p0, v5, p1}, Ljava/util/concurrent/LinkedTransferQueue;->casHead(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_0

    #@10
    .line 631
    return-object p1

    #@11
    .line 633
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_1
    invoke-virtual {v1, p2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->cannotPrecede(Z)Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_2

    #@17
    .line 634
    return-object v5

    #@18
    .line 635
    :cond_2
    iget-object v0, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@1a
    .local v0, "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v0, :cond_5

    #@1c
    .line 636
    if-eq v1, v2, :cond_3

    #@1e
    iget-object v3, p0, Ljava/util/concurrent/LinkedTransferQueue;->tail:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@20
    .local v3, "u":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v2, v3, :cond_3

    #@22
    move-object v2, v3

    #@23
    move-object v1, v3

    #@24
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_0

    #@25
    .line 637
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v3    # "u":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_3
    if-eq v1, v0, :cond_4

    #@27
    move-object v1, v0

    #@28
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_0

    #@29
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_4
    const/4 v1, 0x0

    #@2a
    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_0

    #@2b
    .line 638
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_5
    invoke-virtual {v1, v5, p1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    #@2e
    move-result v4

    #@2f
    if-nez v4, :cond_6

    #@31
    .line 639
    iget-object v1, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@33
    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_0

    #@34
    .line 641
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_6
    if-eq v1, v2, :cond_7

    #@36
    .line 642
    :goto_1
    iget-object v4, p0, Ljava/util/concurrent/LinkedTransferQueue;->tail:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@38
    if-ne v4, v2, :cond_8

    #@3a
    invoke-direct {p0, v2, p1}, Ljava/util/concurrent/LinkedTransferQueue;->casTail(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    #@3d
    move-result v4

    #@3e
    if-eqz v4, :cond_8

    #@40
    .line 647
    :cond_7
    return-object v1

    #@41
    .line 643
    :cond_8
    iget-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue;->tail:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@43
    if-eqz v2, :cond_7

    #@45
    .line 644
    iget-object p1, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@47
    if-eqz p1, :cond_7

    #@49
    .line 645
    iget-object p1, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@4b
    if-eqz p1, :cond_7

    #@4d
    if-eq p1, v2, :cond_7

    #@4f
    goto :goto_1
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
    .line 1509
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@3
    .line 1510
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v1

    #@7
    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    .line 1511
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@14
    goto :goto_0

    #@15
    .line 1513
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    const/4 v2, 0x0

    #@16
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@19
    .line 1508
    return-void
.end method

.method private xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;
    .locals 16
    .param p2, "haveData"    # Z
    .param p3, "how"    # I
    .param p4, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZIJ)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 571
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p2, :cond_0

    #@2
    if-nez p1, :cond_0

    #@4
    .line 572
    new-instance v3, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v3

    #@a
    .line 573
    :cond_0
    const/4 v4, 0x0

    #@b
    .line 578
    :cond_1
    move-object/from16 v0, p0

    #@d
    iget-object v2, v0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@f
    .local v2, "h":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move-object v14, v2

    #@10
    .local v14, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v14, :cond_2

    #@12
    .line 579
    iget-boolean v10, v14, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    #@14
    .line 580
    .local v10, "isData":Z
    iget-object v11, v14, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    #@16
    .line 581
    .local v11, "item":Ljava/lang/Object;
    if-eq v11, v14, :cond_9

    #@18
    if-eqz v11, :cond_4

    #@1a
    const/4 v3, 0x1

    #@1b
    :goto_1
    if-ne v3, v10, :cond_9

    #@1d
    .line 582
    move/from16 v0, p2

    #@1f
    if-ne v10, v0, :cond_5

    #@21
    .line 604
    .end local v10    # "isData":Z
    .end local v11    # "item":Ljava/lang/Object;
    :cond_2
    if-eqz p3, :cond_c

    #@23
    .line 605
    if-nez v4, :cond_3

    #@25
    .line 606
    new-instance v4, Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@27
    move-object/from16 v0, p1

    #@29
    move/from16 v1, p2

    #@2b
    invoke-direct {v4, v0, v1}, Ljava/util/concurrent/LinkedTransferQueue$Node;-><init>(Ljava/lang/Object;Z)V

    #@2e
    .line 607
    :cond_3
    move-object/from16 v0, p0

    #@30
    move/from16 v1, p2

    #@32
    invoke-direct {v0, v4, v1}, Ljava/util/concurrent/LinkedTransferQueue;->tryAppend(Ljava/util/concurrent/LinkedTransferQueue$Node;Z)Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@35
    move-result-object v5

    #@36
    .line 608
    .local v5, "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v5, :cond_1

    #@38
    .line 610
    const/4 v3, 0x1

    #@39
    move/from16 v0, p3

    #@3b
    if-eq v0, v3, :cond_c

    #@3d
    .line 611
    const/4 v3, 0x3

    #@3e
    move/from16 v0, p3

    #@40
    if-ne v0, v3, :cond_b

    #@42
    const/4 v7, 0x1

    #@43
    :goto_2
    move-object/from16 v3, p0

    #@45
    move-object/from16 v6, p1

    #@47
    move-wide/from16 v8, p4

    #@49
    invoke-direct/range {v3 .. v9}, Ljava/util/concurrent/LinkedTransferQueue;->awaitMatch(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/lang/Object;ZJ)Ljava/lang/Object;

    #@4c
    move-result-object v3

    #@4d
    return-object v3

    #@4e
    .line 581
    .end local v5    # "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v10    # "isData":Z
    .restart local v11    # "item":Ljava/lang/Object;
    :cond_4
    const/4 v3, 0x0

    #@4f
    goto :goto_1

    #@50
    .line 584
    :cond_5
    move-object/from16 v0, p1

    #@52
    invoke-virtual {v14, v11, v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@55
    move-result v3

    #@56
    if-eqz v3, :cond_9

    #@58
    .line 585
    move-object v15, v14

    #@59
    .local v15, "q":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_3
    if-eq v15, v2, :cond_7

    #@5b
    .line 586
    iget-object v13, v15, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@5d
    .line 587
    .local v13, "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move-object/from16 v0, p0

    #@5f
    iget-object v3, v0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@61
    if-ne v3, v2, :cond_8

    #@63
    if-nez v13, :cond_6

    #@65
    move-object v13, v15

    #@66
    .end local v13    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_6
    move-object/from16 v0, p0

    #@68
    invoke-direct {v0, v2, v13}, Ljava/util/concurrent/LinkedTransferQueue;->casHead(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    #@6b
    move-result v3

    #@6c
    if-eqz v3, :cond_8

    #@6e
    .line 588
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->forgetNext()V

    #@71
    .line 595
    :cond_7
    iget-object v3, v14, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    #@73
    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    #@76
    .line 596
    move-object v12, v11

    #@77
    .line 597
    .local v12, "itemE":Ljava/lang/Object;, "TE;"
    return-object v11

    #@78
    .line 591
    .end local v12    # "itemE":Ljava/lang/Object;, "TE;"
    :cond_8
    move-object/from16 v0, p0

    #@7a
    iget-object v2, v0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@7c
    if-eqz v2, :cond_7

    #@7e
    .line 592
    iget-object v15, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@80
    if-eqz v15, :cond_7

    #@82
    invoke-virtual {v15}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    #@85
    move-result v3

    #@86
    if-eqz v3, :cond_7

    #@88
    goto :goto_3

    #@89
    .line 600
    .end local v15    # "q":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_9
    iget-object v13, v14, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@8b
    .line 601
    .restart local v13    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v14, v13, :cond_a

    #@8d
    move-object v14, v13

    #@8e
    goto :goto_0

    #@8f
    :cond_a
    move-object/from16 v0, p0

    #@91
    iget-object v2, v0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@93
    move-object v14, v2

    #@94
    goto/16 :goto_0

    #@96
    .line 611
    .end local v10    # "isData":Z
    .end local v11    # "item":Ljava/lang/Object;
    .end local v13    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v5    # "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_b
    const/4 v7, 0x0

    #@97
    goto :goto_2

    #@98
    .line 613
    .end local v5    # "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_c
    return-object p1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    #@1
    .line 1259
    const-wide/16 v4, 0x0

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move v3, v2

    #@6
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    #@9
    .line 1260
    return v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1473
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    if-eqz p1, :cond_1

    #@2
    .line 1474
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@4
    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v1, :cond_1

    #@6
    .line 1475
    iget-object v0, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    #@8
    .line 1476
    .local v0, "item":Ljava/lang/Object;
    iget-boolean v2, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 1477
    if-eqz v0, :cond_2

    #@e
    if-eq v0, v1, :cond_2

    #@10
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_2

    #@16
    .line 1478
    const/4 v2, 0x1

    #@17
    return v2

    #@18
    .line 1480
    :cond_0
    if-nez v0, :cond_2

    #@1a
    .line 1484
    .end local v0    # "item":Ljava/lang/Object;
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_1
    const/4 v2, 0x0

    #@1b
    return v2

    #@1c
    .line 1474
    .restart local v0    # "item":Ljava/lang/Object;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/concurrent/LinkedTransferQueue;->succ(Ljava/util/concurrent/LinkedTransferQueue$Node;)Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@1f
    move-result-object v1

    #@20
    goto :goto_0
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 1342
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_0

    #@2
    .line 1343
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v2

    #@8
    .line 1344
    :cond_0
    if-ne p1, p0, :cond_1

    #@a
    .line 1345
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@c
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@f
    throw v2

    #@10
    .line 1346
    :cond_1
    const/4 v1, 0x0

    #@11
    .line 1347
    .local v1, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedTransferQueue;->poll()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_2

    #@17
    .line 1348
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@1a
    .line 1349
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 1351
    :cond_2
    return v1
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 3
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;I)I"
        }
    .end annotation

    #@0
    .prologue
    .line 1359
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_0

    #@2
    .line 1360
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v2

    #@8
    .line 1361
    :cond_0
    if-ne p1, p0, :cond_1

    #@a
    .line 1362
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@c
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@f
    throw v2

    #@10
    .line 1363
    :cond_1
    const/4 v1, 0x0

    #@11
    .line 1364
    .local v1, "n":I
    :goto_0
    if-ge v1, p2, :cond_2

    #@13
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedTransferQueue;->poll()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_2

    #@19
    .line 1365
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@1c
    .line 1366
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 1368
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_2
    return v1
.end method

.method final firstDataNode()Ljava/util/concurrent/LinkedTransferQueue$Node;
    .locals 5

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v4, 0x0

    #@1
    .line 741
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@3
    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move-object v2, v1

    #@4
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .local v2, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v2, :cond_2

    #@6
    .line 742
    iget-object v0, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    #@8
    .line 743
    .local v0, "item":Ljava/lang/Object;
    iget-boolean v3, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    #@a
    if-eqz v3, :cond_1

    #@c
    .line 744
    if-eqz v0, :cond_3

    #@e
    if-eq v0, v2, :cond_3

    #@10
    .line 745
    return-object v2

    #@11
    .line 747
    :cond_1
    if-nez v0, :cond_3

    #@13
    .line 752
    .end local v0    # "item":Ljava/lang/Object;
    :cond_2
    return-object v4

    #@14
    .line 749
    .restart local v0    # "item":Ljava/lang/Object;
    :cond_3
    iget-object v1, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@16
    .end local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v2, v1, :cond_0

    #@18
    move-object v2, v1

    #@19
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_0
.end method

.method public getWaitingConsumerCount()I
    .locals 1

    #@0
    .prologue
    .line 1446
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->countOfMode(Z)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public hasWaitingConsumer()Z
    .locals 4

    #@0
    .prologue
    .line 1414
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@2
    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move-object v2, v1

    #@3
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .local v2, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v2, :cond_1

    #@5
    .line 1415
    iget-object v0, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    #@7
    .line 1416
    .local v0, "item":Ljava/lang/Object;
    iget-boolean v3, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    #@9
    if-eqz v3, :cond_2

    #@b
    .line 1417
    if-eqz v0, :cond_3

    #@d
    if-eq v0, v2, :cond_3

    #@f
    .line 1425
    .end local v0    # "item":Ljava/lang/Object;
    :cond_1
    const/4 v3, 0x0

    #@10
    return v3

    #@11
    .line 1420
    .restart local v0    # "item":Ljava/lang/Object;
    :cond_2
    if-nez v0, :cond_3

    #@13
    .line 1421
    const/4 v3, 0x1

    #@14
    return v3

    #@15
    .line 1422
    :cond_3
    iget-object v1, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@17
    .end local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v2, v1, :cond_0

    #@19
    move-object v2, v1

    #@1a
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 1409
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedTransferQueue;->firstDataNode()Ljava/util/concurrent/LinkedTransferQueue$Node;

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
    .line 1381
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/LinkedTransferQueue$Itr;

    #@2
    invoke-direct {v0, p0}, Ljava/util/concurrent/LinkedTransferQueue$Itr;-><init>(Ljava/util/concurrent/LinkedTransferQueue;)V

    #@5
    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    #@1
    .line 1246
    const-wide/16 v4, 0x0

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move v3, v2

    #@6
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    #@9
    .line 1247
    return v2
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 6
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    #@1
    .line 1234
    const-wide/16 v4, 0x0

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move v3, v2

    #@6
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    #@9
    .line 1235
    return v2
.end method

.method public peek()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v5, 0x0

    #@1
    .line 1386
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@3
    .local v2, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move-object v3, v2

    #@4
    .end local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .local v3, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v3, :cond_2

    #@6
    .line 1387
    iget-object v1, v3, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    #@8
    .line 1388
    .local v1, "item":Ljava/lang/Object;
    iget-boolean v4, v3, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    #@a
    if-eqz v4, :cond_1

    #@c
    .line 1389
    if-eqz v1, :cond_3

    #@e
    if-eq v1, v3, :cond_3

    #@10
    .line 1390
    move-object v0, v1

    #@11
    .line 1391
    .local v0, "e":Ljava/lang/Object;, "TE;"
    return-object v1

    #@12
    .line 1394
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    if-nez v1, :cond_3

    #@14
    .line 1399
    .end local v1    # "item":Ljava/lang/Object;
    :cond_2
    return-object v5

    #@15
    .line 1396
    .restart local v1    # "item":Ljava/lang/Object;
    :cond_3
    iget-object v2, v3, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@17
    .end local v3    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v3, v2, :cond_0

    #@19
    move-object v3, v2

    #@1a
    .end local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v3    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
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
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v2, 0x0

    #@1
    .line 1334
    const-wide/16 v4, 0x0

    #@3
    const/4 v1, 0x0

    #@4
    move-object v0, p0

    #@5
    move v3, v2

    #@6
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 7
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

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 1327
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@4
    move-result-wide v4

    #@5
    const/4 v2, 0x0

    #@6
    const/4 v3, 0x3

    #@7
    move-object v0, p0

    #@8
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    #@b
    move-result-object v6

    #@c
    .line 1328
    .local v6, "e":Ljava/lang/Object;, "TE;"
    if-nez v6, :cond_0

    #@e
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 1330
    new-instance v0, Ljava/lang/InterruptedException;

    #@16
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    #@19
    throw v0

    #@1a
    .line 1329
    :cond_0
    return-object v6
.end method

.method public put(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    #@1
    .line 1220
    const-wide/16 v4, 0x0

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move v3, v2

    #@6
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    #@9
    .line 1219
    return-void
.end method

.method public remainingCapacity()I
    .locals 1

    #@0
    .prologue
    .line 1496
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const v0, 0x7fffffff

    #@3
    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1461
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/LinkedTransferQueue;->findAndRemove(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 1442
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->countOfMode(Z)I

    #@4
    move-result v0

    #@5
    return v0
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
    .line 1093
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;

    #@2
    invoke-direct {v0, p0}, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;-><init>(Ljava/util/concurrent/LinkedTransferQueue;)V

    #@5
    return-object v0
.end method

.method final succ(Ljava/util/concurrent/LinkedTransferQueue$Node;)Ljava/util/concurrent/LinkedTransferQueue$Node;
    .locals 1
    .param p1, "p"    # Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@0
    .prologue
    .line 730
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    iget-object v0, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@2
    .line 731
    .local v0, "next":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-ne p1, v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@6
    .end local v0    # "next":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_0
    return-object v0
.end method

.method public take()Ljava/lang/Object;
    .locals 7
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

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 1319
    const-wide/16 v4, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    const/4 v3, 0x2

    #@5
    move-object v0, p0

    #@6
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    #@9
    move-result-object v6

    #@a
    .line 1320
    .local v6, "e":Ljava/lang/Object;, "TE;"
    if-eqz v6, :cond_0

    #@c
    .line 1321
    return-object v6

    #@d
    .line 1322
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@10
    .line 1323
    new-instance v0, Ljava/lang/InterruptedException;

    #@12
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    #@15
    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 853
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->toArrayInternal([Ljava/lang/Object;)[Ljava/lang/Object;

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
    .line 893
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 894
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/LinkedTransferQueue;->toArrayInternal([Ljava/lang/Object;)[Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    .line 778
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x0

    #@1
    .line 780
    :cond_0
    const/4 v1, 0x0

    #@2
    .line 781
    .local v1, "charLength":I
    const/4 v6, 0x0

    #@3
    .line 782
    .local v6, "size":I
    iget-object v3, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@5
    .local v3, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move-object v4, v3

    #@6
    .end local v3    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .local v4, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move v7, v6

    #@7
    .end local v6    # "size":I
    .local v7, "size":I
    :goto_0
    if-eqz v4, :cond_5

    #@9
    .line 783
    iget-object v2, v4, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    #@b
    .line 784
    .local v2, "item":Ljava/lang/Object;
    iget-boolean v8, v4, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    #@d
    if-eqz v8, :cond_4

    #@f
    .line 785
    if-eqz v2, :cond_2

    #@11
    if-eq v2, v4, :cond_2

    #@13
    .line 786
    if-nez v0, :cond_3

    #@15
    .line 787
    const/4 v8, 0x4

    #@16
    new-array v0, v8, [Ljava/lang/String;

    #@18
    .line 790
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1b
    move-result-object v5

    #@1c
    .line 791
    .local v5, "s":Ljava/lang/String;
    add-int/lit8 v6, v7, 0x1

    #@1e
    .end local v7    # "size":I
    .restart local v6    # "size":I
    aput-object v5, v0, v7

    #@20
    .line 792
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@23
    move-result v8

    #@24
    add-int/2addr v1, v8

    #@25
    .line 796
    .end local v5    # "s":Ljava/lang/String;
    :goto_2
    iget-object v3, v4, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@27
    .end local v4    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v3    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v4, v3, :cond_0

    #@29
    move-object v4, v3

    #@2a
    .end local v3    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v4    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move v7, v6

    #@2b
    .end local v6    # "size":I
    .restart local v7    # "size":I
    goto :goto_0

    #@2c
    :cond_2
    move v6, v7

    #@2d
    .line 785
    .end local v7    # "size":I
    .restart local v6    # "size":I
    goto :goto_2

    #@2e
    .line 788
    .end local v6    # "size":I
    .restart local v7    # "size":I
    :cond_3
    array-length v8, v0

    #@2f
    if-ne v7, v8, :cond_1

    #@31
    .line 789
    mul-int/lit8 v8, v7, 0x2

    #@33
    invoke-static {v0, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@36
    move-result-object v0

    #@37
    check-cast v0, [Ljava/lang/String;

    #@39
    .local v0, "a":[Ljava/lang/String;
    goto :goto_1

    #@3a
    .line 794
    .end local v0    # "a":[Ljava/lang/String;
    :cond_4
    if-nez v2, :cond_7

    #@3c
    .line 800
    .end local v2    # "item":Ljava/lang/Object;
    :cond_5
    if-nez v7, :cond_6

    #@3e
    .line 801
    const-string/jumbo v8, "[]"

    #@41
    return-object v8

    #@42
    .line 803
    :cond_6
    invoke-static {v0, v7, v1}, Ljava/util/concurrent/Helpers;->toString([Ljava/lang/Object;II)Ljava/lang/String;

    #@45
    move-result-object v8

    #@46
    return-object v8

    #@47
    .restart local v2    # "item":Ljava/lang/Object;
    :cond_7
    move v6, v7

    #@48
    .end local v7    # "size":I
    .restart local v6    # "size":I
    goto :goto_2
.end method

.method public transfer(Ljava/lang/Object;)V
    .locals 6
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

    #@0
    .prologue
    .line 1289
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const-wide/16 v4, 0x0

    #@2
    const/4 v2, 0x1

    #@3
    const/4 v3, 0x2

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1290
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@f
    .line 1291
    new-instance v0, Ljava/lang/InterruptedException;

    #@11
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    #@14
    throw v0

    #@15
    .line 1288
    :cond_0
    return-void
.end method

.method public tryTransfer(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1274
    const-wide/16 v4, 0x0

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    if-nez v0, :cond_0

    #@c
    :goto_0
    return v2

    #@d
    :cond_0
    move v2, v3

    #@e
    goto :goto_0
.end method

.method public tryTransfer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 6
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

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    #@1
    .line 1311
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@4
    move-result-wide v4

    #@5
    const/4 v3, 0x3

    #@6
    move-object v0, p0

    #@7
    move-object v1, p1

    #@8
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 1312
    return v2

    #@f
    .line 1313
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_1

    #@15
    .line 1314
    const/4 v0, 0x0

    #@16
    return v0

    #@17
    .line 1315
    :cond_1
    new-instance v0, Ljava/lang/InterruptedException;

    #@19
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    #@1c
    throw v0
.end method

.method final unsplice(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)V
    .locals 5
    .param p1, "pred"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p2, "s"    # Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v4, 0x0

    #@1
    .line 1107
    iput-object v4, p2, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    #@3
    .line 1115
    if-eqz p1, :cond_4

    #@5
    if-eq p1, p2, :cond_4

    #@7
    iget-object v4, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@9
    if-ne v4, p2, :cond_4

    #@b
    .line 1116
    iget-object v2, p2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@d
    .line 1117
    .local v2, "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v2, :cond_0

    #@f
    .line 1118
    if-eq v2, p2, :cond_4

    #@11
    invoke-virtual {p1, p2, v2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_4

    #@17
    invoke-virtual {p1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    #@1a
    move-result v4

    #@1b
    .line 1117
    if-eqz v4, :cond_4

    #@1d
    .line 1120
    :cond_0
    :goto_0
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@1f
    .line 1121
    .local v0, "h":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v0, p1, :cond_1

    #@21
    if-ne v0, p2, :cond_2

    #@23
    .line 1122
    :cond_1
    return-void

    #@24
    .line 1121
    :cond_2
    if-eqz v0, :cond_1

    #@26
    .line 1123
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    #@29
    move-result v4

    #@2a
    if-nez v4, :cond_5

    #@2c
    .line 1131
    iget-object v4, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@2e
    if-eq v4, p1, :cond_4

    #@30
    iget-object v4, p2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@32
    if-eq v4, p2, :cond_4

    #@34
    .line 1133
    :cond_3
    iget v3, p0, Ljava/util/concurrent/LinkedTransferQueue;->sweepVotes:I

    #@36
    .line 1134
    .local v3, "v":I
    const/16 v4, 0x20

    #@38
    if-ge v3, v4, :cond_7

    #@3a
    .line 1135
    add-int/lit8 v4, v3, 0x1

    #@3c
    invoke-direct {p0, v3, v4}, Ljava/util/concurrent/LinkedTransferQueue;->casSweepVotes(II)Z

    #@3f
    move-result v4

    #@40
    if-eqz v4, :cond_3

    #@42
    .line 1106
    .end local v0    # "h":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v2    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v3    # "v":I
    :cond_4
    :goto_1
    return-void

    #@43
    .line 1125
    .restart local v0    # "h":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v2    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_5
    iget-object v1, v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@45
    .line 1126
    .local v1, "hn":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-nez v1, :cond_6

    #@47
    .line 1127
    return-void

    #@48
    .line 1128
    :cond_6
    if-eq v1, v0, :cond_0

    #@4a
    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/LinkedTransferQueue;->casHead(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    #@4d
    move-result v4

    #@4e
    if-eqz v4, :cond_0

    #@50
    .line 1129
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->forgetNext()V

    #@53
    goto :goto_0

    #@54
    .line 1138
    .end local v1    # "hn":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v3    # "v":I
    :cond_7
    const/4 v4, 0x0

    #@55
    invoke-direct {p0, v3, v4}, Ljava/util/concurrent/LinkedTransferQueue;->casSweepVotes(II)Z

    #@58
    move-result v4

    #@59
    if-eqz v4, :cond_3

    #@5b
    .line 1139
    invoke-direct {p0}, Ljava/util/concurrent/LinkedTransferQueue;->sweep()V

    #@5e
    goto :goto_1
.end method
