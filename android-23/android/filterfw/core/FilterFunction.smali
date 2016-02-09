.class public Landroid/filterfw/core/FilterFunction;
.super Ljava/lang/Object;
.source "FilterFunction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterfw/core/FilterFunction$FrameHolderPort;
    }
.end annotation


# instance fields
.field private mFilter:Landroid/filterfw/core/Filter;

.field private mFilterContext:Landroid/filterfw/core/FilterContext;

.field private mFilterIsSetup:Z

.field private mResultHolders:[Landroid/filterfw/core/FilterFunction$FrameHolderPort;


# direct methods
.method public constructor <init>(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/Filter;)V
    .locals 1
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "filter"    # Landroid/filterfw/core/Filter;

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/filterfw/core/FilterFunction;->mFilterIsSetup:Z

    #@6
    .line 39
    iput-object p1, p0, Landroid/filterfw/core/FilterFunction;->mFilterContext:Landroid/filterfw/core/FilterContext;

    #@8
    .line 40
    iput-object p2, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    #@a
    .line 38
    return-void
.end method

.method private connectFilterOutputs()V
    .locals 5

    #@0
    .prologue
    .line 131
    const/4 v0, 0x0

    #@1
    .line 132
    .local v0, "i":I
    iget-object v3, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    #@3
    invoke-virtual {v3}, Landroid/filterfw/core/Filter;->getNumberOfOutputs()I

    #@6
    move-result v3

    #@7
    new-array v3, v3, [Landroid/filterfw/core/FilterFunction$FrameHolderPort;

    #@9
    iput-object v3, p0, Landroid/filterfw/core/FilterFunction;->mResultHolders:[Landroid/filterfw/core/FilterFunction$FrameHolderPort;

    #@b
    .line 133
    iget-object v3, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    #@d
    invoke-virtual {v3}, Landroid/filterfw/core/Filter;->getOutputPorts()Ljava/util/Collection;

    #@10
    move-result-object v3

    #@11
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v2

    #@15
    .local v2, "outputPort$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_0

    #@1b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Landroid/filterfw/core/OutputPort;

    #@21
    .line 134
    .local v1, "outputPort":Landroid/filterfw/core/OutputPort;
    iget-object v3, p0, Landroid/filterfw/core/FilterFunction;->mResultHolders:[Landroid/filterfw/core/FilterFunction$FrameHolderPort;

    #@23
    new-instance v4, Landroid/filterfw/core/FilterFunction$FrameHolderPort;

    #@25
    invoke-direct {v4, p0}, Landroid/filterfw/core/FilterFunction$FrameHolderPort;-><init>(Landroid/filterfw/core/FilterFunction;)V

    #@28
    aput-object v4, v3, v0

    #@2a
    .line 135
    iget-object v3, p0, Landroid/filterfw/core/FilterFunction;->mResultHolders:[Landroid/filterfw/core/FilterFunction$FrameHolderPort;

    #@2c
    aget-object v3, v3, v0

    #@2e
    invoke-virtual {v1, v3}, Landroid/filterfw/core/OutputPort;->connectTo(Landroid/filterfw/core/InputPort;)V

    #@31
    .line 136
    add-int/lit8 v0, v0, 0x1

    #@33
    goto :goto_0

    #@34
    .line 130
    .end local v1    # "outputPort":Landroid/filterfw/core/OutputPort;
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    #@2
    iget-object v1, p0, Landroid/filterfw/core/FilterFunction;->mFilterContext:Landroid/filterfw/core/FilterContext;

    #@4
    invoke-virtual {v0, v1}, Landroid/filterfw/core/Filter;->performClose(Landroid/filterfw/core/FilterContext;)V

    #@7
    .line 100
    return-void
.end method

.method public execute(Landroid/filterfw/core/KeyValueMap;)Landroid/filterfw/core/Frame;
    .locals 11
    .param p1, "inputMap"    # Landroid/filterfw/core/KeyValueMap;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v9, 0x1

    #@2
    .line 44
    iget-object v6, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    #@4
    invoke-virtual {v6}, Landroid/filterfw/core/Filter;->getNumberOfOutputs()I

    #@7
    move-result v3

    #@8
    .line 47
    .local v3, "filterOutCount":I
    if-le v3, v9, :cond_0

    #@a
    .line 48
    new-instance v6, Ljava/lang/RuntimeException;

    #@c
    new-instance v7, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v8, "Calling execute on filter "

    #@14
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v7

    #@18
    iget-object v8, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    #@1a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v7

    #@1e
    const-string/jumbo v8, " with multiple "

    #@21
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v7

    #@25
    .line 49
    const-string/jumbo v8, "outputs! Use executeMulti() instead!"

    #@28
    .line 48
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v7

    #@2c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v7

    #@30
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@33
    throw v6

    #@34
    .line 53
    :cond_0
    iget-boolean v6, p0, Landroid/filterfw/core/FilterFunction;->mFilterIsSetup:Z

    #@36
    if-nez v6, :cond_1

    #@38
    .line 54
    invoke-direct {p0}, Landroid/filterfw/core/FilterFunction;->connectFilterOutputs()V

    #@3b
    .line 55
    iput-boolean v9, p0, Landroid/filterfw/core/FilterFunction;->mFilterIsSetup:Z

    #@3d
    .line 59
    :cond_1
    const/4 v0, 0x0

    #@3e
    .line 60
    .local v0, "didActivateGLEnv":Z
    iget-object v6, p0, Landroid/filterfw/core/FilterFunction;->mFilterContext:Landroid/filterfw/core/FilterContext;

    #@40
    invoke-virtual {v6}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    #@43
    move-result-object v4

    #@44
    .line 61
    .local v4, "glEnv":Landroid/filterfw/core/GLEnvironment;
    if-eqz v4, :cond_2

    #@46
    invoke-virtual {v4}, Landroid/filterfw/core/GLEnvironment;->isActive()Z

    #@49
    move-result v6

    #@4a
    if-eqz v6, :cond_3

    #@4c
    .line 67
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/filterfw/core/KeyValueMap;->entrySet()Ljava/util/Set;

    #@4f
    move-result-object v6

    #@50
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@53
    move-result-object v2

    #@54
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@57
    move-result v6

    #@58
    if-eqz v6, :cond_5

    #@5a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5d
    move-result-object v1

    #@5e
    check-cast v1, Ljava/util/Map$Entry;

    #@60
    .line 68
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@63
    move-result-object v6

    #@64
    instance-of v6, v6, Landroid/filterfw/core/Frame;

    #@66
    if-eqz v6, :cond_4

    #@68
    .line 69
    iget-object v8, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    #@6a
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@6d
    move-result-object v6

    #@6e
    check-cast v6, Ljava/lang/String;

    #@70
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@73
    move-result-object v7

    #@74
    check-cast v7, Landroid/filterfw/core/Frame;

    #@76
    invoke-virtual {v8, v6, v7}, Landroid/filterfw/core/Filter;->pushInputFrame(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@79
    goto :goto_1

    #@7a
    .line 62
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {v4}, Landroid/filterfw/core/GLEnvironment;->activate()V

    #@7d
    .line 63
    const/4 v0, 0x1

    #@7e
    goto :goto_0

    #@7f
    .line 71
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2    # "entry$iterator":Ljava/util/Iterator;
    :cond_4
    iget-object v7, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    #@81
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@84
    move-result-object v6

    #@85
    check-cast v6, Ljava/lang/String;

    #@87
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@8a
    move-result-object v8

    #@8b
    invoke-virtual {v7, v6, v8}, Landroid/filterfw/core/Filter;->pushInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@8e
    goto :goto_1

    #@8f
    .line 76
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    iget-object v6, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    #@91
    invoke-virtual {v6}, Landroid/filterfw/core/Filter;->getStatus()I

    #@94
    move-result v6

    #@95
    const/4 v7, 0x3

    #@96
    if-eq v6, v7, :cond_6

    #@98
    .line 77
    iget-object v6, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    #@9a
    invoke-virtual {v6}, Landroid/filterfw/core/Filter;->openOutputs()V

    #@9d
    .line 80
    :cond_6
    iget-object v6, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    #@9f
    iget-object v7, p0, Landroid/filterfw/core/FilterFunction;->mFilterContext:Landroid/filterfw/core/FilterContext;

    #@a1
    invoke-virtual {v6, v7}, Landroid/filterfw/core/Filter;->performProcess(Landroid/filterfw/core/FilterContext;)V

    #@a4
    .line 83
    const/4 v5, 0x0

    #@a5
    .line 84
    .local v5, "result":Landroid/filterfw/core/Frame;
    if-ne v3, v9, :cond_7

    #@a7
    iget-object v6, p0, Landroid/filterfw/core/FilterFunction;->mResultHolders:[Landroid/filterfw/core/FilterFunction$FrameHolderPort;

    #@a9
    aget-object v6, v6, v10

    #@ab
    invoke-virtual {v6}, Landroid/filterfw/core/FilterFunction$FrameHolderPort;->hasFrame()Z

    #@ae
    move-result v6

    #@af
    if-eqz v6, :cond_7

    #@b1
    .line 85
    iget-object v6, p0, Landroid/filterfw/core/FilterFunction;->mResultHolders:[Landroid/filterfw/core/FilterFunction$FrameHolderPort;

    #@b3
    aget-object v6, v6, v10

    #@b5
    invoke-virtual {v6}, Landroid/filterfw/core/FilterFunction$FrameHolderPort;->pullFrame()Landroid/filterfw/core/Frame;

    #@b8
    move-result-object v5

    #@b9
    .line 89
    .end local v5    # "result":Landroid/filterfw/core/Frame;
    :cond_7
    if-eqz v0, :cond_8

    #@bb
    .line 90
    invoke-virtual {v4}, Landroid/filterfw/core/GLEnvironment;->deactivate()V

    #@be
    .line 93
    :cond_8
    return-object v5
.end method

.method public varargs executeWithArgList([Ljava/lang/Object;)Landroid/filterfw/core/Frame;
    .locals 1
    .param p1, "inputs"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 97
    invoke-static {p1}, Landroid/filterfw/core/KeyValueMap;->fromKeyValues([Ljava/lang/Object;)Landroid/filterfw/core/KeyValueMap;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/filterfw/core/FilterFunction;->execute(Landroid/filterfw/core/KeyValueMap;)Landroid/filterfw/core/Frame;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getContext()Landroid/filterfw/core/FilterContext;
    .locals 1

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Landroid/filterfw/core/FilterFunction;->mFilterContext:Landroid/filterfw/core/FilterContext;

    #@2
    return-object v0
.end method

.method public getFilter()Landroid/filterfw/core/Filter;
    .locals 1

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    #@2
    return-object v0
.end method

.method public setInputFrame(Ljava/lang/String;Landroid/filterfw/core/Frame;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "frame"    # Landroid/filterfw/core/Frame;

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/filterfw/core/Filter;->setInputFrame(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@5
    .line 112
    return-void
.end method

.method public setInputValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@5
    .line 116
    return-void
.end method

.method public tearDown()V
    .locals 2

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    #@2
    iget-object v1, p0, Landroid/filterfw/core/FilterFunction;->mFilterContext:Landroid/filterfw/core/FilterContext;

    #@4
    invoke-virtual {v0, v1}, Landroid/filterfw/core/Filter;->performTearDown(Landroid/filterfw/core/FilterContext;)V

    #@7
    .line 122
    const/4 v0, 0x0

    #@8
    iput-object v0, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    #@a
    .line 120
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    #@2
    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
