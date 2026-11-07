.class public Ljava/sql/Timestamp;
.super Ljava/util/Date;
.source "Timestamp.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x2618d5c80153bf65L


# instance fields
.field private greylist-max-o nanos:I


# direct methods
.method public constructor whitelist test-api <init>(IIIIIII)V
    .registers 11
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I
    .param p7, "nano"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 89
    invoke-direct/range {p0 .. p6}, Ljava/util/Date;-><init>(IIIIII)V

    .line 90
    move v0, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "year":I
    .local v0, "second":I
    .local p2, "year":I
    .local p3, "month":I
    .local p4, "date":I
    .local p5, "hour":I
    .local p6, "minute":I
    const v1, 0x3b9ac9ff

    if-gt p7, v1, :cond_14

    if-ltz p7, :cond_14

    .line 93
    iput p7, p1, Ljava/sql/Timestamp;->nanos:I

    .line 94
    return-void

    .line 91
    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "nanos > 999999999 or < 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor whitelist test-api <init>(J)V
    .registers 9
    .param p1, "time"    # J

    .line 109
    const-wide/16 v0, 0x3e8

    div-long v2, p1, v0

    mul-long/2addr v2, v0

    invoke-direct {p0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 110
    rem-long v2, p1, v0

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Ljava/sql/Timestamp;->nanos:I

    .line 111
    iget v2, p0, Ljava/sql/Timestamp;->nanos:I

    if-gez v2, :cond_26

    .line 112
    const v2, 0x3b9aca00

    iget v3, p0, Ljava/sql/Timestamp;->nanos:I

    add-int/2addr v3, v2

    iput v3, p0, Ljava/sql/Timestamp;->nanos:I

    .line 113
    div-long v2, p1, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    mul-long/2addr v2, v0

    invoke-super {p0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 115
    :cond_26
    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/sql/Timestamp;
    .registers 38
    .param p0, "s"    # Ljava/lang/String;

    .line 167
    const/4 v0, 0x4

    .line 168
    .local v0, "YEAR_LENGTH":I
    const/4 v1, 0x2

    .line 169
    .local v1, "MONTH_LENGTH":I
    const/4 v2, 0x2

    .line 170
    .local v2, "DAY_LENGTH":I
    const/16 v3, 0xc

    .line 171
    .local v3, "MAX_MONTH":I
    const/16 v4, 0x1f

    .line 175
    .local v4, "MAX_DAY":I
    const/4 v5, 0x0

    .line 176
    .local v5, "year":I
    const/4 v6, 0x0

    .line 177
    .local v6, "month":I
    const/4 v7, 0x0

    .line 181
    .local v7, "day":I
    const/4 v8, 0x0

    .line 185
    .local v8, "a_nanos":I
    const/4 v9, 0x0

    .line 186
    .local v9, "firstColon":I
    const/4 v10, 0x0

    .line 187
    .local v10, "secondColon":I
    const/4 v11, 0x0

    .line 188
    .local v11, "period":I
    const-string v12, "Timestamp format must be yyyy-mm-dd hh:mm:ss[.fffffffff]"

    .line 189
    .local v12, "formatError":Ljava/lang/String;
    const-string v13, "000000000"

    .line 190
    .local v13, "zeros":Ljava/lang/String;
    const-string v14, "-"

    .line 191
    .local v14, "delimiterDate":Ljava/lang/String;
    const-string v15, ":"

    .line 193
    .local v15, "delimiterTime":Ljava/lang/String;
    if-eqz p0, :cond_1b3

    .line 196
    move/from16 v16, v0

    .end local v0    # "YEAR_LENGTH":I
    .local v16, "YEAR_LENGTH":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 197
    .end local p0    # "s":Ljava/lang/String;
    .local v0, "s":Ljava/lang/String;
    move/from16 v17, v1

    .end local v1    # "MONTH_LENGTH":I
    .local v17, "MONTH_LENGTH":I
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 198
    .local v1, "dividingSpace":I
    if-lez v1, :cond_1ab

    .line 199
    move/from16 v18, v2

    .end local v2    # "DAY_LENGTH":I
    .local v18, "DAY_LENGTH":I
    const/4 v2, 0x0

    move/from16 v19, v3

    .end local v3    # "MAX_MONTH":I
    .local v19, "MAX_MONTH":I
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, "date_s":Ljava/lang/String;
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "time_s":Ljava/lang/String;
    move-object/from16 v20, v0

    .end local v0    # "s":Ljava/lang/String;
    .local v20, "s":Ljava/lang/String;
    const/16 v0, 0x2d

    move/from16 v21, v1

    .end local v1    # "dividingSpace":I
    .local v21, "dividingSpace":I
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 207
    .local v1, "firstDash":I
    move/from16 v22, v4

    .end local v4    # "MAX_DAY":I
    .local v22, "MAX_DAY":I
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 210
    .local v0, "secondDash":I
    if-eqz v2, :cond_1a3

    .line 212
    const/16 v4, 0x3a

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 213
    move/from16 v23, v5

    .end local v5    # "year":I
    .local v23, "year":I
    add-int/lit8 v5, v9, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 214
    .end local v10    # "secondColon":I
    .local v4, "secondColon":I
    add-int/lit8 v5, v4, 0x1

    const/16 v10, 0x2e

    invoke-virtual {v2, v10, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 217
    .end local v11    # "period":I
    .local v5, "period":I
    const/4 v10, 0x0

    .line 218
    .local v10, "parsedDate":Z
    if-lez v1, :cond_cc

    if-lez v0, :cond_cc

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v24

    const/16 v25, 0x1

    add-int/lit8 v11, v24, -0x1

    if-ge v0, v11, :cond_cc

    .line 219
    const/4 v11, 0x0

    invoke-virtual {v3, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 220
    .local v24, "yyyy":Ljava/lang/String;
    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v3, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 221
    .local v11, "mm":Ljava/lang/String;
    move/from16 v26, v0

    .end local v0    # "secondDash":I
    .local v26, "secondDash":I
    add-int/lit8 v0, v26, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "dd":Ljava/lang/String;
    move-object/from16 v27, v0

    .end local v0    # "dd":Ljava/lang/String;
    .local v27, "dd":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v0

    move/from16 v28, v1

    .end local v1    # "firstDash":I
    .local v28, "firstDash":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_d0

    .line 223
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    move/from16 v1, v25

    if-lt v0, v1, :cond_d0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_d0

    .line 224
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_d0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_d0

    .line 225
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 226
    .end local v23    # "year":I
    .local v0, "year":I
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 227
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 229
    const/4 v1, 0x1

    if-lt v6, v1, :cond_c9

    const/16 v1, 0xc

    if-gt v6, v1, :cond_c9

    const/4 v1, 0x1

    if-lt v7, v1, :cond_c9

    const/16 v1, 0x1f

    if-gt v7, v1, :cond_c9

    .line 230
    const/4 v10, 0x1

    move/from16 v32, v7

    goto :goto_d4

    .line 234
    .end local v11    # "mm":Ljava/lang/String;
    .end local v24    # "yyyy":Ljava/lang/String;
    .end local v27    # "dd":Ljava/lang/String;
    :cond_c9
    move/from16 v32, v7

    goto :goto_d4

    .line 218
    .end local v26    # "secondDash":I
    .end local v28    # "firstDash":I
    .local v0, "secondDash":I
    .restart local v1    # "firstDash":I
    .restart local v23    # "year":I
    :cond_cc
    move/from16 v26, v0

    move/from16 v28, v1

    .line 234
    .end local v0    # "secondDash":I
    .end local v1    # "firstDash":I
    .restart local v26    # "secondDash":I
    .restart local v28    # "firstDash":I
    :cond_d0
    move/from16 v32, v7

    move/from16 v0, v23

    .end local v7    # "day":I
    .end local v23    # "year":I
    .local v0, "year":I
    .local v32, "day":I
    :goto_d4
    if-eqz v10, :cond_19d

    .line 239
    if-lez v9, :cond_da

    const/4 v1, 0x1

    goto :goto_db

    :cond_da
    const/4 v1, 0x0

    :goto_db
    if-lez v4, :cond_df

    const/4 v7, 0x1

    goto :goto_e0

    :cond_df
    const/4 v7, 0x0

    :goto_e0
    and-int/2addr v1, v7

    .line 240
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v25, 0x1

    add-int/lit8 v7, v7, -0x1

    if-ge v4, v7, :cond_ed

    const/4 v7, 0x1

    goto :goto_ee

    :cond_ed
    const/4 v7, 0x0

    :goto_ee
    and-int/2addr v1, v7

    if-eqz v1, :cond_197

    .line 241
    const/4 v11, 0x0

    invoke-virtual {v2, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    .line 242
    .local v33, "hour":I
    add-int/lit8 v1, v9, 0x1

    .line 243
    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    .line 244
    .local v34, "minute":I
    if-lez v5, :cond_108

    const/4 v11, 0x1

    goto :goto_109

    :cond_108
    const/4 v11, 0x0

    :goto_109
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v25, 0x1

    add-int/lit8 v1, v1, -0x1

    if-ge v5, v1, :cond_114

    goto :goto_116

    :cond_114
    const/16 v25, 0x0

    :goto_116
    and-int v1, v11, v25

    if-eqz v1, :cond_173

    .line 245
    add-int/lit8 v1, v4, 0x1

    .line 246
    invoke-virtual {v2, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 247
    .local v1, "second":I
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 248
    .local v7, "nanos_s":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    move/from16 v23, v1

    .end local v1    # "second":I
    .local v23, "second":I
    const/16 v1, 0x9

    if-gt v11, v1, :cond_16d

    .line 250
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Ljava/lang/String;->charAt(I)C

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->isDigit(C)Z

    move-result v24

    if-eqz v24, :cond_167

    .line 252
    move/from16 p0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v24

    move-object/from16 v25, v3

    .end local v3    # "date_s":Ljava/lang/String;
    .local v25, "date_s":Ljava/lang/String;
    rsub-int/lit8 v3, v24, 0x9

    invoke-virtual {v13, v11, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 253
    .end local v7    # "nanos_s":Ljava/lang/String;
    .local v1, "nanos_s":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move/from16 v35, v23

    move/from16 v36, v8

    goto :goto_185

    .line 251
    .end local v1    # "nanos_s":Ljava/lang/String;
    .end local v25    # "date_s":Ljava/lang/String;
    .restart local v3    # "date_s":Ljava/lang/String;
    .restart local v7    # "nanos_s":Ljava/lang/String;
    :cond_167
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 249
    :cond_16d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 254
    .end local v7    # "nanos_s":Ljava/lang/String;
    .end local v23    # "second":I
    :cond_173
    move-object/from16 v25, v3

    .end local v3    # "date_s":Ljava/lang/String;
    .restart local v25    # "date_s":Ljava/lang/String;
    if-gtz v5, :cond_191

    .line 257
    add-int/lit8 v1, v4, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v35, v1

    move/from16 v36, v8

    .line 263
    .end local v8    # "a_nanos":I
    .local v35, "second":I
    .local v36, "a_nanos":I
    :goto_185
    new-instance v29, Ljava/sql/Timestamp;

    add-int/lit16 v1, v0, -0x76c

    add-int/lit8 v31, v6, -0x1

    move/from16 v30, v1

    invoke-direct/range {v29 .. v36}, Ljava/sql/Timestamp;-><init>(IIIIIII)V

    return-object v29

    .line 255
    .end local v35    # "second":I
    .end local v36    # "a_nanos":I
    .restart local v8    # "a_nanos":I
    :cond_191
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    .end local v25    # "date_s":Ljava/lang/String;
    .end local v33    # "hour":I
    .end local v34    # "minute":I
    .restart local v3    # "date_s":Ljava/lang/String;
    :cond_197
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :cond_19d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    .end local v4    # "secondColon":I
    .end local v26    # "secondDash":I
    .end local v28    # "firstDash":I
    .end local v32    # "day":I
    .local v0, "secondDash":I
    .local v1, "firstDash":I
    .local v5, "year":I
    .local v7, "day":I
    .local v10, "secondColon":I
    .local v11, "period":I
    :cond_1a3
    move/from16 v26, v0

    .end local v0    # "secondDash":I
    .restart local v26    # "secondDash":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    .end local v18    # "DAY_LENGTH":I
    .end local v19    # "MAX_MONTH":I
    .end local v20    # "s":Ljava/lang/String;
    .end local v21    # "dividingSpace":I
    .end local v22    # "MAX_DAY":I
    .end local v26    # "secondDash":I
    .local v0, "s":Ljava/lang/String;
    .local v1, "dividingSpace":I
    .local v2, "DAY_LENGTH":I
    .local v3, "MAX_MONTH":I
    .local v4, "MAX_DAY":I
    :cond_1ab
    move-object/from16 v20, v0

    .end local v0    # "s":Ljava/lang/String;
    .restart local v20    # "s":Ljava/lang/String;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    .end local v16    # "YEAR_LENGTH":I
    .end local v17    # "MONTH_LENGTH":I
    .end local v20    # "s":Ljava/lang/String;
    .local v0, "YEAR_LENGTH":I
    .local v1, "MONTH_LENGTH":I
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1b3
    move/from16 v16, v0

    move/from16 v17, v1

    .end local v0    # "YEAR_LENGTH":I
    .end local v1    # "MONTH_LENGTH":I
    .restart local v16    # "YEAR_LENGTH":I
    .restart local v17    # "MONTH_LENGTH":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api after(Ljava/sql/Timestamp;)Z
    .registers 3
    .param p1, "ts"    # Ljava/sql/Timestamp;

    .line 459
    invoke-virtual {p0, p1}, Ljava/sql/Timestamp;->compareTo(Ljava/sql/Timestamp;)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api before(Ljava/sql/Timestamp;)Z
    .registers 3
    .param p1, "ts"    # Ljava/sql/Timestamp;

    .line 447
    invoke-virtual {p0, p1}, Ljava/sql/Timestamp;->compareTo(Ljava/sql/Timestamp;)I

    move-result v0

    if-gez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 70
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1}, Ljava/sql/Timestamp;->compareTo(Ljava/util/Date;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api compareTo(Ljava/sql/Timestamp;)I
    .registers 11
    .param p1, "ts"    # Ljava/sql/Timestamp;

    .line 476
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v0

    .line 477
    .local v0, "thisTime":J
    invoke-virtual {p1}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    .line 478
    .local v2, "anotherTime":J
    cmp-long v4, v0, v2

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-gez v4, :cond_10

    move v4, v6

    goto :goto_17

    :cond_10
    cmp-long v4, v0, v2

    if-nez v4, :cond_16

    const/4 v4, 0x0

    goto :goto_17

    :cond_16
    move v4, v5

    .line 479
    .local v4, "i":I
    :goto_17
    if-nez v4, :cond_27

    .line 480
    iget v7, p0, Ljava/sql/Timestamp;->nanos:I

    iget v8, p1, Ljava/sql/Timestamp;->nanos:I

    if-le v7, v8, :cond_20

    .line 481
    return v5

    .line 482
    :cond_20
    iget v5, p0, Ljava/sql/Timestamp;->nanos:I

    iget v7, p1, Ljava/sql/Timestamp;->nanos:I

    if-ge v5, v7, :cond_27

    .line 483
    return v6

    .line 486
    :cond_27
    return v4
.end method

.method public whitelist test-api compareTo(Ljava/util/Date;)I
    .registers 5
    .param p1, "o"    # Ljava/util/Date;

    .line 505
    instance-of v0, p1, Ljava/sql/Timestamp;

    if-eqz v0, :cond_c

    .line 509
    move-object v0, p1

    check-cast v0, Ljava/sql/Timestamp;

    invoke-virtual {p0, v0}, Ljava/sql/Timestamp;->compareTo(Ljava/sql/Timestamp;)I

    move-result v0

    return v0

    .line 513
    :cond_c
    new-instance v0, Ljava/sql/Timestamp;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    .line 514
    .local v0, "ts":Ljava/sql/Timestamp;
    invoke-virtual {p0, v0}, Ljava/sql/Timestamp;->compareTo(Ljava/sql/Timestamp;)I

    move-result v1

    return v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "ts"    # Ljava/lang/Object;

    .line 431
    instance-of v0, p1, Ljava/sql/Timestamp;

    if-eqz v0, :cond_c

    .line 432
    move-object v0, p1

    check-cast v0, Ljava/sql/Timestamp;

    invoke-virtual {p0, v0}, Ljava/sql/Timestamp;->equals(Ljava/sql/Timestamp;)Z

    move-result v0

    return v0

    .line 434
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/sql/Timestamp;)Z
    .registers 5
    .param p1, "ts"    # Ljava/sql/Timestamp;

    .line 401
    invoke-super {p0, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 402
    iget v0, p0, Ljava/sql/Timestamp;->nanos:I

    iget v2, p1, Ljava/sql/Timestamp;->nanos:I

    if-ne v0, v2, :cond_f

    .line 403
    const/4 v0, 0x1

    return v0

    .line 405
    :cond_f
    return v1

    .line 408
    :cond_10
    return v1
.end method

.method public whitelist test-api getNanos()I
    .registers 2

    .line 372
    iget v0, p0, Ljava/sql/Timestamp;->nanos:I

    return v0
.end method

.method public whitelist test-api getTime()J
    .registers 5

    .line 144
    invoke-super {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 145
    .local v0, "time":J
    iget v2, p0, Ljava/sql/Timestamp;->nanos:I

    const v3, 0xf4240

    div-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 527
    invoke-super {p0}, Ljava/util/Date;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api setNanos(I)V
    .registers 4
    .param p1, "n"    # I

    .line 385
    const v0, 0x3b9ac9ff

    if-gt p1, v0, :cond_a

    if-ltz p1, :cond_a

    .line 388
    iput p1, p0, Ljava/sql/Timestamp;->nanos:I

    .line 389
    return-void

    .line 386
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nanos > 999999999 or < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setTime(J)V
    .registers 9
    .param p1, "time"    # J

    .line 127
    const-wide/16 v0, 0x3e8

    div-long v2, p1, v0

    mul-long/2addr v2, v0

    invoke-super {p0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 128
    rem-long v2, p1, v0

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Ljava/sql/Timestamp;->nanos:I

    .line 129
    iget v2, p0, Ljava/sql/Timestamp;->nanos:I

    if-gez v2, :cond_26

    .line 130
    const v2, 0x3b9aca00

    iget v3, p0, Ljava/sql/Timestamp;->nanos:I

    add-int/2addr v3, v2

    iput v3, p0, Ljava/sql/Timestamp;->nanos:I

    .line 131
    div-long v2, p1, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    mul-long/2addr v2, v0

    invoke-super {p0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 133
    :cond_26
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 21

    .line 276
    move-object/from16 v0, p0

    invoke-super {v0}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    .line 277
    .local v1, "year":I
    invoke-super {v0}, Ljava/util/Date;->getMonth()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 278
    .local v2, "month":I
    invoke-super {v0}, Ljava/util/Date;->getDate()I

    move-result v3

    .line 279
    .local v3, "day":I
    invoke-super {v0}, Ljava/util/Date;->getHours()I

    move-result v4

    .line 280
    .local v4, "hour":I
    invoke-super {v0}, Ljava/util/Date;->getMinutes()I

    move-result v5

    .line 281
    .local v5, "minute":I
    invoke-super {v0}, Ljava/util/Date;->getSeconds()I

    move-result v6

    .line 289
    .local v6, "second":I
    const-string v7, "000000000"

    .line 290
    .local v7, "zeros":Ljava/lang/String;
    const-string v8, "0000"

    .line 293
    .local v8, "yearZeros":Ljava/lang/String;
    const/16 v9, 0x3e8

    const-string v10, ""

    const/4 v11, 0x0

    if-ge v1, v9, :cond_56

    .line 295
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 296
    .local v9, "yearString":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    rsub-int/lit8 v12, v12, 0x4

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_67

    .line 299
    .end local v9    # "yearString":Ljava/lang/String;
    :cond_56
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 301
    .restart local v9    # "yearString":Ljava/lang/String;
    :goto_67
    const-string v10, "0"

    const/16 v12, 0xa

    if-ge v2, v12, :cond_7f

    .line 302
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .local v13, "monthString":Ljava/lang/String;
    goto :goto_83

    .line 304
    .end local v13    # "monthString":Ljava/lang/String;
    :cond_7f
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    .line 306
    .restart local v13    # "monthString":Ljava/lang/String;
    :goto_83
    if-ge v3, v12, :cond_97

    .line 307
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .local v14, "dayString":Ljava/lang/String;
    goto :goto_9b

    .line 309
    .end local v14    # "dayString":Ljava/lang/String;
    :cond_97
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    .line 311
    .restart local v14    # "dayString":Ljava/lang/String;
    :goto_9b
    if-ge v4, v12, :cond_af

    .line 312
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .local v15, "hourString":Ljava/lang/String;
    goto :goto_b3

    .line 314
    .end local v15    # "hourString":Ljava/lang/String;
    :cond_af
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 316
    .restart local v15    # "hourString":Ljava/lang/String;
    :goto_b3
    if-ge v5, v12, :cond_c7

    .line 317
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .local v11, "minuteString":Ljava/lang/String;
    goto :goto_cb

    .line 319
    .end local v11    # "minuteString":Ljava/lang/String;
    :cond_c7
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 321
    .restart local v11    # "minuteString":Ljava/lang/String;
    :goto_cb
    if-ge v6, v12, :cond_df

    .line 322
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .local v10, "secondString":Ljava/lang/String;
    goto :goto_e3

    .line 324
    .end local v10    # "secondString":Ljava/lang/String;
    :cond_df
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 326
    .restart local v10    # "secondString":Ljava/lang/String;
    :goto_e3
    iget v12, v0, Ljava/sql/Timestamp;->nanos:I

    if-nez v12, :cond_ee

    .line 327
    const-string v12, "0"

    move/from16 v17, v1

    move/from16 v16, v2

    .local v12, "nanosString":Ljava/lang/String;
    goto :goto_13b

    .line 329
    .end local v12    # "nanosString":Ljava/lang/String;
    :cond_ee
    iget v12, v0, Ljava/sql/Timestamp;->nanos:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 332
    .restart local v12    # "nanosString":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v17, v1

    .end local v1    # "year":I
    .local v17, "year":I
    rsub-int/lit8 v1, v16, 0x9

    move/from16 v16, v2

    const/4 v2, 0x0

    .end local v2    # "month":I
    .local v16, "month":I
    invoke-virtual {v7, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 336
    .end local v12    # "nanosString":Ljava/lang/String;
    .local v0, "nanosString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [C

    .line 337
    .local v1, "nanosChar":[C
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v0, v2, v12, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 338
    const/16 v2, 0x8

    .line 339
    .local v2, "truncIndex":I
    :goto_123
    aget-char v12, v1, v2

    move-object/from16 v18, v0

    .end local v0    # "nanosString":Ljava/lang/String;
    .local v18, "nanosString":Ljava/lang/String;
    const/16 v0, 0x30

    if-ne v12, v0, :cond_130

    .line 340
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v18

    goto :goto_123

    .line 343
    :cond_130
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v12, v2, 0x1

    move/from16 v19, v2

    const/4 v2, 0x0

    .end local v2    # "truncIndex":I
    .local v19, "truncIndex":I
    invoke-direct {v0, v1, v2, v12}, Ljava/lang/String;-><init>([CII)V

    move-object v12, v0

    .line 347
    .end local v1    # "nanosChar":[C
    .end local v18    # "nanosString":Ljava/lang/String;
    .end local v19    # "truncIndex":I
    .restart local v12    # "nanosString":Ljava/lang/String;
    :goto_13b
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 348
    .local v0, "timestampBuf":Ljava/lang/StringBuffer;
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 349
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 350
    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 352
    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 354
    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 359
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
