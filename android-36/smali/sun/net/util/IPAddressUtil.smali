.class public Lsun/net/util/IPAddressUtil;
.super Ljava/lang/Object;
.source "IPAddressUtil.java"


# static fields
.field private static final blacklist INADDR16SZ:I = 0x10

.field private static final blacklist INADDR4SZ:I = 0x4

.field private static final blacklist INT16SZ:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist convertFromIPv4MappedAddress([B)[B
    .registers 5
    .param p0, "addr"    # [B

    .line 268
    invoke-static {p0}, Lsun/net/util/IPAddressUtil;->isIPv4MappedAddress([B)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 269
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 270
    .local v1, "newAddr":[B
    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    return-object v1

    .line 273
    .end local v1    # "newAddr":[B
    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public static greylist-max-r isIPv4LiteralAddress(Ljava/lang/String;)Z
    .registers 2
    .param p0, "src"    # Ljava/lang/String;

    .line 249
    invoke-static {p0}, Lsun/net/util/IPAddressUtil;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static blacklist isIPv4MappedAddress([B)Z
    .registers 5
    .param p0, "addr"    # [B

    .line 284
    array-length v0, p0

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ge v0, v1, :cond_7

    .line 285
    return v2

    .line 287
    :cond_7
    aget-byte v0, p0, v2

    if-nez v0, :cond_48

    const/4 v0, 0x1

    aget-byte v1, p0, v0

    if-nez v1, :cond_48

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    if-nez v1, :cond_48

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    if-nez v1, :cond_48

    const/4 v1, 0x4

    aget-byte v1, p0, v1

    if-nez v1, :cond_48

    const/4 v1, 0x5

    aget-byte v1, p0, v1

    if-nez v1, :cond_48

    const/4 v1, 0x6

    aget-byte v1, p0, v1

    if-nez v1, :cond_48

    const/4 v1, 0x7

    aget-byte v1, p0, v1

    if-nez v1, :cond_48

    const/16 v1, 0x8

    aget-byte v1, p0, v1

    if-nez v1, :cond_48

    const/16 v1, 0x9

    aget-byte v1, p0, v1

    if-nez v1, :cond_48

    const/16 v1, 0xa

    aget-byte v1, p0, v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_48

    const/16 v1, 0xb

    aget-byte v1, p0, v1

    if-ne v1, v3, :cond_48

    .line 294
    return v0

    .line 296
    :cond_48
    return v2
.end method

.method public static greylist-max-r isIPv6LiteralAddress(Ljava/lang/String;)Z
    .registers 2
    .param p0, "src"    # Ljava/lang/String;

    .line 257
    invoke-static {p0}, Lsun/net/util/IPAddressUtil;->textToNumericFormatV6(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static blacklist textToNumericFormatV4(Ljava/lang/String;)[B
    .registers 16
    .param p0, "src"    # Ljava/lang/String;

    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 45
    .local v0, "res":[B
    const-wide/16 v1, 0x0

    .line 46
    .local v1, "tmpValue":J
    const/4 v3, 0x0

    .line 47
    .local v3, "currByte":I
    const/4 v4, 0x1

    .line 49
    .local v4, "newOctet":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 50
    .local v5, "len":I
    const/4 v6, 0x0

    if-eqz v5, :cond_73

    const/16 v7, 0xf

    if-le v5, v7, :cond_13

    goto :goto_73

    .line 78
    :cond_13
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_14
    const/4 v8, 0x3

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0xff

    if-ge v7, v5, :cond_51

    .line 79
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 80
    .local v13, "c":C
    const/16 v14, 0x2e

    if-ne v13, v14, :cond_3f

    .line 81
    if-nez v4, :cond_3e

    cmp-long v9, v1, v9

    if-ltz v9, :cond_3e

    cmp-long v9, v1, v11

    if-gtz v9, :cond_3e

    if-ne v3, v8, :cond_30

    goto :goto_3e

    .line 84
    :cond_30
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "currByte":I
    .local v8, "currByte":I
    and-long v9, v1, v11

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v0, v3

    .line 85
    const-wide/16 v1, 0x0

    .line 86
    const/4 v3, 0x1

    move v4, v3

    move v3, v8

    .end local v4    # "newOctet":Z
    .local v3, "newOctet":Z
    goto :goto_4e

    .line 82
    .end local v8    # "currByte":I
    .local v3, "currByte":I
    .restart local v4    # "newOctet":Z
    :cond_3e
    :goto_3e
    return-object v6

    .line 88
    :cond_3f
    const/16 v8, 0xa

    invoke-static {v13, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    .line 89
    .local v8, "digit":I
    if-gez v8, :cond_48

    .line 90
    return-object v6

    .line 92
    :cond_48
    const-wide/16 v9, 0xa

    mul-long/2addr v1, v9

    .line 93
    int-to-long v9, v8

    add-long/2addr v1, v9

    .line 94
    const/4 v4, 0x0

    .line 78
    .end local v8    # "digit":I
    .end local v13    # "c":C
    :goto_4e
    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    .line 97
    .end local v7    # "i":I
    :cond_51
    if-nez v4, :cond_72

    cmp-long v7, v1, v9

    if-ltz v7, :cond_72

    rsub-int/lit8 v7, v3, 0x4

    mul-int/lit8 v7, v7, 0x8

    const-wide/16 v9, 0x1

    shl-long/2addr v9, v7

    cmp-long v7, v1, v9

    if-ltz v7, :cond_63

    goto :goto_72

    .line 100
    :cond_63
    packed-switch v3, :pswitch_data_74

    goto :goto_71

    .line 116
    :pswitch_67
    const/4 v6, 0x0

    shr-long v6, v1, v6

    and-long/2addr v6, v11

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v8

    goto :goto_71

    .line 113
    :pswitch_70
    return-object v6

    .line 118
    :goto_71
    return-object v0

    .line 98
    :cond_72
    :goto_72
    return-object v6

    .line 51
    :cond_73
    :goto_73
    return-object v6

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_70
        :pswitch_70
        :pswitch_70
        :pswitch_67
    .end packed-switch
.end method

.method public static blacklist textToNumericFormatV6(Ljava/lang/String;)[B
    .registers 21
    .param p0, "src"    # Ljava/lang/String;

    .line 134
    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_b

    .line 135
    return-object v3

    .line 142
    :cond_b
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 143
    .local v1, "srcb":[C
    const/16 v2, 0x10

    new-array v4, v2, [B

    .line 145
    .local v4, "dst":[B
    array-length v5, v1

    .line 146
    .local v5, "srcb_length":I
    const-string v6, "%"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 147
    .local v6, "pc":I
    add-int/lit8 v7, v5, -0x1

    if-ne v6, v7, :cond_1f

    .line 148
    return-object v3

    .line 151
    :cond_1f
    const/4 v7, -0x1

    if-eq v6, v7, :cond_23

    .line 152
    move v5, v6

    .line 155
    :cond_23
    const/4 v8, -0x1

    .line 156
    .local v8, "colonp":I
    const/4 v9, 0x0

    .local v9, "i":I
    const/4 v10, 0x0

    .line 158
    .local v10, "j":I
    aget-char v11, v1, v9

    const/16 v12, 0x3a

    if-ne v11, v12, :cond_33

    .line 159
    add-int/lit8 v9, v9, 0x1

    aget-char v11, v1, v9

    if-eq v11, v12, :cond_33

    .line 160
    return-object v3

    .line 161
    :cond_33
    move v11, v9

    .line 162
    .local v11, "curtok":I
    const/4 v13, 0x0

    .line 163
    .local v13, "saw_xdigit":Z
    const/4 v14, 0x0

    .line 164
    .local v14, "val":I
    :goto_36
    if-ge v9, v5, :cond_d0

    .line 165
    add-int/lit8 v15, v9, 0x1

    .end local v9    # "i":I
    .local v15, "i":I
    aget-char v9, v1, v9

    .line 166
    .local v9, "ch":C
    move-object/from16 v16, v3

    invoke-static {v9, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 167
    .local v3, "chval":I
    if-eq v3, v7, :cond_54

    .line 168
    shl-int/lit8 v14, v14, 0x4

    .line 169
    or-int/2addr v14, v3

    .line 170
    const v2, 0xffff

    if-le v14, v2, :cond_4d

    .line 171
    return-object v16

    .line 172
    :cond_4d
    const/4 v13, 0x1

    .line 173
    move v9, v15

    move-object/from16 v3, v16

    const/16 v2, 0x10

    goto :goto_36

    .line 175
    :cond_54
    if-ne v9, v12, :cond_87

    .line 176
    move v11, v15

    .line 177
    if-nez v13, :cond_63

    .line 178
    if-eq v8, v7, :cond_5c

    .line 179
    return-object v16

    .line 180
    :cond_5c
    move v8, v10

    .line 181
    move v9, v15

    move-object/from16 v3, v16

    const/16 v2, 0x10

    goto :goto_36

    .line 182
    :cond_63
    if-ne v15, v5, :cond_66

    .line 183
    return-object v16

    .line 185
    :cond_66
    add-int/lit8 v2, v10, 0x2

    const/16 v12, 0x10

    if-le v2, v12, :cond_6d

    .line 186
    return-object v16

    .line 187
    :cond_6d
    add-int/lit8 v2, v10, 0x1

    .end local v10    # "j":I
    .local v2, "j":I
    shr-int/lit8 v12, v14, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v4, v10

    .line 188
    add-int/lit8 v10, v2, 0x1

    .end local v2    # "j":I
    .restart local v10    # "j":I
    and-int/lit16 v12, v14, 0xff

    int-to-byte v12, v12

    aput-byte v12, v4, v2

    .line 189
    const/4 v13, 0x0

    .line 190
    const/4 v14, 0x0

    .line 191
    move v9, v15

    move-object/from16 v3, v16

    const/16 v2, 0x10

    const/16 v12, 0x3a

    goto :goto_36

    .line 193
    :cond_87
    const/16 v2, 0x2e

    if-ne v9, v2, :cond_cd

    add-int/lit8 v12, v10, 0x4

    const/16 v7, 0x10

    if-gt v12, v7, :cond_cd

    .line 194
    invoke-virtual {v0, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 196
    .local v7, "ia4":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "dot_count":I
    const/16 v17, 0x0

    move/from16 v0, v17

    .line 197
    .local v0, "index":I
    :goto_9a
    move-object/from16 v17, v1

    .end local v1    # "srcb":[C
    .local v17, "srcb":[C
    invoke-virtual {v7, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    move v0, v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_ad

    .line 198
    add-int/lit8 v12, v12, 0x1

    .line 199
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, v17

    const/16 v2, 0x2e

    goto :goto_9a

    .line 201
    :cond_ad
    const/4 v1, 0x3

    if-eq v12, v1, :cond_b1

    .line 202
    return-object v16

    .line 204
    :cond_b1
    invoke-static {v7}, Lsun/net/util/IPAddressUtil;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object v1

    .line 205
    .local v1, "v4addr":[B
    if-nez v1, :cond_b8

    .line 206
    return-object v16

    .line 208
    :cond_b8
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_b9
    move/from16 v18, v0

    .end local v0    # "index":I
    .local v18, "index":I
    const/4 v0, 0x4

    if-ge v2, v0, :cond_ca

    .line 209
    add-int/lit8 v0, v10, 0x1

    .end local v10    # "j":I
    .local v0, "j":I
    aget-byte v19, v1, v2

    aput-byte v19, v4, v10

    .line 208
    add-int/lit8 v2, v2, 0x1

    move v10, v0

    move/from16 v0, v18

    goto :goto_b9

    .line 211
    .end local v0    # "j":I
    .end local v2    # "k":I
    .restart local v10    # "j":I
    :cond_ca
    const/4 v13, 0x0

    .line 212
    move v9, v15

    goto :goto_d4

    .line 193
    .end local v7    # "ia4":Ljava/lang/String;
    .end local v12    # "dot_count":I
    .end local v17    # "srcb":[C
    .end local v18    # "index":I
    .local v1, "srcb":[C
    :cond_cd
    move-object/from16 v17, v1

    .line 214
    .end local v1    # "srcb":[C
    .restart local v17    # "srcb":[C
    return-object v16

    .line 164
    .end local v3    # "chval":I
    .end local v15    # "i":I
    .end local v17    # "srcb":[C
    .restart local v1    # "srcb":[C
    .local v9, "i":I
    :cond_d0
    move-object/from16 v17, v1

    move-object/from16 v16, v3

    .line 216
    .end local v1    # "srcb":[C
    .restart local v17    # "srcb":[C
    :goto_d4
    if-eqz v13, :cond_ed

    .line 217
    add-int/lit8 v0, v10, 0x2

    const/16 v7, 0x10

    if-le v0, v7, :cond_dd

    .line 218
    return-object v16

    .line 219
    :cond_dd
    add-int/lit8 v0, v10, 0x1

    .end local v10    # "j":I
    .restart local v0    # "j":I
    shr-int/lit8 v1, v14, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v4, v10

    .line 220
    add-int/lit8 v10, v0, 0x1

    .end local v0    # "j":I
    .restart local v10    # "j":I
    and-int/lit16 v1, v14, 0xff

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    .line 223
    :cond_ed
    const/4 v2, -0x1

    if-eq v8, v2, :cond_10f

    .line 224
    sub-int v0, v10, v8

    .line 226
    .local v0, "n":I
    const/16 v7, 0x10

    if-ne v10, v7, :cond_f7

    .line 227
    return-object v16

    .line 228
    :cond_f7
    const/4 v1, 0x1

    move v9, v1

    :goto_f9
    if-gt v9, v0, :cond_10d

    .line 229
    rsub-int/lit8 v1, v9, 0x10

    add-int v2, v8, v0

    sub-int/2addr v2, v9

    aget-byte v2, v4, v2

    aput-byte v2, v4, v1

    .line 230
    add-int v1, v8, v0

    sub-int/2addr v1, v9

    const/4 v2, 0x0

    aput-byte v2, v4, v1

    .line 228
    add-int/lit8 v9, v9, 0x1

    goto :goto_f9

    .line 232
    :cond_10d
    const/16 v10, 0x10

    .line 234
    .end local v0    # "n":I
    :cond_10f
    const/16 v7, 0x10

    if-eq v10, v7, :cond_114

    .line 235
    return-object v16

    .line 236
    :cond_114
    invoke-static {v4}, Lsun/net/util/IPAddressUtil;->convertFromIPv4MappedAddress([B)[B

    move-result-object v0

    .line 237
    .local v0, "newdst":[B
    if-eqz v0, :cond_11b

    .line 238
    return-object v0

    .line 240
    :cond_11b
    return-object v4
.end method
