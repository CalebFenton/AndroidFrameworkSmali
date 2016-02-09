.class public Landroid/filterfw/core/StreamPort;
.super Landroid/filterfw/core/InputPort;
.source "StreamPort.java"


# instance fields
.field private mFrame:Landroid/filterfw/core/Frame;

.field private mPersistent:Z


# direct methods
.method public constructor <init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V
    .locals 0
    .param p1, "filter"    # Landroid/filterfw/core/Filter;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/InputPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V

    #@3
    .line 28
    return-void
.end method


# virtual methods
.method protected declared-synchronized assignFrame(Landroid/filterfw/core/Frame;Z)V
    .locals 3
    .param p1, "frame"    # Landroid/filterfw/core/Frame;
    .param p2, "persistent"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 51
    :try_start_0
    invoke-virtual {p0}, Landroid/filterfw/core/StreamPort;->assertPortIsOpen()V

    #@4
    .line 52
    invoke-virtual {p0, p1, p2}, Landroid/filterfw/core/StreamPort;->checkFrameType(Landroid/filterfw/core/Frame;Z)V

    #@7
    .line 54
    if-eqz p2, :cond_1

    #@9
    .line 55
    iget-object v0, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 56
    iget-object v0, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;

    #@f
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@12
    .line 62
    :cond_0
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->retain()Landroid/filterfw/core/Frame;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;

    #@18
    .line 63
    iget-object v0, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;

    #@1a
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->markReadOnly()V

    #@1d
    .line 64
    iput-boolean p2, p0, Landroid/filterfw/core/StreamPort;->mPersistent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    monitor-exit p0

    #@20
    .line 50
    return-void

    #@21
    .line 58
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;

    #@23
    if-eqz v0, :cond_0

    #@25
    .line 59
    new-instance v0, Ljava/lang/RuntimeException;

    #@27
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v2, "Attempting to push more than one frame on port: "

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    const-string/jumbo v2, "!"

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    .line 59
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@45
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    :catchall_0
    move-exception v0

    #@47
    monitor-exit p0

    #@48
    throw v0
.end method

.method public clear()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 34
    iget-object v0, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 35
    iget-object v0, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;

    #@7
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@a
    .line 36
    iput-object v1, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;

    #@c
    .line 33
    :cond_0
    return-void
.end method

.method public declared-synchronized hasFrame()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 86
    :try_start_0
    iget-object v0, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v0, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    monitor-exit p0

    #@7
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method public declared-synchronized pullFrame()Landroid/filterfw/core/Frame;
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 70
    :try_start_0
    iget-object v1, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 71
    new-instance v1, Ljava/lang/RuntimeException;

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "No frame available to pull on port: "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    const-string/jumbo v3, "!"

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@25
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    :catchall_0
    move-exception v1

    #@27
    monitor-exit p0

    #@28
    throw v1

    #@29
    .line 75
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;

    #@2b
    .line 76
    .local v0, "result":Landroid/filterfw/core/Frame;
    iget-boolean v1, p0, Landroid/filterfw/core/StreamPort;->mPersistent:Z

    #@2d
    if-eqz v1, :cond_1

    #@2f
    .line 77
    iget-object v1, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;

    #@31
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->retain()Landroid/filterfw/core/Frame;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    :goto_0
    monitor-exit p0

    #@35
    .line 81
    return-object v0

    #@36
    .line 79
    :cond_1
    const/4 v1, 0x0

    #@37
    :try_start_2
    iput-object v1, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@39
    goto :goto_0
.end method

.method public pushFrame(Landroid/filterfw/core/Frame;)V
    .locals 1
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    #@0
    .prologue
    .line 47
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/filterfw/core/StreamPort;->assignFrame(Landroid/filterfw/core/Frame;Z)V

    #@4
    .line 46
    return-void
.end method

.method public setFrame(Landroid/filterfw/core/Frame;)V
    .locals 1
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    #@0
    .prologue
    .line 42
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/filterfw/core/StreamPort;->assignFrame(Landroid/filterfw/core/Frame;Z)V

    #@4
    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "input "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-super {p0}, Landroid/filterfw/core/InputPort;->toString()Ljava/lang/String;

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

.method public declared-synchronized transfer(Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 96
    :try_start_0
    iget-object v0, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 97
    iget-object v0, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;

    #@7
    invoke-virtual {p0, v0, p1}, Landroid/filterfw/core/StreamPort;->checkFrameManager(Landroid/filterfw/core/Frame;Landroid/filterfw/core/FilterContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :cond_0
    monitor-exit p0

    #@b
    .line 95
    return-void

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method
