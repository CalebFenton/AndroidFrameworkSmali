.class public Ljava/util/concurrent/LinkedBlockingQueue;
.super Ljava/util/AbstractQueue;
.source "LinkedBlockingQueue.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/LinkedBlockingQueue$Node;,
        Ljava/util/concurrent/LinkedBlockingQueue$Itr;,
        Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TE;>;",
        "Ljava/util/concurrent/BlockingQueue<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x5fcfb35fbf1a7e0aL


# instance fields
.field private final greylist capacity:I

.field private final greylist-max-o count:Ljava/util/concurrent/atomic/AtomicInteger;

.field transient greylist head:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field private transient greylist-max-o last:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o notEmpty:Ljava/util/concurrent/locks/Condition;

.field private final greylist-max-o notFull:Ljava/util/concurrent/locks/Condition;

.field private final greylist putLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final greylist takeLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 245
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 246
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 4
    .param p1, "capacity"    # I

    .line 255
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 141
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 156
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 159
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 160
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 163
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 166
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 167
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    .line 256
    if-lez p1, :cond_37

    .line 257
    iput p1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    .line 258
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue$Node;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->last:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 259
    return-void

    .line 256
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 272
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 273
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 274
    .local v0, "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 276
    const/4 v1, 0x0

    .line 277
    .local v1, "n":I
    :try_start_c
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 278
    .local v3, "e":Ljava/lang/Object;, "TE;"
    if-eqz v3, :cond_34

    .line 280
    iget v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-eq v1, v4, :cond_2c

    .line 282
    new-instance v4, Ljava/util/concurrent/LinkedBlockingQueue$Node;

    invoke-direct {v4, v3}, Ljava/util/concurrent/LinkedBlockingQueue$Node;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->enqueue(Ljava/util/concurrent/LinkedBlockingQueue$Node;)V

    .line 283
    nop

    .end local v3    # "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v1, v1, 0x1

    .line 284
    goto :goto_10

    .line 281
    .restart local v3    # "e":Ljava/lang/Object;, "TE;"
    :cond_2c
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Queue full"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local p0    # "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .end local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    throw v2

    .line 279
    .restart local v0    # "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local p0    # "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .restart local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    :cond_34
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    .end local v0    # "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local p0    # "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .end local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    throw v2

    .line 285
    .end local v3    # "e":Ljava/lang/Object;, "TE;"
    .restart local v0    # "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local p0    # "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .restart local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    :cond_3a
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_3f
    .catchall {:try_start_c .. :try_end_3f} :catchall_44

    .line 287
    .end local v1    # "n":I
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 288
    nop

    .line 289
    return-void

    .line 287
    :catchall_44
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 288
    throw v1
.end method

