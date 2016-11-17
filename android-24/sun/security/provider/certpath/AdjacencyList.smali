.class public Lsun/security/provider/certpath/AdjacencyList;
.super Ljava/lang/Object;
.source "AdjacencyList.java"


# instance fields
.field private mOrigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lsun/security/provider/certpath/Vertex;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStepList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lsun/security/provider/certpath/BuildStep;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lsun/security/provider/certpath/Vertex;",
            ">;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 100
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 101
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    #@a
    .line 102
    iput-object p1, p0, Lsun/security/provider/certpath/AdjacencyList;->mOrigList:Ljava/util/List;

    #@c
    .line 103
    const/4 v0, 0x0

    #@d
    const/4 v1, 0x0

    #@e
    invoke-direct {p0, p1, v0, v1}, Lsun/security/provider/certpath/AdjacencyList;->buildList(Ljava/util/List;ILsun/security/provider/certpath/BuildStep;)Z

    #@11
    .line 100
    return-void
.end method

.method private buildList(Ljava/util/List;ILsun/security/provider/certpath/BuildStep;)Z
    .locals 12
    .param p2, "index"    # I
    .param p3, "follow"    # Lsun/security/provider/certpath/BuildStep;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lsun/security/provider/certpath/Vertex;",
            ">;>;I",
            "Lsun/security/provider/certpath/BuildStep;",
            ")Z"
        }
    .end annotation

    #@0
    .prologue
    .line 129
    .local p1, "theList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;>;"
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3
    move-result-object v3

    #@4
    check-cast v3, Ljava/util/List;

    #@6
    .line 132
    .local v3, "l":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    const/4 v0, 0x1

    #@7
    .line 134
    .local v0, "allNegOne":Z
    const/4 v1, 0x1

    #@8
    .line 136
    .local v1, "allXcps":Z
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v7

    #@c
    .local v7, "v$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v8

    #@10
    if-eqz v8, :cond_2

    #@12
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v6

    #@16
    check-cast v6, Lsun/security/provider/certpath/Vertex;

    #@18
    .line 137
    .local v6, "v":Lsun/security/provider/certpath/Vertex;
    invoke-virtual {v6}, Lsun/security/provider/certpath/Vertex;->getIndex()I

    #@1b
    move-result v8

    #@1c
    const/4 v9, -0x1

    #@1d
    if-eq v8, v9, :cond_1

    #@1f
    .line 140
    invoke-virtual {v6}, Lsun/security/provider/certpath/Vertex;->getIndex()I

    #@22
    move-result v8

    #@23
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v8

    #@27
    check-cast v8, Ljava/util/List;

    #@29
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@2c
    move-result v8

    #@2d
    if-eqz v8, :cond_0

    #@2f
    .line 141
    const/4 v0, 0x0

    #@30
    .line 148
    :cond_0
    :goto_1
    iget-object v8, p0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    #@32
    new-instance v9, Lsun/security/provider/certpath/BuildStep;

    #@34
    const/4 v10, 0x1

    #@35
    invoke-direct {v9, v6, v10}, Lsun/security/provider/certpath/BuildStep;-><init>(Lsun/security/provider/certpath/Vertex;I)V

    #@38
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3b
    goto :goto_0

    #@3c
    .line 143
    :cond_1
    invoke-virtual {v6}, Lsun/security/provider/certpath/Vertex;->getThrowable()Ljava/lang/Throwable;

    #@3f
    move-result-object v8

    #@40
    if-nez v8, :cond_0

    #@42
    .line 144
    const/4 v1, 0x0

    #@43
    goto :goto_1

    #@44
    .line 151
    .end local v6    # "v":Lsun/security/provider/certpath/Vertex;
    :cond_2
    if-eqz v0, :cond_8

    #@46
    .line 156
    if-eqz v1, :cond_4

    #@48
    .line 158
    if-nez p3, :cond_3

    #@4a
    .line 159
    iget-object v8, p0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    #@4c
    new-instance v9, Lsun/security/provider/certpath/BuildStep;

    #@4e
    const/4 v10, 0x0

    #@4f
    const/4 v11, 0x4

    #@50
    invoke-direct {v9, v10, v11}, Lsun/security/provider/certpath/BuildStep;-><init>(Lsun/security/provider/certpath/Vertex;I)V

    #@53
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@56
    .line 164
    :goto_2
    const/4 v8, 0x0

    #@57
    return v8

    #@58
    .line 161
    :cond_3
    iget-object v8, p0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    #@5a
    new-instance v9, Lsun/security/provider/certpath/BuildStep;

    #@5c
    invoke-virtual {p3}, Lsun/security/provider/certpath/BuildStep;->getVertex()Lsun/security/provider/certpath/Vertex;

    #@5f
    move-result-object v10

    #@60
    .line 162
    const/4 v11, 0x2

    #@61
    .line 161
    invoke-direct {v9, v10, v11}, Lsun/security/provider/certpath/BuildStep;-><init>(Lsun/security/provider/certpath/Vertex;I)V

    #@64
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@67
    goto :goto_2

    #@68
    .line 170
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    #@6a
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@6d
    .line 171
    .local v4, "possibles":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@70
    move-result-object v7

    #@71
    :cond_5
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@74
    move-result v8

    #@75
    if-eqz v8, :cond_6

    #@77
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7a
    move-result-object v6

    #@7b
    check-cast v6, Lsun/security/provider/certpath/Vertex;

    #@7d
    .line 172
    .restart local v6    # "v":Lsun/security/provider/certpath/Vertex;
    invoke-virtual {v6}, Lsun/security/provider/certpath/Vertex;->getThrowable()Ljava/lang/Throwable;

    #@80
    move-result-object v8

    #@81
    if-nez v8, :cond_5

    #@83
    .line 173
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@86
    goto :goto_3

    #@87
    .line 176
    .end local v6    # "v":Lsun/security/provider/certpath/Vertex;
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@8a
    move-result v8

    #@8b
    const/4 v9, 0x1

    #@8c
    if-ne v8, v9, :cond_7

    #@8e
    .line 178
    iget-object v9, p0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    #@90
    new-instance v10, Lsun/security/provider/certpath/BuildStep;

    #@92
    const/4 v8, 0x0

    #@93
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@96
    move-result-object v8

    #@97
    check-cast v8, Lsun/security/provider/certpath/Vertex;

    #@99
    .line 179
    const/4 v11, 0x5

    #@9a
    .line 178
    invoke-direct {v10, v8, v11}, Lsun/security/provider/certpath/BuildStep;-><init>(Lsun/security/provider/certpath/Vertex;I)V

    #@9d
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a0
    .line 192
    :goto_4
    const/4 v8, 0x1

    #@a1
    return v8

    #@a2
    .line 188
    :cond_7
    iget-object v9, p0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    #@a4
    new-instance v10, Lsun/security/provider/certpath/BuildStep;

    #@a6
    const/4 v8, 0x0

    #@a7
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@aa
    move-result-object v8

    #@ab
    check-cast v8, Lsun/security/provider/certpath/Vertex;

    #@ad
    .line 189
    const/4 v11, 0x5

    #@ae
    .line 188
    invoke-direct {v10, v8, v11}, Lsun/security/provider/certpath/BuildStep;-><init>(Lsun/security/provider/certpath/Vertex;I)V

    #@b1
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b4
    goto :goto_4

    #@b5
    .line 200
    .end local v4    # "possibles":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    :cond_8
    const/4 v5, 0x0

    #@b6
    .line 202
    .local v5, "success":Z
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b9
    move-result-object v7

    #@ba
    .end local v5    # "success":Z
    :cond_9
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@bd
    move-result v8

    #@be
    if-eqz v8, :cond_a

    #@c0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@c3
    move-result-object v6

    #@c4
    check-cast v6, Lsun/security/provider/certpath/Vertex;

    #@c6
    .line 208
    .restart local v6    # "v":Lsun/security/provider/certpath/Vertex;
    invoke-virtual {v6}, Lsun/security/provider/certpath/Vertex;->getIndex()I

    #@c9
    move-result v8

    #@ca
    const/4 v9, -0x1

    #@cb
    if-eq v8, v9, :cond_9

    #@cd
    .line 209
    invoke-virtual {v6}, Lsun/security/provider/certpath/Vertex;->getIndex()I

    #@d0
    move-result v8

    #@d1
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@d4
    move-result-object v8

    #@d5
    check-cast v8, Ljava/util/List;

    #@d7
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@da
    move-result v8

    #@db
    if-eqz v8, :cond_9

    #@dd
    .line 213
    new-instance v2, Lsun/security/provider/certpath/BuildStep;

    #@df
    const/4 v8, 0x3

    #@e0
    invoke-direct {v2, v6, v8}, Lsun/security/provider/certpath/BuildStep;-><init>(Lsun/security/provider/certpath/Vertex;I)V

    #@e3
    .line 214
    .local v2, "bs":Lsun/security/provider/certpath/BuildStep;
    iget-object v8, p0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    #@e5
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e8
    .line 215
    invoke-virtual {v6}, Lsun/security/provider/certpath/Vertex;->getIndex()I

    #@eb
    move-result v8

    #@ec
    invoke-direct {p0, p1, v8, v2}, Lsun/security/provider/certpath/AdjacencyList;->buildList(Ljava/util/List;ILsun/security/provider/certpath/BuildStep;)Z

    #@ef
    move-result v5

    #@f0
    .local v5, "success":Z
    goto :goto_5

    #@f1
    .line 220
    .end local v2    # "bs":Lsun/security/provider/certpath/BuildStep;
    .end local v5    # "success":Z
    .end local v6    # "v":Lsun/security/provider/certpath/Vertex;
    :cond_a
    if-eqz v5, :cond_b

    #@f3
    .line 222
    const/4 v8, 0x1

    #@f4
    return v8

    #@f5
    .line 226
    :cond_b
    if-nez p3, :cond_c

    #@f7
    .line 227
    iget-object v8, p0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    #@f9
    new-instance v9, Lsun/security/provider/certpath/BuildStep;

    #@fb
    const/4 v10, 0x0

    #@fc
    const/4 v11, 0x4

    #@fd
    invoke-direct {v9, v10, v11}, Lsun/security/provider/certpath/BuildStep;-><init>(Lsun/security/provider/certpath/Vertex;I)V

    #@100
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@103
    .line 232
    :goto_6
    const/4 v8, 0x0

    #@104
    return v8

    #@105
    .line 229
    :cond_c
    iget-object v8, p0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    #@107
    new-instance v9, Lsun/security/provider/certpath/BuildStep;

    #@109
    invoke-virtual {p3}, Lsun/security/provider/certpath/BuildStep;->getVertex()Lsun/security/provider/certpath/Vertex;

    #@10c
    move-result-object v10

    #@10d
    .line 230
    const/4 v11, 0x2

    #@10e
    .line 229
    invoke-direct {v9, v10, v11}, Lsun/security/provider/certpath/BuildStep;-><init>(Lsun/security/provider/certpath/Vertex;I)V

    #@111
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@114
    goto :goto_6
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lsun/security/provider/certpath/BuildStep;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v7, "[\n"

    #@5
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 246
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@9
    .line 247
    .local v0, "i":I
    iget-object v7, p0, Lsun/security/provider/certpath/AdjacencyList;->mOrigList:Ljava/util/List;

    #@b
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v3

    #@f
    .local v3, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v7

    #@13
    if-eqz v7, :cond_1

    #@15
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Ljava/util/List;

    #@1b
    .line 248
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    const-string/jumbo v7, "LinkedList["

    #@1e
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v7

    #@22
    add-int/lit8 v1, v0, 0x1

    #@24
    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v7

    #@28
    const-string/jumbo v8, "]:\n"

    #@2b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 250
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@31
    move-result-object v6

    #@32
    .local v6, "step$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@35
    move-result v7

    #@36
    if-eqz v7, :cond_0

    #@38
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3b
    move-result-object v5

    #@3c
    check-cast v5, Lsun/security/provider/certpath/Vertex;

    #@3e
    .line 251
    .local v5, "step":Lsun/security/provider/certpath/Vertex;
    invoke-virtual {v5}, Lsun/security/provider/certpath/Vertex;->toString()Ljava/lang/String;

    #@41
    move-result-object v7

    #@42
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v7

    #@46
    const-string/jumbo v8, "\n"

    #@49
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    goto :goto_1

    #@4d
    .end local v5    # "step":Lsun/security/provider/certpath/Vertex;
    :cond_0
    move v0, v1

    #@4e
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    #@4f
    .line 254
    .end local v2    # "l":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    .end local v6    # "step$iterator":Ljava/util/Iterator;
    :cond_1
    const-string/jumbo v7, "]\n"

    #@52
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    .line 256
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v7

    #@59
    return-object v7
.end method
