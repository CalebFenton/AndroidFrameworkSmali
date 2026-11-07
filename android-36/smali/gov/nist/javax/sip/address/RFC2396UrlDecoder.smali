.class public Lgov/nist/javax/sip/address/RFC2396UrlDecoder;
.super Ljava/lang/Object;
.source "RFC2396UrlDecoder.java"


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "uri"    # Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 53
    .local v0, "translatedUri":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    new-array v1, v1, [B

    .line 54
    .local v1, "encodedchars":[B
    const/4 v2, 0x0

    .line 55
    .local v2, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 56
    .local v3, "length":I
    const/4 v4, 0x0

    .line 57
    .local v4, "encodedcharsLength":I
    :goto_17
    if-ge v2, v3, :cond_8f

    .line 58
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x25

    if-ne v5, v6, :cond_85

    .line 61
    :goto_21
    if-ge v2, v3, :cond_6e

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_6e

    .line 62
    add-int/lit8 v5, v2, 0x2

    if-ge v5, v3, :cond_66

    .line 64
    add-int/lit8 v5, v2, 0x1

    add-int/lit8 v7, v2, 0x3

    :try_start_31
    invoke-virtual {p0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x10

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-byte v5, v5

    .line 65
    .local v5, "x":B
    aput-byte v5, v1, v4
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_3e} :catch_44

    .line 68
    .end local v5    # "x":B
    nop

    .line 69
    add-int/lit8 v4, v4, 0x1

    .line 70
    add-int/lit8 v2, v2, 0x3

    goto :goto_21

    .line 66
    :catch_44
    move-exception v5

    .line 67
    .local v5, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Illegal hex characters in pattern %"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v2, 0x1

    add-int/lit8 v9, v2, 0x3

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 72
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_66
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "% character should be followed by 2 hexadecimal characters."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 76
    :cond_6e
    :try_start_6e
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    const/4 v7, 0x0

    invoke-direct {v5, v1, v7, v4, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 77
    .local v5, "translatedPart":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_79
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6e .. :try_end_79} :catch_7c

    .line 81
    nop

    .line 82
    .end local v5    # "translatedPart":Ljava/lang/String;
    const/4 v4, 0x0

    goto :goto_17

    .line 78
    :catch_7c
    move-exception v5

    .line 80
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Problem in decodePath: UTF-8 encoding not supported."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 85
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_85
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 89
    :cond_8f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
