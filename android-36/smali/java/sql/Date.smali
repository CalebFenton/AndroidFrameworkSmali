.class public Ljava/sql/Date;
.super Ljava/util/Date;
.source "Date.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x14fa46683f356697L


# direct methods
.method public constructor whitelist test-api <init>(III)V
    .registers 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2, p3}, Ljava/util/Date;-><init>(III)V

    .line 59
    return-void
.end method

.method public constructor whitelist test-api <init>(J)V
    .registers 3
    .param p1, "date"    # J

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 77
    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/sql/Date;
    .registers 18
    .param p0, "s"    # Ljava/lang/String;

    .line 110
    move-object/from16 v0, p0

    const/4 v1, 0x4

    .line 111
    .local v1, "YEAR_LENGTH":I
    const/4 v2, 0x2

    .line 112
    .local v2, "MONTH_LENGTH":I
    const/4 v3, 0x2

    .line 113
    .local v3, "DAY_LENGTH":I
    const/16 v4, 0xc

    .line 114
    .local v4, "MAX_MONTH":I
    const/16 v5, 0x1f

    .line 117
    .local v5, "MAX_DAY":I
    const/4 v6, 0x0

    .line 119
    .local v6, "d":Ljava/sql/Date;
    if-eqz v0, :cond_92

    .line 123
    const/16 v7, 0x2d

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 124
    .local v8, "firstDash":I
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 126
    .local v7, "secondDash":I
    if-lez v8, :cond_87

    if-lez v7, :cond_87

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    if-ge v7, v9, :cond_87

    .line 127
    const/4 v9, 0x0

    invoke-virtual {v0, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 128
    .local v9, "yyyy":Ljava/lang/String;
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v0, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 129
    .local v11, "mm":Ljava/lang/String;
    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 130
    .local v12, "dd":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x4

    if-ne v13, v14, :cond_84

    .line 131
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-lt v13, v10, :cond_81

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x2

    if-gt v13, v14, :cond_81

    .line 132
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-lt v13, v10, :cond_7e

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-gt v13, v14, :cond_7e

    .line 133
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 134
    .local v13, "year":I
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 135
    .local v14, "month":I
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 137
    .local v15, "day":I
    if-lt v14, v10, :cond_7b

    const/16 v10, 0xc

    if-gt v14, v10, :cond_7b

    const/4 v10, 0x1

    if-lt v15, v10, :cond_7b

    const/16 v10, 0x1f

    if-gt v15, v10, :cond_7b

    .line 138
    new-instance v10, Ljava/sql/Date;

    add-int/lit16 v0, v13, -0x76c

    move/from16 v16, v1

    .end local v1    # "YEAR_LENGTH":I
    .local v16, "YEAR_LENGTH":I
    add-int/lit8 v1, v14, -0x1

    invoke-direct {v10, v0, v1, v15}, Ljava/sql/Date;-><init>(III)V

    move-object v6, v10

    goto :goto_89

    .line 137
    .end local v16    # "YEAR_LENGTH":I
    .restart local v1    # "YEAR_LENGTH":I
    :cond_7b
    move/from16 v16, v1

    .end local v1    # "YEAR_LENGTH":I
    .restart local v16    # "YEAR_LENGTH":I
    goto :goto_89

    .line 132
    .end local v13    # "year":I
    .end local v14    # "month":I
    .end local v15    # "day":I
    .end local v16    # "YEAR_LENGTH":I
    .restart local v1    # "YEAR_LENGTH":I
    :cond_7e
    move/from16 v16, v1

    .end local v1    # "YEAR_LENGTH":I
    .restart local v16    # "YEAR_LENGTH":I
    goto :goto_89

    .line 131
    .end local v16    # "YEAR_LENGTH":I
    .restart local v1    # "YEAR_LENGTH":I
    :cond_81
    move/from16 v16, v1

    .end local v1    # "YEAR_LENGTH":I
    .restart local v16    # "YEAR_LENGTH":I
    goto :goto_89

    .line 130
    .end local v16    # "YEAR_LENGTH":I
    .restart local v1    # "YEAR_LENGTH":I
    :cond_84
    move/from16 v16, v1

    .end local v1    # "YEAR_LENGTH":I
    .restart local v16    # "YEAR_LENGTH":I
    goto :goto_89

    .line 126
    .end local v9    # "yyyy":Ljava/lang/String;
    .end local v11    # "mm":Ljava/lang/String;
    .end local v12    # "dd":Ljava/lang/String;
    .end local v16    # "YEAR_LENGTH":I
    .restart local v1    # "YEAR_LENGTH":I
    :cond_87
    move/from16 v16, v1

    .line 142
    .end local v1    # "YEAR_LENGTH":I
    .restart local v16    # "YEAR_LENGTH":I
    :goto_89
    if-eqz v6, :cond_8c

    .line 146
    return-object v6

    .line 143
    :cond_8c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 120
    .end local v7    # "secondDash":I
    .end local v8    # "firstDash":I
    .end local v16    # "YEAR_LENGTH":I
    .restart local v1    # "YEAR_LENGTH":I
    :cond_92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api getHours()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getMinutes()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getSeconds()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setHours(I)V
    .registers 3
    .param p1, "i"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 229
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setMinutes(I)V
    .registers 3
    .param p1, "i"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 243
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setSeconds(I)V
    .registers 3
    .param p1, "i"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 257
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setTime(J)V
    .registers 3
    .param p1, "date"    # J

    .line 94
    invoke-super {p0, p1, p2}, Ljava/util/Date;->setTime(J)V

    .line 95
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 9

    .line 157
    invoke-super {p0}, Ljava/util/Date;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x76c

    .line 158
    .local v0, "year":I
    invoke-super {p0}, Ljava/util/Date;->getMonth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 159
    .local v1, "month":I
    invoke-super {p0}, Ljava/util/Date;->getDate()I

    move-result v3

    .line 161
    .local v3, "day":I
    const-string v4, "2000-00-00"

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 162
    .local v4, "buf":[C
    div-int/lit16 v5, v0, 0x3e8

    const/16 v6, 0xa

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    const/4 v7, 0x0

    aput-char v5, v4, v7

    .line 163
    div-int/lit8 v5, v0, 0x64

    rem-int/2addr v5, v6

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    aput-char v5, v4, v2

    .line 164
    div-int/lit8 v2, v0, 0xa

    rem-int/2addr v2, v6

    invoke-static {v2, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    const/4 v5, 0x2

    aput-char v2, v4, v5

    .line 165
    rem-int/lit8 v2, v0, 0xa

    invoke-static {v2, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    const/4 v5, 0x3

    aput-char v2, v4, v5

    .line 166
    div-int/lit8 v2, v1, 0xa

    invoke-static {v2, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    const/4 v5, 0x5

    aput-char v2, v4, v5

    .line 167
    rem-int/lit8 v2, v1, 0xa

    invoke-static {v2, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    const/4 v5, 0x6

    aput-char v2, v4, v5

    .line 168
    div-int/lit8 v2, v3, 0xa

    invoke-static {v2, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    const/16 v5, 0x8

    aput-char v2, v4, v5

    .line 169
    rem-int/lit8 v2, v3, 0xa

    invoke-static {v2, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    const/16 v5, 0x9

    aput-char v2, v4, v5

    .line 171
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method
