.class public Landroid/filterfw/core/OutputPort;
.super Landroid/filterfw/core/FilterPort;
.source "OutputPort.java"


# instance fields
.field protected mBasePort:Landroid/filterfw/core/InputPort;

.field protected mTargetPort:Landroid/filterfw/core/InputPort;


# direct methods
.method public constructor <init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V
    .locals 0
    .param p1, "filter"    # Landroid/filterfw/core/Filter;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/FilterPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V

    #@3
    .line 28
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 85
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    #@6
    invoke-virtual {v0}, Landroid/filterfw/core/InputPort;->clear()V

    #@9
    .line 83
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    #@0
    .prologue
    .line 52
    invoke-super {p0}, Landroid/filterfw/core/FilterPort;->close()V

    #@3
    .line 53
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    #@9
    invoke-virtual {v0}, Landroid/filterfw/core/InputPort;->isOpen()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 54
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    #@11
    invoke-virtual {v0}, Landroid/filterfw/core/InputPort;->close()V

    #@14
    .line 51
    :cond_0
    return-void
.end method

.method public connectTo(Landroid/filterfw/core/InputPort;)V
    .locals 3
    .param p1, "target"    # Landroid/filterfw/core/InputPort;

    #@0
    .prologue
    .line 33
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 34
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
    iget-object v2, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

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
    .line 36
    :cond_0
    iput-object p1, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    #@2d
    .line 37
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    #@2f
    invoke-virtual {v0, p0}, Landroid/filterfw/core/InputPort;->setSourcePort(Landroid/filterfw/core/OutputPort;)V

    #@32
    .line 32
    return-void
.end method

.method public filterMustClose()Z
    .locals 1

    #@0
    .prologue
    .line 75
    invoke-virtual {p0}, Landroid/filterfw/core/OutputPort;->isOpen()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p0}, Landroid/filterfw/core/OutputPort;->isBlocking()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public getBasePort()Landroid/filterfw/core/InputPort;
    .locals 1

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mBasePort:Landroid/filterfw/core/InputPort;

    #@2
    return-object v0
.end method

.method public getTargetFilter()Landroid/filterfw/core/Filter;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 63
    iget-object v1, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    #@8
    invoke-virtual {v0}, Landroid/filterfw/core/InputPort;->getFilter()Landroid/filterfw/core/Filter;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getTargetPort()Landroid/filterfw/core/InputPort;
    .locals 1

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    #@2
    return-object v0
.end method

.method public hasFrame()Z
    .locals 1

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    #@8
    invoke-virtual {v0}, Landroid/filterfw/core/InputPort;->hasFrame()Z

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    #@0
    .prologue
    .line 41
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

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
    .line 79
    invoke-virtual {p0}, Landroid/filterfw/core/OutputPort;->isOpen()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    iget-object v1, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    #@9
    invoke-virtual {v1}, Landroid/filterfw/core/InputPort;->acceptsFrame()Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_1

    #@f
    :cond_0
    invoke-virtual {p0}, Landroid/filterfw/core/OutputPort;->isBlocking()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    const/4 v0, 0x0

    #@16
    :cond_1
    return v0
.end method

.method public open()V
    .locals 1

    #@0
    .prologue
    .line 45
    invoke-super {p0}, Landroid/filterfw/core/FilterPort;->open()V

    #@3
    .line 46
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    #@9
    invoke-virtual {v0}, Landroid/filterfw/core/InputPort;->isOpen()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 44
    :cond_0
    :goto_0
    return-void

    #@10
    .line 47
    :cond_1
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    #@12
    invoke-virtual {v0}, Landroid/filterfw/core/InputPort;->open()V

    #@15
    goto :goto_0
.end method

.method public pullFrame()Landroid/filterfw/core/Frame;
    .locals 3

    #@0
    .prologue
    .line 110
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Cannot pull frame on "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, "!"

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0
.end method

.method public pushFrame(Landroid/filterfw/core/Frame;)V
    .locals 3
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 92
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Attempting to push frame on unconnected port: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, "!"

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .line 92
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 95
    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    #@27
    invoke-virtual {v0, p1}, Landroid/filterfw/core/InputPort;->pushFrame(Landroid/filterfw/core/Frame;)V

    #@2a
    .line 90
    return-void
.end method

.method public setBasePort(Landroid/filterfw/core/InputPort;)V
    .locals 0
    .param p1, "basePort"    # Landroid/filterfw/core/InputPort;

    #@0
    .prologue
    .line 67
    iput-object p1, p0, Landroid/filterfw/core/OutputPort;->mBasePort:Landroid/filterfw/core/InputPort;

    #@2
    .line 66
    return-void
.end method

.method public setFrame(Landroid/filterfw/core/Frame;)V
    .locals 3
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    #@0
    .prologue
    .line 100
    invoke-virtual {p0}, Landroid/filterfw/core/OutputPort;->assertPortIsOpen()V

    #@3
    .line 101
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 102
    new-instance v0, Ljava/lang/RuntimeException;

    #@9
    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Attempting to set frame on unconnected port: "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, "!"

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    .line 102
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 105
    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    #@2a
    invoke-virtual {v0, p1}, Landroid/filterfw/core/InputPort;->setFrame(Landroid/filterfw/core/Frame;)V

    #@2d
    .line 99
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "output "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-super {p0}, Landroid/filterfw/core/FilterPort;->toString()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method
