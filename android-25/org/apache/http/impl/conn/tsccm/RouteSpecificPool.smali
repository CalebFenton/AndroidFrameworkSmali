.class public Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
.super Ljava/lang/Object;
.source "RouteSpecificPool.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final freeEntries:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lorg/apache/commons/logging/Log;

.field protected final maxEntries:I

.field protected numEntries:I

.field protected final route:Lorg/apache/http/conn/routing/HttpRoute;

.field protected final waitingThreads:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/http/impl/conn/tsccm/WaitingThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/routing/HttpRoute;I)V
    .locals 1
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "maxEntries"    # I

    #@0
    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->log:Lorg/apache/commons/logging/Log;

    #@d
    .line 86
    iput-object p1, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->route:Lorg/apache/http/conn/routing/HttpRoute;

    #@f
    .line 87
    iput p2, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->maxEntries:I

    #@11
    .line 88
    new-instance v0, Ljava/util/LinkedList;

    #@13
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@16
    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    #@18
    .line 89
    new-instance v0, Ljava/util/LinkedList;

    #@1a
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@1d
    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;

    #@1f
    .line 90
    const/4 v0, 0x0

    #@20
    iput v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    #@22
    .line 85
    return-void
.end method


# virtual methods
.method public allocEntry(Ljava/lang/Object;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .locals 7
    .param p1, "state"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 155
    iget-object v4, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    #@3
    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    #@6
    move-result v4

    #@7
    if-nez v4, :cond_1

    #@9
    .line 156
    iget-object v4, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    #@b
    iget-object v5, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    #@d
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    #@10
    move-result v5

    #@11
    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    #@14
    move-result-object v3

    #@15
    .line 157
    .local v3, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_1

    #@1b
    .line 158
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    #@21
    .line 159
    .local v1, "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    invoke-virtual {v1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getState()Ljava/lang/Object;

    #@24
    move-result-object v4

    #@25
    invoke-static {p1, v4}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_0

    #@2b
    .line 160
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    #@2e
    .line 161
    return-object v1

    #@2f
    .line 165
    .end local v1    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .end local v3    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;>;"
    :cond_1
    iget-object v4, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    #@31
    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    #@34
    move-result v4

    #@35
    if-nez v4, :cond_2

    #@37
    .line 166
    iget-object v4, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    #@39
    invoke-virtual {v4}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    #@3c
    move-result-object v1

    #@3d
    check-cast v1, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    #@3f
    .line 167
    .restart local v1    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    invoke-virtual {v1, v6}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->setState(Ljava/lang/Object;)V

    #@42
    .line 168
    invoke-virtual {v1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lorg/apache/http/conn/OperatedClientConnection;

    #@45
    move-result-object v0

    #@46
    .line 170
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@49
    .line 174
    :goto_0
    return-object v1

    #@4a
    .line 171
    :catch_0
    move-exception v2

    #@4b
    .line 172
    .local v2, "ex":Ljava/io/IOException;
    iget-object v4, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->log:Lorg/apache/commons/logging/Log;

    #@4d
    const-string/jumbo v5, "I/O error closing connection"

    #@50
    invoke-interface {v4, v5, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@53
    goto :goto_0

    #@54
    .line 176
    .end local v0    # "conn":Lorg/apache/http/conn/OperatedClientConnection;
    .end local v1    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_2
    return-object v6
.end method

.method public createdEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)V
    .locals 3
    .param p1, "entry"    # Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    #@0
    .prologue
    .line 210
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->route:Lorg/apache/http/conn/routing/HttpRoute;

    #@2
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getPlannedRoute()Lorg/apache/http/conn/routing/HttpRoute;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Lorg/apache/http/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "Entry not planned for this pool.\npool: "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    .line 213
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->route:Lorg/apache/http/conn/routing/HttpRoute;

    #@1c
    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    .line 214
    const-string/jumbo v2, "\nplan: "

    #@23
    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    .line 214
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getPlannedRoute()Lorg/apache/http/conn/routing/HttpRoute;

    #@2a
    move-result-object v2

    #@2b
    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    .line 211
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36
    throw v0

    #@37
    .line 217
    :cond_0
    iget v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    #@39
    add-int/lit8 v0, v0, 0x1

    #@3b
    iput v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    #@3d
    .line 208
    return-void
.end method

.method public deleteEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)Z
    .locals 2
    .param p1, "entry"    # Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    #@0
    .prologue
    .line 233
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    .line 234
    .local v0, "found":Z
    if-eqz v0, :cond_0

    #@8
    .line 235
    iget v1, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    #@a
    add-int/lit8 v1, v1, -0x1

    #@c
    iput v1, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    #@e
    .line 236
    :cond_0
    return v0
.end method

.method public dropEntry()V
    .locals 2

    #@0
    .prologue
    .line 247
    iget v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ge v0, v1, :cond_0

    #@5
    .line 248
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    .line 249
    const-string/jumbo v1, "There is no entry that could be dropped."

    #@a
    .line 248
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 251
    :cond_0
    iget v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    #@10
    add-int/lit8 v0, v0, -0x1

    #@12
    iput v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    #@14
    .line 246
    return-void
.end method

.method public freeEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)V
    .locals 3
    .param p1, "entry"    # Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    #@0
    .prologue
    .line 188
    iget v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ge v0, v1, :cond_0

    #@5
    .line 189
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "No entry created for this pool. "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->route:Lorg/apache/http/conn/routing/HttpRoute;

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    .line 189
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 192
    :cond_0
    iget v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    #@23
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    #@25
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    #@28
    move-result v1

    #@29
    if-gt v0, v1, :cond_1

    #@2b
    .line 193
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2d
    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v2, "No entry allocated from this pool. "

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->route:Lorg/apache/http/conn/routing/HttpRoute;

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    .line 193
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@46
    throw v0

    #@47
    .line 196
    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    #@49
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@4c
    .line 186
    return-void
