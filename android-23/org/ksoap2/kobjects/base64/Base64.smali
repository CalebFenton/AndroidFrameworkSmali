.class public Lorg/ksoap2/kobjects/base64/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field static final charTab:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 28
    const-string/jumbo v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    #@3
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    #@6
    move-result-object v0

    #@7
    .line 27
    sput-object v0, Lorg/ksoap2/kobjects/base64/Base64;->charTab:[C

    #@9
    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static decode(C)I
    .locals 3
    .param p0, "c"    # C

    #@0
    .prologue
    .line 95
    const/16 v0, 0x41

    #@2
    if-lt p0, v0, :cond_0

    #@4
    const/16 v0, 0x5a

    #@6
    if-gt p0, v0, :cond_0

    #@8
    .line 96
    add-int/lit8 v0, p0, -0x41

    #@a
    return v0

    #@b
    .line 97
    :cond_0
    const/16 v0, 0x61

    #@d
    if-lt p0, v0, :cond_1

    #@f
    const/16 v0, 0x7a

    #@11
    if-gt p0, v0, :cond_1

    #@13
    .line 98
    add-int/lit8 v0, p0, -0x61

    #@15
    add-int/lit8 v0, v0, 0x1a

    #@17
    return v0

    #@18
    .line 99
    :cond_1
    const/16 v0, 0x30

    #@1a
    if-lt p0, v0, :cond_2

    #@1c
    const/16 v0, 0x39

    #@1e
    if-gt p0, v0, :cond_2

    #@20
    .line 100
    add-int/lit8 v0, p0, -0x30

    #@22
    add-int/lit8 v0, v0, 0x1a

    #@24
    add-int/lit8 v0, v0, 0x1a

    #@26
    return v0

    #@27
    .line 102
    :cond_2
    sparse-switch p0, :sswitch_data_0

    #@2a
    .line 110
    new-instance v0, Ljava/lang/RuntimeException;

    #@2c
    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v2, "unexpected code: "

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    .line 110
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@43
    throw v0

    #@44
    .line 104
    :sswitch_0
    const/16 v0, 0x3e

    #@46
    return v0

    #@47
    .line 106
    :sswitch_1
    const/16 v0, 0x3f

    #@49
    return v0

    #@4a
    .line 108
    :sswitch_2
    const/4 v0, 0x0

    #@4b
    return v0

    #@4c
    .line 102
    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_0
        0x2f -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public static decode(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x3d

    #@2
    .line 131
    const/4 v0, 0x0

    #@3
    .line 133
    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v1

    #@7
    .line 136
    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@9
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v3

    #@d
    const/16 v4, 0x20

    #@f
    if-gt v3, v4, :cond_0

    #@11
    .line 137
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 139
    :cond_0
    if-ne v0, v1, :cond_2

    #@16
    .line 130
    :cond_1
    return-void

    #@17
    .line 143
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v3

    #@1b
    invoke-static {v3}, Lorg/ksoap2/kobjects/base64/Base64;->decode(C)I

    #@1e
    move-result v3

    #@1f
    shl-int/lit8 v3, v3, 0x12

    #@21
    .line 144
    add-int/lit8 v4, v0, 0x1

    #@23
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@26
    move-result v4

    #@27
    invoke-static {v4}, Lorg/ksoap2/kobjects/base64/Base64;->decode(C)I

    #@2a
    move-result v4

    #@2b
    shl-int/lit8 v4, v4, 0xc

    #@2d
    .line 143
    add-int/2addr v3, v4

    #@2e
    .line 145
    add-int/lit8 v4, v0, 0x2

    #@30
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@33
    move-result v4

    #@34
    invoke-static {v4}, Lorg/ksoap2/kobjects/base64/Base64;->decode(C)I

    #@37
    move-result v4

    #@38
    shl-int/lit8 v4, v4, 0x6

    #@3a
    .line 143
    add-int/2addr v3, v4

    #@3b
    .line 146
    add-int/lit8 v4, v0, 0x3

    #@3d
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@40
    move-result v4

    #@41
    invoke-static {v4}, Lorg/ksoap2/kobjects/base64/Base64;->decode(C)I

    #@44
    move-result v4

    #@45
    .line 143
    add-int v2, v3, v4

    #@47
    .line 148
    .local v2, "tri":I
    shr-int/lit8 v3, v2, 0x10

    #@49
    and-int/lit16 v3, v3, 0xff

    #@4b
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    #@4e
    .line 149
    add-int/lit8 v3, v0, 0x2

    #@50
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@53
    move-result v3

    #@54
    if-eq v3, v5, :cond_1

    #@56
    .line 151
    shr-int/lit8 v3, v2, 0x8

    #@58
    and-int/lit16 v3, v3, 0xff

    #@5a
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    #@5d
    .line 152
    add-int/lit8 v3, v0, 0x3

    #@5f
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@62
    move-result v3

    #@63
    if-eq v3, v5, :cond_1

    #@65
    .line 154
    and-int/lit16 v3, v2, 0xff

    #@67
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    #@6a
    .line 156
    add-int/lit8 v0, v0, 0x4

    #@6c
    goto :goto_0
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 120
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 122
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {p0, v0}, Lorg/ksoap2/kobjects/base64/Base64;->decode(Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 126
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@b
    move-result-object v2

    #@c
    return-object v2

    #@d
    .line 123
    :catch_0
    move-exception v1

    #@e
    .line 124
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@10
    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    #@13
    throw v2
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # [B

    #@0
    .prologue
    .line 32
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    invoke-static {p0, v1, v0, v2}, Lorg/ksoap2/kobjects/base64/Base64;->encode([BIILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static encode([BIILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 7
    .param p0, "data"    # [B
    .param p1, "start"    # I
    .param p2, "len"    # I
    .param p3, "buf"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 47
    if-nez p3, :cond_0

    #@2
    .line 48
    new-instance p3, Ljava/lang/StringBuffer;

    #@4
    .end local p3    # "buf":Ljava/lang/StringBuffer;
    array-length v5, p0

    #@5
    mul-int/lit8 v5, v5, 0x3

    #@7
    div-int/lit8 v5, v5, 0x2

    #@9
    invoke-direct {p3, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    #@c
    .line 50
    .restart local p3    # "buf":Ljava/lang/StringBuffer;
    :cond_0
    add-int/lit8 v1, p2, -0x3

    #@e
    .line 51
    .local v1, "end":I
    move v2, p1

    #@f
    .line 52
    .local v2, "i":I
    const/4 v3, 0x0

    #@10
    .local v3, "n":I
    move v4, v3

    #@11
    .line 54
    .end local v3    # "n":I
    .local v4, "n":I
    :goto_0
    if-gt v2, v1, :cond_2

    #@13
    .line 56
    aget-byte v5, p0, v2

    #@15
    and-int/lit16 v5, v5, 0xff

    #@17
    shl-int/lit8 v5, v5, 0x10

    #@19
    .line 57
    add-int/lit8 v6, v2, 0x1

    #@1b
    aget-byte v6, p0, v6

    #@1d
    and-int/lit16 v6, v6, 0xff

    #@1f
    shl-int/lit8 v6, v6, 0x8

    #@21
    .line 56
    or-int/2addr v5, v6

    #@22
    .line 58
    add-int/lit8 v6, v2, 0x2

    #@24
    aget-byte v6, p0, v6

    #@26
    and-int/lit16 v6, v6, 0xff

    #@28
    .line 56
    or-int v0, v5, v6

    #@2a
    .line 60
    .local v0, "d":I
    sget-object v5, Lorg/ksoap2/kobjects/base64/Base64;->charTab:[C

    #@2c
    shr-int/lit8 v6, v0, 0x12

    #@2e
    and-int/lit8 v6, v6, 0x3f

    #@30
    aget-char v5, v5, v6

    #@32
    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@35
    .line 61
    sget-object v5, Lorg/ksoap2/kobjects/base64/Base64;->charTab:[C

    #@37
    shr-int/lit8 v6, v0, 0xc

    #@39
    and-int/lit8 v6, v6, 0x3f

    #@3b
    aget-char v5, v5, v6

    #@3d
    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@40
    .line 62
    sget-object v5, Lorg/ksoap2/kobjects/base64/Base64;->charTab:[C

    #@42
    shr-int/lit8 v6, v0, 0x6

    #@44
    and-int/lit8 v6, v6, 0x3f

    #@46
    aget-char v5, v5, v6

    #@48
    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@4b
    .line 63
    sget-object v5, Lorg/ksoap2/kobjects/base64/Base64;->charTab:[C

    #@4d
    and-int/lit8 v6, v0, 0x3f

    #@4f
    aget-char v5, v5, v6

    #@51
    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@54
    .line 65
    add-int/lit8 v2, v2, 0x3

    #@56
    .line 67
    add-int/lit8 v3, v4, 0x1

    #@58
    .end local v4    # "n":I
    .restart local v3    # "n":I
    const/16 v5, 0xe

    #@5a
    if-lt v4, v5, :cond_1

    #@5c
    .line 68
    const/4 v3, 0x0

    #@5d
    .line 69
    const-string/jumbo v5, "\r\n"

    #@60
    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@63
    :cond_1
    move v4, v3

    #@64
    .end local v3    # "n":I
    .restart local v4    # "n":I
    goto :goto_0

    #@65
    .line 73
    .end local v0    # "d":I
    :cond_2
    add-int v5, p1, p2

    #@67
    add-int/lit8 v5, v5, -0x2

    #@69
    if-ne v2, v5, :cond_4

    #@6b
    .line 75
    aget-byte v5, p0, v2

    #@6d
    and-int/lit16 v5, v5, 0xff

    #@6f
    shl-int/lit8 v5, v5, 0x10

    #@71
    .line 76
    add-int/lit8 v6, v2, 0x1

    #@73
    aget-byte v6, p0, v6

    #@75
    and-int/lit16 v6, v6, 0xff

    #@77
    shl-int/lit8 v6, v6, 0x8

    #@79
    .line 75
    or-int v0, v5, v6

    #@7b
    .line 78
    .restart local v0    # "d":I
    sget-object v5, Lorg/ksoap2/kobjects/base64/Base64;->charTab:[C

    #@7d
    shr-int/lit8 v6, v0, 0x12

    #@7f
    and-int/lit8 v6, v6, 0x3f

    #@81
    aget-char v5, v5, v6

    #@83
    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@86
    .line 79
    sget-object v5, Lorg/ksoap2/kobjects/base64/Base64;->charTab:[C

    #@88
    shr-int/lit8 v6, v0, 0xc

    #@8a
    and-int/lit8 v6, v6, 0x3f

    #@8c
    aget-char v5, v5, v6

    #@8e
    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@91
    .line 80
    sget-object v5, Lorg/ksoap2/kobjects/base64/Base64;->charTab:[C

    #@93
    shr-int/lit8 v6, v0, 0x6

    #@95
    and-int/lit8 v6, v6, 0x3f

    #@97
    aget-char v5, v5, v6

    #@99
    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@9c
    .line 81
    const-string/jumbo v5, "="

    #@9f
    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a2
    .line 91
    .end local v0    # "d":I
    :cond_3
    :goto_1
    return-object p3

    #@a3
    .line 83
    :cond_4
    add-int v5, p1, p2

    #@a5
    add-int/lit8 v5, v5, -0x1

    #@a7
    if-ne v2, v5, :cond_3

    #@a9
    .line 84
    aget-byte v5, p0, v2

    #@ab
    and-int/lit16 v5, v5, 0xff

    #@ad
    shl-int/lit8 v0, v5, 0x10

    #@af
    .line 86
    .restart local v0    # "d":I
    sget-object v5, Lorg/ksoap2/kobjects/base64/Base64;->charTab:[C

    #@b1
    shr-int/lit8 v6, v0, 0x12

    #@b3
    and-int/lit8 v6, v6, 0x3f

    #@b5
    aget-char v5, v5, v6

    #@b7
    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@ba
    .line 87
    sget-object v5, Lorg/ksoap2/kobjects/base64/Base64;->charTab:[C

    #@bc
    shr-int/lit8 v6, v0, 0xc

    #@be
    and-int/lit8 v6, v6, 0x3f

    #@c0
    aget-char v5, v5, v6

    #@c2
    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@c5
    .line 88
    const-string/jumbo v5, "=="

    #@c8
    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@cb
    goto :goto_1
.end method
