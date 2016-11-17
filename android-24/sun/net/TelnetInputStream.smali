.class public Lsun/net/TelnetInputStream;
.super Ljava/io/FilterInputStream;
.source "TelnetInputStream.java"


# instance fields
.field public binaryMode:Z

.field seenCR:Z

.field stickyCRLF:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1
    .param p1, "fd"    # Ljava/io/InputStream;
    .param p2, "binary"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 82
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@4
    .line 76
    iput-boolean v0, p0, Lsun/net/TelnetInputStream;->stickyCRLF:Z

    #@6
    .line 77
    iput-boolean v0, p0, Lsun/net/TelnetInputStream;->seenCR:Z

    #@8
    .line 79
    iput-boolean v0, p0, Lsun/net/TelnetInputStream;->binaryMode:Z

    #@a
    .line 83
    iput-boolean p2, p0, Lsun/net/TelnetInputStream;->binaryMode:Z

    #@c
    .line 81
    return-void
.end method


# virtual methods
.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v3, 0xa

    #@2
    const/16 v2, 0xd

    #@4
    .line 91
    iget-boolean v1, p0, Lsun/net/TelnetInputStream;->binaryMode:Z

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 92
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 101
    :cond_0
    iget-boolean v1, p0, Lsun/net/TelnetInputStream;->seenCR:Z

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 102
    const/4 v1, 0x0

    #@12
    iput-boolean v1, p0, Lsun/net/TelnetInputStream;->seenCR:Z

    #@14
    .line 103
    return v3

    #@15
    .line 106
    :cond_1
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    #@18
    move-result v0

    #@19
    .local v0, "c":I
    if-ne v0, v2, :cond_3

    #@1b
    .line 107
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    #@1e
    move-result v0

    #@1f
    sparse-switch v0, :sswitch_data_0

    #@22
    .line 110
    :sswitch_0
    new-instance v1, Lsun/net/TelnetProtocolException;

    #@24
    const-string/jumbo v2, "misplaced CR in input"

    #@27
    invoke-direct {v1, v2}, Lsun/net/TelnetProtocolException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v1

    #@2b
    .line 113
    :sswitch_1
    return v2

    #@2c
    .line 116
    :sswitch_2
    iget-boolean v1, p0, Lsun/net/TelnetInputStream;->stickyCRLF:Z

    #@2e
    if-eqz v1, :cond_2

    #@30
    .line 117
    const/4 v1, 0x1

    #@31
    iput-boolean v1, p0, Lsun/net/TelnetInputStream;->seenCR:Z

    #@33
    .line 118
    return v2

    #@34
    .line 120
    :cond_2
    return v3

    #@35
    .line 124
    :cond_3
    return v0

    #@36
    .line 107
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method public read([B)I
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 129
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Lsun/net/TelnetInputStream;->read([BII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public read([BII)I
    .locals 5
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
    const/4 v3, -0x1

    #@1
    .line 137
    iget-boolean v4, p0, Lsun/net/TelnetInputStream;->binaryMode:Z

    #@3
    if-eqz v4, :cond_0

    #@5
    .line 138
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    #@8
    move-result v3

    #@9
    return v3

    #@a
    .line 141
    :cond_0
    move v2, p2

    #@b
    .local v2, "offStart":I
    move v1, p2

    #@c
    .line 143
    .end local p2    # "off":I
    .local v1, "off":I
    :goto_0
    add-int/lit8 p3, p3, -0x1

    #@e
    if-ltz p3, :cond_1

    #@10
    .line 144
    invoke-virtual {p0}, Lsun/net/TelnetInputStream;->read()I

    #@13
    move-result v0

    #@14
    .line 145
    .local v0, "c":I
    if-ne v0, v3, :cond_3

    #@16
    .line 149
    .end local v0    # "c":I
    :cond_1
    if-le v1, v2, :cond_2

    #@18
    sub-int v3, v1, v2

    #@1a
    :cond_2
    return v3

    #@1b
    .line 147
    .restart local v0    # "c":I
    :cond_3
    add-int/lit8 p2, v1, 0x1

    #@1d
    .end local v1    # "off":I
    .restart local p2    # "off":I
    int-to-byte v4, v0

    #@1e
    aput-byte v4, p1, v1

    #@20
    move v1, p2

    #@21
    .end local p2    # "off":I
    .restart local v1    # "off":I
    goto :goto_0
.end method

.method public setStickyCRLF(Z)V
    .locals 0
    .param p1, "on"    # Z

    #@0
    .prologue
    .line 87
    iput-boolean p1, p0, Lsun/net/TelnetInputStream;->stickyCRLF:Z

    #@2
    .line 86
    return-void
.end method
