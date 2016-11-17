.class public Ljava/sql/Date;
.super Ljava/util/Date;
.source "Date.java"


# static fields
.field static final serialVersionUID:J = 0x14fa46683f356697L


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Ljava/util/Date;-><init>(III)V

    #@3
    .line 56
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "date"    # J

    #@0
    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/util/Date;-><init>(J)V

    #@3
    .line 72
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/sql/Date;
    .locals 19
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 109
    const/4 v7, 0x4

    #@1
    .line 110
    .local v7, "YEAR_LENGTH":I
    const/4 v6, 0x2

    #@2
    .line 111
    .local v6, "MONTH_LENGTH":I
    const/4 v3, 0x2

    #@3
    .line 112
    .local v3, "DAY_LENGTH":I
    const/16 v5, 0xc

    #@5
    .line 113
    .local v5, "MAX_MONTH":I
    const/16 v4, 0x1f

    #@7
    .line 116
    .local v4, "MAX_DAY":I
    const/4 v8, 0x0

    #@8
    .line 118
    .local v8, "d":Ljava/sql/Date;
    if-nez p0, :cond_0

    #@a
    .line 119
    new-instance v17, Ljava/lang/IllegalArgumentException;

    #@c
    invoke-direct/range {v17 .. v17}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@f
    throw v17

    #@10
    .line 122
    :cond_0
    const/16 v17, 0x2d

    #@12
    move-object/from16 v0, p0

    #@14
    move/from16 v1, v17

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    #@19
    move-result v11

    #@1a
    .line 123
    .local v11, "firstDash":I
    const/16 v17, 0x2d

    #@1c
    add-int/lit8 v18, v11, 0x1

    #@1e
    move-object/from16 v0, p0

    #@20
    move/from16 v1, v17

    #@22
    move/from16 v2, v18

    #@24
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    #@27
    move-result v14

    #@28
    .line 125
    .local v14, "secondDash":I
    if-lez v11, :cond_1

    #@2a
    if-lez v14, :cond_1

    #@2c
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    #@2f
    move-result v17

    #@30
    add-int/lit8 v17, v17, -0x1

    #@32
    move/from16 v0, v17

    #@34
    if-ge v14, v0, :cond_1

    #@36
    .line 126
    const/16 v17, 0x0

    #@38
    move-object/from16 v0, p0

    #@3a
    move/from16 v1, v17

    #@3c
    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3f
    move-result-object v16

    #@40
    .line 127
    .local v16, "yyyy":Ljava/lang/String;
    add-int/lit8 v17, v11, 0x1

    #@42
    move-object/from16 v0, p0

    #@44
    move/from16 v1, v17

    #@46
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@49
    move-result-object v12

    #@4a
    .line 128
    .local v12, "mm":Ljava/lang/String;
    add-int/lit8 v17, v14, 0x1

    #@4c
    move-object/from16 v0, p0

    #@4e
    move/from16 v1, v17

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@53
    move-result-object v10

    #@54
    .line 129
    .local v10, "dd":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    #@57
    move-result v17

    #@58
    const/16 v18, 0x4

    #@5a
    move/from16 v0, v17

    #@5c
    move/from16 v1, v18

    #@5e
    if-ne v0, v1, :cond_1

    #@60
    .line 130
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    #@63
    move-result v17

    #@64
    const/16 v18, 0x1

    #@66
    move/from16 v0, v17

    #@68
    move/from16 v1, v18

    #@6a
    if-lt v0, v1, :cond_1

    #@6c
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    #@6f
    move-result v17

    #@70
    const/16 v18, 0x2

    #@72
    move/from16 v0, v17

    #@74
    move/from16 v1, v18

    #@76
    if-gt v0, v1, :cond_1

    #@78
    .line 131
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@7b
    move-result v17

    #@7c
    const/16 v18, 0x1

    #@7e
    move/from16 v0, v17

    #@80
    move/from16 v1, v18

    #@82
    if-lt v0, v1, :cond_1

    #@84
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@87
    move-result v17

    #@88
    const/16 v18, 0x2

    #@8a
    move/from16 v0, v17

    #@8c
    move/from16 v1, v18

    #@8e
    if-gt v0, v1, :cond_1

    #@90
    .line 132
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@93
    move-result v15

    #@94
    .line 133
    .local v15, "year":I
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@97
    move-result v13

    #@98
    .line 134
    .local v13, "month":I
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@9b
    move-result v9

    #@9c
    .line 136
    .local v9, "day":I
    const/16 v17, 0x1

    #@9e
    move/from16 v0, v17

    #@a0
    if-lt v13, v0, :cond_1

    #@a2
    const/16 v17, 0xc

    #@a4
    move/from16 v0, v17

    #@a6
    if-gt v13, v0, :cond_1

    #@a8
    const/16 v17, 0x1

    #@aa
    move/from16 v0, v17

    #@ac
    if-lt v9, v0, :cond_1

    #@ae
    const/16 v17, 0x1f

    #@b0
    move/from16 v0, v17

    #@b2
    if-gt v9, v0, :cond_1

    #@b4
    .line 137
    new-instance v8, Ljava/sql/Date;

    #@b6
    .end local v8    # "d":Ljava/sql/Date;
    add-int/lit16 v0, v15, -0x76c

    #@b8
    move/from16 v17, v0

    #@ba
    add-int/lit8 v18, v13, -0x1

    #@bc
    move/from16 v0, v17

    #@be
    move/from16 v1, v18

    #@c0
    invoke-direct {v8, v0, v1, v9}, Ljava/sql/Date;-><init>(III)V

    #@c3
    .line 141
    .end local v9    # "day":I
    .end local v10    # "dd":Ljava/lang/String;
    .end local v12    # "mm":Ljava/lang/String;
    .end local v13    # "month":I
    .end local v15    # "year":I
    .end local v16    # "yyyy":Ljava/lang/String;
    :cond_1
    if-nez v8, :cond_2

    #@c5
    .line 142
    new-instance v17, Ljava/lang/IllegalArgumentException;

    #@c7
    invoke-direct/range {v17 .. v17}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@ca
    throw v17

    #@cb
    .line 145
    :cond_2
    return-object v8
