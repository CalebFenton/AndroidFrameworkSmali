.class public Landroid/media/effect/FilterGraphEffect;
.super Landroid/media/effect/FilterEffect;
.source "FilterGraphEffect.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "FilterGraphEffect"


# instance fields
.field protected greylist-max-o mGraph:Landroid/filterfw/core/FilterGraph;

.field protected greylist-max-o mInputName:Ljava/lang/String;

.field protected greylist-max-o mOutputName:Ljava/lang/String;

.field protected greylist-max-o mRunner:Landroid/filterfw/core/GraphRunner;

.field protected greylist-max-o mSchedulerClass:Ljava/lang/Class;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .registers 7
    .param p1, "context"    # Landroid/media/effect/EffectContext;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "graphString"    # Ljava/lang/String;
    .param p4, "inputName"    # Ljava/lang/String;
    .param p5, "outputName"    # Ljava/lang/String;
    .param p6, "scheduler"    # Ljava/lang/Class;

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/media/effect/FilterEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V

    .line 61
    iput-object p4, p0, Landroid/media/effect/FilterGraphEffect;->mInputName:Ljava/lang/String;

    .line 62
    iput-object p5, p0, Landroid/media/effect/FilterGraphEffect;->mOutputName:Ljava/lang/String;

    .line 63
    iput-object p6, p0, Landroid/media/effect/FilterGraphEffect;->mSchedulerClass:Ljava/lang/Class;

    .line 64
    invoke-direct {p0, p3}, Landroid/media/effect/FilterGraphEffect;->createGraph(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method private greylist-max-o createGraph(Ljava/lang/String;)V
    .registers 7
    .param p1, "graphString"    # Ljava/lang/String;

    .line 69
    const-string v0, "Could not setup effect"

    new-instance v1, Landroid/filterfw/io/TextGraphReader;

    invoke-direct {v1}, Landroid/filterfw/io/TextGraphReader;-><init>()V

    .line 71
    .local v1, "reader":Landroid/filterfw/io/GraphReader;
    :try_start_7
    invoke-virtual {v1, p1}, Landroid/filterfw/io/GraphReader;->readGraphString(Ljava/lang/String;)Landroid/filterfw/core/FilterGraph;

    move-result-object v2

    iput-object v2, p0, Landroid/media/effect/FilterGraphEffect;->mGraph:Landroid/filterfw/core/FilterGraph;
    :try_end_d
    .catch Landroid/filterfw/io/GraphIOException; {:try_start_7 .. :try_end_d} :catch_28

    .line 74
    nop

    .line 76
    iget-object v2, p0, Landroid/media/effect/FilterGraphEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    if-eqz v2, :cond_22

    .line 79
    new-instance v0, Landroid/filterfw/core/SyncRunner;

    invoke-virtual {p0}, Landroid/media/effect/FilterGraphEffect;->getFilterContext()Landroid/filterfw/core/FilterContext;

    move-result-object v2

    iget-object v3, p0, Landroid/media/effect/FilterGraphEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    iget-object v4, p0, Landroid/media/effect/FilterGraphEffect;->mSchedulerClass:Ljava/lang/Class;

    invoke-direct {v0, v2, v3, v4}, Landroid/filterfw/core/SyncRunner;-><init>(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FilterGraph;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/media/effect/FilterGraphEffect;->mRunner:Landroid/filterfw/core/GraphRunner;

    .line 80
    return-void

    .line 77
    :cond_22
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :catch_28
    move-exception v2

    .line 73
    .local v2, "e":Landroid/filterfw/io/GraphIOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public whitelist apply(IIII)V
    .registers 10
    .param p1, "inputTexId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "outputTexId"    # I

    .line 84
    invoke-virtual {p0}, Landroid/media/effect/FilterGraphEffect;->beginGLEffect()V

    .line 85
    iget-object v0, p0, Landroid/media/effect/FilterGraphEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    iget-object v1, p0, Landroid/media/effect/FilterGraphEffect;->mInputName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v0

    .line 86
    .local v0, "src":Landroid/filterfw/core/Filter;
    const-string v1, "Internal error applying effect"

    if-eqz v0, :cond_54

    .line 87
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "texId"

    invoke-virtual {v0, v3, v2}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    const-string v2, "width"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    const-string v2, "height"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    iget-object v2, p0, Landroid/media/effect/FilterGraphEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    iget-object v4, p0, Landroid/media/effect/FilterGraphEffect;->mOutputName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v2

    .line 94
    .local v2, "dest":Landroid/filterfw/core/Filter;
    if-eqz v2, :cond_4e

    .line 95
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    :try_start_3b
    iget-object v1, p0, Landroid/media/effect/FilterGraphEffect;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v1}, Landroid/filterfw/core/GraphRunner;->run()V
    :try_end_40
    .catch Ljava/lang/RuntimeException; {:try_start_3b .. :try_end_40} :catch_45

    .line 103
    nop

    .line 104
    invoke-virtual {p0}, Landroid/media/effect/FilterGraphEffect;->endGLEffect()V

    .line 105
    return-void

    .line 101
    :catch_45
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Internal error applying effect: "

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 97
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_4e
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 91
    .end local v2    # "dest":Landroid/filterfw/core/Filter;
    :cond_54
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist release()V
    .registers 3

    .line 113
    iget-object v0, p0, Landroid/media/effect/FilterGraphEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    invoke-virtual {p0}, Landroid/media/effect/FilterGraphEffect;->getFilterContext()Landroid/filterfw/core/FilterContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/filterfw/core/FilterGraph;->tearDown(Landroid/filterfw/core/FilterContext;)V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/effect/FilterGraphEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    .line 115
    return-void
.end method

.method public whitelist setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p1, "parameterKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 109
    return-void
.end method
