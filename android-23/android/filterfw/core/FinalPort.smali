.class public Landroid/filterfw/core/FinalPort;
.super Landroid/filterfw/core/FieldPort;
.source "FinalPort.java"


# direct methods
.method public constructor <init>(Landroid/filterfw/core/Filter;Ljava/lang/String;Ljava/lang/reflect/Field;Z)V
    .locals 0
    .param p1, "filter"    # Landroid/filterfw/core/Filter;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "field"    # Ljava/lang/reflect/Field;
    .param p4, "hasDefault"    # Z

    #@0
    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/filterfw/core/FieldPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    #@3
    .line 27
    return-void
.end method


# virtual methods
.method protected declared-synchronized setFieldFrame(Landroid/filterfw/core/Frame;Z)V
    .locals 3
    .param p1, "frame"    # Landroid/filterfw/core/Frame;
    .param p2, "isAssignment"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 33
    :try_start_0
    invoke-virtual {p0}, Landroid/filterfw/core/FinalPort;->assertPortIsOpen()V

    #@4
    .line 34
    invoke-virtual {p0, p1, p2}, Landroid/filterfw/core/FinalPort;->checkFrameType(Landroid/filterfw/core/Frame;Z)V

    #@7
    .line 35
    iget-object v0, p0, Landroid/filterfw/core/FinalPort;->mFilter:Landroid/filterfw/core/Filter;

    #@9
    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->getStatus()I

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 36
    new-instance v0, Ljava/lang/RuntimeException;

    #@11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "Attempting to modify "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    const-string/jumbo v2, "!"

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    :catchall_0
    move-exception v0

    #@31
    monitor-exit p0

    #@32
    throw v0

    #@33
    .line 38
    :cond_0
    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/filterfw/core/FieldPort;->setFieldFrame(Landroid/filterfw/core/Frame;Z)V

    #@36
    .line 39
    const/4 v0, 0x0

    #@37
    invoke-super {p0, v0}, Landroid/filterfw/core/FieldPort;->transfer(Landroid/filterfw/core/FilterContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    monitor-exit p0

    #@3b
    .line 32
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "final "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-super {p0}, Landroid/filterfw/core/FieldPort;->toString()Ljava/lang/String;

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
