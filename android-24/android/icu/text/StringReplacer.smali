.class Landroid/icu/text/StringReplacer;
.super Ljava/lang/Object;
.source "StringReplacer.java"

# interfaces
.implements Landroid/icu/text/UnicodeReplacer;


# instance fields
.field private cursorPos:I

.field private final data:Landroid/icu/text/RuleBasedTransliterator$Data;

.field private hasCursor:Z

.field private isComplex:Z

.field private output:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/icu/text/RuleBasedTransliterator$Data;)V
    .locals 1
    .param p1, "theOutput"    # Ljava/lang/String;
    .param p2, "theCursorPos"    # I
    .param p3, "theData"    # Landroid/icu/text/RuleBasedTransliterator$Data;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 71
    iput-object p1, p0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    #@6
    .line 72
    iput p2, p0, Landroid/icu/text/StringReplacer;->cursorPos:I

    #@8
    .line 73
    iput-boolean v0, p0, Landroid/icu/text/StringReplacer;->hasCursor:Z

    #@a
    .line 74
    iput-object p3, p0, Landroid/icu/text/StringReplacer;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@c
    .line 75
    iput-boolean v0, p0, Landroid/icu/text/StringReplacer;->isComplex:Z

    #@e
    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/RuleBasedTransliterator$Data;)V
    .locals 1
    .param p1, "theOutput"    # Ljava/lang/String;
    .param p2, "theData"    # Landroid/icu/text/RuleBasedTransliterator$Data;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 89
    iput-object p1, p0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    #@6
    .line 90
    iput v0, p0, Landroid/icu/text/StringReplacer;->cursorPos:I

    #@8
    .line 91
    iput-boolean v0, p0, Landroid/icu/text/StringReplacer;->hasCursor:Z

    #@a
    .line 92
    iput-object p2, p0, Landroid/icu/text/StringReplacer;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@c
    .line 93
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Landroid/icu/text/StringReplacer;->isComplex:Z

    #@f
    .line 88
    return-void
.end method


