.class public Ljava/util/zip/CheckedOutputStream;
.super Ljava/io/FilterOutputStream;
.source "CheckedOutputStream.java"


# instance fields
.field private final check:Ljava/util/zip/Checksum;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/zip/Checksum;)V
    .locals 0
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "cs"    # Ljava/util/zip/Checksum;

    #@0
    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@3
    .line 45
    iput-object p2, p0, Ljava/util/zip/CheckedOutputStream;->check:Ljava/util/zip/Checksum;

    #@5
    .line 43
    return-void
.end method


# virtual methods
.method public getChecksum()Ljava/util/zip/Checksum;
    .locals 1

    #@0
    .prologue
    .line 54
    iget-object v0, p0, Ljava/util/zip/CheckedOutputStream;->check:Ljava/util/zip/Checksum;

    #@2
    return-object v0
.end method

.method public write(I)V
    .locals 1
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Ljava/util/zip/CheckedOutputStream;->out:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    #@5
    .line 69
    iget-object v0, p0, Ljava/util/zip/CheckedOutputStream;->check:Ljava/util/zip/Checksum;

    #@7
    invoke-interface {v0, p1}, Ljava/util/zip/Checksum;->update(I)V

    #@a
    .line 67
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "nbytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Ljava/util/zip/CheckedOutputStream;->out:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    #@5
    .line 89
    iget-object v0, p0, Ljava/util/zip/CheckedOutputStream;->check:Ljava/util/zip/Checksum;

    #@7
    invoke-interface {v0, p1, p2, p3}, Ljava/util/zip/Checksum;->update([BII)V

    #@a
    .line 87
    return-void
.end method
