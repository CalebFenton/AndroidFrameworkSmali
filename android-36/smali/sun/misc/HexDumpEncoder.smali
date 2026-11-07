.class public Lsun/misc/HexDumpEncoder;
.super Lsun/misc/CharacterEncoder;
.source "HexDumpEncoder.java"


# instance fields
.field private greylist currentByte:I

.field private greylist offset:I

.field private greylist thisLine:[B

.field private greylist thisLineLength:I


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Lsun/misc/CharacterEncoder;-><init>()V

    .line 51
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lsun/misc/HexDumpEncoder;->thisLine:[B

    return-void
.end method

.method static blacklist hexDigit(Ljava/io/PrintStream;B)V
    .registers 5
    .param p0, "p"    # Ljava/io/PrintStream;
    .param p1, "x"    # B

    .line 56
    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    int-to-char v0, v0

    .line 57
    .local v0, "c":C
    const/16 v1, 0x9

    if-le v0, v1, :cond_f

    .line 58
    add-int/lit8 v2, v0, -0xa

    add-int/lit8 v2, v2, 0x41

    int-to-char v0, v2

    goto :goto_12

    .line 60
    :cond_f
    add-int/lit8 v2, v0, 0x30

    int-to-char v0, v2

    .line 61
    :goto_12
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->write(I)V

    .line 62
    and-int/lit8 v2, p1, 0xf

    int-to-char v0, v2

    .line 63
    if-le v0, v1, :cond_20

    .line 64
    add-int/lit8 v1, v0, -0xa

    add-int/lit8 v1, v1, 0x41

    int-to-char v0, v1

    goto :goto_23

    .line 66
    :cond_20
    add-int/lit8 v1, v0, 0x30

    int-to-char v0, v1

    .line 67
    :goto_23
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->write(I)V

    .line 68
    return-void
.end method


# virtual methods
.method protected blacklist bytesPerAtom()I
    .registers 2

    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist bytesPerLine()I
    .registers 2

    .line 75
    const/16 v0, 0x10

    return v0
.end method

.method protected blacklist encodeAtom(Ljava/io/OutputStream;[BII)V
    .registers 8
    .param p1, "o"    # Ljava/io/OutputStream;
    .param p2, "buf"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lsun/misc/HexDumpEncoder;->thisLine:[B

    iget v1, p0, Lsun/misc/HexDumpEncoder;->currentByte:I

    aget-byte v2, p2, p3

    aput-byte v2, v0, v1

    .line 93
    iget-object v0, p0, Lsun/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    aget-byte v1, p2, p3

    invoke-static {v0, v1}, Lsun/misc/HexDumpEncoder;->hexDigit(Ljava/io/PrintStream;B)V

    .line 94
    iget-object v0, p0, Lsun/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 95
    iget v0, p0, Lsun/misc/HexDumpEncoder;->currentByte:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/misc/HexDumpEncoder;->currentByte:I

    .line 96
    iget v0, p0, Lsun/misc/HexDumpEncoder;->currentByte:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_29

    .line 97
    iget-object v0, p0, Lsun/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 98
    :cond_29
    return-void
.end method

.method protected blacklist encodeBufferPrefix(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "o"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lsun/misc/HexDumpEncoder;->offset:I

    .line 80
    invoke-super {p0, p1}, Lsun/misc/CharacterEncoder;->encodeBufferPrefix(Ljava/io/OutputStream;)V

    .line 81
    return-void
.end method

.method protected blacklist encodeLinePrefix(Ljava/io/OutputStream;I)V
    .registers 5
    .param p1, "o"    # Ljava/io/OutputStream;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lsun/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    iget v1, p0, Lsun/misc/HexDumpEncoder;->offset:I

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v0, v1}, Lsun/misc/HexDumpEncoder;->hexDigit(Ljava/io/PrintStream;B)V

    .line 85
    iget-object v0, p0, Lsun/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    iget v1, p0, Lsun/misc/HexDumpEncoder;->offset:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v0, v1}, Lsun/misc/HexDumpEncoder;->hexDigit(Ljava/io/PrintStream;B)V

    .line 86
    iget-object v0, p0, Lsun/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lsun/misc/HexDumpEncoder;->currentByte:I

    .line 88
    iput p2, p0, Lsun/misc/HexDumpEncoder;->thisLineLength:I

    .line 89
    return-void
.end method

.method protected blacklist encodeLineSuffix(Ljava/io/OutputStream;)V
    .registers 6
    .param p1, "o"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget v0, p0, Lsun/misc/HexDumpEncoder;->thisLineLength:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1e

    .line 102
    iget v0, p0, Lsun/misc/HexDumpEncoder;->thisLineLength:I

    .local v0, "i":I
    :goto_8
    if-ge v0, v1, :cond_1e

    .line 103
    iget-object v2, p0, Lsun/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 104
    const/4 v2, 0x7

    if-ne v0, v2, :cond_1b

    .line 105
    iget-object v2, p0, Lsun/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 102
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 108
    .end local v0    # "i":I
    :cond_1e
    iget-object v0, p0, Lsun/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_26
    iget v1, p0, Lsun/misc/HexDumpEncoder;->thisLineLength:I

    if-ge v0, v1, :cond_4f

    .line 110
    iget-object v1, p0, Lsun/misc/HexDumpEncoder;->thisLine:[B

    aget-byte v1, v1, v0

    const/16 v2, 0x20

    if-lt v1, v2, :cond_45

    iget-object v1, p0, Lsun/misc/HexDumpEncoder;->thisLine:[B

    aget-byte v1, v1, v0

    const/16 v2, 0x7a

    if-le v1, v2, :cond_3b

    goto :goto_45

    .line 113
    :cond_3b
    iget-object v1, p0, Lsun/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    iget-object v2, p0, Lsun/misc/HexDumpEncoder;->thisLine:[B

    aget-byte v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->write(I)V

    goto :goto_4c

    .line 111
    :cond_45
    :goto_45
    iget-object v1, p0, Lsun/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 109
    :goto_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 116
    .end local v0    # "i":I
    :cond_4f
    iget-object v0, p0, Lsun/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 117
    iget v0, p0, Lsun/misc/HexDumpEncoder;->offset:I

    iget v1, p0, Lsun/misc/HexDumpEncoder;->thisLineLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lsun/misc/HexDumpEncoder;->offset:I

    .line 118
    return-void
.end method
