.class public Lcom/android/internal/util/SizedInputStream;
.super Ljava/io/InputStream;
.source "SizedInputStream.java"


# instance fields
.field private mLength:J

.field private final mWrapped:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 0
    .param p1, "wrapped"    # Ljava/io/InputStream;
    .param p2, "length"    # J

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@3
    .line 33
    iput-object p1, p0, Lcom/android/internal/util/SizedInputStream;->mWrapped:Ljava/io/InputStream;

    #@5
    .line 34
    iput-wide p2, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    #@7
    .line 32
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
    .line 39
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    #@3
    .line 40
    iget-object v0, p0, Lcom/android/internal/util/SizedInputStream;->mWrapped:Ljava/io/InputStream;

    #@5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    #@8
    .line 38
    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 45
    invoke-static {p0}, Llibcore/io/Streams;->readSingleByte(Ljava/io/InputStream;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public read([BII)I
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    const/4 v6, -0x1

    #@3
    .line 50
    iget-wide v2, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    #@5
    cmp-long v1, v2, v8

    #@7
    if-gtz v1, :cond_0

    #@9
    .line 51
    return v6

    #@a
    .line 52
    :cond_0
    int-to-long v2, p3

    #@b
    iget-wide v4, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    #@d
    cmp-long v1, v2, v4

    #@f
    if-lez v1, :cond_1

    #@11
    .line 53
    iget-wide v2, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    #@13
    long-to-int p3, v2

    #@14
    .line 56
    :cond_1
    iget-object v1, p0, Lcom/android/internal/util/SizedInputStream;->mWrapped:Ljava/io/InputStream;

    #@16
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    #@19
    move-result v0

    #@1a
    .line 57
    .local v0, "n":I
    if-ne v0, v6, :cond_2

    #@1c
    .line 58
    iget-wide v2, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    #@1e
    cmp-long v1, v2, v8

    #@20
    if-lez v1, :cond_3

    #@22
    .line 59
    new-instance v1, Ljava/io/IOException;

    #@24
    new-instance v2, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v3, "Unexpected EOF; expected "

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    iget-wide v4, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    #@32
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    const-string/jumbo v3, " more bytes"

    #@39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@44
    throw v1

    #@45
    .line 62
    :cond_2
    iget-wide v2, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    #@47
    int-to-long v4, v0

    #@48
    sub-long/2addr v2, v4

    #@49
    iput-wide v2, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    #@4b
    .line 64
    :cond_3
    return v0
.end method