.end method


# virtual methods
.method public getHours()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@5
    throw v0
.end method

.method public getMinutes()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@5
    throw v0
.end method

.method public getSeconds()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@5
    throw v0
.end method

.method public setHours(I)V
    .locals 1
    .param p1, "i"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@5
    throw v0
.end method

.method public setMinutes(I)V
    .locals 1
    .param p1, "i"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 232
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@5
    throw v0
.end method

.method public setSeconds(I)V
    .locals 1
    .param p1, "i"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 244
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@5
    throw v0
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "date"    # J

    #@0
    .prologue
    .line 93
    invoke-super {p0, p1, p2}, Ljava/util/Date;->setTime(J)V

    #@3
    .line 91
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    const/16 v6, 0xa

    #@2
    .line 156
    invoke-super {p0}, Ljava/util/Date;->getYear()I

    #@5
    move-result v4

    #@6
    add-int/lit16 v3, v4, 0x76c

    #@8
    .line 157
    .local v3, "year":I
    invoke-super {p0}, Ljava/util/Date;->getMonth()I

    #@b
    move-result v4

    #@c
    add-int/lit8 v2, v4, 0x1

    #@e
    .line 158
    .local v2, "month":I
    invoke-super {p0}, Ljava/util/Date;->getDate()I

    #@11
    move-result v1

    #@12
    .line 160
    .local v1, "day":I
    const-string/jumbo v4, "2000-00-00"

    #@15
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    #@18
    move-result-object v0

    #@19
    .line 161
    .local v0, "buf":[C
    div-int/lit16 v4, v3, 0x3e8

    #@1b
    invoke-static {v4, v6}, Ljava/lang/Character;->forDigit(II)C

    #@1e
    move-result v4

    #@1f
    const/4 v5, 0x0

    #@20
    aput-char v4, v0, v5

    #@22
    .line 162
    div-int/lit8 v4, v3, 0x64

    #@24
    rem-int/lit8 v4, v4, 0xa

    #@26
    invoke-static {v4, v6}, Ljava/lang/Character;->forDigit(II)C

    #@29
    move-result v4

    #@2a
    const/4 v5, 0x1

    #@2b
    aput-char v4, v0, v5

    #@2d
    .line 163
    div-int/lit8 v4, v3, 0xa

    #@2f
    rem-int/lit8 v4, v4, 0xa

    #@31
    invoke-static {v4, v6}, Ljava/lang/Character;->forDigit(II)C

    #@34
    move-result v4

    #@35
    const/4 v5, 0x2

    #@36
    aput-char v4, v0, v5

    #@38
    .line 164
    rem-int/lit8 v4, v3, 0xa

    #@3a
    invoke-static {v4, v6}, Ljava/lang/Character;->forDigit(II)C

    #@3d
    move-result v4

    #@3e
    const/4 v5, 0x3

    #@3f
    aput-char v4, v0, v5

    #@41
    .line 165
    div-int/lit8 v4, v2, 0xa

    #@43
    invoke-static {v4, v6}, Ljava/lang/Character;->forDigit(II)C

    #@46
    move-result v4

    #@47
    const/4 v5, 0x5

    #@48
    aput-char v4, v0, v5

    #@4a
    .line 166
    rem-int/lit8 v4, v2, 0xa

    #@4c
    invoke-static {v4, v6}, Ljava/lang/Character;->forDigit(II)C

    #@4f
    move-result v4

    #@50
    const/4 v5, 0x6

    #@51
    aput-char v4, v0, v5

    #@53
    .line 167
    div-int/lit8 v4, v1, 0xa

    #@55
    invoke-static {v4, v6}, Ljava/lang/Character;->forDigit(II)C

    #@58
    move-result v4

    #@59
    const/16 v5, 0x8

    #@5b
    aput-char v4, v0, v5

    #@5d
    .line 168
    rem-int/lit8 v4, v1, 0xa

    #@5f
    invoke-static {v4, v6}, Ljava/lang/Character;->forDigit(II)C

    #@62
    move-result v4

    #@63
    const/16 v5, 0x9

    #@65
    aput-char v4, v0, v5

    #@67
    .line 170
    new-instance v4, Ljava/lang/String;

    #@69
    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    #@6c
    return-object v4
.end method
