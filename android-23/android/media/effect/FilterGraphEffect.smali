.class public Landroid/media/effect/FilterGraphEffect;
.super Landroid/media/effect/FilterEffect;
.source "FilterGraphEffect.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FilterGraphEffect"


# instance fields
.field protected mGraph:Landroid/filterfw/core/FilterGraph;

.field protected mInputName:Ljava/lang/String;

.field protected mOutputName:Ljava/lang/String;

.field protected mRunner:Landroid/filterfw/core/GraphRunner;

.field protected mSchedulerClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "context"    # Landroid/media/effect/EffectContext;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "graphString"    # Ljava/lang/String;
    .param p4, "inputName"    # Ljava/lang/String;
    .param p5, "outputName"    # Ljava/lang/String;
    .param p6, "scheduler"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/media/effect/FilterEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V

    #@3
    .line 61
    iput-object p4, p0, Landroid/media/effect/FilterGraphEffect;->mInputName:Ljava/lang/String;

    #@5
    .line 62
    iput-object p5, p0, Landroid/media/effect/FilterGraphEffect;->mOutputName:Ljava/lang/String;

    #@7
    .line 63
    iput-object p6, p0, Landroid/media/effect/FilterGraphEffect;->mSchedulerClass:Ljava/lang/Class;

    #@9
    .line 64
    invoke-direct {p0, p3}, Landroid/media/effect/FilterGraphEffect;->createGraph(Ljava/lang/String;)V

    #@c
    .line 58
    return-void
.end method

.method private createGraph(Ljava/lang/String;)V
    .locals 6
    .param p1, "graphString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 69
    new-instance v1, Landroid/filterfw/io/TextGraphReader;

    #@2
    invoke-direct {v1}, Landroid/filterfw/io/TextGraphReader;-><init>()V

    #@5
    .line 71
    .local v1, "reader":Landroid/filterfw/io/GraphReader;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/filterfw/io/GraphReader;->readGraphString(Ljava/lang/String;)Landroid/filterfw/core/FilterGraph;

    #@8
    move-result-object v2

    #@9
    iput-object v2, p0, Landroid/media/effect/FilterGraphEffect;->mGraph:Landroid/filterfw/core/FilterGraph;
    :try_end_0
    .catch Landroid/filterfw/io/GraphIOException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 76
    iget-object v2, p0, Landroid/media/effect/FilterGraphEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    #@d
    if-nez v2, :cond_0

    #@f
    .line 77
    new-instance v2, Ljava/lang/RuntimeException;

    #@11
    const-string/jumbo v3, "Could not setup effect"

    #@14
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@17
    throw v2

    #@18
    .line 72
    :catch_0
    move-exception v0

    #@19
    .line 73
    .local v0, "e":Landroid/filterfw/io/GraphIOException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@1b
    const-string/jumbo v3, "Could not setup effect"

    #@1e
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@21
    throw v2

    #@22
    .line 79
    .end local v0    # "e":Landroid/filterfw/io/GraphIOException;
    :cond_0
    new-instance v2, Landroid/filterfw/core/SyncRunner;

    #@24
    invoke-virtual {p0}, Landroid/media/effect/FilterGraphEffect;->getFilterContext()Landroid/filterfw/core/FilterContext;

    #@27
    move-result-object v3

    #@28
    iget-object v4, p0, Landroid/media/effect/FilterGraphEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    #@2a
    iget-object v5, p0, Landroid/media/effect/FilterGraphEffect;->mSchedulerClass:Ljava/lang/Class;

    #@2c
    invoke-direct {v2, v3, v4, v5}, Landroid/filterfw/core/SyncRunner;-><init>(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FilterGraph;Ljava/lang/Class;)V

    #@2f
    iput-object v2, p0, Landroid/media/effect/FilterGraphEffect;->mRunner:Landroid/filterfw/core/GraphRunner;

    #@31
    .line 68
    return-void
.end method


# virtual methods
.method public apply(IIII)V
    .locals 5
    .param p1, "inputTexId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "outputTexId"    # I

    #@0
    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/media/effect/FilterGraphEffect;->beginGLEffect()V

    #@3
    .line 85
    iget-object v3, p0, Landroid/media/effect/FilterGraphEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    #@5
    iget-object v4, p0, Landroid/media/effect/FilterGraphEffect;->mInputName:Ljava/lang/String;

    #@7
    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    #@a
    move-result-object v2

    #@b
    .line 86
    .local v2, "src":Landroid/filterfw/core/Filter;
    if-eqz v2, :cond_0

    #@d
    .line 87
    const-string/jumbo v3, "texId"

    #@10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v2, v3, v4}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@17
    .line 88
    const-string/jumbo v3, "width"

    #@1a
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v2, v3, v4}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@21
    .line 89
    const-string/jumbo v3, "height"

    #@24
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v2, v3, v4}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@2b
    .line 93
    iget-object v3, p0, Landroid/media/effect/FilterGraphEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    #@2d
    iget-object v4, p0, Landroid/media/effect/FilterGraphEffect;->mOutputName:Ljava/lang/String;

    #@2f
    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    #@32
    move-result-object v0

    #@33
    .line 94
    .local v0, "dest":Landroid/filterfw/core/Filter;
    if-eqz v0, :cond_1

    #@35
    .line 95
    const-string/jumbo v3, "texId"

    #@38
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v0, v3, v4}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@3f
    .line 100
    :try_start_0
    iget-object v3, p0, Landroid/media/effect/FilterGraphEffect;->mRunner:Landroid/filterfw/core/GraphRunner;

    #@41
    invoke-virtual {v3}, Landroid/filterfw/core/GraphRunner;->run()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@44
    .line 104
    invoke-virtual {p0}, Landroid/media/effect/FilterGraphEffect;->endGLEffect()V

    #@47
    .line 83
    return-void

    #@48
    .line 91
    .end local v0    # "dest":Landroid/filterfw/core/Filter;
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    #@4a
    const-string/jumbo v4, "Internal error applying effect"

    #@4d
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@50
    throw v3

    #@51
    .line 97
    .restart local v0    # "dest":Landroid/filterfw/core/Filter;
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    #@53
    const-string/jumbo v4, "Internal error applying effect"

    #@56
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@59
    throw v3

    #@5a
    .line 101
    :catch_0
    move-exception v1

    #@5b
    .line 102
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/RuntimeException;

    #@5d
    const-string/jumbo v4, "Internal error applying effect: "

    #@60
    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@63
    throw v3
.end method

.method public release()V
    .locals 2

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Landroid/media/effect/FilterGraphEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    #@2
    invoke-virtual {p0}, Landroid/media/effect/FilterGraphEffect;->getFilterContext()Landroid/filterfw/core/FilterContext;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Landroid/filterfw/core/FilterGraph;->tearDown(Landroid/filterfw/core/FilterContext;)V

    #@9
    .line 114
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Landroid/media/effect/FilterGraphEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    #@c
    .line 112
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "parameterKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 108
    return-void
.end method
