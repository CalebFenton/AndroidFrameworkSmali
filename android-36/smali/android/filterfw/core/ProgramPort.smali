.class public Landroid/filterfw/core/ProgramPort;
.super Landroid/filterfw/core/FieldPort;
.source "ProgramPort.java"


# instance fields
.field protected greylist-max-o mVarName:Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/filterfw/core/Filter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Z)V
    .registers 6
    .param p1, "filter"    # Landroid/filterfw/core/Filter;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "varName"    # Ljava/lang/String;
    .param p4, "field"    # Ljava/lang/reflect/Field;
    .param p5, "hasDefault"    # Z

    .line 34
    invoke-direct {p0, p1, p2, p4, p5}, Landroid/filterfw/core/FieldPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 35
    iput-object p3, p0, Landroid/filterfw/core/ProgramPort;->mVarName:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Program "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/filterfw/core/FieldPort;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized greylist-max-o transfer(Landroid/filterfw/core/FilterContext;)V
    .registers 6
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    monitor-enter p0

    .line 45
    :try_start_1
    iget-boolean v0, p0, Landroid/filterfw/core/ProgramPort;->mValueWaiting:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_6b

    if-eqz v0, :cond_69

    .line 47
    :try_start_5
    iget-object v0, p0, Landroid/filterfw/core/ProgramPort;->mField:Ljava/lang/reflect/Field;

    iget-object v1, p0, Landroid/filterfw/core/ProgramPort;->mFilter:Landroid/filterfw/core/Filter;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 48
    .local v0, "fieldValue":Ljava/lang/Object;
    if-eqz v0, :cond_1c

    .line 49
    move-object v1, v0

    check-cast v1, Landroid/filterfw/core/Program;

    .line 50
    .local v1, "program":Landroid/filterfw/core/Program;
    iget-object v2, p0, Landroid/filterfw/core/ProgramPort;->mVarName:Ljava/lang/String;

    iget-object v3, p0, Landroid/filterfw/core/ProgramPort;->mValue:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/filterfw/core/ProgramPort;->mValueWaiting:Z
    :try_end_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_1c} :catch_43
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_1c} :catch_1d
    .catchall {:try_start_5 .. :try_end_1c} :catchall_6b

    .line 59
    .end local v0    # "fieldValue":Ljava/lang/Object;
    .end local v1    # "program":Landroid/filterfw/core/Program;
    .end local p0    # "this":Landroid/filterfw/core/ProgramPort;
    :cond_1c
    goto :goto_69

    .line 56
    :catch_1d
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/ClassCastException;
    :try_start_1e
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non Program field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/filterfw/core/ProgramPort;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' annotated with ProgramParameter!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_43
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Access to program field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/filterfw/core/ProgramPort;->mField:Ljava/lang/reflect/Field;

    .line 55
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' was denied!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_69
    .catchall {:try_start_1e .. :try_end_69} :catchall_6b

    .line 61
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_69
    :goto_69
    monitor-exit p0

    return-void

    .line 44
    .end local p1    # "context":Landroid/filterfw/core/FilterContext;
    :catchall_6b
    move-exception p1

    :try_start_6c
    monitor-exit p0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw p1
.end method
