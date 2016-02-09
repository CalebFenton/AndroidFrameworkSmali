.class public Lorg/apache/harmony/security/utils/Array;
.super Ljava/lang/Object;
.source "Array.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getBytesAsString([B)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [B

    #@0
    .prologue
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    array-length v2, p0

    #@3
    mul-int/lit8 v2, v2, 0x3

    #@5
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@8
    .line 38
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@a
    if-ge v0, v2, :cond_0

    #@c
    .line 39
    aget-byte v2, p0, v0

    #@e
    const/4 v3, 0x0

    #@f
    invoke-static {v2, v3}, Ljava/lang/Byte;->toHexString(BZ)Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 40
    const/16 v2, 0x20

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b
    .line 38
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 42
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    return-object v2
.end method

.method public static toString([BLjava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "array"    # [B
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v13, 0xa

    #@2
    const/16 v12, 0x20

    #@4
    const/4 v11, 0x0

    #@5
    .line 56
    const/4 v9, 0x5

    #@6
    new-array v6, v9, [Ljava/lang/String;

    #@8
    .line 57
    const-string/jumbo v9, ""

    #@b
    aput-object v9, v6, v11

    #@d
    .line 58
    const-string/jumbo v9, "000"

    #@10
    const/4 v10, 0x1

    #@11
    aput-object v9, v6, v10

    #@13
    .line 59
    const-string/jumbo v9, "00"

    #@16
    const/4 v10, 0x2

    #@17
    aput-object v9, v6, v10

    #@19
    .line 60
    const-string/jumbo v9, "0"

    #@1c
    const/4 v10, 0x3

    #@1d
    aput-object v9, v6, v10

    #@1f
    .line 61
    const-string/jumbo v9, ""

    #@22
    const/4 v10, 0x4

    #@23
    aput-object v9, v6, v10

    #@25
    .line 63
    .local v6, "offsetPrefix":[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    .line 64
    .local v7, "sb":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    .line 65
    .local v0, "charForm":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    #@30
    .line 66
    .local v3, "i":I
    const/4 v3, 0x0

    #@31
    :goto_0
    array-length v9, p0

    #@32
    if-ge v3, v9, :cond_4

    #@34
    .line 67
    rem-int/lit8 v9, v3, 0x10

    #@36
    if-nez v9, :cond_0

    #@38
    .line 68
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    .line 70
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@3e
    move-result-object v5

    #@3f
    .line 71
    .local v5, "offset":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@42
    move-result v9

    #@43
    aget-object v9, v6, v9

    #@45
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    .line 72
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@4e
    move-result v9

    #@4f
    invoke-virtual {v0, v11, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@52
    .line 77
    .end local v5    # "offset":Ljava/lang/String;
    :cond_0
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@55
    .line 79
    aget-byte v9, p0, v3

    #@57
    invoke-static {v9, v11}, Ljava/lang/Byte;->toHexString(BZ)Ljava/lang/String;

    #@5a
    move-result-object v9

    #@5b
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    .line 81
    aget-byte v9, p0, v3

    #@60
    and-int/lit16 v1, v9, 0xff

    #@62
    .line 82
    .local v1, "currentByte":I
    const v9, 0xffff

    #@65
    and-int/2addr v9, v1

    #@66
    int-to-char v2, v9

    #@67
    .line 85
    .local v2, "currentChar":C
    invoke-static {v2}, Ljava/lang/Character;->isISOControl(C)Z

    #@6a
    move-result v9

    #@6b
    if-eqz v9, :cond_1

    #@6d
    const/16 v2, 0x2e

    #@6f
    .line 84
    .end local v2    # "currentChar":C
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@72
    .line 87
    add-int/lit8 v9, v3, 0x1

    #@74
    rem-int/lit8 v9, v9, 0x8

    #@76
    if-nez v9, :cond_2

    #@78
    .line 88
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7b
    .line 91
    :cond_2
    add-int/lit8 v9, v3, 0x1

    #@7d
    rem-int/lit8 v9, v9, 0x10

    #@7f
    if-nez v9, :cond_3

    #@81
    .line 92
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@84
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v9

    #@88
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    .line 94
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@8e
    .line 66
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@90
    goto :goto_0

    #@91
    .line 98
    .end local v1    # "currentByte":I
    :cond_4
    rem-int/lit8 v9, v3, 0x10

    #@93
    if-eqz v9, :cond_7

    #@95
    .line 99
    rem-int/lit8 v9, v3, 0x10

    #@97
    rsub-int/lit8 v8, v9, 0x10

    #@99
    .line 100
    .local v8, "ws2add":I
    const/4 v4, 0x0

    #@9a
    .local v4, "j":I
    :goto_1
    if-ge v4, v8, :cond_5

    #@9c
    .line 101
    const-string/jumbo v9, "   "

    #@9f
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    .line 100
    add-int/lit8 v4, v4, 0x1

    #@a4
    goto :goto_1

    #@a5
    .line 103
    :cond_5
    const/16 v9, 0x8

    #@a7
    if-le v8, v9, :cond_6

    #@a9
    .line 104
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ac
    .line 106
    :cond_6
    const-string/jumbo v9, "  "

    #@af
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b5
    move-result-object v9

    #@b6
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    .line 108
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@bc
    .line 110
    .end local v4    # "j":I
    .end local v8    # "ws2add":I
    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v9

    #@c0
    return-object v9
.end method
