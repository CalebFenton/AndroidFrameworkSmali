.class public Lsun/misc/HexDumpEncoder;
.super Lsun/misc/CharacterEncoder;
.source "HexDumpEncoder.java"


# instance fields
.field private currentByte:I

.field private offset:I

.field private thisLine:[B

.field private thisLineLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Lsun/misc/CharacterEncoder;-><init>()V

    #@3
    .line 51
    const/16 v0, 0x10

    #@5
    new-array v0, v0, [B

    #@7
    iput-object v0, p0, Lsun/misc/HexDumpEncoder;->thisLine:[B

    #@9
    .line 46
    return-void
.end method

.method static hexDigit(Ljava/io/PrintStream;B)V
    .locals 3
    .param p0, "p"    # Ljava/io/PrintStream;
    .param p1, "x"    # B

    #@0
    .prologue
    const/16 v2, 0x9

    #@2
    .line 56
    shr-int/lit8 v1, p1, 0x4

    #@4
    and-int/lit8 v1, v1, 0xf

    #@6
    int-to-char v0, v1

    #@7
    .line 57
    .local v0, "c":C
    if-le v0, v2, :cond_0

    #@9
    .line 58
    add-int/lit8 v1, v0, -0xa

    #@b
    add-int/lit8 v1, v1, 0x41

    #@d
    int-to-char v0, v1

    #@e
    .line 61
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->write(I)V

    #@11
    .line 62
    and-int/lit8 v1, p1, 0xf

    #@13
    int-to-char v0, v1

    #@14
    .line 63
    if-le v0, v2, :cond_1

    #@16
    .line 64
    add-int/lit8 v1, v0, -0xa

    #@18
    add-int/lit8 v1, v1, 0x41

    #@1a
    int-to-char v0, v1

    #@1b
    .line 67
    :goto_1
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->write(I)V

    #@1e
    .line 53
    return-void

    #@1f
    .line 60
    :cond_0
    add-int/lit8 v1, v0, 0x30

    #@21
    int-to-char v0, v1

    #@22
    goto :goto_0

    #@23
    .line 66
    :cond_1
    add-int/lit8 v1, v0, 0x30

    #@25
    int-to-char v0, v1

    #@26
    goto :goto_1
.end method


# virtual methods
.method protected bytesPerAtom()I
    .locals 1

    #@0
    .prologue
    .line 71
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected bytesPerLine()I
    .locals 1

    #@0
    .prologue
    .line 75
    const/16 v0, 0x10

    #@2
    return v0
.end method

.method protected encodeAtom(Ljava/io/OutputStream;[BII)V
    .locals 3
    .param p1, "o"    # Ljava/io/OutputStream;
    .param p2, "buf"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Lsun/misc/HexDumpEncoder;->thisLine:[B

    #@2
    iget v1, p0, Lsun/misc/HexDumpEncoder;->currentByte:I

    #@4
    aget-byte v2, p2, p3

    #@6
    aput-byte v2, v0, v1

    #@8
    .line 93
    iget-object v0, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    #@a
    aget-byte v1, p2, p3

    #@c
    invoke-static {v0, v1}, Lsun/misc/HexDumpEncoder;->hexDigit(Ljava/io/PrintStream;B)V

    #@f
    .line 94
    iget-object v0, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    #@11
    const-string/jumbo v1, " "

    #@14
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@17
    .line 95
    iget v0, p0, Lsun/misc/HexDumpEncoder;->currentByte:I

    #@19
    add-int/lit8 v0, v0, 0x1

    #@1b
    iput v0, p0, Lsun/misc/HexDumpEncoder;->currentByte:I

    #@1d
    .line 96
    iget v0, p0, Lsun/misc/HexDumpEncoder;->currentByte:I

    #@1f
    const/16 v1, 0x8

    #@21
    if-ne v0, v1, :cond_0

    #@23
    .line 97
    iget-object v0, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    #@25
    const-string/jumbo v1, "  "

    #@28
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@2b
    .line 91
    :cond_0
    return-void
.end method

.method protected encodeBufferPrefix(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "o"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 79
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lsun/misc/HexDumpEncoder;->offset:I

    #@3
    .line 80
    invoke-super {p0, p1}, Lsun/misc/CharacterEncoder;->encodeBufferPrefix(Ljava/io/OutputStream;)V

    #@6
    .line 78
    return-void
.end method

.method protected encodeLinePrefix(Ljava/io/OutputStream;I)V
    .locals 2
    .param p1, "o"    # Ljava/io/OutputStream;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    #@2
    iget v1, p0, Lsun/misc/HexDumpEncoder;->offset:I

    #@4
    ushr-int/lit8 v1, v1, 0x8

    #@6
    and-int/lit16 v1, v1, 0xff

    #@8
    int-to-byte v1, v1

    #@9
    invoke-static {v0, v1}, Lsun/misc/HexDumpEncoder;->hexDigit(Ljava/io/PrintStream;B)V

    #@c
    .line 85
    iget-object v0, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    #@e
    iget v1, p0, Lsun/misc/HexDumpEncoder;->offset:I

    #@10
    and-int/lit16 v1, v1, 0xff

    #@12
    int-to-byte v1, v1

    #@13
    invoke-static {v0, v1}, Lsun/misc/HexDumpEncoder;->hexDigit(Ljava/io/PrintStream;B)V

    #@16
    .line 86
    iget-object v0, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    #@18
    const-string/jumbo v1, ": "

    #@1b
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@1e
    .line 87
    const/4 v0, 0x0

    #@1f
    iput v0, p0, Lsun/misc/HexDumpEncoder;->currentByte:I

    #@21
    .line 88
    iput p2, p0, Lsun/misc/HexDumpEncoder;->thisLineLength:I

    #@23
    .line 83
    return-void
.end method

.method protected encodeLineSuffix(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "o"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v3, 0x10

    #@2
    .line 101
    iget v1, p0, Lsun/misc/HexDumpEncoder;->thisLineLength:I

    #@4
    if-ge v1, v3, :cond_1

    #@6
    .line 102
    iget v0, p0, Lsun/misc/HexDumpEncoder;->thisLineLength:I

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    #@a
    .line 103
    iget-object v1, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    #@c
    const-string/jumbo v2, "   "

    #@f
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@12
    .line 104
    const/4 v1, 0x7

    #@13
    if-ne v0, v1, :cond_0

    #@15
    .line 105
    iget-object v1, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    #@17
    const-string/jumbo v2, "  "

    #@1a
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@1d
    .line 102
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 108
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    #@22
    const-string/jumbo v2, " "

    #@25
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@28
    .line 109
    const/4 v0, 0x0

    #@29
    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Lsun/misc/HexDumpEncoder;->thisLineLength:I

    #@2b
    if-ge v0, v1, :cond_4

    #@2d
    .line 110
    iget-object v1, p0, Lsun/misc/HexDumpEncoder;->thisLine:[B

    #@2f
    aget-byte v1, v1, v0

    #@31
    const/16 v2, 0x20

    #@33
    if-lt v1, v2, :cond_2

    #@35
    iget-object v1, p0, Lsun/misc/HexDumpEncoder;->thisLine:[B

    #@37
    aget-byte v1, v1, v0

    #@39
    const/16 v2, 0x7a

    #@3b
    if-le v1, v2, :cond_3

    #@3d
    .line 111
    :cond_2
    iget-object v1, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    #@3f
    const-string/jumbo v2, "."

    #@42
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@45
    .line 109
    :goto_2
    add-int/lit8 v0, v0, 0x1

    #@47
    goto :goto_1

    #@48
    .line 113
    :cond_3
    iget-object v1, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    #@4a
    iget-object v2, p0, Lsun/misc/HexDumpEncoder;->thisLine:[B

    #@4c
    aget-byte v2, v2, v0

    #@4e
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->write(I)V

    #@51
    goto :goto_2

    #@52
    .line 116
    :cond_4
    iget-object v1, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    #@54
    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    #@57
    .line 117
    iget v1, p0, Lsun/misc/HexDumpEncoder;->offset:I

    #@59
    iget v2, p0, Lsun/misc/HexDumpEncoder;->thisLineLength:I

    #@5b
    add-int/2addr v1, v2

    #@5c
    iput v1, p0, Lsun/misc/HexDumpEncoder;->offset:I

    #@5e
    .line 100
    return-void
.end method
