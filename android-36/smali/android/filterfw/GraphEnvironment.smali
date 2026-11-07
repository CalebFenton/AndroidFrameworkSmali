.class public Landroid/filterfw/GraphEnvironment;
.super Landroid/filterfw/MffEnvironment;
.source "GraphEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterfw/GraphEnvironment$GraphHandle;
    }
.end annotation


# static fields
.field public static final greylist-max-o MODE_ASYNCHRONOUS:I = 0x1

.field public static final greylist-max-o MODE_SYNCHRONOUS:I = 0x2


# instance fields
.field private greylist-max-o mGraphReader:Landroid/filterfw/io/GraphReader;

.field private greylist-max-o mGraphs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/filterfw/GraphEnvironment$GraphHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/filterfw/MffEnvironment;-><init>(Landroid/filterfw/core/FrameManager;)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/filterfw/GraphEnvironment;->mGraphs:Ljava/util/ArrayList;

    .line 90
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/filterfw/core/FrameManager;Landroid/filterfw/io/GraphReader;)V
    .registers 4
    .param p1, "frameManager"    # Landroid/filterfw/core/FrameManager;
    .param p2, "reader"    # Landroid/filterfw/io/GraphReader;

    .line 102
    invoke-direct {p0, p1}, Landroid/filterfw/MffEnvironment;-><init>(Landroid/filterfw/core/FrameManager;)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/filterfw/GraphEnvironment;->mGraphs:Ljava/util/ArrayList;

    .line 103
    iput-object p2, p0, Landroid/filterfw/GraphEnvironment;->mGraphReader:Landroid/filterfw/io/GraphReader;

    .line 104
    return-void
.end method


# virtual methods
.method public greylist-max-o addGraph(Landroid/filterfw/core/FilterGraph;)I
    .registers 4
    .param p1, "graph"    # Landroid/filterfw/core/FilterGraph;

    .line 156
    new-instance v0, Landroid/filterfw/GraphEnvironment$GraphHandle;

    invoke-direct {v0, p0, p1}, Landroid/filterfw/GraphEnvironment$GraphHandle;-><init>(Landroid/filterfw/GraphEnvironment;Landroid/filterfw/core/FilterGraph;)V

    .line 157
    .local v0, "graphHandle":Landroid/filterfw/GraphEnvironment$GraphHandle;
    iget-object v1, p0, Landroid/filterfw/GraphEnvironment;->mGraphs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v1, p0, Landroid/filterfw/GraphEnvironment;->mGraphs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public varargs greylist addReferences([Ljava/lang/Object;)V
    .registers 3
    .param p1, "references"    # [Ljava/lang/Object;

    .line 124
    invoke-virtual {p0}, Landroid/filterfw/GraphEnvironment;->getGraphReader()Landroid/filterfw/io/GraphReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/filterfw/io/GraphReader;->addReferencesByKeysAndValues([Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method public greylist-max-o getGraph(I)Landroid/filterfw/core/FilterGraph;
    .registers 5
    .param p1, "graphId"    # I

    .line 170
    if-ltz p1, :cond_17

    iget-object v0, p0, Landroid/filterfw/GraphEnvironment;->mGraphs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_17

    .line 174
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment;->mGraphs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/GraphEnvironment$GraphHandle;

    invoke-virtual {v0}, Landroid/filterfw/GraphEnvironment$GraphHandle;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v0

    return-object v0

    .line 171
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid graph ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " specified in runGraph()!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getGraphReader()Landroid/filterfw/io/GraphReader;
    .registers 2

    .line 110
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment;->mGraphReader:Landroid/filterfw/io/GraphReader;

    if-nez v0, :cond_b

    .line 111
    new-instance v0, Landroid/filterfw/io/TextGraphReader;

    invoke-direct {v0}, Landroid/filterfw/io/TextGraphReader;-><init>()V

    iput-object v0, p0, Landroid/filterfw/GraphEnvironment;->mGraphReader:Landroid/filterfw/io/GraphReader;

    .line 113
    :cond_b
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment;->mGraphReader:Landroid/filterfw/io/GraphReader;

    return-object v0
.end method

.method public greylist getRunner(II)Landroid/filterfw/core/GraphRunner;
    .registers 6
    .param p1, "graphId"    # I
    .param p2, "executionMode"    # I

    .line 189
    packed-switch p2, :pswitch_data_44

    .line 197
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid execution mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " specified in getRunner()!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :pswitch_22
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment;->mGraphs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/GraphEnvironment$GraphHandle;

    invoke-virtual {p0}, Landroid/filterfw/GraphEnvironment;->getContext()Landroid/filterfw/core/FilterContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/filterfw/GraphEnvironment$GraphHandle;->getSyncRunner(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/GraphRunner;

    move-result-object v0

    return-object v0

    .line 191
    :pswitch_33
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment;->mGraphs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/GraphEnvironment$GraphHandle;

    invoke-virtual {p0}, Landroid/filterfw/GraphEnvironment;->getContext()Landroid/filterfw/core/FilterContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/filterfw/GraphEnvironment$GraphHandle;->getAsyncRunner(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/AsyncRunner;

    move-result-object v0

    return-object v0

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_33
        :pswitch_22
    .end packed-switch
.end method

.method public greylist loadGraph(Landroid/content/Context;I)I
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I

    .line 137
    const/4 v0, 0x0

    .line 139
    .local v0, "graph":Landroid/filterfw/core/FilterGraph;
    :try_start_1
    invoke-virtual {p0}, Landroid/filterfw/GraphEnvironment;->getGraphReader()Landroid/filterfw/io/GraphReader;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/filterfw/io/GraphReader;->readGraphResource(Landroid/content/Context;I)Landroid/filterfw/core/FilterGraph;

    move-result-object v1
    :try_end_9
    .catch Landroid/filterfw/io/GraphIOException; {:try_start_1 .. :try_end_9} :catch_f

    .line 142
    .end local v0    # "graph":Landroid/filterfw/core/FilterGraph;
    .local v1, "graph":Landroid/filterfw/core/FilterGraph;
    nop

    .line 145
    invoke-virtual {p0, v1}, Landroid/filterfw/GraphEnvironment;->addGraph(Landroid/filterfw/core/FilterGraph;)I

    move-result v0

    return v0

    .line 140
    .end local v1    # "graph":Landroid/filterfw/core/FilterGraph;
    .restart local v0    # "graph":Landroid/filterfw/core/FilterGraph;
    :catch_f
    move-exception v1

    .line 141
    .local v1, "e":Landroid/filterfw/io/GraphIOException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not read graph: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/filterfw/io/GraphIOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
