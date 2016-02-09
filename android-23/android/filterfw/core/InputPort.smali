.class public abstract Landroid/filterfw/core/InputPort;
.super Landroid/filterfw/core/FilterPort;
.source "InputPort.java"


# instance fields
.field protected mSourcePort:Landroid/filterfw/core/OutputPort;


# direct methods
.method public constructor <init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V
    .locals 0
    .param p1, "filter"    # Landroid/filterfw/core/Filter;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/FilterPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V

    #@3
    .line 27
    return-void
.end method


# virtual methods
.method public acceptsFrame()Z
    .locals 1

    #@0
    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/filterfw/core/InputPort;->hasFrame()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x1

    #@9
    goto :goto_0
.end method

.method public close()V
    .locals 1

    #@0
    .prologue
    .line 50
    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    #@6
    invoke-virtual {v0}, Landroid/filterfw/core/OutputPort;->isOpen()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 51
    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    #@e
    invoke-virtual {v0}, Landroid/filterfw/core/OutputPort;->close()V

    #@11
    .line 53
    :cond_0
    invoke-super {p0}, Landroid/filterfw/core/FilterPort;->close()V

    #@14
    .line 49
    return-void
.end method

.method public filterMustClose()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 73
    invoke-virtual {p0}, Landroid/filterfw/core/InputPort;->isOpen()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    invoke-virtual {p0}, Landroid/filterfw/core/InputPort;->isBlocking()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    invoke-virtual {p0}, Landroid/filterfw/core/InputPort;->hasFrame()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    :cond_0
    :goto_0
    return v0

    #@14
    :cond_1
    const/4 v0, 0x1

    #@15
    goto :goto_0
.end method

.method public getSourceFilter()Landroid/filterfw/core/Filter;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 61
    iget-object v1, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    #@8
    invoke-virtual {v0}, Landroid/filterfw/core/OutputPort;->getFilter()Landroid/filterfw/core/Filter;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getSourceFormat()Landroid/filterfw/core/FrameFormat;
    .locals 1

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    #@6
    invoke-virtual {v0}, Landroid/filterfw/core/OutputPort;->getPortFormat()Landroid/filterfw/core/FrameFormat;

    #@9
    move-result-object v0

    #@a
    :goto_0
    return-object v0

    #@b
    :cond_0
    invoke-virtual {p0}, Landroid/filterfw/core/InputPort;->getPortFormat()Landroid/filterfw/core/FrameFormat;

    #@e
    move-result-object v0

    #@f
    goto :goto_0
.end method

.method public getSourcePort()Landroid/filterfw/core/OutputPort;
    .locals 1

    #@0
    .prologue
    .line 57
    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    #@2
    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 69
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    #@0
    .prologue
    .line 39
    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public isReady()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 77
    invoke-virtual {p0}, Landroid/filterfw/core/InputPort;->hasFrame()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    invoke-virtual {p0}, Landroid/filterfw/core/InputPort;->isBlocking()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    const/4 v0, 0x0

    #@e
    :cond_0
    return v0
.end method

.method public open()V
    .locals 1

    #@0
    .prologue
    .line 43
    invoke-super {p0}, Landroid/filterfw/core/FilterPort;->open()V

    #@3
    .line 44
    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    #@9
    invoke-virtual {v0}, Landroid/filterfw/core/OutputPort;->isOpen()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 42
    :cond_0
    :goto_0
    return-void

    #@10
    .line 45
    :cond_1
    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    #@12
    invoke-virtual {v0}, Landroid/filterfw/core/OutputPort;->open()V

    #@15
    goto :goto_0
.end method

.method public setSourcePort(Landroid/filterfw/core/OutputPort;)V
    .locals 3
    .param p1, "source"    # Landroid/filterfw/core/OutputPort;

    #@0
    .prologue
    .line 32
    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 33
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    const-string/jumbo v2, " already connected to "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    iget-object v2, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    const-string/jumbo v2, "!"

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 35
    :cond_0
    iput-object p1, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    #@2d
    .line 31
    return-void
.end method

.method public abstract transfer(Landroid/filterfw/core/FilterContext;)V
.end method