.method private blacklist bulkRemove(Ljava/util/function/Predicate;)Z
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1058
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 1059
    .local v0, "removed":Z
    const/4 v2, 0x0

    .local v2, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    iget-object v3, v1, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 1060
    .local v3, "ancestor":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    const/4 v4, 0x0

    .line 1061
    .local v4, "nodes":[Ljava/util/concurrent/LinkedBlockingQueue$Node;, "[Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    const/4 v5, 0x0

    move v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move v2, v0

    .line 1064
    .end local v0    # "removed":Z
    .local v2, "removed":Z
    .local v3, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .local v4, "ancestor":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .local v5, "nodes":[Ljava/util/concurrent/LinkedBlockingQueue$Node;, "[Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .local v6, "len":I
    :goto_d
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    .line 1066
    if-nez v5, :cond_31

    .line 1067
    :try_start_12
    iget-object v0, v1, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v0, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-object v3, v0

    .line 1068
    nop

    .local v0, "q":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :goto_18
    if-eqz v0, :cond_2b

    .line 1069
    iget-object v7, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    if-eqz v7, :cond_25

    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x40

    if-ne v6, v7, :cond_25

    .line 1070
    goto :goto_2b

    .line 1068
    :cond_25
    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->succ(Ljava/util/concurrent/LinkedBlockingQueue$Node;)Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-result-object v7

    move-object v0, v7

    goto :goto_18

    .line 1071
    .end local v0    # "q":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :cond_2b
    :goto_2b
    new-array v0, v6, [Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_2d
    .catchall {:try_start_12 .. :try_end_2d} :catchall_2f

    move-object v5, v0

    .end local v5    # "nodes":[Ljava/util/concurrent/LinkedBlockingQueue$Node;, "[Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .local v0, "nodes":[Ljava/util/concurrent/LinkedBlockingQueue$Node;, "[Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    goto :goto_31

    .line 1076
    .end local v0    # "nodes":[Ljava/util/concurrent/LinkedBlockingQueue$Node;, "[Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .restart local v5    # "nodes":[Ljava/util/concurrent/LinkedBlockingQueue$Node;, "[Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :catchall_2f
    move-exception v0

    goto :goto_45

    .line 1073
    :cond_31
    :goto_31
    const/4 v0, 0x0

    move-object v7, v3

    move v3, v0

    .local v3, "n":I
    .local v7, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :goto_34
    if-eqz v7, :cond_49

    if-ge v3, v6, :cond_49

    .line 1074
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "n":I
    .local v0, "n":I
    :try_start_3a
    aput-object v7, v5, v3

    .line 1073
    invoke-virtual {v1, v7}, Ljava/util/concurrent/LinkedBlockingQueue;->succ(Ljava/util/concurrent/LinkedBlockingQueue$Node;)Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-result-object v3
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_43

    move-object v7, v3

    move v3, v0

    goto :goto_34

    .line 1076
    .end local v0    # "n":I
    :catchall_43
    move-exception v0

    move-object v3, v7

    .end local v7    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .local v3, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :goto_45
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 1077
    throw v0

    .line 1076
    .local v3, "n":I
    .restart local v7    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :cond_49
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 1077
    nop

    .line 1080
    const-wide/16 v8, 0x0

    .line 1081
    .local v8, "deathRow":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_50
    const-wide/16 v10, 0x1

    if-ge v0, v3, :cond_6b

    .line 1083
    aget-object v12, v5, v0

    iget-object v12, v12, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    move-object v13, v12

    .local v13, "e":Ljava/lang/Object;, "TE;"
    if-eqz v12, :cond_66

    move-object/from16 v12, p1

    invoke-interface {v12, v13}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_68

    .line 1084
    shl-long/2addr v10, v0

    or-long/2addr v8, v10

    goto :goto_68

    .line 1083
    :cond_66
    move-object/from16 v12, p1

    .line 1081
    .end local v13    # "e":Ljava/lang/Object;, "TE;"
    :cond_68
    :goto_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    :cond_6b
    move-object/from16 v12, p1

    .line 1088
    .end local v0    # "i":I
    const-wide/16 v13, 0x0

    cmp-long v0, v8, v13

    if-eqz v0, :cond_a6

    .line 1089
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    .line 1091
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_77
    if-ge v0, v3, :cond_a2

    .line 1093
    shl-long v15, v10, v0

    and-long/2addr v15, v8

    cmp-long v15, v15, v13

    if-eqz v15, :cond_97

    :try_start_80
    aget-object v15, v5, v0

    move-object/from16 v16, v15

    .local v16, "q":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    iget-object v15, v15, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    if-eqz v15, :cond_95

    .line 1095
    move-object/from16 v15, v16

    .end local v16    # "q":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .local v15, "q":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    invoke-virtual {v1, v15, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->findPred(Ljava/util/concurrent/LinkedBlockingQueue$Node;Ljava/util/concurrent/LinkedBlockingQueue$Node;)Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-result-object v16

    move-object/from16 v4, v16

    .line 1096
    invoke-virtual {v1, v15, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->unlink(Ljava/util/concurrent/LinkedBlockingQueue$Node;Ljava/util/concurrent/LinkedBlockingQueue$Node;)V

    .line 1097
    const/4 v2, 0x1

    goto :goto_97

    .line 1093
    .end local v15    # "q":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .restart local v16    # "q":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :cond_95
    move-object/from16 v15, v16

    .line 1099
    .end local v16    # "q":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :cond_97
    :goto_97
    const/4 v15, 0x0

    aput-object v15, v5, v0
    :try_end_9a
    .catchall {:try_start_80 .. :try_end_9a} :catchall_9d

    .line 1091
    add-int/lit8 v0, v0, 0x1

    goto :goto_77

    .line 1102
    .end local v0    # "i":I
    :catchall_9d
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 1103
    throw v0

    .line 1102
    :cond_a2
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 1103
    nop

    .line 1105
    .end local v8    # "deathRow":J
    :cond_a6
    if-lez v3, :cond_ae

    if-nez v7, :cond_ab

    goto :goto_ae

    :cond_ab
    move-object v3, v7

    goto/16 :goto_d

    .line 1106
    :cond_ae
    :goto_ae
    return v2
.end method

.method private greylist-max-o dequeue()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 215
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 216
    .local v0, "h":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    iget-object v1, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 217
    .local v1, "first":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    iput-object v0, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 218
    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 219
    iget-object v2, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    .line 220
    .local v2, "x":Ljava/lang/Object;, "TE;"
    const/4 v3, 0x0

    iput-object v3, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    .line 221
    return-object v2
.end method

.method private greylist-max-o enqueue(Ljava/util/concurrent/LinkedBlockingQueue$Node;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 204
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, "node":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->last:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object p1, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->last:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 205
    return-void
.end method

.method static synthetic blacklist lambda$removeAll$0(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "c"    # Ljava/util/Collection;
    .param p1, "e"    # Ljava/lang/Object;

    .line 1030
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$retainAll$1(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "c"    # Ljava/util/Collection;
    .param p1, "e"    # Ljava/lang/Object;

    .line 1038
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1147
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1149
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1150
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue$Node;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->last:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 1155
    :goto_13
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 1156
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_1b

    .line 1157
    nop

    .line 1160
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    return-void

    .line 1158
    .restart local v0    # "item":Ljava/lang/Object;, "TE;"
    :cond_1b
    invoke-virtual {p0, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 1159
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    goto :goto_13
.end method

.method private greylist-max-o signalNotEmpty()V
    .registers 3

    .line 174
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 175
    .local v0, "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 177
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_f

    .line 179
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 180
    nop

    .line 181
    return-void

    .line 179
    :catchall_f
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 180
    throw v1
.end method

.method private greylist-max-o signalNotFull()V
    .registers 3

    .line 187
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 188
    .local v0, "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 190
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_f

    .line 192
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 193
    nop

    .line 194
    return-void

    .line 192
    :catchall_f
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 193
    throw v1
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1121
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    .line 1124
    :try_start_3
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1127
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v0, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .local v0, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :goto_a
    if-eqz v0, :cond_15

    .line 1128
    iget-object v1, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1127
    iget-object v1, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-object v0, v1

    goto :goto_a

    .line 1131
    .end local v0    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :cond_15
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1e

    .line 1133
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 1134
    nop

    .line 1135
    return-void

    .line 1133
    :catchall_1e
    move-exception v0

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 1134
    throw v0
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 4

    .line 667
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    .line 669
    :try_start_3
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .local v0, "h":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :goto_5
    iget-object v1, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-object v2, v1

    .local v2, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    if-eqz v1, :cond_11

    .line 670
    iput-object v0, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 671
    const/4 v1, 0x0

    iput-object v1, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    .line 669
    move-object v0, v2

    goto :goto_5

    .line 673
    .end local v0    # "h":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .end local v2    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :cond_11
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->last:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 675
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    iget v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v0, v1, :cond_25

    .line 676
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_2a

    .line 678
    :cond_25
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 679
    nop

    .line 680
    return-void

    .line 678
    :catchall_2a
    move-exception v0

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 679
    throw v0
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 564
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 565
    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    .line 567
    :try_start_7
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .local v1, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :goto_b
    if-eqz v1, :cond_1f

    .line 568
    iget-object v2, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_24

    if-eqz v2, :cond_1b

    .line 569
    nop

    .line 572
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 569
    const/4 v0, 0x1

    return v0

    .line 567
    :cond_1b
    :try_start_1b
    iget-object v2, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_24

    move-object v1, v2

    goto :goto_b

    .line 570
    .end local v1    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :cond_1f
    nop

    .line 572
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 570
    return v0

    .line 572
    :catchall_24
    move-exception v0

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 573
    throw v0
.end method

.method public whitelist test-api drainTo(Ljava/util/Collection;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;)I"
        }
    .end annotation

    .line 689
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api drainTo(Ljava/util/Collection;I)I
    .registers 13
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;I)I"
        }
    .end annotation

    .line 699
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    if-eq p1, p0, :cond_69

    .line 702
    const/4 v0, 0x0

    if-gtz p2, :cond_9

    .line 703
    return v0

    .line 704
    :cond_9
    const/4 v1, 0x0

    .line 705
    .local v1, "signalNotFull":Z
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 706
    .local v2, "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 708
    :try_start_f
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 710
    .local v3, "n":I
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_5f

    .line 711
    .local v4, "h":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    const/4 v5, 0x0

    .line 713
    .local v5, "i":I
    :goto_1c
    const/4 v6, 0x1

    if-ge v5, v3, :cond_44

    .line 714
    :try_start_1f
    iget-object v7, v4, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 715
    .local v7, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    iget-object v8, v7, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    invoke-interface {p1, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 716
    const/4 v8, 0x0

    iput-object v8, v7, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    .line 717
    iput-object v4, v4, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_30

    .line 718
    move-object v4, v7

    .line 719
    nop

    .end local v7    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    add-int/lit8 v5, v5, 0x1

    .line 720
    goto :goto_1c

    .line 724
    :catchall_30
    move-exception v7

    if-lez v5, :cond_42

    .line 726
    :try_start_33
    iput-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 727
    iget-object v8, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v9, v5

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result v8

    iget v9, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v8, v9, :cond_41

    move v0, v6

    :cond_41
    move v1, v0

    .line 729
    :cond_42
    nop

    .end local v1    # "signalNotFull":Z
    .end local v2    # "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local p0    # "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .end local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    .end local p2    # "maxElements":I
    throw v7

    .line 721
    .restart local v1    # "signalNotFull":Z
    .restart local v2    # "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local p0    # "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .restart local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    .restart local p2    # "maxElements":I
    :cond_44
    nop

    .line 724
    if-lez v5, :cond_56

    .line 726
    iput-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 727
    iget-object v7, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v8, v5

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result v7

    iget v8, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I
    :try_end_52
    .catchall {:try_start_33 .. :try_end_52} :catchall_5f

    if-ne v7, v8, :cond_55

    move v0, v6

    :cond_55
    move v1, v0

    .line 731
    :cond_56
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 732
    if-eqz v1, :cond_5e

    .line 733
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->signalNotFull()V

    .line 721
    :cond_5e
    return v3

    .line 731
    .end local v3    # "n":I
    .end local v4    # "h":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .end local v5    # "i":I
    :catchall_5f
    move-exception v0

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 732
    if-eqz v1, :cond_68

    .line 733
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->signalNotFull()V

    .line 734
    :cond_68
    throw v0

    .line 701
    .end local v1    # "signalNotFull":Z
    .end local v2    # "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method blacklist findPred(Ljava/util/concurrent/LinkedBlockingQueue$Node;Ljava/util/concurrent/LinkedBlockingQueue$Node;)Ljava/util/concurrent/LinkedBlockingQueue$Node;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue$Node<",
            "TE;>;",
            "Ljava/util/concurrent/LinkedBlockingQueue$Node<",
            "TE;>;)",
            "Ljava/util/concurrent/LinkedBlockingQueue$Node<",
            "TE;>;"
        }
    .end annotation

    .line 1047
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .local p2, "ancestor":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    iget-object v0, p2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    if-nez v0, :cond_6

    .line 1048
    iget-object p2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 1050
    :cond_6
    :goto_6
    iget-object v0, p2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-object v1, v0

    .local v1, "q":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    if-eq v0, p1, :cond_d

    .line 1051
    move-object p2, v1

    goto :goto_6

    .line 1052
    .end local v1    # "q":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :cond_d
    return-object p2
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

    .line 980
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->forEachFrom(Ljava/util/function/Consumer;Ljava/util/concurrent/LinkedBlockingQueue$Node;)V

    .line 982
    return-void
.end method

.method blacklist forEachFrom(Ljava/util/function/Consumer;Ljava/util/concurrent/LinkedBlockingQueue$Node;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;",
            "Ljava/util/concurrent/LinkedBlockingQueue$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 991
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    .local p2, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    const/16 v0, 0x40

    .line 992
    .local v0, "batchSize":I
    const/4 v1, 0x0

    .line 993
    .local v1, "es":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 995
    .local v2, "len":I
    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    .line 997
    if-nez v1, :cond_2a

    .line 998
    if-nez p2, :cond_13

    :try_start_b
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v3, v3, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-object p2, v3

    goto :goto_13

    .line 1008
    :catchall_11
    move-exception v3

    goto :goto_3d

    .line 999
    :cond_13
    :goto_13
    move-object v3, p2

    .local v3, "q":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :goto_14
    if-eqz v3, :cond_27

    .line 1000
    iget-object v4, v3, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    if-eqz v4, :cond_21

    add-int/lit8 v2, v2, 0x1

    const/16 v4, 0x40

    if-ne v2, v4, :cond_21

    .line 1001
    goto :goto_27

    .line 999
    :cond_21
    invoke-virtual {p0, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->succ(Ljava/util/concurrent/LinkedBlockingQueue$Node;)Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-result-object v4

    move-object v3, v4

    goto :goto_14

    .line 1002
    .end local v3    # "q":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :cond_27
    :goto_27
    new-array v3, v2, [Ljava/lang/Object;

    move-object v1, v3

    .line 1004
    :cond_2a
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_2b
    if-eqz p2, :cond_41

    if-ge v3, v2, :cond_41

    .line 1005
    iget-object v4, p2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    aput-object v4, v1, v3

    if-eqz v4, :cond_37

    .line 1006
    add-int/lit8 v3, v3, 0x1

    .line 1004
    :cond_37
    invoke-virtual {p0, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->succ(Ljava/util/concurrent/LinkedBlockingQueue$Node;)Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-result-object v4
    :try_end_3b
    .catchall {:try_start_b .. :try_end_3b} :catchall_11

    move-object p2, v4

    goto :goto_2b

    .line 1008
    .end local v3    # "n":I
    :goto_3d
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 1009
    throw v3

    .line 1008
    .restart local v3    # "n":I
    :cond_41
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 1009
    nop

    .line 1010
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_46
    if-ge v4, v3, :cond_50

    .line 1011
    aget-object v5, v1, v4

    .line 1012
    .local v5, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1010
    .end local v5    # "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    .line 1014
    .end local v4    # "i":I
    :cond_50
    if-lez v3, :cond_54

    if-nez p2, :cond_4

    .line 1015
    :cond_54
    return-void
.end method

.method greylist-max-o fullyLock()V
    .registers 2

    .line 228
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 229
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 230
    return-void
.end method

.method greylist-max-o fullyUnlock()V
    .registers 2

    .line 236
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 237
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 238
    return-void
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

    .line 759
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;

    invoke-direct {v0, p0}, Ljava/util/concurrent/LinkedBlockingQueue$Itr;-><init>(Ljava/util/concurrent/LinkedBlockingQueue;)V

    return-object v0
.end method

.method public whitelist test-api offer(Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 404
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_47

    .line 405
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 406
    .local v0, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_e

    .line 407
    return v3

    .line 409
    :cond_e
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;

    invoke-direct {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue$Node;-><init>(Ljava/lang/Object;)V

    .line 410
    .local v1, "node":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 411
    .local v2, "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 413
    :try_start_18
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_42

    if-ne v4, v5, :cond_25

    .line 414
    nop

    .line 420
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 414
    return v3

    .line 415
    :cond_25
    :try_start_25
    invoke-direct {p0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->enqueue(Ljava/util/concurrent/LinkedBlockingQueue$Node;)V

    .line 416
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    .line 417
    .local v3, "c":I
    add-int/lit8 v4, v3, 0x1

    iget v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ge v4, v5, :cond_37

    .line 418
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_37
    .catchall {:try_start_25 .. :try_end_37} :catchall_42

    .line 420
    :cond_37
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 421
    nop

    .line 422
    if-nez v3, :cond_40

    .line 423
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->signalNotEmpty()V

    .line 424
    :cond_40
    const/4 v4, 0x1

    return v4

    .line 420
    .end local v3    # "c":I
    :catchall_42
    move-exception v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 421
    throw v3

    .line 404
    .end local v0    # "count":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v1    # "node":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .end local v2    # "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_47
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 12
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

    .line 368
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_50

    .line 369
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 371
    .local v0, "nanos":J
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 372
    .local v2, "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 373
    .local v3, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 375
    :goto_d
    :try_start_d
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_4b

    if-ne v4, v5, :cond_29

    .line 376
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_21

    .line 377
    nop

    .line 385
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 377
    const/4 v4, 0x0

    return v4

    .line 378
    :cond_21
    :try_start_21
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v4

    move-wide v0, v4

    goto :goto_d

    .line 380
    :cond_29
    new-instance v4, Ljava/util/concurrent/LinkedBlockingQueue$Node;

    invoke-direct {v4, p1}, Ljava/util/concurrent/LinkedBlockingQueue$Node;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->enqueue(Ljava/util/concurrent/LinkedBlockingQueue$Node;)V

    .line 381
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    .line 382
    .local v4, "c":I
    add-int/lit8 v5, v4, 0x1

    iget v6, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ge v5, v6, :cond_40

    .line 383
    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_40
    .catchall {:try_start_21 .. :try_end_40} :catchall_4b

    .line 385
    :cond_40
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 386
    nop

    .line 387
    if-nez v4, :cond_49

    .line 388
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->signalNotEmpty()V

    .line 389
    :cond_49
    const/4 v5, 0x1

    return v5

    .line 385
    .end local v4    # "c":I
    :catchall_4b
    move-exception v4

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 386
    throw v4

    .line 368
    .end local v0    # "nanos":J
    .end local v2    # "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v3    # "count":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_50
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api peek()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 498
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 499
    .local v0, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 500
    return-object v2

    .line 501
    :cond_a
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 502
    .local v1, "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 504
    :try_start_f
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-lez v3, :cond_1b

    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v2, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v2, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_1f

    .line 506
    :cond_1b
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 504
    return-object v2

    .line 506
    :catchall_1f
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 507
    throw v2
.end method

.method public whitelist test-api poll()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 475
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 476
    .local v0, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 477
    return-object v2

    .line 480
    :cond_a
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 481
    .local v1, "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 483
    :try_start_f
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_36

    if-nez v3, :cond_1a

    .line 484
    nop

    .line 490
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 484
    return-object v2

    .line 485
    :cond_1a
    :try_start_1a
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->dequeue()Ljava/lang/Object;

    move-result-object v2

    .line 486
    .local v2, "x":Ljava/lang/Object;, "TE;"
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v3

    .line 487
    .local v3, "c":I
    const/4 v4, 0x1

    if-le v3, v4, :cond_2a

    .line 488
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_2a
    .catchall {:try_start_1a .. :try_end_2a} :catchall_36

    .line 490
    :cond_2a
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 491
    nop

    .line 492
    iget v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v3, v4, :cond_35

    .line 493
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->signalNotFull()V

    .line 494
    :cond_35
    return-object v2

    .line 490
    .end local v2    # "x":Ljava/lang/Object;, "TE;"
    .end local v3    # "c":I
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 491
    throw v2
.end method

.method public whitelist test-api poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 11
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

    .line 452
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 453
    .local v0, "nanos":J
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 454
    .local v2, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 455
    .local v3, "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 457
    :goto_b
    :try_start_b
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_41

    if-nez v4, :cond_25

    .line 458
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_1d

    .line 459
    nop

    .line 467
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 459
    const/4 v4, 0x0

    return-object v4

    .line 460
    :cond_1d
    :try_start_1d
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v4

    move-wide v0, v4

    goto :goto_b

    .line 462
    :cond_25
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->dequeue()Ljava/lang/Object;

    move-result-object v4

    .line 463
    .local v4, "x":Ljava/lang/Object;, "TE;"
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v5

    .line 464
    .local v5, "c":I
    const/4 v6, 0x1

    if-le v5, v6, :cond_35

    .line 465
    iget-object v6, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_35
    .catchall {:try_start_1d .. :try_end_35} :catchall_41

    .line 467
    :cond_35
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 468
    nop

    .line 469
    iget v6, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v5, v6, :cond_40

    .line 470
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->signalNotFull()V

    .line 471
    :cond_40
    return-object v4

    .line 467
    .end local v4    # "x":Ljava/lang/Object;, "TE;"
    .end local v5    # "c":I
    :catchall_41
    move-exception v4

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 468
    throw v4
.end method

.method public whitelist test-api put(Ljava/lang/Object;)V
    .registers 8
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

    .line 327
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_3d

    .line 329
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;

    invoke-direct {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue$Node;-><init>(Ljava/lang/Object;)V

    .line 330
    .local v0, "node":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 331
    .local v1, "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 332
    .local v2, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 342
    :goto_e
    :try_start_e
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iget v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v3, v4, :cond_1c

    .line 343
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_e

    .line 345
    :cond_1c
    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->enqueue(Ljava/util/concurrent/LinkedBlockingQueue$Node;)V

    .line 346
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    .line 347
    .local v3, "c":I
    add-int/lit8 v4, v3, 0x1

    iget v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ge v4, v5, :cond_2e

    .line 348
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_2e
    .catchall {:try_start_e .. :try_end_2e} :catchall_38

    .line 350
    :cond_2e
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 351
    nop

    .line 352
    if-nez v3, :cond_37

    .line 353
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->signalNotEmpty()V

    .line 354
    :cond_37
    return-void

    .line 350
    .end local v3    # "c":I
    :catchall_38
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 351
    throw v3

    .line 327
    .end local v0    # "node":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .end local v1    # "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v2    # "count":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_3d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api remainingCapacity()I
    .registers 3

    .line 316
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 538
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 539
    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    .line 541
    :try_start_7
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .local v1, "pred":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    iget-object v2, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 542
    .local v2, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :goto_b
    if-eqz v2, :cond_23

    .line 544
    iget-object v3, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 545
    invoke-virtual {p0, v2, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->unlink(Ljava/util/concurrent/LinkedBlockingQueue$Node;Ljava/util/concurrent/LinkedBlockingQueue$Node;)V
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_28

    .line 546
    nop

    .line 551
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 546
    const/4 v0, 0x1

    return v0

    .line 543
    :cond_1e
    move-object v1, v2

    :try_start_1f
    iget-object v3, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_28

    move-object v2, v3

    goto :goto_b

    .line 549
    .end local v1    # "pred":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .end local v2    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :cond_23
    nop

    .line 551
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 549
    return v0

    .line 551
    :catchall_28
    move-exception v0

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 552
    throw v0
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

    .line 1029
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue$$ExternalSyntheticLambda0;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->bulkRemove(Ljava/util/function/Predicate;)Z

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

    .line 1021
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    invoke-direct {p0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->bulkRemove(Ljava/util/function/Predicate;)Z

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

    .line 1037
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue$$ExternalSyntheticLambda1;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->bulkRemove(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 299
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

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

    .line 973
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;

    invoke-direct {v0, p0}, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;-><init>(Ljava/util/concurrent/LinkedBlockingQueue;)V

    return-object v0
.end method

.method blacklist succ(Ljava/util/concurrent/LinkedBlockingQueue$Node;)Ljava/util/concurrent/LinkedBlockingQueue$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue$Node<",
            "TE;>;)",
            "Ljava/util/concurrent/LinkedBlockingQueue$Node<",
            "TE;>;"
        }
    .end annotation

    .line 744
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    iget-object v0, p1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-object v1, v0

    .end local p1    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .local v1, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    if-ne p1, v0, :cond_9

    .line 745
    iget-object p1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v1, p1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 746
    :cond_9
    return-object v1
.end method

.method public whitelist test-api take()Ljava/lang/Object;
    .registers 6
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

    .line 430
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 431
    .local v0, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 432
    .local v1, "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 434
    :goto_7
    :try_start_7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_13

    .line 435
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_7

    .line 437
    :cond_13
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->dequeue()Ljava/lang/Object;

    move-result-object v2

    .line 438
    .local v2, "x":Ljava/lang/Object;, "TE;"
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v3

    .line 439
    .local v3, "c":I
    const/4 v4, 0x1

    if-le v3, v4, :cond_23

    .line 440
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_2f

    .line 442
    :cond_23
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 443
    nop

    .line 444
    iget v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v3, v4, :cond_2e

    .line 445
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->signalNotFull()V

    .line 446
    :cond_2e
    return-object v2

    .line 442
    .end local v2    # "x":Ljava/lang/Object;, "TE;"
    .end local v3    # "c":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 443
    throw v2
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 7

    .line 590
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    .line 592
    :try_start_3
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 593
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/Object;

    .line 594
    .local v1, "a":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 595
    .local v2, "k":I
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v3, v3, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .local v3, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :goto_10
    if-eqz v3, :cond_1d

    .line 596
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "k":I
    .local v4, "k":I
    iget-object v5, v3, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    aput-object v5, v1, v2

    .line 595
    iget-object v2, v3, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_22

    move-object v3, v2

    move v2, v4

    goto :goto_10

    .line 597
    .end local v3    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .end local v4    # "k":I
    .restart local v2    # "k":I
    :cond_1d
    nop

    .line 599
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 597
    return-object v1

    .line 599
    .end local v0    # "size":I
    .end local v1    # "a":[Ljava/lang/Object;
    .end local v2    # "k":I
    :catchall_22
    move-exception v0

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 600
    throw v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 640
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    .line 642
    :try_start_3
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 643
    .local v0, "size":I
    array-length v1, p1

    if-ge v1, v0, :cond_1c

    .line 644
    nop

    .line 645
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object p1, v1

    .line 647
    :cond_1c
    const/4 v1, 0x0

    .line 648
    .local v1, "k":I
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v2, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .local v2, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :goto_21
    if-eqz v2, :cond_2e

    .line 649
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "k":I
    .local v3, "k":I
    iget-object v4, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    aput-object v4, p1, v1

    .line 648
    iget-object v1, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-object v2, v1

    move v1, v3

    goto :goto_21

    .line 650
    .end local v2    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .end local v3    # "k":I
    .restart local v1    # "k":I
    :cond_2e
    array-length v2, p1

    if-le v2, v1, :cond_34

    .line 651
    const/4 v2, 0x0

    aput-object v2, p1, v1
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_39

    .line 652
    :cond_34
    nop

    .line 654
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 652
    return-object p1

    .line 654
    .end local v0    # "size":I
    .end local v1    # "k":I
    :catchall_39
    move-exception v0

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 655
    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 659
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    invoke-static {p0}, Ljava/util/concurrent/Helpers;->collectionToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o unlink(Ljava/util/concurrent/LinkedBlockingQueue$Node;Ljava/util/concurrent/LinkedBlockingQueue$Node;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue$Node<",
            "TE;>;",
            "Ljava/util/concurrent/LinkedBlockingQueue$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 518
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .local p2, "pred":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    const/4 v0, 0x0

    iput-object v0, p1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    .line 519
    iget-object v0, p1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v0, p2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 520
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->last:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-ne v0, p1, :cond_d

    .line 521
    iput-object p2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->last:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 522
    :cond_d
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    iget v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v0, v1, :cond_1c

    .line 523
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 524
    :cond_1c
    return-void
.end method
