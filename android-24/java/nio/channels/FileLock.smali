.class public abstract Ljava/nio/channels/FileLock;
.super Ljava/lang/Object;
.source "FileLock.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final channel:Ljava/nio/channels/Channel;

.field private final position:J

.field private final shared:Z

.field private final size:J


# direct methods
.method protected constructor <init>(Ljava/nio/channels/FileChannel;JJZ)V
    .locals 4
    .param p1, "channel"    # Ljava/nio/channels/FileChannel;
    .param p2, "position"    # J
    .param p4, "size"    # J
    .param p6, "shared"    # Z

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 147
    cmp-long v0, p2, v2

    #@7
    if-gez v0, :cond_0

    #@9
    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v1, "Negative position"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 149
    :cond_0
    cmp-long v0, p4, v2

    #@14
    if-gez v0, :cond_1

    #@16
    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v1, "Negative size"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 151
    :cond_1
    add-long v0, p2, p4

    #@21
    cmp-long v0, v0, v2

    #@23
    if-gez v0, :cond_2

    #@25
    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@27
    const-string/jumbo v1, "Negative position + size"

    #@2a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    .line 153
    :cond_2
    iput-object p1, p0, Ljava/nio/channels/FileLock;->channel:Ljava/nio/channels/Channel;

    #@30
    .line 154
    iput-wide p2, p0, Ljava/nio/channels/FileLock;->position:J

    #@32
    .line 155
    iput-wide p4, p0, Ljava/nio/channels/FileLock;->size:J

    #@34
    .line 156
    iput-boolean p6, p0, Ljava/nio/channels/FileLock;->shared:Z

    #@36
    .line 145
    return-void
.end method


# virtual methods
.method public acquiredBy()Ljava/nio/channels/Channel;
    .locals 1

    #@0
    .prologue
    .line 180
    iget-object v0, p0, Ljava/nio/channels/FileLock;->channel:Ljava/nio/channels/Channel;

    #@2
    return-object v0
.end method

.method public final channel()Ljava/nio/channels/FileChannel;
    .locals 1

    #@0
    .prologue
    .line 169
    iget-object v0, p0, Ljava/nio/channels/FileLock;->channel:Ljava/nio/channels/Channel;

    #@2
    instance-of v0, v0, Ljava/nio/channels/FileChannel;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Ljava/nio/channels/FileLock;->channel:Ljava/nio/channels/Channel;

    #@8
    check-cast v0, Ljava/nio/channels/FileChannel;

    #@a
    :goto_0
    return-object v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public final close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 268
    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->release()V

    #@3
    .line 267
    return-void
.end method

.method public final isShared()Z
    .locals 1

    #@0
    .prologue
    .line 217
    iget-boolean v0, p0, Ljava/nio/channels/FileLock;->shared:Z

    #@2
    return v0
.end method

.method public abstract isValid()Z
.end method

.method public final overlaps(JJ)Z
    .locals 5
    .param p1, "position"    # J
    .param p3, "size"    # J

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 227
    add-long v0, p1, p3

    #@3
    iget-wide v2, p0, Ljava/nio/channels/FileLock;->position:J

    #@5
    cmp-long v0, v0, v2

    #@7
    if-gtz v0, :cond_0

    #@9
    .line 228
    return v4

    #@a
    .line 229
    :cond_0
    iget-wide v0, p0, Ljava/nio/channels/FileLock;->position:J

    #@c
    iget-wide v2, p0, Ljava/nio/channels/FileLock;->size:J

    #@e
    add-long/2addr v0, v2

    #@f
    cmp-long v0, v0, p1

    #@11
    if-gtz v0, :cond_1

    #@13
    .line 230
    return v4

    #@14
    .line 231
    :cond_1
    const/4 v0, 0x1

    #@15
    return v0
.end method

.method public final position()J
    .locals 2

    #@0
    .prologue
    .line 194
    iget-wide v0, p0, Ljava/nio/channels/FileLock;->position:J

    #@2
    return-wide v0
.end method

.method public abstract release()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final size()J
    .locals 2

    #@0
    .prologue
    .line 207
    iget-wide v0, p0, Ljava/nio/channels/FileLock;->size:J

    #@2
    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    .line 278
    const-string/jumbo v1, "["

    #@14
    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 278
    iget-wide v2, p0, Ljava/nio/channels/FileLock;->position:J

    #@1a
    .line 277
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    .line 279
    const-string/jumbo v1, ":"

    #@21
    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 279
    iget-wide v2, p0, Ljava/nio/channels/FileLock;->size:J

    #@27
    .line 277
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    .line 280
    const-string/jumbo v1, " "

    #@2e
    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    .line 280
    iget-boolean v0, p0, Ljava/nio/channels/FileLock;->shared:Z

    #@34
    if-eqz v0, :cond_0

    #@36
    const-string/jumbo v0, "shared"

    #@39
    .line 277
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    .line 281
    const-string/jumbo v1, " "

    #@40
    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    .line 281
    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->isValid()Z

    #@47
    move-result v0

    #@48
    if-eqz v0, :cond_1

    #@4a
    const-string/jumbo v0, "valid"

    #@4d
    .line 277
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v0

    #@51
    .line 282
    const-string/jumbo v1, "]"

    #@54
    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v0

    #@58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v0

    #@5c
    return-object v0

    #@5d
    .line 280
    :cond_0
    const-string/jumbo v0, "exclusive"

    #@60
    goto :goto_0

    #@61
    .line 281
    :cond_1
    const-string/jumbo v0, "invalid"

    #@64
    goto :goto_1
.end method
