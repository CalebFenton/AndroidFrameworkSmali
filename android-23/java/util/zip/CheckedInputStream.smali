.class public Ljava/util/zip/CheckedInputStream;
.super Ljava/io/FilterInputStream;
.source "CheckedInputStream.java"


# instance fields
.field private final check:Ljava/util/zip/Checksum;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "csum"    # Ljava/util/zip/Checksum;

    #@0
    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@3
    .line 49
    iput-object p2, p0, Ljava/util/zip/CheckedInputStream;->check:Ljava/util/zip/Checksum;

    #@5
    .line 47
    return-void
.end method


# virtual methods
.method public getChecksum()Ljava/util/zip/Checksum;
    .locals 1

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Ljava/util/zip/CheckedInputStream;->check:Ljava/util/zip/Checksum;

    #@2
    return-object v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 63
    iget-object v1, p0, Ljava/util/zip/CheckedInputStream;->in:Ljava/io/InputStream;

    #@2
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    #@5
    move-result v0

    #@6
    .line 64
    .local v0, "x":I
    const/4 v1, -0x1

    #@7
    if-eq v0, v1, :cond_0

    #@9
    .line 65
    iget-object v1, p0, Ljava/util/zip/CheckedInputStream;->check:Ljava/util/zip/Checksum;

    #@b
    invoke-interface {v1, v0}, Ljava/util/zip/Checksum;->update(I)V

    #@e
    .line 67
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
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
    .line 82
    iget-object v1, p0, Ljava/util/zip/CheckedInputStream;->in:Ljava/io/InputStream;

    #@2
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    #@5
    move-result v0

    #@6
    .line 83
    .local v0, "bytesRead":I
    const/4 v1, -0x1

    #@7
    if-eq v0, v1, :cond_0

    #@9
    .line 84
    iget-object v1, p0, Ljava/util/zip/CheckedInputStream;->check:Ljava/util/zip/Checksum;

    #@b
    invoke-interface {v1, p1, p2, v0}, Ljava/util/zip/Checksum;->update([BII)V

    #@e
    .line 86
    :cond_0
    return v0
.end method

.method public skip(J)J
    .locals 3
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 106
    invoke-static {p0, p1, p2}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method
