.class Ljavax/xml/parsers/FilePathToURI;
.super Ljava/lang/Object;
.source "FilePathToURI.java"


# static fields
.field private static blacklist gAfterEscaping1:[C

.field private static blacklist gAfterEscaping2:[C

.field private static blacklist gHexChs:[C

.field private static blacklist gNeedEscaping:[Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 8

    .line 23
    const/16 v0, 0x80

    new-array v1, v0, [Z

    sput-object v1, Ljavax/xml/parsers/FilePathToURI;->gNeedEscaping:[Z

    .line 25
    new-array v1, v0, [C

    sput-object v1, Ljavax/xml/parsers/FilePathToURI;->gAfterEscaping1:[C

    .line 27
    new-array v0, v0, [C

    sput-object v0, Ljavax/xml/parsers/FilePathToURI;->gAfterEscaping2:[C

    .line 28
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_74

    sput-object v0, Ljavax/xml/parsers/FilePathToURI;->gHexChs:[C

    .line 32
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    const/16 v1, 0x1f

    const/4 v2, 0x1

    if-gt v0, v1, :cond_38

    .line 33
    sget-object v1, Ljavax/xml/parsers/FilePathToURI;->gNeedEscaping:[Z

    aput-boolean v2, v1, v0

    .line 34
    sget-object v1, Ljavax/xml/parsers/FilePathToURI;->gAfterEscaping1:[C

    sget-object v2, Ljavax/xml/parsers/FilePathToURI;->gHexChs:[C

    shr-int/lit8 v3, v0, 0x4

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    .line 35
    sget-object v1, Ljavax/xml/parsers/FilePathToURI;->gAfterEscaping2:[C

    sget-object v2, Ljavax/xml/parsers/FilePathToURI;->gHexChs:[C

    and-int/lit8 v3, v0, 0xf

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 37
    .end local v0    # "i":I
    :cond_38
    sget-object v0, Ljavax/xml/parsers/FilePathToURI;->gNeedEscaping:[Z

    const/16 v1, 0x7f

    aput-boolean v2, v0, v1

    .line 38
    sget-object v0, Ljavax/xml/parsers/FilePathToURI;->gAfterEscaping1:[C

    const/16 v3, 0x37

    aput-char v3, v0, v1

    .line 39
    sget-object v0, Ljavax/xml/parsers/FilePathToURI;->gAfterEscaping2:[C

    const/16 v3, 0x46

    aput-char v3, v0, v1

    .line 40
    const/16 v0, 0xf

    new-array v0, v0, [C

    fill-array-data v0, :array_88

    .line 42
    .local v0, "escChs":[C
    array-length v1, v0

    .line 44
    .local v1, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_53
    if-ge v3, v1, :cond_72

    .line 45
    aget-char v4, v0, v3

    .line 46
    .local v4, "ch":C
    sget-object v5, Ljavax/xml/parsers/FilePathToURI;->gNeedEscaping:[Z

    aput-boolean v2, v5, v4

    .line 47
    sget-object v5, Ljavax/xml/parsers/FilePathToURI;->gAfterEscaping1:[C

    sget-object v6, Ljavax/xml/parsers/FilePathToURI;->gHexChs:[C

    shr-int/lit8 v7, v4, 0x4

    aget-char v6, v6, v7

    aput-char v6, v5, v4

    .line 48
    sget-object v5, Ljavax/xml/parsers/FilePathToURI;->gAfterEscaping2:[C

    sget-object v6, Ljavax/xml/parsers/FilePathToURI;->gHexChs:[C

    and-int/lit8 v7, v4, 0xf

    aget-char v6, v6, v7

    aput-char v6, v5, v4

    .line 44
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    .line 50
    .end local v0    # "escChs":[C
    .end local v1    # "len":I
    .end local v3    # "i":I
    .end local v4    # "ch":C
    :cond_72
    return-void

    nop

    :array_74
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

    :array_88
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

.method constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist filepath2URI(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "path"    # Ljava/lang/String;

    .line 57
    if-nez p0, :cond_4

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_4
    sget-char v0, Ljava/io/File;->separatorChar:C

    .line 61
    .local v0, "separator":C
    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 63
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 64
    .local v2, "len":I
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v2, 0x3

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 65
    .local v3, "buffer":Ljava/lang/StringBuilder;
    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const/4 v4, 0x2

    if-lt v2, v4, :cond_3c

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_3c

    .line 68
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    .line 69
    .local v4, "ch":I
    const/16 v5, 0x41

    if-lt v4, v5, :cond_3c

    const/16 v5, 0x5a

    if-gt v4, v5, :cond_3c

    .line 70
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    .end local v4    # "ch":I
    :cond_3c
    const/4 v1, 0x0

    .line 76
    .local v1, "i":I
    :goto_3d
    const/16 v4, 0x25

    if-ge v1, v2, :cond_69

    .line 77
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 79
    .local v5, "ch":I
    const/16 v6, 0x80

    if-lt v5, v6, :cond_4a

    .line 80
    goto :goto_69

    .line 81
    :cond_4a
    sget-object v6, Ljavax/xml/parsers/FilePathToURI;->gNeedEscaping:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_62

    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    sget-object v4, Ljavax/xml/parsers/FilePathToURI;->gAfterEscaping1:[C

    aget-char v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    sget-object v4, Ljavax/xml/parsers/FilePathToURI;->gAfterEscaping2:[C

    aget-char v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_66

    .line 88
    :cond_62
    int-to-char v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    :goto_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 93
    .end local v5    # "ch":I
    :cond_69
    :goto_69
    if-ge v1, v2, :cond_b8

    .line 95
    const/4 v5, 0x0

    .line 98
    .local v5, "bytes":[B
    :try_start_6c
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6
    :try_end_76
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6c .. :try_end_76} :catch_b6

    .line 102
    .end local v5    # "bytes":[B
    .local v6, "bytes":[B
    nop

    .line 103
    array-length v2, v6

    .line 106
    const/4 v1, 0x0

    :goto_79
    if-ge v1, v2, :cond_b8

    .line 107
    aget-byte v5, v6, v1

    .line 109
    .local v5, "b":B
    if-gez v5, :cond_97

    .line 110
    add-int/lit16 v7, v5, 0x100

    .line 111
    .local v7, "ch":I
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    sget-object v8, Ljavax/xml/parsers/FilePathToURI;->gHexChs:[C

    shr-int/lit8 v9, v7, 0x4

    aget-char v8, v8, v9

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    sget-object v8, Ljavax/xml/parsers/FilePathToURI;->gHexChs:[C

    and-int/lit8 v9, v7, 0xf

    aget-char v8, v8, v9

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b3

    .line 115
    .end local v7    # "ch":I
    :cond_97
    sget-object v7, Ljavax/xml/parsers/FilePathToURI;->gNeedEscaping:[Z

    aget-boolean v7, v7, v5

    if-eqz v7, :cond_af

    .line 116
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    sget-object v7, Ljavax/xml/parsers/FilePathToURI;->gAfterEscaping1:[C

    aget-char v7, v7, v5

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    sget-object v7, Ljavax/xml/parsers/FilePathToURI;->gAfterEscaping2:[C

    aget-char v7, v7, v5

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b3

    .line 121
    :cond_af
    int-to-char v7, v5

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    :goto_b3
    add-int/lit8 v1, v1, 0x1

    goto :goto_79

    .line 99
    .end local v6    # "bytes":[B
    .local v5, "bytes":[B
    :catch_b6
    move-exception v4

    .line 101
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    return-object p0

    .line 126
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v5    # "bytes":[B
    :cond_b8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
