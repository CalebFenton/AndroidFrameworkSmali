.class public Landroid/filterfw/core/FieldPort;
.super Landroid/filterfw/core/InputPort;
.source "FieldPort.java"


# instance fields
.field protected mField:Ljava/lang/reflect/Field;

.field protected mHasFrame:Z

.field protected mValue:Ljava/lang/Object;

.field protected mValueWaiting:Z


# direct methods
.method public constructor <init>(Landroid/filterfw/core/Filter;Ljava/lang/String;Ljava/lang/reflect/Field;Z)V
    .locals 1
    .param p1, "filter"    # Landroid/filterfw/core/Filter;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "field"    # Ljava/lang/reflect/Field;
    .param p4, "hasDefault"    # Z

    #@0
    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/InputPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V

    #@3
    .line 29
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/filterfw/core/FieldPort;->mValueWaiting:Z

    #@6
    .line 34
    iput-object p3, p0, Landroid/filterfw/core/FieldPort;->mField:Ljava/lang/reflect/Field;

    #@8
    .line 35
    iput-boolean p4, p0, Landroid/filterfw/core/FieldPort;->mHasFrame:Z

    #@a
    .line 32
    return-void
.end method


# virtual methods
.method public declared-synchronized acceptsFrame()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 89
    :try_start_0
    iget-boolean v0, p0, Landroid/filterfw/core/FieldPort;->mValueWaiting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v0, :cond_0

    #@5
    const/4 v0, 0x0

    #@6
    :goto_0
    monitor-exit p0

    #@7
    return v0

    #@8
    :cond_0
    const/4 v0, 0x1

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

.method public clear()V
    .locals 0

    #@0
    .prologue
    .line 39
    return-void
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 55
    :try_start_0
    iget-object v1, p0, Landroid/filterfw/core/FieldPort;->mField:Ljava/lang/reflect/Field;

    #@2
    iget-object v2, p0, Landroid/filterfw/core/FieldPort;->mFilter:Landroid/filterfw/core/Filter;

    #@4
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 56
    :catch_0
    move-exception v0

    #@a
    .line 57
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const/4 v1, 0x0

    #@b
    return-object v1
.end method

.method public declared-synchronized hasFrame()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 84
    :try_start_0
    iget-boolean v0, p0, Landroid/filterfw/core/FieldPort;->mHasFrame:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized pullFrame()Landroid/filterfw/core/Frame;
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 79
    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Cannot pull frame on "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "!"

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    :catchall_0
    move-exception v0

    #@23
    monitor-exit p0

    #@24
    throw v0
.end method

.method public pushFrame(Landroid/filterfw/core/Frame;)V
    .locals 1
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    #@0
    .prologue
    .line 44
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/filterfw/core/FieldPort;->setFieldFrame(Landroid/filterfw/core/Frame;Z)V

    #@4
    .line 43
    return-void
.end method

.method protected declared-synchronized setFieldFrame(Landroid/filterfw/core/Frame;Z)V
    .locals 2
    .param p1, "frame"    # Landroid/filterfw/core/Frame;
    .param p2, "isAssignment"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 98
    :try_start_0
    invoke-virtual {p0}, Landroid/filterfw/core/FieldPort;->assertPortIsOpen()V

    #@4
    .line 99
    invoke-virtual {p0, p1, p2}, Landroid/filterfw/core/FieldPort;->checkFrameType(Landroid/filterfw/core/Frame;Z)V

    #@7
    .line 102
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    .line 103
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_1

    #@d
    iget-object v1, p0, Landroid/filterfw/core/FieldPort;->mValue:Ljava/lang/Object;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 104
    :cond_0
    iput-object v0, p0, Landroid/filterfw/core/FieldPort;->mValue:Ljava/lang/Object;

    #@13
    .line 105
    const/4 v1, 0x1

    #@14
    iput-boolean v1, p0, Landroid/filterfw/core/FieldPort;->mValueWaiting:Z

    #@16
    .line 109
    :goto_0
    const/4 v1, 0x1

    #@17
    iput-boolean v1, p0, Landroid/filterfw/core/FieldPort;->mHasFrame:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit p0

    #@1a
    .line 97
    return-void

    #@1b
    .line 103
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/filterfw/core/FieldPort;->mValue:Ljava/lang/Object;

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_0

    #@23
    goto :goto_0

    #@24
    .end local v0    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    #@25
    monitor-exit p0

    #@26
    throw v1
.end method

.method public setFrame(Landroid/filterfw/core/Frame;)V
    .locals 1
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    #@0
    .prologue
    .line 49
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/filterfw/core/FieldPort;->setFieldFrame(Landroid/filterfw/core/Frame;Z)V

    #@4
    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "field "

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
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 63
    :try_start_0
    iget-boolean v1, p0, Landroid/filterfw/core/FieldPort;->mValueWaiting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 65
    :try_start_1
    iget-object v1, p0, Landroid/filterfw/core/FieldPort;->mField:Ljava/lang/reflect/Field;

    #@7
    iget-object v2, p0, Landroid/filterfw/core/FieldPort;->mFilter:Landroid/filterfw/core/Filter;

    #@9
    iget-object v3, p0, Landroid/filterfw/core/FieldPort;->mValue:Ljava/lang/Object;

    #@b
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    .line 70
    const/4 v1, 0x0

    #@f
    :try_start_2
    iput-boolean v1, p0, Landroid/filterfw/core/FieldPort;->mValueWaiting:Z

    #@11
    .line 71
    if-eqz p1, :cond_0

    #@13
    .line 72
    iget-object v1, p0, Landroid/filterfw/core/FieldPort;->mFilter:Landroid/filterfw/core/Filter;

    #@15
    iget-object v2, p0, Landroid/filterfw/core/FieldPort;->mName:Ljava/lang/String;

    #@17
    invoke-virtual {v1, v2, p1}, Landroid/filterfw/core/Filter;->notifyFieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1a
    :cond_0
    monitor-exit p0

    #@1b
    .line 62
    return-void

    #@1c
    .line 66
    :catch_0
    move-exception v0

    #@1d
    .line 67
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    #@1f
    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v3, "Access to field \'"

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    iget-object v3, p0, Landroid/filterfw/core/FieldPort;->mField:Ljava/lang/reflect/Field;

    #@2d
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    const-string/jumbo v3, "\' was denied!"

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    .line 67
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@43
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@44
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catchall_0
    move-exception v1

    #@45
    monitor-exit p0

    #@46
    throw v1
.end method
