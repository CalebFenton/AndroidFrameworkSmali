.class public Lorg/apache/http/entity/InputStreamEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "InputStreamEntity.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x800


# instance fields
.field private consumed:Z

.field private final content:Ljava/io/InputStream;

.field private final length:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 2
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "length"    # J

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    #@3
    .line 58
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lorg/apache/http/entity/InputStreamEntity;->consumed:Z

    #@6
    .line 62
    if-nez p1, :cond_0

    #@8
    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "Source input stream may not be null"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 65
    :cond_0
    iput-object p1, p0, Lorg/apache/http/entity/InputStreamEntity;->content:Ljava/io/InputStream;

    #@13
    .line 66
    iput-wide p2, p0, Lorg/apache/http/entity/InputStreamEntity;->length:J

    #@15
    .line 60
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 115
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lorg/apache/http/entity/InputStreamEntity;->consumed:Z

    #@3
    .line 118
    iget-object v0, p0, Lorg/apache/http/entity/InputStreamEntity;->content:Ljava/io/InputStream;

    #@5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    #@8
    .line 114
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/http/entity/InputStreamEntity;->content:Ljava/io/InputStream;

    #@2
    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    #@0
    .prologue
    .line 74
    iget-wide v0, p0, Lorg/apache/http/entity/InputStreamEntity;->length:J

    #@2
    return-wide v0
.end method

.method public isRepeatable()Z
    .locals 1

    #@0
    .prologue
    .line 70
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isStreaming()Z
    .locals 1

    #@0
    .prologue
    .line 110
    iget-boolean v0, p0, Lorg/apache/http/entity/InputStreamEntity;->consumed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x1

    #@7
    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 12
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v10, 0x0

    #@2
    const/4 v9, -0x1

    #@3
    const/4 v8, 0x0

    #@4
    .line 82
    if-nez p1, :cond_0

    #@6
    .line 83
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v6, "Output stream may not be null"

    #@b
    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 85
    :cond_0
    iget-object v1, p0, Lorg/apache/http/entity/InputStreamEntity;->content:Ljava/io/InputStream;

    #@11
    .line 86
    .local v1, "instream":Ljava/io/InputStream;
    const/16 v3, 0x800

    #@13
    new-array v0, v3, [B

    #@15
    .line 88
    .local v0, "buffer":[B
    iget-wide v6, p0, Lorg/apache/http/entity/InputStreamEntity;->length:J

    #@17
    cmp-long v3, v6, v10

    #@19
    if-gez v3, :cond_1

    #@1b
    .line 90
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    #@1e
    move-result v2

    #@1f
    .local v2, "l":I
    if-eq v2, v9, :cond_2

    #@21
    .line 91
    invoke-virtual {p1, v0, v8, v2}, Ljava/io/OutputStream;->write([BII)V

    #@24
    goto :goto_0

    #@25
    .line 95
    .end local v2    # "l":I
    :cond_1
    iget-wide v4, p0, Lorg/apache/http/entity/InputStreamEntity;->length:J

    #@27
    .line 96
    .local v4, "remaining":J
    :goto_1
    cmp-long v3, v4, v10

    #@29
    if-lez v3, :cond_2

    #@2b
    .line 97
    const-wide/16 v6, 0x800

    #@2d
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    #@30
    move-result-wide v6

    #@31
    long-to-int v3, v6

    #@32
    invoke-virtual {v1, v0, v8, v3}, Ljava/io/InputStream;->read([BII)I

    #@35
    move-result v2

    #@36
    .line 98
    .restart local v2    # "l":I
    if-ne v2, v9, :cond_3

    #@38
    .line 105
    .end local v2    # "l":I
    .end local v4    # "remaining":J
    :cond_2
    const/4 v3, 0x1

    #@39
    iput-boolean v3, p0, Lorg/apache/http/entity/InputStreamEntity;->consumed:Z

    #@3b
    .line 81
    return-void

    #@3c
    .line 101
    .restart local v2    # "l":I
    .restart local v4    # "remaining":J
    :cond_3
    invoke-virtual {p1, v0, v8, v2}, Ljava/io/OutputStream;->write([BII)V

    #@3f
    .line 102
    int-to-long v6, v2

    #@40
    sub-long/2addr v4, v6

    #@41
    goto :goto_1
.end method
