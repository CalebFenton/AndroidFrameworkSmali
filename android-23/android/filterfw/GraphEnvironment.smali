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
.field public static final MODE_ASYNCHRONOUS:I = 0x1

.field public static final MODE_SYNCHRONOUS:I = 0x2


# instance fields
.field private mGraphReader:Landroid/filterfw/io/GraphReader;

.field private mGraphs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/filterfw/GraphEnvironment$GraphHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 87
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/filterfw/MffEnvironment;-><init>(Landroid/filterfw/core/FrameManager;)V

    #@4
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/filterfw/GraphEnvironment;->mGraphs:Ljava/util/ArrayList;

    #@b
    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/filterfw/core/FrameManager;Landroid/filterfw/io/GraphReader;)V
    .locals 1
    .param p1, "frameManager"    # Landroid/filterfw/core/FrameManager;
    .param p2, "reader"    # Landroid/filterfw/io/GraphReader;

    #@0
    .prologue
    .line 100
    invoke-direct {p0, p1}, Landroid/filterfw/MffEnvironment;-><init>(Landroid/filterfw/core/FrameManager;)V

    #@3
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/filterfw/GraphEnvironment;->mGraphs:Ljava/util/ArrayList;

    #@a
    .line 101
    iput-object p2, p0, Landroid/filterfw/GraphEnvironment;->mGraphReader:Landroid/filterfw/io/GraphReader;

    #@c
    .line 99
    return-void
.end method


# virtual methods
.method public addGraph(Landroid/filterfw/core/FilterGraph;)I
    .locals 2
    .param p1, "graph"    # Landroid/filterfw/core/FilterGraph;

    #@0
    .prologue
    .line 152
    new-instance v0, Landroid/filterfw/GraphEnvironment$GraphHandle;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/filterfw/GraphEnvironment$GraphHandle;-><init>(Landroid/filterfw/GraphEnvironment;Landroid/filterfw/core/FilterGraph;)V

    #@5
    .line 153
    .local v0, "graphHandle":Landroid/filterfw/GraphEnvironment$GraphHandle;
    iget-object v1, p0, Landroid/filterfw/GraphEnvironment;->mGraphs:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a
    .line 154
    iget-object v1, p0, Landroid/filterfw/GraphEnvironment;->mGraphs:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v1

    #@10
    add-int/lit8 v1, v1, -0x1

    #@12
    return v1
.end method

.method public varargs addReferences([Ljava/lang/Object;)V
    .locals 1
    .param p1, "references"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/filterfw/GraphEnvironment;->getGraphReader()Landroid/filterfw/io/GraphReader;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/filterfw/io/GraphReader;->addReferencesByKeysAndValues([Ljava/lang/Object;)V

    #@7
    .line 120
    return-void
.end method

.method public getGraph(I)Landroid/filterfw/core/FilterGraph;
    .locals 3
    .param p1, "graphId"    # I

    #@0
    .prologue
    .line 166
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment;->mGraphs:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    if-lt p1, v0, :cond_1

    #@a
    .line 167
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "Invalid graph ID "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    const-string/jumbo v2, " specified in runGraph()!"

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    .line 167
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 170
    :cond_1
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment;->mGraphs:Ljava/util/ArrayList;

    #@2d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Landroid/filterfw/GraphEnvironment$GraphHandle;

    #@33
    invoke-virtual {v0}, Landroid/filterfw/GraphEnvironment$GraphHandle;->getGraph()Landroid/filterfw/core/FilterGraph;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method

.method public getGraphReader()Landroid/filterfw/io/GraphReader;
    .locals 1

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment;->mGraphReader:Landroid/filterfw/io/GraphReader;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 109
    new-instance v0, Landroid/filterfw/io/TextGraphReader;

    #@6
    invoke-direct {v0}, Landroid/filterfw/io/TextGraphReader;-><init>()V

    #@9
    iput-object v0, p0, Landroid/filterfw/GraphEnvironment;->mGraphReader:Landroid/filterfw/io/GraphReader;

    #@b
    .line 111
    :cond_0
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment;->mGraphReader:Landroid/filterfw/io/GraphReader;

    #@d
    return-object v0
.end method

.method public getRunner(II)Landroid/filterfw/core/GraphRunner;
    .locals 3
    .param p1, "graphId"    # I
    .param p2, "executionMode"    # I

    #@0
    .prologue
    .line 184
    packed-switch p2, :pswitch_data_0

    #@3
    .line 192
    new-instance v0, Ljava/lang/RuntimeException;

    #@5
    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Invalid execution mode "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string/jumbo v2, " specified in getRunner()!"

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    .line 192
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 186
    :pswitch_0
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment;->mGraphs:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Landroid/filterfw/GraphEnvironment$GraphHandle;

    #@2c
    invoke-virtual {p0}, Landroid/filterfw/GraphEnvironment;->getContext()Landroid/filterfw/core/FilterContext;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v0, v1}, Landroid/filterfw/GraphEnvironment$GraphHandle;->getAsyncRunner(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/AsyncRunner;

    #@33
    move-result-object v0

    #@34
    return-object v0

    #@35
    .line 189
    :pswitch_1
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment;->mGraphs:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3a
    move-result-object v0

    #@3b
    check-cast v0, Landroid/filterfw/GraphEnvironment$GraphHandle;

    #@3d
    invoke-virtual {p0}, Landroid/filterfw/GraphEnvironment;->getContext()Landroid/filterfw/core/FilterContext;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v0, v1}, Landroid/filterfw/GraphEnvironment$GraphHandle;->getSyncRunner(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/GraphRunner;

    #@44
    move-result-object v0

    #@45
    return-object v0

    #@46
    .line 184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadGraph(Landroid/content/Context;I)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I

    #@0
    .prologue
    .line 133
    const/4 v1, 0x0

    #@1
    .line 135
    .local v1, "graph":Landroid/filterfw/core/FilterGraph;
    :try_start_0
    invoke-virtual {p0}, Landroid/filterfw/GraphEnvironment;->getGraphReader()Landroid/filterfw/io/GraphReader;

    #@4
    move-result-object v2

    #@5
    invoke-virtual {v2, p1, p2}, Landroid/filterfw/io/GraphReader;->readGraphResource(Landroid/content/Context;I)Landroid/filterfw/core/FilterGraph;
    :try_end_0
    .catch Landroid/filterfw/io/GraphIOException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v1

    #@9
    .line 141
    .local v1, "graph":Landroid/filterfw/core/FilterGraph;
    invoke-virtual {p0, v1}, Landroid/filterfw/GraphEnvironment;->addGraph(Landroid/filterfw/core/FilterGraph;)I

    #@c
    move-result v2

    #@d
    return v2

    #@e
    .line 136
    .local v1, "graph":Landroid/filterfw/core/FilterGraph;
    :catch_0
    move-exception v0

    #@f
    .line 137
    .local v0, "e":Landroid/filterfw/io/GraphIOException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@11
    new-instance v3, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v4, "Could not read graph: "

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v0}, Landroid/filterfw/io/GraphIOException;->getMessage()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v2
.end method
