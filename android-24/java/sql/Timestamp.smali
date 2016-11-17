.class public Ljava/sql/Timestamp;
.super Ljava/util/Date;
.source "Timestamp.java"


# static fields
.field static final serialVersionUID:J = 0x2618d5c80153bf65L


# instance fields
.field private nanos:I


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I
    .param p7, "nano"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 89
    invoke-direct/range {p0 .. p6}, Ljava/util/Date;-><init>(IIIIII)V

    #@3
    .line 90
    const v0, 0x3b9ac9ff

    #@6
    if-gt p7, v0, :cond_0

    #@8
    if-gez p7, :cond_1

    #@a
    .line 91
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v1, "nanos > 999999999 or < 0"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 93
    :cond_1
    iput p7, p0, Ljava/sql/Timestamp;->nanos:I

    #@15
    .line 88
    return-void
.end method

.method public constructor <init>(J)V
    .locals 7
    .param p1, "time"    # J

    #@0
    .prologue
    const-wide/16 v4, 0x3e8

    #@2
    .line 109
    div-long v0, p1, v4

    #@4
    mul-long/2addr v0, v4

    #@5
    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    #@8
    .line 110
    rem-long v0, p1, v4

    #@a
    const-wide/32 v2, 0xf4240

    #@d
    mul-long/2addr v0, v2

    #@e
    long-to-int v0, v0

    #@f
    iput v0, p0, Ljava/sql/Timestamp;->nanos:I

    #@11
    .line 111
    iget v0, p0, Ljava/sql/Timestamp;->nanos:I

    #@13
    if-gez v0, :cond_0

    #@15
    .line 112
    iget v0, p0, Ljava/sql/Timestamp;->nanos:I

    #@17
    const v1, 0x3b9aca00

    #@1a
    add-int/2addr v0, v1

    #@1b
    iput v0, p0, Ljava/sql/Timestamp;->nanos:I

    #@1d
    .line 113
    div-long v0, p1, v4

    #@1f
    const-wide/16 v2, 0x1

    #@21
    sub-long/2addr v0, v2

    #@22
    mul-long/2addr v0, v4

    #@23
    invoke-super {p0, v0, v1}, Ljava/util/Date;->setTime(J)V

    #@26
    .line 108
    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/sql/Timestamp;
    .locals 34
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 167
    const/4 v14, 0x4

    #@1
    .line 168
    .local v14, "YEAR_LENGTH":I
    const/4 v13, 0x2

    #@2
    .line 169
    .local v13, "MONTH_LENGTH":I
    const/4 v10, 0x2

    #@3
    .line 170
    .local v10, "DAY_LENGTH":I
    const/16 v12, 0xc

    #@5
    .line 171
    .local v12, "MAX_MONTH":I
    const/16 v11, 0x1f

    #@7
    .line 175
    .local v11, "MAX_DAY":I
    const/16 v31, 0x0

    #@9
    .line 176
    .local v31, "year":I
    const/16 v24, 0x0

    #@b
    .line 177
    .local v24, "month":I
    const/4 v5, 0x0

    #@c
    .line 181
    .local v5, "day":I
    const/4 v9, 0x0

    #@d
    .line 185
    .local v9, "a_nanos":I
    const/16 v20, 0x0

    #@f
    .line 186
    .local v20, "firstColon":I
    const/16 v28, 0x0

    #@11
    .line 187
    .local v28, "secondColon":I
    const/16 v27, 0x0

    #@13
    .line 188
    .local v27, "period":I
    const-string/jumbo v22, "Timestamp format must be yyyy-mm-dd hh:mm:ss[.fffffffff]"

    #@16
    .line 189
    .local v22, "formatError":Ljava/lang/String;
    const-string/jumbo v33, "000000000"

    #@19
    .line 190
    .local v33, "zeros":Ljava/lang/String;
    const-string/jumbo v17, "-"

    #@1c
    .line 191
    .local v17, "delimiterDate":Ljava/lang/String;
    const-string/jumbo v18, ":"

    #@1f
    .line 193
    .local v18, "delimiterTime":Ljava/lang/String;
    if-nez p0, :cond_0

    #@21
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@23
    const-string/jumbo v3, "null string"

    #@26
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v2

    #@2a
    .line 196
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@2d
    move-result-object p0

    #@2e
    .line 197
    const/16 v2, 0x20

    #@30
    move-object/from16 v0, p0

    #@32
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    #@35
    move-result v19

    #@36
    .line 198
    .local v19, "dividingSpace":I
    if-lez v19, :cond_1

    #@38
    .line 199
    const/4 v2, 0x0

    #@39
    move-object/from16 v0, p0

    #@3b
    move/from16 v1, v19

    #@3d
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@40
    move-result-object v15

    #@41
    .line 200
    .local v15, "date_s":Ljava/lang/String;
    add-int/lit8 v2, v19, 0x1

    #@43
    move-object/from16 v0, p0

    #@45
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@48
    move-result-object v30

    #@49
    .line 206
    .local v30, "time_s":Ljava/lang/String;
    const/16 v2, 0x2d

    #@4b
    invoke-virtual {v15, v2}, Ljava/lang/String;->indexOf(I)I

    #@4e
    move-result v21

    #@4f
    .line 207
    .local v21, "firstDash":I
    const/16 v2, 0x2d

    #@51
    add-int/lit8 v3, v21, 0x1

    #@53
    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->indexOf(II)I

    #@56
    move-result v29

    #@57
    .line 210
    .local v29, "secondDash":I
    if-nez v30, :cond_2

    #@59
    .line 211
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@5b
    move-object/from16 v0, v22

    #@5d
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@60
    throw v2

    #@61
    .line 202
    .end local v15    # "date_s":Ljava/lang/String;
    .end local v21    # "firstDash":I
    .end local v29    # "secondDash":I
    .end local v30    # "time_s":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@63
    move-object/from16 v0, v22

    #@65
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@68
    throw v2

    #@69
    .line 212
    .restart local v15    # "date_s":Ljava/lang/String;
    .restart local v21    # "firstDash":I
    .restart local v29    # "secondDash":I
    .restart local v30    # "time_s":Ljava/lang/String;
    :cond_2
    const/16 v2, 0x3a

    #@6b
    move-object/from16 v0, v30

    #@6d
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    #@70
    move-result v20

    #@71
    .line 213
    const/16 v2, 0x3a

    #@73
    add-int/lit8 v3, v20, 0x1

    #@75
    move-object/from16 v0, v30

    #@77
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    #@7a
    move-result v28

    #@7b
    .line 214
    const/16 v2, 0x2e

    #@7d
    add-int/lit8 v3, v28, 0x1

    #@7f
    move-object/from16 v0, v30

    #@81
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    #@84
    move-result v27

    #@85
    .line 217
    const/16 v26, 0x0

    #@87
    .line 218
    .local v26, "parsedDate":Z
    if-lez v21, :cond_3

    #@89
    if-lez v29, :cond_3

    #@8b
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    #@8e
    move-result v2

    #@8f
    add-int/lit8 v2, v2, -0x1

    #@91
    move/from16 v0, v29

    #@93
    if-ge v0, v2, :cond_3

    #@95
    .line 219
    const/4 v2, 0x0

    #@96
    move/from16 v0, v21

    #@98
    invoke-virtual {v15, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@9b
    move-result-object v32

    #@9c
    .line 220
    .local v32, "yyyy":Ljava/lang/String;
    add-int/lit8 v2, v21, 0x1

    #@9e
    move/from16 v0, v29

    #@a0
    invoke-virtual {v15, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@a3
    move-result-object v23

    #@a4
    .line 221
    .local v23, "mm":Ljava/lang/String;
    add-int/lit8 v2, v29, 0x1

    #@a6
    invoke-virtual {v15, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@a9
    move-result-object v16

    #@aa
    .line 222
    .local v16, "dd":Ljava/lang/String;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    #@ad
    move-result v2

    #@ae
    const/4 v3, 0x4

    #@af
    if-ne v2, v3, :cond_3

    #@b1
    .line 223
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    #@b4
    move-result v2

    #@b5
    const/4 v3, 0x1

    #@b6
    if-lt v2, v3, :cond_3

    #@b8
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    #@bb
    move-result v2

    #@bc
    const/4 v3, 0x2

    #@bd
    if-gt v2, v3, :cond_3

    #@bf
    .line 224
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    #@c2
    move-result v2

    #@c3
    const/4 v3, 0x1

    #@c4
    if-lt v2, v3, :cond_3

    #@c6
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    #@c9
    move-result v2

    #@ca
    const/4 v3, 0x2

    #@cb
    if-gt v2, v3, :cond_3

    #@cd
    .line 225
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@d0
    move-result v31

    #@d1
    .line 226
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@d4
    move-result v24

    #@d5
    .line 227
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@d8
    move-result v5

    #@d9
    .line 229
    const/4 v2, 0x1

    #@da
    move/from16 v0, v24

    #@dc
    if-lt v0, v2, :cond_3

    #@de
    const/16 v2, 0xc

    #@e0
    move/from16 v0, v24

    #@e2
    if-gt v0, v2, :cond_3

    #@e4
    const/4 v2, 0x1

    #@e5
    if-lt v5, v2, :cond_3

    #@e7
    const/16 v2, 0x1f

    #@e9
    if-gt v5, v2, :cond_3

    #@eb
    .line 230
    const/16 v26, 0x1

    #@ed
    .line 234
    .end local v16    # "dd":Ljava/lang/String;
    .end local v23    # "mm":Ljava/lang/String;
    .end local v32    # "yyyy":Ljava/lang/String;
    :cond_3
    if-nez v26, :cond_4

    #@ef
    .line 235
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@f1
    move-object/from16 v0, v22

    #@f3
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f6
    throw v2

    #@f7
    .line 239
    :cond_4
    if-lez v20, :cond_5

    #@f9
    const/4 v2, 0x1

    #@fa
    move v3, v2

    #@fb
    :goto_0
    if-lez v28, :cond_6

    #@fd
    const/4 v2, 0x1

    #@fe
    :goto_1
    and-int/2addr v3, v2

    #@ff
    .line 240
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    #@102
    move-result v2

    #@103
    add-int/lit8 v2, v2, -0x1

    #@105
    move/from16 v0, v28

    #@107
    if-ge v0, v2, :cond_7

    #@109
    const/4 v2, 0x1

    #@10a
    .line 239
    :goto_2
    and-int/2addr v2, v3

    #@10b
    if-eqz v2, :cond_e

    #@10d
    .line 241
    const/4 v2, 0x0

    #@10e
    move-object/from16 v0, v30

    #@110
    move/from16 v1, v20

    #@112
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@115
    move-result-object v2

    #@116
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@119
    move-result v6

    #@11a
    .line 243
    .local v6, "hour":I
    add-int/lit8 v2, v20, 0x1

    #@11c
    move-object/from16 v0, v30

    #@11e
    move/from16 v1, v28

    #@120
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@123
    move-result-object v2

    #@124
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@127
    move-result v7

    #@128
    .line 244
    .local v7, "minute":I
    if-lez v27, :cond_8

    #@12a
    const/4 v2, 0x1

    #@12b
    :goto_3
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    #@12e
    move-result v3

    #@12f
    add-int/lit8 v3, v3, -0x1

    #@131
    move/from16 v0, v27

    #@133
    if-ge v0, v3, :cond_9

    #@135
    const/4 v3, 0x1

    #@136
    :goto_4
    and-int/2addr v2, v3

    #@137
    if-eqz v2, :cond_c

    #@139
    .line 246
    add-int/lit8 v2, v28, 0x1

    #@13b
    move-object/from16 v0, v30

    #@13d
    move/from16 v1, v27

    #@13f
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@142
    move-result-object v2

    #@143
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@146
    move-result v8

    #@147
    .line 247
    .local v8, "second":I
    add-int/lit8 v2, v27, 0x1

    #@149
    move-object/from16 v0, v30

    #@14b
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@14e
    move-result-object v25

    #@14f
    .line 248
    .local v25, "nanos_s":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    #@152
    move-result v2

    #@153
    const/16 v3, 0x9

    #@155
    if-le v2, v3, :cond_a

    #@157
    .line 249
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@159
    move-object/from16 v0, v22

    #@15b
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15e
    throw v2

    #@15f
    .line 239
    .end local v6    # "hour":I
    .end local v7    # "minute":I
    .end local v8    # "second":I
    .end local v25    # "nanos_s":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    #@160
    move v3, v2

    #@161
    goto :goto_0

    #@162
    :cond_6
    const/4 v2, 0x0

    #@163
    goto :goto_1

    #@164
    .line 240
    :cond_7
    const/4 v2, 0x0

    #@165
    goto :goto_2

    #@166
    .line 244
    .restart local v6    # "hour":I
    .restart local v7    # "minute":I
    :cond_8
    const/4 v2, 0x0

    #@167
    goto :goto_3

    #@168
    :cond_9
    const/4 v3, 0x0

    #@169
    goto :goto_4

    #@16a
    .line 250
    .restart local v8    # "second":I
    .restart local v25    # "nanos_s":Ljava/lang/String;
    :cond_a
    const/4 v2, 0x0

    #@16b
    move-object/from16 v0, v25

    #@16d
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    #@170
    move-result v2

    #@171
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    #@174
    move-result v2

    #@175
    if-nez v2, :cond_b

    #@177
    .line 251
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@179
    move-object/from16 v0, v22

    #@17b
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17e
    throw v2

    #@17f
    .line 252
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    #@181
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@184
    move-object/from16 v0, v25

    #@186
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@189
    move-result-object v2

    #@18a
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    #@18d
    move-result v3

    #@18e
    rsub-int/lit8 v3, v3, 0x9

    #@190
    const/4 v4, 0x0

    #@191
    move-object/from16 v0, v33

    #@193
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@196
    move-result-object v3

    #@197
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19a
    move-result-object v2

    #@19b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19e
    move-result-object v25

    #@19f
    .line 253
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1a2
    move-result v9

    #@1a3
    .line 263
    .end local v25    # "nanos_s":Ljava/lang/String;
    :goto_5
    new-instance v2, Ljava/sql/Timestamp;

    #@1a5
    move/from16 v0, v31

    #@1a7
    add-int/lit16 v3, v0, -0x76c

    #@1a9
    add-int/lit8 v4, v24, -0x1

    #@1ab
    invoke-direct/range {v2 .. v9}, Ljava/sql/Timestamp;-><init>(IIIIIII)V

    #@1ae
    return-object v2

    #@1af
    .line 254
    .end local v8    # "second":I
    :cond_c
    if-lez v27, :cond_d

    #@1b1
    .line 255
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1b3
    move-object/from16 v0, v22

    #@1b5
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b8
    throw v2

    #@1b9
    .line 257
    :cond_d
    add-int/lit8 v2, v28, 0x1

    #@1bb
    move-object/from16 v0, v30

    #@1bd
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1c0
    move-result-object v2

    #@1c1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1c4
    move-result v8

    #@1c5
    .restart local v8    # "second":I
    goto :goto_5

    #@1c6
    .line 260
    .end local v6    # "hour":I
    .end local v7    # "minute":I
    .end local v8    # "second":I
    :cond_e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1c8
    move-object/from16 v0, v22

    #@1ca
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1cd
    throw v2
.end method


# virtual methods
.method public after(Ljava/sql/Timestamp;)Z
    .locals 2
    .param p1, "ts"    # Ljava/sql/Timestamp;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 459
    invoke-virtual {p0, p1}, Ljava/sql/Timestamp;->compareTo(Ljava/sql/Timestamp;)I

    #@4
    move-result v1

    #@5
    if-lez v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public before(Ljava/sql/Timestamp;)Z
    .locals 2
    .param p1, "ts"    # Ljava/sql/Timestamp;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 447
    invoke-virtual {p0, p1}, Ljava/sql/Timestamp;->compareTo(Ljava/sql/Timestamp;)I

    #@4
    move-result v1

    #@5
    if-gez v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public compareTo(Ljava/sql/Timestamp;)I
    .locals 9
    .param p1, "ts"    # Ljava/sql/Timestamp;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v3, -0x1

    #@3
    .line 476
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getTime()J

    #@6
    move-result-wide v4

    #@7
    .line 477
    .local v4, "thisTime":J
    invoke-virtual {p1}, Ljava/sql/Timestamp;->getTime()J

    #@a
    move-result-wide v0

    #@b
    .line 478
    .local v0, "anotherTime":J
    cmp-long v7, v4, v0

    #@d
    if-gez v7, :cond_1

    #@f
    move v2, v3

    #@10
    .line 479
    .local v2, "i":I
    :cond_0
    :goto_0
    if-nez v2, :cond_3

    #@12
    .line 480
    iget v7, p0, Ljava/sql/Timestamp;->nanos:I

    #@14
    iget v8, p1, Ljava/sql/Timestamp;->nanos:I

    #@16
    if-le v7, v8, :cond_2

    #@18
    .line 481
    return v6

    #@19
    .line 478
    .end local v2    # "i":I
    :cond_1
    cmp-long v7, v4, v0

    #@1b
    if-eqz v7, :cond_0

    #@1d
    move v2, v6

    #@1e
    goto :goto_0

    #@1f
    .line 482
    .restart local v2    # "i":I
    :cond_2
    iget v6, p0, Ljava/sql/Timestamp;->nanos:I

    #@21
    iget v7, p1, Ljava/sql/Timestamp;->nanos:I

    #@23
    if-ge v6, v7, :cond_3

    #@25
    .line 483
    return v3

    #@26
    .line 486
    :cond_3
    return v2
.end method

.method public compareTo(Ljava/util/Date;)I
    .locals 4
    .param p1, "o"    # Ljava/util/Date;

    #@0
    .prologue
    .line 505
    instance-of v1, p1, Ljava/sql/Timestamp;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 509
    check-cast p1, Ljava/sql/Timestamp;

    #@6
    .end local p1    # "o":Ljava/util/Date;
    invoke-virtual {p0, p1}, Ljava/sql/Timestamp;->compareTo(Ljava/sql/Timestamp;)I

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 513
    .restart local p1    # "o":Ljava/util/Date;
    :cond_0
    new-instance v0, Ljava/sql/Timestamp;

    #@d
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@10
    move-result-wide v2

    #@11
    invoke-direct {v0, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    #@14
    .line 514
    .local v0, "ts":Ljava/sql/Timestamp;
    invoke-virtual {p0, v0}, Ljava/sql/Timestamp;->compareTo(Ljava/sql/Timestamp;)I

    #@17
    move-result v1

    #@18
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "ts"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 431
    instance-of v0, p1, Ljava/sql/Timestamp;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 432
    check-cast p1, Ljava/sql/Timestamp;

    #@6
    .end local p1    # "ts":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/sql/Timestamp;->equals(Ljava/sql/Timestamp;)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 434
    .restart local p1    # "ts":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public equals(Ljava/sql/Timestamp;)Z
    .locals 3
    .param p1, "ts"    # Ljava/sql/Timestamp;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 401
    invoke-super {p0, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_1

    #@7
    .line 402
    iget v0, p0, Ljava/sql/Timestamp;->nanos:I

    #@9
    iget v1, p1, Ljava/sql/Timestamp;->nanos:I

    #@b
    if-ne v0, v1, :cond_0

    #@d
    .line 403
    const/4 v0, 0x1

    #@e
    return v0

    #@f
    .line 405
    :cond_0
    return v2

    #@10
    .line 408
    :cond_1
    return v2
.end method

.method public getNanos()I
    .locals 1

    #@0
    .prologue
    .line 372
    iget v0, p0, Ljava/sql/Timestamp;->nanos:I

    #@2
    return v0
.end method

.method public getTime()J
    .locals 4

    #@0
    .prologue
    .line 144
    invoke-super {p0}, Ljava/util/Date;->getTime()J

    #@3
    move-result-wide v0

    #@4
    .line 145
    .local v0, "time":J
    iget v2, p0, Ljava/sql/Timestamp;->nanos:I

    #@6
    const v3, 0xf4240

    #@9
    div-int/2addr v2, v3

    #@a
    int-to-long v2, v2

    #@b
    add-long/2addr v2, v0

    #@c
    return-wide v2
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 527
    invoke-super {p0}, Ljava/util/Date;->hashCode()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public setNanos(I)V
    .locals 2
    .param p1, "n"    # I

    #@0
    .prologue
    .line 385
    const v0, 0x3b9ac9ff

    #@3
    if-gt p1, v0, :cond_0

    #@5
    if-gez p1, :cond_1

    #@7
    .line 386
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "nanos > 999999999 or < 0"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 388
    :cond_1
    iput p1, p0, Ljava/sql/Timestamp;->nanos:I

    #@12
    .line 384
    return-void
.end method

.method public setTime(J)V
    .locals 7
    .param p1, "time"    # J

    #@0
    .prologue
    const-wide/16 v4, 0x3e8

    #@2
    .line 127
    div-long v0, p1, v4

    #@4
    mul-long/2addr v0, v4

    #@5
    invoke-super {p0, v0, v1}, Ljava/util/Date;->setTime(J)V

    #@8
    .line 128
    rem-long v0, p1, v4

    #@a
    const-wide/32 v2, 0xf4240

    #@d
    mul-long/2addr v0, v2

    #@e
    long-to-int v0, v0

    #@f
    iput v0, p0, Ljava/sql/Timestamp;->nanos:I

    #@11
    .line 129
    iget v0, p0, Ljava/sql/Timestamp;->nanos:I

    #@13
    if-gez v0, :cond_0

    #@15
    .line 130
    iget v0, p0, Ljava/sql/Timestamp;->nanos:I

    #@17
    const v1, 0x3b9aca00

    #@1a
    add-int/2addr v0, v1

    #@1b
    iput v0, p0, Ljava/sql/Timestamp;->nanos:I

    #@1d
    .line 131
    div-long v0, p1, v4

    #@1f
    const-wide/16 v2, 0x1

    #@21
    sub-long/2addr v0, v2

    #@22
    mul-long/2addr v0, v4

    #@23
    invoke-super {p0, v0, v1}, Ljava/util/Date;->setTime(J)V

    #@26
    .line 126
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 24

    #@0
    .prologue
    .line 276
    invoke-super/range {p0 .. p0}, Ljava/util/Date;->getYear()I

    #@3
    move-result v21

    #@4
    move/from16 v0, v21

    #@6
    add-int/lit16 v0, v0, 0x76c

    #@8
    move/from16 v17, v0

    #@a
    .line 277
    .local v17, "year":I
    invoke-super/range {p0 .. p0}, Ljava/util/Date;->getMonth()I

    #@d
    move-result v21

    #@e
    add-int/lit8 v9, v21, 0x1

    #@10
    .line 278
    .local v9, "month":I
    invoke-super/range {p0 .. p0}, Ljava/util/Date;->getDate()I

    #@13
    move-result v3

    #@14
    .line 279
    .local v3, "day":I
    invoke-super/range {p0 .. p0}, Ljava/util/Date;->getHours()I

    #@17
    move-result v5

    #@18
    .line 280
    .local v5, "hour":I
    invoke-super/range {p0 .. p0}, Ljava/util/Date;->getMinutes()I

    #@1b
    move-result v7

    #@1c
    .line 281
    .local v7, "minute":I
    invoke-super/range {p0 .. p0}, Ljava/util/Date;->getSeconds()I

    #@1f
    move-result v13

    #@20
    .line 289
    .local v13, "second":I
    const-string/jumbo v20, "000000000"

    #@23
    .line 290
    .local v20, "zeros":Ljava/lang/String;
    const-string/jumbo v19, "0000"

    #@26
    .line 293
    .local v19, "yearZeros":Ljava/lang/String;
    const/16 v21, 0x3e8

    #@28
    move/from16 v0, v17

    #@2a
    move/from16 v1, v21

    #@2c
    if-ge v0, v1, :cond_0

    #@2e
    .line 295
    new-instance v21, Ljava/lang/StringBuilder;

    #@30
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v22, ""

    #@36
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v21

    #@3a
    move-object/from16 v0, v21

    #@3c
    move/from16 v1, v17

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v21

    #@42
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v18

    #@46
    .line 296
    .local v18, "yearString":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    #@48
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    #@4e
    move-result v22

    #@4f
    rsub-int/lit8 v22, v22, 0x4

    #@51
    const/16 v23, 0x0

    #@53
    move-object/from16 v0, v19

    #@55
    move/from16 v1, v23

    #@57
    move/from16 v2, v22

    #@59
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5c
    move-result-object v22

    #@5d
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v21

    #@61
    move-object/from16 v0, v21

    #@63
    move-object/from16 v1, v18

    #@65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v21

    #@69
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v18

    #@6d
    .line 301
    :goto_0
    const/16 v21, 0xa

    #@6f
    move/from16 v0, v21

    #@71
    if-ge v9, v0, :cond_1

    #@73
    .line 302
    new-instance v21, Ljava/lang/StringBuilder;

    #@75
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v22, "0"

    #@7b
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v21

    #@7f
    move-object/from16 v0, v21

    #@81
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@84
    move-result-object v21

    #@85
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v10

    #@89
    .line 306
    .local v10, "monthString":Ljava/lang/String;
    :goto_1
    const/16 v21, 0xa

    #@8b
    move/from16 v0, v21

    #@8d
    if-ge v3, v0, :cond_2

    #@8f
    .line 307
    new-instance v21, Ljava/lang/StringBuilder;

    #@91
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    const-string/jumbo v22, "0"

    #@97
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v21

    #@9b
    move-object/from16 v0, v21

    #@9d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v21

    #@a1
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v4

    #@a5
    .line 311
    .local v4, "dayString":Ljava/lang/String;
    :goto_2
    const/16 v21, 0xa

    #@a7
    move/from16 v0, v21

    #@a9
    if-ge v5, v0, :cond_3

    #@ab
    .line 312
    new-instance v21, Ljava/lang/StringBuilder;

    #@ad
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@b0
    const-string/jumbo v22, "0"

    #@b3
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v21

    #@b7
    move-object/from16 v0, v21

    #@b9
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v21

    #@bd
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c0
    move-result-object v6

    #@c1
    .line 316
    .local v6, "hourString":Ljava/lang/String;
    :goto_3
    const/16 v21, 0xa

    #@c3
    move/from16 v0, v21

    #@c5
    if-ge v7, v0, :cond_4

    #@c7
    .line 317
    new-instance v21, Ljava/lang/StringBuilder;

    #@c9
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@cc
    const-string/jumbo v22, "0"

    #@cf
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v21

    #@d3
    move-object/from16 v0, v21

    #@d5
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v21

    #@d9
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dc
    move-result-object v8

    #@dd
    .line 321
    .local v8, "minuteString":Ljava/lang/String;
    :goto_4
    const/16 v21, 0xa

    #@df
    move/from16 v0, v21

    #@e1
    if-ge v13, v0, :cond_5

    #@e3
    .line 322
    new-instance v21, Ljava/lang/StringBuilder;

    #@e5
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@e8
    const-string/jumbo v22, "0"

    #@eb
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v21

    #@ef
    move-object/from16 v0, v21

    #@f1
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v21

    #@f5
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f8
    move-result-object v14

    #@f9
    .line 326
    .local v14, "secondString":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    #@fb
    iget v0, v0, Ljava/sql/Timestamp;->nanos:I

    #@fd
    move/from16 v21, v0

    #@ff
    if-nez v21, :cond_6

    #@101
    .line 327
    const-string/jumbo v12, "0"

    #@104
    .line 347
    .local v12, "nanosString":Ljava/lang/String;
    :goto_6
    new-instance v15, Ljava/lang/StringBuffer;

    #@106
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    #@109
    move-result v21

    #@10a
    add-int/lit8 v21, v21, 0x14

    #@10c
    move/from16 v0, v21

    #@10e
    invoke-direct {v15, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    #@111
    .line 348
    .local v15, "timestampBuf":Ljava/lang/StringBuffer;
    move-object/from16 v0, v18

    #@113
    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@116
    .line 349
    const-string/jumbo v21, "-"

    #@119
    move-object/from16 v0, v21

    #@11b
    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@11e
    .line 350
    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@121
    .line 351
    const-string/jumbo v21, "-"

    #@124
    move-object/from16 v0, v21

    #@126
    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@129
    .line 352
    invoke-virtual {v15, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@12c
    .line 353
    const-string/jumbo v21, " "

    #@12f
    move-object/from16 v0, v21

    #@131
    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@134
    .line 354
    invoke-virtual {v15, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@137
    .line 355
    const-string/jumbo v21, ":"

    #@13a
    move-object/from16 v0, v21

    #@13c
    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@13f
    .line 356
    invoke-virtual {v15, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@142
    .line 357
    const-string/jumbo v21, ":"

    #@145
    move-object/from16 v0, v21

    #@147
    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@14a
    .line 358
    invoke-virtual {v15, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@14d
    .line 359
    const-string/jumbo v21, "."

    #@150
    move-object/from16 v0, v21

    #@152
    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@155
    .line 360
    invoke-virtual {v15, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@158
    .line 362
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@15b
    move-result-object v21

    #@15c
    return-object v21

    #@15d
    .line 299
    .end local v4    # "dayString":Ljava/lang/String;
    .end local v6    # "hourString":Ljava/lang/String;
    .end local v8    # "minuteString":Ljava/lang/String;
    .end local v10    # "monthString":Ljava/lang/String;
    .end local v12    # "nanosString":Ljava/lang/String;
    .end local v14    # "secondString":Ljava/lang/String;
    .end local v15    # "timestampBuf":Ljava/lang/StringBuffer;
    .end local v18    # "yearString":Ljava/lang/String;
    :cond_0
    new-instance v21, Ljava/lang/StringBuilder;

    #@15f
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@162
    const-string/jumbo v22, ""

    #@165
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@168
    move-result-object v21

    #@169
    move-object/from16 v0, v21

    #@16b
    move/from16 v1, v17

    #@16d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@170
    move-result-object v21

    #@171
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@174
    move-result-object v18

    #@175
    .restart local v18    # "yearString":Ljava/lang/String;
    goto/16 :goto_0

    #@177
    .line 304
    :cond_1
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@17a
    move-result-object v10

    #@17b
    .restart local v10    # "monthString":Ljava/lang/String;
    goto/16 :goto_1

    #@17d
    .line 309
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@180
    move-result-object v4

    #@181
    .restart local v4    # "dayString":Ljava/lang/String;
    goto/16 :goto_2

    #@183
    .line 314
    :cond_3
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@186
    move-result-object v6

    #@187
    .restart local v6    # "hourString":Ljava/lang/String;
    goto/16 :goto_3

    #@189
    .line 319
    :cond_4
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@18c
    move-result-object v8

    #@18d
    .restart local v8    # "minuteString":Ljava/lang/String;
    goto/16 :goto_4

    #@18f
    .line 324
    :cond_5
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@192
    move-result-object v14

    #@193
    .restart local v14    # "secondString":Ljava/lang/String;
    goto/16 :goto_5

    #@195
    .line 329
    :cond_6
    move-object/from16 v0, p0

    #@197
    iget v0, v0, Ljava/sql/Timestamp;->nanos:I

    #@199
    move/from16 v21, v0

    #@19b
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@19e
    move-result-object v12

    #@19f
    .line 332
    .restart local v12    # "nanosString":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    #@1a1
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@1a4
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    #@1a7
    move-result v22

    #@1a8
    rsub-int/lit8 v22, v22, 0x9

    #@1aa
    const/16 v23, 0x0

    #@1ac
    move-object/from16 v0, v20

    #@1ae
    move/from16 v1, v23

    #@1b0
    move/from16 v2, v22

    #@1b2
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1b5
    move-result-object v22

    #@1b6
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b9
    move-result-object v21

    #@1ba
    move-object/from16 v0, v21

    #@1bc
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bf
    move-result-object v21

    #@1c0
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c3
    move-result-object v12

    #@1c4
    .line 336
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    #@1c7
    move-result v21

    #@1c8
    move/from16 v0, v21

    #@1ca
    new-array v11, v0, [C

    #@1cc
    .line 337
    .local v11, "nanosChar":[C
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    #@1cf
    move-result v21

    #@1d0
    const/16 v22, 0x0

    #@1d2
    const/16 v23, 0x0

    #@1d4
    move/from16 v0, v22

    #@1d6
    move/from16 v1, v21

    #@1d8
    move/from16 v2, v23

    #@1da
    invoke-virtual {v12, v0, v1, v11, v2}, Ljava/lang/String;->getChars(II[CI)V

    #@1dd
    .line 338
    const/16 v16, 0x8

    #@1df
    .line 339
    .local v16, "truncIndex":I
    :goto_7
    aget-char v21, v11, v16

    #@1e1
    const/16 v22, 0x30

    #@1e3
    move/from16 v0, v21

    #@1e5
    move/from16 v1, v22

    #@1e7
    if-ne v0, v1, :cond_7

    #@1e9
    .line 340
    add-int/lit8 v16, v16, -0x1

    #@1eb
    goto :goto_7

    #@1ec
    .line 343
    :cond_7
    new-instance v12, Ljava/lang/String;

    #@1ee
    .end local v12    # "nanosString":Ljava/lang/String;
    add-int/lit8 v21, v16, 0x1

    #@1f0
    const/16 v22, 0x0

    #@1f2
    move/from16 v0, v22

    #@1f4
    move/from16 v1, v21

    #@1f6
    invoke-direct {v12, v11, v0, v1}, Ljava/lang/String;-><init>([CII)V

    #@1f9
    .restart local v12    # "nanosString":Ljava/lang/String;
    goto/16 :goto_6
.end method
