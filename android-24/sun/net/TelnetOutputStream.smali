.class public Lsun/net/TelnetOutputStream;
.super Ljava/io/BufferedOutputStream;
.source "TelnetOutputStream.java"


# instance fields
.field public binaryMode:Z

.field seenCR:Z

.field stickyCRLF:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 1
    .param p1, "fd"    # Ljava/io/OutputStream;
    .param p2, "binary"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 79
    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@4
    .line 73
    iput-boolean v0, p0, Lsun/net/TelnetOutputStream;->stickyCRLF:Z

    #@6
    .line 74
    iput-boolean v0, p0, Lsun/net/TelnetOutputStream;->seenCR:Z

    #@8
    .line 76
    iput-boolean v0, p0, Lsun/net/TelnetOutputStream;->binaryMode:Z

    #@a
    .line 80
    iput-boolean p2, p0, Lsun/net/TelnetOutputStream;->binaryMode:Z

    #@c
    .line 78
    return-void
.end method


# virtual methods
.method public setStickyCRLF(Z)V
    .locals 0
    .param p1, "on"    # Z

    #@0
    .prologue
    .line 90
    iput-boolean p1, p0, Lsun/net/TelnetOutputStream;->stickyCRLF:Z

    #@2
    .line 89
    return-void
.end method

.method public write(I)V
    .locals 4
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/16 v2, 0xa

    #@3
    const/16 v1, 0xd

    #@5
    .line 97
    iget-boolean v0, p0, Lsun/net/TelnetOutputStream;->binaryMode:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 98
    invoke-super {p0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    #@c
    .line 99
    return-void

    #@d
    .line 102
    :cond_0
    iget-boolean v0, p0, Lsun/net/TelnetOutputStream;->seenCR:Z

    #@f
    if-eqz v0, :cond_3

    #@11
    .line 103
    if-eq p1, v2, :cond_1

    #@13
    .line 104
    invoke-super {p0, v3}, Ljava/io/BufferedOutputStream;->write(I)V

    #@16
    .line 105
    :cond_1
    invoke-super {p0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    #@19
    .line 106
    if-eq p1, v1, :cond_2

    #@1b
    .line 107
    iput-boolean v3, p0, Lsun/net/TelnetOutputStream;->seenCR:Z

    #@1d
    .line 96
    :cond_2
    :goto_0
    return-void

    #@1e
    .line 109
    :cond_3
    if-ne p1, v2, :cond_4

    #@20
    .line 110
    invoke-super {p0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    #@23
    .line 111
    invoke-super {p0, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    #@26
    .line 112
    return-void

    #@27
    .line 114
    :cond_4
    if-ne p1, v1, :cond_5

    #@29
    .line 115
    iget-boolean v0, p0, Lsun/net/TelnetOutputStream;->stickyCRLF:Z

    #@2b
    if-eqz v0, :cond_6

    #@2d
    .line 116
    const/4 v0, 0x1

    #@2e
    iput-boolean v0, p0, Lsun/net/TelnetOutputStream;->seenCR:Z

    #@30
    .line 122
    :cond_5
    :goto_1
    invoke-super {p0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    #@33
    goto :goto_0

    #@34
    .line 118
    :cond_6
    invoke-super {p0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    #@37
    .line 119
    const/4 p1, 0x0

    #@38
    goto :goto_1
.end method

.method public write([BII)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 131
    iget-boolean v1, p0, Lsun/net/TelnetOutputStream;->binaryMode:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 132
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedOutputStream;->write([BII)V

    #@7
    .line 133
    return-void

    #@8
    .line 136
    .end local p2    # "off":I
    .local v0, "off":I
    :goto_0
    add-int/lit8 p3, p3, -0x1

    #@a
    if-ltz p3, :cond_1

    #@c
    .line 137
    add-int/lit8 p2, v0, 0x1

    #@e
    .end local v0    # "off":I
    .restart local p2    # "off":I
    aget-byte v1, p1, v0

    #@10
    invoke-virtual {p0, v1}, Lsun/net/TelnetOutputStream;->write(I)V

    #@13
    :cond_0
    move v0, p2

    #@14
    .end local p2    # "off":I
    .restart local v0    # "off":I
    goto :goto_0

    #@15
    .line 130
    :cond_1
    return-void
.end method
