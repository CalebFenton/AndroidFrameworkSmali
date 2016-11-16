.class public Landroid/renderscript/BaseObj;
.super Ljava/lang/Object;
.source "BaseObj.java"


# instance fields
.field final guard:Ldalvik/system/CloseGuard;

.field private mDestroyed:Z

.field private mID:J

.field private mName:Ljava/lang/String;

.field mRS:Landroid/renderscript/RenderScript;


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 73
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/renderscript/BaseObj;->guard:Ldalvik/system/CloseGuard;

    #@9
    .line 30
    invoke-virtual {p3}, Landroid/renderscript/RenderScript;->validate()V

    #@c
    .line 31
    iput-object p3, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    #@e
    .line 32
    iput-wide p1, p0, Landroid/renderscript/BaseObj;->mID:J

    #@10
    .line 33
    const/4 v0, 0x0

    #@11
    iput-boolean v0, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    #@13
    .line 29
    return-void
.end method

.method private helpDestroy()V
    .locals 8

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    .line 115
    const/4 v1, 0x0

    #@3
    .line 116
    .local v1, "shouldDestroy":Z
    monitor-enter p0

    #@4
    .line 117
    :try_start_0
    iget-boolean v2, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    #@6
    if-nez v2, :cond_0

    #@8
    .line 118
    const/4 v1, 0x1

    #@9
    .line 119
    const/4 v2, 0x1

    #@a
    iput-boolean v2, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit p0

    #@d
    .line 123
    if-eqz v1, :cond_2

    #@f
    .line 124
    iget-object v2, p0, Landroid/renderscript/BaseObj;->guard:Ldalvik/system/CloseGuard;

    #@11
    invoke-virtual {v2}, Ldalvik/system/CloseGuard;->close()V

    #@14
    .line 126
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    #@16
    iget-object v2, v2, Landroid/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@18
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@1b
    move-result-object v0

    #@1c
    .line 127
    .local v0, "rlock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    #@1f
    .line 129
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    #@21
    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->isAlive()Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_1

    #@27
    iget-wide v2, p0, Landroid/renderscript/BaseObj;->mID:J

    #@29
    cmp-long v2, v2, v6

    #@2b
    if-eqz v2, :cond_1

    #@2d
    .line 130
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    #@2f
    iget-wide v4, p0, Landroid/renderscript/BaseObj;->mID:J

    #@31
    invoke-virtual {v2, v4, v5}, Landroid/renderscript/RenderScript;->nObjDestroy(J)V

    #@34
    .line 132
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@37
    .line 133
    const/4 v2, 0x0

    #@38
    iput-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    #@3a
    .line 134
    iput-wide v6, p0, Landroid/renderscript/BaseObj;->mID:J

    #@3c
    .line 114
    .end local v0    # "rlock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    :cond_2
    return-void

    #@3d
    .line 116
    :catchall_0
    move-exception v2

    #@3e
    monitor-exit p0

    #@3f
    throw v2
.end method


# virtual methods
.method checkValid()V
    .locals 4

    #@0
    .prologue
    .line 67
    iget-wide v0, p0, Landroid/renderscript/BaseObj;->mID:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    .line 68
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@a
    const-string/jumbo v1, "Invalid object."

    #@d
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 66
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    #@0
    .prologue
    .line 155
    iget-boolean v0, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 156
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    #@6
    const-string/jumbo v1, "Object already destroyed."

    #@9
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 158
    :cond_0
    invoke-direct {p0}, Landroid/renderscript/BaseObj;->helpDestroy()V

    #@10
    .line 154
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 190
    if-ne p0, p1, :cond_0

    #@4
    .line 191
    return v1

    #@5
    .line 193
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 194
    return v2

    #@8
    .line 197
    :cond_1
    invoke-virtual {p0}, Landroid/renderscript/BaseObj;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v4

    #@10
    if-eq v3, v4, :cond_2

    #@12
    .line 198
    return v2

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 201
    check-cast v0, Landroid/renderscript/BaseObj;

    #@16
    .line 202
    .local v0, "b":Landroid/renderscript/BaseObj;
    iget-wide v4, p0, Landroid/renderscript/BaseObj;->mID:J

    #@18
    iget-wide v6, v0, Landroid/renderscript/BaseObj;->mID:J

    #@1a
    cmp-long v3, v4, v6

    #@1c
    if-nez v3, :cond_3

    #@1e
    :goto_0
    return v1

    #@1f
    :cond_3
    move v1, v2

    #@20
    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 140
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/BaseObj;->guard:Ldalvik/system/CloseGuard;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 141
    iget-object v0, p0, Landroid/renderscript/BaseObj;->guard:Ldalvik/system/CloseGuard;

    #@6
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@9
    .line 143
    :cond_0
    invoke-direct {p0}, Landroid/renderscript/BaseObj;->helpDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 145
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@f
    .line 138
    return-void

    #@10
    .line 144
    :catchall_0
    move-exception v0

    #@11
    .line 145
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@14
    .line 144
    throw v0
