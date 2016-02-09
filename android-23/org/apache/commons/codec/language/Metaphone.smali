.class public Lorg/apache/commons/codec/language/Metaphone;
.super Ljava/lang/Object;
.source "Metaphone.java"

# interfaces
.implements Lorg/apache/commons/codec/StringEncoder;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private frontv:Ljava/lang/String;

.field private maxCodeLen:I

.field private varson:Ljava/lang/String;

.field private vowels:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    const-string/jumbo v0, "AEIOU"

    #@6
    iput-object v0, p0, Lorg/apache/commons/codec/language/Metaphone;->vowels:Ljava/lang/String;

    #@8
    .line 51
    const-string/jumbo v0, "EIY"

    #@b
    iput-object v0, p0, Lorg/apache/commons/codec/language/Metaphone;->frontv:Ljava/lang/String;

    #@d
    .line 56
    const-string/jumbo v0, "CSPTG"

    #@10
    iput-object v0, p0, Lorg/apache/commons/codec/language/Metaphone;->varson:Ljava/lang/String;

    #@12
    .line 61
    const/4 v0, 0x4

    #@13
    iput v0, p0, Lorg/apache/commons/codec/language/Metaphone;->maxCodeLen:I

    #@15
    .line 66
    return-void
.end method

.method private isLastChar(II)Z
    .locals 1
    .param p1, "wdsz"    # I
    .param p2, "n"    # I

    #@0
    .prologue
    .line 347
    add-int/lit8 v0, p2, 0x1

    #@2
    if-ne v0, p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method private isNextChar(Ljava/lang/StringBuffer;IC)Z
    .locals 2
    .param p1, "string"    # Ljava/lang/StringBuffer;
    .param p2, "index"    # I
    .param p3, "c"    # C

    #@0
    .prologue
    .line 328
    const/4 v0, 0x0

    #@1
    .line 329
    .local v0, "matches":Z
    if-ltz p2, :cond_0

    #@3
    .line 330
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    #@6
    move-result v1

    #@7
    add-int/lit8 v1, v1, -0x1

    #@9
    if-ge p2, v1, :cond_0

    #@b
    .line 331
    add-int/lit8 v1, p2, 0x1

    #@d
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    #@10
    move-result v1

    #@11
    if-ne v1, p3, :cond_1

    #@13
    const/4 v0, 0x1

    #@14
    .line 333
    :cond_0
    :goto_0
    return v0

    #@15
    .line 331
    :cond_1
    const/4 v0, 0x0

    #@16
    goto :goto_0
.end method

.method private isPreviousChar(Ljava/lang/StringBuffer;IC)Z
    .locals 2
    .param p1, "string"    # Ljava/lang/StringBuffer;
    .param p2, "index"    # I
    .param p3, "c"    # C

    #@0
    .prologue
    .line 319
    const/4 v0, 0x0

    #@1
    .line 320
    .local v0, "matches":Z
    if-lez p2, :cond_0

    #@3
    .line 321
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    #@6
    move-result v1

    #@7
    if-ge p2, v1, :cond_0

    #@9
    .line 322
    add-int/lit8 v1, p2, -0x1

    #@b
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    #@e
    move-result v1

    #@f
    if-ne v1, p3, :cond_1

    #@11
    const/4 v0, 0x1

    #@12
    .line 324
    :cond_0
    :goto_0
    return v0

    #@13
    .line 322
    :cond_1
    const/4 v0, 0x0

    #@14
    goto :goto_0
.end method

