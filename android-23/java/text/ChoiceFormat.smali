.class public Ljava/text/ChoiceFormat;
.super Ljava/text/NumberFormat;
.source "ChoiceFormat.java"


# static fields
.field private static final serialVersionUID:J = 0x18e9c6bee365b604L


# instance fields
.field private choiceFormats:[Ljava/lang/String;

.field private choiceLimits:[D


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "template"    # Ljava/lang/String;

    #@0
    .prologue
    .line 110
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    #@3
    .line 111
    invoke-virtual {p0, p1}, Ljava/text/ChoiceFormat;->applyPattern(Ljava/lang/String;)V

    #@6
    .line 110
    return-void
.end method

.method public constructor <init>([D[Ljava/lang/String;)V
    .locals 0
    .param p1, "limits"    # [D
    .param p2, "formats"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 97
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    #@3
    .line 98
    invoke-virtual {p0, p1, p2}, Ljava/text/ChoiceFormat;->setChoices([D[Ljava/lang/String;)V

    #@6
    .line 97
    return-void
.end method

.method public static final nextDouble(D)D
    .locals 2
    .param p0, "value"    # D

    #@0
    .prologue
    .line 309
    invoke-static {p0, p1}, Ljava/lang/Math;->nextUp(D)D

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public static nextDouble(DZ)D
    .locals 2
    .param p0, "value"    # D
    .param p2, "increment"    # Z

    #@0
    .prologue
    .line 318
    if-eqz p2, :cond_0

    #@2
    invoke-static {p0, p1}, Ljava/text/ChoiceFormat;->nextDouble(D)D

    #@5
    move-result-wide v0

    #@6
    :goto_0
    return-wide v0

    #@7
    :cond_0
    invoke-static {p0, p1}, Ljava/text/ChoiceFormat;->previousDouble(D)D

    #@a
    move-result-wide v0

    #@b
    goto :goto_0
.end method

.method public static final previousDouble(D)D
    .locals 2
    .param p0, "value"    # D

    #@0
    .prologue
    .line 371
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    #@2
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->nextAfter(DD)D

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method private skipWhitespace(Ljava/lang/String;I)I
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 402
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    .line 403
    .local v0, "length":I
    :goto_0
    if-ge p2, v0, :cond_0

    #@6
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    #@9
    move-result v1

    #@a
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 404
    add-int/lit8 p2, p2, 0x1

    #@12
    goto :goto_0

    #@13
    .line 406
    :cond_0
    return p2
.end method


# virtual methods
.method public applyPattern(Ljava/lang/String;)V
    .locals 23
    .param p1, "template"    # Ljava/lang/String;

    #@0
    .prologue
    .line 124
    const/16 v20, 0x5

    #@2
    move/from16 v0, v20

    #@4
    new-array v14, v0, [D

    #@6
    .line 125
    .local v14, "limits":[D
    new-instance v7, Ljava/util/ArrayList;

    #@8
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@b
    .line 126
    .local v7, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@e
    move-result v11

    #@f
    .local v11, "length":I
    const/4 v12, 0x0

    #@10
    .local v12, "limitCount":I
    const/4 v9, 0x0

    #@11
    .line 127
    .local v9, "index":I
    new-instance v4, Ljava/lang/StringBuffer;

    #@13
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    #@16
    .line 128
    .local v4, "buffer":Ljava/lang/StringBuffer;
    sget-object v20, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@18
    invoke-static/range {v20 .. v20}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@1b
    move-result-object v6

    #@1c
    .line 129
    .local v6, "format":Ljava/text/NumberFormat;
    new-instance v18, Ljava/text/ParsePosition;

    #@1e
    const/16 v20, 0x0

    #@20
    move-object/from16 v0, v18

    #@22
    move/from16 v1, v20

    #@24
    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    #@27
    .line 131
    .local v18, "position":Ljava/text/ParsePosition;
    :goto_0
    move-object/from16 v0, p0

    #@29
    move-object/from16 v1, p1

    #@2b
    invoke-direct {v0, v1, v9}, Ljava/text/ChoiceFormat;->skipWhitespace(Ljava/lang/String;I)I

    #@2e
    move-result v9

    #@2f
    .line 132
    if-lt v9, v11, :cond_2

    #@31
    .line 133
    array-length v0, v14

    #@32
    move/from16 v20, v0

    #@34
    move/from16 v0, v20

    #@36
    if-ne v12, v0, :cond_0

    #@38
    .line 134
    move-object/from16 v0, p0

    #@3a
    iput-object v14, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@3c
    .line 139
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@3f
    move-result v20

    #@40
    move/from16 v0, v20

    #@42
    new-array v0, v0, [Ljava/lang/String;

    #@44
    move-object/from16 v20, v0

    #@46
    move-object/from16 v0, v20

    #@48
    move-object/from16 v1, p0

    #@4a
    iput-object v0, v1, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    #@4c
    .line 140
    const/4 v8, 0x0

    #@4d
    .local v8, "i":I
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@50
    move-result v20

    #@51
    move/from16 v0, v20

    #@53
    if-ge v8, v0, :cond_1

    #@55
    .line 141
    move-object/from16 v0, p0

    #@57
    iget-object v0, v0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    #@59
    move-object/from16 v21, v0

    #@5b
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5e
    move-result-object v20

    #@5f
    check-cast v20, Ljava/lang/String;

    #@61
    aput-object v20, v21, v8

    #@63
    .line 140
    add-int/lit8 v8, v8, 0x1

    #@65
    goto :goto_2

    #@66
    .line 136
    .end local v8    # "i":I
    :cond_0
    new-array v0, v12, [D

    #@68
    move-object/from16 v20, v0

    #@6a
    move-object/from16 v0, v20

    #@6c
    move-object/from16 v1, p0

    #@6e
    iput-object v0, v1, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@70
    .line 137
    move-object/from16 v0, p0

    #@72
    iget-object v0, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@74
    move-object/from16 v20, v0

    #@76
    const/16 v21, 0x0

    #@78
    const/16 v22, 0x0

    #@7a
    move/from16 v0, v21

    #@7c
    move-object/from16 v1, v20

    #@7e
    move/from16 v2, v22

    #@80
    invoke-static {v14, v0, v1, v2, v12}, Ljava/lang/System;->arraycopy([DI[DII)V

    #@83
    goto :goto_1

    #@84
    .line 143
    .restart local v8    # "i":I
    :cond_1
    return-void

    #@85
    .line 146
    .end local v8    # "i":I
    :cond_2
    move-object/from16 v0, v18

    #@87
    invoke-virtual {v0, v9}, Ljava/text/ParsePosition;->setIndex(I)V

    #@8a
    .line 147
    move-object/from16 v0, p1

    #@8c
    move-object/from16 v1, v18

    #@8e
    invoke-virtual {v6, v0, v1}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    #@91
    move-result-object v19

    #@92
    .line 148
    .local v19, "value":Ljava/lang/Number;
    invoke-virtual/range {v18 .. v18}, Ljava/text/ParsePosition;->getIndex()I

    #@95
    move-result v20

    #@96
    move-object/from16 v0, p0

    #@98
    move-object/from16 v1, p1

    #@9a
    move/from16 v2, v20

    #@9c
    invoke-direct {v0, v1, v2}, Ljava/text/ChoiceFormat;->skipWhitespace(Ljava/lang/String;I)I

    #@9f
    move-result v9

    #@a0
    .line 149
    invoke-virtual/range {v18 .. v18}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@a3
    move-result v20

    #@a4
    const/16 v21, -0x1

    #@a6
    move/from16 v0, v20

    #@a8
    move/from16 v1, v21

    #@aa
    if-ne v0, v1, :cond_3

    #@ac
    if-lt v9, v11, :cond_4

    #@ae
    .line 151
    :cond_3
    sget-object v20, Llibcore/util/EmptyArray;->DOUBLE:[D

    #@b0
    move-object/from16 v0, v20

    #@b2
    move-object/from16 v1, p0

    #@b4
    iput-object v0, v1, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@b6
    .line 152
    sget-object v20, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    #@b8
    move-object/from16 v0, v20

    #@ba
    move-object/from16 v1, p0

    #@bc
    iput-object v0, v1, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    #@be
    .line 153
    return-void

    #@bf
    .line 155
    :cond_4
    add-int/lit8 v10, v9, 0x1

    #@c1
    .end local v9    # "index":I
    .local v10, "index":I
    move-object/from16 v0, p1

    #@c3
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    #@c6
    move-result v5

    #@c7
    .line 156
    .local v5, "ch":C
    array-length v0, v14

    #@c8
    move/from16 v20, v0

    #@ca
    move/from16 v0, v20

    #@cc
    if-ne v12, v0, :cond_5

    #@ce
    .line 157
    mul-int/lit8 v20, v12, 0x2

    #@d0
    move/from16 v0, v20

    #@d2
    new-array v15, v0, [D

    #@d4
    .line 158
    .local v15, "newLimits":[D
    const/16 v20, 0x0

    #@d6
    const/16 v21, 0x0

    #@d8
    move/from16 v0, v20

    #@da
    move/from16 v1, v21

    #@dc
    invoke-static {v14, v0, v15, v1, v12}, Ljava/lang/System;->arraycopy([DI[DII)V

    #@df
    .line 159
    move-object v14, v15

    #@e0
    .line 162
    .end local v15    # "newLimits":[D
    :cond_5
    sparse-switch v5, :sswitch_data_0

    #@e3
    .line 171
    new-instance v20, Ljava/lang/IllegalArgumentException;

    #@e5
    new-instance v21, Ljava/lang/StringBuilder;

    #@e7
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@ea
    const-string/jumbo v22, "Bad character \'"

    #@ed
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v21

    #@f1
    move-object/from16 v0, v21

    #@f3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v21

    #@f7
    const-string/jumbo v22, "\' in template: "

    #@fa
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v21

    #@fe
    move-object/from16 v0, v21

    #@100
    move-object/from16 v1, p1

    #@102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v21

    #@106
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@109
    move-result-object v21

    #@10a
    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10d
    throw v20

    #@10e
    .line 165
    :sswitch_0
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->doubleValue()D

    #@111
    move-result-wide v16

    #@112
    .line 173
    .local v16, "next":D
    :goto_3
    if-lez v12, :cond_6

    #@114
    add-int/lit8 v20, v12, -0x1

    #@116
    aget-wide v20, v14, v20

    #@118
    cmpg-double v20, v16, v20

    #@11a
    if-gtz v20, :cond_6

    #@11c
    .line 174
    new-instance v20, Ljava/lang/IllegalArgumentException;

    #@11e
    new-instance v21, Ljava/lang/StringBuilder;

    #@120
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@123
    const-string/jumbo v22, "Bad template: "

    #@126
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v21

    #@12a
    move-object/from16 v0, v21

    #@12c
    move-object/from16 v1, p1

    #@12e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v21

    #@132
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@135
    move-result-object v21

    #@136
    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@139
    throw v20

    #@13a
    .line 168
    .end local v16    # "next":D
    :sswitch_1
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->doubleValue()D

    #@13d
    move-result-wide v20

    #@13e
    invoke-static/range {v20 .. v21}, Ljava/text/ChoiceFormat;->nextDouble(D)D

    #@141
    move-result-wide v16

    #@142
    .restart local v16    # "next":D
    goto :goto_3

    #@143
    .line 176
    :cond_6
    const/16 v20, 0x0

    #@145
    move/from16 v0, v20

    #@147
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    #@14a
    .line 177
    move-object/from16 v0, v18

    #@14c
    invoke-virtual {v0, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    #@14f
    .line 178
    const/16 v20, 0x7c

    #@151
    move-object/from16 v0, p1

    #@153
    move-object/from16 v1, v18

    #@155
    move/from16 v2, v20

    #@157
    invoke-static {v0, v1, v4, v2}, Ljava/text/ChoiceFormat;->upTo(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuffer;C)Z

    #@15a
    .line 179
    invoke-virtual/range {v18 .. v18}, Ljava/text/ParsePosition;->getIndex()I

    #@15d
    move-result v9

    #@15e
    .line 180
    .end local v10    # "index":I
    .restart local v9    # "index":I
    add-int/lit8 v13, v12, 0x1

    #@160
    .end local v12    # "limitCount":I
    .local v13, "limitCount":I
    aput-wide v16, v14, v12

    #@162
    .line 181
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@165
    move-result-object v20

    #@166
    move-object/from16 v0, v20

    #@168
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@16b
    move v12, v13

    #@16c
    .end local v13    # "limitCount":I
    .restart local v12    # "limitCount":I
    goto/16 :goto_0

    #@16e
    .line 162
    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_0
        0x3c -> :sswitch_1
        0x2264 -> :sswitch_0
    .end sparse-switch
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 195
    invoke-super {p0}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/text/ChoiceFormat;

    #@6
    .line 196
    .local v0, "clone":Ljava/text/ChoiceFormat;
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@8
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, [D

    #@e
    iput-object v1, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@10
    .line 197
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    #@12
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, [Ljava/lang/String;

    #@18
    iput-object v1, v0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    #@1a
    .line 198
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 214
    if-ne p0, p1, :cond_0

    #@3
    .line 215
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 217
    :cond_0
    instance-of v2, p1, Ljava/text/ChoiceFormat;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 218
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 220
    check-cast v0, Ljava/text/ChoiceFormat;

    #@d
    .line 221
    .local v0, "choice":Ljava/text/ChoiceFormat;
    iget-object v2, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@f
    iget-object v3, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@11
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([D[D)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_2

    #@17
    .line 222
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    #@19
    iget-object v2, v0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    #@1b
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    .line 221
    :cond_2
    return v1
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 5
    .param p1, "value"    # D
    .param p3, "buffer"    # Ljava/lang/StringBuffer;
    .param p4, "field"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 240
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@3
    array-length v1, v1

    #@4
    add-int/lit8 v0, v1, -0x1

    #@6
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@8
    .line 241
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@a
    aget-wide v2, v1, v0

    #@c
    cmpg-double v1, v2, p1

    #@e
    if-gtz v1, :cond_0

    #@10
    .line 242
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    #@12
    aget-object v1, v1, v0

    #@14
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@17
    move-result-object v1

    #@18
    return-object v1

    #@19
    .line 240
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1b
    goto :goto_0

    #@1c
    .line 245
    :cond_1
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    #@1e
    array-length v1, v1

    #@1f
    if-nez v1, :cond_2

    #@21
    .end local p3    # "buffer":Ljava/lang/StringBuffer;
    :goto_1
    return-object p3

    #@22
    .line 246
    .restart local p3    # "buffer":Ljava/lang/StringBuffer;
    :cond_2
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    #@24
    aget-object v1, v1, v4

    #@26
    .line 245
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@29
    move-result-object p3

    #@2a
    goto :goto_1
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "value"    # J
    .param p3, "buffer"    # Ljava/lang/StringBuffer;
    .param p4, "field"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 264
    long-to-double v0, p1

    #@1
    invoke-virtual {p0, v0, v1, p3, p4}, Ljava/text/ChoiceFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getFormats()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 274
    iget-object v0, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLimits()[D
    .locals 1

    #@0
    .prologue
    .line 284
    iget-object v0, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 6

    #@0
    .prologue
    .line 297
    const/4 v0, 0x0

    #@1
    .line 298
    .local v0, "hashCode":I
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@4
    array-length v4, v4

    #@5
    if-ge v1, v4, :cond_0

    #@7
    .line 299
    iget-object v4, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@9
    aget-wide v4, v4, v1

    #@b
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@e
    move-result-wide v2

    #@f
    .line 300
    .local v2, "v":J
    const/16 v4, 0x20

    #@11
    ushr-long v4, v2, v4

    #@13
    xor-long/2addr v4, v2

    #@14
    long-to-int v4, v4

    #@15
    iget-object v5, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    #@17
    aget-object v5, v5, v1

    #@19
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    #@1c
    move-result v5

    #@1d
    add-int/2addr v4, v5

    #@1e
    add-int/2addr v0, v4

    #@1f
    .line 298
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 302
    .end local v2    # "v":J
    :cond_0
    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 6
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "position"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 355
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    #@3
    move-result v1

    #@4
    .line 356
    .local v1, "offset":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    #@7
    array-length v2, v2

    #@8
    if-ge v0, v2, :cond_1

    #@a
    .line 357
    iget-object v2, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    #@c
    aget-object v2, v2, v0

    #@e
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 358
    iget-object v2, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    #@16
    aget-object v2, v2, v0

    #@18
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@1b
    move-result v2

    #@1c
    add-int/2addr v2, v1

    #@1d
    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    #@20
    .line 359
    new-instance v2, Ljava/lang/Double;

    #@22
    iget-object v3, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@24
    aget-wide v4, v3, v0

    #@26
    invoke-direct {v2, v4, v5}, Ljava/lang/Double;-><init>(D)V

    #@29
    return-object v2

    #@2a
    .line 356
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 362
    :cond_1
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@30
    .line 363
    new-instance v2, Ljava/lang/Double;

    #@32
    const-wide/high16 v4, 0x7ff8000000000000L    # NaN

    #@34
    invoke-direct {v2, v4, v5}, Ljava/lang/Double;-><init>(D)V

    #@37
    return-object v2
.end method

.method public setChoices([D[Ljava/lang/String;)V
    .locals 3
    .param p1, "limits"    # [D
    .param p2, "formats"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 393
    array-length v0, p1

    #@1
    array-length v1, p2

    #@2
    if-eq v0, v1, :cond_0

    #@4
    .line 394
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "limits.length != formats.length: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    .line 395
    array-length v2, p1

    #@13
    .line 394
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    .line 395
    const-string/jumbo v2, " != "

    #@1a
    .line 394
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 395
    array-length v2, p2

    #@1f
    .line 394
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 397
    :cond_0
    iput-object p1, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@2d
    .line 398
    iput-object p2, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    #@2f
    .line 392
    return-void
.end method

.method public toPattern()Ljava/lang/String;
    .locals 13

    #@0
    .prologue
    const/16 v12, 0x7c

    #@2
    const/16 v11, 0x27

    #@4
    const/16 v10, 0x3c

    #@6
    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    .line 417
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@e
    array-length v5, v5

    #@f
    if-ge v1, v5, :cond_8

    #@11
    .line 418
    if-eqz v1, :cond_0

    #@13
    .line 419
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@16
    .line 422
    :cond_0
    iget-object v5, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@18
    aget-wide v6, v5, v1

    #@1a
    invoke-static {v6, v7}, Ljava/text/ChoiceFormat;->previousDouble(D)D

    #@1d
    move-result-wide v6

    #@1e
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    .line 423
    .local v3, "previous":Ljava/lang/String;
    iget-object v5, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@24
    aget-wide v6, v5, v1

    #@26
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    .line 432
    .local v2, "limit":Ljava/lang/String;
    iget-object v5, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@2c
    aget-wide v6, v5, v1

    #@2e
    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    #@31
    move-result v5

    #@32
    if-nez v5, :cond_1

    #@34
    .line 433
    iget-object v5, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@36
    aget-wide v6, v5, v1

    #@38
    invoke-static {v6, v7}, Ljava/text/ChoiceFormat;->previousDouble(D)D

    #@3b
    move-result-wide v6

    #@3c
    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    #@3f
    move-result v5

    #@40
    .line 432
    if-eqz v5, :cond_5

    #@42
    .line 434
    :cond_1
    iget-object v5, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@44
    aget-wide v6, v5, v1

    #@46
    const-wide/16 v8, 0x0

    #@48
    cmpg-double v5, v6, v8

    #@4a
    if-gez v5, :cond_4

    #@4c
    .line 435
    const-string/jumbo v5, "-\u221e"

    #@4f
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    .line 436
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@55
    .line 451
    :goto_1
    iget-object v5, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    #@57
    aget-object v5, v5, v1

    #@59
    invoke-virtual {v5, v12}, Ljava/lang/String;->indexOf(I)I

    #@5c
    move-result v5

    #@5d
    const/4 v6, -0x1

    #@5e
    if-eq v5, v6, :cond_7

    #@60
    const/4 v4, 0x1

    #@61
    .line 452
    .local v4, "quote":Z
    :goto_2
    if-eqz v4, :cond_2

    #@63
    .line 453
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@66
    .line 455
    :cond_2
    iget-object v5, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    #@68
    aget-object v5, v5, v1

    #@6a
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    .line 456
    if-eqz v4, :cond_3

    #@6f
    .line 457
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@72
    .line 417
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@74
    goto :goto_0

    #@75
    .line 438
    .end local v4    # "quote":Z
    :cond_4
    const/16 v5, 0x221e

    #@77
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7a
    .line 439
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7d
    goto :goto_1

    #@7e
    .line 441
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@81
    move-result v5

    #@82
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@85
    move-result v6

    #@86
    if-ge v5, v6, :cond_6

    #@88
    .line 445
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    .line 446
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@8e
    goto :goto_1

    #@8f
    .line 448
    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    .line 449
    const/16 v5, 0x23

    #@94
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@97
    goto :goto_1

    #@98
    .line 451
    :cond_7
    const/4 v4, 0x0

    #@99
    .restart local v4    # "quote":Z
    goto :goto_2

    #@9a
    .line 460
    .end local v2    # "limit":Ljava/lang/String;
    .end local v3    # "previous":Ljava/lang/String;
    .end local v4    # "quote":Z
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v5

    #@9e
    return-object v5
.end method
