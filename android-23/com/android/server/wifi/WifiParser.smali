.class public Lcom/android/server/wifi/WifiParser;
.super Ljava/lang/Object;
.source "WifiParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiParser$IE;
    }
.end annotation


# static fields
.field private static final IEEE_RSN_IE:I = 0x30

.field private static final VENDOR_SPECIFIC_IE:I = 0xdd

.field private static final WPA_IE_VENDOR_TYPE:I = 0x50f201


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

.method public static parse_akm([Lcom/android/server/wifi/WifiParser$IE;Ljava/util/BitSet;)Ljava/lang/String;
    .locals 18
    .param p0, "full_IE"    # [Lcom/android/server/wifi/WifiParser$IE;
    .param p1, "ieee_cap"    # Ljava/util/BitSet;

    #@0
    .prologue
    .line 68
    const/4 v9, 0x0

    #@1
    .line 69
    .local v9, "privacy":Z
    const/4 v4, 0x0

    #@2
    .line 70
    .local v4, "error":Z
    if-nez p1, :cond_0

    #@4
    .line 71
    const/4 v14, 0x0

    #@5
    return-object v14

    #@6
    .line 73
    :cond_0
    if-nez p0, :cond_1

    #@8
    .line 74
    const/4 v14, 0x0

    #@9
    return-object v14

    #@a
    .line 76
    :cond_1
    const/4 v14, 0x4

    #@b
    move-object/from16 v0, p1

    #@d
    invoke-virtual {v0, v14}, Ljava/util/BitSet;->get(I)Z

    #@10
    move-result v9

    #@11
    .line 78
    .local v9, "privacy":Z
    const-string/jumbo v3, ""

    #@14
    .line 79
    .local v3, "capabilities":Ljava/lang/String;
    const/4 v10, 0x0

    #@15
    .line 82
    .local v10, "rsne_found":Z
    const/4 v14, 0x0

    #@16
    move-object/from16 v0, p0

    #@18
    array-length v0, v0

    #@19
    move/from16 v16, v0

    #@1b
    move v15, v14

    #@1c
    :goto_0
    move/from16 v0, v16

    #@1e
    if-ge v15, v0, :cond_2

    #@20
    aget-object v7, p0, v15

    #@22
    .line 83
    .local v7, "ie":Lcom/android/server/wifi/WifiParser$IE;
    const-string/jumbo v11, ""

    #@25
    .line 84
    .local v11, "security":Ljava/lang/String;
    iget v14, v7, Lcom/android/server/wifi/WifiParser$IE;->id:I

    #@27
    const/16 v17, 0x30

    #@29
    move/from16 v0, v17

    #@2b
    if-ne v14, v0, :cond_13

    #@2d
    .line 85
    const/4 v10, 0x1

    #@2e
    .line 88
    iget-object v14, v7, Lcom/android/server/wifi/WifiParser$IE;->data:[B

    #@30
    invoke-static {v14}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@33
    move-result-object v2

    #@34
    .line 90
    .local v2, "buf":Ljava/nio/ByteBuffer;
    iget-object v14, v7, Lcom/android/server/wifi/WifiParser$IE;->data:[B

    #@36
    array-length v12, v14

    #@37
    .line 91
    .local v12, "total_len":I
    const/4 v8, 0x2

    #@38
    .line 94
    .local v8, "offset":I
    add-int/lit8 v14, v12, -0x2

    #@3a
    const/16 v17, 0x2

    #@3c
    move/from16 v0, v17

    #@3e
    if-ge v14, v0, :cond_4

    #@40
    .line 96
    const-string/jumbo v11, ""

    #@43
    .line 97
    const/4 v4, 0x1

    #@44
    .line 286
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v7    # "ie":Lcom/android/server/wifi/WifiParser$IE;
    .end local v8    # "offset":I
    .end local v11    # "security":Ljava/lang/String;
    .end local v12    # "total_len":I
    :cond_2
    :goto_1
    if-nez v10, :cond_3

    #@46
    if-eqz v9, :cond_3

    #@48
    .line 288
    new-instance v14, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v14

    #@51
    const-string/jumbo v15, "[WEP]"

    #@54
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v14

    #@58
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v3

    #@5c
    .line 291
    :cond_3
    if-eqz v4, :cond_22

    #@5e
    .line 292
    const/4 v14, 0x0

    #@5f
    return-object v14

    #@60
    .line 100
    .restart local v2    # "buf":Ljava/nio/ByteBuffer;
    .restart local v7    # "ie":Lcom/android/server/wifi/WifiParser$IE;
    .restart local v8    # "offset":I
    .restart local v11    # "security":Ljava/lang/String;
    .restart local v12    # "total_len":I
    :cond_4
    const/4 v13, 0x0

    #@61
    .line 101
    .local v13, "val":I
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@64
    move-result v14

    #@65
    const/16 v17, 0x100

    #@67
    move/from16 v0, v17

    #@69
    if-eq v0, v14, :cond_5

    #@6b
    .line 103
    const-string/jumbo v11, ""

    #@6e
    .line 104
    const/4 v4, 0x1

    #@6f
    .line 105
    goto :goto_1

    #@70
    .line 107
    :cond_5
    const/4 v8, 0x4

    #@71
    .line 111
    add-int/lit8 v14, v12, -0x4

    #@73
    const/16 v17, 0x4

    #@75
    move/from16 v0, v17

    #@77
    if-ge v14, v0, :cond_6

    #@79
    .line 112
    const-string/jumbo v11, ""

    #@7c
    .line 113
    const/4 v4, 0x1

    #@7d
    .line 114
    goto :goto_1

    #@7e
    .line 116
    :cond_6
    add-int/lit8 v8, v8, 0x4

    #@80
    .line 118
    const-string/jumbo v11, "[WPA2"

    #@83
    .line 121
    add-int/lit8 v14, v12, -0x8

    #@85
    const/16 v17, 0x2

    #@87
    move/from16 v0, v17

    #@89
    if-ge v14, v0, :cond_7

    #@8b
    .line 122
    const-string/jumbo v11, ""

    #@8e
    .line 123
    const/4 v4, 0x1

    #@8f
    .line 124
    goto :goto_1

    #@90
    .line 126
    :cond_7
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@93
    move-result v13

    #@94
    .line 127
    add-int/lit8 v14, v12, -0x8

    #@96
    mul-int/lit8 v17, v13, 0x4

    #@98
    add-int/lit8 v17, v17, 0x2

    #@9a
    move/from16 v0, v17

    #@9c
    if-ge v14, v0, :cond_8

    #@9e
    .line 128
    const-string/jumbo v11, ""

    #@a1
    .line 129
    const/4 v4, 0x1

    #@a2
    .line 130
    goto :goto_1

    #@a3
    .line 132
    :cond_8
    mul-int/lit8 v14, v13, 0x4

    #@a5
    add-int/lit8 v14, v14, 0x2

    #@a7
    add-int/lit8 v8, v14, 0x8

    #@a9
    .line 135
    sub-int v14, v12, v8

    #@ab
    const/16 v17, 0x2

    #@ad
    move/from16 v0, v17

    #@af
    if-ge v14, v0, :cond_9

    #@b1
    .line 136
    const-string/jumbo v11, ""

    #@b4
    .line 137
    const/4 v4, 0x1

    #@b5
    .line 138
    goto :goto_1

    #@b6
    .line 140
    :cond_9
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@b9
    move-result v13

    #@ba
    .line 141
    sub-int v14, v12, v8

    #@bc
    mul-int/lit8 v17, v13, 0x4

    #@be
    add-int/lit8 v17, v17, 0x2

    #@c0
    move/from16 v0, v17

    #@c2
    if-ge v14, v0, :cond_a

    #@c4
    .line 142
    const-string/jumbo v11, ""

    #@c7
    .line 143
    const/4 v4, 0x1

    #@c8
    .line 144
    goto/16 :goto_1

    #@ca
    .line 146
    :cond_a
    add-int/lit8 v8, v8, 0x2

    #@cc
    .line 147
    if-nez v13, :cond_b

    #@ce
    .line 148
    new-instance v14, Ljava/lang/StringBuilder;

    #@d0
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@d3
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v14

    #@d7
    const-string/jumbo v17, "-EAP"

    #@da
    move-object/from16 v0, v17

    #@dc
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v14

    #@e0
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e3
    move-result-object v11

    #@e4
    .line 150
    :cond_b
    const/4 v6, 0x0

    #@e5
    .local v6, "i":I
    :goto_2
    if-ge v6, v13, :cond_12

    #@e7
    .line 151
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@ea
    move-result v1

    #@eb
    .line 152
    .local v1, "akm":I
    const/4 v5, 0x0

    #@ec
    .line 153
    .local v5, "found":Z
    sparse-switch v1, :sswitch_data_0

    #@ef
    .line 179
    :goto_3
    add-int/lit8 v8, v8, 0x4

    #@f1
    .line 150
    add-int/lit8 v6, v6, 0x1

    #@f3
    goto :goto_2

    #@f4
    .line 155
    :sswitch_0
    new-instance v14, Ljava/lang/StringBuilder;

    #@f6
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@f9
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v17

    #@fd
    if-eqz v5, :cond_c

    #@ff
    const-string/jumbo v14, "+"

    #@102
    :goto_4
    move-object/from16 v0, v17

    #@104
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v14

    #@108
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10b
    move-result-object v11

    #@10c
    .line 156
    const/4 v5, 0x1

    #@10d
    .line 157
    goto :goto_3

    #@10e
    .line 155
    :cond_c
    const-string/jumbo v14, "-EAP"

    #@111
    goto :goto_4

    #@112
    .line 159
    :sswitch_1
    new-instance v14, Ljava/lang/StringBuilder;

    #@114
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@117
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v17

    #@11b
    if-eqz v5, :cond_d

    #@11d
    const-string/jumbo v14, "+"

    #@120
    :goto_5
    move-object/from16 v0, v17

    #@122
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v14

    #@126
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@129
    move-result-object v11

    #@12a
    .line 160
    const/4 v5, 0x1

    #@12b
    .line 161
    goto :goto_3

    #@12c
    .line 159
    :cond_d
    const-string/jumbo v14, "-PSK"

    #@12f
    goto :goto_5

    #@130
    .line 163
    :sswitch_2
    new-instance v14, Ljava/lang/StringBuilder;

    #@132
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@135
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v17

    #@139
    if-eqz v5, :cond_e

    #@13b
    const-string/jumbo v14, "+"

    #@13e
    :goto_6
    move-object/from16 v0, v17

    #@140
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v14

    #@144
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@147
    move-result-object v11

    #@148
    .line 164
    const/4 v5, 0x1

    #@149
    .line 165
    goto :goto_3

    #@14a
    .line 163
    :cond_e
    const-string/jumbo v14, "-FT/EAP"

    #@14d
    goto :goto_6

    #@14e
    .line 167
    :sswitch_3
    new-instance v14, Ljava/lang/StringBuilder;

    #@150
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@153
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@156
    move-result-object v17

    #@157
    if-eqz v5, :cond_f

    #@159
    const-string/jumbo v14, "+"

    #@15c
    :goto_7
    move-object/from16 v0, v17

    #@15e
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@161
    move-result-object v14

    #@162
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@165
    move-result-object v11

    #@166
    .line 168
    const/4 v5, 0x1

    #@167
    .line 169
    goto :goto_3

    #@168
    .line 167
    :cond_f
    const-string/jumbo v14, "-FT/PSK"

    #@16b
    goto :goto_7

    #@16c
    .line 171
    :sswitch_4
    new-instance v14, Ljava/lang/StringBuilder;

    #@16e
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@171
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@174
    move-result-object v17

    #@175
    if-eqz v5, :cond_10

    #@177
    const-string/jumbo v14, "+"

    #@17a
    :goto_8
    move-object/from16 v0, v17

    #@17c
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17f
    move-result-object v14

    #@180
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@183
    move-result-object v11

    #@184
    .line 172
    const/4 v5, 0x1

    #@185
    .line 173
    goto/16 :goto_3

    #@187
    .line 171
    :cond_10
    const-string/jumbo v14, "-PSK-SHA256"

    #@18a
    goto :goto_8

    #@18b
    .line 175
    :sswitch_5
    new-instance v14, Ljava/lang/StringBuilder;

    #@18d
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@190
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@193
    move-result-object v17

    #@194
    if-eqz v5, :cond_11

    #@196
    const-string/jumbo v14, "+"

    #@199
    :goto_9
    move-object/from16 v0, v17

    #@19b
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19e
    move-result-object v14

    #@19f
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a2
    move-result-object v11

    #@1a3
    .line 176
    const/4 v5, 0x1

    #@1a4
    .line 177
    goto/16 :goto_3

    #@1a6
    .line 175
    :cond_11
    const-string/jumbo v14, "-EAP-SHA256"

    #@1a9
    goto :goto_9

    #@1aa
    .line 182
    .end local v1    # "akm":I
    .end local v5    # "found":Z
    :cond_12
    new-instance v14, Ljava/lang/StringBuilder;

    #@1ac
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@1af
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b2
    move-result-object v14

    #@1b3
    const-string/jumbo v17, "]"

    #@1b6
    move-object/from16 v0, v17

    #@1b8
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bb
    move-result-object v14

    #@1bc
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1bf
    move-result-object v11

    #@1c0
    .line 183
    new-instance v14, Ljava/lang/StringBuilder;

    #@1c2
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@1c5
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c8
    move-result-object v14

    #@1c9
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cc
    move-result-object v14

    #@1cd
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d0
    move-result-object v3

    #@1d1
    .line 187
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v6    # "i":I
    .end local v8    # "offset":I
    .end local v12    # "total_len":I
    .end local v13    # "val":I
    :cond_13
    iget v14, v7, Lcom/android/server/wifi/WifiParser$IE;->id:I

    #@1d3
    const/16 v17, 0xdd

    #@1d5
    move/from16 v0, v17

    #@1d7
    if-ne v14, v0, :cond_15

    #@1d9
    .line 188
    iget-object v14, v7, Lcom/android/server/wifi/WifiParser$IE;->data:[B

    #@1db
    array-length v12, v14

    #@1dc
    .line 189
    .restart local v12    # "total_len":I
    const/4 v8, 0x2

    #@1dd
    .line 192
    .restart local v8    # "offset":I
    add-int/lit8 v14, v12, -0x2

    #@1df
    const/16 v17, 0x4

    #@1e1
    move/from16 v0, v17

    #@1e3
    if-ge v14, v0, :cond_14

    #@1e5
    .line 194
    const-string/jumbo v11, ""

    #@1e8
    .line 195
    const/4 v4, 0x1

    #@1e9
    .line 196
    goto/16 :goto_1

    #@1eb
    .line 199
    :cond_14
    iget-object v14, v7, Lcom/android/server/wifi/WifiParser$IE;->data:[B

    #@1ed
    invoke-static {v14}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@1f0
    move-result-object v2

    #@1f1
    .line 201
    .restart local v2    # "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@1f4
    move-result v14

    #@1f5
    const v17, 0x1f25000

    #@1f8
    move/from16 v0, v17

    #@1fa
    if-eq v14, v0, :cond_16

    #@1fc
    .line 203
    const-string/jumbo v11, ""

    #@1ff
    .line 82
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v8    # "offset":I
    .end local v12    # "total_len":I
    :cond_15
    :goto_a
    add-int/lit8 v14, v15, 0x1

    #@201
    move v15, v14

    #@202
    goto/16 :goto_0

    #@204
    .line 207
    .restart local v2    # "buf":Ljava/nio/ByteBuffer;
    .restart local v8    # "offset":I
    .restart local v12    # "total_len":I
    :cond_16
    const-string/jumbo v11, "[WPA"

    #@207
    .line 210
    add-int/lit8 v14, v12, -0x2

    #@209
    const/16 v17, 0x2

    #@20b
    move/from16 v0, v17

    #@20d
    if-ge v14, v0, :cond_17

    #@20f
    .line 212
    const-string/jumbo v11, ""

    #@212
    .line 213
    const/4 v4, 0x1

    #@213
    .line 214
    goto/16 :goto_1

    #@215
    .line 216
    :cond_17
    const/4 v13, 0x0

    #@216
    .line 217
    .restart local v13    # "val":I
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@219
    move-result v14

    #@21a
    const/16 v17, 0x100

    #@21c
    move/from16 v0, v17

    #@21e
    if-eq v0, v14, :cond_18

    #@220
    .line 219
    const-string/jumbo v11, ""

    #@223
    .line 220
    const/4 v4, 0x1

    #@224
    .line 221
    goto/16 :goto_1

    #@226
    .line 223
    :cond_18
    const/4 v8, 0x4

    #@227
    .line 227
    add-int/lit8 v14, v12, -0x4

    #@229
    const/16 v17, 0x4

    #@22b
    move/from16 v0, v17

    #@22d
    if-ge v14, v0, :cond_19

    #@22f
    .line 228
    const-string/jumbo v11, ""

    #@232
    .line 229
    const/4 v4, 0x1

    #@233
    .line 230
    goto/16 :goto_1

    #@235
    .line 232
    :cond_19
    add-int/lit8 v8, v8, 0x4

    #@237
    .line 236
    add-int/lit8 v14, v12, -0x8

    #@239
    const/16 v17, 0x2

    #@23b
    move/from16 v0, v17

    #@23d
    if-ge v14, v0, :cond_1a

    #@23f
    .line 237
    const-string/jumbo v11, ""

    #@242
    .line 238
    const/4 v4, 0x1

    #@243
    .line 239
    goto/16 :goto_1

    #@245
    .line 241
    :cond_1a
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@248
    move-result v13

    #@249
    .line 242
    add-int/lit8 v14, v12, -0x8

    #@24b
    mul-int/lit8 v17, v13, 0x4

    #@24d
    add-int/lit8 v17, v17, 0x2

    #@24f
    move/from16 v0, v17

    #@251
    if-ge v14, v0, :cond_1b

    #@253
    .line 243
    const-string/jumbo v11, ""

    #@256
    .line 244
    const/4 v4, 0x1

    #@257
    .line 245
    goto/16 :goto_1

    #@259
    .line 247
    :cond_1b
    mul-int/lit8 v14, v13, 0x4

    #@25b
    add-int/lit8 v14, v14, 0x2

    #@25d
    add-int/lit8 v8, v14, 0x8

    #@25f
    .line 250
    sub-int v14, v12, v8

    #@261
    const/16 v17, 0x2

    #@263
    move/from16 v0, v17

    #@265
    if-ge v14, v0, :cond_1c

    #@267
    .line 251
    const-string/jumbo v11, ""

    #@26a
    .line 252
    const/4 v4, 0x1

    #@26b
    .line 253
    goto/16 :goto_1

    #@26d
    .line 255
    :cond_1c
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@270
    move-result v13

    #@271
    .line 256
    sub-int v14, v12, v8

    #@273
    mul-int/lit8 v17, v13, 0x4

    #@275
    add-int/lit8 v17, v17, 0x2

    #@277
    move/from16 v0, v17

    #@279
    if-ge v14, v0, :cond_1d

    #@27b
    .line 257
    const-string/jumbo v11, ""

    #@27e
    .line 258
    const/4 v4, 0x1

    #@27f
    .line 259
    goto/16 :goto_1

    #@281
    .line 261
    :cond_1d
    add-int/lit8 v8, v8, 0x2

    #@283
    .line 262
    if-nez v13, :cond_1e

    #@285
    .line 263
    new-instance v14, Ljava/lang/StringBuilder;

    #@287
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@28a
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28d
    move-result-object v14

    #@28e
    const-string/jumbo v17, "-EAP"

    #@291
    move-object/from16 v0, v17

    #@293
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@296
    move-result-object v14

    #@297
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29a
    move-result-object v11

    #@29b
    .line 265
    :cond_1e
    const/4 v6, 0x0

    #@29c
    .restart local v6    # "i":I
    :goto_b
    if-ge v6, v13, :cond_21

    #@29e
    .line 266
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@2a1
    move-result v1

    #@2a2
    .line 267
    .restart local v1    # "akm":I
    const/4 v5, 0x0

    #@2a3
    .line 268
    .restart local v5    # "found":Z
    sparse-switch v1, :sswitch_data_1

    #@2a6
    .line 279
    :goto_c
    add-int/lit8 v8, v8, 0x4

    #@2a8
    .line 265
    add-int/lit8 v6, v6, 0x1

    #@2aa
    goto :goto_b

    #@2ab
    .line 270
    :sswitch_6
    new-instance v14, Ljava/lang/StringBuilder;

    #@2ad
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@2b0
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b3
    move-result-object v17

    #@2b4
    if-eqz v5, :cond_1f

    #@2b6
    const-string/jumbo v14, "+"

    #@2b9
    :goto_d
    move-object/from16 v0, v17

    #@2bb
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2be
    move-result-object v14

    #@2bf
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c2
    move-result-object v11

    #@2c3
    .line 271
    const/4 v5, 0x1

    #@2c4
    .line 272
    goto :goto_c

    #@2c5
    .line 270
    :cond_1f
    const-string/jumbo v14, "-EAP"

    #@2c8
    goto :goto_d

    #@2c9
    .line 274
    :sswitch_7
    new-instance v14, Ljava/lang/StringBuilder;

    #@2cb
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@2ce
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d1
    move-result-object v17

    #@2d2
    if-eqz v5, :cond_20

    #@2d4
    const-string/jumbo v14, "+"

    #@2d7
    :goto_e
    move-object/from16 v0, v17

    #@2d9
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2dc
    move-result-object v14

    #@2dd
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e0
    move-result-object v11

    #@2e1
    .line 275
    const/4 v5, 0x1

    #@2e2
    .line 276
    goto :goto_c

    #@2e3
    .line 274
    :cond_20
    const-string/jumbo v14, "-PSK"

    #@2e6
    goto :goto_e

    #@2e7
    .line 282
    .end local v1    # "akm":I
    .end local v5    # "found":Z
    :cond_21
    new-instance v14, Ljava/lang/StringBuilder;

    #@2e9
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@2ec
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ef
    move-result-object v14

    #@2f0
    const-string/jumbo v17, "]"

    #@2f3
    move-object/from16 v0, v17

    #@2f5
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f8
    move-result-object v14

    #@2f9
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2fc
    move-result-object v11

    #@2fd
    goto/16 :goto_a

    #@2ff
    .line 294
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v6    # "i":I
    .end local v7    # "ie":Lcom/android/server/wifi/WifiParser$IE;
    .end local v8    # "offset":I
    .end local v11    # "security":Ljava/lang/String;
    .end local v12    # "total_len":I
    .end local v13    # "val":I
    :cond_22
    return-object v3

    #@300
    .line 153
    :sswitch_data_0
    .sparse-switch
        0x1ac0f00 -> :sswitch_0
        0x2ac0f00 -> :sswitch_1
        0x3ac0f00 -> :sswitch_2
        0x4ac0f00 -> :sswitch_3
        0x5ac0f00 -> :sswitch_5
        0x6ac0f00 -> :sswitch_4
    .end sparse-switch

    #@31a
    .line 268
    :sswitch_data_1
    .sparse-switch
        0x1f25000 -> :sswitch_6
        0x2f25000 -> :sswitch_7
    .end sparse-switch
.end method
