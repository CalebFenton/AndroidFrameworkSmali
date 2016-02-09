.class public Landroid/renderscript/BaseObj;
.super Ljava/lang/Object;
.source "BaseObj.java"


# instance fields
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
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    invoke-virtual {p3}, Landroid/renderscript/RenderScript;->validate()V

    #@6
    .line 30
    iput-object p3, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    #@8
    .line 31
    iput-wide p1, p0, Landroid/renderscript/BaseObj;->mID:J

    #@a
    .line 32
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    #@d
    .line 28
    return-void
.end method

.method private helpDestroy()V
    .locals 8

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    .line 113
    const/4 v1, 0x0

    #@3
    .line 114
    .local v1, "shouldDestroy":Z
    monitor-enter p0

    #@4
    .line 115
    :try_start_0
    iget-boolean v2, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    #@6
    if-nez v2, :cond_0

    #@8
    .line 116
    const/4 v1, 0x1

    #@9
    .line 117
    const/4 v2, 0x1

    #@a
    iput-boolean v2, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit p0

    #@d
    .line 121
    if-eqz v1, :cond_2

    #@f
    .line 123
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    #@11
    iget-object v2, v2, Landroid/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@13
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@16
    move-result-object v0

    #@17
    .line 124
    .local v0, "rlock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    #@1a
    .line 126
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    #@1c
    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->isAlive()Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_1

    #@22
    iget-wide v2, p0, Landroid/renderscript/BaseObj;->mID:J

    #@24
    cmp-long v2, v2, v6

    #@26
    if-eqz v2, :cond_1

    #@28
    .line 127
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    #@2a
    iget-wide v4, p0, Landroid/renderscript/BaseObj;->mID:J

    #@2c
    invoke-virtual {v2, v4, v5}, Landroid/renderscript/RenderScript;->nObjDestroy(J)V

    #@2f
    .line 129
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@32
    .line 130
    const/4 v2, 0x0

    #@33
    iput-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    #@35
    .line 131
    iput-wide v6, p0, Landroid/renderscript/BaseObj;->mID:J

    #@37
    .line 112
    .end local v0    # "rlock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    :cond_2
    return-void

    #@38
    .line 114
    :catchall_0
    move-exception v2

    #@39
    monitor-exit p0

    #@3a
    throw v2
.end method


# virtual methods
.method checkValid()V
    .locals 4

    #@0
    .prologue
    .line 66
    iget-wide v0, p0, Landroid/renderscript/BaseObj;->mID:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    .line 67
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@a
    const-string/jumbo v1, "Invalid object."

    #@d
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 65
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    #@0
    .prologue
    .line 146
    iget-boolean v0, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 147
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    #@6
    const-string/jumbo v1, "Object already destroyed."

    #@9
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 149
    :cond_0
    invoke-direct {p0}, Landroid/renderscript/BaseObj;->helpDestroy()V

    #@10
    .line 145
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
    .line 181
    if-ne p0, p1, :cond_0

    #@4
    .line 182
    return v1

    #@5
    .line 184
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 185
    return v2

    #@8
    .line 188
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
    .line 189
    return v2

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 192
    check-cast v0, Landroid/renderscript/BaseObj;

    #@16
    .line 193
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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 136
    invoke-direct {p0}, Landroid/renderscript/BaseObj;->helpDestroy()V

    #@3
    .line 137
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@6
    .line 135
    return-void
.end method

.method getID(Landroid/renderscript/RenderScript;)J
    .locals 4
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 52
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    #@2
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    #@5
    .line 53
    iget-boolean v0, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 54
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    #@b
    const-string/jumbo v1, "using a destroyed object."

    #@e
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 56
    :cond_0
    iget-wide v0, p0, Landroid/renderscript/BaseObj;->mID:J

    #@14
    const-wide/16 v2, 0x0

    #@16
    cmp-long v0, v0, v2

    #@18
    if-nez v0, :cond_1

    #@1a
    .line 57
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    #@1c
    const-string/jumbo v1, "Internal error: Object id 0."

    #@1f
    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 59
    :cond_1
    if-eqz p1, :cond_2

    #@25
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    #@27
    if-eq p1, v0, :cond_2

    #@29
    .line 60
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    #@2b
    const-string/jumbo v1, "using object with mismatched context."

    #@2e
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0

    #@32
    .line 62
    :cond_2
    iget-wide v0, p0, Landroid/renderscript/BaseObj;->mID:J

    #@34
    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    .line 168
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
    .line 36
    iget-wide v0, p0, Landroid/renderscript/BaseObj;->mID:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 37
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    #@a
    const-string/jumbo v1, "Internal Error, reset of object ID."

    #@d
    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 39
    :cond_0
    iput-wide p1, p0, Landroid/renderscript/BaseObj;->mID:J

    #@13
    .line 35
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 83
    if-nez p1, :cond_0

    #@2
    .line 84
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    #@4
    .line 85
    const-string/jumbo v3, "setName requires a string of non-zero length."

    #@7
    .line 84
    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 87
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@e
    move-result v2

    #@f
    const/4 v3, 0x1

    #@10
    if-ge v2, v3, :cond_1

    #@12
    .line 88
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    #@14
    .line 89
    const-string/jumbo v3, "setName does not accept a zero length string."

    #@17
    .line 88
    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v2

    #@1b
    .line 91
    :cond_1
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mName:Ljava/lang/String;

    #@1d
    if-eqz v2, :cond_2

    #@1f
    .line 92
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    #@21
    .line 93
    const-string/jumbo v3, "setName object already has a name."

    #@24
    .line 92
    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v2

    #@28
    .line 97
    :cond_2
    :try_start_0
    const-string/jumbo v2, "UTF-8"

    #@2b
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@2e
    move-result-object v0

    #@2f
    .line 98
    .local v0, "bytes":[B
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    #@31
    iget-wide v4, p0, Landroid/renderscript/BaseObj;->mID:J

    #@33
    invoke-virtual {v2, v4, v5, v0}, Landroid/renderscript/RenderScript;->nAssignName(J[B)V

    #@36
    .line 99
    iput-object p1, p0, Landroid/renderscript/BaseObj;->mName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    .line 82
    return-void

    #@39
    .line 100
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v1

    #@3a
    .line 101
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
    .line 157
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    #@2
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    #@5
    .line 158
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
    .line 156
    return-void
.end method
