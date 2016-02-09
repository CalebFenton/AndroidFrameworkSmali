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
        Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;,
        Ljava/util/concurrent/LinkedBlockingDeque$Itr;,
        Ljava/util/concurrent/LinkedBlockingDeque$DescendingItr;
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
    .line 139
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    const v0, 0x7fffffff

    #@3
    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    #@6
    .line 138
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    #@0
    .prologue
    .line 148
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    #@3
    .line 126
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@8
    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@a
    .line 129
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@c
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    #@12
    .line 132
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@14
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    #@17
    move-result-object v0

    #@18
    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    #@1a
    .line 149
    if-gtz p1, :cond_0

    #@1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1e
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@21
    throw v0

    #@22
    .line 150
    :cond_0
    iput p1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->capacity:I

    #@24
    .line 148
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
    .line 164
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const v3, 0x7fffffff

    #@3
    invoke-direct {p0, v3}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    #@6
    .line 165
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@8
    .line 166
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@b
    .line 168
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
    .line 169
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_1

    #@1b
    .line 170
    new-instance v3, Ljava/lang/NullPointerException;

    #@1d
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@20
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 174
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@22
    .line 175
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@25
    .line 174
    throw v3

    #@26
    .line 171
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
    .line 172
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
    .line 175
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@3d
    .line 163
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
    .line 187
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "node":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    #@2
    iget v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->capacity:I

    #@4
    if-lt v1, v2, :cond_0

    #@6
    .line 188
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 189
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@a
    .line 190
    .local v0, "f":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iput-object v0, p1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@c
    .line 191
    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@e
    .line 192
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@10
    if-nez v1, :cond_1

    #@12
    .line 193
    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@14
    .line 196
    :goto_0
    iget v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    #@16
    add-int/lit8 v1, v1, 0x1

    #@18
    iput v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    #@1a
    .line 197
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    #@1c
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    #@1f
    .line 198
    const/4 v1, 0x1

    #@20
    return v1

    #@21
    .line 195
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
    .line 206
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "node":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    #@2
    iget v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->capacity:I

    #@4
    if-lt v1, v2, :cond_0

    #@6
    .line 207
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 208
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@a
    .line 209
    .local v0, "l":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iput-object v0, p1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->prev:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@c
    .line 210
    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@e
    .line 211
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@10
    if-nez v1, :cond_1

    #@12
    .line 212
    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@14
    .line 215
    :goto_0
    iget v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    #@16
    add-int/lit8 v1, v1, 0x1

    #@18
    iput v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    #@1a
    .line 216
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    #@1c
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    #@1f
    .line 217
    const/4 v1, 0x1

    #@20
    return v1

    #@21
    .line 214
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
    .line 1153
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@4
    .line 1154
    const/4 v1, 0x0

    #@5
    iput v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    #@7
    .line 1155
    iput-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@9
    .line 1156
    iput-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@b
    .line 1160
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    .line 1161
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    #@11
    .line 1152
    return-void

    #@12
    .line 1163
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
    .line 225
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@3
    .line 226
    .local v0, "f":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    if-nez v0, :cond_0

    #@5
    .line 227
    return-object v3

    #@6
    .line 228
    :cond_0
    iget-object v2, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@8
    .line 229
    .local v2, "n":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget-object v1, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    #@a
    .line 230
    .local v1, "item":Ljava/lang/Object;, "TE;"
    iput-object v3, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    #@c
    .line 231
    iput-object v0, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@e
    .line 232
    iput-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@10
    .line 233
    if-nez v2, :cond_1

    #@12
    .line 234
    iput-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@14
    .line 237
    :goto_0
    iget v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    #@16
    add-int/lit8 v3, v3, -0x1

    #@18
    iput v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    #@1a
    .line 238
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    #@1c
    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V

    #@1f
    .line 239
    return-object v1

    #@20
    .line 236
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
    .line 247
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@3
    .line 248
    .local v1, "l":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    if-nez v1, :cond_0

    #@5
    .line 249
    return-object v3

    #@6
    .line 250
    :cond_0
    iget-object v2, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->prev:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@8
    .line 251
    .local v2, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    #@a
    .line 252
    .local v0, "item":Ljava/lang/Object;, "TE;"
    iput-object v3, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    #@c
    .line 253
    iput-object v1, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->prev:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@e
    .line 254
    iput-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@10
    .line 255
    if-nez v2, :cond_1

    #@12
    .line 256
    iput-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@14
    .line 259
    :goto_0
    iget v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    #@16
    add-int/lit8 v3, v3, -0x1

    #@18
    iput v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    #@1a
    .line 260
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    #@1c
    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V

    #@1f
    .line 261
    return-object v0

    #@20
    .line 258
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
    .line 1133
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 1134
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 1137
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@8
    .line 1139
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@a
    .local v1, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_0

    #@c
    .line 1140
    iget-object v2, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    #@e
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@11
    .line 1139
    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@13
    goto :goto_0

    #@14
    .line 1142
    :cond_0
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 1144
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1b
    .line 1132
    return-void

    #@1c
    .line 1143
    .end local v1    # "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v2

    #@1d
    .line 1144
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@20
    .line 1143
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
    .line 602
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->addLast(Ljava/lang/Object;)V

    #@3
    .line 603
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
    .line 293
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offerFirst(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 294
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "Deque full"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 292
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
    .line 302
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 303
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "Deque full"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 301
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 4

    #@0
    .prologue
    .line 958
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 959
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 961
    :try_start_0
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@7
    .local v0, "f":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :goto_0
    if-eqz v0, :cond_0

    #@9
    .line 962
    const/4 v3, 0x0

    #@a
    iput-object v3, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    #@c
    .line 963
    iget-object v2, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@e
    .line 964
    .local v2, "n":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    const/4 v3, 0x0

    #@f
    iput-object v3, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->prev:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@11
    .line 965
    const/4 v3, 0x0

    #@12
    iput-object v3, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@14
    .line 966
    move-object v0, v2

    #@15
    goto :goto_0

    #@16
    .line 968
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
    .line 969
    const/4 v3, 0x0

    #@1d
    iput v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    #@1f
    .line 970
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    #@21
    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 972
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@27
    .line 957
    return-void

    #@28
    .line 971
    .end local v0    # "f":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v3

    #@29
    .line 972
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2c
    .line 971
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
    .line 793
    if-nez p1, :cond_0

    #@3
    return v3

    #@4
    .line 794
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@6
    .line 795
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@9
    .line 797
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@b
    .local v1, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_2

    #@d
    .line 798
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
    .line 799
    const/4 v2, 0x1

    #@16
    .line 802
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@19
    .line 799
    return v2

    #@1a
    .line 797
    :cond_1
    :try_start_1
    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    goto :goto_0

    #@1d
    .line 802
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@20
    .line 800
    return v3

    #@21
    .line 801
    .end local v1    # "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v2

    #@22
    .line 802
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@25
    .line 801
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
    .line 1008
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
    .line 702
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
    .line 712
    if-nez p1, :cond_0

    #@3
    .line 713
    new-instance v3, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v3

    #@9
    .line 714
    :cond_0
    if-ne p1, p0, :cond_1

    #@b
    .line 715
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@d
    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@10
    throw v3

    #@11
    .line 716
    :cond_1
    if-gtz p2, :cond_2

    #@13
    .line 717
    return v3

    #@14
    .line 718
    :cond_2
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@16
    .line 719
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@19
    .line 721
    :try_start_0
    iget v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    #@1b
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    #@1e
    move-result v2

    #@1f
    .line 722
    .local v2, "n":I
    const/4 v0, 0x0

    #@20
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    #@22
    .line 723
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@24
    iget-object v3, v3, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    #@26
    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@29
    .line 724
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 722
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 728
    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@32
    .line 726
    return v2

    #@33
    .line 727
    .end local v0    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    #@34
    .line 728
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@37
    .line 727
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
    .line 667
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
    .line 520
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->peekFirst()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 521
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    #@6
    new-instance v1, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v1

    #@c
    .line 522
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
    .line 529
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->peekLast()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 530
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    #@6
    new-instance v1, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v1

    #@c
    .line 531
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
    .line 990
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
    .line 610
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
    .line 627
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
    .line 310
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
    .line 311
    :cond_0
    new-instance v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@a
    invoke-direct {v1, p1}, Ljava/util/concurrent/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    #@d
    .line 312
    .local v1, "node":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@f
    .line 313
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@12
    .line 315
    :try_start_0
    invoke-direct {p0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->linkFirst(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result v2

    #@16
    .line 317
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@19
    .line 315
    return v2

    #@1a
    .line 316
    :catchall_0
    move-exception v2

    #@1b
    .line 317
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1e
    .line 316
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
    .line 376
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
    .line 377
    :cond_0
    new-instance v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@a
    invoke-direct {v1, p1}, Ljava/util/concurrent/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    #@d
    .line 378
    .local v1, "node":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@10
    move-result-wide v2

    #@11
    .line 379
    .local v2, "nanos":J
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@13
    .line 380
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    #@16
    .line 382
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
    .line 383
    const-wide/16 v4, 0x0

    #@1e
    cmp-long v4, v2, v4

    #@20
    if-gtz v4, :cond_1

    #@22
    .line 384
    const/4 v4, 0x0

    #@23
    .line 389
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@26
    .line 384
    return v4

    #@27
    .line 385
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
    .line 387
    :cond_2
    const/4 v4, 0x1

    #@2f
    .line 389
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@32
    .line 387
    return v4

    #@33
    .line 388
    :catchall_0
    move-exception v4

    #@34
    .line 389
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@37
    .line 388
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
    .line 325
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
    .line 326
    :cond_0
    new-instance v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@a
    invoke-direct {v1, p1}, Ljava/util/concurrent/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    #@d
    .line 327
    .local v1, "node":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@f
    .line 328
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@12
    .line 330
    :try_start_0
    invoke-direct {p0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->linkLast(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result v2

    #@16
    .line 332
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@19
    .line 330
    return v2

    #@1a
    .line 331
    :catchall_0
    move-exception v2

    #@1b
    .line 332
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1e
    .line 331
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
    .line 399
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
    .line 400
    :cond_0
    new-instance v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@a
    invoke-direct {v1, p1}, Ljava/util/concurrent/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    #@d
    .line 401
    .local v1, "node":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@10
    move-result-wide v2

    #@11
    .line 402
    .local v2, "nanos":J
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@13
    .line 403
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    #@16
    .line 405
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
    .line 406
    const-wide/16 v4, 0x0

    #@1e
    cmp-long v4, v2, v4

    #@20
    if-gtz v4, :cond_1

    #@22
    .line 407
    const/4 v4, 0x0

    #@23
    .line 412
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@26
    .line 407
    return v4

    #@27
    .line 408
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
    .line 410
    :cond_2
    const/4 v4, 0x1

    #@2f
    .line 412
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@32
    .line 410
    return v4

    #@33
    .line 411
    :catchall_0
    move-exception v4

    #@34
    .line 412
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@37
    .line 411
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
    .line 671
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
    .line 535
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@3
    .line 536
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@6
    .line 538
    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    if-nez v2, :cond_0

    #@a
    .line 540
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@d
    .line 538
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
    .line 539
    :catchall_0
    move-exception v1

    #@14
    .line 540
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@17
    .line 539
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
    .line 545
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@3
    .line 546
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@6
    .line 548
    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    if-nez v2, :cond_0

    #@a
    .line 550
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@d
    .line 548
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
    .line 549
    :catchall_0
    move-exception v1

    #@14
    .line 550
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@17
    .line 549
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
    .line 645
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
    .line 653
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
    .line 435
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 436
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 438
    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v1

    #@9
    .line 440
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@c
    .line 438
    return-object v1

    #@d
    .line 439
    :catchall_0
    move-exception v1

    #@e
    .line 440
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@11
    .line 439
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
    .line 482
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@4
    move-result-wide v2

    #@5
    .line 483
    .local v2, "nanos":J
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@7
    .line 484
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    #@a
    .line 487
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
    .line 488
    const-wide/16 v4, 0x0

    #@12
    cmp-long v4, v2, v4

    #@14
    if-gtz v4, :cond_0

    #@16
    .line 494
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@19
    .line 489
    return-object v6

    #@1a
    .line 490
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
    .line 494
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@24
    .line 492
    return-object v1

    #@25
    .line 493
    .end local v1    # "x":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v4

    #@26
    .line 494
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@29
    .line 493
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
    .line 445
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 446
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 448
    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v1

    #@9
    .line 450
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@c
    .line 448
    return-object v1

    #@d
    .line 449
    :catchall_0
    move-exception v1

    #@e
    .line 450
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@11
    .line 449
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
    .line 500
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@4
    move-result-wide v2

    #@5
    .line 501
    .local v2, "nanos":J
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@7
    .line 502
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    #@a
    .line 505
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
    .line 506
    const-wide/16 v4, 0x0

    #@12
    cmp-long v4, v2, v4

    #@14
    if-gtz v4, :cond_0

    #@16
    .line 512
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@19
    .line 507
    return-object v6

    #@1a
    .line 508
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
    .line 512
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@24
    .line 510
    return-object v1

    #@25
    .line 511
    .end local v1    # "x":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v4

    #@26
    .line 512
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@29
    .line 511
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
    .line 746
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
    .line 739
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->addFirst(Ljava/lang/Object;)V

    #@3
    .line 738
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
    .line 618
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->putLast(Ljava/lang/Object;)V

    #@3
    .line 617
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
    .line 341
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
    .line 342
    :cond_0
    new-instance v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@a
    invoke-direct {v1, p1}, Ljava/util/concurrent/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    #@d
    .line 343
    .local v1, "node":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@f
    .line 344
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@12
    .line 346
    :goto_0
    :try_start_0
    invoke-direct {p0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->linkFirst(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Z

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_1

    #@18
    .line 347
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    #@1a
    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    goto :goto_0

    #@1e
    .line 348
    :catchall_0
    move-exception v2

    #@1f
    .line 349
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@22
    .line 348
    throw v2

    #@23
    .line 349
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@26
    .line 340
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
    .line 358
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
    .line 359
    :cond_0
    new-instance v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@a
    invoke-direct {v1, p1}, Ljava/util/concurrent/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    #@d
    .line 360
    .local v1, "node":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@f
    .line 361
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@12
    .line 363
    :goto_0
    :try_start_0
    invoke-direct {p0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->linkLast(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Z

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_1

    #@18
    .line 364
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    #@1a
    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    goto :goto_0

    #@1e
    .line 365
    :catchall_0
    move-exception v2

    #@1f
    .line 366
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@22
    .line 365
    throw v2

    #@23
    .line 366
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@26
    .line 357
    return-void
.end method

.method public remainingCapacity()I
    .locals 3

    #@0
    .prologue
    .line 686
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 687
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 689
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->capacity:I

    #@7
    iget v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    sub-int/2addr v1, v2

    #@a
    .line 691
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@d
    .line 689
    return v1

    #@e
    .line 690
    :catchall_0
    move-exception v1

    #@f
    .line 691
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@12
    .line 690
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
    .line 641
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
    .line 766
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
    .line 420
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 421
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    #@6
    new-instance v1, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v1

    #@c
    .line 422
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
    .line 555
    if-nez p1, :cond_0

    #@3
    return v3

    #@4
    .line 556
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@6
    .line 557
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@9
    .line 559
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@b
    .local v1, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_2

    #@d
    .line 560
    iget-object v2, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    #@f
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 561
    invoke-virtual {p0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->unlink(Ljava/util/concurrent/LinkedBlockingDeque$Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 562
    const/4 v2, 0x1

    #@19
    .line 567
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1c
    .line 562
    return v2

    #@1d
    .line 559
    :cond_1
    :try_start_1
    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    goto :goto_0

    #@20
    .line 567
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@23
    .line 565
    return v3

    #@24
    .line 566
    .end local v1    # "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v2

    #@25
    .line 567
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@28
    .line 566
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
    .line 429
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->pollLast()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 430
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    #@6
    new-instance v1, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v1

    #@c
    .line 431
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
    .line 572
    if-nez p1, :cond_0

    #@3
    return v3

    #@4
    .line 573
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@6
    .line 574
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@9
    .line 576
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@b
    .local v1, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_2

    #@d
    .line 577
    iget-object v2, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    #@f
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 578
    invoke-virtual {p0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->unlink(Ljava/util/concurrent/LinkedBlockingDeque$Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 579
    const/4 v2, 0x1

    #@19
    .line 584
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1c
    .line 579
    return v2

    #@1d
    .line 576
    :cond_1
    :try_start_1
    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->prev:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    goto :goto_0

    #@20
    .line 584
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@23
    .line 582
    return v3

    #@24
    .line 583
    .end local v1    # "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v2

    #@25
    .line 584
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@28
    .line 583
    throw v2
.end method

.method public size()I
    .locals 2

    #@0
    .prologue
    .line 775
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 776
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 778
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    .line 780
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@a
    .line 778
    return v1

    #@b
    .line 779
    :catchall_0
    move-exception v1

    #@c
    .line 780
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@f
    .line 779
    throw v1
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
    .line 649
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
    .line 455
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 456
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 459
    :goto_0
    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    .local v1, "x":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_0

    #@b
    .line 460
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    #@d
    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    goto :goto_0

    #@11
    .line 462
    .end local v1    # "x":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v2

    #@12
    .line 463
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@15
    .line 462
    throw v2

    #@16
    .line 463
    .restart local v1    # "x":Ljava/lang/Object;, "TE;"
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@19
    .line 461
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
    .line 468
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 469
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 472
    :goto_0
    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    .local v1, "x":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_0

    #@b
    .line 473
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    #@d
    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    goto :goto_0

    #@11
    .line 475
    .end local v1    # "x":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v2

    #@12
    .line 476
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@15
    .line 475
    throw v2

    #@16
    .line 476
    .restart local v1    # "x":Ljava/lang/Object;, "TE;"
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@19
    .line 474
    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 6

    #@0
    .prologue
    .line 862
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 863
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 865
    :try_start_0
    iget v5, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    #@7
    new-array v0, v5, [Ljava/lang/Object;

    #@9
    .line 866
    .local v0, "a":[Ljava/lang/Object;
    const/4 v1, 0x0

    #@a
    .line 867
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
    .line 868
    add-int/lit8 v1, v2, 0x1

    #@11
    .end local v2    # "k":I
    .restart local v1    # "k":I
    iget-object v5, v4, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    #@13
    aput-object v5, v0, v2

    #@15
    .line 867
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
    .line 871
    :cond_0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1c
    .line 869
    return-object v0

    #@1d
    .line 870
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v2    # "k":I
    .end local v4    # "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v5

    #@1e
    .line 871
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@21
    .line 870
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
    .line 912
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 913
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 915
    :try_start_0
    array-length v5, p1

    #@6
    iget v6, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    #@8
    if-ge v5, v6, :cond_0

    #@a
    .line 917
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
    .line 916
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
    .line 919
    :cond_0
    const/4 v1, 0x0

    #@1d
    .line 920
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
    .line 921
    add-int/lit8 v1, v2, 0x1

    #@24
    .end local v2    # "k":I
    .restart local v1    # "k":I
    iget-object v5, v4, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    #@26
    aput-object v5, p1, v2

    #@28
    .line 920
    iget-object v4, v4, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@2a
    move v2, v1

    #@2b
    .end local v1    # "k":I
    .restart local v2    # "k":I
    goto :goto_0

    #@2c
    .line 922
    :cond_1
    array-length v5, p1

    #@2d
    if-le v5, v2, :cond_2

    #@2f
    .line 923
    const/4 v5, 0x0

    #@30
    aput-object v5, p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    .line 926
    :cond_2
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@35
    .line 924
    return-object p1

    #@36
    .line 925
    .end local v2    # "k":I
    .end local v4    # "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v5

    #@37
    .line 926
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@3a
    .line 925
    throw v5
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 931
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 932
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 934
    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@7
    .line 935
    .local v2, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    if-nez v2, :cond_0

    #@9
    .line 936
    const-string/jumbo v4, "[]"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 949
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@f
    .line 936
    return-object v4

    #@10
    .line 938
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    .line 939
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/16 v4, 0x5b

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1a
    .line 941
    :goto_0
    iget-object v0, v2, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    #@1c
    .line 942
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-ne v0, p0, :cond_1

    #@1e
    const-string/jumbo v0, "(this Collection)"

    #@21
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    .line 943
    iget-object v2, v2, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@26
    .line 944
    if-nez v2, :cond_2

    #@28
    .line 945
    const/16 v4, 0x5d

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    move-result-object v4

    #@32
    .line 949
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@35
    .line 945
    return-object v4

    #@36
    .line 946
    :cond_2
    const/16 v4, 0x2c

    #@38
    :try_start_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    const/16 v5, 0x20

    #@3e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@41
    goto :goto_0

    #@42
    .line 948
    .end local v2    # "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v4

    #@43
    .line 949
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@46
    .line 948
    throw v4
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
    .line 269
    iget-object v1, p1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->prev:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@3
    .line 270
    .local v1, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@5
    .line 271
    .local v0, "n":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    if-nez v1, :cond_0

    #@7
    .line 272
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;

    #@a
    .line 267
    :goto_0
    return-void

    #@b
    .line 273
    :cond_0
    if-nez v0, :cond_1

    #@d
    .line 274
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;

    #@10
    goto :goto_0

    #@11
    .line 276
    :cond_1
    iput-object v0, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@13
    .line 277
    iput-object v1, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->prev:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@15
    .line 278
    iput-object v2, p1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    #@17
    .line 281
    iget v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    #@19
    add-int/lit8 v2, v2, -0x1

    #@1b
    iput v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->count:I

    #@1d
    .line 282
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    #@1f
    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V

    #@22
    goto :goto_0
.end method
