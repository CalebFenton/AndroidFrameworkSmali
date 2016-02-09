.class public Landroid/filterfw/core/ProgramPort;
.super Landroid/filterfw/core/FieldPort;
.source "ProgramPort.java"


# instance fields
.field protected mVarName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/filterfw/core/Filter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Z)V
    .locals 0
    .param p1, "filter"    # Landroid/filterfw/core/Filter;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "varName"    # Ljava/lang/String;
    .param p4, "field"    # Ljava/lang/reflect/Field;
    .param p5, "hasDefault"    # Z

    #@0
    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p4, p5}, Landroid/filterfw/core/FieldPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    #@3
    .line 35
    iput-object p3, p0, Landroid/filterfw/core/ProgramPort;->mVarName:Ljava/lang/String;

    #@5
    .line 33
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Program "

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

.method public declared-synchronized transfer(Landroid/filterfw/core/FilterContext;)V
    .locals 8
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 45
    :try_start_0
    iget-boolean v5, p0, Landroid/filterfw/core/ProgramPort;->mValueWaiting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v5, :cond_0

    #@5
    .line 47
    :try_start_1
    iget-object v5, p0, Landroid/filterfw/core/ProgramPort;->mField:Ljava/lang/reflect/Field;

    #@7
    iget-object v6, p0, Landroid/filterfw/core/ProgramPort;->mFilter:Landroid/filterfw/core/Filter;

    #@9
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v3

    #@d
    .line 48
    .local v3, "fieldValue":Ljava/lang/Object;
    if-eqz v3, :cond_0

    #@f
    .line 49
    move-object v0, v3

    #@10
    check-cast v0, Landroid/filterfw/core/Program;

    #@12
    move-object v4, v0

    #@13
    .line 50
    .local v4, "program":Landroid/filterfw/core/Program;
    iget-object v5, p0, Landroid/filterfw/core/ProgramPort;->mVarName:Ljava/lang/String;

    #@15
    iget-object v6, p0, Landroid/filterfw/core/ProgramPort;->mValue:Ljava/lang/Object;

    #@17
    invoke-virtual {v4, v5, v6}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@1a
    .line 51
    const/4 v5, 0x0

    #@1b
    iput-boolean v5, p0, Landroid/filterfw/core/ProgramPort;->mValueWaiting:Z
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    .end local v3    # "fieldValue":Ljava/lang/Object;
    .end local v4    # "program":Landroid/filterfw/core/Program;
    :cond_0
    monitor-exit p0

    #@1e
    .line 44
    return-void

    #@1f
    .line 56
    :catch_0
    move-exception v1

    #@20
    .line 57
    .local v1, "e":Ljava/lang/ClassCastException;
    :try_start_2
    new-instance v5, Ljava/lang/RuntimeException;

    #@22
    new-instance v6, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v7, "Non Program field \'"

    #@2a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v6

    #@2e
    iget-object v7, p0, Landroid/filterfw/core/ProgramPort;->mField:Ljava/lang/reflect/Field;

    #@30
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@33
    move-result-object v7

    #@34
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v6

    #@38
    .line 58
    const-string/jumbo v7, "\' annotated with ProgramParameter!"

    #@3b
    .line 57
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v6

    #@3f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v6

    #@43
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@46
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@47
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :catchall_0
    move-exception v5

    #@48
    monitor-exit p0

    #@49
    throw v5

    #@4a
    .line 53
    :catch_1
    move-exception v2

    #@4b
    .line 54
    .local v2, "e":Ljava/lang/IllegalAccessException;
    :try_start_3
    new-instance v5, Ljava/lang/RuntimeException;

    #@4d
    .line 55
    new-instance v6, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v7, "Access to program field \'"

    #@55
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v6

    #@59
    iget-object v7, p0, Landroid/filterfw/core/ProgramPort;->mField:Ljava/lang/reflect/Field;

    #@5b
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@5e
    move-result-object v7

    #@5f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v6

    #@63
    const-string/jumbo v7, "\' was denied!"

    #@66
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v6

    #@6a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v6

    #@6e
    .line 54
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@71
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
