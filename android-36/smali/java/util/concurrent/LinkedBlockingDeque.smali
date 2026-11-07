.class public Ljava/util/concurrent/LinkedBlockingDeque;
.super Ljava/util/AbstractQueue;
.source "LinkedBlockingDeque.java"

# interfaces
.implements Ljava/util/concurrent/BlockingDeque;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/LinkedBlockingDeque$Node;,
        Ljava/util/concurrent/LinkedBlockingDeque$Itr;,
        Ljava/util/concurrent/LinkedBlockingDeque$DescendingItr;,
        Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;,
        Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TE;>;",
        "Ljava/util/concurrent/BlockingDeque<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x56223931da801daL


# instance fields
.field private final greylist-max-o capacity:I

.field private transient greylist-max-o count:I

.field transient greylist first:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field transient greylist-max-o last:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field final greylist lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final greylist-max-o notEmpty:Ljava/util/concurrent/locks/Condition;

.field private final greylist-max-o notFull:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 174
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    .line 175
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 3
    .param p1, "capacity"    # I

    .line 183
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 159
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 162
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 163
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 166
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 167
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    .line 184
    if-lez p1, :cond_1f

    .line 185
    iput p1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->capacity:I

    .line 186
    return-void

    .line 184
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 199
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    .line 200
    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->addAll(Ljava/util/Collection;)Z

    .line 201
    return-void
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

    .line 1357
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 1358
    .local v0, "removed":Z
    iget-object v2, v1, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1359
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v3, 0x0

    .line 1360
    .local v3, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    const/4 v4, 0x0

    .line 1361
    .local v4, "nodes":[Ljava/util/concurrent/LinkedBlockingDeque$Node;, "[Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    const/4 v5, 0x0

    move v6, v5

    move-object v5, v4

    move-object v4, v3

    move v3, v0

    .line 1364
    .end local v0    # "removed":Z
    .local v3, "removed":Z
    .local v4, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    .local v5, "nodes":[Ljava/util/concurrent/LinkedBlockingDeque$Node;, "[Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    .local v6, "len":I
    :goto_c
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1366
    if-nez v5, :cond_2e

    .line 1367
    :try_start_11
    iget-object v0, v1, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    move-object v4, v0

    .line 1368
    nop

    .local v0, "q":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :goto_15
    if-eqz v0, :cond_28

    .line 1369
    iget-object v7, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    if-eqz v7, :cond_22

    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x40

    if-ne v6, v7, :cond_22

    .line 1370
    goto :goto_28

    .line 1368
    :cond_22
    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->succ(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Ljava/util/concurrent/LinkedBlockingDeque$Node;

    move-result-object v7

    move-object v0, v7

    goto :goto_15

    .line 1371
    .end local v0    # "q":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :cond_28
    :goto_28
    new-array v0, v6, [Ljava/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_2a
    .catchall {:try_start_11 .. :try_end_2a} :catchall_2c

    move-object v5, v0

    .end local v5    # "nodes":[Ljava/util/concurrent/LinkedBlockingDeque$Node;, "[Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    .local v0, "nodes":[Ljava/util/concurrent/LinkedBlockingDeque$Node;, "[Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    goto :goto_2e

    .line 1376
    .end local v0    # "nodes":[Ljava/util/concurrent/LinkedBlockingDeque$Node;, "[Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    .restart local v5    # "nodes":[Ljava/util/concurrent/LinkedBlockingDeque$Node;, "[Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :catchall_2c
    move-exception v0

    goto :goto_42

    .line 1373
    :cond_2e
    :goto_2e
    const/4 v0, 0x0

    move-object v7, v4

    move v4, v0

    .local v4, "n":I
    .local v7, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :goto_31
    if-eqz v7, :cond_46

    if-ge v4, v6, :cond_46

    .line 1374
    add-int/lit8 v0, v4, 0x1

    .end local v4    # "n":I
    .local v0, "n":I
    :try_start_37
    aput-object v7, v5, v4

    .line 1373
    invoke-virtual {v1, v7}, Ljava/util/concurrent/LinkedBlockingDeque;->succ(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Ljava/util/concurrent/LinkedBlockingDeque$Node;

    move-result-object v4
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_40

    move-object v7, v4

    move v4, v0

    goto :goto_31

    .line 1376
    .end local v0    # "n":I
    :catchall_40
    move-exception v0

    move-object v4, v7

    .end local v7    # "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    .local v4, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :goto_42
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1377
    throw v0

    .line 1376
    .local v4, "n":I
    .restart local v7    # "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :cond_46
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1377
    nop

    .line 1380
    const-wide/16 v8, 0x0

    .line 1381
    .local v8, "deathRow":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4d
    const-wide/16 v10, 0x1

    if-ge v0, v4, :cond_68

    .line 1383
    aget-object v12, v5, v0

    iget-object v12, v12, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    move-object v13, v12

    .local v13, "e":Ljava/lang/Object;, "TE;"
    if-eqz v12, :cond_63

    move-object/from16 v12, p1

    invoke-interface {v12, v13}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_65

    .line 1384
    shl-long/2addr v10, v0

    or-long/2addr v8, v10

    goto :goto_65

    .line 1383
    :cond_63
    move-object/from16 v12, p1

    .line 1381
    .end local v13    # "e":Ljava/lang/Object;, "TE;"
    :cond_65
    :goto_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    :cond_68
    move-object/from16 v12, p1

    .line 1388
    .end local v0    # "i":I
    const-wide/16 v13, 0x0

    cmp-long v0, v8, v13

    if-eqz v0, :cond_9d

    .line 1389
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1391
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_74
    if-ge v0, v4, :cond_99

    .line 1393
    shl-long v15, v10, v0

    and-long/2addr v15, v8

    cmp-long v15, v15, v13

    if-eqz v15, :cond_8e

    :try_start_7d
    aget-object v15, v5, v0

    move-object/from16 v16, v15

    .local v16, "q":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget-object v15, v15, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    if-eqz v15, :cond_8c

    .line 1395
    move-object/from16 v15, v16

    .end local v16    # "q":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    .local v15, "q":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    invoke-virtual {v1, v15}, Ljava/util/concurrent/LinkedBlockingDeque;->unlink(Ljava/util/concurrent/LinkedBlockingDeque$Node;)V

    .line 1396
    const/4 v3, 0x1

    goto :goto_8e

    .line 1393
    .end local v15    # "q":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    .restart local v16    # "q":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :cond_8c
    move-object/from16 v15, v16

    .line 1398
    .end local v16    # "q":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :cond_8e
    :goto_8e
    const/4 v15, 0x0

    aput-object v15, v5, v0
    :try_end_91
    .catchall {:try_start_7d .. :try_end_91} :catchall_94

    .line 1391
    add-int/lit8 v0, v0, 0x1

    goto :goto_74

    .line 1401
    .end local v0    # "i":I
    :catchall_94
    move-exception v0

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1402
    throw v0

    .line 1401
    :cond_99
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1402
    nop

    .line 1404
    .end local v8    # "deathRow":J
    :cond_9d
    if-lez v4, :cond_a5

    if-nez v7, :cond_a2

    goto :goto_a5

    :cond_a2
    move-object v4, v7

    goto/16 :goto_c

    .line 1405
    :cond_a5
    :goto_a5
    return v3
.end method

.method static synthetic blacklist lambda$removeAll$0(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "c"    # Ljava/util/Collection;
    .param p1, "e"    # Ljava/lang/Object;

    .line 1343
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$retainAll$1(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "c"    # Ljava/util/Collection;
    .param p1, "e"    # Ljava/lang/Object;

    .line 1351
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private greylist-max-o linkFirst(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingDeque$Node<",
            "TE;>;)Z"
        }
    .end annotation

    .line 211
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "node":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    iget v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->capacity:I

    if-lt v0, v1, :cond_8

    .line 212
    const/4 v0, 0x0

    return v0

    .line 213
    :cond_8
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 214
    .local v0, "f":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iput-object v0, p1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 215
    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 216
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    if-nez v1, :cond_15

    .line 217
    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    goto :goto_17

    .line 219
    :cond_15
    iput-object p1, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->prev:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 220
    :goto_17
    iget v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    .line 221
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 222
    return v2
.end method

.method private greylist-max-o linkLast(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingDeque$Node<",
            "TE;>;)Z"
        }
    .end annotation

    .line 230
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "node":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    iget v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->capacity:I

    if-lt v0, v1, :cond_8

    .line 231
    const/4 v0, 0x0

    return v0

    .line 232
    :cond_8
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 233
    .local v0, "l":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iput-object v0, p1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->prev:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 234
    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 235
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    if-nez v1, :cond_15

    .line 236
    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    goto :goto_17

    .line 238
    :cond_15
    iput-object p1, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 239
    :goto_17
    iget v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    .line 240
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 241
    return v2
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1442
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1443
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    .line 1444
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 1445
    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 1448
    :goto_b
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 1449
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_13

    .line 1450
    nop

    .line 1453
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    return-void

    .line 1451
    .restart local v0    # "item":Ljava/lang/Object;, "TE;"
    :cond_13
    invoke-virtual {p0, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    .line 1452
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    goto :goto_b
.end method

.method private greylist-max-o unlinkFirst()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 249
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 250
    .local v0, "f":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 251
    return-object v1

    .line 252
    :cond_6
    iget-object v2, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 253
    .local v2, "n":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget-object v3, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 254
    .local v3, "item":Ljava/lang/Object;, "TE;"
    iput-object v1, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 255
    iput-object v0, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 256
    iput-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 257
    if-nez v2, :cond_15

    .line 258
    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    goto :goto_17

    .line 260
    :cond_15
    iput-object v1, v2, Ljava/util/concurrent/LinkedBlockingDeque$Node;->prev:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 261
    :goto_17
    iget v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    .line 262
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 263
    return-object v3
.end method

.method private greylist-max-o unlinkLast()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 271
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 272
    .local v0, "l":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 273
    return-object v1

    .line 274
    :cond_6
    iget-object v2, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->prev:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 275
    .local v2, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget-object v3, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 276
    .local v3, "item":Ljava/lang/Object;, "TE;"
    iput-object v1, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 277
    iput-object v0, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->prev:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 278
    iput-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 279
    if-nez v2, :cond_15

    .line 280
    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    goto :goto_17

    .line 282
    :cond_15
    iput-object v1, v2, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 283
    :goto_17
    iget v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    .line 284
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 285
    return-object v3
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1418
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1419
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1422
    :try_start_5
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1424
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .local v1, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :goto_a
    if-eqz v1, :cond_15

    .line 1425
    iget-object v2, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1424
    iget-object v2, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    move-object v1, v2

    goto :goto_a

    .line 1427
    .end local v1    # "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :cond_15
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1e

    .line 1429
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1430
    nop

    .line 1431
    return-void

    .line 1429
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1430
    throw v1
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 626
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->addLast(Ljava/lang/Object;)V

    .line 627
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 844
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    if-eq p1, p0, :cond_67

    .line 849
    const/4 v0, 0x0

    .local v0, "beg":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    const/4 v1, 0x0

    .line 850
    .local v1, "end":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    const/4 v2, 0x0

    .line 851
    .local v2, "n":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 852
    .local v4, "e":Ljava/lang/Object;, "TE;"
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    add-int/lit8 v2, v2, 0x1

    .line 854
    new-instance v5, Ljava/util/concurrent/LinkedBlockingDeque$Node;

    invoke-direct {v5, v4}, Ljava/util/concurrent/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 855
    .local v5, "newNode":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    if-nez v0, :cond_22

    .line 856
    move-object v1, v5

    move-object v0, v5

    goto :goto_27

    .line 858
    :cond_22
    iput-object v5, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 859
    iput-object v1, v5, Ljava/util/concurrent/LinkedBlockingDeque$Node;->prev:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 860
    move-object v1, v5

    .line 862
    .end local v4    # "e":Ljava/lang/Object;, "TE;"
    .end local v5    # "newNode":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :goto_27
    goto :goto_9

    .line 863
    :cond_28
    if-nez v0, :cond_2c

    .line 864
    const/4 v3, 0x0

    return v3

    .line 867
    :cond_2c
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 868
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 870
    :try_start_31
    iget v4, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    add-int/2addr v4, v2

    iget v5, p0, Ljava/util/concurrent/LinkedBlockingDeque;->capacity:I

    if-gt v4, v5, :cond_59

    .line 871
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    iput-object v4, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->prev:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 872
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    if-nez v4, :cond_43

    .line 873
    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    goto :goto_47

    .line 875
    :cond_43
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    iput-object v0, v4, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 876
    :goto_47
    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 877
    iget v4, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    add-int/2addr v4, v2

    iput v4, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    .line 878
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_53
    .catchall {:try_start_31 .. :try_end_53} :catchall_62

    .line 879
    nop

    .line 882
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 879
    const/4 v4, 0x1

    return v4

    .line 882
    :cond_59
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 883
    nop

    .line 886
    invoke-super {p0, p1}, Ljava/util/AbstractQueue;->addAll(Ljava/util/Collection;)Z

    move-result v4

    return v4

    .line 882
    :catchall_62
    move-exception v4

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 883
    throw v4

    .line 846
    .end local v0    # "beg":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    .end local v1    # "end":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    .end local v2    # "n":I
    .end local v3    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api addFirst(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 318
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offerFirst(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 320
    return-void

    .line 319
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deque full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api addLast(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 327
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 329
    return-void

    .line 328
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deque full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist checkInvariants()V
    .registers 2

    .line 1459
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .local v0, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :goto_2
    if-eqz v0, :cond_7

    iget-object v0, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    goto :goto_2

    .line 1463
    .end local v0    # "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :cond_7
    return-void
.end method

.method public whitelist test-api clear()V
    .registers 5

    .line 981
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 982
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 984
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .local v1, "f":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :goto_7
    const/4 v2, 0x0

    if-eqz v1, :cond_14

    .line 985
    iput-object v2, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 986
    iget-object v3, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 987
    .local v3, "n":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iput-object v2, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->prev:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 988
    iput-object v2, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 989
    move-object v1, v3

    .line 990
    .end local v3    # "n":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    goto :goto_7

    .line 991
    .end local v1    # "f":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :cond_14
    iput-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    iput-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 992
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    .line 993
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_25

    .line 995
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 996
    nop

    .line 997
    return-void

    .line 995
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 996
    throw v1
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 816
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 817
    :cond_4
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 818
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 820
    :try_start_9
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .local v2, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :goto_b
    if-eqz v2, :cond_1f

    .line 821
    iget-object v3, v2, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_24

    if-eqz v3, :cond_1b

    .line 822
    nop

    .line 825
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 822
    const/4 v0, 0x1

    return v0

    .line 820
    :cond_1b
    :try_start_1b
    iget-object v3, v2, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_24

    move-object v2, v3

    goto :goto_b

    .line 823
    .end local v2    # "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :cond_1f
    nop

    .line 825
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 823
    return v0

    .line 825
    :catchall_24
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 826
    throw v0
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

    .line 1035
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque$DescendingItr;

    invoke-direct {v0, p0}, Ljava/util/concurrent/LinkedBlockingDeque$DescendingItr;-><init>(Ljava/util/concurrent/LinkedBlockingDeque;)V

    return-object v0
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

    .line 726
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api drainTo(Ljava/util/Collection;I)I
    .registers 7
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;I)I"
        }
    .end annotation

    .line 736
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    if-eq p1, p0, :cond_2e

    .line 739
    if-gtz p2, :cond_9

    .line 740
    const/4 v0, 0x0

    return v0

    .line 741
    :cond_9
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 742
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 744
    :try_start_e
    iget v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 745
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v1, :cond_24

    .line 746
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    iget-object v3, v3, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 747
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_29

    .line 745
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 749
    .end local v2    # "i":I
    :cond_24
    nop

    .line 751
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 749
    return v1

    .line 751
    .end local v1    # "n":I
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 752
    throw v1

    .line 738
    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api element()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 691
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

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

    .line 1292
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->forEachFrom(Ljava/util/function/Consumer;Ljava/util/concurrent/LinkedBlockingDeque$Node;)V

    .line 1294
    return-void
.end method

.method blacklist forEachFrom(Ljava/util/function/Consumer;Ljava/util/concurrent/LinkedBlockingDeque$Node;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;",
            "Ljava/util/concurrent/LinkedBlockingDeque$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 1303
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    .local p2, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1304
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    const/16 v1, 0x40

    .line 1305
    .local v1, "batchSize":I
    const/4 v2, 0x0

    .line 1306
    .local v2, "es":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1308
    .local v3, "len":I
    :cond_6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1310
    if-nez v2, :cond_2a

    .line 1311
    if-nez p2, :cond_13

    :try_start_d
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    move-object p2, v4

    goto :goto_13

    .line 1321
    :catchall_11
    move-exception v4

    goto :goto_3d

    .line 1312
    :cond_13
    :goto_13
    move-object v4, p2

    .local v4, "q":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :goto_14
    if-eqz v4, :cond_27

    .line 1313
    iget-object v5, v4, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    if-eqz v5, :cond_21

    add-int/lit8 v3, v3, 0x1

    const/16 v5, 0x40

    if-ne v3, v5, :cond_21

    .line 1314
    goto :goto_27

    .line 1312
    :cond_21
    invoke-virtual {p0, v4}, Ljava/util/concurrent/LinkedBlockingDeque;->succ(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Ljava/util/concurrent/LinkedBlockingDeque$Node;

    move-result-object v5

    move-object v4, v5

    goto :goto_14

    .line 1315
    .end local v4    # "q":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :cond_27
    :goto_27
    new-array v4, v3, [Ljava/lang/Object;

    move-object v2, v4

    .line 1317
    :cond_2a
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_2b
    if-eqz p2, :cond_41

    if-ge v4, v3, :cond_41

    .line 1318
    iget-object v5, p2, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    aput-object v5, v2, v4

    if-eqz v5, :cond_37

    .line 1319
    add-int/lit8 v4, v4, 0x1

    .line 1317
    :cond_37
    invoke-virtual {p0, p2}, Ljava/util/concurrent/LinkedBlockingDeque;->succ(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Ljava/util/concurrent/LinkedBlockingDeque$Node;

    move-result-object v5
    :try_end_3b
    .catchall {:try_start_d .. :try_end_3b} :catchall_11

    move-object p2, v5

    goto :goto_2b

    .line 1321
    .end local v4    # "n":I
    :goto_3d
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1322
    throw v4

    .line 1321
    .restart local v4    # "n":I
    :cond_41
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1322
    nop

    .line 1323
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_46
    if-ge v5, v4, :cond_50

    .line 1324
    aget-object v6, v2, v5

    .line 1325
    .local v6, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1323
    .end local v6    # "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_46

    .line 1327
    .end local v5    # "i":I
    :cond_50
    if-lez v4, :cond_54

    if-nez p2, :cond_6

    .line 1328
    :cond_54
    return-void
.end method

.method public whitelist test-api getFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 545
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    .line 546
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_7

    .line 547
    return-object v0

    .line 546
    :cond_7
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public whitelist test-api getLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 554
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    .line 555
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_7

    .line 556
    return-object v0

    .line 555
    :cond_7
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
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

    .line 1021
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque$Itr;

    invoke-direct {v0, p0}, Ljava/util/concurrent/LinkedBlockingDeque$Itr;-><init>(Ljava/util/concurrent/LinkedBlockingDeque;)V

    return-object v0
.end method

.method public whitelist test-api offer(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 634
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 6
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

    .line 651
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api offerFirst(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 335
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_19

    .line 336
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;

    invoke-direct {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 337
    .local v0, "node":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 338
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 340
    :try_start_c
    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->linkFirst(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Z

    move-result v2
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_14

    .line 342
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 340
    return v2

    .line 342
    :catchall_14
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 343
    throw v2

    .line 335
    .end local v0    # "node":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    .end local v1    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api offerFirst(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 11
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

    .line 401
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_35

    .line 402
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;

    invoke-direct {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 403
    .local v0, "node":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 404
    .local v1, "nanos":J
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 405
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 407
    :goto_10
    :try_start_10
    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->linkFirst(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Z

    move-result v4
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_30

    if-nez v4, :cond_2a

    .line 408
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gtz v4, :cond_22

    .line 409
    nop

    .line 414
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 409
    const/4 v4, 0x0

    return v4

    .line 410
    :cond_22
    :try_start_22
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4, v1, v2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v4
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_30

    move-wide v1, v4

    goto :goto_10

    .line 412
    :cond_2a
    nop

    .line 414
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 412
    const/4 v4, 0x1

    return v4

    .line 414
    :catchall_30
    move-exception v4

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 415
    throw v4

    .line 401
    .end local v0    # "node":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    .end local v1    # "nanos":J
    .end local v3    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_35
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api offerLast(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 350
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_19

    .line 351
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;

    invoke-direct {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 352
    .local v0, "node":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 353
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 355
    :try_start_c
    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->linkLast(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Z

    move-result v2
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_14

    .line 357
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 355
    return v2

    .line 357
    :catchall_14
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 358
    throw v2

    .line 350
    .end local v0    # "node":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    .end local v1    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api offerLast(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 11
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

    .line 424
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_35

    .line 425
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;

    invoke-direct {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 426
    .local v0, "node":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 427
    .local v1, "nanos":J
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 428
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 430
    :goto_10
    :try_start_10
    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->linkLast(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Z

    move-result v4
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_30

    if-nez v4, :cond_2a

    .line 431
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gtz v4, :cond_22

    .line 432
    nop

    .line 437
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 432
    const/4 v4, 0x0

    return v4

    .line 433
    :cond_22
    :try_start_22
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4, v1, v2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v4
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_30

    move-wide v1, v4

    goto :goto_10

    .line 435
    :cond_2a
    nop

    .line 437
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 435
    const/4 v4, 0x1

    return v4

    .line 437
    :catchall_30
    move-exception v4

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 438
    throw v4

    .line 424
    .end local v0    # "node":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    .end local v1    # "nanos":J
    .end local v3    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_35
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api peek()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 695
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api peekFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 560
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 561
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 563
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    if-nez v1, :cond_b

    const/4 v1, 0x0

    goto :goto_f

    :cond_b
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_13

    .line 565
    :goto_f
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 563
    return-object v1

    .line 565
    :catchall_13
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 566
    throw v1
.end method

.method public whitelist test-api peekLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 570
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 571
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 573
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    if-nez v1, :cond_b

    const/4 v1, 0x0

    goto :goto_f

    :cond_b
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_13

    .line 575
    :goto_f
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 573
    return-object v1

    .line 575
    :catchall_13
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 576
    throw v1
.end method

.method public whitelist test-api poll()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 669
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
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

    .line 677
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/LinkedBlockingDeque;->pollFirst(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api pollFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 460
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 461
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 463
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 465
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 463
    return-object v1

    .line 465
    :catchall_d
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 466
    throw v1
.end method

.method public whitelist test-api pollFirst(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
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

    .line 507
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 508
    .local v0, "nanos":J
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 509
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 512
    :goto_9
    :try_start_9
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;

    move-result-object v3
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_29

    move-object v4, v3

    .local v4, "x":Ljava/lang/Object;, "TE;"
    if-nez v3, :cond_24

    .line 513
    const-wide/16 v5, 0x0

    cmp-long v3, v0, v5

    if-gtz v3, :cond_1c

    .line 514
    nop

    .line 519
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 514
    const/4 v3, 0x0

    return-object v3

    .line 515
    :cond_1c
    :try_start_1c
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v5
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_29

    move-wide v0, v5

    goto :goto_9

    .line 517
    :cond_24
    nop

    .line 519
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 517
    return-object v4

    .line 519
    .end local v4    # "x":Ljava/lang/Object;, "TE;"
    :catchall_29
    move-exception v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 520
    throw v3
.end method

.method public whitelist test-api pollLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 470
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 471
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 473
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 475
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 473
    return-object v1

    .line 475
    :catchall_d
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 476
    throw v1
.end method

.method public whitelist test-api pollLast(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
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

    .line 525
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 526
    .local v0, "nanos":J
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 527
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 530
    :goto_9
    :try_start_9
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;

    move-result-object v3
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_29

    move-object v4, v3

    .local v4, "x":Ljava/lang/Object;, "TE;"
    if-nez v3, :cond_24

    .line 531
    const-wide/16 v5, 0x0

    cmp-long v3, v0, v5

    if-gtz v3, :cond_1c

    .line 532
    nop

    .line 537
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 532
    const/4 v3, 0x0

    return-object v3

    .line 533
    :cond_1c
    :try_start_1c
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v5
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_29

    move-wide v0, v5

    goto :goto_9

    .line 535
    :cond_24
    nop

    .line 537
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 535
    return-object v4

    .line 537
    .end local v4    # "x":Ljava/lang/Object;, "TE;"
    :catchall_29
    move-exception v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 538
    throw v3
.end method

.method public whitelist test-api pop()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 769
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api push(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 762
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->addFirst(Ljava/lang/Object;)V

    .line 763
    return-void
.end method

.method public whitelist test-api put(Ljava/lang/Object;)V
    .registers 2
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

    .line 642
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->putLast(Ljava/lang/Object;)V

    .line 643
    return-void
.end method

.method public whitelist test-api putFirst(Ljava/lang/Object;)V
    .registers 5
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

    .line 366
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_22

    .line 367
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;

    invoke-direct {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 368
    .local v0, "node":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 369
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 371
    :goto_c
    :try_start_c
    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->linkFirst(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 372
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_1d

    goto :goto_c

    .line 374
    :cond_18
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 375
    nop

    .line 376
    return-void

    .line 374
    :catchall_1d
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 375
    throw v2

    .line 366
    .end local v0    # "node":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    .end local v1    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api putLast(Ljava/lang/Object;)V
    .registers 5
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

    .line 383
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_22

    .line 384
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;

    invoke-direct {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 385
    .local v0, "node":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 386
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 388
    :goto_c
    :try_start_c
    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->linkLast(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 389
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_1d

    goto :goto_c

    .line 391
    :cond_18
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 392
    nop

    .line 393
    return-void

    .line 391
    :catchall_1d
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 392
    throw v2

    .line 383
    .end local v0    # "node":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    .end local v1    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api remainingCapacity()I
    .registers 4

    .line 710
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 711
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 713
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->capacity:I

    iget v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_e

    sub-int/2addr v1, v2

    .line 715
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 713
    return v1

    .line 715
    :catchall_e
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 716
    throw v1
.end method

.method public whitelist test-api remove()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 665
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 789
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->removeFirstOccurrence(Ljava/lang/Object;)Z

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

    .line 1342
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque$$ExternalSyntheticLambda0;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->bulkRemove(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api removeFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 445
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    .line 446
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_7

    .line 447
    return-object v0

    .line 446
    :cond_7
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public whitelist test-api removeFirstOccurrence(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 580
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 581
    :cond_4
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 582
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 584
    :try_start_9
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .local v2, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :goto_b
    if-eqz v2, :cond_22

    .line 585
    iget-object v3, v2, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 586
    invoke-virtual {p0, v2}, Ljava/util/concurrent/LinkedBlockingDeque;->unlink(Ljava/util/concurrent/LinkedBlockingDeque$Node;)V
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_27

    .line 587
    nop

    .line 592
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 587
    const/4 v0, 0x1

    return v0

    .line 584
    :cond_1e
    :try_start_1e
    iget-object v3, v2, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_27

    move-object v2, v3

    goto :goto_b

    .line 590
    .end local v2    # "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :cond_22
    nop

    .line 592
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 590
    return v0

    .line 592
    :catchall_27
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 593
    throw v0
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

    .line 1334
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1335
    invoke-direct {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->bulkRemove(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api removeLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 454
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    .line 455
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_7

    .line 456
    return-object v0

    .line 455
    :cond_7
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public whitelist test-api removeLastOccurrence(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 597
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 598
    :cond_4
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 599
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 601
    :try_start_9
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .local v2, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :goto_b
    if-eqz v2, :cond_22

    .line 602
    iget-object v3, v2, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 603
    invoke-virtual {p0, v2}, Ljava/util/concurrent/LinkedBlockingDeque;->unlink(Ljava/util/concurrent/LinkedBlockingDeque$Node;)V
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_27

    .line 604
    nop

    .line 609
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 604
    const/4 v0, 0x1

    return v0

    .line 601
    :cond_1e
    :try_start_1e
    iget-object v3, v2, Ljava/util/concurrent/LinkedBlockingDeque$Node;->prev:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_27

    move-object v2, v3

    goto :goto_b

    .line 607
    .end local v2    # "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :cond_22
    nop

    .line 609
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 607
    return v0

    .line 609
    :catchall_27
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 610
    throw v0
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

    .line 1350
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1351
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque$$ExternalSyntheticLambda1;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->bulkRemove(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api size()I
    .registers 3

    .line 798
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 799
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 801
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_b

    .line 803
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 801
    return v1

    .line 803
    :catchall_b
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 804
    throw v1
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

    .line 1285
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;

    invoke-direct {v0, p0}, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;-><init>(Ljava/util/concurrent/LinkedBlockingDeque;)V

    return-object v0
.end method

.method blacklist succ(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Ljava/util/concurrent/LinkedBlockingDeque$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingDeque$Node<",
            "TE;>;)",
            "Ljava/util/concurrent/LinkedBlockingDeque$Node<",
            "TE;>;"
        }
    .end annotation

    .line 1006
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    move-object v1, v0

    .end local p1    # "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    .local v1, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    if-ne p1, v0, :cond_7

    .line 1007
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 1008
    :cond_7
    return-object v1
.end method

.method public whitelist test-api take()Ljava/lang/Object;
    .registers 2
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

    .line 673
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->takeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api takeFirst()Ljava/lang/Object;
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

    .line 480
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 481
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 484
    :goto_5
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .local v2, "x":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_12

    .line 485
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_17

    goto :goto_5

    .line 486
    :cond_12
    nop

    .line 488
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 486
    return-object v2

    .line 488
    .end local v2    # "x":Ljava/lang/Object;, "TE;"
    :catchall_17
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 489
    throw v1
.end method

.method public whitelist test-api takeLast()Ljava/lang/Object;
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

    .line 493
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 494
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 497
    :goto_5
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .local v2, "x":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_12

    .line 498
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_17

    goto :goto_5

    .line 499
    :cond_12
    nop

    .line 501
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 499
    return-object v2

    .line 501
    .end local v2    # "x":Ljava/lang/Object;, "TE;"
    :catchall_17
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 502
    throw v1
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 7

    .line 904
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 905
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 907
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 908
    .local v1, "a":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 909
    .local v2, "k":I
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .local v3, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :goto_c
    if-eqz v3, :cond_19

    .line 910
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "k":I
    .local v4, "k":I
    iget-object v5, v3, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    aput-object v5, v1, v2

    .line 909
    iget-object v2, v3, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1e

    move-object v3, v2

    move v2, v4

    goto :goto_c

    .line 911
    .end local v3    # "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    .end local v4    # "k":I
    .restart local v2    # "k":I
    :cond_19
    nop

    .line 913
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 911
    return-object v1

    .line 913
    .end local v1    # "a":[Ljava/lang/Object;
    .end local v2    # "k":I
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 914
    throw v1
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

    .line 954
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 955
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 957
    :try_start_5
    array-length v1, p1

    iget v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    if-ge v1, v2, :cond_1c

    .line 958
    nop

    .line 959
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    iget v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object p1, v1

    .line 961
    :cond_1c
    const/4 v1, 0x0

    .line 962
    .local v1, "k":I
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .local v2, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :goto_1f
    if-eqz v2, :cond_2c

    .line 963
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "k":I
    .local v3, "k":I
    iget-object v4, v2, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    aput-object v4, p1, v1

    .line 962
    iget-object v1, v2, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    move-object v2, v1

    move v1, v3

    goto :goto_1f

    .line 964
    .end local v2    # "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    .end local v3    # "k":I
    .restart local v1    # "k":I
    :cond_2c
    array-length v2, p1

    if-le v2, v1, :cond_32

    .line 965
    const/4 v2, 0x0

    aput-object v2, p1, v1
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_37

    .line 966
    :cond_32
    nop

    .line 968
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 966
    return-object p1

    .line 968
    .end local v1    # "k":I
    :catchall_37
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 969
    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 973
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-static {p0}, Ljava/util/concurrent/Helpers;->collectionToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o unlink(Ljava/util/concurrent/LinkedBlockingDeque$Node;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingDeque$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 294
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "x":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->prev:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 295
    .local v0, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget-object v1, p1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 296
    .local v1, "n":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    if-nez v0, :cond_a

    .line 297
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;

    goto :goto_22

    .line 298
    :cond_a
    if-nez v1, :cond_10

    .line 299
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;

    goto :goto_22

    .line 301
    :cond_10
    iput-object v1, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 302
    iput-object v0, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->prev:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 303
    const/4 v2, 0x0

    iput-object v2, p1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 306
    iget v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    .line 307
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 309
    :goto_22
    return-void
.end method
