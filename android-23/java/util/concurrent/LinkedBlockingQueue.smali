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
        Ljava/util/concurrent/LinkedBlockingQueue$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/util/concurrent/BlockingQueue",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5fcfb35fbf1a7e0aL


# instance fields
.field private final capacity:I

.field private final count:Ljava/util/concurrent/atomic/AtomicInteger;

.field transient head:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field private transient last:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private final notFull:Ljava/util/concurrent/locks/Condition;

.field private final putLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final takeLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 218
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    const v0, 0x7fffffff

    #@3
    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    #@6
    .line 217
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    #@0
    .prologue
    .line 228
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    #@3
    .line 108
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@8
    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    #@a
    .line 123
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@c
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@f
    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@11
    .line 126
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@13
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    #@19
    .line 129
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@1b
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@1e
    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@20
    .line 132
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@22
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    #@25
    move-result-object v0

    #@26
    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    #@28
    .line 229
    if-gtz p1, :cond_0

    #@2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2c
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@2f
    throw v0

    #@30
    .line 230
    :cond_0
    iput p1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    #@32
    .line 231
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@34
    const/4 v1, 0x0

    #@35
    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue$Node;-><init>(Ljava/lang/Object;)V

    #@38
    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@3a
    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->last:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@3c
    .line 228
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
    .line 245
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const v4, 0x7fffffff

    #@3
    invoke-direct {p0, v4}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    #@6
    .line 246
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@8
    .line 247
    .local v3, "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@b
    .line 249
    const/4 v2, 0x0

    #@c
    .line 250
    .local v2, "n":I
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_2

    #@16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    .line 251
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    #@1c
    .line 252
    new-instance v4, Ljava/lang/NullPointerException;

    #@1e
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@21
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 259
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    #@23
    .line 260
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@26
    .line 259
    throw v4

    #@27
    .line 253
    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    .restart local v1    # "e$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    #@29
    if-ne v2, v4, :cond_1

    #@2b
    .line 254
    new-instance v4, Ljava/lang/IllegalStateException;

    #@2d
    const-string/jumbo v5, "Queue full"

    #@30
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@33
    throw v4

    #@34
    .line 255
    :cond_1
    new-instance v4, Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@36
    invoke-direct {v4, v0}, Ljava/util/concurrent/LinkedBlockingQueue$Node;-><init>(Ljava/lang/Object;)V

    #@39
    invoke-direct {p0, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->enqueue(Ljava/util/concurrent/LinkedBlockingQueue$Node;)V

    #@3c
    .line 256
    add-int/lit8 v2, v2, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 258
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_2
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    #@41
    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    .line 260
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@47
    .line 244
    return-void
.end method

.method private dequeue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 180
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@2
    .line 181
    .local v1, "h":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    iget-object v0, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@4
    .line 182
    .local v0, "first":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    iput-object v1, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@6
    .line 183
    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@8
    .line 184
    iget-object v2, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    #@a
    .line 185
    .local v2, "x":Ljava/lang/Object;, "TE;"
    const/4 v3, 0x0

    #@b
    iput-object v3, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    #@d
    .line 186
    return-object v2
.end method

.method private enqueue(Ljava/util/concurrent/LinkedBlockingQueue$Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue$Node",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 169
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, "node":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->last:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@2
    iput-object p1, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@4
    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->last:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@6
    .line 166
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
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 862
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@4
    .line 864
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    #@6
    const/4 v2, 0x0

    #@7
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@a
    .line 865
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@c
    invoke-direct {v1, v3}, Ljava/util/concurrent/LinkedBlockingQueue$Node;-><init>(Ljava/lang/Object;)V

    #@f
    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@11
    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->last:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@13
    .line 870
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    .line 871
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    #@19
    .line 860
    return-void

    #@1a
    .line 873
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    #@1d
    goto :goto_0
.end method

.method private signalNotEmpty()V
    .locals 2

    #@0
    .prologue
    .line 139
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 140
    .local v0, "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 142
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    #@7
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 144
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@d
    .line 138
    return-void

    #@e
    .line 143
    :catchall_0
    move-exception v1

    #@f
    .line 144
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@12
    .line 143
    throw v1
.end method

.method private signalNotFull()V
    .locals 2

    #@0
    .prologue
    .line 152
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 153
    .local v0, "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 155
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    #@7
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 157
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@d
    .line 151
    return-void

    #@e
    .line 156
    :catchall_0
    move-exception v1

    #@f
    .line 157
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@12
    .line 156
    throw v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 840
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    #@3
    .line 843
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@6
    .line 846
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@8
    iget-object v0, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@a
    .local v0, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :goto_0
    if-eqz v0, :cond_0

    #@c
    .line 847
    iget-object v1, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    #@e
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@11
    .line 846
    iget-object v0, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@13
    goto :goto_0

    #@14
    .line 850
    :cond_0
    const/4 v1, 0x0

    #@15
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 852
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    #@1b
    .line 838
    return-void

    #@1c
    .line 851
    .end local v0    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :catchall_0
    move-exception v1

    #@1d
    .line 852
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    #@20
    .line 851
    throw v1
.end method


# virtual methods
.method public clear()V
    .locals 4

    #@0
    .prologue
    .line 662
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    #@3
    .line 664
    :try_start_0
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@5
    .local v0, "h":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :goto_0
    iget-object v1, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@7
    .local v1, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    if-eqz v1, :cond_0

    #@9
    .line 665
    iput-object v0, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@b
    .line 666
    const/4 v2, 0x0

    #@c
    iput-object v2, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    #@e
    .line 664
    move-object v0, v1

    #@f
    goto :goto_0

    #@10
    .line 668
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->last:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@12
    iput-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@14
    .line 670
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    #@16
    const/4 v3, 0x0

    #@17
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    #@1a
    move-result v2

    #@1b
    iget v3, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    #@1d
    if-ne v2, v3, :cond_1

    #@1f
    .line 671
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    #@21
    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 673
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    #@27
    .line 661
    return-void

    #@28
    .line 672
    .end local v0    # "h":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .end local v1    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :catchall_0
    move-exception v2

    #@29
    .line 673
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    #@2c
    .line 672
    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    const/4 v2, 0x0

    #@1
    .line 541
    if-nez p1, :cond_0

    #@3
    return v2

    #@4
    .line 542
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    #@7
    .line 544
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@9
    iget-object v0, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@b
    .local v0, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :goto_0
    if-eqz v0, :cond_2

    #@d
    .line 545
    iget-object v1, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    #@f
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 546
    const/4 v1, 0x1

    #@16
    .line 549
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    #@19
    .line 546
    return v1

    #@1a
    .line 544
    :cond_1
    :try_start_1
    iget-object v0, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    goto :goto_0

    #@1d
    .line 549
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    #@20
    .line 547
    return v2

    #@21
    .line 548
    .end local v0    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :catchall_0
    move-exception v1

    #@22
    .line 549
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    #@25
    .line 548
    throw v1
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 684
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    const v0, 0x7fffffff

    #@3
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 9
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
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    const/4 v6, 0x0

    #@1
    .line 694
    if-nez p1, :cond_0

    #@3
    .line 695
    new-instance v6, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v6

    #@9
    .line 696
    :cond_0
    if-ne p1, p0, :cond_1

    #@b
    .line 697
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@d
    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@10
    throw v6

    #@11
    .line 698
    :cond_1
    if-gtz p2, :cond_2

    #@13
    .line 699
    return v6

    #@14
    .line 700
    :cond_2
    const/4 v4, 0x0

    #@15
    .line 701
    .local v4, "signalNotFull":Z
    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@17
    .line 702
    .local v5, "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@1a
    .line 704
    :try_start_0
    iget-object v6, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    #@1c
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@1f
    move-result v6

    #@20
    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    #@23
    move-result v2

    #@24
    .line 706
    .local v2, "n":I
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@26
    .line 707
    .local v0, "h":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    const/4 v1, 0x0

    #@27
    .line 709
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    #@29
    .line 710
    :try_start_1
    iget-object v3, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@2b
    .line 711
    .local v3, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    iget-object v6, v3, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    #@2d
    invoke-interface {p1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@30
    .line 712
    const/4 v6, 0x0

    #@31
    iput-object v6, v3, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    #@33
    .line 713
    iput-object v0, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    .line 714
    move-object v0, v3

    #@36
    .line 715
    add-int/lit8 v1, v1, 0x1

    #@38
    goto :goto_0

    #@39
    .line 720
    .end local v3    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :cond_3
    if-lez v1, :cond_4

    #@3b
    .line 722
    :try_start_2
    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@3d
    .line 723
    iget-object v6, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    #@3f
    neg-int v7, v1

    #@40
    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    #@43
    move-result v6

    #@44
    iget v7, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@46
    if-ne v6, v7, :cond_6

    #@48
    const/4 v4, 0x1

    #@49
    .line 727
    :cond_4
    :goto_1
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@4c
    .line 728
    if-eqz v4, :cond_5

    #@4e
    .line 729
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->signalNotFull()V

    #@51
    .line 717
    :cond_5
    return v2

    #@52
    .line 723
    :cond_6
    const/4 v4, 0x0

    #@53
    goto :goto_1

    #@54
    .line 718
    :catchall_0
    move-exception v6

    #@55
    .line 720
    if-lez v1, :cond_7

    #@57
    .line 722
    :try_start_3
    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@59
    .line 723
    iget-object v7, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    #@5b
    neg-int v8, v1

    #@5c
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    #@5f
    move-result v7

    #@60
    iget v8, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    #@62
    if-ne v7, v8, :cond_9

    #@64
    const/4 v4, 0x1

    #@65
    .line 718
    :cond_7
    :goto_2
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@66
    .line 726
    .end local v0    # "h":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_1
    move-exception v6

    #@67
    .line 727
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@6a
    .line 728
    if-eqz v4, :cond_8

    #@6c
    .line 729
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->signalNotFull()V

    #@6f
    .line 726
    :cond_8
    throw v6

    #@70
    .line 723
    .restart local v0    # "h":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_9
    const/4 v4, 0x0

    #@71
    goto :goto_2
.end method

.method fullyLock()V
    .locals 1

    #@0
    .prologue
    .line 193
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 194
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@a
    .line 192
    return-void
.end method

.method fullyUnlock()V
    .locals 1

    #@0
    .prologue
    .line 201
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@5
    .line 202
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@a
    .line 200
    return-void
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
    .line 747
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;

    #@2
    invoke-direct {v0, p0}, Ljava/util/concurrent/LinkedBlockingQueue$Itr;-><init>(Ljava/util/concurrent/LinkedBlockingQueue;)V

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
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v4, 0x0

    #@1
    .line 379
    if-nez p1, :cond_0

    #@3
    new-instance v4, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v4

    #@9
    .line 380
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    #@b
    .line 381
    .local v1, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@e
    move-result v5

    #@f
    iget v6, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    #@11
    if-ne v5, v6, :cond_1

    #@13
    .line 382
    return v4

    #@14
    .line 383
    :cond_1
    const/4 v0, -0x1

    #@15
    .line 384
    .local v0, "c":I
    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@17
    invoke-direct {v2, p1}, Ljava/util/concurrent/LinkedBlockingQueue$Node;-><init>(Ljava/lang/Object;)V

    #@1a
    .line 385
    .local v2, "node":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@1c
    .line 386
    .local v3, "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@1f
    .line 388
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@22
    move-result v5

    #@23
    iget v6, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    #@25
    if-ge v5, v6, :cond_2

    #@27
    .line 389
    invoke-direct {p0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->enqueue(Ljava/util/concurrent/LinkedBlockingQueue$Node;)V

    #@2a
    .line 390
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    #@2d
    move-result v0

    #@2e
    .line 391
    add-int/lit8 v5, v0, 0x1

    #@30
    iget v6, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    #@32
    if-ge v5, v6, :cond_2

    #@34
    .line 392
    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    #@36
    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    .line 395
    :cond_2
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@3c
    .line 397
    if-nez v0, :cond_3

    #@3e
    .line 398
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->signalNotEmpty()V

    #@41
    .line 399
    :cond_3
    if-ltz v0, :cond_4

    #@43
    const/4 v4, 0x1

    #@44
    :cond_4
    return v4

    #@45
    .line 394
    :catchall_0
    move-exception v4

    #@46
    .line 395
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@49
    .line 394
    throw v4
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 10
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
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v8, 0x0

    #@1
    .line 343
    if-nez p1, :cond_0

    #@3
    new-instance v5, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v5

    #@9
    .line 344
    :cond_0
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@c
    move-result-wide v2

    #@d
    .line 345
    .local v2, "nanos":J
    const/4 v0, -0x1

    #@e
    .line 346
    .local v0, "c":I
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@10
    .line 347
    .local v4, "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    #@12
    .line 348
    .local v1, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    #@15
    .line 350
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@18
    move-result v5

    #@19
    iget v6, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    if-ne v5, v6, :cond_2

    #@1d
    .line 351
    const-wide/16 v6, 0x0

    #@1f
    cmp-long v5, v2, v6

    #@21
    if-gtz v5, :cond_1

    #@23
    .line 360
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@26
    .line 352
    return v8

    #@27
    .line 353
    :cond_1
    :try_start_1
    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    #@29
    invoke-interface {v5, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    #@2c
    move-result-wide v2

    #@2d
    goto :goto_0

    #@2e
    .line 355
    :cond_2
    new-instance v5, Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@30
    invoke-direct {v5, p1}, Ljava/util/concurrent/LinkedBlockingQueue$Node;-><init>(Ljava/lang/Object;)V

    #@33
    invoke-direct {p0, v5}, Ljava/util/concurrent/LinkedBlockingQueue;->enqueue(Ljava/util/concurrent/LinkedBlockingQueue$Node;)V

    #@36
    .line 356
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    #@39
    move-result v0

    #@3a
    .line 357
    add-int/lit8 v5, v0, 0x1

    #@3c
    iget v6, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    #@3e
    if-ge v5, v6, :cond_3

    #@40
    .line 358
    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    #@42
    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    .line 360
    :cond_3
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@48
    .line 362
    if-nez v0, :cond_4

    #@4a
    .line 363
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->signalNotEmpty()V

    #@4d
    .line 364
    :cond_4
    const/4 v5, 0x1

    #@4e
    return v5

    #@4f
    .line 359
    :catchall_0
    move-exception v5

    #@50
    .line 360
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@53
    .line 359
    throw v5
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
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 473
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    #@3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_0

    #@9
    .line 474
    return-object v3

    #@a
    .line 475
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@c
    .line 476
    .local v1, "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@f
    .line 478
    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@11
    iget-object v0, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 479
    .local v0, "first":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    if-nez v0, :cond_1

    #@15
    .line 484
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@18
    .line 480
    return-object v3

    #@19
    .line 482
    :cond_1
    :try_start_1
    iget-object v2, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    .line 484
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1e
    .line 482
    return-object v2

    #@1f
    .line 483
    .end local v0    # "first":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :catchall_0
    move-exception v2

    #@20
    .line 484
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@23
    .line 483
    throw v2
.end method

.method public poll()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 450
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    .line 451
    .local v1, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v4

    #@6
    if-nez v4, :cond_0

    #@8
    .line 452
    const/4 v4, 0x0

    #@9
    return-object v4

    #@a
    .line 453
    :cond_0
    const/4 v3, 0x0

    #@b
    .line 454
    .local v3, "x":Ljava/lang/Object;, "TE;"
    const/4 v0, -0x1

    #@c
    .line 455
    .local v0, "c":I
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@e
    .line 456
    .local v2, "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@11
    .line 458
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@14
    move-result v4

    #@15
    if-lez v4, :cond_1

    #@17
    .line 459
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->dequeue()Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    .line 460
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    #@1e
    move-result v0

    #@1f
    .line 461
    const/4 v4, 0x1

    #@20
    if-le v0, v4, :cond_1

    #@22
    .line 462
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    #@24
    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 465
    .end local v3    # "x":Ljava/lang/Object;, "TE;"
    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2a
    .line 467
    iget v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    #@2c
    if-ne v0, v4, :cond_2

    #@2e
    .line 468
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->signalNotFull()V

    #@31
    .line 469
    :cond_2
    return-object v3

    #@32
    .line 464
    :catchall_0
    move-exception v4

    #@33
    .line 465
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@36
    .line 464
    throw v4
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 9
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
    .line 425
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    const/4 v5, 0x0

    #@1
    .line 426
    .local v5, "x":Ljava/lang/Object;, "TE;"
    const/4 v0, -0x1

    #@2
    .line 427
    .local v0, "c":I
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@5
    move-result-wide v2

    #@6
    .line 428
    .local v2, "nanos":J
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    #@8
    .line 429
    .local v1, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@a
    .line 430
    .local v4, "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    #@d
    .line 432
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result v6

    #@11
    if-nez v6, :cond_1

    #@13
    .line 433
    const-wide/16 v6, 0x0

    #@15
    cmp-long v6, v2, v6

    #@17
    if-gtz v6, :cond_0

    #@19
    .line 434
    const/4 v6, 0x0

    #@1a
    .line 442
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1d
    .line 434
    return-object v6

    #@1e
    .line 435
    :cond_0
    :try_start_1
    iget-object v6, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    #@20
    invoke-interface {v6, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    #@23
    move-result-wide v2

    #@24
    goto :goto_0

    #@25
    .line 437
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->dequeue()Ljava/lang/Object;

    #@28
    move-result-object v5

    #@29
    .line 438
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    #@2c
    move-result v0

    #@2d
    .line 439
    const/4 v6, 0x1

    #@2e
    if-le v0, v6, :cond_2

    #@30
    .line 440
    iget-object v6, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    #@32
    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    .line 442
    :cond_2
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@38
    .line 444
    iget v6, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    #@3a
    if-ne v0, v6, :cond_3

    #@3c
    .line 445
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->signalNotFull()V

    #@3f
    .line 446
    :cond_3
    return-object v5

    #@40
    .line 441
    .end local v5    # "x":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v6

    #@41
    .line 442
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@44
    .line 441
    throw v6
.end method

.method public put(Ljava/lang/Object;)V
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
    .line 300
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    #@2
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v4

    #@8
    .line 303
    :cond_0
    const/4 v0, -0x1

    #@9
    .line 304
    .local v0, "c":I
    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@b
    invoke-direct {v2, p1}, Ljava/util/concurrent/LinkedBlockingQueue$Node;-><init>(Ljava/lang/Object;)V

    #@e
    .line 305
    .local v2, "node":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@10
    .line 306
    .local v3, "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    #@12
    .line 307
    .local v1, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    #@15
    .line 317
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@18
    move-result v4

    #@19
    iget v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    #@1b
    if-ne v4, v5, :cond_1

    #@1d
    .line 318
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    #@1f
    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    goto :goto_0

    #@23
    .line 324
    :catchall_0
    move-exception v4

    #@24
    .line 325
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@27
    .line 324
    throw v4

    #@28
    .line 320
    :cond_1
    :try_start_1
    invoke-direct {p0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->enqueue(Ljava/util/concurrent/LinkedBlockingQueue$Node;)V

    #@2b
    .line 321
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    #@2e
    move-result v0

    #@2f
    .line 322
    add-int/lit8 v4, v0, 0x1

    #@31
    iget v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    #@33
    if-ge v4, v5, :cond_2

    #@35
    .line 323
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    #@37
    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    .line 325
    :cond_2
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@3d
    .line 327
    if-nez v0, :cond_3

    #@3f
    .line 328
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->signalNotEmpty()V

    #@42
    .line 299
    :cond_3
    return-void
.end method

.method public remainingCapacity()I
    .locals 2

    #@0
    .prologue
    .line 289
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    #@2
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    #@4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@7
    move-result v1

    #@8
    sub-int/2addr v0, v1

    #@9
    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 515
    if-nez p1, :cond_0

    #@3
    return v3

    #@4
    .line 516
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    #@7
    .line 518
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@9
    .local v1, "trail":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    iget-object v0, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@b
    .local v0, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :goto_0
    if-eqz v0, :cond_2

    #@d
    .line 521
    iget-object v2, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    #@f
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 522
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->unlink(Ljava/util/concurrent/LinkedBlockingQueue$Node;Ljava/util/concurrent/LinkedBlockingQueue$Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 523
    const/4 v2, 0x1

    #@19
    .line 528
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    #@1c
    .line 523
    return v2

    #@1d
    .line 520
    :cond_1
    move-object v1, v0

    #@1e
    :try_start_1
    iget-object v0, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    goto :goto_0

    #@21
    .line 528
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    #@24
    .line 526
    return v3

    #@25
    .line 527
    .end local v0    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .end local v1    # "trail":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :catchall_0
    move-exception v2

    #@26
    .line 528
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    #@29
    .line 527
    throw v2
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 272
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public take()Ljava/lang/Object;
    .locals 5
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
    .line 404
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    const/4 v0, -0x1

    #@1
    .line 405
    .local v0, "c":I
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    #@3
    .line 406
    .local v1, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@5
    .line 407
    .local v2, "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    #@8
    .line 409
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@b
    move-result v4

    #@c
    if-nez v4, :cond_0

    #@e
    .line 410
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    #@10
    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    goto :goto_0

    #@14
    .line 416
    :catchall_0
    move-exception v4

    #@15
    .line 417
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@18
    .line 416
    throw v4

    #@19
    .line 412
    :cond_0
    :try_start_1
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->dequeue()Ljava/lang/Object;

    #@1c
    move-result-object v3

    #@1d
    .line 413
    .local v3, "x":Ljava/lang/Object;, "TE;"
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    #@20
    move-result v0

    #@21
    .line 414
    const/4 v4, 0x1

    #@22
    if-le v0, v4, :cond_1

    #@24
    .line 415
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    #@26
    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    .line 417
    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2c
    .line 419
    iget v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    #@2e
    if-ne v0, v4, :cond_2

    #@30
    .line 420
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->signalNotFull()V

    #@33
    .line 421
    :cond_2
    return-object v3
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 6

    #@0
    .prologue
    .line 567
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    #@3
    .line 569
    :try_start_0
    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    #@5
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@8
    move-result v4

    #@9
    .line 570
    .local v4, "size":I
    new-array v0, v4, [Ljava/lang/Object;

    #@b
    .line 571
    .local v0, "a":[Ljava/lang/Object;
    const/4 v1, 0x0

    #@c
    .line 572
    .local v1, "k":I
    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@e
    iget-object v3, v5, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@10
    .local v3, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    move v2, v1

    #@11
    .end local v1    # "k":I
    .local v2, "k":I
    :goto_0
    if-eqz v3, :cond_0

    #@13
    .line 573
    add-int/lit8 v1, v2, 0x1

    #@15
    .end local v2    # "k":I
    .restart local v1    # "k":I
    iget-object v5, v3, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    #@17
    aput-object v5, v0, v2

    #@19
    .line 572
    iget-object v3, v3, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move v2, v1

    #@1c
    .end local v1    # "k":I
    .restart local v2    # "k":I
    goto :goto_0

    #@1d
    .line 576
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    #@20
    .line 574
    return-object v0

    #@21
    .line 575
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v2    # "k":I
    .end local v3    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .end local v4    # "size":I
    :catchall_0
    move-exception v5

    #@22
    .line 576
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    #@25
    .line 575
    throw v5
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 617
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    #@3
    .line 619
    :try_start_0
    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    #@5
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@8
    move-result v4

    #@9
    .line 620
    .local v4, "size":I
    array-length v5, p1

    #@a
    if-ge v5, v4, :cond_0

    #@c
    .line 622
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v5

    #@10
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@13
    move-result-object v5

    #@14
    .line 621
    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@17
    move-result-object v5

    #@18
    move-object v0, v5

    #@19
    check-cast v0, [Ljava/lang/Object;

    #@1b
    move-object p1, v0

    #@1c
    .line 624
    :cond_0
    const/4 v1, 0x0

    #@1d
    .line 625
    .local v1, "k":I
    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@1f
    iget-object v3, v5, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@21
    .local v3, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    move v2, v1

    #@22
    .end local v1    # "k":I
    .local v2, "k":I
    :goto_0
    if-eqz v3, :cond_1

    #@24
    .line 626
    add-int/lit8 v1, v2, 0x1

    #@26
    .end local v2    # "k":I
    .restart local v1    # "k":I
    iget-object v5, v3, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    #@28
    aput-object v5, p1, v2

    #@2a
    .line 625
    iget-object v3, v3, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@2c
    move v2, v1

    #@2d
    .end local v1    # "k":I
    .restart local v2    # "k":I
    goto :goto_0

    #@2e
    .line 627
    :cond_1
    array-length v5, p1

    #@2f
    if-le v5, v2, :cond_2

    #@31
    .line 628
    const/4 v5, 0x0

    #@32
    aput-object v5, p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    .line 631
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    #@37
    .line 629
    return-object p1

    #@38
    .line 630
    .end local v2    # "k":I
    .end local v3    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .end local v4    # "size":I
    :catchall_0
    move-exception v5

    #@39
    .line 631
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    #@3c
    .line 630
    throw v5
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 636
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    #@3
    .line 638
    :try_start_0
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@5
    iget-object v1, v3, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@7
    .line 639
    .local v1, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    if-nez v1, :cond_0

    #@9
    .line 640
    const-string/jumbo v3, "[]"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 653
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    #@f
    .line 640
    return-object v3

    #@10
    .line 642
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    .line 643
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1a
    .line 645
    :goto_0
    iget-object v0, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    #@1c
    .line 646
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-ne v0, p0, :cond_1

    #@1e
    const-string/jumbo v0, "(this Collection)"

    #@21
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    .line 647
    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@26
    .line 648
    if-nez v1, :cond_2

    #@28
    .line 649
    const/16 v3, 0x5d

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    move-result-object v3

    #@32
    .line 653
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    #@35
    .line 649
    return-object v3

    #@36
    .line 650
    :cond_2
    const/16 v3, 0x2c

    #@38
    :try_start_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    const/16 v4, 0x20

    #@3e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@41
    goto :goto_0

    #@42
    .line 652
    .end local v1    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v3

    #@43
    .line 653
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    #@46
    .line 652
    throw v3
.end method

.method unlink(Ljava/util/concurrent/LinkedBlockingQueue$Node;Ljava/util/concurrent/LinkedBlockingQueue$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue$Node",
            "<TE;>;",
            "Ljava/util/concurrent/LinkedBlockingQueue$Node",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 495
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .local p2, "trail":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    const/4 v0, 0x0

    #@1
    iput-object v0, p1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    #@3
    .line 496
    iget-object v0, p1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@5
    iput-object v0, p2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@7
    .line 497
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->last:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@9
    if-ne v0, p1, :cond_0

    #@b
    .line 498
    iput-object p2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->last:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@d
    .line 499
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    #@f
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    #@12
    move-result v0

    #@13
    iget v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    #@15
    if-ne v0, v1, :cond_1

    #@17
    .line 500
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    #@19
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    #@1c
    .line 491
    :cond_1
    return-void
.end method
