.class public Lsun/security/provider/certpath/AdjacencyList;
.super Ljava/lang/Object;
.source "AdjacencyList.java"


# instance fields
.field private blacklist mOrigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lsun/security/provider/certpath/Vertex;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mStepList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lsun/security/provider/certpath/BuildStep;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lsun/security/provider/certpath/Vertex;",
            ">;>;)V"
        }
    .end annotation

    .line 100
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    .line 102
    iput-object p1, p0, Lsun/security/provider/certpath/AdjacencyList;->mOrigList:Ljava/util/List;

    .line 103
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lsun/security/provider/certpath/AdjacencyList;->buildList(Ljava/util/List;ILsun/security/provider/certpath/BuildStep;)Z

    .line 104
    return-void
.end method

.method private blacklist buildList(Ljava/util/List;ILsun/security/provider/certpath/BuildStep;)Z
    .registers 20
    .param p2, "index"    # I
    .param p3, "follow"    # Lsun/security/provider/certpath/BuildStep;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lsun/security/provider/certpath/Vertex;",
            ">;>;I",
            "Lsun/security/provider/certpath/BuildStep;",
            ")Z"
        }
    .end annotation

    .line 129
    .local p1, "theList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface/range {p1 .. p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 132
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    const/4 v3, 0x1

    .line 134
    .local v3, "allNegOne":Z
    const/4 v4, 0x1

    .line 136
    .local v4, "allXcps":Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-eqz v6, :cond_48

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsun/security/provider/certpath/Vertex;

    .line 137
    .local v6, "v":Lsun/security/provider/certpath/Vertex;
    invoke-virtual {v6}, Lsun/security/provider/certpath/Vertex;->getIndex()I

    move-result v9

    if-eq v9, v7, :cond_36

    .line 140
    invoke-virtual {v6}, Lsun/security/provider/certpath/Vertex;->getIndex()I

    move-result v7

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_3d

    .line 141
    const/4 v3, 0x0

    goto :goto_3d

    .line 143
    :cond_36
    invoke-virtual {v6}, Lsun/security/provider/certpath/Vertex;->getThrowable()Ljava/lang/Throwable;

    move-result-object v7

    if-nez v7, :cond_3d

    .line 144
    const/4 v4, 0x0

    .line 148
    :cond_3d
    :goto_3d
    iget-object v7, v0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    new-instance v9, Lsun/security/provider/certpath/BuildStep;

    invoke-direct {v9, v6, v8}, Lsun/security/provider/certpath/BuildStep;-><init>(Lsun/security/provider/certpath/Vertex;I)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .end local v6    # "v":Lsun/security/provider/certpath/Vertex;
    goto :goto_10

    .line 151
    :cond_48
    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-eqz v3, :cond_b4

    .line 156
    if-eqz v4, :cond_6c

    .line 158
    if-nez p3, :cond_5d

    .line 159
    iget-object v7, v0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    new-instance v8, Lsun/security/provider/certpath/BuildStep;

    invoke-direct {v8, v6, v5}, Lsun/security/provider/certpath/BuildStep;-><init>(Lsun/security/provider/certpath/Vertex;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6b

    .line 161
    :cond_5d
    iget-object v5, v0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    new-instance v6, Lsun/security/provider/certpath/BuildStep;

    invoke-virtual/range {p3 .. p3}, Lsun/security/provider/certpath/BuildStep;->getVertex()Lsun/security/provider/certpath/Vertex;

    move-result-object v7

    invoke-direct {v6, v7, v9}, Lsun/security/provider/certpath/BuildStep;-><init>(Lsun/security/provider/certpath/Vertex;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    :goto_6b
    return v10

    .line 170
    :cond_6c
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v5, "possibles":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_75
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsun/security/provider/certpath/Vertex;

    .line 172
    .local v7, "v":Lsun/security/provider/certpath/Vertex;
    invoke-virtual {v7}, Lsun/security/provider/certpath/Vertex;->getThrowable()Ljava/lang/Throwable;

    move-result-object v9

    if-nez v9, :cond_8a

    .line 173
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    .end local v7    # "v":Lsun/security/provider/certpath/Vertex;
    :cond_8a
    goto :goto_75

    .line 176
    :cond_8b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v8, :cond_a3

    .line 178
    iget-object v6, v0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    new-instance v9, Lsun/security/provider/certpath/BuildStep;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lsun/security/provider/certpath/Vertex;

    invoke-direct {v9, v10, v7}, Lsun/security/provider/certpath/BuildStep;-><init>(Lsun/security/provider/certpath/Vertex;I)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b3

    .line 188
    :cond_a3
    iget-object v6, v0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    new-instance v9, Lsun/security/provider/certpath/BuildStep;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lsun/security/provider/certpath/Vertex;

    invoke-direct {v9, v10, v7}, Lsun/security/provider/certpath/BuildStep;-><init>(Lsun/security/provider/certpath/Vertex;I)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    :goto_b3
    return v8

    .line 200
    .end local v5    # "possibles":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    :cond_b4
    const/4 v11, 0x0

    .line 202
    .local v11, "success":Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_b9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_ef

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lsun/security/provider/certpath/Vertex;

    .line 208
    .local v13, "v":Lsun/security/provider/certpath/Vertex;
    invoke-virtual {v13}, Lsun/security/provider/certpath/Vertex;->getIndex()I

    move-result v14

    if-eq v14, v7, :cond_ee

    .line 209
    invoke-virtual {v13}, Lsun/security/provider/certpath/Vertex;->getIndex()I

    move-result v14

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-eqz v14, :cond_ee

    .line 213
    new-instance v14, Lsun/security/provider/certpath/BuildStep;

    const/4 v15, 0x3

    invoke-direct {v14, v13, v15}, Lsun/security/provider/certpath/BuildStep;-><init>(Lsun/security/provider/certpath/Vertex;I)V

    .line 214
    .local v14, "bs":Lsun/security/provider/certpath/BuildStep;
    iget-object v15, v0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-virtual {v13}, Lsun/security/provider/certpath/Vertex;->getIndex()I

    move-result v15

    invoke-direct {v0, v1, v15, v14}, Lsun/security/provider/certpath/AdjacencyList;->buildList(Ljava/util/List;ILsun/security/provider/certpath/BuildStep;)Z

    move-result v11

    .line 218
    .end local v13    # "v":Lsun/security/provider/certpath/Vertex;
    .end local v14    # "bs":Lsun/security/provider/certpath/BuildStep;
    :cond_ee
    goto :goto_b9

    .line 220
    :cond_ef
    if-eqz v11, :cond_f2

    .line 222
    return v8

    .line 226
    :cond_f2
    if-nez p3, :cond_ff

    .line 227
    iget-object v7, v0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    new-instance v8, Lsun/security/provider/certpath/BuildStep;

    invoke-direct {v8, v6, v5}, Lsun/security/provider/certpath/BuildStep;-><init>(Lsun/security/provider/certpath/Vertex;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10d

    .line 229
    :cond_ff
    iget-object v5, v0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    new-instance v6, Lsun/security/provider/certpath/BuildStep;

    invoke-virtual/range {p3 .. p3}, Lsun/security/provider/certpath/BuildStep;->getVertex()Lsun/security/provider/certpath/Vertex;

    move-result-object v7

    invoke-direct {v6, v7, v9}, Lsun/security/provider/certpath/BuildStep;-><init>(Lsun/security/provider/certpath/Vertex;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    :goto_10d
    return v10
.end method


# virtual methods
.method public blacklist iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lsun/security/provider/certpath/BuildStep;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 9

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 247
    .local v1, "i":I
    iget-object v2, p0, Lsun/security/provider/certpath/AdjacencyList;->mOrigList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 248
    .local v3, "l":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    const-string v4, "LinkedList["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    .end local v1    # "i":I
    .local v5, "i":I
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "]:\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/provider/certpath/Vertex;

    .line 251
    .local v4, "step":Lsun/security/provider/certpath/Vertex;
    invoke-virtual {v4}, Lsun/security/provider/certpath/Vertex;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .end local v4    # "step":Lsun/security/provider/certpath/Vertex;
    goto :goto_2f

    .line 253
    .end local v3    # "l":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    :cond_49
    move v1, v5

    goto :goto_e

    .line 254
    .end local v5    # "i":I
    .restart local v1    # "i":I
    :cond_4b
    const-string v2, "]\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
