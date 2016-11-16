.class public Ljava/util/concurrent/LinkedBlockingDeque;
.super Ljava/util/AbstractQueue;
.source "LinkedBlockingDeque.java"

# interfaces
.implements Ljava/util/concurrent/BlockingDeque;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;,
        Ljava/util/concurrent/LinkedBlockingDeque$DescendingItr;,
        Ljava/util/concurrent/LinkedBlockingDeque$Itr;,
        Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;,
        Ljava/util/concurrent/LinkedBlockingDeque$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/util/concurrent/BlockingDeque",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x56223931da801daL


# instance fields
.field private final capacity:I

.field private transient count:I

.field transient first:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field transient last:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private final notFull:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 142
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    const v0, 0x7fffffff

    #@3
    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    #@6
    .line 141
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    #@0
    .prologue
    .line 151
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    #@3
    .line 129
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@8
    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@a
    .line 132
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@c
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    #@12
    .line 135
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@14
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    #@17
    move-result-object v0

    #@18
    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    #@1a
    .line 152
    if-gtz p1, :cond_0

    #@1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1e
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@21
    throw v0

    #@22
    .line 153
    :cond_0
    iput p1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->capacity:I

    #@24
    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 167
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const v3, 0x7fffffff

    #@3
    invoke-direct {p0, v3}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    #@6
    .line 168
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@8
    .line 169
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@b
    .line 171
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "e$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_2

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    .line 172
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_1

    #@1b
    .line 173
    new-instance v3, Ljava/lang/NullPointerException;

    #@1d
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@20
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 177
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@22
    .line 178
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@25
    .line 177
    throw v3

    #@26
    .line 174
    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    .restart local v1    # "e$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@28
    invoke-direct {v3, v0}, Ljava/util/concurrent/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    #@2b
    invoke-direct {p0, v3}, Ljava/util/concurrent/LinkedBlockingDeque;->linkLast(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Z

    #@2e
    move-result v3

    #@2f
    if-nez v3, :cond_0

    #@31
    .line 175
    new-instance v3, Ljava/lang/IllegalStateException;

    #@33
    const-string/jumbo v4, "Deque full"

    #@36
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@39
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    .line 178
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@3d
    .line 166
    return-void
.end method

.method private linkFirst(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingDeque$Node",
            "<TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 190
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "node":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    #@2
    iget v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->capacity:I

    #@4
    if-lt v1, v2, :cond_0

    #@6
    .line 191
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 192
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@a
    .line 193
    .local v0, "f":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iput-object v0, p1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@c
    .line 194
    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@e
    .line 195
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@10
    if-nez v1, :cond_1

    #@12
    .line 196
    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@14
    .line 199
    :goto_0
    iget v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    #@16
    add-int/lit8 v1, v1, 0x1

    #@18
    iput v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    #@1a
    .line 200
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    #@1c
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    #@1f
    .line 201
    const/4 v1, 0x1

    #@20
    return v1

    #@21
    .line 198
    :cond_1
    iput-object p1, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->prev:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@23
    goto :goto_0
.end method

.method private linkLast(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingDeque$Node",
            "<TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 209
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "node":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    #@2
    iget v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->capacity:I

    #@4
    if-lt v1, v2, :cond_0

    #@6
    .line 210
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 211
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@a
    .line 212
    .local v0, "l":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iput-object v0, p1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->prev:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@c
    .line 213
    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@e
    .line 214
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@10
    if-nez v1, :cond_1

    #@12
    .line 215
    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@14
    .line 218
    :goto_0
    iget v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    #@16
    add-int/lit8 v1, v1, 0x1

    #@18
    iput v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    #@1a
    .line 219
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    #@1c
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    #@1f
    .line 220
    const/4 v1, 0x1

    #@20
    return v1

    #@21
    .line 217
    :cond_1
    iput-object p1, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@23
    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    const/4 v2, 0x0

    #@1
    .line 1272
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@4
    .line 1273
    const/4 v1, 0x0

    #@5
    iput v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    #@7
    .line 1274
    iput-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@9
    .line 1275
    iput-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@b
    .line 1279
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    .line 1280
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    #@11
    .line 1271
    return-void

    #@12
    .line 1282
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    #@15
    goto :goto_0
.end method

.method private unlinkFirst()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 228
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@3
    .line 229
    .local v0, "f":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    if-nez v0, :cond_0

    #@5
    .line 230
    return-object v3

    #@6
    .line 231
    :cond_0
    iget-object v2, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@8
    .line 232
    .local v2, "n":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget-object v1, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    #@a
    .line 233
    .local v1, "item":Ljava/lang/Object;, "TE;"
    iput-object v3, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    #@c
    .line 234
    iput-object v0, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@e
    .line 235
    iput-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@10
    .line 236
    if-nez v2, :cond_1

    #@12
    .line 237
    iput-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@14
    .line 240
    :goto_0
    iget v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    #@16
    add-int/lit8 v3, v3, -0x1

    #@18
    iput v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    #@1a
    .line 241
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    #@1c
    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V

    #@1f
    .line 242
    return-object v1

    #@20
    .line 239
    :cond_1
    iput-object v3, v2, Ljava/util/concurrent/LinkedBlockingDeque$Node;->prev:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@22
    goto :goto_0
.end method

.method private unlinkLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 250
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@3
    .line 251
    .local v1, "l":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    if-nez v1, :cond_0

    #@5
    .line 252
    return-object v3

    #@6
    .line 253
    :cond_0
    iget-object v2, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->prev:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@8
    .line 254
    .local v2, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    #@a
    .line 255
    .local v0, "item":Ljava/lang/Object;, "TE;"
    iput-object v3, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    #@c
    .line 256
    iput-object v1, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->prev:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@e
    .line 257
    iput-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@10
    .line 258
    if-nez v2, :cond_1

    #@12
    .line 259
    iput-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@14
    .line 262
    :goto_0
    iget v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    #@16
    add-int/lit8 v3, v3, -0x1

    #@18
    iput v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    #@1a
    .line 263
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    #@1c
    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V

    #@1f
    .line 264
    return-object v0

    #@20
    .line 261
    :cond_1
    iput-object v3, v2, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@22
    goto :goto_0
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
    .line 1248
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 1249
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 1252
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@8
    .line 1254
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@a
    .local v1, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_0

    #@c
    .line 1255
    iget-object v2, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    #@e
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@11
    .line 1254
    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@13
    goto :goto_0

    #@14
    .line 1257
    :cond_0
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 1259
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1b
    .line 1247
    return-void

    #@1c
    .line 1258
    .end local v1    # "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v2

    #@1d
    .line 1259
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@20
    .line 1258
    throw v2
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
    .line 604
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->addLast(Ljava/lang/Object;)V

    #@3
    .line 605
    const/4 v0, 0x1

    #@4
    return v0
.end method

.method public addFirst(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 296
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offerFirst(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 297
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "Deque full"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 295
    :cond_0
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 305
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 306
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "Deque full"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 304
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 4

    #@0
    .prologue
    .line 941
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 942
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 944
    :try_start_0
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@7
    .local v0, "f":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :goto_0
    if-eqz v0, :cond_0

    #@9
    .line 945
    const/4 v3, 0x0

    #@a
    iput-object v3, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    #@c
    .line 946
    iget-object v2, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@e
    .line 947
    .local v2, "n":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    const/4 v3, 0x0

    #@f
    iput-object v3, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->prev:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@11
    .line 948
    const/4 v3, 0x0

    #@12
    iput-object v3, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@14
    .line 949
    move-object v0, v2

    #@15
    goto :goto_0

    #@16
    .line 951
    .end local v2    # "n":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :cond_0
    const/4 v3, 0x0

    #@17
    iput-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@19
    const/4 v3, 0x0

    #@1a
    iput-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@1c
    .line 952
    const/4 v3, 0x0

    #@1d
    iput v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    #@1f
    .line 953
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    #@21
    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 955
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@27
    .line 940
    return-void

    #@28
    .line 954
    .end local v0    # "f":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v3

    #@29
    .line 955
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2c
    .line 954
    throw v3
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 795
    if-nez p1, :cond_0

    #@3
    return v3

    #@4
    .line 796
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@6
    .line 797
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@9
    .line 799
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@b
    .local v1, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_2

    #@d
    .line 800
    iget-object v2, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    #@f
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 801
    const/4 v2, 0x1

    #@16
    .line 804
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@19
    .line 801
    return v2

    #@1a
    .line 799
    :cond_1
    :try_start_1
    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    goto :goto_0

    #@1d
    .line 804
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@20
    .line 802
    return v3

    #@21
    .line 803
    .end local v1    # "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v2

    #@22
    .line 804
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@25
    .line 803
    throw v2
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
    .line 983
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque$DescendingItr;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/LinkedBlockingDeque$DescendingItr;-><init>(Ljava/util/concurrent/LinkedBlockingDeque;Ljava/util/concurrent/LinkedBlockingDeque$DescendingItr;)V

    #@6
    return-object v0
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
    .line 704
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    const v0, 0x7fffffff

    #@3
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->drainTo(Ljava/util/Collection;I)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 4
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
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    const/4 v3, 0x0

    #@1
    .line 714
    if-nez p1, :cond_0

    #@3
    .line 715
    new-instance v3, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v3

    #@9
    .line 716
    :cond_0
    if-ne p1, p0, :cond_1

    #@b
    .line 717
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@d
    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@10
    throw v3

    #@11
    .line 718
    :cond_1
    if-gtz p2, :cond_2

    #@13
    .line 719
    return v3

    #@14
    .line 720
    :cond_2
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@16
    .line 721
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@19
    .line 723
    :try_start_0
    iget v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    #@1b
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    #@1e
    move-result v2

    #@1f
    .line 724
    .local v2, "n":I
    const/4 v0, 0x0

    #@20
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    #@22
    .line 725
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@24
    iget-object v3, v3, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    #@26
    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@29
    .line 726
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 724
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 730
    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@32
    .line 728
    return v2

    #@33
    .line 729
    .end local v0    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    #@34
    .line 730
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@37
    .line 729
    throw v3
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
    .line 669
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->getFirst()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 523
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->peekFirst()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 524
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    #@6
    new-instance v1, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v1

    #@c
    .line 525
    :cond_0
    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 532
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->peekLast()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 533
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    #@6
    new-instance v1, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v1

    #@c
    .line 534
    :cond_0
    return-object v0
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
    .line 969
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque$Itr;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/LinkedBlockingDeque$Itr;-><init>(Ljava/util/concurrent/LinkedBlockingDeque;Ljava/util/concurrent/LinkedBlockingDeque$Itr;)V

    #@6
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
    .line 612
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
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
    .line 629
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 313
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    #@2
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v2

    #@8
    .line 314
    :cond_0
    new-instance v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@a
    invoke-direct {v1, p1}, Ljava/util/concurrent/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    #@d
    .line 315
    .local v1, "node":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@f
    .line 316
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@12
    .line 318
    :try_start_0
    invoke-direct {p0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->linkFirst(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result v2

    #@16
    .line 320
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@19
    .line 318
    return v2

    #@1a
    .line 319
    :catchall_0
    move-exception v2

    #@1b
    .line 320
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1e
    .line 319
    throw v2
.end method

.method public offerFirst(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
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
    .line 379
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    #@2
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v4

    #@8
    .line 380
    :cond_0
    new-instance v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@a
    invoke-direct {v1, p1}, Ljava/util/concurrent/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    #@d
    .line 381
    .local v1, "node":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@10
    move-result-wide v2

    #@11
    .line 382
    .local v2, "nanos":J
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@13
    .line 383
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    #@16
    .line 385
    :goto_0
    :try_start_0
    invoke-direct {p0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->linkFirst(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    move-result v4

    #@1a
    if-nez v4, :cond_2

    #@1c
    .line 386
    const-wide/16 v4, 0x0

    #@1e
    cmp-long v4, v2, v4

    #@20
    if-gtz v4, :cond_1

    #@22
    .line 387
    const/4 v4, 0x0

    #@23
    .line 392
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@26
    .line 387
    return v4

    #@27
    .line 388
    :cond_1
    :try_start_1
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    #@29
    invoke-interface {v4, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    move-result-wide v2

    #@2d
    goto :goto_0

    #@2e
    .line 390
    :cond_2
    const/4 v4, 0x1

    #@2f
    .line 392
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@32
    .line 390
    return v4

    #@33
    .line 391
    :catchall_0
    move-exception v4

    #@34
    .line 392
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@37
    .line 391
    throw v4
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 328
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    #@2
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v2

    #@8
    .line 329
    :cond_0
    new-instance v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@a
    invoke-direct {v1, p1}, Ljava/util/concurrent/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    #@d
    .line 330
    .local v1, "node":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@f
    .line 331
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@12
    .line 333
    :try_start_0
    invoke-direct {p0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->linkLast(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result v2

    #@16
    .line 335
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@19
    .line 333
    return v2

    #@1a
    .line 334
    :catchall_0
    move-exception v2

    #@1b
    .line 335
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1e
    .line 334
    throw v2
.end method

.method public offerLast(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
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
    .line 402
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    #@2
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v4

    #@8
    .line 403
    :cond_0
    new-instance v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@a
    invoke-direct {v1, p1}, Ljava/util/concurrent/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    #@d
    .line 404
    .local v1, "node":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@10
    move-result-wide v2

    #@11
    .line 405
    .local v2, "nanos":J
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@13
    .line 406
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    #@16
    .line 408
    :goto_0
    :try_start_0
    invoke-direct {p0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->linkLast(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    move-result v4

    #@1a
    if-nez v4, :cond_2

    #@1c
    .line 409
    const-wide/16 v4, 0x0

    #@1e
    cmp-long v4, v2, v4

    #@20
    if-gtz v4, :cond_1

    #@22
    .line 410
    const/4 v4, 0x0

    #@23
    .line 415
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@26
    .line 410
    return v4

    #@27
    .line 411
    :cond_1
    :try_start_1
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    #@29
    invoke-interface {v4, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    move-result-wide v2

    #@2d
    goto :goto_0

    #@2e
    .line 413
    :cond_2
    const/4 v4, 0x1

    #@2f
    .line 415
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@32
    .line 413
    return v4

    #@33
    .line 414
    :catchall_0
    move-exception v4

    #@34
    .line 415
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@37
    .line 414
    throw v4
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
    .line 673
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->peekFirst()Ljava/lang/Object;

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
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 538
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@3
    .line 539
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@6
    .line 541
    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    if-nez v2, :cond_0

    #@a
    .line 543
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@d
    .line 541
    return-object v1

    #@e
    :cond_0
    :try_start_1
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@10
    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    goto :goto_0

    #@13
    .line 542
    :catchall_0
    move-exception v1

    #@14
    .line 543
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@17
    .line 542
    throw v1
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
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 548
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@3
    .line 549
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@6
    .line 551
    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    if-nez v2, :cond_0

    #@a
    .line 553
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@d
    .line 551
    return-object v1

    #@e
    :cond_0
    :try_start_1
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@10
    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    goto :goto_0

    #@13
    .line 552
    :catchall_0
    move-exception v1

    #@14
    .line 553
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@17
    .line 552
    throw v1
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
    .line 647
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
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
    .line 655
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/LinkedBlockingDeque;->pollFirst(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 438
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 439
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 441
    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v1

    #@9
    .line 443
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@c
    .line 441
    return-object v1

    #@d
    .line 442
    :catchall_0
    move-exception v1

    #@e
    .line 443
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@11
    .line 442
    throw v1
.end method

.method public pollFirst(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
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
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    const/4 v6, 0x0

    #@1
    .line 485
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@4
    move-result-wide v2

    #@5
    .line 486
    .local v2, "nanos":J
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@7
    .line 487
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    #@a
    .line 490
    :goto_0
    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result-object v1

    #@e
    .local v1, "x":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_1

    #@10
    .line 491
    const-wide/16 v4, 0x0

    #@12
    cmp-long v4, v2, v4

    #@14
    if-gtz v4, :cond_0

    #@16
    .line 497
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@19
    .line 492
    return-object v6

    #@1a
    .line 493
    :cond_0
    :try_start_1
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    #@1c
    invoke-interface {v4, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    move-result-wide v2

    #@20
    goto :goto_0

    #@21
    .line 497
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@24
    .line 495
    return-object v1

    #@25
    .line 496
    .end local v1    # "x":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v4

    #@26
    .line 497
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@29
    .line 496
    throw v4
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 448
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 449
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 451
    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v1

    #@9
    .line 453
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@c
    .line 451
    return-object v1

    #@d
    .line 452
    :catchall_0
    move-exception v1

    #@e
    .line 453
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@11
    .line 452
    throw v1
.end method

.method public pollLast(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
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
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    const/4 v6, 0x0

    #@1
    .line 503
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@4
    move-result-wide v2

    #@5
    .line 504
    .local v2, "nanos":J
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@7
    .line 505
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    #@a
    .line 508
    :goto_0
    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result-object v1

    #@e
    .local v1, "x":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_1

    #@10
    .line 509
    const-wide/16 v4, 0x0

    #@12
    cmp-long v4, v2, v4

    #@14
    if-gtz v4, :cond_0

    #@16
    .line 515
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@19
    .line 510
    return-object v6

    #@1a
    .line 511
    :cond_0
    :try_start_1
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    #@1c
    invoke-interface {v4, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    move-result-wide v2

    #@20
    goto :goto_0

    #@21
    .line 515
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@24
    .line 513
    return-object v1

    #@25
    .line 514
    .end local v1    # "x":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v4

    #@26
    .line 515
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@29
    .line 514
    throw v4
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
    .line 748
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->removeFirst()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
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
    .line 741
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->addFirst(Ljava/lang/Object;)V

    #@3
    .line 740
    return-void
.end method

.method public put(Ljava/lang/Object;)V
    .locals 0
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
    .line 620
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->putLast(Ljava/lang/Object;)V

    #@3
    .line 619
    return-void
.end method

.method public putFirst(Ljava/lang/Object;)V
    .locals 3
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
    .line 344
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    #@2
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v2

    #@8
    .line 345
    :cond_0
    new-instance v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@a
    invoke-direct {v1, p1}, Ljava/util/concurrent/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    #@d
    .line 346
    .local v1, "node":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@f
    .line 347
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@12
    .line 349
    :goto_0
    :try_start_0
    invoke-direct {p0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->linkFirst(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Z

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_1

    #@18
    .line 350
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    #@1a
    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    goto :goto_0

    #@1e
    .line 351
    :catchall_0
    move-exception v2

    #@1f
    .line 352
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@22
    .line 351
    throw v2

    #@23
    .line 352
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@26
    .line 343
    return-void
.end method

.method public putLast(Ljava/lang/Object;)V
    .locals 3
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
    .line 361
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    #@2
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v2

    #@8
    .line 362
    :cond_0
    new-instance v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@a
    invoke-direct {v1, p1}, Ljava/util/concurrent/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    #@d
    .line 363
    .local v1, "node":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@f
    .line 364
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@12
    .line 366
    :goto_0
    :try_start_0
    invoke-direct {p0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->linkLast(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Z

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_1

    #@18
    .line 367
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    #@1a
    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    goto :goto_0

    #@1e
    .line 368
    :catchall_0
    move-exception v2

    #@1f
    .line 369
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@22
    .line 368
    throw v2

    #@23
    .line 369
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@26
    .line 360
    return-void
.end method

.method public remainingCapacity()I
    .locals 3

    #@0
    .prologue
    .line 688
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 689
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 691
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->capacity:I

    #@7
    iget v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    sub-int/2addr v1, v2

    #@a
    .line 693
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@d
    .line 691
    return v1

    #@e
    .line 692
    :catchall_0
    move-exception v1

    #@f
    .line 693
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@12
    .line 692
    throw v1
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
    .line 643
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->removeFirst()Ljava/lang/Object;

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
    .line 768
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 423
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 424
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    #@6
    new-instance v1, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v1

    #@c
    .line 425
    :cond_0
    return-object v0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 558
    if-nez p1, :cond_0

    #@3
    return v3

    #@4
    .line 559
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@6
    .line 560
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@9
    .line 562
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@b
    .local v1, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_2

    #@d
    .line 563
    iget-object v2, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    #@f
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 564
    invoke-virtual {p0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->unlink(Ljava/util/concurrent/LinkedBlockingDeque$Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 565
    const/4 v2, 0x1

    #@19
    .line 570
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1c
    .line 565
    return v2

    #@1d
    .line 562
    :cond_1
    :try_start_1
    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    goto :goto_0

    #@20
    .line 570
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@23
    .line 568
    return v3

    #@24
    .line 569
    .end local v1    # "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v2

    #@25
    .line 570
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@28
    .line 569
    throw v2
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 432
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->pollLast()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 433
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    #@6
    new-instance v1, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v1

    #@c
    .line 434
    :cond_0
    return-object v0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 575
    if-nez p1, :cond_0

    #@3
    return v3

    #@4
    .line 576
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@6
    .line 577
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@9
    .line 579
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@b
    .local v1, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_2

    #@d
    .line 580
    iget-object v2, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    #@f
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 581
    invoke-virtual {p0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->unlink(Ljava/util/concurrent/LinkedBlockingDeque$Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 582
    const/4 v2, 0x1

    #@19
    .line 587
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1c
    .line 582
    return v2

    #@1d
    .line 579
    :cond_1
    :try_start_1
    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->prev:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    goto :goto_0

    #@20
    .line 587
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@23
    .line 585
    return v3

    #@24
    .line 586
    .end local v1    # "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v2

    #@25
    .line 587
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@28
    .line 586
    throw v2
.end method

.method public size()I
    .locals 2

    #@0
    .prologue
    .line 777
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 778
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 780
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    .line 782
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@a
    .line 780
    return v1

    #@b
    .line 781
    :catchall_0
    move-exception v1

    #@c
    .line 782
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@f
    .line 781
    throw v1
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
    .line 1235
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;

    #@2
    invoke-direct {v0, p0}, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;-><init>(Ljava/util/concurrent/LinkedBlockingDeque;)V

    #@5
    return-object v0
.end method

.method public take()Ljava/lang/Object;
    .locals 1
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
    .line 651
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->takeFirst()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public takeFirst()Ljava/lang/Object;
    .locals 3
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
    .line 458
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 459
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 462
    :goto_0
    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    .local v1, "x":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_0

    #@b
    .line 463
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    #@d
    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    goto :goto_0

    #@11
    .line 465
    .end local v1    # "x":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v2

    #@12
    .line 466
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@15
    .line 465
    throw v2

    #@16
    .line 466
    .restart local v1    # "x":Ljava/lang/Object;, "TE;"
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@19
    .line 464
    return-object v1
.end method

.method public takeLast()Ljava/lang/Object;
    .locals 3
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
    .line 471
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 472
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 475
    :goto_0
    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    .local v1, "x":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_0

    #@b
    .line 476
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    #@d
    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    goto :goto_0

    #@11
    .line 478
    .end local v1    # "x":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v2

    #@12
    .line 479
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@15
    .line 478
    throw v2

    #@16
    .line 479
    .restart local v1    # "x":Ljava/lang/Object;, "TE;"
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@19
    .line 477
    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 6

    #@0
    .prologue
    .line 864
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 865
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 867
    :try_start_0
    iget v5, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    #@7
    new-array v0, v5, [Ljava/lang/Object;

    #@9
    .line 868
    .local v0, "a":[Ljava/lang/Object;
    const/4 v1, 0x0

    #@a
    .line 869
    .local v1, "k":I
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@c
    .local v4, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    move v2, v1

    #@d
    .end local v1    # "k":I
    .local v2, "k":I
    :goto_0
    if-eqz v4, :cond_0

    #@f
    .line 870
    add-int/lit8 v1, v2, 0x1

    #@11
    .end local v2    # "k":I
    .restart local v1    # "k":I
    iget-object v5, v4, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    #@13
    aput-object v5, v0, v2

    #@15
    .line 869
    iget-object v4, v4, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    move v2, v1

    #@18
    .end local v1    # "k":I
    .restart local v2    # "k":I
    goto :goto_0

    #@19
    .line 873
    :cond_0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1c
    .line 871
    return-object v0

    #@1d
    .line 872
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v2    # "k":I
    .end local v4    # "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v5

    #@1e
    .line 873
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@21
    .line 872
    throw v5
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 914
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 915
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 917
    :try_start_0
    array-length v5, p1

    #@6
    iget v6, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    #@8
    if-ge v5, v6, :cond_0

    #@a
    .line 919
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@d
    move-result-object v5

    #@e
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@11
    move-result-object v5

    #@12
    iget v6, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    #@14
    .line 918
    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@17
    move-result-object v5

    #@18
    move-object v0, v5

    #@19
    check-cast v0, [Ljava/lang/Object;

    #@1b
    move-object p1, v0

    #@1c
    .line 921
    :cond_0
    const/4 v1, 0x0

    #@1d
    .line 922
    .local v1, "k":I
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@1f
    .local v4, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    move v2, v1

    #@20
    .end local v1    # "k":I
    .local v2, "k":I
    :goto_0
    if-eqz v4, :cond_1

    #@22
    .line 923
    add-int/lit8 v1, v2, 0x1

    #@24
    .end local v2    # "k":I
    .restart local v1    # "k":I
    iget-object v5, v4, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    #@26
    aput-object v5, p1, v2

    #@28
    .line 922
    iget-object v4, v4, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@2a
    move v2, v1

    #@2b
    .end local v1    # "k":I
    .restart local v2    # "k":I
    goto :goto_0

    #@2c
    .line 924
    :cond_1
    array-length v5, p1

    #@2d
    if-le v5, v2, :cond_2

    #@2f
    .line 925
    const/4 v5, 0x0

    #@30
    aput-object v5, p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    .line 928
    :cond_2
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@35
    .line 926
    return-object p1

    #@36
    .line 927
    .end local v2    # "k":I
    .end local v4    # "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v5

    #@37
    .line 928
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@3a
    .line 927
    throw v5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 933
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-static {p0}, Ljava/util/concurrent/Helpers;->collectionToString(Ljava/util/Collection;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method unlink(Ljava/util/concurrent/LinkedBlockingDeque$Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingDeque$Node",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "x":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    const/4 v2, 0x0

    #@1
    .line 272
    iget-object v1, p1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->prev:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@3
    .line 273
    .local v1, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@5
    .line 274
    .local v0, "n":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    if-nez v1, :cond_0

    #@7
    .line 275
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;

    #@a
    .line 270
    :goto_0
    return-void

    #@b
    .line 276
    :cond_0
    if-nez v0, :cond_1

    #@d
    .line 277
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;

    #@10
    goto :goto_0

    #@11
    .line 279
    :cond_1
    iput-object v0, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@13
    .line 280
    iput-object v1, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->prev:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@15
    .line 281
    iput-object v2, p1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    #@17
    .line 284
    iget v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    #@19
    add-int/lit8 v2, v2, -0x1

    #@1b
    iput v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    #@1d
    .line 285
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    #@1f
    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V

    #@22
    goto :goto_0
.end method
