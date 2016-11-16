.class public Lorg/apache/http/impl/io/ContentLengthOutputStream;
.super Ljava/io/OutputStream;
.source "ContentLengthOutputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private closed:Z

.field private final contentLength:J

.field private final out:Lorg/apache/http/io/SessionOutputBuffer;

.field private total:J


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionOutputBuffer;J)V
    .locals 4
    .param p1, "out"    # Lorg/apache/http/io/SessionOutputBuffer;
    .param p2, "contentLength"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 82
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@5
    .line 67
    iput-wide v2, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->total:J

    #@7
    .line 70
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->closed:Z

    #@a
    .line 83
    if-nez p1, :cond_0

    #@c
    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    const-string/jumbo v1, "Session output buffer may not be null"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 86
    :cond_0
    cmp-long v0, p2, v2

    #@17
    if-gez v0, :cond_1

    #@19
    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1b
    const-string/jumbo v1, "Content length may not be negative"

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 89
    :cond_1
    iput-object p1, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    #@24
    .line 90
    iput-wide p2, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->contentLength:J

    #@26
    .line 81
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
    .line 99
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->closed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 100
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->closed:Z

    #@7
    .line 101
    iget-object v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    #@9
    invoke-interface {v0}, Lorg/apache/http/io/SessionOutputBuffer;->flush()V

    #@c
    .line 98
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    #@2
    invoke-interface {v0}, Lorg/apache/http/io/SessionOutputBuffer;->flush()V

    #@5
    .line 105
    return-void
.end method

.method public write(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 128
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 129
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Attempted write to closed stream."

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 131
    :cond_0
    iget-wide v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->total:J

    #@f
    iget-wide v2, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->contentLength:J

    #@11
    cmp-long v0, v0, v2

    #@13
    if-gez v0, :cond_1

    #@15
    .line 132
    iget-object v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    #@17
    invoke-interface {v0, p1}, Lorg/apache/http/io/SessionOutputBuffer;->write(I)V

    #@1a
    .line 133
    iget-wide v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->total:J

    #@1c
    const-wide/16 v2, 0x1

    #@1e
    add-long/2addr v0, v2

    #@1f
    iput-wide v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->total:J

    #@21
    .line 127
    :cond_1
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 124
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/http/impl/io/ContentLengthOutputStream;->write([BII)V

    #@5
    .line 123
    return-void
.end method

.method public write([BII)V
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
    .line 110
    iget-boolean v2, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->closed:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 111
    new-instance v2, Ljava/io/IOException;

    #@6
    const-string/jumbo v3, "Attempted write to closed stream."

    #@9
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v2

    #@d
    .line 113
    :cond_0
    iget-wide v2, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->total:J

    #@f
    iget-wide v4, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->contentLength:J

    #@11
    cmp-long v2, v2, v4

    #@13
    if-gez v2, :cond_2

    #@15
    .line 114
    iget-wide v2, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->contentLength:J

    #@17
    iget-wide v4, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->total:J

    #@19
    sub-long v0, v2, v4

    #@1b
    .line 115
    .local v0, "max":J
    int-to-long v2, p3

    #@1c
    cmp-long v2, v2, v0

    #@1e
    if-lez v2, :cond_1

    #@20
    .line 116
    long-to-int p3, v0

    #@21
    .line 118
    :cond_1
    iget-object v2, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    #@23
    invoke-interface {v2, p1, p2, p3}, Lorg/apache/http/io/SessionOutputBuffer;->write([BII)V

    #@26
    .line 119
    iget-wide v2, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->total:J

    #@28
    int-to-long v4, p3

    #@29
    add-long/2addr v2, v4

    #@2a
    iput-wide v2, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->total:J

    #@2c
    .line 109
    .end local v0    # "max":J
    :cond_2
    return-void
.end method