# virtual methods
.method public addReplacementSetTo(Landroid/icu/text/UnicodeSet;)V
    .locals 4
    .param p1, "toUnionTo"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 322
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    #@3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@6
    move-result v3

    #@7
    if-ge v1, v3, :cond_1

    #@9
    .line 323
    iget-object v3, p0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    #@b
    invoke-static {v3, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@e
    move-result v0

    #@f
    .line 324
    .local v0, "ch":I
    iget-object v3, p0, Landroid/icu/text/StringReplacer;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@11
    invoke-virtual {v3, v0}, Landroid/icu/text/RuleBasedTransliterator$Data;->lookupReplacer(I)Landroid/icu/text/UnicodeReplacer;

    #@14
    move-result-object v2

    #@15
    .line 325
    .local v2, "r":Landroid/icu/text/UnicodeReplacer;
    if-nez v2, :cond_0

    #@17
    .line 326
    invoke-virtual {p1, v0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@1a
    .line 322
    :goto_1
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@1d
    move-result v3

    #@1e
    add-int/2addr v1, v3

    #@1f
    goto :goto_0

    #@20
    .line 328
    :cond_0
    invoke-interface {v2, p1}, Landroid/icu/text/UnicodeReplacer;->addReplacementSetTo(Landroid/icu/text/UnicodeSet;)V

    #@23
    goto :goto_1

    #@24
    .line 320
    .end local v0    # "ch":I
    .end local v2    # "r":Landroid/icu/text/UnicodeReplacer;
    :cond_1
    return-void
.end method

.method public replace(Landroid/icu/text/Replaceable;II[I)I
    .locals 20
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "start"    # I
    .param p3, "limit"    # I
    .param p4, "cursor"    # [I

    #@0
    .prologue
    .line 117
    const/4 v10, 0x0

    #@1
    .line 124
    .local v10, "newStart":I
    move-object/from16 v0, p0

    #@3
    iget-boolean v0, v0, Landroid/icu/text/StringReplacer;->isComplex:Z

    #@5
    move/from16 v17, v0

    #@7
    if-nez v17, :cond_0

    #@9
    .line 125
    move-object/from16 v0, p0

    #@b
    iget-object v0, v0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    #@d
    move-object/from16 v17, v0

    #@f
    move-object/from16 v0, p1

    #@11
    move/from16 v1, p2

    #@13
    move/from16 v2, p3

    #@15
    move-object/from16 v3, v17

    #@17
    invoke-interface {v0, v1, v2, v3}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    #@1a
    .line 126
    move-object/from16 v0, p0

    #@1c
    iget-object v0, v0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    #@1e
    move-object/from16 v17, v0

    #@20
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    #@23
    move-result v13

    #@24
    .line 129
    .local v13, "outLen":I
    move-object/from16 v0, p0

    #@26
    iget v10, v0, Landroid/icu/text/StringReplacer;->cursorPos:I

    #@28
    .line 228
    :goto_0
    move-object/from16 v0, p0

    #@2a
    iget-boolean v0, v0, Landroid/icu/text/StringReplacer;->hasCursor:Z

    #@2c
    move/from16 v17, v0

    #@2e
    if-eqz v17, :cond_a

    #@30
    .line 233
    move-object/from16 v0, p0

    #@32
    iget v0, v0, Landroid/icu/text/StringReplacer;->cursorPos:I

    #@34
    move/from16 v17, v0

    #@36
    if-gez v17, :cond_b

    #@38
    .line 234
    move/from16 v10, p2

    #@3a
    .line 235
    move-object/from16 v0, p0

    #@3c
    iget v9, v0, Landroid/icu/text/StringReplacer;->cursorPos:I

    #@3e
    .line 237
    .local v9, "n":I
    :goto_1
    if-gez v9, :cond_9

    #@40
    if-lez v10, :cond_9

    #@42
    .line 238
    add-int/lit8 v17, v10, -0x1

    #@44
    move-object/from16 v0, p1

    #@46
    move/from16 v1, v17

    #@48
    invoke-interface {v0, v1}, Landroid/icu/text/Replaceable;->char32At(I)I

    #@4b
    move-result v17

    #@4c
    invoke-static/range {v17 .. v17}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@4f
    move-result v17

    #@50
    sub-int v10, v10, v17

    #@52
    .line 239
    add-int/lit8 v9, v9, 0x1

    #@54
    goto :goto_1

    #@55
    .line 140
    .end local v9    # "n":I
    .end local v13    # "outLen":I
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    #@57
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    #@5a
    .line 142
    .local v4, "buf":Ljava/lang/StringBuffer;
    const/16 v17, 0x0

    #@5c
    move/from16 v0, v17

    #@5e
    move-object/from16 v1, p0

    #@60
    iput-boolean v0, v1, Landroid/icu/text/StringReplacer;->isComplex:Z

    #@62
    .line 153
    invoke-interface/range {p1 .. p1}, Landroid/icu/text/Replaceable;->length()I

    #@65
    move-result v16

    #@66
    .line 154
    .local v16, "tempStart":I
    move/from16 v7, v16

    #@68
    .line 155
    .local v7, "destStart":I
    if-lez p2, :cond_3

    #@6a
    .line 156
    add-int/lit8 v17, p2, -0x1

    #@6c
    move-object/from16 v0, p1

    #@6e
    move/from16 v1, v17

    #@70
    invoke-interface {v0, v1}, Landroid/icu/text/Replaceable;->char32At(I)I

    #@73
    move-result v17

    #@74
    invoke-static/range {v17 .. v17}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@77
    move-result v8

    #@78
    .line 157
    .local v8, "len":I
    sub-int v17, p2, v8

    #@7a
    move-object/from16 v0, p1

    #@7c
    move/from16 v1, v17

    #@7e
    move/from16 v2, p2

    #@80
    move/from16 v3, v16

    #@82
    invoke-interface {v0, v1, v2, v3}, Landroid/icu/text/Replaceable;->copy(III)V

    #@85
    .line 158
    add-int v7, v16, v8

    #@87
    .line 163
    .end local v8    # "len":I
    :goto_2
    move v6, v7

    #@88
    .line 164
    .local v6, "destLimit":I
    const/4 v15, 0x0

    #@89
    .line 166
    .local v15, "tempExtra":I
    const/4 v12, 0x0

    #@8a
    .local v12, "oOutput":I
    :goto_3
    move-object/from16 v0, p0

    #@8c
    iget-object v0, v0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    #@8e
    move-object/from16 v17, v0

    #@90
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    #@93
    move-result v17

    #@94
    move/from16 v0, v17

    #@96
    if-ge v12, v0, :cond_6

    #@98
    .line 167
    move-object/from16 v0, p0

    #@9a
    iget v0, v0, Landroid/icu/text/StringReplacer;->cursorPos:I

    #@9c
    move/from16 v17, v0

    #@9e
    move/from16 v0, v17

    #@a0
    if-ne v12, v0, :cond_1

    #@a2
    .line 169
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    #@a5
    move-result v17

    #@a6
    add-int v17, v17, v6

    #@a8
    sub-int v10, v17, v7

    #@aa
    .line 176
    :cond_1
    move-object/from16 v0, p0

    #@ac
    iget-object v0, v0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    #@ae
    move-object/from16 v17, v0

    #@b0
    move-object/from16 v0, v17

    #@b2
    invoke-static {v0, v12}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@b5
    move-result v5

    #@b6
    .line 182
    .local v5, "c":I
    invoke-static {v5}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@b9
    move-result v17

    #@ba
    add-int v11, v12, v17

    #@bc
    .line 183
    .local v11, "nextIndex":I
    move-object/from16 v0, p0

    #@be
    iget-object v0, v0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    #@c0
    move-object/from16 v17, v0

    #@c2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    #@c5
    move-result v17

    #@c6
    move/from16 v0, v17

    #@c8
    if-ne v11, v0, :cond_2

    #@ca
    .line 184
    move-object/from16 v0, p1

    #@cc
    move/from16 v1, p3

    #@ce
    invoke-interface {v0, v1}, Landroid/icu/text/Replaceable;->char32At(I)I

    #@d1
    move-result v17

    #@d2
    invoke-static/range {v17 .. v17}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@d5
    move-result v15

    #@d6
    .line 185
    add-int v17, p3, v15

    #@d8
    move-object/from16 v0, p1

    #@da
    move/from16 v1, p3

    #@dc
    move/from16 v2, v17

    #@de
    invoke-interface {v0, v1, v2, v6}, Landroid/icu/text/Replaceable;->copy(III)V

    #@e1
    .line 188
    :cond_2
    move-object/from16 v0, p0

    #@e3
    iget-object v0, v0, Landroid/icu/text/StringReplacer;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@e5
    move-object/from16 v17, v0

    #@e7
    move-object/from16 v0, v17

    #@e9
    invoke-virtual {v0, v5}, Landroid/icu/text/RuleBasedTransliterator$Data;->lookupReplacer(I)Landroid/icu/text/UnicodeReplacer;

    #@ec
    move-result-object v14

    #@ed
    .line 189
    .local v14, "r":Landroid/icu/text/UnicodeReplacer;
    if-nez v14, :cond_4

    #@ef
    .line 191
    invoke-static {v4, v5}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    #@f2
    .line 206
    :goto_4
    move v12, v11

    #@f3
    goto :goto_3

    #@f4
    .line 160
    .end local v5    # "c":I
    .end local v6    # "destLimit":I
    .end local v11    # "nextIndex":I
    .end local v12    # "oOutput":I
    .end local v14    # "r":Landroid/icu/text/UnicodeReplacer;
    .end local v15    # "tempExtra":I
    :cond_3
    const-string/jumbo v17, "\uffff"

    #@f7
    move-object/from16 v0, p1

    #@f9
    move/from16 v1, v16

    #@fb
    move/from16 v2, v16

    #@fd
    move-object/from16 v3, v17

    #@ff
    invoke-interface {v0, v1, v2, v3}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    #@102
    .line 161
    add-int/lit8 v7, v16, 0x1

    #@104
    goto :goto_2

    #@105
    .line 193
    .restart local v5    # "c":I
    .restart local v6    # "destLimit":I
    .restart local v11    # "nextIndex":I
    .restart local v12    # "oOutput":I
    .restart local v14    # "r":Landroid/icu/text/UnicodeReplacer;
    .restart local v15    # "tempExtra":I
    :cond_4
    const/16 v17, 0x1

    #@107
    move/from16 v0, v17

    #@109
    move-object/from16 v1, p0

    #@10b
    iput-boolean v0, v1, Landroid/icu/text/StringReplacer;->isComplex:Z

    #@10d
    .line 196
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    #@110
    move-result v17

    #@111
    if-lez v17, :cond_5

    #@113
    .line 197
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@116
    move-result-object v17

    #@117
    move-object/from16 v0, p1

    #@119
    move-object/from16 v1, v17

    #@11b
    invoke-interface {v0, v6, v6, v1}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    #@11e
    .line 198
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    #@121
    move-result v17

    #@122
    add-int v6, v6, v17

    #@124
    .line 199
    const/16 v17, 0x0

    #@126
    move/from16 v0, v17

    #@128
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    #@12b
    .line 203
    :cond_5
    move-object/from16 v0, p1

    #@12d
    move-object/from16 v1, p4

    #@12f
    invoke-interface {v14, v0, v6, v6, v1}, Landroid/icu/text/UnicodeReplacer;->replace(Landroid/icu/text/Replaceable;II[I)I

    #@132
    move-result v8

    #@133
    .line 204
    .restart local v8    # "len":I
    add-int/2addr v6, v8

    #@134
    goto :goto_4

    #@135
    .line 209
    .end local v5    # "c":I
    .end local v8    # "len":I
    .end local v11    # "nextIndex":I
    .end local v14    # "r":Landroid/icu/text/UnicodeReplacer;
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    #@138
    move-result v17

    #@139
    if-lez v17, :cond_7

    #@13b
    .line 210
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@13e
    move-result-object v17

    #@13f
    move-object/from16 v0, p1

    #@141
    move-object/from16 v1, v17

    #@143
    invoke-interface {v0, v6, v6, v1}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    #@146
    .line 211
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    #@149
    move-result v17

    #@14a
    add-int v6, v6, v17

    #@14c
    .line 213
    :cond_7
    move-object/from16 v0, p0

    #@14e
    iget v0, v0, Landroid/icu/text/StringReplacer;->cursorPos:I

    #@150
    move/from16 v17, v0

    #@152
    move/from16 v0, v17

    #@154
    if-ne v12, v0, :cond_8

    #@156
    .line 215
    sub-int v10, v6, v7

    #@158
    .line 218
    :cond_8
    sub-int v13, v6, v7

    #@15a
    .line 221
    .restart local v13    # "outLen":I
    move-object/from16 v0, p1

    #@15c
    move/from16 v1, p2

    #@15e
    invoke-interface {v0, v7, v6, v1}, Landroid/icu/text/Replaceable;->copy(III)V

    #@161
    .line 222
    add-int v17, v16, v13

    #@163
    add-int v18, v6, v15

    #@165
    add-int v18, v18, v13

    #@167
    const-string/jumbo v19, ""

    #@16a
    move-object/from16 v0, p1

    #@16c
    move/from16 v1, v17

    #@16e
    move/from16 v2, v18

    #@170
    move-object/from16 v3, v19

    #@172
    invoke-interface {v0, v1, v2, v3}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    #@175
    .line 225
    add-int v17, p2, v13

    #@177
    add-int v18, p3, v13

    #@179
    const-string/jumbo v19, ""

    #@17c
    move-object/from16 v0, p1

    #@17e
    move/from16 v1, v17

    #@180
    move/from16 v2, v18

    #@182
    move-object/from16 v3, v19

    #@184
    invoke-interface {v0, v1, v2, v3}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    #@187
    goto/16 :goto_0

    #@189
    .line 241
    .end local v4    # "buf":Ljava/lang/StringBuffer;
    .end local v6    # "destLimit":I
    .end local v7    # "destStart":I
    .end local v12    # "oOutput":I
    .end local v15    # "tempExtra":I
    .end local v16    # "tempStart":I
    .restart local v9    # "n":I
    :cond_9
    add-int/2addr v10, v9

    #@18a
    .line 257
    .end local v9    # "n":I
    :goto_5
    const/16 v17, 0x0

    #@18c
    aput v10, p4, v17

    #@18e
    .line 260
    :cond_a
    return v13

    #@18f
    .line 242
    :cond_b
    move-object/from16 v0, p0

    #@191
    iget v0, v0, Landroid/icu/text/StringReplacer;->cursorPos:I

    #@193
    move/from16 v17, v0

    #@195
    move-object/from16 v0, p0

    #@197
    iget-object v0, v0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    #@199
    move-object/from16 v18, v0

    #@19b
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    #@19e
    move-result v18

    #@19f
    move/from16 v0, v17

    #@1a1
    move/from16 v1, v18

    #@1a3
    if-le v0, v1, :cond_d

    #@1a5
    .line 243
    add-int v10, p2, v13

    #@1a7
    .line 244
    move-object/from16 v0, p0

    #@1a9
    iget v0, v0, Landroid/icu/text/StringReplacer;->cursorPos:I

    #@1ab
    move/from16 v17, v0

    #@1ad
    move-object/from16 v0, p0

    #@1af
    iget-object v0, v0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    #@1b1
    move-object/from16 v18, v0

    #@1b3
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    #@1b6
    move-result v18

    #@1b7
    sub-int v9, v17, v18

    #@1b9
    .line 246
    .restart local v9    # "n":I
    :goto_6
    if-lez v9, :cond_c

    #@1bb
    invoke-interface/range {p1 .. p1}, Landroid/icu/text/Replaceable;->length()I

    #@1be
    move-result v17

    #@1bf
    move/from16 v0, v17

    #@1c1
    if-ge v10, v0, :cond_c

    #@1c3
    .line 247
    move-object/from16 v0, p1

    #@1c5
    invoke-interface {v0, v10}, Landroid/icu/text/Replaceable;->char32At(I)I

    #@1c8
    move-result v17

    #@1c9
    invoke-static/range {v17 .. v17}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@1cc
    move-result v17

    #@1cd
    add-int v10, v10, v17

    #@1cf
    .line 248
    add-int/lit8 v9, v9, -0x1

    #@1d1
    goto :goto_6

    #@1d2
    .line 250
    :cond_c
    add-int/2addr v10, v9

    #@1d3
    goto :goto_5

    #@1d4
    .line 254
    .end local v9    # "n":I
    :cond_d
    add-int v10, v10, p2

    #@1d6
    goto :goto_5
.end method

.method public toReplacerPattern(Z)Ljava/lang/String;
    .locals 13
    .param p1, "escapeUnprintable"    # Z

    #@0
    .prologue
    const/16 v12, 0x7c

    #@2
    const/16 v11, 0x40

    #@4
    const/4 v10, 0x0

    #@5
    const/4 v9, 0x1

    #@6
    .line 267
    new-instance v7, Ljava/lang/StringBuffer;

    #@8
    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    #@b
    .line 268
    .local v7, "rule":Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuffer;

    #@d
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    #@10
    .line 270
    .local v5, "quoteBuf":Ljava/lang/StringBuffer;
    iget v2, p0, Landroid/icu/text/StringReplacer;->cursorPos:I

    #@12
    .line 273
    .local v2, "cursor":I
    iget-boolean v8, p0, Landroid/icu/text/StringReplacer;->hasCursor:Z

    #@14
    if-eqz v8, :cond_0

    #@16
    if-gez v2, :cond_0

    #@18
    move v3, v2

    #@19
    .line 274
    .end local v2    # "cursor":I
    .local v3, "cursor":I
    :goto_0
    add-int/lit8 v2, v3, 0x1

    #@1b
    .end local v3    # "cursor":I
    .restart local v2    # "cursor":I
    if-gez v3, :cond_0

    #@1d
    .line 275
    invoke-static {v7, v11, v9, p1, v5}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    #@20
    move v3, v2

    #@21
    .end local v2    # "cursor":I
    .restart local v3    # "cursor":I
    goto :goto_0

    #@22
    .line 280
    .end local v3    # "cursor":I
    .restart local v2    # "cursor":I
    :cond_0
    const/4 v4, 0x0

    #@23
    .local v4, "i":I
    :goto_1
    iget-object v8, p0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    #@25
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@28
    move-result v8

    #@29
    if-ge v4, v8, :cond_3

    #@2b
    .line 281
    iget-boolean v8, p0, Landroid/icu/text/StringReplacer;->hasCursor:Z

    #@2d
    if-eqz v8, :cond_1

    #@2f
    if-ne v4, v2, :cond_1

    #@31
    .line 282
    invoke-static {v7, v12, v9, p1, v5}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    #@34
    .line 284
    :cond_1
    iget-object v8, p0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    #@36
    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    #@39
    move-result v1

    #@3a
    .line 286
    .local v1, "c":C
    iget-object v8, p0, Landroid/icu/text/StringReplacer;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@3c
    invoke-virtual {v8, v1}, Landroid/icu/text/RuleBasedTransliterator$Data;->lookupReplacer(I)Landroid/icu/text/UnicodeReplacer;

    #@3f
    move-result-object v6

    #@40
    .line 287
    .local v6, "r":Landroid/icu/text/UnicodeReplacer;
    if-nez v6, :cond_2

    #@42
    .line 288
    invoke-static {v7, v1, v10, p1, v5}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    #@45
    .line 280
    :goto_2
    add-int/lit8 v4, v4, 0x1

    #@47
    goto :goto_1

    #@48
    .line 290
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    #@4a
    const-string/jumbo v8, " "

    #@4d
    invoke-direct {v0, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@50
    .line 291
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-interface {v6, p1}, Landroid/icu/text/UnicodeReplacer;->toReplacerPattern(Z)Ljava/lang/String;

    #@53
    move-result-object v8

    #@54
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@57
    .line 292
    const/16 v8, 0x20

    #@59
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@5c
    .line 293
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@5f
    move-result-object v8

    #@60
    invoke-static {v7, v8, v9, p1, v5}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;Ljava/lang/String;ZZLjava/lang/StringBuffer;)V

    #@63
    goto :goto_2

    #@64
    .line 301
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v1    # "c":C
    .end local v6    # "r":Landroid/icu/text/UnicodeReplacer;
    :cond_3
    iget-boolean v8, p0, Landroid/icu/text/StringReplacer;->hasCursor:Z

    #@66
    if-eqz v8, :cond_5

    #@68
    iget-object v8, p0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    #@6a
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@6d
    move-result v8

    #@6e
    if-le v2, v8, :cond_5

    #@70
    .line 302
    iget-object v8, p0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    #@72
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@75
    move-result v8

    #@76
    sub-int/2addr v2, v8

    #@77
    move v3, v2

    #@78
    .line 303
    .end local v2    # "cursor":I
    .restart local v3    # "cursor":I
    :goto_3
    add-int/lit8 v2, v3, -0x1

    #@7a
    .end local v3    # "cursor":I
    .restart local v2    # "cursor":I
    if-lez v3, :cond_4

    #@7c
    .line 304
    invoke-static {v7, v11, v9, p1, v5}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    #@7f
    move v3, v2

    #@80
    .end local v2    # "cursor":I
    .restart local v3    # "cursor":I
    goto :goto_3

    #@81
    .line 306
    .end local v3    # "cursor":I
    .restart local v2    # "cursor":I
    :cond_4
    invoke-static {v7, v12, v9, p1, v5}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    #@84
    .line 309
    :cond_5
    const/4 v8, -0x1

    #@85
    invoke-static {v7, v8, v9, p1, v5}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    #@88
    .line 312
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@8b
    move-result-object v8

    #@8c
    return-object v8
.end method
