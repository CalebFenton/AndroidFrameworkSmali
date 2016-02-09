.class final Ljava/lang/StringToReal;
.super Ljava/lang/Object;
.source "StringToReal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/StringToReal$StringExponentPair;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static initialParse(Ljava/lang/String;IZ)Ljava/lang/StringToReal$StringExponentPair;
    .locals 24
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "length"    # I
    .param p2, "isDouble"    # Z

    #@0
    .prologue
    .line 74
    new-instance v18, Ljava/lang/StringToReal$StringExponentPair;

    #@2
    const/16 v20, 0x0

    #@4
    move-object/from16 v0, v18

    #@6
    move-object/from16 v1, v20

    #@8
    invoke-direct {v0, v1}, Ljava/lang/StringToReal$StringExponentPair;-><init>(Ljava/lang/StringToReal$StringExponentPair;)V

    #@b
    .line 75
    .local v18, "result":Ljava/lang/StringToReal$StringExponentPair;
    if-nez p1, :cond_0

    #@d
    .line 76
    move-object/from16 v0, p0

    #@f
    move/from16 v1, p2

    #@11
    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    #@14
    move-result-object v20

    #@15
    throw v20

    #@16
    .line 78
    :cond_0
    const/16 v20, 0x0

    #@18
    move-object/from16 v0, p0

    #@1a
    move/from16 v1, v20

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@1f
    move-result v20

    #@20
    const/16 v21, 0x2d

    #@22
    move/from16 v0, v20

    #@24
    move/from16 v1, v21

    #@26
    if-ne v0, v1, :cond_2

    #@28
    const/16 v20, 0x1

    #@2a
    :goto_0
    move/from16 v0, v20

    #@2c
    move-object/from16 v1, v18

    #@2e
    iput-boolean v0, v1, Ljava/lang/StringToReal$StringExponentPair;->negative:Z

    #@30
    .line 82
    add-int/lit8 v20, p1, -0x1

    #@32
    move-object/from16 v0, p0

    #@34
    move/from16 v1, v20

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@39
    move-result v6

    #@3a
    .line 83
    .local v6, "c":C
    const/16 v20, 0x44

    #@3c
    move/from16 v0, v20

    #@3e
    if-eq v6, v0, :cond_1

    #@40
    const/16 v20, 0x64

    #@42
    move/from16 v0, v20

    #@44
    if-ne v6, v0, :cond_3

    #@46
    .line 84
    :cond_1
    add-int/lit8 p1, p1, -0x1

    #@48
    .line 85
    if-nez p1, :cond_4

    #@4a
    .line 86
    move-object/from16 v0, p0

    #@4c
    move/from16 v1, p2

    #@4e
    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    #@51
    move-result-object v20

    #@52
    throw v20

    #@53
    .line 78
    .end local v6    # "c":C
    :cond_2
    const/16 v20, 0x0

    #@55
    goto :goto_0

    #@56
    .line 83
    .restart local v6    # "c":C
    :cond_3
    const/16 v20, 0x46

    #@58
    move/from16 v0, v20

    #@5a
    if-eq v6, v0, :cond_1

    #@5c
    const/16 v20, 0x66

    #@5e
    move/from16 v0, v20

    #@60
    if-eq v6, v0, :cond_1

    #@62
    .line 90
    :cond_4
    const/16 v20, 0x45

    #@64
    move-object/from16 v0, p0

    #@66
    move/from16 v1, v20

    #@68
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    #@6b
    move-result v20

    #@6c
    const/16 v21, 0x65

    #@6e
    move-object/from16 v0, p0

    #@70
    move/from16 v1, v21

    #@72
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    #@75
    move-result v21

    #@76
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    #@79
    move-result v10

    #@7a
    .line 91
    .local v10, "end":I
    const/16 v20, -0x1

    #@7c
    move/from16 v0, v20

    #@7e
    if-eq v10, v0, :cond_10

    #@80
    .line 93
    add-int/lit8 v20, v10, 0x1

    #@82
    move/from16 v0, v20

    #@84
    move/from16 v1, p1

    #@86
    if-ne v0, v1, :cond_5

    #@88
    .line 94
    move-object/from16 v0, p0

    #@8a
    move/from16 v1, p2

    #@8c
    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    #@8f
    move-result-object v20

    #@90
    throw v20

    #@91
    .line 98
    :cond_5
    add-int/lit8 v12, v10, 0x1

    #@93
    .line 99
    .local v12, "exponentOffset":I
    const/16 v17, 0x0

    #@95
    .line 100
    .local v17, "negativeExponent":Z
    move-object/from16 v0, p0

    #@97
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    #@9a
    move-result v14

    #@9b
    .line 101
    .local v14, "firstExponentChar":C
    const/16 v20, 0x2b

    #@9d
    move/from16 v0, v20

    #@9f
    if-eq v14, v0, :cond_6

    #@a1
    const/16 v20, 0x2d

    #@a3
    move/from16 v0, v20

    #@a5
    if-ne v14, v0, :cond_7

    #@a7
    .line 102
    :cond_6
    const/16 v20, 0x2d

    #@a9
    move/from16 v0, v20

    #@ab
    if-ne v14, v0, :cond_8

    #@ad
    const/16 v17, 0x1

    #@af
    .line 103
    :goto_1
    add-int/lit8 v12, v12, 0x1

    #@b1
    .line 107
    :cond_7
    move-object/from16 v0, p0

    #@b3
    move/from16 v1, p1

    #@b5
    invoke-virtual {v0, v12, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@b8
    move-result-object v13

    #@b9
    .line 108
    .local v13, "exponentString":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    #@bc
    move-result v20

    #@bd
    if-eqz v20, :cond_9

    #@bf
    .line 109
    move-object/from16 v0, p0

    #@c1
    move/from16 v1, p2

    #@c3
    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    #@c6
    move-result-object v20

    #@c7
    throw v20

    #@c8
    .line 102
    .end local v13    # "exponentString":Ljava/lang/String;
    :cond_8
    const/16 v17, 0x0

    #@ca
    goto :goto_1

    #@cb
    .line 111
    .restart local v13    # "exponentString":Ljava/lang/String;
    :cond_9
    const/4 v15, 0x0

    #@cc
    .local v15, "i":I
    :goto_2
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    #@cf
    move-result v20

    #@d0
    move/from16 v0, v20

    #@d2
    if-ge v15, v0, :cond_c

    #@d4
    .line 112
    invoke-virtual {v13, v15}, Ljava/lang/String;->charAt(I)C

    #@d7
    move-result v7

    #@d8
    .line 113
    .local v7, "ch":C
    const/16 v20, 0x30

    #@da
    move/from16 v0, v20

    #@dc
    if-lt v7, v0, :cond_a

    #@de
    const/16 v20, 0x39

    #@e0
    move/from16 v0, v20

    #@e2
    if-le v7, v0, :cond_b

    #@e4
    .line 114
    :cond_a
    move-object/from16 v0, p0

    #@e6
    move/from16 v1, p2

    #@e8
    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    #@eb
    move-result-object v20

    #@ec
    throw v20

    #@ed
    .line 111
    :cond_b
    add-int/lit8 v15, v15, 0x1

    #@ef
    goto :goto_2

    #@f0
    .line 120
    .end local v7    # "ch":C
    :cond_c
    :try_start_0
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@f3
    move-result v20

    #@f4
    move/from16 v0, v20

    #@f6
    int-to-long v0, v0

    #@f7
    move-wide/from16 v20, v0

    #@f9
    move-wide/from16 v0, v20

    #@fb
    move-object/from16 v2, v18

    #@fd
    iput-wide v0, v2, Ljava/lang/StringToReal$StringExponentPair;->e:J

    #@ff
    .line 121
    if-eqz v17, :cond_d

    #@101
    .line 122
    move-object/from16 v0, v18

    #@103
    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    #@105
    move-wide/from16 v20, v0

    #@107
    move-wide/from16 v0, v20

    #@109
    neg-long v0, v0

    #@10a
    move-wide/from16 v20, v0

    #@10c
    move-wide/from16 v0, v20

    #@10e
    move-object/from16 v2, v18

    #@110
    iput-wide v0, v2, Ljava/lang/StringToReal$StringExponentPair;->e:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@112
    .line 140
    .end local v12    # "exponentOffset":I
    .end local v13    # "exponentString":Ljava/lang/String;
    .end local v14    # "firstExponentChar":C
    .end local v15    # "i":I
    .end local v17    # "negativeExponent":Z
    :cond_d
    :goto_3
    const/16 v19, 0x0

    #@114
    .line 141
    .local v19, "start":I
    move-object/from16 v0, p0

    #@116
    move/from16 v1, v19

    #@118
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@11b
    move-result v6

    #@11c
    .line 142
    const/16 v20, 0x2d

    #@11e
    move/from16 v0, v20

    #@120
    if-ne v6, v0, :cond_11

    #@122
    .line 143
    const/16 v19, 0x1

    #@124
    .line 144
    add-int/lit8 p1, p1, -0x1

    #@126
    .line 145
    const/16 v20, 0x1

    #@128
    move/from16 v0, v20

    #@12a
    move-object/from16 v1, v18

    #@12c
    iput-boolean v0, v1, Ljava/lang/StringToReal$StringExponentPair;->negative:Z

    #@12e
    .line 150
    :cond_e
    :goto_4
    if-nez p1, :cond_12

    #@130
    .line 151
    move-object/from16 v0, p0

    #@132
    move/from16 v1, p2

    #@134
    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    #@137
    move-result-object v20

    #@138
    throw v20

    #@139
    .line 124
    .end local v19    # "start":I
    .restart local v12    # "exponentOffset":I
    .restart local v13    # "exponentString":Ljava/lang/String;
    .restart local v14    # "firstExponentChar":C
    .restart local v15    # "i":I
    .restart local v17    # "negativeExponent":Z
    :catch_0
    move-exception v11

    #@13a
    .line 127
    .local v11, "ex":Ljava/lang/NumberFormatException;
    if-eqz v17, :cond_f

    #@13c
    .line 128
    const/16 v20, 0x1

    #@13e
    move/from16 v0, v20

    #@140
    move-object/from16 v1, v18

    #@142
    iput-boolean v0, v1, Ljava/lang/StringToReal$StringExponentPair;->zero:Z

    #@144
    goto :goto_3

    #@145
    .line 130
    :cond_f
    const/16 v20, 0x1

    #@147
    move/from16 v0, v20

    #@149
    move-object/from16 v1, v18

    #@14b
    iput-boolean v0, v1, Ljava/lang/StringToReal$StringExponentPair;->infinity:Z

    #@14d
    goto :goto_3

    #@14e
    .line 137
    .end local v11    # "ex":Ljava/lang/NumberFormatException;
    .end local v12    # "exponentOffset":I
    .end local v13    # "exponentString":Ljava/lang/String;
    .end local v14    # "firstExponentChar":C
    .end local v15    # "i":I
    .end local v17    # "negativeExponent":Z
    :cond_10
    move/from16 v10, p1

    #@150
    goto :goto_3

    #@151
    .line 146
    .restart local v19    # "start":I
    :cond_11
    const/16 v20, 0x2b

    #@153
    move/from16 v0, v20

    #@155
    if-ne v6, v0, :cond_e

    #@157
    .line 147
    const/16 v19, 0x1

    #@159
    .line 148
    add-int/lit8 p1, p1, -0x1

    #@15b
    goto :goto_4

    #@15c
    .line 155
    :cond_12
    const/4 v9, -0x1

    #@15d
    .line 156
    .local v9, "decimal":I
    move/from16 v15, v19

    #@15f
    .restart local v15    # "i":I
    :goto_5
    if-ge v15, v10, :cond_17

    #@161
    .line 157
    move-object/from16 v0, p0

    #@163
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    #@166
    move-result v16

    #@167
    .line 158
    .local v16, "mc":C
    const/16 v20, 0x2e

    #@169
    move/from16 v0, v16

    #@16b
    move/from16 v1, v20

    #@16d
    if-ne v0, v1, :cond_15

    #@16f
    .line 159
    const/16 v20, -0x1

    #@171
    move/from16 v0, v20

    #@173
    if-eq v9, v0, :cond_13

    #@175
    .line 160
    move-object/from16 v0, p0

    #@177
    move/from16 v1, p2

    #@179
    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    #@17c
    move-result-object v20

    #@17d
    throw v20

    #@17e
    .line 162
    :cond_13
    move v9, v15

    #@17f
    .line 156
    :cond_14
    add-int/lit8 v15, v15, 0x1

    #@181
    goto :goto_5

    #@182
    .line 163
    :cond_15
    const/16 v20, 0x30

    #@184
    move/from16 v0, v16

    #@186
    move/from16 v1, v20

    #@188
    if-lt v0, v1, :cond_16

    #@18a
    const/16 v20, 0x39

    #@18c
    move/from16 v0, v16

    #@18e
    move/from16 v1, v20

    #@190
    if-le v0, v1, :cond_14

    #@192
    .line 164
    :cond_16
    move-object/from16 v0, p0

    #@194
    move/from16 v1, p2

    #@196
    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    #@199
    move-result-object v20

    #@19a
    throw v20

    #@19b
    .line 167
    .end local v16    # "mc":C
    :cond_17
    const/16 v20, -0x1

    #@19d
    move/from16 v0, v20

    #@19f
    if-le v9, v0, :cond_18

    #@1a1
    .line 168
    move-object/from16 v0, v18

    #@1a3
    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    #@1a5
    move-wide/from16 v20, v0

    #@1a7
    sub-int v22, v10, v9

    #@1a9
    add-int/lit8 v22, v22, -0x1

    #@1ab
    move/from16 v0, v22

    #@1ad
    int-to-long v0, v0

    #@1ae
    move-wide/from16 v22, v0

    #@1b0
    sub-long v20, v20, v22

    #@1b2
    move-wide/from16 v0, v20

    #@1b4
    move-object/from16 v2, v18

    #@1b6
    iput-wide v0, v2, Ljava/lang/StringToReal$StringExponentPair;->e:J

    #@1b8
    .line 169
    new-instance v20, Ljava/lang/StringBuilder;

    #@1ba
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@1bd
    move-object/from16 v0, p0

    #@1bf
    move/from16 v1, v19

    #@1c1
    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1c4
    move-result-object v21

    #@1c5
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c8
    move-result-object v20

    #@1c9
    add-int/lit8 v21, v9, 0x1

    #@1cb
    move-object/from16 v0, p0

    #@1cd
    move/from16 v1, v21

    #@1cf
    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1d2
    move-result-object v21

    #@1d3
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d6
    move-result-object v20

    #@1d7
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1da
    move-result-object p0

    #@1db
    .line 174
    :goto_6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    #@1de
    move-result p1

    #@1df
    .line 175
    if-nez p1, :cond_19

    #@1e1
    .line 176
    move-object/from16 v0, p0

    #@1e3
    move/from16 v1, p2

    #@1e5
    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    #@1e8
    move-result-object v20

    #@1e9
    throw v20

    #@1ea
    .line 171
    :cond_18
    move-object/from16 v0, p0

    #@1ec
    move/from16 v1, v19

    #@1ee
    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1f1
    move-result-object p0

    #@1f2
    goto :goto_6

    #@1f3
    .line 181
    :cond_19
    move-object/from16 v0, v18

    #@1f5
    iget-boolean v0, v0, Ljava/lang/StringToReal$StringExponentPair;->infinity:Z

    #@1f7
    move/from16 v20, v0

    #@1f9
    if-nez v20, :cond_1a

    #@1fb
    move-object/from16 v0, v18

    #@1fd
    iget-boolean v0, v0, Ljava/lang/StringToReal$StringExponentPair;->zero:Z

    #@1ff
    move/from16 v20, v0

    #@201
    if-eqz v20, :cond_1b

    #@203
    .line 182
    :cond_1a
    return-object v18

    #@204
    .line 185
    :cond_1b
    move/from16 v10, p1

    #@206
    .line 186
    :goto_7
    const/16 v20, 0x1

    #@208
    move/from16 v0, v20

    #@20a
    if-le v10, v0, :cond_1c

    #@20c
    add-int/lit8 v20, v10, -0x1

    #@20e
    move-object/from16 v0, p0

    #@210
    move/from16 v1, v20

    #@212
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@215
    move-result v20

    #@216
    const/16 v21, 0x30

    #@218
    move/from16 v0, v20

    #@21a
    move/from16 v1, v21

    #@21c
    if-ne v0, v1, :cond_1c

    #@21e
    .line 187
    add-int/lit8 v10, v10, -0x1

    #@220
    goto :goto_7

    #@221
    .line 190
    :cond_1c
    const/16 v19, 0x0

    #@223
    .line 191
    :goto_8
    add-int/lit8 v20, v10, -0x1

    #@225
    move/from16 v0, v19

    #@227
    move/from16 v1, v20

    #@229
    if-ge v0, v1, :cond_1d

    #@22b
    move-object/from16 v0, p0

    #@22d
    move/from16 v1, v19

    #@22f
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@232
    move-result v20

    #@233
    const/16 v21, 0x30

    #@235
    move/from16 v0, v20

    #@237
    move/from16 v1, v21

    #@239
    if-ne v0, v1, :cond_1d

    #@23b
    .line 192
    add-int/lit8 v19, v19, 0x1

    #@23d
    goto :goto_8

    #@23e
    .line 195
    :cond_1d
    move/from16 v0, p1

    #@240
    if-ne v10, v0, :cond_1e

    #@242
    if-eqz v19, :cond_1f

    #@244
    .line 196
    :cond_1e
    move-object/from16 v0, v18

    #@246
    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    #@248
    move-wide/from16 v20, v0

    #@24a
    sub-int v22, p1, v10

    #@24c
    move/from16 v0, v22

    #@24e
    int-to-long v0, v0

    #@24f
    move-wide/from16 v22, v0

    #@251
    add-long v20, v20, v22

    #@253
    move-wide/from16 v0, v20

    #@255
    move-object/from16 v2, v18

    #@257
    iput-wide v0, v2, Ljava/lang/StringToReal$StringExponentPair;->e:J

    #@259
    .line 197
    move-object/from16 v0, p0

    #@25b
    move/from16 v1, v19

    #@25d
    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@260
    move-result-object p0

    #@261
    .line 203
    :cond_1f
    const/16 v4, -0x167

    #@263
    .line 204
    .local v4, "APPROX_MIN_MAGNITUDE":I
    const/16 v5, 0x34

    #@265
    .line 205
    .local v5, "MAX_DIGITS":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    #@268
    move-result p1

    #@269
    .line 206
    const/16 v20, 0x34

    #@26b
    move/from16 v0, p1

    #@26d
    move/from16 v1, v20

    #@26f
    if-le v0, v1, :cond_20

    #@271
    move-object/from16 v0, v18

    #@273
    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    #@275
    move-wide/from16 v20, v0

    #@277
    const-wide/16 v22, -0x167

    #@279
    cmp-long v20, v20, v22

    #@27b
    if-gez v20, :cond_20

    #@27d
    .line 207
    move-object/from16 v0, v18

    #@27f
    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    #@281
    move-wide/from16 v20, v0

    #@283
    move-wide/from16 v0, v20

    #@285
    long-to-int v0, v0

    #@286
    move/from16 v20, v0

    #@288
    move/from16 v0, v20

    #@28a
    rsub-int v0, v0, -0x167

    #@28c
    move/from16 v20, v0

    #@28e
    add-int/lit8 v21, p1, -0x1

    #@290
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    #@293
    move-result v8

    #@294
    .line 208
    .local v8, "d":I
    sub-int v20, p1, v8

    #@296
    const/16 v21, 0x0

    #@298
    move-object/from16 v0, p0

    #@29a
    move/from16 v1, v21

    #@29c
    move/from16 v2, v20

    #@29e
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2a1
    move-result-object p0

    #@2a2
    .line 209
    move-object/from16 v0, v18

    #@2a4
    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    #@2a6
    move-wide/from16 v20, v0

    #@2a8
    int-to-long v0, v8

    #@2a9
    move-wide/from16 v22, v0

    #@2ab
    add-long v20, v20, v22

    #@2ad
    move-wide/from16 v0, v20

    #@2af
    move-object/from16 v2, v18

    #@2b1
    iput-wide v0, v2, Ljava/lang/StringToReal$StringExponentPair;->e:J

    #@2b3
    .line 215
    .end local v8    # "d":I
    :cond_20
    move-object/from16 v0, v18

    #@2b5
    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    #@2b7
    move-wide/from16 v20, v0

    #@2b9
    const-wide/16 v22, -0x400

    #@2bb
    cmp-long v20, v20, v22

    #@2bd
    if-gez v20, :cond_21

    #@2bf
    .line 216
    const/16 v20, 0x1

    #@2c1
    move/from16 v0, v20

    #@2c3
    move-object/from16 v1, v18

    #@2c5
    iput-boolean v0, v1, Ljava/lang/StringToReal$StringExponentPair;->zero:Z

    #@2c7
    .line 217
    return-object v18

    #@2c8
    .line 218
    :cond_21
    move-object/from16 v0, v18

    #@2ca
    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    #@2cc
    move-wide/from16 v20, v0

    #@2ce
    const-wide/16 v22, 0x400

    #@2d0
    cmp-long v20, v20, v22

    #@2d2
    if-lez v20, :cond_22

    #@2d4
    .line 219
    const/16 v20, 0x1

    #@2d6
    move/from16 v0, v20

    #@2d8
    move-object/from16 v1, v18

    #@2da
    iput-boolean v0, v1, Ljava/lang/StringToReal$StringExponentPair;->infinity:Z

    #@2dc
    .line 220
    return-object v18

    #@2dd
    .line 223
    :cond_22
    move-object/from16 v0, p0

    #@2df
    move-object/from16 v1, v18

    #@2e1
    iput-object v0, v1, Ljava/lang/StringToReal$StringExponentPair;->s:Ljava/lang/String;

    #@2e3
    .line 224
    return-object v18
.end method

.method private static invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "isDouble"    # Z

    #@0
    .prologue
    .line 63
    new-instance v1, Ljava/lang/NumberFormatException;

    #@2
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Invalid "

    #@a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v2

    #@e
    if-eqz p1, :cond_0

    #@10
    const-string/jumbo v0, "double"

    #@13
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    const-string/jumbo v2, ": \""

    #@1a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    const-string/jumbo v2, "\""

    #@25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@30
    throw v1

    #@31
    :cond_0
    const-string/jumbo v0, "float"

    #@34
    goto :goto_0
.end method

.method private static native parseDblImpl(Ljava/lang/String;I)D
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .locals 11
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    const/4 v10, 0x1

    #@2
    .line 263
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@5
    move-result-object p0

    #@6
    .line 264
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@9
    move-result v2

    #@a
    .line 266
    .local v2, "length":I
    if-nez v2, :cond_0

    #@c
    .line 267
    invoke-static {p0, v10}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    #@f
    move-result-object v3

    #@10
    throw v3

    #@11
    .line 271
    :cond_0
    add-int/lit8 v3, v2, -0x1

    #@13
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v1

    #@17
    .line 272
    .local v1, "last":C
    const/16 v3, 0x79

    #@19
    if-eq v1, v3, :cond_1

    #@1b
    const/16 v3, 0x4e

    #@1d
    if-ne v1, v3, :cond_2

    #@1f
    .line 273
    :cond_1
    invoke-static {p0, v10}, Ljava/lang/StringToReal;->parseName(Ljava/lang/String;Z)F

    #@22
    move-result v3

    #@23
    float-to-double v6, v3

    #@24
    return-wide v6

    #@25
    .line 278
    :cond_2
    const-string/jumbo v3, "0x"

    #@28
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@2b
    move-result v3

    #@2c
    if-ne v3, v6, :cond_3

    #@2e
    const-string/jumbo v3, "0X"

    #@31
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@34
    move-result v3

    #@35
    if-eq v3, v6, :cond_4

    #@37
    .line 279
    :cond_3
    invoke-static {p0}, Ljava/lang/HexStringParser;->parseDouble(Ljava/lang/String;)D

    #@3a
    move-result-wide v6

    #@3b
    return-wide v6

    #@3c
    .line 282
    :cond_4
    invoke-static {p0, v2, v10}, Ljava/lang/StringToReal;->initialParse(Ljava/lang/String;IZ)Ljava/lang/StringToReal$StringExponentPair;

    #@3f
    move-result-object v0

    #@40
    .line 283
    .local v0, "info":Ljava/lang/StringToReal$StringExponentPair;
    iget-boolean v3, v0, Ljava/lang/StringToReal$StringExponentPair;->infinity:Z

    #@42
    if-nez v3, :cond_5

    #@44
    iget-boolean v3, v0, Ljava/lang/StringToReal$StringExponentPair;->zero:Z

    #@46
    if-eqz v3, :cond_6

    #@48
    .line 284
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringToReal$StringExponentPair;->specialValue()F

    #@4b
    move-result v3

    #@4c
    float-to-double v6, v3

    #@4d
    return-wide v6

    #@4e
    .line 286
    :cond_6
    iget-object v3, v0, Ljava/lang/StringToReal$StringExponentPair;->s:Ljava/lang/String;

    #@50
    iget-wide v6, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    #@52
    long-to-int v6, v6

    #@53
    invoke-static {v3, v6}, Ljava/lang/StringToReal;->parseDblImpl(Ljava/lang/String;I)D

    #@56
    move-result-wide v4

    #@57
    .line 287
    .local v4, "result":D
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@5a
    move-result-wide v6

    #@5b
    const-wide/16 v8, -0x1

    #@5d
    cmp-long v3, v6, v8

    #@5f
    if-nez v3, :cond_7

    #@61
    .line 288
    invoke-static {p0, v10}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    #@64
    move-result-object v3

    #@65
    throw v3

    #@66
    .line 290
    :cond_7
    iget-boolean v3, v0, Ljava/lang/StringToReal$StringExponentPair;->negative:Z

    #@68
    if-eqz v3, :cond_8

    #@6a
    neg-double v4, v4

    #@6b
    .end local v4    # "result":D
    :cond_8
    return-wide v4
.end method

.method public static parseFloat(Ljava/lang/String;)F
    .locals 10
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, -0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 304
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@5
    move-result-object p0

    #@6
    .line 305
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@9
    move-result v2

    #@a
    .line 307
    .local v2, "length":I
    if-nez v2, :cond_0

    #@c
    .line 308
    invoke-static {p0, v8}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    #@f
    move-result-object v4

    #@10
    throw v4

    #@11
    .line 312
    :cond_0
    add-int/lit8 v4, v2, -0x1

    #@13
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v1

    #@17
    .line 313
    .local v1, "last":C
    const/16 v4, 0x79

    #@19
    if-eq v1, v4, :cond_1

    #@1b
    const/16 v4, 0x4e

    #@1d
    if-ne v1, v4, :cond_2

    #@1f
    .line 314
    :cond_1
    invoke-static {p0, v8}, Ljava/lang/StringToReal;->parseName(Ljava/lang/String;Z)F

    #@22
    move-result v4

    #@23
    return v4

    #@24
    .line 319
    :cond_2
    const-string/jumbo v4, "0x"

    #@27
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@2a
    move-result v4

    #@2b
    if-ne v4, v9, :cond_3

    #@2d
    const-string/jumbo v4, "0X"

    #@30
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@33
    move-result v4

    #@34
    if-eq v4, v9, :cond_4

    #@36
    .line 320
    :cond_3
    invoke-static {p0}, Ljava/lang/HexStringParser;->parseFloat(Ljava/lang/String;)F

    #@39
    move-result v4

    #@3a
    return v4

    #@3b
    .line 323
    :cond_4
    invoke-static {p0, v2, v8}, Ljava/lang/StringToReal;->initialParse(Ljava/lang/String;IZ)Ljava/lang/StringToReal$StringExponentPair;

    #@3e
    move-result-object v0

    #@3f
    .line 324
    .local v0, "info":Ljava/lang/StringToReal$StringExponentPair;
    iget-boolean v4, v0, Ljava/lang/StringToReal$StringExponentPair;->infinity:Z

    #@41
    if-nez v4, :cond_5

    #@43
    iget-boolean v4, v0, Ljava/lang/StringToReal$StringExponentPair;->zero:Z

    #@45
    if-eqz v4, :cond_6

    #@47
    .line 325
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringToReal$StringExponentPair;->specialValue()F

    #@4a
    move-result v4

    #@4b
    return v4

    #@4c
    .line 327
    :cond_6
    iget-object v4, v0, Ljava/lang/StringToReal$StringExponentPair;->s:Ljava/lang/String;

    #@4e
    iget-wide v6, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    #@50
    long-to-int v5, v6

    #@51
    invoke-static {v4, v5}, Ljava/lang/StringToReal;->parseFltImpl(Ljava/lang/String;I)F

    #@54
    move-result v3

    #@55
    .line 328
    .local v3, "result":F
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@58
    move-result v4

    #@59
    if-ne v4, v9, :cond_7

    #@5b
    .line 329
    invoke-static {p0, v8}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    #@5e
    move-result-object v4

    #@5f
    throw v4

    #@60
    .line 331
    :cond_7
    iget-boolean v4, v0, Ljava/lang/StringToReal$StringExponentPair;->negative:Z

    #@62
    if-eqz v4, :cond_8

    #@64
    neg-float v3, v3

    #@65
    .end local v3    # "result":F
    :cond_8
    return v3
.end method

.method private static native parseFltImpl(Ljava/lang/String;I)F
.end method

.method private static parseName(Ljava/lang/String;Z)F
    .locals 10
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "isDouble"    # Z

    #@0
    .prologue
    const/16 v5, 0x8

    #@2
    const/4 v9, 0x3

    #@3
    const/4 v1, 0x0

    #@4
    .line 230
    const/4 v8, 0x0

    #@5
    .line 231
    .local v8, "negative":Z
    const/4 v2, 0x0

    #@6
    .line 232
    .local v2, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@9
    move-result v7

    #@a
    .line 233
    .local v7, "length":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v6

    #@e
    .line 234
    .local v6, "firstChar":C
    const/16 v0, 0x2d

    #@10
    if-ne v6, v0, :cond_1

    #@12
    .line 235
    const/4 v8, 0x1

    #@13
    .line 236
    const/4 v2, 0x1

    #@14
    .line 237
    add-int/lit8 v7, v7, -0x1

    #@16
    .line 243
    :cond_0
    :goto_0
    if-ne v7, v5, :cond_3

    #@18
    const-string/jumbo v3, "Infinity"

    #@1b
    move-object v0, p0

    #@1c
    move v4, v1

    #@1d
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_3

    #@23
    .line 244
    if-eqz v8, :cond_2

    #@25
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    #@27
    :goto_1
    return v0

    #@28
    .line 238
    :cond_1
    const/16 v0, 0x2b

    #@2a
    if-ne v6, v0, :cond_0

    #@2c
    .line 239
    const/4 v2, 0x1

    #@2d
    .line 240
    add-int/lit8 v7, v7, -0x1

    #@2f
    goto :goto_0

    #@30
    .line 244
    :cond_2
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    #@32
    goto :goto_1

    #@33
    .line 246
    :cond_3
    if-ne v7, v9, :cond_4

    #@35
    const-string/jumbo v3, "NaN"

    #@38
    move-object v0, p0

    #@39
    move v4, v1

    #@3a
    move v5, v9

    #@3b
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@3e
    move-result v0

    #@3f
    if-eqz v0, :cond_4

    #@41
    .line 247
    const/high16 v0, 0x7fc00000    # NaNf

    #@43
    return v0

    #@44
    .line 249
    :cond_4
    invoke-static {p0, p1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    #@47
    move-result-object v0

    #@48
    throw v0
.end method
