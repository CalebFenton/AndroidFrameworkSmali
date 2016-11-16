.class public Lsun/net/util/IPAddressUtil;
.super Ljava/lang/Object;
.source "IPAddressUtil.java"


# static fields
.field private static final INADDR16SZ:I = 0x10

.field private static final INADDR4SZ:I = 0x4

.field private static final INT16SZ:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static convertFromIPv4MappedAddress([B)[B
    .locals 4
    .param p0, "addr"    # [B

    #@0
    .prologue
    const/4 v3, 0x4

    #@1
    .line 270
    invoke-static {p0}, Lsun/net/util/IPAddressUtil;->isIPv4MappedAddress([B)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 271
    new-array v0, v3, [B

    #@9
    .line 272
    .local v0, "newAddr":[B
    const/16 v1, 0xc

    #@b
    const/4 v2, 0x0

    #@c
    invoke-static {p0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@f
    .line 273
    return-object v0

    #@10
    .line 275
    .end local v0    # "newAddr":[B
    :cond_0
    const/4 v1, 0x0

    #@11
    return-object v1
.end method

.method public static isIPv4LiteralAddress(Ljava/lang/String;)Z
    .locals 1
    .param p0, "src"    # Ljava/lang/String;

    #@0
    .prologue
    .line 251
    invoke-static {p0}, Lsun/net/util/IPAddressUtil;->textToNumericFormatV4(Ljava/lang/String;)[B

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method private static isIPv4MappedAddress([B)Z
    .locals 5
    .param p0, "addr"    # [B

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, -0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 286
    array-length v0, p0

    #@4
    const/16 v1, 0x10

    #@6
    if-ge v0, v1, :cond_0

    #@8
    .line 287
    return v2

    #@9
    .line 289
    :cond_0
    aget-byte v0, p0, v2

    #@b
    if-nez v0, :cond_1

    #@d
    aget-byte v0, p0, v4

    #@f
    if-nez v0, :cond_1

    #@11
    .line 290
    const/4 v0, 0x2

    #@12
    aget-byte v0, p0, v0

    #@14
    if-nez v0, :cond_1

    #@16
    const/4 v0, 0x3

    #@17
    aget-byte v0, p0, v0

    #@19
    if-nez v0, :cond_1

    #@1b
    .line 291
    const/4 v0, 0x4

    #@1c
    aget-byte v0, p0, v0

    #@1e
    if-nez v0, :cond_1

    #@20
    const/4 v0, 0x5

    #@21
    aget-byte v0, p0, v0

    #@23
    if-nez v0, :cond_1

    #@25
    .line 292
    const/4 v0, 0x6

    #@26
    aget-byte v0, p0, v0

    #@28
    if-nez v0, :cond_1

    #@2a
    const/4 v0, 0x7

    #@2b
    aget-byte v0, p0, v0

    #@2d
    if-nez v0, :cond_1

    #@2f
    .line 293
    const/16 v0, 0x8

    #@31
    aget-byte v0, p0, v0

    #@33
    if-nez v0, :cond_1

    #@35
    const/16 v0, 0x9

    #@37
    aget-byte v0, p0, v0

    #@39
    if-nez v0, :cond_1

    #@3b
    .line 294
    const/16 v0, 0xa

    #@3d
    aget-byte v0, p0, v0

    #@3f
    if-ne v0, v3, :cond_1

    #@41
    .line 295
    const/16 v0, 0xb

    #@43
    aget-byte v0, p0, v0

    #@45
    if-ne v0, v3, :cond_1

    #@47
    .line 296
    return v4

    #@48
    .line 298
    :cond_1
    return v2
.end method

.method public static isIPv6LiteralAddress(Ljava/lang/String;)Z
    .locals 1
    .param p0, "src"    # Ljava/lang/String;

    #@0
    .prologue
    .line 259
    invoke-static {p0}, Lsun/net/util/IPAddressUtil;->textToNumericFormatV6(Ljava/lang/String;)[B

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public static textToNumericFormatV4(Ljava/lang/String;)[B
    .locals 12
    .param p0, "src"    # Ljava/lang/String;

    #@0
    .prologue
    const-wide/16 v10, 0xff

    #@2
    const/4 v9, 0x4

    #@3
    const/4 v8, 0x0

    #@4
    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@7
    move-result v6

    #@8
    if-nez v6, :cond_0

    #@a
    .line 43
    return-object v8

    #@b
    .line 46
    :cond_0
    new-array v2, v9, [B

    #@d
    .line 47
    .local v2, "res":[B
    const-string/jumbo v6, "\\."

    #@10
    const/4 v7, -0x1

    #@11
    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    .line 50
    .local v3, "s":[Ljava/lang/String;
    :try_start_0
    array-length v6, v3

    #@16
    packed-switch v6, :pswitch_data_0

    #@19
    .line 115
    return-object v8

    #@1a
    .line 107
    :pswitch_0
    const/4 v1, 0x0

    #@1b
    .local v1, "i":I
    :goto_0
    if-ge v1, v9, :cond_3

    #@1d
    .line 108
    aget-object v6, v3, v1

    #@1f
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@22
    move-result v6

    #@23
    int-to-long v4, v6

    #@24
    .line 109
    .local v4, "val":J
    const-wide/16 v6, 0x0

    #@26
    cmp-long v6, v4, v6

    #@28
    if-ltz v6, :cond_1

    #@2a
    cmp-long v6, v4, v10

    #@2c
    if-lez v6, :cond_2

    #@2e
    .line 110
    :cond_1
    return-object v8

    #@2f
    .line 111
    :cond_2
    and-long v6, v4, v10

    #@31
    long-to-int v6, v6

    #@32
    int-to-byte v6, v6

    #@33
    aput-byte v6, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    .line 107
    add-int/lit8 v1, v1, 0x1

    #@37
    goto :goto_0

    #@38
    .line 117
    .end local v1    # "i":I
    .end local v4    # "val":J
    :catch_0
    move-exception v0

    #@39
    .line 118
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-object v8

    #@3a
    .line 120
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "i":I
    :cond_3
    return-object v2

    #@3b
    .line 50
    nop

    #@3c
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public static textToNumericFormatV6(Ljava/lang/String;)[B
    .locals 25
    .param p0, "src"    # Ljava/lang/String;

    #@0
    .prologue
    .line 136
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    #@3
    move-result v23

    #@4
    const/16 v24, 0x2

    #@6
    move/from16 v0, v23

    #@8
    move/from16 v1, v24

    #@a
    if-ge v0, v1, :cond_0

    #@c
    .line 137
    const/16 v23, 0x0

    #@e
    return-object v23

    #@f
    .line 144
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    #@12
    move-result-object v19

    #@13
    .line 145
    .local v19, "srcb":[C
    const/16 v23, 0x10

    #@15
    move/from16 v0, v23

    #@17
    new-array v7, v0, [B

    #@19
    .line 147
    .local v7, "dst":[B
    move-object/from16 v0, v19

    #@1b
    array-length v0, v0

    #@1c
    move/from16 v20, v0

    #@1e
    .line 148
    .local v20, "srcb_length":I
    const-string/jumbo v23, "%"

    #@21
    move-object/from16 v0, p0

    #@23
    move-object/from16 v1, v23

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@28
    move-result v17

    #@29
    .line 149
    .local v17, "pc":I
    add-int/lit8 v23, v20, -0x1

    #@2b
    move/from16 v0, v17

    #@2d
    move/from16 v1, v23

    #@2f
    if-ne v0, v1, :cond_1

    #@31
    .line 150
    const/16 v23, 0x0

    #@33
    return-object v23

    #@34
    .line 153
    :cond_1
    const/16 v23, -0x1

    #@36
    move/from16 v0, v17

    #@38
    move/from16 v1, v23

    #@3a
    if-eq v0, v1, :cond_2

    #@3c
    .line 154
    move/from16 v20, v17

    #@3e
    .line 157
    :cond_2
    const/4 v4, -0x1

    #@3f
    .line 158
    .local v4, "colonp":I
    const/4 v8, 0x0

    #@40
    .local v8, "i":I
    const/4 v12, 0x0

    #@41
    .line 160
    .local v12, "j":I
    aget-char v23, v19, v8

    #@43
    const/16 v24, 0x3a

    #@45
    move/from16 v0, v23

    #@47
    move/from16 v1, v24

    #@49
    if-ne v0, v1, :cond_3

    #@4b
    .line 161
    const/4 v8, 0x1

    #@4c
    aget-char v23, v19, v8

    #@4e
    const/16 v24, 0x3a

    #@50
    move/from16 v0, v23

    #@52
    move/from16 v1, v24

    #@54
    if-eq v0, v1, :cond_3

    #@56
    .line 162
    const/16 v23, 0x0

    #@58
    return-object v23

    #@59
    .line 163
    :cond_3
    move v5, v8

    #@5a
    .line 164
    .local v5, "curtok":I
    const/16 v18, 0x0

    #@5c
    .line 165
    .local v18, "saw_xdigit":Z
    const/16 v22, 0x0

    #@5e
    .local v22, "val":I
    move v13, v12

    #@5f
    .end local v12    # "j":I
    .local v13, "j":I
    move v9, v8

    #@60
    .line 166
    .end local v8    # "i":I
    .local v9, "i":I
    :goto_0
    move/from16 v0, v20

    #@62
    if-ge v9, v0, :cond_17

    #@64
    .line 167
    add-int/lit8 v8, v9, 0x1

    #@66
    .end local v9    # "i":I
    .restart local v8    # "i":I
    aget-char v2, v19, v9

    #@68
    .line 168
    .local v2, "ch":C
    const/16 v23, 0x10

    #@6a
    move/from16 v0, v23

    #@6c
    invoke-static {v2, v0}, Ljava/lang/Character;->digit(CI)I

    #@6f
    move-result v3

    #@70
    .line 169
    .local v3, "chval":I
    const/16 v23, -0x1

    #@72
    move/from16 v0, v23

    #@74
    if-eq v3, v0, :cond_5

    #@76
    .line 170
    shl-int/lit8 v22, v22, 0x4

    #@78
    .line 171
    or-int v22, v22, v3

    #@7a
    .line 172
    const v23, 0xffff

    #@7d
    move/from16 v0, v22

    #@7f
    move/from16 v1, v23

    #@81
    if-le v0, v1, :cond_4

    #@83
    .line 173
    const/16 v23, 0x0

    #@85
    return-object v23

    #@86
    .line 174
    :cond_4
    const/16 v18, 0x1

    #@88
    move v9, v8

    #@89
    .line 175
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_0

    #@8a
    .line 177
    .end local v9    # "i":I
    .restart local v8    # "i":I
    :cond_5
    const/16 v23, 0x3a

    #@8c
    move/from16 v0, v23

    #@8e
    if-ne v2, v0, :cond_a

    #@90
    .line 178
    move v5, v8

    #@91
    .line 179
    if-nez v18, :cond_7

    #@93
    .line 180
    const/16 v23, -0x1

    #@95
    move/from16 v0, v23

    #@97
    if-eq v4, v0, :cond_6

    #@99
    .line 181
    const/16 v23, 0x0

    #@9b
    return-object v23

    #@9c
    .line 182
    :cond_6
    move v4, v13

    #@9d
    move v9, v8

    #@9e
    .line 183
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_0

    #@9f
    .line 184
    .end local v9    # "i":I
    .restart local v8    # "i":I
    :cond_7
    move/from16 v0, v20

    #@a1
    if-ne v8, v0, :cond_8

    #@a3
    .line 185
    const/16 v23, 0x0

    #@a5
    return-object v23

    #@a6
    .line 187
    :cond_8
    add-int/lit8 v23, v13, 0x2

    #@a8
    const/16 v24, 0x10

    #@aa
    move/from16 v0, v23

    #@ac
    move/from16 v1, v24

    #@ae
    if-le v0, v1, :cond_9

    #@b0
    .line 188
    const/16 v23, 0x0

    #@b2
    return-object v23

    #@b3
    .line 189
    :cond_9
    add-int/lit8 v12, v13, 0x1

    #@b5
    .end local v13    # "j":I
    .restart local v12    # "j":I
    shr-int/lit8 v23, v22, 0x8

    #@b7
    move/from16 v0, v23

    #@b9
    and-int/lit16 v0, v0, 0xff

    #@bb
    move/from16 v23, v0

    #@bd
    move/from16 v0, v23

    #@bf
    int-to-byte v0, v0

    #@c0
    move/from16 v23, v0

    #@c2
    aput-byte v23, v7, v13

    #@c4
    .line 190
    add-int/lit8 v13, v12, 0x1

    #@c6
    .end local v12    # "j":I
    .restart local v13    # "j":I
    move/from16 v0, v22

    #@c8
    and-int/lit16 v0, v0, 0xff

    #@ca
    move/from16 v23, v0

    #@cc
    move/from16 v0, v23

    #@ce
    int-to-byte v0, v0

    #@cf
    move/from16 v23, v0

    #@d1
    aput-byte v23, v7, v12

    #@d3
    .line 191
    const/16 v18, 0x0

    #@d5
    .line 192
    const/16 v22, 0x0

    #@d7
    move v9, v8

    #@d8
    .line 193
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_0

    #@d9
    .line 195
    .end local v9    # "i":I
    .restart local v8    # "i":I
    :cond_a
    const/16 v23, 0x2e

    #@db
    move/from16 v0, v23

    #@dd
    if-ne v2, v0, :cond_f

    #@df
    add-int/lit8 v23, v13, 0x4

    #@e1
    const/16 v24, 0x10

    #@e3
    move/from16 v0, v23

    #@e5
    move/from16 v1, v24

    #@e7
    if-gt v0, v1, :cond_f

    #@e9
    .line 196
    move-object/from16 v0, p0

    #@eb
    move/from16 v1, v20

    #@ed
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@f0
    move-result-object v10

    #@f1
    .line 198
    .local v10, "ia4":Ljava/lang/String;
    const/4 v6, 0x0

    #@f2
    .local v6, "dot_count":I
    const/4 v11, 0x0

    #@f3
    .line 199
    .local v11, "index":I
    :goto_1
    const/16 v23, 0x2e

    #@f5
    move/from16 v0, v23

    #@f7
    invoke-virtual {v10, v0, v11}, Ljava/lang/String;->indexOf(II)I

    #@fa
    move-result v11

    #@fb
    const/16 v23, -0x1

    #@fd
    move/from16 v0, v23

    #@ff
    if-eq v11, v0, :cond_b

    #@101
    .line 200
    add-int/lit8 v6, v6, 0x1

    #@103
    .line 201
    add-int/lit8 v11, v11, 0x1

    #@105
    goto :goto_1

    #@106
    .line 203
    :cond_b
    const/16 v23, 0x3

    #@108
    move/from16 v0, v23

    #@10a
    if-eq v6, v0, :cond_c

    #@10c
    .line 204
    const/16 v23, 0x0

    #@10e
    return-object v23

    #@10f
    .line 206
    :cond_c
    invoke-static {v10}, Lsun/net/util/IPAddressUtil;->textToNumericFormatV4(Ljava/lang/String;)[B

    #@112
    move-result-object v21

    #@113
    .line 207
    .local v21, "v4addr":[B
    if-nez v21, :cond_d

    #@115
    .line 208
    const/16 v23, 0x0

    #@117
    return-object v23

    #@118
    .line 210
    :cond_d
    const/4 v14, 0x0

    #@119
    .local v14, "k":I
    :goto_2
    const/16 v23, 0x4

    #@11b
    move/from16 v0, v23

    #@11d
    if-ge v14, v0, :cond_e

    #@11f
    .line 211
    add-int/lit8 v12, v13, 0x1

    #@121
    .end local v13    # "j":I
    .restart local v12    # "j":I
    aget-byte v23, v21, v14

    #@123
    aput-byte v23, v7, v13

    #@125
    .line 210
    add-int/lit8 v14, v14, 0x1

    #@127
    move v13, v12

    #@128
    .end local v12    # "j":I
    .restart local v13    # "j":I
    goto :goto_2

    #@129
    .line 213
    :cond_e
    const/16 v18, 0x0

    #@12b
    .line 218
    .end local v2    # "ch":C
    .end local v3    # "chval":I
    .end local v6    # "dot_count":I
    .end local v10    # "ia4":Ljava/lang/String;
    .end local v11    # "index":I
    .end local v14    # "k":I
    .end local v21    # "v4addr":[B
    :goto_3
    if-eqz v18, :cond_16

    #@12d
    .line 219
    add-int/lit8 v23, v13, 0x2

    #@12f
    const/16 v24, 0x10

    #@131
    move/from16 v0, v23

    #@133
    move/from16 v1, v24

    #@135
    if-le v0, v1, :cond_10

    #@137
    .line 220
    const/16 v23, 0x0

    #@139
    return-object v23

    #@13a
    .line 216
    .restart local v2    # "ch":C
    .restart local v3    # "chval":I
    :cond_f
    const/16 v23, 0x0

    #@13c
    return-object v23

    #@13d
    .line 221
    .end local v2    # "ch":C
    .end local v3    # "chval":I
    :cond_10
    add-int/lit8 v12, v13, 0x1

    #@13f
    .end local v13    # "j":I
    .restart local v12    # "j":I
    shr-int/lit8 v23, v22, 0x8

    #@141
    move/from16 v0, v23

    #@143
    and-int/lit16 v0, v0, 0xff

    #@145
    move/from16 v23, v0

    #@147
    move/from16 v0, v23

    #@149
    int-to-byte v0, v0

    #@14a
    move/from16 v23, v0

    #@14c
    aput-byte v23, v7, v13

    #@14e
    .line 222
    add-int/lit8 v13, v12, 0x1

    #@150
    .end local v12    # "j":I
    .restart local v13    # "j":I
    move/from16 v0, v22

    #@152
    and-int/lit16 v0, v0, 0xff

    #@154
    move/from16 v23, v0

    #@156
    move/from16 v0, v23

    #@158
    int-to-byte v0, v0

    #@159
    move/from16 v23, v0

    #@15b
    aput-byte v23, v7, v12

    #@15d
    move v12, v13

    #@15e
    .line 225
    .end local v13    # "j":I
    .restart local v12    # "j":I
    :goto_4
    const/16 v23, -0x1

    #@160
    move/from16 v0, v23

    #@162
    if-eq v4, v0, :cond_13

    #@164
    .line 226
    sub-int v15, v12, v4

    #@166
    .line 228
    .local v15, "n":I
    const/16 v23, 0x10

    #@168
    move/from16 v0, v23

    #@16a
    if-ne v12, v0, :cond_11

    #@16c
    .line 229
    const/16 v23, 0x0

    #@16e
    return-object v23

    #@16f
    .line 230
    :cond_11
    const/4 v8, 0x1

    #@170
    :goto_5
    if-gt v8, v15, :cond_12

    #@172
    .line 231
    rsub-int/lit8 v23, v8, 0x10

    #@174
    add-int v24, v4, v15

    #@176
    sub-int v24, v24, v8

    #@178
    aget-byte v24, v7, v24

    #@17a
    aput-byte v24, v7, v23

    #@17c
    .line 232
    add-int v23, v4, v15

    #@17e
    sub-int v23, v23, v8

    #@180
    const/16 v24, 0x0

    #@182
    aput-byte v24, v7, v23

    #@184
    .line 230
    add-int/lit8 v8, v8, 0x1

    #@186
    goto :goto_5

    #@187
    .line 234
    :cond_12
    const/16 v12, 0x10

    #@189
    .line 236
    .end local v15    # "n":I
    :cond_13
    const/16 v23, 0x10

    #@18b
    move/from16 v0, v23

    #@18d
    if-eq v12, v0, :cond_14

    #@18f
    .line 237
    const/16 v23, 0x0

    #@191
    return-object v23

    #@192
    .line 238
    :cond_14
    invoke-static {v7}, Lsun/net/util/IPAddressUtil;->convertFromIPv4MappedAddress([B)[B

    #@195
    move-result-object v16

    #@196
    .line 239
    .local v16, "newdst":[B
    if-eqz v16, :cond_15

    #@198
    .line 240
    return-object v16

    #@199
    .line 242
    :cond_15
    return-object v7

    #@19a
    .end local v12    # "j":I
    .end local v16    # "newdst":[B
    .restart local v13    # "j":I
    :cond_16
    move v12, v13

    #@19b
    .end local v13    # "j":I
    .restart local v12    # "j":I
    goto :goto_4

    #@19c
    .end local v8    # "i":I
    .end local v12    # "j":I
    .restart local v9    # "i":I
    .restart local v13    # "j":I
    :cond_17
    move v8, v9

    #@19d
    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto :goto_3
.end method
