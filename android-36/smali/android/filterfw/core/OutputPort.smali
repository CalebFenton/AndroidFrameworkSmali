.class public Landroid/filterfw/core/OutputPort;
.super Landroid/filterfw/core/FilterPort;
.source "OutputPort.java"


# instance fields
.field protected greylist-max-o mBasePort:Landroid/filterfw/core/InputPort;

.field protected greylist-max-o mTargetPort:Landroid/filterfw/core/InputPort;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V
    .registers 3
    .param p1, "filter"    # Landroid/filterfw/core/Filter;
    .param p2, "name"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/FilterPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public greylist-max-o clear()V
    .registers 2

    .line 84
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    if-eqz v0, :cond_9

    .line 85
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    invoke-virtual {v0}, Landroid/filterfw/core/InputPort;->clear()V

    .line 87
    :cond_9
    return-void
.end method

.method public greylist-max-o close()V
    .registers 2

    .line 52
    invoke-super {p0}, Landroid/filterfw/core/FilterPort;->close()V

    .line 53
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    invoke-virtual {v0}, Landroid/filterfw/core/InputPort;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 54
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    invoke-virtual {v0}, Landroid/filterfw/core/InputPort;->close()V

    .line 56
    :cond_14
    return-void
.end method

.method public greylist-max-o connectTo(Landroid/filterfw/core/InputPort;)V
    .registers 5
    .param p1, "target"    # Landroid/filterfw/core/InputPort;

    .line 33
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    if-nez v0, :cond_c

    .line 36
    iput-object p1, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    .line 37
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    invoke-virtual {v0, p0}, Landroid/filterfw/core/InputPort;->setSourcePort(Landroid/filterfw/core/OutputPort;)V

    .line 38
    return-void

    .line 34
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already connected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o filterMustClose()Z
    .registers 2

    .line 75
    invoke-virtual {p0}, Landroid/filterfw/core/OutputPort;->isOpen()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroid/filterfw/core/OutputPort;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public greylist-max-o getBasePort()Landroid/filterfw/core/InputPort;
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mBasePort:Landroid/filterfw/core/InputPort;

    return-object v0
.end method

.method public greylist-max-o getTargetFilter()Landroid/filterfw/core/Filter;
    .registers 2

    .line 63
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    invoke-virtual {v0}, Landroid/filterfw/core/InputPort;->getFilter()Landroid/filterfw/core/Filter;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public greylist-max-o getTargetPort()Landroid/filterfw/core/InputPort;
    .registers 2

    .line 59
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    return-object v0
.end method

.method public greylist-max-o hasFrame()Z
    .registers 2

    .line 115
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    invoke-virtual {v0}, Landroid/filterfw/core/InputPort;->hasFrame()Z

    move-result v0

    :goto_c
    return v0
.end method

.method public greylist-max-o isConnected()Z
    .registers 2

    .line 41
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public greylist-max-o isReady()Z
    .registers 2

    .line 79
    invoke-virtual {p0}, Landroid/filterfw/core/OutputPort;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    invoke-virtual {v0}, Landroid/filterfw/core/InputPort;->acceptsFrame()Z

    move-result v0

    if-nez v0, :cond_14

    :cond_e
    invoke-virtual {p0}, Landroid/filterfw/core/OutputPort;->isBlocking()Z

    move-result v0

    if-nez v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public greylist-max-o open()V
    .registers 2

    .line 45
    invoke-super {p0}, Landroid/filterfw/core/FilterPort;->open()V

    .line 46
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    invoke-virtual {v0}, Landroid/filterfw/core/InputPort;->isOpen()Z

    move-result v0

    if-nez v0, :cond_14

    .line 47
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    invoke-virtual {v0}, Landroid/filterfw/core/InputPort;->open()V

    .line 49
    :cond_14
    return-void
.end method

.method public greylist-max-o pullFrame()Landroid/filterfw/core/Frame;
    .registers 4

    .line 110
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot pull frame on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o pushFrame(Landroid/filterfw/core/Frame;)V
    .registers 5
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    .line 91
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    if-eqz v0, :cond_a

    .line 95
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    invoke-virtual {v0, p1}, Landroid/filterfw/core/InputPort;->pushFrame(Landroid/filterfw/core/Frame;)V

    .line 96
    return-void

    .line 92
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to push frame on unconnected port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setBasePort(Landroid/filterfw/core/InputPort;)V
    .registers 2
    .param p1, "basePort"    # Landroid/filterfw/core/InputPort;

    .line 67
    iput-object p1, p0, Landroid/filterfw/core/OutputPort;->mBasePort:Landroid/filterfw/core/InputPort;

    .line 68
    return-void
.end method

.method public greylist-max-o setFrame(Landroid/filterfw/core/Frame;)V
    .registers 5
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    .line 100
    invoke-virtual {p0}, Landroid/filterfw/core/OutputPort;->assertPortIsOpen()V

    .line 101
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    if-eqz v0, :cond_d

    .line 105
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    invoke-virtual {v0, p1}, Landroid/filterfw/core/InputPort;->setFrame(Landroid/filterfw/core/Frame;)V

    .line 106
    return-void

    .line 102
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to set frame on unconnected port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "output "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/filterfw/core/FilterPort;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
