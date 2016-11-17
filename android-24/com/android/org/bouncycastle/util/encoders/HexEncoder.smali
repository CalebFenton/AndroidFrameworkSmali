.class public Lcom/android/org/bouncycastle/util/encoders/HexEncoder;
.super Ljava/lang/Object;
.source "HexEncoder.java"

# interfaces
.implements Lcom/android/org/bouncycastle/util/encoders/Encoder;


# instance fields
.field protected final decodingTable:[B

.field protected final encodingTable:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 13
    const/16 v0, 0x10

    #@5
    new-array v0, v0, [B

    #@7
    fill-array-data v0, :array_0

    #@a
    .line 12
    iput-object v0, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    #@c
    .line 21
    const/16 v0, 0x80

    #@e
    new-array v0, v0, [B

    #@10
    iput-object v0, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    #@12
    .line 45
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->initialiseDecodingTable()V

    #@15
    .line 43
    return-void

    #@16
    .line 13
    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method private static ignore(C)Z
    .locals 2
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 74
    const/16 v1, 0xa

    #@3
    if-eq p0, v1, :cond_0

    #@5
    const/16 v1, 0xd

    #@7
    if-ne p0, v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/16 v1, 0x9

    #@c
    if-eq p0, v1, :cond_0

    #@e
    const/16 v1, 0x20

    #@10
    if-eq p0, v1, :cond_0

    #@12
    const/4 v0, 0x0

    #@13
    goto :goto_0
.end method


# virtual methods
.method public decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    .locals 8
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 147
    const/4 v5, 0x0

    #@1
    .line 149
    .local v5, "length":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v2

    #@5
    .line 151
    .local v2, "end":I
    :goto_0
    if-lez v2, :cond_0

    #@7
    .line 153
    add-int/lit8 v6, v2, -0x1

    #@9
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v6

    #@d
    invoke-static {v6}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    #@10
    move-result v6

    #@11
    if-nez v6, :cond_1

    #@13
    .line 161
    :cond_0
    const/4 v3, 0x0

    #@14
    .line 162
    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_5

    #@16
    move v4, v3

    #@17
    .line 164
    .end local v3    # "i":I
    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_2

    #@19
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@1c
    move-result v6

    #@1d
    invoke-static {v6}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    #@20
    move-result v6

    #@21
    if-eqz v6, :cond_2

    #@23
    .line 166
    add-int/lit8 v3, v4, 0x1

    #@25
    .end local v4    # "i":I
    .restart local v3    # "i":I
    move v4, v3

    #@26
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_2

    #@27
    .line 158
    .end local v4    # "i":I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    #@29
    goto :goto_0

    #@2a
    .line 169
    .restart local v4    # "i":I
    :cond_2
    iget-object v6, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    #@2c
    add-int/lit8 v3, v4, 0x1

    #@2e
    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@31
    move-result v7

    #@32
    aget-byte v0, v6, v7

    #@34
    .local v0, "b1":B
    move v4, v3

    #@35
    .line 171
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v2, :cond_3

    #@37
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@3a
    move-result v6

    #@3b
    invoke-static {v6}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    #@3e
    move-result v6

    #@3f
    if-eqz v6, :cond_3

    #@41
    .line 173
    add-int/lit8 v3, v4, 0x1

    #@43
    .end local v4    # "i":I
    .restart local v3    # "i":I
    move v4, v3

    #@44
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_3

    #@45
    .line 176
    :cond_3
    iget-object v6, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    #@47
    add-int/lit8 v3, v4, 0x1

    #@49
    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@4c
    move-result v7

    #@4d
    aget-byte v1, v6, v7

    #@4f
    .line 178
    .local v1, "b2":B
    or-int v6, v0, v1

    #@51
    if-gez v6, :cond_4

    #@53
    .line 180
    new-instance v6, Ljava/io/IOException;

    #@55
    const-string/jumbo v7, "invalid characters encountered in Hex string"

    #@58
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v6

    #@5c
    .line 183
    :cond_4
    shl-int/lit8 v6, v0, 0x4

    #@5e
    or-int/2addr v6, v1

    #@5f
    invoke-virtual {p2, v6}, Ljava/io/OutputStream;->write(I)V

    #@62
    .line 185
    add-int/lit8 v5, v5, 0x1

    #@64
    goto :goto_1

    #@65
    .line 188
    .end local v0    # "b1":B
    .end local v1    # "b2":B
    :cond_5
    return v5
.end method

.method public decode([BIILjava/io/OutputStream;)I
    .locals 8
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "length"    # I
    .param p4, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 91
    const/4 v5, 0x0

    #@1
    .line 93
    .local v5, "outLen":I
    add-int v2, p2, p3

    #@3
    .line 95
    .local v2, "end":I
    :goto_0
    if-le v2, p2, :cond_0

    #@5
    .line 97
    add-int/lit8 v6, v2, -0x1

    #@7
    aget-byte v6, p1, v6

    #@9
    int-to-char v6, v6

    #@a
    invoke-static {v6}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    #@d
    move-result v6

    #@e
    if-nez v6, :cond_1

    #@10
    .line 105
    :cond_0
    move v3, p2

    #@11
    .line 106
    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_5

    #@13
    move v4, v3

    #@14
    .line 108
    .end local v3    # "i":I
    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_2

    #@16
    aget-byte v6, p1, v4

    #@18
    int-to-char v6, v6

    #@19
    invoke-static {v6}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    #@1c
    move-result v6

    #@1d
    if-eqz v6, :cond_2

    #@1f
    .line 110
    add-int/lit8 v3, v4, 0x1

    #@21
    .end local v4    # "i":I
    .restart local v3    # "i":I
    move v4, v3

    #@22
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_2

    #@23
    .line 102
    .end local v4    # "i":I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    #@25
    goto :goto_0

    #@26
    .line 113
    .restart local v4    # "i":I
    :cond_2
    iget-object v6, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    #@28
    add-int/lit8 v3, v4, 0x1

    #@2a
    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-byte v7, p1, v4

    #@2c
    aget-byte v0, v6, v7

    #@2e
    .local v0, "b1":B
    move v4, v3

    #@2f
    .line 115
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v2, :cond_3

    #@31
    aget-byte v6, p1, v4

    #@33
    int-to-char v6, v6

    #@34
    invoke-static {v6}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    #@37
    move-result v6

    #@38
    if-eqz v6, :cond_3

    #@3a
    .line 117
    add-int/lit8 v3, v4, 0x1

    #@3c
    .end local v4    # "i":I
    .restart local v3    # "i":I
    move v4, v3

    #@3d
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_3

    #@3e
    .line 120
    :cond_3
    iget-object v6, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    #@40
    add-int/lit8 v3, v4, 0x1

    #@42
    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-byte v7, p1, v4

    #@44
    aget-byte v1, v6, v7

    #@46
    .line 122
    .local v1, "b2":B
    or-int v6, v0, v1

    #@48
    if-gez v6, :cond_4

    #@4a
    .line 124
    new-instance v6, Ljava/io/IOException;

    #@4c
    const-string/jumbo v7, "invalid characters encountered in Hex data"

    #@4f
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@52
    throw v6

    #@53
    .line 127
    :cond_4
    shl-int/lit8 v6, v0, 0x4

    #@55
    or-int/2addr v6, v1

    #@56
    invoke-virtual {p4, v6}, Ljava/io/OutputStream;->write(I)V

    #@59
    .line 129
    add-int/lit8 v5, v5, 0x1

    #@5b
    goto :goto_1

    #@5c
    .line 132
    .end local v0    # "b1":B
    .end local v1    # "b2":B
    :cond_5
    return v5
.end method

.method public encode([BIILjava/io/OutputStream;)I
    .locals 4
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "length"    # I
    .param p4, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 60
    move v0, p2

    #@1
    .local v0, "i":I
    :goto_0
    add-int v2, p2, p3

    #@3
    if-ge v0, v2, :cond_0

    #@5
    .line 62
    aget-byte v2, p1, v0

    #@7
    and-int/lit16 v1, v2, 0xff

    #@9
    .line 64
    .local v1, "v":I
    iget-object v2, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    #@b
    ushr-int/lit8 v3, v1, 0x4

    #@d
    aget-byte v2, v2, v3

    #@f
    invoke-virtual {p4, v2}, Ljava/io/OutputStream;->write(I)V

    #@12
    .line 65
    iget-object v2, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    #@14
    and-int/lit8 v3, v1, 0xf

    #@16
    aget-byte v2, v2, v3

    #@18
    invoke-virtual {p4, v2}, Ljava/io/OutputStream;->write(I)V

    #@1b
    .line 60
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 68
    .end local v1    # "v":I
    :cond_0
    mul-int/lit8 v2, p3, 0x2

    #@20
    return v2
.end method

.method protected initialiseDecodingTable()V
    .locals 5

    #@0
    .prologue
    .line 25
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 27
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    #@8
    const/4 v2, -0x1

    #@9
    aput-byte v2, v1, v0

    #@b
    .line 25
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 30
    :cond_0
    const/4 v0, 0x0

    #@f
    :goto_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    #@11
    array-length v1, v1

    #@12
    if-ge v0, v1, :cond_1

    #@14
    .line 32
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    #@16
    iget-object v2, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    #@18
    aget-byte v2, v2, v0

    #@1a
    int-to-byte v3, v0

    #@1b
    aput-byte v3, v1, v2

    #@1d
    .line 30
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_1

    #@20
    .line 35
    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    #@22
    const/16 v2, 0x41

    #@24
    iget-object v3, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    #@26
    const/16 v4, 0x61

    #@28
    aget-byte v3, v3, v4

    #@2a
    aput-byte v3, v1, v2

    #@2c
    .line 36
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    #@2e
    const/16 v2, 0x42

    #@30
    iget-object v3, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    #@32
    const/16 v4, 0x62

    #@34
    aget-byte v3, v3, v4

    #@36
    aput-byte v3, v1, v2

    #@38
    .line 37
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    #@3a
    const/16 v2, 0x43

    #@3c
    iget-object v3, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    #@3e
    const/16 v4, 0x63

    #@40
    aget-byte v3, v3, v4

    #@42
    aput-byte v3, v1, v2

    #@44
    .line 38
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    #@46
    const/16 v2, 0x44

    #@48
    iget-object v3, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    #@4a
    const/16 v4, 0x64

    #@4c
    aget-byte v3, v3, v4

    #@4e
    aput-byte v3, v1, v2

    #@50
    .line 39
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    #@52
    const/16 v2, 0x45

    #@54
    iget-object v3, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    #@56
    const/16 v4, 0x65

    #@58
    aget-byte v3, v3, v4

    #@5a
    aput-byte v3, v1, v2

    #@5c
    .line 40
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    #@5e
    const/16 v2, 0x46

    #@60
    iget-object v3, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    #@62
    const/16 v4, 0x66

    #@64
    aget-byte v3, v3, v4

    #@66
    aput-byte v3, v1, v2

    #@68
    .line 23
    return-void
.end method
