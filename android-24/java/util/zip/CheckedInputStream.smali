.class public Ljava/util/zip/CheckedInputStream;
.super Ljava/io/FilterInputStream;
.source "CheckedInputStream.java"


# instance fields
.field private cksum:Ljava/util/zip/Checksum;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "cksum"    # Ljava/util/zip/Checksum;

    #@0
    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@3
    .line 50
    iput-object p2, p0, Ljava/util/zip/CheckedInputStream;->cksum:Ljava/util/zip/Checksum;

    #@5
    .line 48
    return-void
.end method


# virtual methods
.method public getChecksum()Ljava/util/zip/Checksum;
    .locals 1

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Ljava/util/zip/CheckedInputStream;->cksum:Ljava/util/zip/Checksum;

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
    .line 59
    iget-object v1, p0, Ljava/util/zip/CheckedInputStream;->in:Ljava/io/InputStream;

    #@2
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    #@5
    move-result v0

    #@6
    .line 60
    .local v0, "b":I
    const/4 v1, -0x1

    #@7
    if-eq v0, v1, :cond_0

    #@9
    .line 61
    iget-object v1, p0, Ljava/util/zip/CheckedInputStream;->cksum:Ljava/util/zip/Checksum;

    #@b
    invoke-interface {v1, v0}, Ljava/util/zip/Checksum;->update(I)V

    #@e
    .line 63
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Ljava/util/zip/CheckedInputStream;->in:Ljava/io/InputStream;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    #@5
    move-result p3

    #@6
    .line 83
    const/4 v0, -0x1

    #@7
    if-eq p3, v0, :cond_0

    #@9
    .line 84
    iget-object v0, p0, Ljava/util/zip/CheckedInputStream;->cksum:Ljava/util/zip/Checksum;

    #@b
    invoke-interface {v0, p1, p2, p3}, Ljava/util/zip/Checksum;->update([BII)V

    #@e
    .line 86
    :cond_0
    return p3
.end method

.method public skip(J)J
    .locals 9
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 96
    const/16 v1, 0x200

    #@2
    new-array v0, v1, [B

    #@4
    .line 97
    .local v0, "buf":[B
    const-wide/16 v4, 0x0

    #@6
    .line 98
    .local v4, "total":J
    :goto_0
    cmp-long v1, v4, p1

    #@8
    if-gez v1, :cond_2

    #@a
    .line 99
    sub-long v2, p1, v4

    #@c
    .line 100
    .local v2, "len":J
    array-length v1, v0

    #@d
    int-to-long v6, v1

    #@e
    cmp-long v1, v2, v6

    #@10
    if-gez v1, :cond_0

    #@12
    long-to-int v1, v2

    #@13
    :goto_1
    const/4 v6, 0x0

    #@14
    invoke-virtual {p0, v0, v6, v1}, Ljava/util/zip/CheckedInputStream;->read([BII)I

    #@17
    move-result v1

    #@18
    int-to-long v2, v1

    #@19
    .line 101
    const-wide/16 v6, -0x1

    #@1b
    cmp-long v1, v2, v6

    #@1d
    if-nez v1, :cond_1

    #@1f
    .line 102
    return-wide v4

    #@20
    .line 100
    :cond_0
    array-length v1, v0

    #@21
    goto :goto_1

    #@22
    .line 104
    :cond_1
    add-long/2addr v4, v2

    #@23
    goto :goto_0

    #@24
    .line 106
    .end local v2    # "len":J
    :cond_2
    return-wide v4
.end method
