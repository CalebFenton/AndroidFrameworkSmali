.class public Ljava/util/concurrent/LinkedTransferQueue;
.super Ljava/util/AbstractQueue;
.source "LinkedTransferQueue.java"

# interfaces
.implements Ljava/util/concurrent/TransferQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/LinkedTransferQueue$Node;,
        Ljava/util/concurrent/LinkedTransferQueue$Itr;
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

.field private static final MP:Z

.field private static final NOW:I = 0x0

.field static final SWEEP_THRESHOLD:I = 0x20

.field private static final SYNC:I = 0x2

.field private static final TIMED:I = 0x3

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final headOffset:J

.field private static final serialVersionUID:J = -0x2cbacc91e0a3c166L

.field private static final sweepVotesOffset:J

.field private static final tailOffset:J


# instance fields
.field volatile transient head:Ljava/util/concurrent/LinkedTransferQueue$Node;

.field private volatile transient sweepVotes:I

.field private volatile transient tail:Ljava/util/concurrent/LinkedTransferQueue$Node;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 382
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@4
    move-result-object v4

    #@5
    invoke-virtual {v4}, Ljava/lang/Runtime;->availableProcessors()I

    #@8
    move-result v4

    #@9
    if-le v4, v3, :cond_0

    #@b
    .line 381
    :goto_0
    sput-boolean v3, Ljava/util/concurrent/LinkedTransferQueue;->MP:Z

    #@d
    .line 1304
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@10
    move-result-object v3

    #@11
    sput-object v3, Ljava/util/concurrent/LinkedTransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    #@13
    .line 1305
    const-class v2, Ljava/util/concurrent/LinkedTransferQueue;

    #@15
    .line 1306
    .local v2, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v3, Ljava/util/concurrent/LinkedTransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    #@17
    .line 1307
    const-string/jumbo v4, "head"

    #@1a
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@1d
    move-result-object v4

    #@1e
    .line 1306
    invoke-virtual {v3, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@21
    move-result-wide v4

    #@22
    sput-wide v4, Ljava/util/concurrent/LinkedTransferQueue;->headOffset:J

    #@24
    .line 1308
    sget-object v3, Ljava/util/concurrent/LinkedTransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    #@26
    .line 1309
    const-string/jumbo v4, "tail"

    #@29
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@2c
    move-result-object v4

    #@2d
    .line 1308
    invoke-virtual {v3, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@30
    move-result-wide v4

    #@31
    sput-wide v4, Ljava/util/concurrent/LinkedTransferQueue;->tailOffset:J

    #@33
    .line 1310
    sget-object v3, Ljava/util/concurrent/LinkedTransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    #@35
    .line 1311
    const-string/jumbo v4, "sweepVotes"

    #@38
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@3b
    move-result-object v4

    #@3c
    .line 1310
    invoke-virtual {v3, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@3f
    move-result-wide v4

    #@40
    sput-wide v4, Ljava/util/concurrent/LinkedTransferQueue;->sweepVotesOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@42
    .line 1318
    const-class v1, Ljava/util/concurrent/locks/LockSupport;

    #@44
    .line 55
    .local v1, "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void

    #@45
    .line 382
    .end local v1    # "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/4 v3, 0x0

    #@46
    goto :goto_0

    #@47
    .line 1312
    .restart local v2    # "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    #@48
    .line 1313
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/Error;

    #@4a
    invoke-direct {v3, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@4d
    throw v3
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 983
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
    .line 996
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/concurrent/LinkedTransferQueue;-><init>()V

    #@3
    .line 997
    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedTransferQueue;->addAll(Ljava/util/Collection;)Z

    #@6
    .line 995
    return-void
.end method

.method private awaitMatch(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .locals 9
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
    .line 668
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p3, "e":Ljava/lang/Object;, "TE;"
    if-eqz p4, :cond_1

    #@2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@5
    move-result-wide v6

    #@6
    add-long v0, v6, p5

    #@8
    .line 669
    .local v0, "deadline":J
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@b
    move-result-object v5

    #@c
    .line 670
    .local v5, "w":Ljava/lang/Thread;
    const/4 v4, -0x1

    #@d
    .line 671
    .local v4, "spins":I
    const/4 v3, 0x0

    #@e
    .line 674
    :cond_0
    :goto_1
    iget-object v2, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    #@10
    .line 675
    .local v2, "item":Ljava/lang/Object;
    if-eq v2, p3, :cond_2

    #@12
    .line 677
    invoke-virtual {p1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->forgetContents()V

    #@15
    .line 678
    invoke-static {v2}, Ljava/util/concurrent/LinkedTransferQueue;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v6

    #@19
    return-object v6

    #@1a
    .line 668
    .end local v0    # "deadline":J
    .end local v2    # "item":Ljava/lang/Object;
    .end local v4    # "spins":I
    .end local v5    # "w":Ljava/lang/Thread;
    :cond_1
    const-wide/16 v0, 0x0

    #@1c
    .restart local v0    # "deadline":J
    goto :goto_0

    #@1d
    .line 680
    .restart local v2    # "item":Ljava/lang/Object;
    .restart local v4    # "spins":I
    .restart local v5    # "w":Ljava/lang/Thread;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    #@20
    move-result v6

    #@21
    if-nez v6, :cond_3

    #@23
    if-eqz p4, :cond_4

    #@25
    const-wide/16 v6, 0x0

    #@27
    cmp-long v6, p5, v6

    #@29
    if-gtz v6, :cond_4

    #@2b
    .line 681
    :cond_3
    invoke-virtual {p1, p3, p1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2e
    move-result v6

    #@2f
    .line 680
    if-eqz v6, :cond_4

    #@31
    .line 682
    invoke-virtual {p0, p2, p1}, Ljava/util/concurrent/LinkedTransferQueue;->unsplice(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)V

    #@34
    .line 683
    return-object p3

    #@35
    .line 686
    :cond_4
    if-gez v4, :cond_5

    #@37
    .line 687
    iget-boolean v6, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    #@39
    invoke-static {p2, v6}, Ljava/util/concurrent/LinkedTransferQueue;->spinsFor(Ljava/util/concurrent/LinkedTransferQueue$Node;Z)I

    #@3c
    move-result v4

    #@3d
    if-lez v4, :cond_0

    #@3f
    .line 688
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    #@42
    move-result-object v3

    #@43
    .local v3, "randomYields":Ljava/util/concurrent/ThreadLocalRandom;
    goto :goto_1

    #@44
    .line 690
    .end local v3    # "randomYields":Ljava/util/concurrent/ThreadLocalRandom;
    :cond_5
    if-lez v4, :cond_6

    #@46
    .line 691
    add-int/lit8 v4, v4, -0x1

    #@48
    .line 692
    const/16 v6, 0x40

    #@4a
    invoke-virtual {v3, v6}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    #@4d
    move-result v6

    #@4e
    if-nez v6, :cond_0

    #@50
    .line 693
    invoke-static {}, Ljava/lang/Thread;->yield()V

    #@53
    goto :goto_1

    #@54
    .line 695
    :cond_6
    iget-object v6, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    #@56
    if-nez v6, :cond_7

    #@58
    .line 696
    iput-object v5, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    #@5a
    goto :goto_1

    #@5b
    .line 698
    :cond_7
    if-eqz p4, :cond_8

    #@5d
    .line 699
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@60
    move-result-wide v6

    #@61
    sub-long p5, v0, v6

    #@63
    .line 700
    const-wide/16 v6, 0x0

    #@65
    cmp-long v6, p5, v6

    #@67
    if-lez v6, :cond_0

    #@69
    .line 701
    invoke-static {p0, p5, p6}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    #@6c
    goto :goto_1

    #@6d
    .line 704
    :cond_8
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    #@70
    goto :goto_1
.end method

.method private casHead(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z
    .locals 6
    .param p1, "cmp"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p2, "val"    # Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@0
    .prologue
    .line 543
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->headOffset:J

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
    .line 547
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->sweepVotesOffset:J

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
    .line 539
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->tailOffset:J

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

.method static cast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "item"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 561
    return-object p0
.end method

.method private countOfMode(Z)I
    .locals 4
    .param p1, "data"    # Z

    #@0
    .prologue
    .line 771
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x0

    #@1
    .line 772
    .local v0, "count":I
    iget-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@3
    .local v2, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v2, :cond_1

    #@5
    .line 773
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    #@8
    move-result v3

    #@9
    if-nez v3, :cond_2

    #@b
    .line 774
    iget-boolean v3, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    #@d
    if-eq v3, p1, :cond_0

    #@f
    .line 775
    const/4 v3, 0x0

    #@10
    return v3

    #@11
    .line 776
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@13
    const v3, 0x7fffffff

    #@16
    if-ne v0, v3, :cond_2

    #@18
    .line 787
    :cond_1
    return v0

    #@19
    .line 779
    :cond_2
    iget-object v1, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@1b
    .line 780
    .local v1, "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v1, v2, :cond_3

    #@1d
    .line 781
    move-object v2, v1

    #@1e
    goto :goto_0

    #@1f
    .line 783
    :cond_3
    const/4 v0, 0x0

    #@20
    .line 784
    iget-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@22
    goto :goto_0
.end method

.method private findAndRemove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "e"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 958
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    if-eqz p1, :cond_2

    #@2
    .line 959
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
    .line 960
    iget-object v0, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    #@9
    .line 961
    .local v0, "item":Ljava/lang/Object;
    iget-boolean v3, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    #@b
    if-eqz v3, :cond_1

    #@d
    .line 962
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
    .line 963
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->tryMatchData()Z

    #@1a
    move-result v3

    #@1b
    .line 962
    if-eqz v3, :cond_3

    #@1d
    .line 964
    invoke-virtual {p0, v2, v1}, Ljava/util/concurrent/LinkedTransferQueue;->unsplice(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)V

    #@20
    .line 965
    const/4 v3, 0x1

    #@21
    return v3

    #@22
    .line 968
    :cond_1
    if-nez v0, :cond_3

    #@24
    .line 977
    .end local v0    # "item":Ljava/lang/Object;
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_2
    const/4 v3, 0x0

    #@25
    return v3

    #@26
    .line 970
    .restart local v0    # "item":Ljava/lang/Object;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_3
    move-object v2, v1

    #@27
    .line 971
    .local v2, "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    iget-object v1, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@29
    if-ne v1, v2, :cond_0

    #@2b
    .line 972
    const/4 v2, 0x0

    #@2c
    .line 973
    .local v2, "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@2e
    goto :goto_0
.end method

.method private firstDataItem()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 754
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@3
    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v1, :cond_2

    #@5
    .line 755
    iget-object v0, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    #@7
    .line 756
    .local v0, "item":Ljava/lang/Object;
    iget-boolean v2, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 757
    if-eqz v0, :cond_1

    #@d
    if-eq v0, v1, :cond_1

    #@f
    .line 758
    invoke-static {v0}, Ljava/util/concurrent/LinkedTransferQueue;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    return-object v2

    #@14
    .line 760
    :cond_0
    if-nez v0, :cond_1

    #@16
    .line 761
    return-object v3

    #@17
    .line 754
    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/concurrent/LinkedTransferQueue;->succ(Ljava/util/concurrent/LinkedTransferQueue$Node;)Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@1a
    move-result-object v1

    #@1b
    goto :goto_0

    #@1c
    .line 763
    .end local v0    # "item":Ljava/lang/Object;
    :cond_2
    return-object v3
.end method

.method private firstOfMode(Z)Ljava/util/concurrent/LinkedTransferQueue$Node;
    .locals 3
    .param p1, "isData"    # Z

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 742
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@3
    .local v0, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v0, :cond_2

    #@5
    .line 743
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_1

    #@b
    .line 744
    iget-boolean v2, v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    #@d
    if-ne v2, p1, :cond_0

    #@f
    .end local v0    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_1
    return-object v0

    #@10
    .restart local v0    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_0
    move-object v0, v1

    #@11
    goto :goto_1

    #@12
    .line 742
    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->succ(Ljava/util/concurrent/LinkedTransferQueue$Node;)Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@15
    move-result-object v0

    #@16
    goto :goto_0

    #@17
    .line 746
    :cond_2
    return-object v1
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
    .line 1285
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 1288
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    .line 1289
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    #@9
    .line 1284
    return-void

    #@a
    .line 1292
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
    .line 714
    sget-boolean v0, Ljava/util/concurrent/LinkedTransferQueue;->MP:Z

    #@2
    if-eqz v0, :cond_2

    #@4
    if-eqz p0, :cond_2

    #@6
    .line 715
    iget-boolean v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    #@8
    if-eq v0, p1, :cond_0

    #@a
    .line 716
    const/16 v0, 0xc0

    #@c
    return v0

    #@d
    .line 717
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 718
    const/16 v0, 0x80

    #@15
    return v0

    #@16
    .line 719
    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    #@18
    if-nez v0, :cond_2

    #@1a
    .line 720
    const/16 v0, 0x40

    #@1c
    return v0

    #@1d
    .line 722
    :cond_2
    const/4 v0, 0x0

    #@1e
    return v0
.end method

.method private sweep()V
    .locals 4

    #@0
    .prologue
    .line 940
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
    .line 941
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    #@b
    move-result v3

    #@c
    if-nez v3, :cond_0

    #@e
    .line 943
    move-object v1, v2

    #@f
    goto :goto_0

    #@10
    .line 944
    :cond_0
    iget-object v0, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@12
    .local v0, "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-nez v0, :cond_2

    #@14
    .line 939
    .end local v0    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v2    # "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_1
    return-void

    #@15
    .line 946
    .restart local v0    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v2    # "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_2
    if-ne v2, v0, :cond_3

    #@17
    .line 948
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@19
    goto :goto_0

    #@1a
    .line 950
    :cond_3
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    #@1d
    goto :goto_0
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
    .line 630
    iget-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue;->tail:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@3
    .local v2, "t":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move-object v1, v2

    #@4
    .line 632
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    #@6
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@8
    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-nez v1, :cond_1

    #@a
    .line 633
    invoke-direct {p0, v5, p1}, Ljava/util/concurrent/LinkedTransferQueue;->casHead(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_0

    #@10
    .line 634
    return-object p1

    #@11
    .line 636
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_1
    invoke-virtual {v1, p2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->cannotPrecede(Z)Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_2

    #@17
    .line 637
    return-object v5

    #@18
    .line 638
    :cond_2
    iget-object v0, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@1a
    .local v0, "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v0, :cond_5

    #@1c
    .line 639
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
    .line 640
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
    .line 641
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_5
    invoke-virtual {v1, v5, p1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    #@2e
    move-result v4

    #@2f
    if-nez v4, :cond_6

    #@31
    .line 642
    iget-object v1, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@33
    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_0

    #@34
    .line 644
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_6
    if-eq v1, v2, :cond_7

    #@36
    .line 645
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
    .line 650
    :cond_7
    return-object v1

    #@41
    .line 646
    :cond_8
    iget-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue;->tail:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@43
    if-eqz v2, :cond_7

    #@45
    .line 647
    iget-object p1, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@47
    if-eqz p1, :cond_7

    #@49
    .line 648
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
    .line 1273
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@3
    .line 1274
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
    .line 1275
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@14
    goto :goto_0

    #@15
    .line 1277
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    const/4 v2, 0x0

    #@16
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@19
    .line 1272
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
    .line 575
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p2, :cond_0

    #@2
    if-nez p1, :cond_0

    #@4
    .line 576
    new-instance v3, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v3

    #@a
    .line 577
    :cond_0
    const/4 v4, 0x0

    #@b
    .line 582
    :cond_1
    move-object/from16 v0, p0

    #@d
    iget-object v2, v0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@f
    .local v2, "h":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move-object v13, v2

    #@10
    .local v13, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v13, :cond_2

    #@12
    .line 583
    iget-boolean v10, v13, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    #@14
    .line 584
    .local v10, "isData":Z
    iget-object v11, v13, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    #@16
    .line 585
    .local v11, "item":Ljava/lang/Object;
    if-eq v11, v13, :cond_9

    #@18
    if-eqz v11, :cond_4

    #@1a
    const/4 v3, 0x1

    #@1b
    :goto_1
    if-ne v3, v10, :cond_9

    #@1d
    .line 586
    move/from16 v0, p2

    #@1f
    if-ne v10, v0, :cond_5

    #@21
    .line 607
    .end local v10    # "isData":Z
    .end local v11    # "item":Ljava/lang/Object;
    :cond_2
    if-eqz p3, :cond_c

    #@23
    .line 608
    if-nez v4, :cond_3

    #@25
    .line 609
    new-instance v4, Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@27
    move-object/from16 v0, p1

    #@29
    move/from16 v1, p2

    #@2b
    invoke-direct {v4, v0, v1}, Ljava/util/concurrent/LinkedTransferQueue$Node;-><init>(Ljava/lang/Object;Z)V

    #@2e
    .line 610
    :cond_3
    move-object/from16 v0, p0

    #@30
    move/from16 v1, p2

    #@32
    invoke-direct {v0, v4, v1}, Ljava/util/concurrent/LinkedTransferQueue;->tryAppend(Ljava/util/concurrent/LinkedTransferQueue$Node;Z)Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@35
    move-result-object v5

    #@36
    .line 611
    .local v5, "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v5, :cond_1

    #@38
    .line 613
    const/4 v3, 0x1

    #@39
    move/from16 v0, p3

    #@3b
    if-eq v0, v3, :cond_c

    #@3d
    .line 614
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
    .line 585
    .end local v5    # "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v10    # "isData":Z
    .restart local v11    # "item":Ljava/lang/Object;
    :cond_4
    const/4 v3, 0x0

    #@4f
    goto :goto_1

    #@50
    .line 588
    :cond_5
    move-object/from16 v0, p1

    #@52
    invoke-virtual {v13, v11, v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@55
    move-result v3

    #@56
    if-eqz v3, :cond_9

    #@58
    .line 589
    move-object v14, v13

    #@59
    .local v14, "q":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_3
    if-eq v14, v2, :cond_7

    #@5b
    .line 590
    iget-object v12, v14, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@5d
    .line 591
    .local v12, "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move-object/from16 v0, p0

    #@5f
    iget-object v3, v0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@61
    if-ne v3, v2, :cond_8

    #@63
    if-nez v12, :cond_6

    #@65
    move-object v12, v14

    #@66
    .end local v12    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_6
    move-object/from16 v0, p0

    #@68
    invoke-direct {v0, v2, v12}, Ljava/util/concurrent/LinkedTransferQueue;->casHead(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    #@6b
    move-result v3

    #@6c
    if-eqz v3, :cond_8

    #@6e
    .line 592
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->forgetNext()V

    #@71
    .line 599
    :cond_7
    iget-object v3, v13, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    #@73
    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    #@76
    .line 600
    invoke-static {v11}, Ljava/util/concurrent/LinkedTransferQueue;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    #@79
    move-result-object v3

    #@7a
    return-object v3

    #@7b
    .line 595
    :cond_8
    move-object/from16 v0, p0

    #@7d
    iget-object v2, v0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@7f
    if-eqz v2, :cond_7

    #@81
    .line 596
    iget-object v14, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@83
    if-eqz v14, :cond_7

    #@85
    invoke-virtual {v14}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    #@88
    move-result v3

    #@89
    if-eqz v3, :cond_7

    #@8b
    goto :goto_3

    #@8c
    .line 603
    .end local v14    # "q":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_9
    iget-object v12, v13, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@8e
    .line 604
    .restart local v12    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v13, v12, :cond_a

    #@90
    move-object v13, v12

    #@91
    goto/16 :goto_0

    #@93
    :cond_a
    move-object/from16 v0, p0

    #@95
    iget-object v2, v0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@97
    move-object v13, v2

    #@98
    goto/16 :goto_0

    #@9a
    .line 614
    .end local v10    # "isData":Z
    .end local v11    # "item":Ljava/lang/Object;
    .end local v12    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v5    # "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_b
    const/4 v7, 0x0

    #@9b
    goto :goto_2

    #@9c
    .line 616
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
    .line 1046
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
    .line 1047
    return v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 1240
    if-nez p1, :cond_0

    #@3
    return v3

    #@4
    .line 1241
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@6
    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v1, :cond_2

    #@8
    .line 1242
    iget-object v0, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    #@a
    .line 1243
    .local v0, "item":Ljava/lang/Object;
    iget-boolean v2, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 1244
    if-eqz v0, :cond_3

    #@10
    if-eq v0, v1, :cond_3

    #@12
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_3

    #@18
    .line 1245
    const/4 v2, 0x1

    #@19
    return v2

    #@1a
    .line 1247
    :cond_1
    if-nez v0, :cond_3

    #@1c
    .line 1250
    .end local v0    # "item":Ljava/lang/Object;
    :cond_2
    return v3

    #@1d
    .line 1241
    .restart local v0    # "item":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p0, v1}, Ljava/util/concurrent/LinkedTransferQueue;->succ(Ljava/util/concurrent/LinkedTransferQueue$Node;)Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@20
    move-result-object v1

    #@21
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
    .line 1129
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_0

    #@2
    .line 1130
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v2

    #@8
    .line 1131
    :cond_0
    if-ne p1, p0, :cond_1

    #@a
    .line 1132
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@c
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@f
    throw v2

    #@10
    .line 1133
    :cond_1
    const/4 v1, 0x0

    #@11
    .line 1134
    .local v1, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedTransferQueue;->poll()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_2

    #@17
    .line 1135
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@1a
    .line 1136
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 1138
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
    .line 1146
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_0

    #@2
    .line 1147
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v2

    #@8
    .line 1148
    :cond_0
    if-ne p1, p0, :cond_1

    #@a
    .line 1149
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@c
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@f
    throw v2

    #@10
    .line 1150
    :cond_1
    const/4 v1, 0x0

    #@11
    .line 1151
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
    .line 1152
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@1c
    .line 1153
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 1155
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_2
    return v1
.end method

.method public getWaitingConsumerCount()I
    .locals 1

    #@0
    .prologue
    .line 1213
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
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x0

    #@1
    .line 1193
    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->firstOfMode(Z)Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@4
    move-result-object v1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isEmpty()Z
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v1, 0x1

    #@1
    .line 1185
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@3
    .local v0, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v0, :cond_2

    #@5
    .line 1186
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_1

    #@b
    .line 1187
    iget-boolean v2, v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    #@d
    if-eqz v2, :cond_0

    #@f
    const/4 v1, 0x0

    #@10
    :cond_0
    return v1

    #@11
    .line 1185
    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->succ(Ljava/util/concurrent/LinkedTransferQueue$Node;)Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@14
    move-result-object v0

    #@15
    goto :goto_0

    #@16
    .line 1189
    :cond_2
    return v1
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
    .line 1172
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
    .line 1033
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
    .line 1034
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
    .line 1021
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
    .line 1022
    return v2
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
    .line 1176
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/concurrent/LinkedTransferQueue;->firstDataItem()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
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
    .line 1121
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
    .line 1114
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
    .line 1115
    .local v6, "e":Ljava/lang/Object;, "TE;"
    if-nez v6, :cond_0

    #@e
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 1117
    new-instance v0, Ljava/lang/InterruptedException;

    #@16
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    #@19
    throw v0

    #@1a
    .line 1116
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
    .line 1007
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
    .line 1006
    return-void
.end method

.method public remainingCapacity()I
    .locals 1

    #@0
    .prologue
    .line 1262
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
    .line 1228
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
    .line 1209
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->countOfMode(Z)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method final succ(Ljava/util/concurrent/LinkedTransferQueue$Node;)Ljava/util/concurrent/LinkedTransferQueue$Node;
    .locals 1
    .param p1, "p"    # Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@0
    .prologue
    .line 733
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    iget-object v0, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@2
    .line 734
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
    .line 1106
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
    .line 1107
    .local v6, "e":Ljava/lang/Object;, "TE;"
    if-eqz v6, :cond_0

    #@c
    .line 1108
    return-object v6

    #@d
    .line 1109
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@10
    .line 1110
    new-instance v0, Ljava/lang/InterruptedException;

    #@12
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    #@15
    throw v0
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
    .line 1076
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
    .line 1077
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@f
    .line 1078
    new-instance v0, Ljava/lang/InterruptedException;

    #@11
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    #@14
    throw v0

    #@15
    .line 1075
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
    .line 1061
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
    .line 1098
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
    .line 1099
    return v2

    #@f
    .line 1100
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_1

    #@15
    .line 1101
    const/4 v0, 0x0

    #@16
    return v0

    #@17
    .line 1102
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
    .line 894
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-virtual {p2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->forgetContents()V

    #@3
    .line 902
    if-eqz p1, :cond_4

    #@5
    if-eq p1, p2, :cond_4

    #@7
    iget-object v4, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@9
    if-ne v4, p2, :cond_4

    #@b
    .line 903
    iget-object v2, p2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@d
    .line 904
    .local v2, "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v2, :cond_0

    #@f
    .line 905
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
    .line 904
    if-eqz v4, :cond_4

    #@1d
    .line 907
    :cond_0
    :goto_0
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@1f
    .line 908
    .local v0, "h":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v0, p1, :cond_1

    #@21
    if-ne v0, p2, :cond_2

    #@23
    .line 909
    :cond_1
    return-void

    #@24
    .line 908
    :cond_2
    if-eqz v0, :cond_1

    #@26
    .line 910
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    #@29
    move-result v4

    #@2a
    if-nez v4, :cond_5

    #@2c
    .line 918
    iget-object v4, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@2e
    if-eq v4, p1, :cond_4

    #@30
    iget-object v4, p2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@32
    if-eq v4, p2, :cond_4

    #@34
    .line 920
    :cond_3
    iget v3, p0, Ljava/util/concurrent/LinkedTransferQueue;->sweepVotes:I

    #@36
    .line 921
    .local v3, "v":I
    const/16 v4, 0x20

    #@38
    if-ge v3, v4, :cond_7

    #@3a
    .line 922
    add-int/lit8 v4, v3, 0x1

    #@3c
    invoke-direct {p0, v3, v4}, Ljava/util/concurrent/LinkedTransferQueue;->casSweepVotes(II)Z

    #@3f
    move-result v4

    #@40
    if-eqz v4, :cond_3

    #@42
    .line 893
    .end local v0    # "h":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v2    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v3    # "v":I
    :cond_4
    :goto_1
    return-void

    #@43
    .line 912
    .restart local v0    # "h":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v2    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_5
    iget-object v1, v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@45
    .line 913
    .local v1, "hn":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-nez v1, :cond_6

    #@47
    .line 914
    return-void

    #@48
    .line 915
    :cond_6
    if-eq v1, v0, :cond_0

    #@4a
    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/LinkedTransferQueue;->casHead(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    #@4d
    move-result v4

    #@4e
    if-eqz v4, :cond_0

    #@50
    .line 916
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->forgetNext()V

    #@53
    goto :goto_0

    #@54
    .line 925
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
    .line 926
    invoke-direct {p0}, Ljava/util/concurrent/LinkedTransferQueue;->sweep()V

    #@5e
    goto :goto_1
.end method
