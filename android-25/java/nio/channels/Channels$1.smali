.class final Ljava/nio/channels/Channels$1;
.super Ljava/io/OutputStream;
.source "Channels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private b1:[B

.field private bb:Ljava/nio/ByteBuffer;

.field private bs:[B

.field final synthetic val$ch:Ljava/nio/channels/WritableByteChannel;


# direct methods
.method constructor <init>(Ljava/nio/channels/WritableByteChannel;)V
    .locals 1
    .param p1, "val$ch"    # Ljava/nio/channels/WritableByteChannel;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 146
    iput-object p1, p0, Ljava/nio/channels/Channels$1;->val$ch:Ljava/nio/channels/WritableByteChannel;

    #@3
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@6
    .line 148
    iput-object v0, p0, Ljava/nio/channels/Channels$1;->bb:Ljava/nio/ByteBuffer;

    #@8
    .line 149
    iput-object v0, p0, Ljava/nio/channels/Channels$1;->bs:[B

    #@a
    .line 150
    iput-object v0, p0, Ljava/nio/channels/Channels$1;->b1:[B

    #@c
    .line 146
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 179
    iget-object v0, p0, Ljava/nio/channels/Channels$1;->val$ch:Ljava/nio/channels/WritableByteChannel;

    #@2
    invoke-interface {v0}, Ljava/nio/channels/WritableByteChannel;->close()V

    #@5
    .line 178
    return-void
.end method

.method public declared-synchronized write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 153
    :try_start_0
    iget-object v0, p0, Ljava/nio/channels/Channels$1;->b1:[B

    #@3
    if-nez v0, :cond_0

    #@5
    .line 154
    const/4 v0, 0x1

    #@6
    new-array v0, v0, [B

    #@8
    iput-object v0, p0, Ljava/nio/channels/Channels$1;->b1:[B

    #@a
    .line 155
    :cond_0
    iget-object v0, p0, Ljava/nio/channels/Channels$1;->b1:[B

    #@c
    int-to-byte v1, p1

    #@d
    const/4 v2, 0x0

    #@e
    aput-byte v1, v0, v2

    #@10
    .line 156
    iget-object v0, p0, Ljava/nio/channels/Channels$1;->b1:[B

    #@12
    invoke-virtual {p0, v0}, Ljava/nio/channels/Channels$1;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit p0

    #@16
    .line 152
    return-void

    #@17
    :catchall_0
    move-exception v0

    #@18
    monitor-exit p0

    #@19
    throw v0
.end method

.method public declared-synchronized write([BII)V
    .locals 3
    .param p1, "bs"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 162
    if-ltz p2, :cond_0

    #@3
    :try_start_0
    array-length v1, p1

    #@4
    if-le p2, v1, :cond_1

    #@6
    .line 164
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@8
    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@b
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :catchall_0
    move-exception v1

    #@d
    monitor-exit p0

    #@e
    throw v1

    #@f
    .line 162
    :cond_1
    if-ltz p3, :cond_0

    #@11
    .line 163
    add-int v1, p2, p3

    #@13
    :try_start_1
    array-length v2, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    if-gt v1, v2, :cond_0

    #@16
    add-int v1, p2, p3

    #@18
    if-ltz v1, :cond_0

    #@1a
    .line 165
    if-nez p3, :cond_2

    #@1c
    monitor-exit p0

    #@1d
    .line 166
    return-void

    #@1e
    .line 168
    :cond_2
    :try_start_2
    iget-object v1, p0, Ljava/nio/channels/Channels$1;->bs:[B

    #@20
    if-ne v1, p1, :cond_3

    #@22
    .line 169
    iget-object v0, p0, Ljava/nio/channels/Channels$1;->bb:Ljava/nio/ByteBuffer;

    #@24
    .line 171
    .local v0, "bb":Ljava/nio/ByteBuffer;
    :goto_0
    add-int v1, p2, p3

    #@26
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    #@29
    move-result v2

    #@2a
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@2d
    move-result v1

    #@2e
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@31
    .line 172
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@34
    .line 173
    iput-object v0, p0, Ljava/nio/channels/Channels$1;->bb:Ljava/nio/ByteBuffer;

    #@36
    .line 174
    iput-object p1, p0, Ljava/nio/channels/Channels$1;->bs:[B

    #@38
    .line 175
    iget-object v1, p0, Ljava/nio/channels/Channels$1;->val$ch:Ljava/nio/channels/WritableByteChannel;

    #@3a
    invoke-static {v1, v0}, Ljava/nio/channels/Channels;->-wrap0(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3d
    monitor-exit p0

    #@3e
    .line 160
    return-void

    #@3f
    .line 170
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :cond_3
    :try_start_3
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@42
    move-result-object v0

    #@43
    goto :goto_0
.end method