.end method

.method getID(Landroid/renderscript/RenderScript;)J
    .locals 4
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    #@2
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    #@5
    .line 54
    iget-boolean v0, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 55
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    #@b
    const-string/jumbo v1, "using a destroyed object."

    #@e
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 57
    :cond_0
    iget-wide v0, p0, Landroid/renderscript/BaseObj;->mID:J

    #@14
    const-wide/16 v2, 0x0

    #@16
    cmp-long v0, v0, v2

    #@18
    if-nez v0, :cond_1

    #@1a
    .line 58
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    #@1c
    const-string/jumbo v1, "Internal error: Object id 0."

    #@1f
    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 60
    :cond_1
    if-eqz p1, :cond_2

    #@25
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    #@27
    if-eq p1, v0, :cond_2

    #@29
    .line 61
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    #@2b
    const-string/jumbo v1, "using object with mismatched context."

    #@2e
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0

    #@32
    .line 63
    :cond_2
    iget-wide v0, p0, Landroid/renderscript/BaseObj;->mID:J

    #@34
    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    .line 177
    iget-wide v0, p0, Landroid/renderscript/BaseObj;->mID:J

    #@2
    const-wide/32 v2, 0xfffffff

    #@5
    and-long/2addr v0, v2

    #@6
    iget-wide v2, p0, Landroid/renderscript/BaseObj;->mID:J

    #@8
    const/16 v4, 0x20

    #@a
    shr-long/2addr v2, v4

    #@b
    xor-long/2addr v0, v2

    #@c
    long-to-int v0, v0

    #@d
    return v0
.end method

.method setID(J)V
    .locals 5
    .param p1, "id"    # J

    #@0
    .prologue
    .line 37
    iget-wide v0, p0, Landroid/renderscript/BaseObj;->mID:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 38
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    #@a
    const-string/jumbo v1, "Internal Error, reset of object ID."

    #@d
    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 40
    :cond_0
    iput-wide p1, p0, Landroid/renderscript/BaseObj;->mID:J

    #@13
    .line 36
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 85
    if-nez p1, :cond_0

    #@2
    .line 86
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    #@4
    .line 87
    const-string/jumbo v3, "setName requires a string of non-zero length."

    #@7
    .line 86
    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 89
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@e
    move-result v2

    #@f
    const/4 v3, 0x1

    #@10
    if-ge v2, v3, :cond_1

    #@12
    .line 90
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    #@14
    .line 91
    const-string/jumbo v3, "setName does not accept a zero length string."

    #@17
    .line 90
    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v2

    #@1b
    .line 93
    :cond_1
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mName:Ljava/lang/String;

    #@1d
    if-eqz v2, :cond_2

    #@1f
    .line 94
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    #@21
    .line 95
    const-string/jumbo v3, "setName object already has a name."

    #@24
    .line 94
    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v2

    #@28
    .line 99
    :cond_2
    :try_start_0
    const-string/jumbo v2, "UTF-8"

    #@2b
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@2e
    move-result-object v0

    #@2f
    .line 100
    .local v0, "bytes":[B
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    #@31
    iget-wide v4, p0, Landroid/renderscript/BaseObj;->mID:J

    #@33
    invoke-virtual {v2, v4, v5, v0}, Landroid/renderscript/RenderScript;->nAssignName(J[B)V

    #@36
    .line 101
    iput-object p1, p0, Landroid/renderscript/BaseObj;->mName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    .line 84
    return-void

    #@39
    .line 102
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v1

    #@3a
    .line 103
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@3c
    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@3f
    throw v2
.end method

.method updateFromNative()V
    .locals 4

    #@0
    .prologue
    .line 166
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    #@2
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    #@5
    .line 167
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    #@7
    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    #@9
    invoke-virtual {p0, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    #@c
    move-result-wide v2

    #@d
    invoke-virtual {v0, v2, v3}, Landroid/renderscript/RenderScript;->nGetName(J)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/renderscript/BaseObj;->mName:Ljava/lang/String;

    #@13
    .line 165
    return-void
.end method
