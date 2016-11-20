.class Landroid/icu/text/NameUnicodeTransliterator;
.super Landroid/icu/text/Transliterator;
.source "NameUnicodeTransliterator.java"


# static fields
.field static final CLOSE_DELIM:C = '}'

.field static final OPEN_DELIM:C = '\\'

.field static final OPEN_PAT:Ljava/lang/String; = "\\N~{~"

.field static final SPACE:C = ' '

.field static final _ID:Ljava/lang/String; = "Name-Any"


# direct methods
.method public constructor <init>(Landroid/icu/text/UnicodeFilter;)V
    .locals 1
    .param p1, "filter"    # Landroid/icu/text/UnicodeFilter;

    #@0
    .prologue
    .line 41
    const-string/jumbo v0, "Name-Any"

    #@3
    invoke-direct {p0, v0, p1}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    #@6
    .line 40
    return-void
.end method

.method static register()V
    .locals 2

    #@0
    .prologue
    .line 30
    const-string/jumbo v0, "Name-Any"

    #@3
    new-instance v1, Landroid/icu/text/NameUnicodeTransliterator$1;

    #@5
    invoke-direct {v1}, Landroid/icu/text/NameUnicodeTransliterator$1;-><init>()V

    #@8
    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    #@b
    .line 29
    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 7
    .param p1, "inputFilter"    # Landroid/icu/text/UnicodeSet;
    .param p2, "sourceSet"    # Landroid/icu/text/UnicodeSet;
    .param p3, "targetSet"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    const/16 v6, 0x7d

    #@2
    const/4 v5, 0x0

    #@3
    .line 175
    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@6
    move-result-object v1

    #@7
    .line 176
    .local v1, "myFilter":Landroid/icu/text/UnicodeSet;
    const-string/jumbo v2, "\\N{"

    #@a
    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    invoke-virtual {v1, v6}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_1

    #@16
    .line 179
    new-instance v2, Landroid/icu/text/UnicodeSet;

    #@18
    invoke-direct {v2}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@1b
    .line 180
    const/16 v3, 0x30

    #@1d
    const/16 v4, 0x39

    #@1f
    .line 179
    invoke-virtual {v2, v3, v4}, Landroid/icu/text/UnicodeSet;->addAll(II)Landroid/icu/text/UnicodeSet;

    #@22
    move-result-object v2

    #@23
    .line 181
    const/16 v3, 0x41

    #@25
    const/16 v4, 0x46

    #@27
    .line 179
    invoke-virtual {v2, v3, v4}, Landroid/icu/text/UnicodeSet;->addAll(II)Landroid/icu/text/UnicodeSet;

    #@2a
    move-result-object v2

    #@2b
    .line 182
    const/16 v3, 0x61

    #@2d
    const/16 v4, 0x7a

    #@2f
    .line 179
    invoke-virtual {v2, v3, v4}, Landroid/icu/text/UnicodeSet;->addAll(II)Landroid/icu/text/UnicodeSet;

    #@32
    move-result-object v2

    #@33
    .line 183
    const/16 v3, 0x3c

    #@35
    .line 179
    invoke-virtual {v2, v3}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@38
    move-result-object v2

    #@39
    .line 183
    const/16 v3, 0x3e

    #@3b
    .line 179
    invoke-virtual {v2, v3}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@3e
    move-result-object v2

    #@3f
    .line 184
    const/16 v3, 0x28

    #@41
    .line 179
    invoke-virtual {v2, v3}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@44
    move-result-object v2

    #@45
    .line 184
    const/16 v3, 0x29

    #@47
    .line 179
    invoke-virtual {v2, v3}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@4a
    move-result-object v2

    #@4b
    .line 185
    const/16 v3, 0x2d

    #@4d
    .line 179
    invoke-virtual {v2, v3}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@50
    move-result-object v2

    #@51
    .line 186
    const/16 v3, 0x20

    #@53
    .line 179
    invoke-virtual {v2, v3}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@56
    move-result-object v2

    #@57
    .line 187
    const-string/jumbo v3, "\\N{"

    #@5a
    .line 179
    invoke-virtual {v2, v3}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v2, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@61
    move-result-object v0

    #@62
    .line 189
    .local v0, "items":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@65
    .line 190
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->size()I

    #@68
    move-result v2

    #@69
    if-lez v2, :cond_0

    #@6b
    .line 191
    invoke-virtual {p2, v0}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@6e
    .line 193
    const v2, 0x10ffff

    #@71
    invoke-virtual {p3, v5, v2}, Landroid/icu/text/UnicodeSet;->addAll(II)Landroid/icu/text/UnicodeSet;

    #@74
    .line 174
    :cond_0
    return-void

    #@75
    .line 177
    .end local v0    # "items":Landroid/icu/text/UnicodeSet;
    :cond_1
    return-void
