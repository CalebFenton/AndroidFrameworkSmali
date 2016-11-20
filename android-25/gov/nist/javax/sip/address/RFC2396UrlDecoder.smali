.class public Lgov/nist/javax/sip/address/RFC2396UrlDecoder;
.super Ljava/lang/Object;
.source "RFC2396UrlDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v11, 0x25

    #@2
    .line 52
    new-instance v7, Ljava/lang/StringBuffer;

    #@4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@7
    move-result v9

    #@8
    invoke-direct {v7, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    #@b
    .line 53
    .local v7, "translatedUri":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@e
    move-result v9

    #@f
    div-int/lit8 v9, v9, 0x3

    #@11
    new-array v2, v9, [B

    #@13
    .line 54
    .local v2, "encodedchars":[B
    const/4 v4, 0x0

    #@14
    .line 55
    .local v4, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@17
    move-result v5

    #@18
    .line 56
    .local v5, "length":I
    const/4 v3, 0x0

    #@19
    .line 57
    .local v3, "encodedcharsLength":I
    :goto_0
    if-ge v4, v5, :cond_3

    #@1b
    .line 58
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@1e
    move-result v9

    #@1f
    if-ne v9, v11, :cond_2

    #@21
    .line 61
    :goto_1
    if-ge v4, v5, :cond_1

    #@23
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@26
    move-result v9

    #@27
    if-ne v9, v11, :cond_1

    #@29
    .line 62
    add-int/lit8 v9, v4, 0x2

    #@2b
    if-ge v9, v5, :cond_0

    #@2d
    .line 64
    add-int/lit8 v9, v4, 0x1

    #@2f
    add-int/lit8 v10, v4, 0x3

    #@31
    :try_start_0
    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@34
    move-result-object v9

    #@35
    const/16 v10, 0x10

    #@37
    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@3a
    move-result v9

    #@3b
    int-to-byte v8, v9

    #@3c
    .line 65
    .local v8, "x":B
    aput-byte v8, v2, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@3e
    .line 69
    add-int/lit8 v3, v3, 0x1

    #@40
    .line 70
    add-int/lit8 v4, v4, 0x3

    #@42
    goto :goto_1

    #@43
    .line 66
    .end local v8    # "x":B
    :catch_0
    move-exception v1

    #@44
    .line 67
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@46
    new-instance v10, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v11, "Illegal hex characters in pattern %"

    #@4e
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v10

    #@52
    add-int/lit8 v11, v4, 0x1

    #@54
    add-int/lit8 v12, v4, 0x3

    #@56
    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@59
    move-result-object v11

    #@5a
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v10

    #@5e
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v10

    #@62
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@65
    throw v9

    #@66
    .line 72
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@68
    const-string/jumbo v10, "% character should be followed by 2 hexadecimal characters."

    #@6b
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6e
    throw v9

    #@6f
    .line 76
    :cond_1
    :try_start_1
    new-instance v6, Ljava/lang/String;

    #@71
    const-string/jumbo v9, "UTF-8"

    #@74
    const/4 v10, 0x0

    #@75
    invoke-direct {v6, v2, v10, v3, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #@78
    .line 77
    .local v6, "translatedPart":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    #@7b
    .line 82
    const/4 v3, 0x0

    #@7c
    goto :goto_0

    #@7d
    .line 78
    .end local v6    # "translatedPart":Ljava/lang/String;
    :catch_1
    move-exception v0

    #@7e
    .line 80
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v9, Ljava/lang/RuntimeException;

    #@80
    const-string/jumbo v10, "Problem in decodePath: UTF-8 encoding not supported."

    #@83
    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@86
    throw v9

    #@87
    .line 85
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@8a
    move-result v9

    #@8b
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@8e
    .line 86
    add-int/lit8 v4, v4, 0x1

    #@90
    goto :goto_0

    #@91
    .line 89
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@94
    move-result-object v9

    #@95
    return-object v9
.end method
