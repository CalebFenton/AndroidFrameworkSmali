.class Ljavax/xml/transform/stream/FilePathToURI;
.super Ljava/lang/Object;
.source "FilePathToURI.java"


# static fields
.field private static gAfterEscaping1:[C

.field private static gAfterEscaping2:[C

.field private static gHexChs:[C

.field private static gNeedEscaping:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/16 v5, 0x80

    #@2
    const/16 v8, 0x7f

    #@4
    const/4 v7, 0x1

    #@5
    .line 23
    new-array v4, v5, [Z

    #@7
    sput-object v4, Ljavax/xml/transform/stream/FilePathToURI;->gNeedEscaping:[Z

    #@9
    .line 25
    new-array v4, v5, [C

    #@b
    sput-object v4, Ljavax/xml/transform/stream/FilePathToURI;->gAfterEscaping1:[C

    #@d
    .line 27
    new-array v4, v5, [C

    #@f
    sput-object v4, Ljavax/xml/transform/stream/FilePathToURI;->gAfterEscaping2:[C

    #@11
    .line 28
    const/16 v4, 0x10

    #@13
    new-array v4, v4, [C

    #@15
    fill-array-data v4, :array_0

    #@18
    sput-object v4, Ljavax/xml/transform/stream/FilePathToURI;->gHexChs:[C

    #@1a
    .line 32
    const/4 v2, 0x0

    #@1b
    .local v2, "i":I
    :goto_0
    const/16 v4, 0x1f

    #@1d
    if-gt v2, v4, :cond_0

    #@1f
    .line 33
    sget-object v4, Ljavax/xml/transform/stream/FilePathToURI;->gNeedEscaping:[Z

    #@21
    aput-boolean v7, v4, v2

    #@23
    .line 34
    sget-object v4, Ljavax/xml/transform/stream/FilePathToURI;->gAfterEscaping1:[C

    #@25
    sget-object v5, Ljavax/xml/transform/stream/FilePathToURI;->gHexChs:[C

    #@27
    shr-int/lit8 v6, v2, 0x4

    #@29
    aget-char v5, v5, v6

    #@2b
    aput-char v5, v4, v2

    #@2d
    .line 35
    sget-object v4, Ljavax/xml/transform/stream/FilePathToURI;->gAfterEscaping2:[C

    #@2f
    sget-object v5, Ljavax/xml/transform/stream/FilePathToURI;->gHexChs:[C

    #@31
    and-int/lit8 v6, v2, 0xf

    #@33
    aget-char v5, v5, v6

    #@35
    aput-char v5, v4, v2

    #@37
    .line 32
    add-int/lit8 v2, v2, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 37
    :cond_0
    sget-object v4, Ljavax/xml/transform/stream/FilePathToURI;->gNeedEscaping:[Z

    #@3c
    aput-boolean v7, v4, v8

    #@3e
    .line 38
    sget-object v4, Ljavax/xml/transform/stream/FilePathToURI;->gAfterEscaping1:[C

    #@40
    const/16 v5, 0x37

    #@42
    aput-char v5, v4, v8

    #@44
    .line 39
    sget-object v4, Ljavax/xml/transform/stream/FilePathToURI;->gAfterEscaping2:[C

    #@46
    const/16 v5, 0x46

    #@48
    aput-char v5, v4, v8

    #@4a
    .line 40
    const/16 v4, 0xf

    #@4c
    new-array v1, v4, [C

    #@4e
    .local v1, "escChs":[C
    fill-array-data v1, :array_1

    #@51
    .line 42
    array-length v3, v1

    #@52
    .line 44
    .local v3, "len":I
    const/4 v2, 0x0

    #@53
    :goto_1
    if-ge v2, v3, :cond_1

    #@55
    .line 45
    aget-char v0, v1, v2

    #@57
    .line 46
    .local v0, "ch":C
    sget-object v4, Ljavax/xml/transform/stream/FilePathToURI;->gNeedEscaping:[Z

    #@59
    aput-boolean v7, v4, v0

    #@5b
    .line 47
    sget-object v4, Ljavax/xml/transform/stream/FilePathToURI;->gAfterEscaping1:[C

    #@5d
    sget-object v5, Ljavax/xml/transform/stream/FilePathToURI;->gHexChs:[C

    #@5f
    shr-int/lit8 v6, v0, 0x4

    #@61
    aget-char v5, v5, v6

    #@63
    aput-char v5, v4, v0

    #@65
    .line 48
    sget-object v4, Ljavax/xml/transform/stream/FilePathToURI;->gAfterEscaping2:[C

    #@67
    sget-object v5, Ljavax/xml/transform/stream/FilePathToURI;->gHexChs:[C

    #@69
    and-int/lit8 v6, v0, 0xf

    #@6b
    aget-char v5, v5, v6

    #@6d
    aput-char v5, v4, v0

    #@6f
    .line 44
    add-int/lit8 v2, v2, 0x1

    #@71
    goto :goto_1

    #@72
    .line 20
    .end local v0    # "ch":C
    :cond_1
    return-void

    #@73
    .line 28
    nop

    #@74
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    #@88
    .line 40
    :array_1
    .array-data 2
        0x20s
        0x3cs
        0x3es
        0x23s
        0x25s
        0x22s
        0x7bs
        0x7ds
        0x7cs
        0x5cs
        0x5es
        0x7es
        0x5bs
        0x5ds
        0x60s
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static filepath2URI(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "path"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/16 v12, 0x2f

    #@3
    const/4 v11, 0x0

    #@4
    const/16 v10, 0x25

    #@6
    .line 57
    if-nez p0, :cond_0

    #@8
    .line 58
    return-object v8

    #@9
    .line 60
    :cond_0
    sget-char v7, Ljava/io/File;->separatorChar:C

    #@b
    .line 61
    .local v7, "separator":C
    invoke-virtual {p0, v7, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@e
    move-result-object p0

    #@f
    .line 63
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@12
    move-result v6

    #@13
    .line 64
    .local v6, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    mul-int/lit8 v8, v6, 0x3

    #@17
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    #@1a
    .line 65
    .local v1, "buffer":Ljava/lang/StringBuilder;
    const-string/jumbo v8, "file://"

    #@1d
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    .line 67
    const/4 v8, 0x2

    #@21
    if-lt v6, v8, :cond_1

    #@23
    const/4 v8, 0x1

    #@24
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    #@27
    move-result v8

    #@28
    const/16 v9, 0x3a

    #@2a
    if-ne v8, v9, :cond_1

    #@2c
    .line 68
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    #@2f
    move-result v8

    #@30
    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    #@33
    move-result v3

    #@34
    .line 69
    .local v3, "ch":I
    const/16 v8, 0x41

    #@36
    if-lt v3, v8, :cond_1

    #@38
    const/16 v8, 0x5a

    #@3a
    if-gt v3, v8, :cond_1

    #@3c
    .line 70
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3f
    .line 75
    .end local v3    # "ch":I
    :cond_1
    const/4 v5, 0x0

    #@40
    .line 76
    .local v5, "i":I
    :goto_0
    if-ge v5, v6, :cond_2

    #@42
    .line 77
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@45
    move-result v3

    #@46
    .line 79
    .restart local v3    # "ch":I
    const/16 v8, 0x80

    #@48
    if-lt v3, v8, :cond_3

    #@4a
    .line 93
    .end local v3    # "ch":I
    :cond_2
    if-ge v5, v6, :cond_7

    #@4c
    .line 95
    const/4 v2, 0x0

    #@4d
    .line 98
    .local v2, "bytes":[B
    :try_start_0
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@50
    move-result-object v8

    #@51
    const-string/jumbo v9, "UTF-8"

    #@54
    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@57
    move-result-object v2

    #@58
    .line 103
    .local v2, "bytes":[B
    array-length v6, v2

    #@59
    .line 106
    const/4 v5, 0x0

    #@5a
    :goto_1
    if-ge v5, v6, :cond_7

    #@5c
    .line 107
    aget-byte v0, v2, v5

    #@5e
    .line 109
    .local v0, "b":B
    if-gez v0, :cond_5

    #@60
    .line 110
    add-int/lit16 v3, v0, 0x100

    #@62
    .line 111
    .restart local v3    # "ch":I
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@65
    .line 112
    sget-object v8, Ljavax/xml/transform/stream/FilePathToURI;->gHexChs:[C

    #@67
    shr-int/lit8 v9, v3, 0x4

    #@69
    aget-char v8, v8, v9

    #@6b
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6e
    .line 113
    sget-object v8, Ljavax/xml/transform/stream/FilePathToURI;->gHexChs:[C

    #@70
    and-int/lit8 v9, v3, 0xf

    #@72
    aget-char v8, v8, v9

    #@74
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@77
    .line 106
    .end local v3    # "ch":I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    #@79
    goto :goto_1

    #@7a
    .line 81
    .end local v0    # "b":B
    .end local v2    # "bytes":[B
    .restart local v3    # "ch":I
    :cond_3
    sget-object v8, Ljavax/xml/transform/stream/FilePathToURI;->gNeedEscaping:[Z

    #@7c
    aget-boolean v8, v8, v3

    #@7e
    if-eqz v8, :cond_4

    #@80
    .line 82
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@83
    .line 83
    sget-object v8, Ljavax/xml/transform/stream/FilePathToURI;->gAfterEscaping1:[C

    #@85
    aget-char v8, v8, v3

    #@87
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@8a
    .line 84
    sget-object v8, Ljavax/xml/transform/stream/FilePathToURI;->gAfterEscaping2:[C

    #@8c
    aget-char v8, v8, v3

    #@8e
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@91
    .line 76
    :goto_3
    add-int/lit8 v5, v5, 0x1

    #@93
    goto :goto_0

    #@94
    .line 88
    :cond_4
    int-to-char v8, v3

    #@95
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@98
    goto :goto_3

    #@99
    .line 99
    .end local v3    # "ch":I
    .local v2, "bytes":[B
    :catch_0
    move-exception v4

    #@9a
    .line 101
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    return-object p0

    #@9b
    .line 115
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "b":B
    .local v2, "bytes":[B
    :cond_5
    sget-object v8, Ljavax/xml/transform/stream/FilePathToURI;->gNeedEscaping:[Z

    #@9d
    aget-boolean v8, v8, v0

    #@9f
    if-eqz v8, :cond_6

    #@a1
    .line 116
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a4
    .line 117
    sget-object v8, Ljavax/xml/transform/stream/FilePathToURI;->gAfterEscaping1:[C

    #@a6
    aget-char v8, v8, v0

    #@a8
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ab
    .line 118
    sget-object v8, Ljavax/xml/transform/stream/FilePathToURI;->gAfterEscaping2:[C

    #@ad
    aget-char v8, v8, v0

    #@af
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b2
    goto :goto_2

    #@b3
    .line 121
    :cond_6
    int-to-char v8, v0

    #@b4
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b7
    goto :goto_2

    #@b8
    .line 126
    .end local v0    # "b":B
    .end local v2    # "bytes":[B
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bb
    move-result-object v8

    #@bc
    return-object v8
.end method
