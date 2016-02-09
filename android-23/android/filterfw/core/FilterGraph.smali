.class public Landroid/filterfw/core/FilterGraph;
.super Ljava/lang/Object;
.source "FilterGraph.java"


# static fields
.field public static final AUTOBRANCH_OFF:I = 0x0

.field public static final AUTOBRANCH_SYNCED:I = 0x1

.field public static final AUTOBRANCH_UNSYNCED:I = 0x2

.field public static final TYPECHECK_DYNAMIC:I = 0x1

.field public static final TYPECHECK_OFF:I = 0x0

.field public static final TYPECHECK_STRICT:I = 0x2


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAutoBranchMode:I

.field private mDiscardUnconnectedOutputs:Z

.field private mFilters:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/filterfw/core/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private mIsReady:Z

.field private mLogVerbose:Z

.field private mNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/filterfw/core/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private mPreconnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/filterfw/core/OutputPort;",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/filterfw/core/InputPort;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTypeCheckMode:I


# direct methods
.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    const/4 v1, 0x0

    #@2
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 40
    new-instance v0, Ljava/util/HashSet;

    #@7
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@a
    iput-object v0, p0, Landroid/filterfw/core/FilterGraph;->mFilters:Ljava/util/HashSet;

    #@c
    .line 41
    new-instance v0, Ljava/util/HashMap;

    #@e
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@11
    iput-object v0, p0, Landroid/filterfw/core/FilterGraph;->mNameMap:Ljava/util/HashMap;

    #@13
    .line 42
    new-instance v0, Ljava/util/HashMap;

    #@15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@18
    iput-object v0, p0, Landroid/filterfw/core/FilterGraph;->mPreconnections:Ljava/util/HashMap;

    #@1a
    .line 53
    iput-boolean v1, p0, Landroid/filterfw/core/FilterGraph;->mIsReady:Z

    #@1c
    .line 54
    iput v1, p0, Landroid/filterfw/core/FilterGraph;->mAutoBranchMode:I

    #@1e
    .line 55
    iput v2, p0, Landroid/filterfw/core/FilterGraph;->mTypeCheckMode:I

    #@20
    .line 56
    iput-boolean v1, p0, Landroid/filterfw/core/FilterGraph;->mDiscardUnconnectedOutputs:Z

    #@22
    .line 59
    const-string/jumbo v0, "FilterGraph"

    #@25
    iput-object v0, p0, Landroid/filterfw/core/FilterGraph;->TAG:Ljava/lang/String;

    #@27
    .line 62
    iget-object v0, p0, Landroid/filterfw/core/FilterGraph;->TAG:Ljava/lang/String;

    #@29
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@2c
    move-result v0

    #@2d
    iput-boolean v0, p0, Landroid/filterfw/core/FilterGraph;->mLogVerbose:Z

    #@2f
    .line 61
    return-void
.end method

.method private checkConnections()V
    .locals 0

    #@0
    .prologue
    .line 271
    return-void
.end method

