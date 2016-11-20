.class public Ljava/util/zip/CheckedOutputStream;
.super Ljava/io/FilterOutputStream;
.source "CheckedOutputStream.java"


# instance fields
.field private cksum:Ljava/util/zip/Checksum;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/zip/Checksum;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "cksum"    # Ljava/util/zip/Checksum;

    #@0
    .prologue
    .line 50
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@3
    .line 51
    iput-object p2, p0, Ljava/util/zip/CheckedOutputStream;->cksum:Ljava/util/zip/Checksum;

    #@5
    .line 49
    return-void
.end method


# virtual methods
.method public getChecksum()Ljava/util/zip/Checksum;
    .locals 1

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Ljava/util/zip/CheckedOutputStream;->cksum:Ljava/util/zip/Checksum;

    #@2
    return-object v0
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    #@5
    .line 61
    iget-object v0, p0, Ljava/util/zip/CheckedOutputStream;->cksum:Ljava/util/zip/Checksum;

    #@7
    invoke-interface {v0, p1}, Ljava/util/zip/Checksum;->update(I)V

    #@a
    .line 59
    return-void
.end method

.method public write([BII)V
    .locals 1
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
    .line 73
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    #@5
    .line 74
    iget-object v0, p0, Ljava/util/zip/CheckedOutputStream;->cksum:Ljava/util/zip/Checksum;

    #@7
    invoke-interface {v0, p1, p2, p3}, Ljava/util/zip/Checksum;->update([BII)V

    #@a
    .line 72
    return-void
.end method
