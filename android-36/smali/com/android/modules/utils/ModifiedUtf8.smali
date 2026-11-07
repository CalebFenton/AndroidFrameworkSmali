.class public Lcom/android/modules/utils/ModifiedUtf8;
.super Ljava/lang/Object;
.source "ModifiedUtf8.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method

.method public static blacklist countBytes(Ljava/lang/String;Z)J
    .registers 9
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "shortLength"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    .line 68
    const-wide/16 v0, 0x0

    .line 69
    .local v0, "result":J
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 70
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v2, :cond_37

    .line 71
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 72
    .local v4, "ch":C
    if-eqz v4, :cond_17

    const/16 v5, 0x7f

    if-gt v4, v5, :cond_17

    .line 73
    const-wide/16 v5, 0x1

    add-long/2addr v0, v5

    goto :goto_22

    .line 74
    :cond_17
    const/16 v5, 0x7ff

    if-gt v4, v5, :cond_1f

    .line 75
    const-wide/16 v5, 0x2

    add-long/2addr v0, v5

    goto :goto_22

    .line 77
    :cond_1f
    const-wide/16 v5, 0x3

    add-long/2addr v0, v5

    .line 79
    :goto_22
    if-eqz p1, :cond_34

    const-wide/32 v5, 0xffff

    cmp-long v5, v0, v5

    if-gtz v5, :cond_2c

    goto :goto_34

    .line 80
    :cond_2c
    new-instance v5, Ljava/io/UTFDataFormatException;

    const-string v6, "String more than 65535 UTF bytes long"

    invoke-direct {v5, v6}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 70
    .end local v4    # "ch":C
    :cond_34
    :goto_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 83
    .end local v3    # "i":I
    :cond_37
    return-wide v0
.end method

.method public static blacklist decode([B[CII)Ljava/lang/String;
    .registers 12
    .param p0, "in"    # [B
    .param p1, "out"    # [C
    .param p2, "offset"    # I
    .param p3, "utfSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    .local v0, "count":I
    const/4 v1, 0x0

    .line 31
    .local v1, "s":I
    :goto_2
    if-ge v0, p3, :cond_ea

    .line 32
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "count":I
    .local v2, "count":I
    add-int/2addr v0, p2

    aget-byte v0, p0, v0

    int-to-char v0, v0

    aput-char v0, p1, v1

    const/16 v3, 0x80

    if-ge v0, v3, :cond_14

    .line 33
    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_2

    .line 34
    :cond_14
    aget-char v0, p1, v1

    move v4, v0

    .local v4, "a":I
    const/16 v5, 0xe0

    and-int/2addr v0, v5

    const/16 v6, 0xc0

    if-ne v0, v6, :cond_6a

    .line 35
    const-string v0, "bad second byte at "

    if-ge v2, p3, :cond_53

    .line 38
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "count":I
    .local v5, "count":I
    add-int/2addr v2, p2

    aget-byte v2, p0, v2

    .line 39
    .local v2, "b":I
    and-int/lit16 v6, v2, 0xc0

    if-ne v6, v3, :cond_3a

    .line 42
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "s":I
    .local v0, "s":I
    and-int/lit8 v3, v4, 0x1f

    shl-int/lit8 v3, v3, 0x6

    and-int/lit8 v6, v2, 0x3f

    or-int/2addr v3, v6

    int-to-char v3, v3

    aput-char v3, p1, v1

    .line 43
    .end local v2    # "b":I
    move v1, v0

    move v0, v5

    goto :goto_2

    .line 40
    .end local v0    # "s":I
    .restart local v1    # "s":I
    .restart local v2    # "b":I
    :cond_3a
    new-instance v3, Ljava/io/UTFDataFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 36
    .end local v5    # "count":I
    .local v2, "count":I
    :cond_53
    new-instance v3, Ljava/io/UTFDataFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 43
    :cond_6a
    and-int/lit16 v0, v4, 0xf0

    if-ne v0, v5, :cond_cf

    .line 44
    add-int/lit8 v0, v2, 0x1

    if-ge v0, p3, :cond_b4

    .line 47
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "count":I
    .local v0, "count":I
    add-int/2addr v2, p2

    aget-byte v2, p0, v2

    .line 48
    .local v2, "b":I
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "count":I
    .restart local v5    # "count":I
    add-int/2addr v0, p2

    aget-byte v0, p0, v0

    .line 49
    .local v0, "c":I
    and-int/lit16 v6, v2, 0xc0

    if-ne v6, v3, :cond_99

    and-int/lit16 v6, v0, 0xc0

    if-ne v6, v3, :cond_99

    .line 52
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "s":I
    .local v3, "s":I
    and-int/lit8 v6, v4, 0xf

    shl-int/lit8 v6, v6, 0xc

    and-int/lit8 v7, v2, 0x3f

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v6, v7

    and-int/lit8 v7, v0, 0x3f

    or-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, p1, v1

    .line 53
    .end local v0    # "c":I
    .end local v2    # "b":I
    move v1, v3

    move v0, v5

    goto/16 :goto_2

    .line 50
    .end local v3    # "s":I
    .restart local v0    # "c":I
    .restart local v1    # "s":I
    .restart local v2    # "b":I
    :cond_99
    new-instance v3, Ljava/io/UTFDataFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bad second or third byte at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v5, -0x2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 45
    .end local v0    # "c":I
    .end local v5    # "count":I
    .local v2, "count":I
    :cond_b4
    new-instance v0, Ljava/io/UTFDataFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad third byte at "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_cf
    new-instance v0, Ljava/io/UTFDataFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad byte at "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    .end local v2    # "count":I
    .end local v4    # "a":I
    .local v0, "count":I
    :cond_ea
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method public static blacklist encode([BILjava/lang/String;)V
    .registers 8
    .param p0, "dst"    # [B
    .param p1, "offset"    # I
    .param p2, "s"    # Ljava/lang/String;

    .line 91
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 92
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_54

    .line 93
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 94
    .local v2, "ch":C
    if-eqz v2, :cond_18

    const/16 v3, 0x7f

    if-gt v2, v3, :cond_18

    .line 95
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "offset":I
    .local v3, "offset":I
    int-to-byte v4, v2

    aput-byte v4, p0, p1

    move p1, v3

    goto :goto_51

    .line 96
    .end local v3    # "offset":I
    .restart local p1    # "offset":I
    :cond_18
    const/16 v3, 0x7ff

    if-gt v2, v3, :cond_31

    .line 97
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "offset":I
    .restart local v3    # "offset":I
    shr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x1f

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    aput-byte v4, p0, p1

    .line 98
    add-int/lit8 p1, v3, 0x1

    .end local v3    # "offset":I
    .restart local p1    # "offset":I
    and-int/lit8 v4, v2, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    goto :goto_51

    .line 100
    :cond_31
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "offset":I
    .restart local v3    # "offset":I
    shr-int/lit8 v4, v2, 0xc

    and-int/lit8 v4, v4, 0xf

    or-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    aput-byte v4, p0, p1

    .line 101
    add-int/lit8 p1, v3, 0x1

    .end local v3    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    .line 102
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "offset":I
    .restart local v3    # "offset":I
    and-int/lit8 v4, v2, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p0, p1

    move p1, v3

    .line 92
    .end local v2    # "ch":C
    .end local v3    # "offset":I
    .restart local p1    # "offset":I
    :goto_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 105
    .end local v1    # "i":I
    :cond_54
    return-void
.end method
