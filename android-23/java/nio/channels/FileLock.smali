.class public abstract Ljava/nio/channels/FileLock;
.super Ljava/lang/Object;
.source "FileLock.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final channel:Ljava/nio/channels/FileChannel;

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
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 100
    cmp-long v0, p2, v2

    #@7
    if-ltz v0, :cond_0

    #@9
    cmp-long v0, p4, v2

    #@b
    if-gez v0, :cond_1

    #@d
    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "position="

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    const-string/jumbo v2, " size="

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0

    #@32
    .line 100
    :cond_1
    add-long v0, p2, p4

    #@34
    cmp-long v0, v0, v2

    #@36
    if-ltz v0, :cond_0

    #@38
    .line 103
    iput-object p1, p0, Ljava/nio/channels/FileLock;->channel:Ljava/nio/channels/FileChannel;

    #@3a
    .line 104
    iput-wide p2, p0, Ljava/nio/channels/FileLock;->position:J

    #@3c
    .line 105
    iput-wide p4, p0, Ljava/nio/channels/FileLock;->size:J

    #@3e
    .line 106
    iput-boolean p6, p0, Ljava/nio/channels/FileLock;->shared:Z

    #@40
    .line 99
    return-void
.end method


# virtual methods
.method public final channel()Ljava/nio/channels/FileChannel;
    .locals 1

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Ljava/nio/channels/FileLock;->channel:Ljava/nio/channels/FileChannel;

    #@2
    return-object v0
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
    .line 191
    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->release()V

    #@3
    .line 190
    return-void
.end method

.method public final isShared()Z
    .locals 1

    #@0
    .prologue
    .line 142
    iget-boolean v0, p0, Ljava/nio/channels/FileLock;->shared:Z

    #@2
    return v0
.end method

.method public abstract isValid()Z
.end method

.method public final overlaps(JJ)Z
    .locals 11
    .param p1, "start"    # J
    .param p3, "length"    # J

    #@0
    .prologue
    const-wide/16 v8, 0x1

    #@2
    .line 156
    iget-wide v4, p0, Ljava/nio/channels/FileLock;->position:J

    #@4
    iget-wide v6, p0, Ljava/nio/channels/FileLock;->size:J

    #@6
    add-long/2addr v4, v6

    #@7
    sub-long v0, v4, v8

    #@9
    .line 157
    .local v0, "end":J
    add-long v4, p1, p3

    #@b
    sub-long v2, v4, v8

    #@d
    .line 158
    .local v2, "newEnd":J
    cmp-long v4, v0, p1

    #@f
    if-ltz v4, :cond_0

    #@11
    iget-wide v4, p0, Ljava/nio/channels/FileLock;->position:J

    #@13
    cmp-long v4, v4, v2

    #@15
    if-lez v4, :cond_1

    #@17
    .line 159
    :cond_0
    const/4 v4, 0x0

    #@18
    return v4

    #@19
    .line 161
    :cond_1
    const/4 v4, 0x1

    #@1a
    return v4
.end method

.method public final position()J
    .locals 2

    #@0
    .prologue
    .line 122
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
    .line 131
    iget-wide v0, p0, Ljava/nio/channels/FileLock;->size:J

    #@2
    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "FileLock[position="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-wide v2, p0, Ljava/nio/channels/FileLock;->position:J

    #@e
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", size="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-wide v2, p0, Ljava/nio/channels/FileLock;->size:J

    #@1b
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, ", shared="

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    iget-boolean v1, p0, Ljava/nio/channels/FileLock;->shared:Z

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    const-string/jumbo v1, "]"

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method
