.class public Ljava/nio/charset/ModifiedUtf8;
.super Ljava/lang/Object;
.source "ModifiedUtf8.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static countBytes(Ljava/lang/String;Z)J
    .locals 10
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "shortLength"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v8, 0x1

    #@2
    .line 38
    const-wide/16 v2, 0x0

    #@4
    .line 39
    .local v2, "counter":J
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@7
    move-result v4

    #@8
    .line 40
    .local v4, "strLen":I
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_3

    #@b
    .line 41
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@e
    move-result v0

    #@f
    .line 42
    .local v0, "c":C
    const/16 v5, 0x80

    #@11
    if-ge v0, v5, :cond_1

    #@13
    .line 43
    add-long/2addr v2, v8

    #@14
    .line 44
    if-nez v0, :cond_0

    #@16
    .line 45
    add-long/2addr v2, v8

    #@17
    .line 40
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 47
    :cond_1
    const/16 v5, 0x800

    #@1c
    if-ge v0, v5, :cond_2

    #@1e
    .line 48
    const-wide/16 v6, 0x2

    #@20
    add-long/2addr v2, v6

    #@21
    goto :goto_1

    #@22
    .line 50
    :cond_2
    const-wide/16 v6, 0x3

    #@24
    add-long/2addr v2, v6

    #@25
    goto :goto_1

    #@26
    .line 55
    .end local v0    # "c":C
    :cond_3
    if-eqz p1, :cond_4

    #@28
    const-wide/32 v6, 0xffff

    #@2b
    cmp-long v5, v2, v6

    #@2d
    if-lez v5, :cond_4

    #@2f
    .line 56
    new-instance v5, Ljava/io/UTFDataFormatException;

    #@31
    .line 57
    const-string/jumbo v6, "Size of the encoded string doesn\'t fit in two bytes"

    #@34
    .line 56
    invoke-direct {v5, v6}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    #@37
    throw v5

    #@38
    .line 59
    :cond_4
    return-wide v2
.end method