.method private isVowel(Ljava/lang/StringBuffer;I)Z
    .locals 3
    .param p1, "string"    # Ljava/lang/StringBuffer;
    .param p2, "index"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 315
    iget-object v1, p0, Lorg/apache/commons/codec/language/Metaphone;->vowels:Ljava/lang/String;

    #@3
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->charAt(I)C

    #@6
    move-result v2

    #@7
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    #@a
    move-result v1

    #@b
    if-ltz v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method private regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z
    .locals 4
    .param p1, "string"    # Ljava/lang/StringBuffer;
    .param p2, "index"    # I
    .param p3, "test"    # Ljava/lang/String;

    #@0
    .prologue
    .line 337
    const/4 v0, 0x0

    #@1
    .line 338
    .local v0, "matches":Z
    if-ltz p2, :cond_0

    #@3
    .line 339
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@6
    move-result v2

    #@7
    add-int/2addr v2, p2

    #@8
    add-int/lit8 v2, v2, -0x1

    #@a
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    #@d
    move-result v3

    #@e
    if-ge v2, v3, :cond_0

    #@10
    .line 340
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@13
    move-result v2

    #@14
    add-int/2addr v2, p2

    #@15
    invoke-virtual {p1, p2, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    .line 341
    .local v1, "substring":Ljava/lang/String;
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v0

    #@1d
    .line 343
    .end local v0    # "matches":Z
    .end local v1    # "substring":Ljava/lang/String;
    :cond_0
    return v0
.end method


# virtual methods
.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    #@0
    .prologue
    .line 364
    instance-of v0, p1, Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 365
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    #@6
    const-string/jumbo v1, "Parameter supplied to Metaphone encode is not of type java.lang.String"

    #@9
    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 367
    :cond_0
    check-cast p1, Ljava/lang/String;

    #@f
    .end local p1    # "pObject":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 377
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getMaxCodeLen()I
    .locals 1

    #@0
    .prologue
    .line 396
    iget v0, p0, Lorg/apache/commons/codec/language/Metaphone;->maxCodeLen:I

    #@2
    return v0
.end method

.method public isMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "str1"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;

    #@0
    .prologue
    .line 389
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p2}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public metaphone(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "txt"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v13, 0x4b

    #@2
    const/16 v12, 0x53

    #@4
    const/16 v11, 0x48

    #@6
    const/4 v10, 0x1

    #@7
    const/4 v9, 0x0

    #@8
    .line 81
    const/4 v1, 0x0

    #@9
    .line 82
    .local v1, "hard":Z
    if-eqz p1, :cond_0

    #@b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@e
    move-result v7

    #@f
    if-nez v7, :cond_1

    #@11
    .line 83
    :cond_0
    const-string/jumbo v7, ""

    #@14
    return-object v7

    #@15
    .line 86
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@18
    move-result v7

    #@19
    if-ne v7, v10, :cond_2

    #@1b
    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@1e
    move-result-object v7

    #@1f
    return-object v7

    #@20
    .line 90
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@23
    move-result-object v7

    #@24
    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    #@27
    move-result-object v2

    #@28
    .line 92
    .local v2, "inwd":[C
    new-instance v3, Ljava/lang/StringBuffer;

    #@2a
    const/16 v7, 0x28

    #@2c
    invoke-direct {v3, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    #@2f
    .line 93
    .local v3, "local":Ljava/lang/StringBuffer;
    new-instance v0, Ljava/lang/StringBuffer;

    #@31
    const/16 v7, 0xa

    #@33
    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    #@36
    .line 95
    .local v0, "code":Ljava/lang/StringBuffer;
    aget-char v7, v2, v9

    #@38
    sparse-switch v7, :sswitch_data_0

    #@3b
    .line 129
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    #@3e
    .line 132
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    #@41
    move-result v6

    #@42
    .line 133
    .local v6, "wdsz":I
    const/4 v4, 0x0

    #@43
    .line 135
    .local v4, "n":I
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    #@46
    move-result v7

    #@47
    invoke-virtual {p0}, Lorg/apache/commons/codec/language/Metaphone;->getMaxCodeLen()I

    #@4a
    move-result v8

    #@4b
    if-ge v7, v8, :cond_21

    #@4d
    .line 136
    if-ge v4, v6, :cond_21

    #@4f
    .line 137
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    #@52
    move-result v5

    #@53
    .line 139
    .local v5, "symb":C
    const/16 v7, 0x43

    #@55
    if-eq v5, v7, :cond_8

    #@57
    invoke-direct {p0, v3, v4, v5}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    #@5a
    move-result v7

    #@5b
    if-eqz v7, :cond_8

    #@5d
    .line 140
    add-int/lit8 v4, v4, 0x1

    #@5f
    .line 307
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    #@62
    move-result v7

    #@63
    invoke-virtual {p0}, Lorg/apache/commons/codec/language/Metaphone;->getMaxCodeLen()I

    #@66
    move-result v8

    #@67
    if-le v7, v8, :cond_3

    #@69
    .line 308
    invoke-virtual {p0}, Lorg/apache/commons/codec/language/Metaphone;->getMaxCodeLen()I

    #@6c
    move-result v7

    #@6d
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    #@70
    goto :goto_1

    #@71
    .line 99
    .end local v4    # "n":I
    .end local v5    # "symb":C
    .end local v6    # "wdsz":I
    :sswitch_0
    aget-char v7, v2, v10

    #@73
    const/16 v8, 0x4e

    #@75
    if-ne v7, v8, :cond_4

    #@77
    .line 100
    array-length v7, v2

    #@78
    add-int/lit8 v7, v7, -0x1

    #@7a
    invoke-virtual {v3, v2, v10, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    #@7d
    goto :goto_0

    #@7e
    .line 102
    :cond_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    #@81
    goto :goto_0

    #@82
    .line 106
    :sswitch_1
    aget-char v7, v2, v10

    #@84
    const/16 v8, 0x45

    #@86
    if-ne v7, v8, :cond_5

    #@88
    .line 107
    array-length v7, v2

    #@89
    add-int/lit8 v7, v7, -0x1

    #@8b
    invoke-virtual {v3, v2, v10, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    #@8e
    goto :goto_0

    #@8f
    .line 109
    :cond_5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    #@92
    goto :goto_0

    #@93
    .line 113
    :sswitch_2
    aget-char v7, v2, v10

    #@95
    const/16 v8, 0x52

    #@97
    if-ne v7, v8, :cond_6

    #@99
    .line 114
    array-length v7, v2

    #@9a
    add-int/lit8 v7, v7, -0x1

    #@9c
    invoke-virtual {v3, v2, v10, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    #@9f
    goto :goto_0

    #@a0
    .line 117
    :cond_6
    aget-char v7, v2, v10

    #@a2
    if-ne v7, v11, :cond_7

    #@a4
    .line 118
    array-length v7, v2

    #@a5
    add-int/lit8 v7, v7, -0x1

    #@a7
    invoke-virtual {v3, v2, v10, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    #@aa
    .line 119
    const/16 v7, 0x57

    #@ac
    invoke-virtual {v3, v9, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    #@af
    goto :goto_0

    #@b0
    .line 121
    :cond_7
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    #@b3
    goto :goto_0

    #@b4
    .line 125
    :sswitch_3
    aput-char v12, v2, v9

    #@b6
    .line 126
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    #@b9
    goto :goto_0

    #@ba
    .line 142
    .restart local v4    # "n":I
    .restart local v5    # "symb":C
    .restart local v6    # "wdsz":I
    :cond_8
    packed-switch v5, :pswitch_data_0

    #@bd
    .line 305
    :cond_9
    :goto_3
    add-int/lit8 v4, v4, 0x1

    #@bf
    goto :goto_2

    #@c0
    .line 144
    :pswitch_0
    if-nez v4, :cond_9

    #@c2
    .line 145
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@c5
    goto :goto_3

    #@c6
    .line 149
    :pswitch_1
    const/16 v7, 0x4d

    #@c8
    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    #@cb
    move-result v7

    #@cc
    if-eqz v7, :cond_a

    #@ce
    .line 150
    invoke-direct {p0, v6, v4}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    #@d1
    move-result v7

    #@d2
    .line 149
    if-nez v7, :cond_9

    #@d4
    .line 153
    :cond_a
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@d7
    goto :goto_3

    #@d8
    .line 157
    :pswitch_2
    invoke-direct {p0, v3, v4, v12}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    #@db
    move-result v7

    #@dc
    if-eqz v7, :cond_b

    #@de
    .line 158
    invoke-direct {p0, v6, v4}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    #@e1
    move-result v7

    #@e2
    if-eqz v7, :cond_c

    #@e4
    .line 162
    :cond_b
    const-string/jumbo v7, "CIA"

    #@e7
    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    #@ea
    move-result v7

    #@eb
    if-eqz v7, :cond_d

    #@ed
    .line 163
    const/16 v7, 0x58

    #@ef
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@f2
    goto :goto_3

    #@f3
    .line 159
    :cond_c
    iget-object v7, p0, Lorg/apache/commons/codec/language/Metaphone;->frontv:Ljava/lang/String;

    #@f5
    add-int/lit8 v8, v4, 0x1

    #@f7
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    #@fa
    move-result v8

    #@fb
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    #@fe
    move-result v7

    #@ff
    if-ltz v7, :cond_b

    #@101
    goto :goto_3

    #@102
    .line 166
    :cond_d
    invoke-direct {p0, v6, v4}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    #@105
    move-result v7

    #@106
    if-nez v7, :cond_e

    #@108
    .line 167
    iget-object v7, p0, Lorg/apache/commons/codec/language/Metaphone;->frontv:Ljava/lang/String;

    #@10a
    add-int/lit8 v8, v4, 0x1

    #@10c
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    #@10f
    move-result v8

    #@110
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    #@113
    move-result v7

    #@114
    if-ltz v7, :cond_e

    #@116
    .line 168
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@119
    goto :goto_3

    #@11a
    .line 171
    :cond_e
    invoke-direct {p0, v3, v4, v12}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    #@11d
    move-result v7

    #@11e
    if-eqz v7, :cond_f

    #@120
    .line 172
    invoke-direct {p0, v3, v4, v11}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    #@123
    move-result v7

    #@124
    .line 171
    if-eqz v7, :cond_f

    #@126
    .line 173
    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@129
    goto :goto_3

    #@12a
    .line 176
    :cond_f
    invoke-direct {p0, v3, v4, v11}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    #@12d
    move-result v7

    #@12e
    if-eqz v7, :cond_11

    #@130
    .line 177
    if-nez v4, :cond_10

    #@132
    .line 178
    const/4 v7, 0x3

    #@133
    if-lt v6, v7, :cond_10

    #@135
    .line 179
    const/4 v7, 0x2

    #@136
    invoke-direct {p0, v3, v7}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuffer;I)Z

    #@139
    move-result v7

    #@13a
    .line 177
    if-eqz v7, :cond_10

    #@13c
    .line 180
    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@13f
    goto/16 :goto_3

    #@141
    .line 182
    :cond_10
    const/16 v7, 0x58

    #@143
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@146
    goto/16 :goto_3

    #@148
    .line 185
    :cond_11
    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@14b
    goto/16 :goto_3

    #@14d
    .line 189
    :pswitch_3
    add-int/lit8 v7, v4, 0x1

    #@14f
    invoke-direct {p0, v6, v7}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    #@152
    move-result v7

    #@153
    if-nez v7, :cond_12

    #@155
    .line 190
    const/16 v7, 0x47

    #@157
    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    #@15a
    move-result v7

    #@15b
    .line 189
    if-eqz v7, :cond_12

    #@15d
    .line 191
    iget-object v7, p0, Lorg/apache/commons/codec/language/Metaphone;->frontv:Ljava/lang/String;

    #@15f
    add-int/lit8 v8, v4, 0x2

    #@161
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    #@164
    move-result v8

    #@165
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    #@168
    move-result v7

    #@169
    if-ltz v7, :cond_12

    #@16b
    .line 192
    const/16 v7, 0x4a

    #@16d
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@170
    add-int/lit8 v4, v4, 0x2

    #@172
    .line 191
    goto/16 :goto_3

    #@174
    .line 194
    :cond_12
    const/16 v7, 0x54

    #@176
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@179
    goto/16 :goto_3

    #@17b
    .line 198
    :pswitch_4
    add-int/lit8 v7, v4, 0x1

    #@17d
    invoke-direct {p0, v6, v7}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    #@180
    move-result v7

    #@181
    if-eqz v7, :cond_13

    #@183
    .line 199
    invoke-direct {p0, v3, v4, v11}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    #@186
    move-result v7

    #@187
    .line 198
    if-nez v7, :cond_9

    #@189
    .line 202
    :cond_13
    add-int/lit8 v7, v4, 0x1

    #@18b
    invoke-direct {p0, v6, v7}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    #@18e
    move-result v7

    #@18f
    if-nez v7, :cond_14

    #@191
    .line 203
    invoke-direct {p0, v3, v4, v11}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    #@194
    move-result v7

    #@195
    .line 202
    if-eqz v7, :cond_14

    #@197
    .line 204
    add-int/lit8 v7, v4, 0x2

    #@199
    invoke-direct {p0, v3, v7}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuffer;I)Z

    #@19c
    move-result v7

    #@19d
    if-eqz v7, :cond_9

    #@19f
    .line 207
    :cond_14
    if-lez v4, :cond_15

    #@1a1
    .line 208
    const-string/jumbo v7, "GN"

    #@1a4
    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    #@1a7
    move-result v7

    #@1a8
    if-nez v7, :cond_9

    #@1aa
    .line 209
    const-string/jumbo v7, "GNED"

    #@1ad
    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    #@1b0
    move-result v7

    #@1b1
    .line 207
    if-nez v7, :cond_9

    #@1b3
    .line 212
    :cond_15
    const/16 v7, 0x47

    #@1b5
    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    #@1b8
    move-result v7

    #@1b9
    if-eqz v7, :cond_17

    #@1bb
    .line 213
    const/4 v1, 0x1

    #@1bc
    .line 217
    :goto_4
    invoke-direct {p0, v6, v4}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    #@1bf
    move-result v7

    #@1c0
    if-nez v7, :cond_16

    #@1c2
    .line 218
    iget-object v7, p0, Lorg/apache/commons/codec/language/Metaphone;->frontv:Ljava/lang/String;

    #@1c4
    add-int/lit8 v8, v4, 0x1

    #@1c6
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    #@1c9
    move-result v8

    #@1ca
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    #@1cd
    move-result v7

    #@1ce
    if-ltz v7, :cond_16

    #@1d0
    .line 219
    if-eqz v1, :cond_18

    #@1d2
    .line 222
    :cond_16
    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@1d5
    goto/16 :goto_3

    #@1d7
    .line 215
    :cond_17
    const/4 v1, 0x0

    #@1d8
    goto :goto_4

    #@1d9
    .line 220
    :cond_18
    const/16 v7, 0x4a

    #@1db
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@1de
    goto/16 :goto_3

    #@1e0
    .line 226
    :pswitch_5
    invoke-direct {p0, v6, v4}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    #@1e3
    move-result v7

    #@1e4
    if-nez v7, :cond_9

    #@1e6
    .line 229
    if-lez v4, :cond_19

    #@1e8
    .line 230
    iget-object v7, p0, Lorg/apache/commons/codec/language/Metaphone;->varson:Ljava/lang/String;

    #@1ea
    add-int/lit8 v8, v4, -0x1

    #@1ec
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    #@1ef
    move-result v8

    #@1f0
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    #@1f3
    move-result v7

    #@1f4
    if-gez v7, :cond_9

    #@1f6
    .line 233
    :cond_19
    add-int/lit8 v7, v4, 0x1

    #@1f8
    invoke-direct {p0, v3, v7}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuffer;I)Z

    #@1fb
    move-result v7

    #@1fc
    if-eqz v7, :cond_9

    #@1fe
    .line 234
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@201
    goto/16 :goto_3

    #@203
    .line 243
    :pswitch_6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@206
    goto/16 :goto_3

    #@208
    .line 246
    :pswitch_7
    if-lez v4, :cond_1a

    #@20a
    .line 247
    const/16 v7, 0x43

    #@20c
    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    #@20f
    move-result v7

    #@210
    if-nez v7, :cond_9

    #@212
    .line 248
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@215
    goto/16 :goto_3

    #@217
    .line 251
    :cond_1a
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@21a
    goto/16 :goto_3

    #@21c
    .line 255
    :pswitch_8
    invoke-direct {p0, v3, v4, v11}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    #@21f
    move-result v7

    #@220
    if-eqz v7, :cond_1b

    #@222
    .line 257
    const/16 v7, 0x46

    #@224
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@227
    goto/16 :goto_3

    #@229
    .line 259
    :cond_1b
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@22c
    goto/16 :goto_3

    #@22e
    .line 263
    :pswitch_9
    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@231
    goto/16 :goto_3

    #@233
    .line 266
    :pswitch_a
    const-string/jumbo v7, "SH"

    #@236
    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    #@239
    move-result v7

    #@23a
    if-nez v7, :cond_1c

    #@23c
    .line 267
    const-string/jumbo v7, "SIO"

    #@23f
    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    #@242
    move-result v7

    #@243
    .line 266
    if-nez v7, :cond_1c

    #@245
    .line 268
    const-string/jumbo v7, "SIA"

    #@248
    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    #@24b
    move-result v7

    #@24c
    .line 266
    if-eqz v7, :cond_1d

    #@24e
    .line 269
    :cond_1c
    const/16 v7, 0x58

    #@250
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@253
    goto/16 :goto_3

    #@255
    .line 271
    :cond_1d
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@258
    goto/16 :goto_3

    #@25a
    .line 275
    :pswitch_b
    const-string/jumbo v7, "TIA"

    #@25d
    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    #@260
    move-result v7

    #@261
    if-nez v7, :cond_1e

    #@263
    .line 276
    const-string/jumbo v7, "TIO"

    #@266
    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    #@269
    move-result v7

    #@26a
    .line 275
    if-eqz v7, :cond_1f

    #@26c
    .line 277
    :cond_1e
    const/16 v7, 0x58

    #@26e
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@271
    goto/16 :goto_3

    #@273
    .line 280
    :cond_1f
    const-string/jumbo v7, "TCH"

    #@276
    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    #@279
    move-result v7

    #@27a
    if-nez v7, :cond_9

    #@27c
    .line 285
    const-string/jumbo v7, "TH"

    #@27f
    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    #@282
    move-result v7

    #@283
    if-eqz v7, :cond_20

    #@285
    .line 286
    const/16 v7, 0x30

    #@287
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@28a
    goto/16 :goto_3

    #@28c
    .line 288
    :cond_20
    const/16 v7, 0x54

    #@28e
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@291
    goto/16 :goto_3

    #@293
    .line 292
    :pswitch_c
    const/16 v7, 0x46

    #@295
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@298
    goto/16 :goto_3

    #@29a
    .line 294
    :pswitch_d
    invoke-direct {p0, v6, v4}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    #@29d
    move-result v7

    #@29e
    if-nez v7, :cond_9

    #@2a0
    .line 295
    add-int/lit8 v7, v4, 0x1

    #@2a2
    invoke-direct {p0, v3, v7}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuffer;I)Z

    #@2a5
    move-result v7

    #@2a6
    .line 294
    if-eqz v7, :cond_9

    #@2a8
    .line 296
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2ab
    goto/16 :goto_3

    #@2ad
    .line 300
    :pswitch_e
    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2b0
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2b3
    goto/16 :goto_3

    #@2b5
    .line 303
    :pswitch_f
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2b8
    goto/16 :goto_3

    #@2ba
    .line 311
    .end local v5    # "symb":C
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2bd
    move-result-object v7

    #@2be
    return-object v7

    #@2bf
    .line 95
    nop

    #@2c0
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_1
        0x47 -> :sswitch_0
        0x4b -> :sswitch_0
        0x50 -> :sswitch_0
        0x57 -> :sswitch_2
        0x58 -> :sswitch_3
    .end sparse-switch

    #@2da
    .line 142
    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_d
        :pswitch_f
    .end packed-switch
.end method

.method public setMaxCodeLen(I)V
    .locals 0
    .param p1, "maxCodeLen"    # I

    #@0
    .prologue
    .line 402
    iput p1, p0, Lorg/apache/commons/codec/language/Metaphone;->maxCodeLen:I

    #@2
    return-void
.end method
