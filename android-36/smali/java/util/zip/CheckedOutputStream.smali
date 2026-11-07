.class public Ljava/util/zip/CheckedOutputStream;
.super Ljava/io/FilterOutputStream;
.source "CheckedOutputStream.java"


# instance fields
.field private greylist-max-o cksum:Ljava/util/zip/Checksum;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;Ljava/util/zip/Checksum;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "cksum"    # Ljava/util/zip/Checksum;

    .line 50
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 51
    iput-object p2, p0, Ljava/util/zip/CheckedOutputStream;->cksum:Ljava/util/zip/Checksum;

    .line 52
    return-void
.end method


# virtual methods
.method public whitelist test-api getChecksum()Ljava/util/zip/Checksum;
    .registers 2

    .line 82
    iget-object v0, p0, Ljava/util/zip/CheckedOutputStream;->cksum:Ljava/util/zip/Checksum;

    return-object v0
.end method

.method public whitelist test-api write(I)V
    .registers 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Ljava/util/zip/CheckedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 61
    iget-object v0, p0, Ljava/util/zip/CheckedOutputStream;->cksum:Ljava/util/zip/Checksum;

    invoke-interface {v0, p1}, Ljava/util/zip/Checksum;->update(I)V

    .line 62
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Ljava/util/zip/CheckedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 74
    iget-object v0, p0, Ljava/util/zip/CheckedOutputStream;->cksum:Ljava/util/zip/Checksum;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/zip/Checksum;->update([BII)V

    .line 75
    return-void
.end method
