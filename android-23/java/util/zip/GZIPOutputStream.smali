.class public Ljava/util/zip/GZIPOutputStream;
.super Ljava/util/zip/DeflaterOutputStream;
.source "GZIPOutputStream.java"


# instance fields
.field protected crc:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 54
    const/16 v0, 0x200

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, p1, v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;IZ)V

    #@6
    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 71
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;IZ)V

    #@4
    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 4
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "bufferSize"    # I
    .param p3, "syncFlush"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 81
    new-instance v0, Ljava/util/zip/Deflater;

    #@3
    const/4 v1, -0x1

    #@4
    const/4 v2, 0x1

    #@5
    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    #@8
    invoke-direct {p0, p1, v0, p2, p3}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;IZ)V

    #@b
    .line 47
    new-instance v0, Ljava/util/zip/CRC32;

    #@d
    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    #@10
    iput-object v0, p0, Ljava/util/zip/GZIPOutputStream;->crc:Ljava/util/zip/CRC32;

    #@12
    .line 82
    const v0, 0x8b1f

    #@15
    invoke-direct {p0, v0}, Ljava/util/zip/GZIPOutputStream;->writeShort(I)I

    #@18
    .line 83
    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->out:Ljava/io/OutputStream;

    #@1a
    const/16 v1, 0x8

    #@1c
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@1f
    .line 84
    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->out:Ljava/io/OutputStream;

    #@21
    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    #@24
    .line 85
    const-wide/16 v0, 0x0

    #@26
    invoke-direct {p0, v0, v1}, Ljava/util/zip/GZIPOutputStream;->writeLong(J)J

    #@29
    .line 86
    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->out:Ljava/io/OutputStream;

    #@2b
    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    #@2e
    .line 87
    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->out:Ljava/io/OutputStream;

    #@30
    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    #@33
    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "syncFlush"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 63
    const/16 v0, 0x200

    #@2
    invoke-direct {p0, p1, v0, p2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;IZ)V

    #@5
    .line 62
    return-void
.end method

.method private writeLong(J)J
    .locals 3
    .param p1, "i"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 116
    long-to-int v0, p1

    #@1
    .line 117
    .local v0, "unsigned":I
    iget-object v1, p0, Ljava/util/zip/GZIPOutputStream;->out:Ljava/io/OutputStream;

    #@3
    and-int/lit16 v2, v0, 0xff

    #@5
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    #@8
    .line 118
    iget-object v1, p0, Ljava/util/zip/GZIPOutputStream;->out:Ljava/io/OutputStream;

    #@a
    shr-int/lit8 v2, v0, 0x8

    #@c
    and-int/lit16 v2, v2, 0xff

    #@e
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    #@11
    .line 119
    iget-object v1, p0, Ljava/util/zip/GZIPOutputStream;->out:Ljava/io/OutputStream;

    #@13
    shr-int/lit8 v2, v0, 0x10

    #@15
    and-int/lit16 v2, v2, 0xff

    #@17
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    #@1a
    .line 120
    iget-object v1, p0, Ljava/util/zip/GZIPOutputStream;->out:Ljava/io/OutputStream;

    #@1c
    shr-int/lit8 v2, v0, 0x18

    #@1e
    and-int/lit16 v2, v2, 0xff

    #@20
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    #@23
    .line 121
    return-wide p1
.end method

.method private writeShort(I)I
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->out:Ljava/io/OutputStream;

    #@2
    and-int/lit16 v1, p1, 0xff

    #@4
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@7
    .line 126
    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->out:Ljava/io/OutputStream;

    #@9
    shr-int/lit8 v1, p1, 0x8

    #@b
    and-int/lit16 v1, v1, 0xff

    #@d
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@10
    .line 127
    return p1
.end method


# virtual methods
.method public finish()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 99
    invoke-super {p0}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    #@3
    .line 100
    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->crc:Ljava/util/zip/CRC32;

    #@5
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    #@8
    move-result-wide v0

    #@9
    invoke-direct {p0, v0, v1}, Ljava/util/zip/GZIPOutputStream;->writeLong(J)J

    #@c
    .line 101
    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->crc:Ljava/util/zip/CRC32;

    #@e
    iget-wide v0, v0, Ljava/util/zip/CRC32;->tbytes:J

    #@10
    invoke-direct {p0, v0, v1}, Ljava/util/zip/GZIPOutputStream;->writeLong(J)J

    #@13
    .line 98
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "off"    # I
    .param p3, "nbytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 110
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    #@3
    .line 111
    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->crc:Ljava/util/zip/CRC32;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    #@8
    .line 109
    return-void
.end method
