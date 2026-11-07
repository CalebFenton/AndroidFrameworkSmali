.class public Ljava/util/zip/CheckedInputStream;
.super Ljava/io/FilterInputStream;
.source "CheckedInputStream.java"


# instance fields
.field private greylist-max-o cksum:Ljava/util/zip/Checksum;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "cksum"    # Ljava/util/zip/Checksum;

    .line 49
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 50
    iput-object p2, p0, Ljava/util/zip/CheckedInputStream;->cksum:Ljava/util/zip/Checksum;

    .line 51
    return-void
.end method


# virtual methods
.method public whitelist test-api getChecksum()Ljava/util/zip/Checksum;
    .registers 2

    .line 114
    iget-object v0, p0, Ljava/util/zip/CheckedInputStream;->cksum:Ljava/util/zip/Checksum;

    return-object v0
.end method

.method public whitelist test-api read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Ljava/util/zip/CheckedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 60
    .local v0, "b":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 61
    iget-object v1, p0, Ljava/util/zip/CheckedInputStream;->cksum:Ljava/util/zip/Checksum;

    invoke-interface {v1, v0}, Ljava/util/zip/Checksum;->update(I)V

    .line 63
    :cond_e
    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 5
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Ljava/util/zip/CheckedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    .line 83
    const/4 v0, -0x1

    if-eq p3, v0, :cond_e

    .line 84
    iget-object v0, p0, Ljava/util/zip/CheckedInputStream;->cksum:Ljava/util/zip/Checksum;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/zip/Checksum;->update([BII)V

    .line 86
    :cond_e
    return p3
.end method

.method public whitelist test-api skip(J)J
    .registers 10
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 97
    .local v0, "buf":[B
    const-wide/16 v1, 0x0

    .line 98
    .local v1, "total":J
    :goto_6
    cmp-long v3, v1, p1

    if-gez v3, :cond_24

    .line 99
    sub-long v3, p1, v1

    .line 100
    .local v3, "len":J
    array-length v5, v0

    int-to-long v5, v5

    cmp-long v5, v3, v5

    if-gez v5, :cond_14

    long-to-int v5, v3

    goto :goto_15

    :cond_14
    array-length v5, v0

    :goto_15
    const/4 v6, 0x0

    invoke-virtual {p0, v0, v6, v5}, Ljava/util/zip/CheckedInputStream;->read([BII)I

    move-result v5

    int-to-long v3, v5

    .line 101
    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_22

    .line 102
    return-wide v1

    .line 104
    :cond_22
    add-long/2addr v1, v3

    .line 105
    .end local v3    # "len":J
    goto :goto_6

    .line 106
    :cond_24
    return-wide v1
.end method