.method public static decode([B[CII)Ljava/lang/String;
    .locals 6
    .param p0, "in"    # [B
    .param p1, "out"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/16 v4, 0x80

    #@3
    .line 120
    if-ltz p2, :cond_0

    #@5
    if-gez p3, :cond_1

    #@7
    .line 121
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v4, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v5, "Illegal arguments: offset "

    #@11
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v4

    #@15
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    .line 122
    const-string/jumbo v5, ". Length: "

    #@1c
    .line 121
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v3

    #@2c
    .line 124
    :cond_1
    const/4 v2, 0x0

    #@2d
    .line 125
    .local v2, "outputIndex":I
    add-int v1, p2, p3

    #@2f
    .line 126
    .local v1, "limitIndex":I
    :goto_0
    if-ge p2, v1, :cond_a

    #@31
    .line 127
    aget-byte v3, p0, p2

    #@33
    and-int/lit16 v0, v3, 0xff

    #@35
    .line 128
    .local v0, "i":I
    add-int/lit8 p2, p2, 0x1

    #@37
    .line 129
    if-ge v0, v4, :cond_2

    #@39
    .line 130
    int-to-char v3, v0

    #@3a
    aput-char v3, p1, v2

    #@3c
    .line 131
    add-int/lit8 v2, v2, 0x1

    #@3e
    .line 132
    goto :goto_0

    #@3f
    .line 134
    :cond_2
    const/16 v3, 0xc0

    #@41
    if-gt v3, v0, :cond_5

    #@43
    const/16 v3, 0xe0

    #@45
    if-ge v0, v3, :cond_5

    #@47
    .line 138
    and-int/lit8 v3, v0, 0x1f

    #@49
    shl-int/lit8 v0, v3, 0x6

    #@4b
    .line 139
    if-ne p2, v1, :cond_3

    #@4d
    .line 140
    new-instance v3, Ljava/io/UTFDataFormatException;

    #@4f
    const-string/jumbo v4, "unexpected end of input"

    #@52
    invoke-direct {v3, v4}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    #@55
    throw v3

    #@56
    .line 143
    :cond_3
    aget-byte v3, p0, p2

    #@58
    and-int/lit16 v3, v3, 0xc0

    #@5a
    if-eq v3, v4, :cond_4

    #@5c
    .line 144
    new-instance v3, Ljava/io/UTFDataFormatException;

    #@5e
    new-instance v4, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v5, "bad second byte at "

    #@66
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v4

    #@6a
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v4

    #@6e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v4

    #@72
    invoke-direct {v3, v4}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    #@75
    throw v3

    #@76
    .line 146
    :cond_4
    aget-byte v3, p0, p2

    #@78
    and-int/lit8 v3, v3, 0x3f

    #@7a
    or-int/2addr v3, v0

    #@7b
    int-to-char v3, v3

    #@7c
    aput-char v3, p1, v2

    #@7e
    .line 147
    add-int/lit8 p2, p2, 0x1

    #@80
    .line 148
    add-int/lit8 v2, v2, 0x1

    #@82
    .line 134
    goto :goto_0

    #@83
    .line 149
    :cond_5
    const/16 v3, 0xf0

    #@85
    if-ge v0, v3, :cond_9

    #@87
    .line 152
    and-int/lit8 v3, v0, 0x1f

    #@89
    shl-int/lit8 v0, v3, 0xc

    #@8b
    .line 154
    add-int/lit8 v3, p2, 0x1

    #@8d
    if-lt v3, v1, :cond_6

    #@8f
    .line 155
    new-instance v3, Ljava/io/UTFDataFormatException;

    #@91
    const-string/jumbo v4, "unexpected end of input"

    #@94
    invoke-direct {v3, v4}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    #@97
    throw v3

    #@98
    .line 159
    :cond_6
    aget-byte v3, p0, p2

    #@9a
    and-int/lit16 v3, v3, 0xc0

    #@9c
    if-eq v3, v4, :cond_7

    #@9e
    .line 160
    new-instance v3, Ljava/io/UTFDataFormatException;

    #@a0
    new-instance v4, Ljava/lang/StringBuilder;

    #@a2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a5
    const-string/jumbo v5, "bad second byte at "

    #@a8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v4

    #@ac
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@af
    move-result-object v4

    #@b0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v4

    #@b4
    invoke-direct {v3, v4}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    #@b7
    throw v3

    #@b8
    .line 162
    :cond_7
    aget-byte v3, p0, p2

    #@ba
    and-int/lit8 v3, v3, 0x3f

    #@bc
    shl-int/lit8 v3, v3, 0x6

    #@be
    or-int/2addr v0, v3

    #@bf
    .line 163
    add-int/lit8 p2, p2, 0x1

    #@c1
    .line 165
    aget-byte v3, p0, p2

    #@c3
    and-int/lit16 v3, v3, 0xc0

    #@c5
    if-eq v3, v4, :cond_8

    #@c7
    .line 166
    new-instance v3, Ljava/io/UTFDataFormatException;

    #@c9
    new-instance v4, Ljava/lang/StringBuilder;

    #@cb
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@ce
    const-string/jumbo v5, "bad third byte at "

    #@d1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v4

    #@d5
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v4

    #@d9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dc
    move-result-object v4

    #@dd
    invoke-direct {v3, v4}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    #@e0
    throw v3

    #@e1
    .line 168
    :cond_8
    aget-byte v3, p0, p2

    #@e3
    and-int/lit8 v3, v3, 0x3f

    #@e5
    or-int/2addr v3, v0

    #@e6
    int-to-char v3, v3

    #@e7
    aput-char v3, p1, v2

    #@e9
    .line 169
    add-int/lit8 p2, p2, 0x1

    #@eb
    .line 170
    add-int/lit8 v2, v2, 0x1

    #@ed
    goto/16 :goto_0

    #@ef
    .line 172
    :cond_9
    new-instance v3, Ljava/io/UTFDataFormatException;

    #@f1
    new-instance v4, Ljava/lang/StringBuilder;

    #@f3
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@f6
    const-string/jumbo v5, "Invalid UTF8 byte "

    #@f9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v4

    #@fd
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@100
    move-result-object v4

    #@101
    .line 173
    const-string/jumbo v5, " at position "

    #@104
    .line 172
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v4

    #@108
    .line 173
    add-int/lit8 v5, p2, -0x1

    #@10a
    .line 172
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v4

    #@10e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@111
    move-result-object v4

    #@112
    invoke-direct {v3, v4}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    #@115
    throw v3

    #@116
    .line 176
    .end local v0    # "i":I
    :cond_a
    invoke-static {p1, v5, v2}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    #@119
    move-result-object v3

    #@11a
    return-object v3
.end method

.method public static encode([BILjava/lang/String;)V
    .locals 5
    .param p0, "dst"    # [B
    .param p1, "offset"    # I
    .param p2, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 68
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@3
    move-result v3

    #@4
    .line 69
    .local v3, "strLen":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    move v2, p1

    #@6
    .end local p1    # "offset":I
    .local v2, "offset":I
    :goto_0
    if-ge v1, v3, :cond_3

    #@8
    .line 70
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v0

    #@c
    .line 71
    .local v0, "c":C
    const/16 v4, 0x80

    #@e
    if-ge v0, v4, :cond_1

    #@10
    .line 72
    if-nez v0, :cond_0

    #@12
    .line 73
    add-int/lit8 p1, v2, 0x1

    #@14
    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    const/16 v4, -0x40

    #@16
    aput-byte v4, p0, v2

    #@18
    .line 74
    add-int/lit8 v2, p1, 0x1

    #@1a
    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    const/16 v4, -0x80

    #@1c
    aput-byte v4, p0, p1

    #@1e
    move p1, v2

    #@1f
    .line 69
    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@21
    move v2, p1

    #@22
    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_0

    #@23
    .line 76
    :cond_0
    add-int/lit8 p1, v2, 0x1

    #@25
    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    int-to-byte v4, v0

    #@26
    aput-byte v4, p0, v2

    #@28
    goto :goto_1

    #@29
    .line 78
    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    :cond_1
    const/16 v4, 0x800

    #@2b
    if-ge v0, v4, :cond_2

    #@2d
    .line 79
    add-int/lit8 p1, v2, 0x1

    #@2f
    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    ushr-int/lit8 v4, v0, 0x6

    #@31
    or-int/lit16 v4, v4, 0xc0

    #@33
    int-to-byte v4, v4

    #@34
    aput-byte v4, p0, v2

    #@36
    .line 80
    add-int/lit8 v2, p1, 0x1

    #@38
    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    and-int/lit8 v4, v0, 0x3f

    #@3a
    or-int/lit16 v4, v4, 0x80

    #@3c
    int-to-byte v4, v4

    #@3d
    aput-byte v4, p0, p1

    #@3f
    move p1, v2

    #@40
    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    goto :goto_1

    #@41
    .line 82
    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    :cond_2
    add-int/lit8 p1, v2, 0x1

    #@43
    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    ushr-int/lit8 v4, v0, 0xc

    #@45
    or-int/lit16 v4, v4, 0xe0

    #@47
    int-to-byte v4, v4

    #@48
    aput-byte v4, p0, v2

    #@4a
    .line 83
    add-int/lit8 v2, p1, 0x1

    #@4c
    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    ushr-int/lit8 v4, v0, 0x6

    #@4e
    and-int/lit8 v4, v4, 0x3f

    #@50
    or-int/lit16 v4, v4, 0x80

    #@52
    int-to-byte v4, v4

    #@53
    aput-byte v4, p0, p1

    #@55
    .line 84
    add-int/lit8 p1, v2, 0x1

    #@57
    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    and-int/lit8 v4, v0, 0x3f

    #@59
    or-int/lit16 v4, v4, 0x80

    #@5b
    int-to-byte v4, v4

    #@5c
    aput-byte v4, p0, v2

    #@5e
    goto :goto_1

    #@5f
    .line 67
    .end local v0    # "c":C
    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    :cond_3
    return-void
.end method

.method public static encode(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 100
    invoke-static {p0, v6}, Ljava/nio/charset/ModifiedUtf8;->countBytes(Ljava/lang/String;Z)J

    #@4
    move-result-wide v2

    #@5
    .line 101
    .local v2, "size":J
    long-to-int v1, v2

    #@6
    add-int/lit8 v1, v1, 0x2

    #@8
    new-array v0, v1, [B

    #@a
    .line 102
    .local v0, "output":[B
    const/4 v1, 0x2

    #@b
    invoke-static {v0, v1, p0}, Ljava/nio/charset/ModifiedUtf8;->encode([BILjava/lang/String;)V

    #@e
    .line 103
    const/16 v1, 0x8

    #@10
    ushr-long v4, v2, v1

    #@12
    long-to-int v1, v4

    #@13
    int-to-byte v1, v1

    #@14
    const/4 v4, 0x0

    #@15
    aput-byte v1, v0, v4

    #@17
    .line 104
    long-to-int v1, v2

    #@18
    int-to-byte v1, v1

    #@19
    aput-byte v1, v0, v6

    #@1b
    .line 105
    return-object v0
.end method
