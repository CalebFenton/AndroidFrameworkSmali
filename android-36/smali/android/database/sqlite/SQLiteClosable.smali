.class public abstract Landroid/database/sqlite/SQLiteClosable;
.super Ljava/lang/Object;
.source "SQLiteClosable.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private blacklist mClosedBy:Ljava/lang/Throwable;

.field private greylist mReferenceCount:I

.field protected blacklist mTrackClosure:Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteClosable;->mTrackClosure:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteClosable;->mClosedBy:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public whitelist acquireReference()V
    .registers 4

    .line 71
    monitor-enter p0

    .line 72
    :try_start_1
    iget v0, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    if-lez v0, :cond_d

    .line 76
    iget v0, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    .line 77
    monitor-exit p0

    .line 78
    return-void

    .line 73
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attempt to re-open an already-closed object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteClosable;->mClosedBy:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/database/sqlite/SQLiteClosable;
    throw v0

    .line 77
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteClosable;
    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public whitelist test-api close()V
    .registers 5

    .line 124
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    .line 125
    monitor-enter p0

    .line 126
    :try_start_4
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteClosable;->mTrackClosure:Z

    if-eqz v0, :cond_38

    iget-object v0, p0, Landroid/database/sqlite/SQLiteClosable;->mClosedBy:Ljava/lang/Throwable;

    if-nez v0, :cond_38

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closed by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".close()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    iput-object v1, p0, Landroid/database/sqlite/SQLiteClosable;->mClosedBy:Ljava/lang/Throwable;

    .line 130
    .end local v0    # "name":Ljava/lang/String;
    :cond_38
    monitor-exit p0

    .line 131
    return-void

    .line 130
    :catchall_3a
    move-exception v0

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_4 .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method protected abstract whitelist onAllReferencesReleased()V
.end method

.method protected whitelist onAllReferencesReleasedFromContainer()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->onAllReferencesReleased()V

    .line 62
    return-void
.end method

.method public whitelist releaseReference()V
    .registers 4

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "refCountIsZero":Z
    monitor-enter p0

    .line 89
    :try_start_2
    iget v1, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    if-nez v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    move v0, v2

    .line 90
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_14

    .line 91
    if-eqz v0, :cond_13

    .line 92
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->onAllReferencesReleased()V

    .line 94
    :cond_13
    return-void

    .line 90
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public whitelist releaseReferenceFromContainer()V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, "refCountIsZero":Z
    monitor-enter p0

    .line 107
    :try_start_2
    iget v1, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    if-nez v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    move v0, v2

    .line 108
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_14

    .line 109
    if-eqz v0, :cond_13

    .line 110
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->onAllReferencesReleasedFromContainer()V

    .line 112
    :cond_13
    return-void

    .line 108
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method
