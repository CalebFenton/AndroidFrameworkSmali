.class public abstract Landroid/database/sqlite/SQLiteClosable;
.super Ljava/lang/Object;
.source "SQLiteClosable.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private mReferenceCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 27
    const/4 v0, 0x1

    #@4
    iput v0, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    #@6
    .line 26
    return-void
.end method


# virtual methods
.method public acquireReference()V
    .locals 3

    #@0
    .prologue
    .line 53
    monitor-enter p0

    #@1
    .line 54
    :try_start_0
    iget v0, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    #@3
    if-gtz v0, :cond_0

    #@5
    .line 55
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "attempt to re-open an already-closed object: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .line 55
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 53
    :catchall_0
    move-exception v0

    #@20
    monitor-exit p0

    #@21
    throw v0

    #@22
    .line 58
    :cond_0
    :try_start_1
    iget v0, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    #@24
    add-int/lit8 v0, v0, 0x1

    #@26
    iput v0, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    monitor-exit p0

    #@29
    .line 52
    return-void
.end method

.method public close()V
    .locals 0

    #@0
    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    #@3
    .line 105
    return-void
.end method

.method protected abstract onAllReferencesReleased()V
.end method

.method protected onAllReferencesReleasedFromContainer()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->onAllReferencesReleased()V

    #@3
    .line 42
    return-void
.end method

.method public releaseReference()V
    .locals 2

    #@0
    .prologue
    .line 69
    const/4 v0, 0x0

    #@1
    .line 70
    .local v0, "refCountIsZero":Z
    monitor-enter p0

    #@2
    .line 71
    :try_start_0
    iget v1, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    #@4
    add-int/lit8 v1, v1, -0x1

    #@6
    iput v1, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    if-nez v1, :cond_1

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    monitor-exit p0

    #@c
    .line 73
    if-eqz v0, :cond_0

    #@e
    .line 74
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->onAllReferencesReleased()V

    #@11
    .line 68
    :cond_0
    return-void

    #@12
    .line 71
    :cond_1
    const/4 v0, 0x0

    #@13
    goto :goto_0

    #@14
    .line 70
    :catchall_0
    move-exception v1

    #@15
    monitor-exit p0

    #@16
    throw v1
.end method

.method public releaseReferenceFromContainer()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 87
    const/4 v0, 0x0

    #@1
    .line 88
    .local v0, "refCountIsZero":Z
    monitor-enter p0

    #@2
    .line 89
    :try_start_0
    iget v1, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    #@4
    add-int/lit8 v1, v1, -0x1

    #@6
    iput v1, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    if-nez v1, :cond_1

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    monitor-exit p0

    #@c
    .line 91
    if-eqz v0, :cond_0

    #@e
    .line 92
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->onAllReferencesReleasedFromContainer()V

    #@11
    .line 86
    :cond_0
    return-void

    #@12
    .line 89
    :cond_1
    const/4 v0, 0x0

    #@13
    goto :goto_0

    #@14
    .line 88
    :catchall_0
    move-exception v1

    #@15
    monitor-exit p0

    #@16
    throw v1
.end method