.end method

.method public getCapacity()I
    .locals 2

    #@0
    .prologue
    .line 133
    iget v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->maxEntries:I

    #@2
    iget v1, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method public final getEntryCount()I
    .locals 1

    #@0
    .prologue
    .line 145
    iget v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    #@2
    return v0
.end method

.method public final getMaxEntries()I
    .locals 1

    #@0
    .prologue
    .line 110
    iget v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->maxEntries:I

    #@2
    return v0
.end method

.method public final getRoute()Lorg/apache/http/conn/routing/HttpRoute;
    .locals 1

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->route:Lorg/apache/http/conn/routing/HttpRoute;

    #@2
    return-object v0
.end method

.method public hasThread()Z
    .locals 1

    #@0
    .prologue
    .line 279
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;

    #@2
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method public isUnused()Z
    .locals 2

    #@0
    .prologue
    .line 123
    iget v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ge v0, v1, :cond_0

    #@5
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;

    #@7
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    #@a
    move-result v0

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public nextThread()Lorg/apache/http/impl/conn/tsccm/WaitingThread;
    .locals 1

    #@0
    .prologue
    .line 289
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;

    #@2
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;

    #@8
    return-object v0
.end method

.method public queueThread(Lorg/apache/http/impl/conn/tsccm/WaitingThread;)V
    .locals 2
    .param p1, "wt"    # Lorg/apache/http/impl/conn/tsccm/WaitingThread;

    #@0
    .prologue
    .line 264
    if-nez p1, :cond_0

    #@2
    .line 265
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    .line 266
    const-string/jumbo v1, "Waiting thread must not be null."

    #@7
    .line 265
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 268
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;

    #@d
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    #@10
    .line 263
    return-void
.end method

.method public removeThread(Lorg/apache/http/impl/conn/tsccm/WaitingThread;)V
    .locals 1
    .param p1, "wt"    # Lorg/apache/http/impl/conn/tsccm/WaitingThread;

    #@0
    .prologue
    .line 299
    if-nez p1, :cond_0

    #@2
    .line 300
    return-void

    #@3
    .line 302
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    #@8
    .line 298
    return-void
.end method
