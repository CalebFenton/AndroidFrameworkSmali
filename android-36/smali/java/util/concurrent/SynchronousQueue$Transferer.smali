.class final Ljava/util/concurrent/SynchronousQueue$Transferer;
.super Ljava/util/concurrent/LinkedTransferQueue;
.source "SynchronousQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/SynchronousQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Transferer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/LinkedTransferQueue<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 152
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$Transferer;, "Ljava/util/concurrent/SynchronousQueue$Transferer<TE;>;"
    invoke-direct {p0}, Ljava/util/concurrent/LinkedTransferQueue;-><init>()V

    return-void
.end method

.method private blacklist unspliceLifo(Ljava/util/concurrent/LinkedTransferQueue$DualNode;)V
    .registers 8
    .param p1, "s"    # Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 207
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$Transferer;, "Ljava/util/concurrent/SynchronousQueue$Transferer<TE;>;"
    const/4 v0, 0x0

    .line 208
    .local v0, "seen":Z
    iget-object v1, p0, Ljava/util/concurrent/SynchronousQueue$Transferer;->head:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 209
    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :goto_3
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->matched()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 210
    if-ne v1, p1, :cond_e

    .line 211
    const/4 v0, 0x1

    .line 212
    :cond_e
    iget-object v2, v1, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-object v3, v2

    .local v3, "f":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/SynchronousQueue$Transferer;->cmpExHead(Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;)Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-result-object v2

    move-object v4, v2

    .local v4, "u":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-ne v1, v2, :cond_1a

    move-object v2, v3

    goto :goto_1b

    :cond_1a
    move-object v2, v4

    :goto_1b
    move-object v1, v2

    goto :goto_3

    .line 214
    .end local v3    # "f":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .end local v4    # "u":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_1d
    if-eqz v1, :cond_44

    if-nez v0, :cond_44

    invoke-virtual {p0}, Ljava/util/concurrent/SynchronousQueue$Transferer;->sweepNow()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 215
    :goto_27
    if-eqz v1, :cond_44

    iget-object v2, v1, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-object v3, v2

    .restart local v3    # "f":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-eqz v2, :cond_44

    .line 216
    invoke-virtual {v3}, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->matched()Z

    move-result v2

    if-nez v2, :cond_36

    move-object v4, v3

    goto :goto_42

    .line 217
    :cond_36
    iget-object v2, v3, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-object v4, v2

    .local v4, "n":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->cmpExNext(Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;)Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-result-object v2

    move-object v5, v2

    .local v5, "u":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-ne v3, v2, :cond_41

    goto :goto_42

    :cond_41
    move-object v4, v5

    .end local v4    # "n":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .end local v5    # "u":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :goto_42
    move-object v1, v4

    goto :goto_27

    .line 220
    .end local v3    # "f":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_44
    return-void
.end method