.method private connectPorts()V
    .locals 14

    #@0
    .prologue
    .line 313
    const/4 v1, 0x1

    #@1
    .line 314
    .local v1, "branchId":I
    iget-object v11, p0, Landroid/filterfw/core/FilterGraph;->mPreconnections:Ljava/util/HashMap;

    #@3
    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@6
    move-result-object v11

    #@7
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v7

    #@b
    .local v7, "connection$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v11

    #@f
    if-eqz v11, :cond_4

    #@11
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v6

    #@15
    check-cast v6, Ljava/util/Map$Entry;

    #@17
    .line 315
    .local v6, "connection":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/filterfw/core/OutputPort;Ljava/util/LinkedList<Landroid/filterfw/core/InputPort;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1a
    move-result-object v10

    #@1b
    check-cast v10, Landroid/filterfw/core/OutputPort;

    #@1d
    .line 316
    .local v10, "outputPort":Landroid/filterfw/core/OutputPort;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@20
    move-result-object v9

    #@21
    check-cast v9, Ljava/util/LinkedList;

    #@23
    .line 317
    .local v9, "inputPorts":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/filterfw/core/InputPort;>;"
    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    #@26
    move-result v11

    #@27
    const/4 v12, 0x1

    #@28
    if-ne v11, v12, :cond_0

    #@2a
    .line 318
    const/4 v11, 0x0

    #@2b
    invoke-virtual {v9, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v11

    #@2f
    check-cast v11, Landroid/filterfw/core/InputPort;

    #@31
    invoke-virtual {v10, v11}, Landroid/filterfw/core/OutputPort;->connectTo(Landroid/filterfw/core/InputPort;)V

    #@34
    goto :goto_0

    #@35
    .line 319
    :cond_0
    iget v11, p0, Landroid/filterfw/core/FilterGraph;->mAutoBranchMode:I

    #@37
    if-nez v11, :cond_1

    #@39
    .line 320
    new-instance v11, Ljava/lang/RuntimeException;

    #@3b
    new-instance v12, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v13, "Attempting to connect "

    #@43
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v12

    #@47
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v12

    #@4b
    const-string/jumbo v13, " to multiple "

    #@4e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v12

    #@52
    .line 321
    const-string/jumbo v13, "filter ports! Enable auto-branching to allow this."

    #@55
    .line 320
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v12

    #@59
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v12

    #@5d
    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@60
    throw v11

    #@61
    .line 323
    :cond_1
    iget-boolean v11, p0, Landroid/filterfw/core/FilterGraph;->mLogVerbose:Z

    #@63
    if-eqz v11, :cond_2

    #@65
    iget-object v11, p0, Landroid/filterfw/core/FilterGraph;->TAG:Ljava/lang/String;

    #@67
    new-instance v12, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v13, "Creating branch for "

    #@6f
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v12

    #@73
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v12

    #@77
    const-string/jumbo v13, "!"

    #@7a
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v12

    #@7e
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v12

    #@82
    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@85
    .line 324
    :cond_2
    const/4 v0, 0x0

    #@86
    .line 325
    .local v0, "branch":Landroid/filterpacks/base/FrameBranch;
    iget v11, p0, Landroid/filterfw/core/FilterGraph;->mAutoBranchMode:I

    #@88
    const/4 v12, 0x1

    #@89
    if-ne v11, v12, :cond_3

    #@8b
    .line 326
    new-instance v0, Landroid/filterpacks/base/FrameBranch;

    #@8d
    .end local v0    # "branch":Landroid/filterpacks/base/FrameBranch;
    new-instance v11, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    const-string/jumbo v12, "branch"

    #@95
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v11

    #@99
    add-int/lit8 v2, v1, 0x1

    #@9b
    .end local v1    # "branchId":I
    .local v2, "branchId":I
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v11

    #@9f
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a2
    move-result-object v11

    #@a3
    invoke-direct {v0, v11}, Landroid/filterpacks/base/FrameBranch;-><init>(Ljava/lang/String;)V

    #@a6
    .line 330
    .local v0, "branch":Landroid/filterpacks/base/FrameBranch;
    new-instance v5, Landroid/filterfw/core/KeyValueMap;

    #@a8
    invoke-direct {v5}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    #@ab
    .line 331
    .local v5, "branchParams":Landroid/filterfw/core/KeyValueMap;
    const/4 v11, 0x2

    #@ac
    new-array v11, v11, [Ljava/lang/Object;

    #@ae
    const-string/jumbo v12, "outputs"

    #@b1
    const/4 v13, 0x0

    #@b2
    aput-object v12, v11, v13

    #@b4
    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    #@b7
    move-result v12

    #@b8
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@bb
    move-result-object v12

    #@bc
    const/4 v13, 0x1

    #@bd
    aput-object v12, v11, v13

    #@bf
    invoke-virtual {v0, v11}, Landroid/filterpacks/base/FrameBranch;->initWithAssignmentList([Ljava/lang/Object;)V

    #@c2
    .line 332
    invoke-virtual {p0, v0}, Landroid/filterfw/core/FilterGraph;->addFilter(Landroid/filterfw/core/Filter;)Z

    #@c5
    .line 333
    const-string/jumbo v11, "in"

    #@c8
    invoke-virtual {v0, v11}, Landroid/filterpacks/base/FrameBranch;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    #@cb
    move-result-object v11

    #@cc
    invoke-virtual {v10, v11}, Landroid/filterfw/core/OutputPort;->connectTo(Landroid/filterfw/core/InputPort;)V

    #@cf
    .line 334
    invoke-virtual {v9}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    #@d2
    move-result-object v8

    #@d3
    .line 335
    .local v8, "inputPortIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/filterfw/core/InputPort;>;"
    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->getOutputPorts()Ljava/util/Collection;

    #@d6
    move-result-object v11

    #@d7
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@da
    move-result-object v4

    #@db
    .local v4, "branchOutPort$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@de
    move-result v11

    #@df
    if-eqz v11, :cond_5

    #@e1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e4
    move-result-object v3

    #@e5
    check-cast v3, Landroid/filterfw/core/OutputPort;

    #@e7
    .line 336
    .local v3, "branchOutPort":Landroid/filterfw/core/OutputPort;
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ea
    move-result-object v11

    #@eb
    check-cast v11, Landroid/filterfw/core/InputPort;

    #@ed
    invoke-virtual {v3, v11}, Landroid/filterfw/core/OutputPort;->connectTo(Landroid/filterfw/core/InputPort;)V

    #@f0
    goto :goto_1

    #@f1
    .line 328
    .end local v2    # "branchId":I
    .end local v3    # "branchOutPort":Landroid/filterfw/core/OutputPort;
    .end local v4    # "branchOutPort$iterator":Ljava/util/Iterator;
    .end local v5    # "branchParams":Landroid/filterfw/core/KeyValueMap;
    .end local v8    # "inputPortIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/filterfw/core/InputPort;>;"
    .local v0, "branch":Landroid/filterpacks/base/FrameBranch;
    .restart local v1    # "branchId":I
    :cond_3
    new-instance v11, Ljava/lang/RuntimeException;

    #@f3
    const-string/jumbo v12, "TODO: Unsynced branches not implemented yet!"

    #@f6
    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@f9
    throw v11

    #@fa
    .line 340
    .end local v0    # "branch":Landroid/filterpacks/base/FrameBranch;
    .end local v6    # "connection":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/filterfw/core/OutputPort;Ljava/util/LinkedList<Landroid/filterfw/core/InputPort;>;>;"
    .end local v9    # "inputPorts":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/filterfw/core/InputPort;>;"
    .end local v10    # "outputPort":Landroid/filterfw/core/OutputPort;
    :cond_4
    iget-object v11, p0, Landroid/filterfw/core/FilterGraph;->mPreconnections:Ljava/util/HashMap;

    #@fc
    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    #@ff
    .line 312
    return-void

    #@100
    .end local v1    # "branchId":I
    .local v0, "branch":Landroid/filterpacks/base/FrameBranch;
    .restart local v2    # "branchId":I
    .restart local v4    # "branchOutPort$iterator":Ljava/util/Iterator;
    .restart local v5    # "branchParams":Landroid/filterfw/core/KeyValueMap;
    .restart local v6    # "connection":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/filterfw/core/OutputPort;Ljava/util/LinkedList<Landroid/filterfw/core/InputPort;>;>;"
    .restart local v8    # "inputPortIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/filterfw/core/InputPort;>;"
    .restart local v9    # "inputPorts":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/filterfw/core/InputPort;>;"
    .restart local v10    # "outputPort":Landroid/filterfw/core/OutputPort;
    :cond_5
    move v1, v2

    #@101
    .end local v2    # "branchId":I
    .restart local v1    # "branchId":I
    goto/16 :goto_0
.end method

.method private discardUnconnectedOutputs()V
    .locals 10

    #@0
    .prologue
    .line 277
    new-instance v0, Ljava/util/LinkedList;

    #@2
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@5
    .line 278
    .local v0, "addedFilters":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/filterfw/core/Filter;>;"
    iget-object v7, p0, Landroid/filterfw/core/FilterGraph;->mFilters:Ljava/util/HashSet;

    #@7
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v2

    #@b
    .local v2, "filter$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v7

    #@f
    if-eqz v7, :cond_3

    #@11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroid/filterfw/core/Filter;

    #@17
    .line 279
    .local v1, "filter":Landroid/filterfw/core/Filter;
    const/4 v3, 0x0

    #@18
    .line 280
    .local v3, "id":I
    invoke-virtual {v1}, Landroid/filterfw/core/Filter;->getOutputPorts()Ljava/util/Collection;

    #@1b
    move-result-object v7

    #@1c
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v6

    #@20
    .local v6, "port$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v7

    #@24
    if-eqz v7, :cond_0

    #@26
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v5

    #@2a
    check-cast v5, Landroid/filterfw/core/OutputPort;

    #@2c
    .line 281
    .local v5, "port":Landroid/filterfw/core/OutputPort;
    invoke-virtual {v5}, Landroid/filterfw/core/OutputPort;->isConnected()Z

    #@2f
    move-result v7

    #@30
    if-nez v7, :cond_1

    #@32
    .line 282
    iget-boolean v7, p0, Landroid/filterfw/core/FilterGraph;->mLogVerbose:Z

    #@34
    if-eqz v7, :cond_2

    #@36
    iget-object v7, p0, Landroid/filterfw/core/FilterGraph;->TAG:Ljava/lang/String;

    #@38
    new-instance v8, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v9, "Autoconnecting unconnected "

    #@40
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v8

    #@44
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v8

    #@48
    const-string/jumbo v9, " to Null filter."

    #@4b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v8

    #@4f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v8

    #@53
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@56
    .line 283
    :cond_2
    new-instance v4, Landroid/filterpacks/base/NullFilter;

    #@58
    new-instance v7, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    invoke-virtual {v1}, Landroid/filterfw/core/Filter;->getName()Ljava/lang/String;

    #@60
    move-result-object v8

    #@61
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v7

    #@65
    const-string/jumbo v8, "ToNull"

    #@68
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v7

    #@6c
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v7

    #@70
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v7

    #@74
    invoke-direct {v4, v7}, Landroid/filterpacks/base/NullFilter;-><init>(Ljava/lang/String;)V

    #@77
    .line 284
    .local v4, "nullFilter":Landroid/filterpacks/base/NullFilter;
    invoke-virtual {v4}, Landroid/filterpacks/base/NullFilter;->init()V

    #@7a
    .line 285
    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@7d
    .line 286
    const-string/jumbo v7, "frame"

    #@80
    invoke-virtual {v4, v7}, Landroid/filterpacks/base/NullFilter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    #@83
    move-result-object v7

    #@84
    invoke-virtual {v5, v7}, Landroid/filterfw/core/OutputPort;->connectTo(Landroid/filterfw/core/InputPort;)V

    #@87
    .line 287
    add-int/lit8 v3, v3, 0x1

    #@89
    goto :goto_0

    #@8a
    .line 292
    .end local v1    # "filter":Landroid/filterfw/core/Filter;
    .end local v3    # "id":I
    .end local v4    # "nullFilter":Landroid/filterpacks/base/NullFilter;
    .end local v5    # "port":Landroid/filterfw/core/OutputPort;
    .end local v6    # "port$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8d
    move-result-object v2

    #@8e
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@91
    move-result v7

    #@92
    if-eqz v7, :cond_4

    #@94
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@97
    move-result-object v1

    #@98
    check-cast v1, Landroid/filterfw/core/Filter;

    #@9a
    .line 293
    .restart local v1    # "filter":Landroid/filterfw/core/Filter;
    invoke-virtual {p0, v1}, Landroid/filterfw/core/FilterGraph;->addFilter(Landroid/filterfw/core/Filter;)Z

    #@9d
    goto :goto_1

    #@9e
    .line 275
    .end local v1    # "filter":Landroid/filterfw/core/Filter;
    :cond_4
    return-void
.end method

.method private getSourceFilters()Ljava/util/HashSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Landroid/filterfw/core/Filter;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 344
    new-instance v2, Ljava/util/HashSet;

    #@2
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 345
    .local v2, "sourceFilters":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/filterfw/core/Filter;>;"
    invoke-virtual {p0}, Landroid/filterfw/core/FilterGraph;->getFilters()Ljava/util/Set;

    #@8
    move-result-object v3

    #@9
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .local v1, "filter$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_2

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/filterfw/core/Filter;

    #@19
    .line 346
    .local v0, "filter":Landroid/filterfw/core/Filter;
    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->getNumberOfConnectedInputs()I

    #@1c
    move-result v3

    #@1d
    if-nez v3, :cond_0

    #@1f
    .line 347
    iget-boolean v3, p0, Landroid/filterfw/core/FilterGraph;->mLogVerbose:Z

    #@21
    if-eqz v3, :cond_1

    #@23
    iget-object v3, p0, Landroid/filterfw/core/FilterGraph;->TAG:Ljava/lang/String;

    #@25
    new-instance v4, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v5, "Found source filter: "

    #@2d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 348
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@3f
    goto :goto_0

    #@40
    .line 351
    .end local v0    # "filter":Landroid/filterfw/core/Filter;
    :cond_2
    return-object v2
.end method

.method private preconnect(Landroid/filterfw/core/OutputPort;Landroid/filterfw/core/InputPort;)V
    .locals 2
    .param p1, "outPort"    # Landroid/filterfw/core/OutputPort;
    .param p2, "inPort"    # Landroid/filterfw/core/InputPort;

    #@0
    .prologue
    .line 304
    iget-object v1, p0, Landroid/filterfw/core/FilterGraph;->mPreconnections:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/LinkedList;

    #@8
    .line 305
    .local v0, "targets":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/filterfw/core/InputPort;>;"
    if-nez v0, :cond_0

    #@a
    .line 306
    new-instance v0, Ljava/util/LinkedList;

    #@c
    .end local v0    # "targets":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/filterfw/core/InputPort;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@f
    .line 307
    .restart local v0    # "targets":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/filterfw/core/InputPort;>;"
    iget-object v1, p0, Landroid/filterfw/core/FilterGraph;->mPreconnections:Ljava/util/HashMap;

    #@11
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 309
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@17
    .line 302
    return-void
.end method

.method private readyForProcessing(Landroid/filterfw/core/Filter;Ljava/util/Set;)Z
    .locals 5
    .param p1, "filter"    # Landroid/filterfw/core/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/filterfw/core/Filter;",
            "Ljava/util/Set",
            "<",
            "Landroid/filterfw/core/Filter;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "processed":Ljava/util/Set;, "Ljava/util/Set<Landroid/filterfw/core/Filter;>;"
    const/4 v4, 0x0

    #@1
    .line 177
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@4
    move-result v3

    #@5
    if-eqz v3, :cond_0

    #@7
    .line 178
    return v4

    #@8
    .line 182
    :cond_0
    invoke-virtual {p1}, Landroid/filterfw/core/Filter;->getInputPorts()Ljava/util/Collection;

    #@b
    move-result-object v3

    #@c
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v2

    #@10
    .local v2, "port$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_2

    #@16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Landroid/filterfw/core/InputPort;

    #@1c
    .line 183
    .local v1, "port":Landroid/filterfw/core/InputPort;
    invoke-virtual {v1}, Landroid/filterfw/core/InputPort;->getSourceFilter()Landroid/filterfw/core/Filter;

    #@1f
    move-result-object v0

    #@20
    .line 184
    .local v0, "dependency":Landroid/filterfw/core/Filter;
    if-eqz v0, :cond_1

    #@22
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@25
    move-result v3

    #@26
    if-nez v3, :cond_1

    #@28
    .line 185
    return v4

    #@29
    .line 188
    .end local v0    # "dependency":Landroid/filterfw/core/Filter;
    .end local v1    # "port":Landroid/filterfw/core/InputPort;
    :cond_2
    const/4 v3, 0x1

    #@2a
    return v3
.end method

.method private removeFilter(Landroid/filterfw/core/Filter;)V
    .locals 2
    .param p1, "filter"    # Landroid/filterfw/core/Filter;

    #@0
    .prologue
    .line 298
    iget-object v0, p0, Landroid/filterfw/core/FilterGraph;->mFilters:Ljava/util/HashSet;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@5
    .line 299
    iget-object v0, p0, Landroid/filterfw/core/FilterGraph;->mNameMap:Ljava/util/HashMap;

    #@7
    invoke-virtual {p1}, Landroid/filterfw/core/Filter;->getName()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 297
    return-void
.end method

.method private runTypeCheck()V
    .locals 9

    #@0
    .prologue
    .line 192
    new-instance v1, Ljava/util/Stack;

    #@2
    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    #@5
    .line 193
    .local v1, "filterStack":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/filterfw/core/Filter;>;"
    new-instance v4, Ljava/util/HashSet;

    #@7
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@a
    .line 194
    .local v4, "processedFilters":Ljava/util/Set;, "Ljava/util/Set<Landroid/filterfw/core/Filter;>;"
    invoke-direct {p0}, Landroid/filterfw/core/FilterGraph;->getSourceFilters()Ljava/util/HashSet;

    #@d
    move-result-object v6

    #@e
    invoke-virtual {v1, v6}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    #@11
    .line 196
    :cond_0
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    #@14
    move-result v6

    #@15
    if-nez v6, :cond_3

    #@17
    .line 198
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/filterfw/core/Filter;

    #@1d
    .line 199
    .local v0, "filter":Landroid/filterfw/core/Filter;
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@20
    .line 202
    invoke-direct {p0, v0}, Landroid/filterfw/core/FilterGraph;->updateOutputs(Landroid/filterfw/core/Filter;)V

    #@23
    .line 205
    iget-boolean v6, p0, Landroid/filterfw/core/FilterGraph;->mLogVerbose:Z

    #@25
    if-eqz v6, :cond_1

    #@27
    iget-object v6, p0, Landroid/filterfw/core/FilterGraph;->TAG:Ljava/lang/String;

    #@29
    new-instance v7, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v8, "Running type check on "

    #@31
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v7

    #@35
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v7

    #@39
    const-string/jumbo v8, "..."

    #@3c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v7

    #@40
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v7

    #@44
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    .line 206
    :cond_1
    invoke-direct {p0, v0}, Landroid/filterfw/core/FilterGraph;->runTypeCheckOn(Landroid/filterfw/core/Filter;)V

    #@4a
    .line 209
    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->getOutputPorts()Ljava/util/Collection;

    #@4d
    move-result-object v6

    #@4e
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@51
    move-result-object v3

    #@52
    .local v3, "port$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@55
    move-result v6

    #@56
    if-eqz v6, :cond_0

    #@58
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5b
    move-result-object v2

    #@5c
    check-cast v2, Landroid/filterfw/core/OutputPort;

    #@5e
    .line 210
    .local v2, "port":Landroid/filterfw/core/OutputPort;
    invoke-virtual {v2}, Landroid/filterfw/core/OutputPort;->getTargetFilter()Landroid/filterfw/core/Filter;

    #@61
    move-result-object v5

    #@62
    .line 211
    .local v5, "target":Landroid/filterfw/core/Filter;
    if-eqz v5, :cond_2

    #@64
    invoke-direct {p0, v5, v4}, Landroid/filterfw/core/FilterGraph;->readyForProcessing(Landroid/filterfw/core/Filter;Ljava/util/Set;)Z

    #@67
    move-result v6

    #@68
    if-eqz v6, :cond_2

    #@6a
    .line 212
    invoke-virtual {v1, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@6d
    goto :goto_0

    #@6e
    .line 218
    .end local v0    # "filter":Landroid/filterfw/core/Filter;
    .end local v2    # "port":Landroid/filterfw/core/OutputPort;
    .end local v3    # "port$iterator":Ljava/util/Iterator;
    .end local v5    # "target":Landroid/filterfw/core/Filter;
    :cond_3
    invoke-interface {v4}, Ljava/util/Set;->size()I

    #@71
    move-result v6

    #@72
    invoke-virtual {p0}, Landroid/filterfw/core/FilterGraph;->getFilters()Ljava/util/Set;

    #@75
    move-result-object v7

    #@76
    invoke-interface {v7}, Ljava/util/Set;->size()I

    #@79
    move-result v7

    #@7a
    if-eq v6, v7, :cond_4

    #@7c
    .line 219
    new-instance v6, Ljava/lang/RuntimeException;

    #@7e
    const-string/jumbo v7, "Could not schedule all filters! Is your graph malformed?"

    #@81
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@84
    throw v6

    #@85
    .line 191
    :cond_4
    return-void
.end method

.method private runTypeCheckOn(Landroid/filterfw/core/Filter;)V
    .locals 9
    .param p1, "filter"    # Landroid/filterfw/core/Filter;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 240
    invoke-virtual {p1}, Landroid/filterfw/core/Filter;->getInputPorts()Ljava/util/Collection;

    #@4
    move-result-object v5

    #@5
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v2

    #@9
    .local v2, "inputPort$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_3

    #@f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Landroid/filterfw/core/InputPort;

    #@15
    .line 241
    .local v1, "inputPort":Landroid/filterfw/core/InputPort;
    iget-boolean v5, p0, Landroid/filterfw/core/FilterGraph;->mLogVerbose:Z

    #@17
    if-eqz v5, :cond_1

    #@19
    iget-object v5, p0, Landroid/filterfw/core/FilterGraph;->TAG:Ljava/lang/String;

    #@1b
    new-instance v6, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v7, "Type checking port "

    #@23
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v6

    #@27
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v6

    #@2f
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 242
    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/InputPort;->getSourceFormat()Landroid/filterfw/core/FrameFormat;

    #@35
    move-result-object v3

    #@36
    .line 243
    .local v3, "sourceFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {v1}, Landroid/filterfw/core/InputPort;->getPortFormat()Landroid/filterfw/core/FrameFormat;

    #@39
    move-result-object v4

    #@3a
    .line 244
    .local v4, "targetFormat":Landroid/filterfw/core/FrameFormat;
    if-eqz v3, :cond_0

    #@3c
    if-eqz v4, :cond_0

    #@3e
    .line 245
    iget-boolean v5, p0, Landroid/filterfw/core/FilterGraph;->mLogVerbose:Z

    #@40
    if-eqz v5, :cond_2

    #@42
    iget-object v5, p0, Landroid/filterfw/core/FilterGraph;->TAG:Ljava/lang/String;

    #@44
    new-instance v6, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v7, "Checking "

    #@4c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v6

    #@50
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v6

    #@54
    const-string/jumbo v7, " against "

    #@57
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v6

    #@5b
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v6

    #@5f
    const-string/jumbo v7, "."

    #@62
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v6

    #@66
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v6

    #@6a
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@6d
    .line 247
    :cond_2
    const/4 v0, 0x1

    #@6e
    .line 248
    .local v0, "compatible":Z
    iget v5, p0, Landroid/filterfw/core/FilterGraph;->mTypeCheckMode:I

    #@70
    packed-switch v5, :pswitch_data_0

    #@73
    .line 262
    .end local v0    # "compatible":Z
    :goto_0
    if-nez v0, :cond_0

    #@75
    .line 263
    new-instance v5, Ljava/lang/RuntimeException;

    #@77
    new-instance v6, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v7, "Type mismatch: Filter "

    #@7f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v6

    #@83
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v6

    #@87
    const-string/jumbo v7, " expects a "

    #@8a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v6

    #@8e
    .line 264
    const-string/jumbo v7, "format of type "

    #@91
    .line 263
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v6

    #@95
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v6

    #@99
    .line 264
    const-string/jumbo v7, " but got a format of type "

    #@9c
    .line 263
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v6

    #@a0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v6

    #@a4
    .line 265
    const-string/jumbo v7, "!"

    #@a7
    .line 263
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v6

    #@ab
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v6

    #@af
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@b2
    throw v5

    #@b3
    .line 250
    .restart local v0    # "compatible":Z
    :pswitch_0
    invoke-virtual {v1, v8}, Landroid/filterfw/core/InputPort;->setChecksType(Z)V

    #@b6
    goto :goto_0

    #@b7
    .line 253
    :pswitch_1
    invoke-virtual {v3, v4}, Landroid/filterfw/core/FrameFormat;->mayBeCompatibleWith(Landroid/filterfw/core/FrameFormat;)Z

    #@ba
    move-result v0

    #@bb
    .line 254
    .local v0, "compatible":Z
    const/4 v5, 0x1

    #@bc
    invoke-virtual {v1, v5}, Landroid/filterfw/core/InputPort;->setChecksType(Z)V

    #@bf
    goto :goto_0

    #@c0
    .line 257
    .local v0, "compatible":Z
    :pswitch_2
    invoke-virtual {v3, v4}, Landroid/filterfw/core/FrameFormat;->isCompatibleWith(Landroid/filterfw/core/FrameFormat;)Z

    #@c3
    move-result v0

    #@c4
    .line 258
    .local v0, "compatible":Z
    invoke-virtual {v1, v8}, Landroid/filterfw/core/InputPort;->setChecksType(Z)V

    #@c7
    goto :goto_0

    #@c8
    .line 239
    .end local v0    # "compatible":Z
    .end local v1    # "inputPort":Landroid/filterfw/core/InputPort;
    .end local v3    # "sourceFormat":Landroid/filterfw/core/FrameFormat;
    .end local v4    # "targetFormat":Landroid/filterfw/core/FrameFormat;
    :cond_3
    return-void

    #@c9
    .line 248
    nop

    #@ca
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateOutputs(Landroid/filterfw/core/Filter;)V
    .locals 8
    .param p1, "filter"    # Landroid/filterfw/core/Filter;

    #@0
    .prologue
    .line 224
    invoke-virtual {p1}, Landroid/filterfw/core/Filter;->getOutputPorts()Ljava/util/Collection;

    #@3
    move-result-object v5

    #@4
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v4

    #@8
    .local v4, "outputPort$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v5

    #@c
    if-eqz v5, :cond_2

    #@e
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    check-cast v3, Landroid/filterfw/core/OutputPort;

    #@14
    .line 225
    .local v3, "outputPort":Landroid/filterfw/core/OutputPort;
    invoke-virtual {v3}, Landroid/filterfw/core/OutputPort;->getBasePort()Landroid/filterfw/core/InputPort;

    #@17
    move-result-object v1

    #@18
    .line 226
    .local v1, "inputPort":Landroid/filterfw/core/InputPort;
    if-eqz v1, :cond_0

    #@1a
    .line 227
    invoke-virtual {v1}, Landroid/filterfw/core/InputPort;->getSourceFormat()Landroid/filterfw/core/FrameFormat;

    #@1d
    move-result-object v0

    #@1e
    .line 228
    .local v0, "inputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {v3}, Landroid/filterfw/core/OutputPort;->getName()Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {p1, v5, v0}, Landroid/filterfw/core/Filter;->getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;

    #@25
    move-result-object v2

    #@26
    .line 230
    .local v2, "outputFormat":Landroid/filterfw/core/FrameFormat;
    if-nez v2, :cond_1

    #@28
    .line 231
    new-instance v5, Ljava/lang/RuntimeException;

    #@2a
    new-instance v6, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v7, "Filter did not return an output format for "

    #@32
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v6

    #@36
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v6

    #@3a
    .line 232
    const-string/jumbo v7, "!"

    #@3d
    .line 231
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v6

    #@41
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v6

    #@45
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@48
    throw v5

    #@49
    .line 234
    :cond_1
    invoke-virtual {v3, v2}, Landroid/filterfw/core/OutputPort;->setPortFormat(Landroid/filterfw/core/FrameFormat;)V

    #@4c
    goto :goto_0

    #@4d
    .line 223
    .end local v0    # "inputFormat":Landroid/filterfw/core/FrameFormat;
    .end local v1    # "inputPort":Landroid/filterfw/core/InputPort;
    .end local v2    # "outputFormat":Landroid/filterfw/core/FrameFormat;
    .end local v3    # "outputPort":Landroid/filterfw/core/OutputPort;
    :cond_2
    return-void
.end method


# virtual methods
.method public addFilter(Landroid/filterfw/core/Filter;)Z
    .locals 2
    .param p1, "filter"    # Landroid/filterfw/core/Filter;

    #@0
    .prologue
    .line 66
    invoke-virtual {p0, p1}, Landroid/filterfw/core/FilterGraph;->containsFilter(Landroid/filterfw/core/Filter;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 67
    iget-object v0, p0, Landroid/filterfw/core/FilterGraph;->mFilters:Ljava/util/HashSet;

    #@8
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@b
    .line 68
    iget-object v0, p0, Landroid/filterfw/core/FilterGraph;->mNameMap:Ljava/util/HashMap;

    #@d
    invoke-virtual {p1}, Landroid/filterfw/core/Filter;->getName()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 69
    const/4 v0, 0x1

    #@15
    return v0

    #@16
    .line 71
    :cond_0
    const/4 v0, 0x0

    #@17
    return v0
.end method

.method public beginProcessing()V
    .locals 4

    #@0
    .prologue
    .line 126
    iget-boolean v2, p0, Landroid/filterfw/core/FilterGraph;->mLogVerbose:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    iget-object v2, p0, Landroid/filterfw/core/FilterGraph;->TAG:Ljava/lang/String;

    #@6
    const-string/jumbo v3, "Opening all filter connections..."

    #@9
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 127
    :cond_0
    iget-object v2, p0, Landroid/filterfw/core/FilterGraph;->mFilters:Ljava/util/HashSet;

    #@e
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v1

    #@12
    .local v1, "filter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Landroid/filterfw/core/Filter;

    #@1e
    .line 128
    .local v0, "filter":Landroid/filterfw/core/Filter;
    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->openOutputs()V

    #@21
    goto :goto_0

    #@22
    .line 130
    .end local v0    # "filter":Landroid/filterfw/core/Filter;
    :cond_1
    const/4 v2, 0x1

    #@23
    iput-boolean v2, p0, Landroid/filterfw/core/FilterGraph;->mIsReady:Z

    #@25
    .line 125
    return-void
.end method

.method public closeFilters(Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 140
    iget-boolean v2, p0, Landroid/filterfw/core/FilterGraph;->mLogVerbose:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    iget-object v2, p0, Landroid/filterfw/core/FilterGraph;->TAG:Ljava/lang/String;

    #@6
    const-string/jumbo v3, "Closing all filters..."

    #@9
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 141
    :cond_0
    iget-object v2, p0, Landroid/filterfw/core/FilterGraph;->mFilters:Ljava/util/HashSet;

    #@e
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v1

    #@12
    .local v1, "filter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Landroid/filterfw/core/Filter;

    #@1e
    .line 142
    .local v0, "filter":Landroid/filterfw/core/Filter;
    invoke-virtual {v0, p1}, Landroid/filterfw/core/Filter;->performClose(Landroid/filterfw/core/FilterContext;)V

    #@21
    goto :goto_0

    #@22
    .line 144
    .end local v0    # "filter":Landroid/filterfw/core/Filter;
    :cond_1
    const/4 v2, 0x0

    #@23
    iput-boolean v2, p0, Landroid/filterfw/core/FilterGraph;->mIsReady:Z

    #@25
    .line 139
    return-void
.end method

.method public connect(Landroid/filterfw/core/Filter;Ljava/lang/String;Landroid/filterfw/core/Filter;Ljava/lang/String;)V
    .locals 5
    .param p1, "source"    # Landroid/filterfw/core/Filter;
    .param p2, "outputName"    # Ljava/lang/String;
    .param p3, "target"    # Landroid/filterfw/core/Filter;
    .param p4, "inputName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 86
    if-eqz p1, :cond_0

    #@2
    if-nez p3, :cond_1

    #@4
    .line 87
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v3, "Passing null Filter in connect()!"

    #@9
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v2

    #@d
    .line 88
    :cond_1
    invoke-virtual {p0, p1}, Landroid/filterfw/core/FilterGraph;->containsFilter(Landroid/filterfw/core/Filter;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_2

    #@13
    invoke-virtual {p0, p3}, Landroid/filterfw/core/FilterGraph;->containsFilter(Landroid/filterfw/core/Filter;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_2

    #@19
    .line 92
    invoke-virtual {p1, p2}, Landroid/filterfw/core/Filter;->getOutputPort(Ljava/lang/String;)Landroid/filterfw/core/OutputPort;

    #@1c
    move-result-object v1

    #@1d
    .line 93
    .local v1, "outPort":Landroid/filterfw/core/OutputPort;
    invoke-virtual {p3, p4}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    #@20
    move-result-object v0

    #@21
    .line 94
    .local v0, "inPort":Landroid/filterfw/core/InputPort;
    if-nez v1, :cond_3

    #@23
    .line 95
    new-instance v2, Ljava/lang/RuntimeException;

    #@25
    new-instance v3, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v4, "Unknown output port \'"

    #@2d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    const-string/jumbo v4, "\' on Filter "

    #@38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    .line 96
    const-string/jumbo v4, "!"

    #@43
    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v2

    #@4f
    .line 89
    .end local v0    # "inPort":Landroid/filterfw/core/InputPort;
    .end local v1    # "outPort":Landroid/filterfw/core/OutputPort;
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    #@51
    const-string/jumbo v3, "Attempting to connect filter not in graph!"

    #@54
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@57
    throw v2

    #@58
    .line 97
    .restart local v0    # "inPort":Landroid/filterfw/core/InputPort;
    .restart local v1    # "outPort":Landroid/filterfw/core/OutputPort;
    :cond_3
    if-nez v0, :cond_4

    #@5a
    .line 98
    new-instance v2, Ljava/lang/RuntimeException;

    #@5c
    new-instance v3, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v4, "Unknown input port \'"

    #@64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v3

    #@68
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v3

    #@6c
    const-string/jumbo v4, "\' on Filter "

    #@6f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v3

    #@73
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v3

    #@77
    .line 99
    const-string/jumbo v4, "!"

    #@7a
    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v3

    #@7e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v3

    #@82
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@85
    throw v2

    #@86
    .line 102
    :cond_4
    invoke-direct {p0, v1, v0}, Landroid/filterfw/core/FilterGraph;->preconnect(Landroid/filterfw/core/OutputPort;Landroid/filterfw/core/InputPort;)V

    #@89
    .line 85
    return-void
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "sourceName"    # Ljava/lang/String;
    .param p2, "outputName"    # Ljava/lang/String;
    .param p3, "targetName"    # Ljava/lang/String;
    .param p4, "inputName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 109
    invoke-virtual {p0, p1}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    #@3
    move-result-object v0

    #@4
    .line 110
    .local v0, "source":Landroid/filterfw/core/Filter;
    invoke-virtual {p0, p3}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    #@7
    move-result-object v1

    #@8
    .line 111
    .local v1, "target":Landroid/filterfw/core/Filter;
    if-nez v0, :cond_0

    #@a
    .line 112
    new-instance v2, Ljava/lang/RuntimeException;

    #@c
    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v4, "Attempting to connect unknown source filter \'"

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    const-string/jumbo v4, "\'!"

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    .line 112
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v2

    #@2b
    .line 114
    :cond_0
    if-nez v1, :cond_1

    #@2d
    .line 115
    new-instance v2, Ljava/lang/RuntimeException;

    #@2f
    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v4, "Attempting to connect unknown target filter \'"

    #@37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    const-string/jumbo v4, "\'!"

    #@42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v3

    #@4a
    .line 115
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v2

    #@4e
    .line 118
    :cond_1
    invoke-virtual {p0, v0, p2, v1, p4}, Landroid/filterfw/core/FilterGraph;->connect(Landroid/filterfw/core/Filter;Ljava/lang/String;Landroid/filterfw/core/Filter;Ljava/lang/String;)V

    #@51
    .line 108
    return-void
.end method

.method public containsFilter(Landroid/filterfw/core/Filter;)Z
    .locals 1
    .param p1, "filter"    # Landroid/filterfw/core/Filter;

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Landroid/filterfw/core/FilterGraph;->mFilters:Ljava/util/HashSet;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public flushFrames()V
    .locals 3

    #@0
    .prologue
    .line 134
    iget-object v2, p0, Landroid/filterfw/core/FilterGraph;->mFilters:Ljava/util/HashSet;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "filter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/filterfw/core/Filter;

    #@12
    .line 135
    .local v0, "filter":Landroid/filterfw/core/Filter;
    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->clearOutputs()V

    #@15
    goto :goto_0

    #@16
    .line 133
    .end local v0    # "filter":Landroid/filterfw/core/Filter;
    :cond_0
    return-void
.end method

.method public getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Landroid/filterfw/core/FilterGraph;->mNameMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/filterfw/core/Filter;

    #@8
    return-object v0
.end method

.method public getFilters()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/filterfw/core/Filter;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Landroid/filterfw/core/FilterGraph;->mFilters:Ljava/util/HashSet;

    #@2
    return-object v0
.end method

.method public isReady()Z
    .locals 1

    #@0
    .prologue
    .line 148
    iget-boolean v0, p0, Landroid/filterfw/core/FilterGraph;->mIsReady:Z

    #@2
    return v0
.end method

.method public setAutoBranchMode(I)V
    .locals 0
    .param p1, "autoBranchMode"    # I

    #@0
    .prologue
    .line 152
    iput p1, p0, Landroid/filterfw/core/FilterGraph;->mAutoBranchMode:I

    #@2
    .line 151
    return-void
.end method

.method public setDiscardUnconnectedOutputs(Z)V
    .locals 0
    .param p1, "discard"    # Z

    #@0
    .prologue
    .line 156
    iput-boolean p1, p0, Landroid/filterfw/core/FilterGraph;->mDiscardUnconnectedOutputs:Z

    #@2
    .line 155
    return-void
.end method

.method public setTypeCheckMode(I)V
    .locals 0
    .param p1, "typeCheckMode"    # I

    #@0
    .prologue
    .line 160
    iput p1, p0, Landroid/filterfw/core/FilterGraph;->mTypeCheckMode:I

    #@2
    .line 159
    return-void
.end method

.method setupFilters()V
    .locals 1

    #@0
    .prologue
    .line 356
    iget-boolean v0, p0, Landroid/filterfw/core/FilterGraph;->mDiscardUnconnectedOutputs:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 357
    invoke-direct {p0}, Landroid/filterfw/core/FilterGraph;->discardUnconnectedOutputs()V

    #@7
    .line 359
    :cond_0
    invoke-direct {p0}, Landroid/filterfw/core/FilterGraph;->connectPorts()V

    #@a
    .line 360
    invoke-direct {p0}, Landroid/filterfw/core/FilterGraph;->checkConnections()V

    #@d
    .line 361
    invoke-direct {p0}, Landroid/filterfw/core/FilterGraph;->runTypeCheck()V

    #@10
    .line 355
    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 164
    iget-object v2, p0, Landroid/filterfw/core/FilterGraph;->mFilters:Ljava/util/HashSet;

    #@2
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_1

    #@8
    .line 165
    invoke-virtual {p0}, Landroid/filterfw/core/FilterGraph;->flushFrames()V

    #@b
    .line 166
    iget-object v2, p0, Landroid/filterfw/core/FilterGraph;->mFilters:Ljava/util/HashSet;

    #@d
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .local v1, "filter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_0

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/filterfw/core/Filter;

    #@1d
    .line 167
    .local v0, "filter":Landroid/filterfw/core/Filter;
    invoke-virtual {v0, p1}, Landroid/filterfw/core/Filter;->performTearDown(Landroid/filterfw/core/FilterContext;)V

    #@20
    goto :goto_0

    #@21
    .line 169
    .end local v0    # "filter":Landroid/filterfw/core/Filter;
    :cond_0
    iget-object v2, p0, Landroid/filterfw/core/FilterGraph;->mFilters:Ljava/util/HashSet;

    #@23
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    #@26
    .line 170
    iget-object v2, p0, Landroid/filterfw/core/FilterGraph;->mNameMap:Ljava/util/HashMap;

    #@28
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    #@2b
    .line 171
    const/4 v2, 0x0

    #@2c
    iput-boolean v2, p0, Landroid/filterfw/core/FilterGraph;->mIsReady:Z

    #@2e
    .line 163
    .end local v1    # "filter$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method
