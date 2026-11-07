.class public Lsun/net/TelnetOutputStream;
.super Ljava/io/BufferedOutputStream;
.source "TelnetOutputStream.java"


# instance fields
.field public blacklist binaryMode:Z

.field blacklist seenCR:Z

.field blacklist stickyCRLF:Z


# direct methods
.method public constructor blacklist <init>(Ljava/io/OutputStream;Z)V
    .registers 4
    .param p1, "fd"    # Ljava/io/OutputStream;
    .param p2, "binary"    # Z

    .line 79
    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/net/TelnetOutputStream;->stickyCRLF:Z

    .line 74
    iput-boolean v0, p0, Lsun/net/TelnetOutputStream;->seenCR:Z

    .line 76
    iput-boolean v0, p0, Lsun/net/TelnetOutputStream;->binaryMode:Z

    .line 80
    iput-boolean p2, p0, Lsun/net/TelnetOutputStream;->binaryMode:Z

    .line 81
    return-void
.end method


# virtual methods
.method public blacklist setStickyCRLF(Z)V
    .registers 2
    .param p1, "on"    # Z

    .line 90
    iput-boolean p1, p0, Lsun/net/TelnetOutputStream;->stickyCRLF:Z

    .line 91
    return-void
.end method

.method public whitelist test-api write(I)V
    .registers 5
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-boolean v0, p0, Lsun/net/TelnetOutputStream;->binaryMode:Z

    if-eqz v0, :cond_8

    .line 98
    invoke-super {p0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 99
    return-void

    .line 102
    :cond_8
    iget-boolean v0, p0, Lsun/net/TelnetOutputStream;->seenCR:Z

    const/16 v1, 0xa

    const/16 v2, 0xd

    if-eqz v0, :cond_1e

    .line 103
    const/4 v0, 0x0

    if-eq p1, v1, :cond_16

    .line 104
    invoke-super {p0, v0}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 105
    :cond_16
    invoke-super {p0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 106
    if-eq p1, v2, :cond_38

    .line 107
    iput-boolean v0, p0, Lsun/net/TelnetOutputStream;->seenCR:Z

    goto :goto_38

    .line 109
    :cond_1e
    if-ne p1, v1, :cond_27

    .line 110
    invoke-super {p0, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 111
    invoke-super {p0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 112
    return-void

    .line 114
    :cond_27
    if-ne p1, v2, :cond_35

    .line 115
    iget-boolean v0, p0, Lsun/net/TelnetOutputStream;->stickyCRLF:Z

    if-eqz v0, :cond_31

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/net/TelnetOutputStream;->seenCR:Z

    goto :goto_35

    .line 118
    :cond_31
    invoke-super {p0, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 119
    const/4 p1, 0x0

    .line 122
    :cond_35
    :goto_35
    invoke-super {p0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 124
    :cond_38
    :goto_38
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 5
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget-boolean v0, p0, Lsun/net/TelnetOutputStream;->binaryMode:Z

    if-eqz v0, :cond_8

    .line 132
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 133
    return-void

    .line 136
    :cond_8
    :goto_8
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_15

    .line 137
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .local v0, "off":I
    aget-byte p2, p1, p2

    invoke-virtual {p0, p2}, Lsun/net/TelnetOutputStream;->write(I)V

    move p2, v0

    goto :goto_8

    .line 139
    .end local v0    # "off":I
    .restart local p2    # "off":I
    :cond_15
    return-void
.end method
