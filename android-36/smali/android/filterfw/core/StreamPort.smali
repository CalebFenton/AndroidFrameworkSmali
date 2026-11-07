.class public Landroid/filterfw/core/StreamPort;
.super Landroid/filterfw/core/InputPort;
.source "StreamPort.java"


# instance fields
.field private greylist-max-o mFrame:Landroid/filterfw/core/Frame;

.field private greylist-max-o mPersistent:Z


# direct methods
.method public constructor greylist-max-o <init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V
    .registers 3
    .param p1, "filter"    # Landroid/filterfw/core/Filter;
    .param p2, "name"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/InputPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected declared-synchronized greylist-max-o assignFrame(Landroid/filterfw/core/Frame;Z)V
    .registers 6
    .param p1, "frame"    # Landroid/filterfw/core/Frame;
    .param p2, "persistent"    # Z

    monitor-enter p0

    .line 51
    :try_start_1
    invoke-virtual {p0}, Landroid/filterfw/core/StreamPort;->assertPortIsOpen()V

    .line 52
    invoke-virtual {p0, p1, p2}, Landroid/filterfw/core/StreamPort;->checkFrameType(Landroid/filterfw/core/Frame;Z)V

    .line 54
    if-eqz p2, :cond_13

    .line 55
    iget-object v0, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;

    if-eqz v0, :cond_17

    .line 56
    iget-object v0, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    goto :goto_17

    .line 58
    .end local p0    # "this":Landroid/filterfw/core/StreamPort;
    :cond_13
    iget-object v0, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;

    if-nez v0, :cond_26

    .line 62
    :cond_17
    :goto_17
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->retain()Landroid/filterfw/core/Frame;

    move-result-object v0

    iput-object v0, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;

    .line 63
    iget-object v0, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->markReadOnly()V

    .line 64
    iput-boolean p2, p0, Landroid/filterfw/core/StreamPort;->mPersistent:Z
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_45

    .line 65
    monitor-exit p0

    return-void

    .line 59
    :cond_26
    :try_start_26
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to push more than one frame on port: "

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

    .line 50
    .end local p1    # "frame":Landroid/filterfw/core/Frame;
    .end local p2    # "persistent":Z
    :catchall_45
    move-exception p1

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_26 .. :try_end_47} :catchall_45

    throw p1
.end method

.method public greylist-max-o clear()V
    .registers 2

    .line 34
    iget-object v0, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;

    if-eqz v0, :cond_c

    .line 35
    iget-object v0, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;

    .line 38
    :cond_c
    return-void
.end method

.method public declared-synchronized greylist-max-o hasFrame()Z
    .registers 2

    monitor-enter p0

    .line 86
    :try_start_1
    iget-object v0, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    .line 86
    .end local p0    # "this":Landroid/filterfw/core/StreamPort;
    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method public declared-synchronized greylist-max-o pullFrame()Landroid/filterfw/core/Frame;
    .registers 4

    monitor-enter p0

    .line 70
    :try_start_1
    iget-object v0, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;

    if-eqz v0, :cond_16

    .line 75
    iget-object v0, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;

    .line 76
    .local v0, "result":Landroid/filterfw/core/Frame;
    iget-boolean v1, p0, Landroid/filterfw/core/StreamPort;->mPersistent:Z

    if-eqz v1, :cond_11

    .line 77
    iget-object v1, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->retain()Landroid/filterfw/core/Frame;

    goto :goto_14

    .line 79
    .end local p0    # "this":Landroid/filterfw/core/StreamPort;
    :cond_11
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_35

    .line 81
    :goto_14
    monitor-exit p0

    return-object v0

    .line 71
    .end local v0    # "result":Landroid/filterfw/core/Frame;
    :cond_16
    :try_start_16
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No frame available to pull on port: "

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

    .line 69
    :catchall_35
    move-exception v0

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_16 .. :try_end_37} :catchall_35

    throw v0
.end method

.method public greylist-max-o pushFrame(Landroid/filterfw/core/Frame;)V
    .registers 3
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/filterfw/core/StreamPort;->assignFrame(Landroid/filterfw/core/Frame;Z)V

    .line 48
    return-void
.end method

.method public greylist-max-o setFrame(Landroid/filterfw/core/Frame;)V
    .registers 3
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/filterfw/core/StreamPort;->assignFrame(Landroid/filterfw/core/Frame;Z)V

    .line 43
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "input "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/filterfw/core/InputPort;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized greylist-max-o transfer(Landroid/filterfw/core/FilterContext;)V
    .registers 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    monitor-enter p0

    .line 96
    :try_start_1
    iget-object v0, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;

    if-eqz v0, :cond_a

    .line 97
    iget-object v0, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {p0, v0, p1}, Landroid/filterfw/core/StreamPort;->checkFrameManager(Landroid/filterfw/core/Frame;Landroid/filterfw/core/FilterContext;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 99
    .end local p0    # "this":Landroid/filterfw/core/StreamPort;
    :cond_a
    monitor-exit p0

    return-void

    .line 95
    .end local p1    # "context":Landroid/filterfw/core/FilterContext;
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method
