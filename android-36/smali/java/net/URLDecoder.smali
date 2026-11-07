.class public Ljava/net/URLDecoder;
.super Ljava/lang/Object;
.source "URLDecoder.java"


# static fields
.field static greylist-max-o dfltEncName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 86
    sget-object v0, Ljava/net/URLEncoder;->dfltEncName:Ljava/lang/String;

    sput-object v0, Ljava/net/URLDecoder;->dfltEncName:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist test-api decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    const/4 v0, 0x0

    .line 105
    .local v0, "str":Ljava/lang/String;
    :try_start_1
    sget-object v1, Ljava/net/URLDecoder;->dfltEncName:Ljava/lang/String;

    invoke-static {p0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_7} :catch_9

    move-object v0, v1

    .line 108
    goto :goto_a

    .line 106
    :catch_9
    move-exception v1

    .line 110
    :goto_a
    return-object v0
.end method

.method public static whitelist test-api decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 137
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 142
    :try_start_6
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 143
    .local v0, "charset":Ljava/nio/charset/Charset;
    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_6 .. :try_end_e} :catch_f
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_6 .. :try_end_e} :catch_f

    return-object v1

    .line 144
    .end local v0    # "charset":Ljava/nio/charset/Charset;
    :catch_f
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_16
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    const-string v1, "URLDecoder: empty string enc parameter"

    invoke-direct {v0, v1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api decode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 13
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 175
    const-string v0, "Charset"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "needToChange":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 178
    .local v1, "numChars":I
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1f4

    if-le v1, v3, :cond_13

    div-int/lit8 v3, v1, 0x2

    goto :goto_14

    :cond_13
    move v3, v1

    :goto_14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 179
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 182
    .local v3, "i":I
    const/4 v4, 0x0

    .line 183
    .local v4, "bytes":[B
    :goto_19
    if-ge v3, v1, :cond_f4

    .line 184
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 185
    .local v5, "c":C
    sparse-switch v5, :sswitch_data_fe

    .line 244
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    add-int/lit8 v3, v3, 0x1

    .line 246
    goto :goto_19

    .line 187
    :sswitch_28
    const/16 v6, 0x20

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    add-int/lit8 v3, v3, 0x1

    .line 189
    const/4 v0, 0x1

    .line 190
    goto :goto_19

    .line 205
    :sswitch_31
    if-nez v4, :cond_3e

    .line 206
    sub-int v6, v1, v3

    :try_start_35
    div-int/lit8 v6, v6, 0x3

    new-array v6, v6, [B

    move-object v4, v6

    .end local v4    # "bytes":[B
    .local v6, "bytes":[B
    goto :goto_3e

    .line 236
    .end local v6    # "bytes":[B
    .restart local v4    # "bytes":[B
    :catch_3b
    move-exception v6

    goto/16 :goto_d7

    .line 207
    :cond_3e
    :goto_3e
    const/4 v6, 0x0

    .line 209
    .local v6, "pos":I
    :goto_3f
    add-int/lit8 v7, v3, 0x2

    const/16 v8, 0x25

    if-ge v7, v1, :cond_bd

    if-ne v5, v8, :cond_bd

    .line 212
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/net/URLDecoder;->isValidHexChar(C)Z

    move-result v7

    if-eqz v7, :cond_9e

    add-int/lit8 v7, v3, 0x2

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/net/URLDecoder;->isValidHexChar(C)Z

    move-result v7

    if-eqz v7, :cond_9e

    .line 217
    add-int/lit8 v7, v3, 0x1

    add-int/lit8 v8, v3, 0x3

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 218
    .local v7, "v":I
    if-ltz v7, :cond_7f

    .line 222
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "pos":I
    .local v8, "pos":I
    int-to-byte v9, v7

    aput-byte v9, v4, v6

    .line 223
    add-int/lit8 v3, v3, 0x3

    .line 224
    if-ge v3, v1, :cond_7d

    .line 225
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v5, v6

    .line 226
    .end local v7    # "v":I
    :cond_7d
    move v6, v8

    goto :goto_3f

    .line 220
    .end local v8    # "pos":I
    .restart local v6    # "pos":I
    .restart local v7    # "v":I
    :cond_7f
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "URLDecoder: Illegal hex characters in escape (%) pattern - negative value : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v3, 0x3

    .line 221
    invoke-virtual {p0, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "needToChange":Z
    .end local v1    # "numChars":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "i":I
    .end local v4    # "bytes":[B
    .end local v5    # "c":C
    .end local p0    # "s":Ljava/lang/String;
    .end local p1    # "charset":Ljava/nio/charset/Charset;
    throw v8

    .line 213
    .end local v7    # "v":I
    .restart local v0    # "needToChange":Z
    .restart local v1    # "numChars":I
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "i":I
    .restart local v4    # "bytes":[B
    .restart local v5    # "c":C
    .restart local p0    # "s":Ljava/lang/String;
    .restart local p1    # "charset":Ljava/nio/charset/Charset;
    :cond_9e
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "URLDecoder: Illegal hex characters in escape (%) pattern : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v3, 0x3

    .line 214
    invoke-virtual {p0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "needToChange":Z
    .end local v1    # "numChars":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "i":I
    .end local v4    # "bytes":[B
    .end local v5    # "c":C
    .end local p0    # "s":Ljava/lang/String;
    .end local p1    # "charset":Ljava/nio/charset/Charset;
    throw v7

    .line 231
    .restart local v0    # "needToChange":Z
    .restart local v1    # "numChars":I
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "i":I
    .restart local v4    # "bytes":[B
    .restart local v5    # "c":C
    .restart local p0    # "s":Ljava/lang/String;
    .restart local p1    # "charset":Ljava/nio/charset/Charset;
    :cond_bd
    if-ge v3, v1, :cond_ca

    if-eq v5, v8, :cond_c2

    goto :goto_ca

    .line 232
    :cond_c2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "URLDecoder: Incomplete trailing escape (%) pattern"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "needToChange":Z
    .end local v1    # "numChars":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "i":I
    .end local v4    # "bytes":[B
    .end local v5    # "c":C
    .end local p0    # "s":Ljava/lang/String;
    .end local p1    # "charset":Ljava/nio/charset/Charset;
    throw v7

    .line 235
    .restart local v0    # "needToChange":Z
    .restart local v1    # "numChars":I
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "i":I
    .restart local v4    # "bytes":[B
    .restart local v5    # "c":C
    .restart local p0    # "s":Ljava/lang/String;
    .restart local p1    # "charset":Ljava/nio/charset/Charset;
    :cond_ca
    :goto_ca
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v4, v8, v6, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_d3
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_d3} :catch_3b

    .line 240
    nop

    .line 241
    .end local v6    # "pos":I
    const/4 v0, 0x1

    .line 242
    goto/16 :goto_19

    .line 237
    .local v6, "e":Ljava/lang/NumberFormatException;
    :goto_d7
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "URLDecoder: Illegal hex characters in escape (%) pattern - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 239
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 250
    .end local v5    # "c":C
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_f4
    if-eqz v0, :cond_fb

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_fc

    :cond_fb
    move-object v5, p0

    :goto_fc
    return-object v5

    nop

    :sswitch_data_fe
    .sparse-switch
        0x25 -> :sswitch_31
        0x2b -> :sswitch_28
    .end sparse-switch
.end method

.method private static greylist-max-o isValidHexChar(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 255
    const/16 v0, 0x30

    if-gt v0, p0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_18

    :cond_8
    const/16 v0, 0x61

    if-gt v0, p0, :cond_10

    const/16 v0, 0x66

    if-le p0, v0, :cond_18

    :cond_10
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1a

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method
