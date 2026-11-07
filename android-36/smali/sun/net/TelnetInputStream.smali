.class public Lsun/net/TelnetInputStream;
.super Ljava/io/FilterInputStream;
.source "TelnetInputStream.java"


# instance fields
.field public blacklist binaryMode:Z

.field blacklist seenCR:Z

.field blacklist stickyCRLF:Z


# direct methods
.method public constructor blacklist <init>(Ljava/io/InputStream;Z)V
    .registers 4
    .param p1, "fd"    # Ljava/io/InputStream;
    .param p2, "binary"    # Z

    .line 82
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/net/TelnetInputStream;->stickyCRLF:Z

    .line 77
    iput-boolean v0, p0, Lsun/net/TelnetInputStream;->seenCR:Z

    .line 79
    iput-boolean v0, p0, Lsun/net/TelnetInputStream;->binaryMode:Z

    .line 83
    iput-boolean p2, p0, Lsun/net/TelnetInputStream;->binaryMode:Z

    .line 84
    return-void
.end method


# virtual methods
.method public whitelist test-api read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-boolean v0, p0, Lsun/net/TelnetInputStream;->binaryMode:Z

    if-eqz v0, :cond_9

    .line 92
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    return v0

    .line 101
    :cond_9
    iget-boolean v0, p0, Lsun/net/TelnetInputStream;->seenCR:Z

    const/16 v1, 0xa

    if-eqz v0, :cond_13

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/net/TelnetInputStream;->seenCR:Z

    .line 103
    return v1

    .line 106
    :cond_13
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    move v2, v0

    .local v2, "c":I
    const/16 v3, 0xd

    if-ne v0, v3, :cond_36

    .line 107
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    move v2, v0

    sparse-switch v0, :sswitch_data_38

    .line 110
    new-instance v0, Lsun/net/TelnetProtocolException;

    const-string v1, "misplaced CR in input"

    invoke-direct {v0, v1}, Lsun/net/TelnetProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :sswitch_2c
    iget-boolean v0, p0, Lsun/net/TelnetInputStream;->stickyCRLF:Z

    if-eqz v0, :cond_34

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/net/TelnetInputStream;->seenCR:Z

    .line 118
    return v3

    .line 120
    :cond_34
    return v1

    .line 113
    :sswitch_35
    return v3

    .line 124
    :cond_36
    return v2

    nop

    :sswitch_data_38
    .sparse-switch
        0x0 -> :sswitch_35
        0xa -> :sswitch_2c
    .end sparse-switch
.end method

.method public whitelist test-api read([B)I
    .registers 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lsun/net/TelnetInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 8
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    iget-boolean v0, p0, Lsun/net/TelnetInputStream;->binaryMode:Z

    if-eqz v0, :cond_9

    .line 138
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    return v0

    .line 141
    :cond_9
    move v0, p2

    .line 143
    .local v0, "offStart":I
    :goto_a
    const/4 v1, -0x1

    add-int/2addr p3, v1

    if-ltz p3, :cond_1c

    .line 144
    invoke-virtual {p0}, Lsun/net/TelnetInputStream;->read()I

    move-result v2

    .line 145
    .local v2, "c":I
    if-ne v2, v1, :cond_15

    .line 146
    goto :goto_1c

    .line 147
    :cond_15
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .local v1, "off":I
    int-to-byte v3, v2

    aput-byte v3, p1, p2

    move p2, v1

    goto :goto_a

    .line 149
    .end local v1    # "off":I
    .end local v2    # "c":I
    .restart local p2    # "off":I
    :cond_1c
    :goto_1c
    if-le p2, v0, :cond_20

    sub-int v1, p2, v0

    :cond_20
    return v1
.end method

.method public blacklist setStickyCRLF(Z)V
    .registers 2
    .param p1, "on"    # Z

    .line 87
    iput-boolean p1, p0, Lsun/net/TelnetInputStream;->stickyCRLF:Z

    .line 88
    return-void
.end method