# virtual methods
.method final blacklist xferLifo(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 16
    .param p1, "e"    # Ljava/lang/Object;
    .param p2, "ns"    # J

    .line 168
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$Transferer;, "Ljava/util/concurrent/SynchronousQueue$Transferer<TE;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    .line 170
    .local v2, "haveData":Z
    :goto_7
    const/4 v3, 0x0

    .local v3, "s":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    iget-object v4, p0, Ljava/util/concurrent/SynchronousQueue$Transferer;->head:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 171
    .local v4, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :goto_a
    if-eqz v4, :cond_3f

    .line 173
    iget-boolean v5, v4, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->isData:Z

    move v6, v5

    .local v6, "isData":Z
    iget-object v7, v4, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->item:Ljava/lang/Object;

    move-object v8, v7

    .local v8, "m":Ljava/lang/Object;
    if-eqz v7, :cond_16

    move v7, v0

    goto :goto_17

    :cond_16
    move v7, v1

    :goto_17
    if-eq v5, v7, :cond_28

    .line 174
    iget-object v5, v4, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-object v7, v5

    .local v7, "n":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    invoke-virtual {p0, v4, v5}, Ljava/util/concurrent/SynchronousQueue$Transferer;->cmpExHead(Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;)Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-result-object v5

    move-object v9, v5

    .local v9, "u":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-ne v4, v5, :cond_25

    move-object v5, v7

    goto :goto_26

    :cond_25
    move-object v5, v9

    :goto_26
    move-object v4, v5

    .end local v4    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .local v5, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    goto :goto_33

    .line 175
    .end local v5    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .end local v7    # "n":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .end local v9    # "u":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .restart local v4    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_28
    if-ne v6, v2, :cond_2b

    .line 176
    goto :goto_3f

    .line 177
    :cond_2b
    invoke-virtual {v4, v8, p1}, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->cmpExItem(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v8, :cond_34

    .line 178
    iget-object v4, p0, Ljava/util/concurrent/SynchronousQueue$Transferer;->head:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 185
    .end local v6    # "isData":Z
    :goto_33
    goto :goto_a

    .line 180
    .restart local v6    # "isData":Z
    :cond_34
    iget-object v0, v4, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->waiter:Ljava/lang/Thread;

    .line 181
    .local v0, "w":Ljava/lang/Thread;
    iget-object v1, v4, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    invoke-virtual {p0, v4, v1}, Ljava/util/concurrent/SynchronousQueue$Transferer;->cmpExHead(Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;)Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 182
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 183
    goto :goto_71

    .line 186
    .end local v0    # "w":Ljava/lang/Thread;
    .end local v6    # "isData":Z
    .end local v8    # "m":Ljava/lang/Object;
    :cond_3f
    :goto_3f
    const-wide/16 v5, 0x0

    cmp-long v5, p2, v5

    if-nez v5, :cond_47

    .line 187
    move-object v8, p1

    .line 188
    .restart local v8    # "m":Ljava/lang/Object;
    goto :goto_71

    .line 190
    .end local v8    # "m":Ljava/lang/Object;
    :cond_47
    if-nez v3, :cond_50

    .line 191
    new-instance v5, Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    invoke-direct {v5, p1, v2}, Ljava/util/concurrent/LinkedTransferQueue$DualNode;-><init>(Ljava/lang/Object;Z)V

    move-object v3, v5

    goto :goto_51

    .line 190
    :cond_50
    move-object v5, v3

    .line 192
    .end local v3    # "s":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .local v5, "s":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :goto_51
    iput-object v4, v5, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 193
    invoke-virtual {p0, v4, v5}, Ljava/util/concurrent/SynchronousQueue$Transferer;->cmpExHead(Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;)Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-result-object v3

    move-object v11, v3

    .end local v4    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .local v11, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-ne v4, v3, :cond_72

    .line 194
    if-eqz v11, :cond_63

    iget-object v3, v11, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->waiter:Ljava/lang/Thread;

    if-nez v3, :cond_61

    goto :goto_63

    :cond_61
    move v10, v1

    goto :goto_64

    :cond_63
    :goto_63
    move v10, v0

    :goto_64
    move-object v9, p0

    move-object v6, p1

    move-wide v7, p2

    invoke-virtual/range {v5 .. v10}, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->await(Ljava/lang/Object;JLjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    .restart local v8    # "m":Ljava/lang/Object;
    if-ne v0, p1, :cond_71

    .line 196
    invoke-direct {p0, v5}, Ljava/util/concurrent/SynchronousQueue$Transferer;->unspliceLifo(Ljava/util/concurrent/LinkedTransferQueue$DualNode;)V

    .line 200
    .end local v5    # "s":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .end local v11    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_71
    :goto_71
    return-object v8

    .line 193
    .end local v8    # "m":Ljava/lang/Object;
    .restart local v5    # "s":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .restart local v11    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_72
    move-object v3, v5

    move-object v4, v11

    goto :goto_a
.end method