.end method

.method protected handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 15
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "offsets"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "isIncremental"    # Z

    #@0
    .prologue
    .line 50
    sget-object v13, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    #@2
    invoke-virtual {v13}, Landroid/icu/impl/UCharacterName;->getMaxCharNameLength()I

    #@5
    move-result v13

    #@6
    add-int/lit8 v8, v13, 0x1

    #@8
    .line 52
    .local v8, "maxLen":I
    new-instance v10, Ljava/lang/StringBuffer;

    #@a
    invoke-direct {v10, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    #@d
    .line 55
    .local v10, "name":Ljava/lang/StringBuffer;
    new-instance v5, Landroid/icu/text/UnicodeSet;

    #@f
    invoke-direct {v5}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@12
    .line 56
    .local v5, "legal":Landroid/icu/text/UnicodeSet;
    sget-object v13, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    #@14
    invoke-virtual {v13, v5}, Landroid/icu/impl/UCharacterName;->getCharNameCharacters(Landroid/icu/text/UnicodeSet;)V

    #@17
    .line 58
    move-object/from16 v0, p2

    #@19
    iget v2, v0, Landroid/icu/text/Transliterator$Position;->start:I

    #@1b
    .line 59
    .local v2, "cursor":I
    move-object/from16 v0, p2

    #@1d
    iget v7, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    #@1f
    .line 64
    .local v7, "limit":I
    const/4 v9, 0x0

    #@20
    .line 65
    .local v9, "mode":I
    const/4 v11, -0x1

    #@21
    .line 68
    .local v11, "openPos":I
    :goto_0
    if-ge v2, v7, :cond_6

    #@23
    .line 69
    move-object/from16 v0, p1

    #@25
    invoke-interface {v0, v2}, Landroid/icu/text/Replaceable;->char32At(I)I

    #@28
    move-result v1

    #@29
    .line 71
    .local v1, "c":I
    packed-switch v9, :pswitch_data_0

    #@2c
    .line 160
    :cond_0
    :goto_1
    invoke-static {v1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@2f
    move-result v13

    #@30
    add-int/2addr v2, v13

    #@31
    goto :goto_0

    #@32
    .line 73
    :pswitch_0
    const/16 v13, 0x5c

    #@34
    if-ne v1, v13, :cond_0

    #@36
    .line 74
    move v11, v2

    #@37
    .line 75
    const-string/jumbo v13, "\\N~{~"

    #@3a
    move-object/from16 v0, p1

    #@3c
    invoke-static {v13, v0, v2, v7}, Landroid/icu/impl/Utility;->parsePattern(Ljava/lang/String;Landroid/icu/text/Replaceable;II)I

    #@3f
    move-result v4

    #@40
    .line 76
    .local v4, "i":I
    if-ltz v4, :cond_0

    #@42
    if-ge v4, v7, :cond_0

    #@44
    .line 77
    const/4 v9, 0x1

    #@45
    .line 78
    const/4 v13, 0x0

    #@46
    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->setLength(I)V

    #@49
    .line 79
    move v2, v4

    #@4a
    .line 80
    goto :goto_0

    #@4b
    .line 93
    .end local v4    # "i":I
    :pswitch_1
    invoke-static {v1}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@4e
    move-result v13

    #@4f
    if-eqz v13, :cond_1

    #@51
    .line 95
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    #@54
    move-result v13

    #@55
    if-lez v13, :cond_0

    #@57
    .line 96
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    #@5a
    move-result v13

    #@5b
    add-int/lit8 v13, v13, -0x1

    #@5d
    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->charAt(I)C

    #@60
    move-result v13

    #@61
    const/16 v14, 0x20

    #@63
    if-eq v13, v14, :cond_0

    #@65
    .line 97
    const/16 v13, 0x20

    #@67
    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@6a
    .line 100
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    #@6d
    move-result v13

    #@6e
    if-le v13, v8, :cond_0

    #@70
    .line 101
    const/4 v9, 0x0

    #@71
    goto :goto_1

    #@72
    .line 107
    :cond_1
    const/16 v13, 0x7d

    #@74
    if-ne v1, v13, :cond_4

    #@76
    .line 109
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    #@79
    move-result v6

    #@7a
    .line 112
    .local v6, "len":I
    if-lez v6, :cond_2

    #@7c
    .line 113
    add-int/lit8 v13, v6, -0x1

    #@7e
    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->charAt(I)C

    #@81
    move-result v13

    #@82
    const/16 v14, 0x20

    #@84
    if-ne v13, v14, :cond_2

    #@86
    .line 114
    add-int/lit8 v6, v6, -0x1

    #@88
    invoke-virtual {v10, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    #@8b
    .line 117
    :cond_2
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@8e
    move-result-object v13

    #@8f
    invoke-static {v13}, Landroid/icu/lang/UCharacter;->getCharFromExtendedName(Ljava/lang/String;)I

    #@92
    move-result v1

    #@93
    .line 118
    const/4 v13, -0x1

    #@94
    if-eq v1, v13, :cond_3

    #@96
    .line 122
    add-int/lit8 v2, v2, 0x1

    #@98
    .line 124
    invoke-static {v1}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    #@9b
    move-result-object v12

    #@9c
    .line 125
    .local v12, "str":Ljava/lang/String;
    move-object/from16 v0, p1

    #@9e
    invoke-interface {v0, v11, v2, v12}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    #@a1
    .line 130
    sub-int v13, v2, v11

    #@a3
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    #@a6
    move-result v14

    #@a7
    sub-int v3, v13, v14

    #@a9
    .line 131
    .local v3, "delta":I
    sub-int/2addr v2, v3

    #@aa
    .line 132
    sub-int/2addr v7, v3

    #@ab
    .line 137
    .end local v3    # "delta":I
    .end local v12    # "str":Ljava/lang/String;
    :cond_3
    const/4 v9, 0x0

    #@ac
    .line 138
    const/4 v11, -0x1

    #@ad
    .line 139
    goto/16 :goto_0

    #@af
    .line 142
    .end local v6    # "len":I
    :cond_4
    invoke-virtual {v5, v1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@b2
    move-result v13

    #@b3
    if-eqz v13, :cond_5

    #@b5
    .line 143
    invoke-static {v10, v1}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    #@b8
    .line 146
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    #@bb
    move-result v13

    #@bc
    if-lt v13, v8, :cond_0

    #@be
    .line 147
    const/4 v9, 0x0

    #@bf
    goto/16 :goto_1

    #@c1
    .line 153
    :cond_5
    add-int/lit8 v2, v2, -0x1

    #@c3
    .line 154
    const/4 v9, 0x0

    #@c4
    goto/16 :goto_1

    #@c6
    .line 163
    .end local v1    # "c":I
    :cond_6
    move-object/from16 v0, p2

    #@c8
    iget v13, v0, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@ca
    move-object/from16 v0, p2

    #@cc
    iget v14, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    #@ce
    sub-int v14, v7, v14

    #@d0
    add-int/2addr v13, v14

    #@d1
    move-object/from16 v0, p2

    #@d3
    iput v13, v0, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@d5
    .line 164
    move-object/from16 v0, p2

    #@d7
    iput v7, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    #@d9
    .line 167
    if-eqz p3, :cond_7

    #@db
    if-ltz v11, :cond_7

    #@dd
    .end local v11    # "openPos":I
    :goto_2
    move-object/from16 v0, p2

    #@df
    iput v11, v0, Landroid/icu/text/Transliterator$Position;->start:I

    #@e1
    .line 48
    return-void

    #@e2
    .restart local v11    # "openPos":I
    :cond_7
    move v11, v2

    #@e3
    .line 167
    goto :goto_2

    #@e4
    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
