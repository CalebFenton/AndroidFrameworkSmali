.class public abstract Ljava/nio/channels/FileLock;
.super Ljava/lang/Object;
.source "FileLock.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final greylist-max-o channel:Ljava/nio/channels/Channel;

.field private final greylist-max-o position:J

.field private final greylist-max-o shared:Z

.field private final greylist-max-o size:J


# direct methods
.method protected constructor whitelist test-api <init>(Ljava/nio/channels/AsynchronousFileChannel;JJZ)V
    .registers 11
    .param p1, "channel"    # Ljava/nio/channels/AsynchronousFileChannel;
    .param p2, "position"    # J
    .param p4, "size"    # J
    .param p6, "shared"    # Z

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    invoke-static {}, Ldalvik/system/VMRuntime;->getSdkVersion()I

    move-result v0

    const/16 v1, 0x22

    if-lt v0, v1, :cond_10

    .line 200
    const-string v0, "Null channel"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 202
    :cond_10
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_39

    .line 204
    cmp-long v2, p4, v0

    if-ltz v2, :cond_31

    .line 206
    add-long v2, p2, p4

    cmp-long v0, v2, v0

    if-ltz v0, :cond_29

    .line 208
    iput-object p1, p0, Ljava/nio/channels/FileLock;->channel:Ljava/nio/channels/Channel;

    .line 209
    iput-wide p2, p0, Ljava/nio/channels/FileLock;->position:J

    .line 210
    iput-wide p4, p0, Ljava/nio/channels/FileLock;->size:J

    .line 211
    iput-boolean p6, p0, Ljava/nio/channels/FileLock;->shared:Z

    .line 212
    return-void

    .line 207
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative position + size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor whitelist test-api <init>(Ljava/nio/channels/FileChannel;JJZ)V
    .registers 11
    .param p1, "channel"    # Ljava/nio/channels/FileChannel;
    .param p2, "position"    # J
    .param p4, "size"    # J
    .param p6, "shared"    # Z

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    invoke-static {}, Ldalvik/system/VMRuntime;->getSdkVersion()I

    move-result v0

    const/16 v1, 0x22

    if-lt v0, v1, :cond_10

    .line 157
    const-string v0, "Null channel"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 159
    :cond_10
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_39

    .line 161
    cmp-long v2, p4, v0

    if-ltz v2, :cond_31

    .line 163
    add-long v2, p2, p4

    cmp-long v0, v2, v0

    if-ltz v0, :cond_29

    .line 165
    iput-object p1, p0, Ljava/nio/channels/FileLock;->channel:Ljava/nio/channels/Channel;

    .line 166
    iput-wide p2, p0, Ljava/nio/channels/FileLock;->position:J

    .line 167
    iput-wide p4, p0, Ljava/nio/channels/FileLock;->size:J

    .line 168
    iput-boolean p6, p0, Ljava/nio/channels/FileLock;->shared:Z

    .line 169
    return-void

    .line 164
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative position + size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api acquiredBy()Ljava/nio/channels/Channel;
    .registers 2

    .line 235
    iget-object v0, p0, Ljava/nio/channels/FileLock;->channel:Ljava/nio/channels/Channel;

    return-object v0
.end method

.method public final whitelist test-api channel()Ljava/nio/channels/FileChannel;
    .registers 2

    .line 224
    iget-object v0, p0, Ljava/nio/channels/FileLock;->channel:Ljava/nio/channels/Channel;

    instance-of v0, v0, Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_b

    iget-object v0, p0, Ljava/nio/channels/FileLock;->channel:Ljava/nio/channels/Channel;

    check-cast v0, Ljava/nio/channels/FileChannel;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public final whitelist test-api close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->release()V

    .line 329
    return-void
.end method

.method public final whitelist test-api isShared()Z
    .registers 2

    .line 272
    iget-boolean v0, p0, Ljava/nio/channels/FileLock;->shared:Z

    return v0
.end method

.method public abstract whitelist test-api isValid()Z
.end method

.method public final whitelist test-api overlaps(JJ)Z
    .registers 11
    .param p1, "position"    # J
    .param p3, "size"    # J

    .line 287
    add-long v0, p1, p3

    iget-wide v2, p0, Ljava/nio/channels/FileLock;->position:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_a

    .line 288
    return v1

    .line 289
    :cond_a
    iget-wide v2, p0, Ljava/nio/channels/FileLock;->position:J

    iget-wide v4, p0, Ljava/nio/channels/FileLock;->size:J

    add-long/2addr v2, v4

    cmp-long v0, v2, p1

    if-gtz v0, :cond_14

    .line 290
    return v1

    .line 291
    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method public final whitelist test-api position()J
    .registers 3

    .line 249
    iget-wide v0, p0, Ljava/nio/channels/FileLock;->position:J

    return-wide v0
.end method

.method public abstract whitelist test-api release()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final whitelist test-api size()J
    .registers 3

    .line 262
    iget-wide v0, p0, Ljava/nio/channels/FileLock;->size:J

    return-wide v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ljava/nio/channels/FileLock;->position:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ljava/nio/channels/FileLock;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 340
    iget-boolean v2, p0, Ljava/nio/channels/FileLock;->shared:Z

    if-eqz v2, :cond_36

    const-string v2, "shared"

    goto :goto_38

    :cond_36
    const-string v2, "exclusive"

    :goto_38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 341
    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v1

    if-eqz v1, :cond_49

    const-string v1, "valid"

    goto :goto_4b

    :cond_49
    const-string v1, "invalid"

    :goto_4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    return-object v0
.end method
