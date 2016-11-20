.class public Lorg/apache/http/impl/io/ContentLengthInputStream;
.super Ljava/io/InputStream;
.source "ContentLengthInputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x800


# instance fields
.field private closed:Z

.field private contentLength:J

.field private in:Lorg/apache/http/io/SessionInputBuffer;

.field private pos:J


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;J)V
    .locals 4
    .param p1, "in"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p2, "contentLength"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    .line 104
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@6
    .line 86
    iput-wide v2, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    #@8
    .line 89
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    #@b
    .line 94
    iput-object v1, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    #@d
    .line 105
    if-nez p1, :cond_0

    #@f
    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v1, "Input stream may not be null"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 108
    :cond_0
    cmp-long v0, p2, v2

    #@1a
    if-gez v0, :cond_1

    #@1c
    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1e
    const-string/jumbo v1, "Content length may not be negative"

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 111
    :cond_1
    iput-object p1, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    #@27
    .line 112
    iput-wide p2, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    #@29
    .line 103
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 123
    iget-boolean v1, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    #@3
    if-nez v1, :cond_1

    #@5
    .line 125
    const/16 v1, 0x800

    #@7
    :try_start_0
    new-array v0, v1, [B

    #@9
    .line 126
    .local v0, "buffer":[B
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/io/ContentLengthInputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v1

    #@d
    if-gez v1, :cond_0

    #@f
    .line 131
    iput-boolean v2, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    #@11
    .line 122
    .end local v0    # "buffer":[B
    :cond_1
    return-void

    #@12
    .line 128
    :catchall_0
    move-exception v1

    #@13
    .line 131
    iput-boolean v2, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    #@15
    .line 128
    throw v1
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 144
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 145
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Attempted read from closed stream."

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 148
    :cond_0
    iget-wide v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    #@f
    iget-wide v2, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    #@11
    cmp-long v0, v0, v2

    #@13
    if-ltz v0, :cond_1

    #@15
    .line 149
    const/4 v0, -0x1

    #@16
    return v0

    #@17
    .line 151
    :cond_1
    iget-wide v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    #@19
    const-wide/16 v2, 0x1

    #@1b
    add-long/2addr v0, v2

    #@1c
    iput-wide v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    #@1e
    .line 152
    iget-object v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    #@20
    invoke-interface {v0}, Lorg/apache/http/io/SessionInputBuffer;->read()I

    #@23
    move-result v0

    #@24
    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 193
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/http/impl/io/ContentLengthInputStream;->read([BII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 168
    iget-boolean v1, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 169
    new-instance v1, Ljava/io/IOException;

    #@6
    const-string/jumbo v2, "Attempted read from closed stream."

    #@9
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 172
    :cond_0
    iget-wide v2, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    #@f
    iget-wide v4, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    #@11
    cmp-long v1, v2, v4

    #@13
    if-ltz v1, :cond_1

    #@15
    .line 173
    const/4 v1, -0x1

    #@16
    return v1

    #@17
    .line 176
    :cond_1
    iget-wide v2, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    #@19
    int-to-long v4, p3

    #@1a
    add-long/2addr v2, v4

    #@1b
    iget-wide v4, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    #@1d
    cmp-long v1, v2, v4

    #@1f
    if-lez v1, :cond_2

    #@21
    .line 177
    iget-wide v2, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    #@23
    iget-wide v4, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    #@25
    sub-long/2addr v2, v4

    #@26
    long-to-int p3, v2

    #@27
    .line 179
    :cond_2
    iget-object v1, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    #@29
    invoke-interface {v1, p1, p2, p3}, Lorg/apache/http/io/SessionInputBuffer;->read([BII)I

    #@2c
    move-result v0

    #@2d
    .line 180
    .local v0, "count":I
    iget-wide v2, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    #@2f
    int-to-long v4, v0

    #@30
    add-long/2addr v2, v4

    #@31
    iput-wide v2, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    #@33
    .line 181
    return v0
.end method

.method public skip(J)J
    .locals 13
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v10, 0x0

    #@2
    .line 205
    cmp-long v6, p1, v10

    #@4
    if-gtz v6, :cond_0

    #@6
    .line 206
    return-wide v10

    #@7
    .line 208
    :cond_0
    const/16 v6, 0x800

    #@9
    new-array v0, v6, [B

    #@b
    .line 211
    .local v0, "buffer":[B
    iget-wide v6, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    #@d
    iget-wide v8, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    #@f
    sub-long/2addr v6, v8

    #@10
    invoke-static {p1, p2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    #@13
    move-result-wide v4

    #@14
    .line 213
    .local v4, "remaining":J
    const-wide/16 v2, 0x0

    #@16
    .line 214
    .local v2, "count":J
    :goto_0
    cmp-long v6, v4, v10

    #@18
    if-lez v6, :cond_1

    #@1a
    .line 215
    const-wide/16 v6, 0x800

    #@1c
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    #@1f
    move-result-wide v6

    #@20
    long-to-int v6, v6

    #@21
    const/4 v7, 0x0

    #@22
    invoke-virtual {p0, v0, v7, v6}, Lorg/apache/http/impl/io/ContentLengthInputStream;->read([BII)I

    #@25
    move-result v1

    #@26
    .line 216
    .local v1, "l":I
    const/4 v6, -0x1

    #@27
    if-ne v1, v6, :cond_2

    #@29
    .line 222
    .end local v1    # "l":I
    :cond_1
    iget-wide v6, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    #@2b
    add-long/2addr v6, v2

    #@2c
    iput-wide v6, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    #@2e
    .line 223
    return-wide v2

    #@2f
    .line 219
    .restart local v1    # "l":I
    :cond_2
    int-to-long v6, v1

    #@30
    add-long/2addr v2, v6

    #@31
    .line 220
    int-to-long v6, v1

    #@32
    sub-long/2addr v4, v6

    #@33
    goto :goto_0
.end method
