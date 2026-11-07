.class Landroid/icu/text/NameUnicodeTransliterator;
.super Landroid/icu/text/Transliterator;
.source "NameUnicodeTransliterator.java"


# static fields
.field static final blacklist CLOSE_DELIM:C = '}'

.field static final blacklist OPEN_DELIM:C = '\\'

.field static final blacklist OPEN_PAT:Ljava/lang/String; = "\\N~{~"

.field static final blacklist SPACE:C = ' '

.field static final blacklist _ID:Ljava/lang/String; = "Name-Any"


# direct methods
.method public constructor blacklist <init>(Landroid/icu/text/UnicodeFilter;)V
    .registers 3
    .param p1, "filter"    # Landroid/icu/text/UnicodeFilter;

    .line 44
    const-string v0, "Name-Any"

    invoke-direct {p0, v0, p1}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    .line 45
    return-void
.end method

.method static blacklist register()V
    .registers 2

    .line 32
    new-instance v0, Landroid/icu/text/NameUnicodeTransliterator$1;

    invoke-direct {v0}, Landroid/icu/text/NameUnicodeTransliterator$1;-><init>()V

    const-string v1, "Name-Any"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    .line 38
    return-void
.end method


# virtual methods
.method public blacklist addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .registers 10
    .param p1, "inputFilter"    # Landroid/icu/text/UnicodeSet;
    .param p2, "sourceSet"    # Landroid/icu/text/UnicodeSet;
    .param p3, "targetSet"    # Landroid/icu/text/UnicodeSet;

    .line 179
    invoke-virtual {p0, p1}, Landroid/icu/text/NameUnicodeTransliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    .line 180
    .local v0, "myFilter":Landroid/icu/text/UnicodeSet;
    const-string v1, "\\N{"

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_72

    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v3

    if-nez v3, :cond_15

    goto :goto_72

    .line 183
    :cond_15
    new-instance v3, Landroid/icu/text/UnicodeSet;

    invoke-direct {v3}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 184
    const/16 v4, 0x30

    const/16 v5, 0x39

    invoke-virtual {v3, v4, v5}, Landroid/icu/text/UnicodeSet;->addAll(II)Landroid/icu/text/UnicodeSet;

    move-result-object v3

    .line 185
    const/16 v4, 0x41

    const/16 v5, 0x46

    invoke-virtual {v3, v4, v5}, Landroid/icu/text/UnicodeSet;->addAll(II)Landroid/icu/text/UnicodeSet;

    move-result-object v3

    .line 186
    const/16 v4, 0x61

    const/16 v5, 0x7a

    invoke-virtual {v3, v4, v5}, Landroid/icu/text/UnicodeSet;->addAll(II)Landroid/icu/text/UnicodeSet;

    move-result-object v3

    .line 187
    const/16 v4, 0x3c

    invoke-virtual {v3, v4}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v3

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v3

    .line 188
    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v3

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v3

    .line 189
    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v3

    .line 190
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v3

    .line 191
    invoke-virtual {v3, v1}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    .line 192
    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    .line 193
    .local v1, "items":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v1, v0}, Landroid/icu/text/UnicodeSet;->retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 194
    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->size()I

    move-result v2

    if-lez v2, :cond_71

    .line 195
    invoke-virtual {p2, v1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 197
    const/4 v2, 0x0

    const v3, 0x10ffff

    invoke-virtual {p3, v2, v3}, Landroid/icu/text/UnicodeSet;->addAll(II)Landroid/icu/text/UnicodeSet;

    .line 199
    :cond_71
    return-void

    .line 181
    .end local v1    # "items":Landroid/icu/text/UnicodeSet;
    :cond_72
    :goto_72
    return-void
.end method

.method protected blacklist handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .registers 16
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "offsets"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "isIncremental"    # Z

    .line 54
    sget-object v0, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    invoke-virtual {v0}, Landroid/icu/impl/UCharacterName;->getMaxCharNameLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 56
    .local v0, "maxLen":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 59
    .local v1, "name":Ljava/lang/StringBuffer;
    new-instance v2, Landroid/icu/text/UnicodeSet;

    invoke-direct {v2}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 60
    .local v2, "legal":Landroid/icu/text/UnicodeSet;
    sget-object v3, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    invoke-virtual {v3, v2}, Landroid/icu/impl/UCharacterName;->getCharNameCharacters(Landroid/icu/text/UnicodeSet;)V

    .line 62
    iget v3, p2, Landroid/icu/text/Transliterator$Position;->start:I

    .line 63
    .local v3, "cursor":I
    iget v4, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 68
    .local v4, "limit":I
    const/4 v5, 0x0

    .line 69
    .local v5, "mode":I
    const/4 v6, -0x1

    .line 72
    .local v6, "openPos":I
    :goto_1d
    if-ge v3, v4, :cond_b8

    .line 73
    invoke-interface {p1, v3}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v7

    .line 75
    .local v7, "c":I
    packed-switch v5, :pswitch_data_ce

    goto/16 :goto_b1

    .line 97
    :pswitch_28
    invoke-static {v7}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v8

    const/16 v9, 0x20

    if-eqz v8, :cond_4d

    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-lez v8, :cond_b1

    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    if-eq v8, v9, :cond_b1

    .line 101
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-le v8, v0, :cond_b1

    .line 105
    const/4 v5, 0x0

    goto :goto_b1

    .line 111
    :cond_4d
    const/16 v8, 0x7d

    if-ne v7, v8, :cond_84

    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    .line 116
    .local v8, "len":I
    if-lez v8, :cond_64

    add-int/lit8 v10, v8, -0x1

    .line 117
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v10

    if-ne v10, v9, :cond_64

    .line 118
    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 121
    :cond_64
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/icu/lang/UCharacter;->getCharFromExtendedName(Ljava/lang/String;)I

    move-result v7

    .line 122
    const/4 v9, -0x1

    if-eq v7, v9, :cond_81

    .line 126
    add-int/lit8 v3, v3, 0x1

    .line 128
    invoke-static {v7}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 129
    .local v9, "str":Ljava/lang/String;
    invoke-interface {p1, v6, v3, v9}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    .line 134
    sub-int v10, v3, v6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v10, v11

    .line 135
    .local v10, "delta":I
    sub-int/2addr v3, v10

    .line 136
    sub-int/2addr v4, v10

    .line 141
    .end local v9    # "str":Ljava/lang/String;
    .end local v10    # "delta":I
    :cond_81
    const/4 v5, 0x0

    .line 142
    const/4 v6, -0x1

    .line 143
    goto :goto_1d

    .line 146
    .end local v8    # "len":I
    :cond_84
    invoke-virtual {v2, v7}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v8

    if-eqz v8, :cond_95

    .line 147
    invoke-static {v1, v7}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    .line 150
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-lt v8, v0, :cond_b1

    .line 151
    const/4 v5, 0x0

    goto :goto_b1

    .line 157
    :cond_95
    add-int/lit8 v3, v3, -0x1

    .line 158
    const/4 v5, 0x0

    goto :goto_b1

    .line 77
    :pswitch_99
    const/16 v8, 0x5c

    if-ne v7, v8, :cond_b1

    .line 78
    move v6, v3

    .line 79
    const-string v8, "\\N~{~"

    invoke-static {v8, p1, v3, v4}, Landroid/icu/impl/Utility;->parsePattern(Ljava/lang/String;Landroid/icu/text/Replaceable;II)I

    move-result v8

    .line 80
    .local v8, "i":I
    if-ltz v8, :cond_b0

    if-ge v8, v4, :cond_b0

    .line 81
    const/4 v5, 0x1

    .line 82
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 83
    move v3, v8

    .line 84
    goto/16 :goto_1d

    .line 86
    .end local v8    # "i":I
    :cond_b0
    nop

    .line 164
    :cond_b1
    :goto_b1
    invoke-static {v7}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v8

    add-int/2addr v3, v8

    goto/16 :goto_1d

    .line 167
    .end local v7    # "c":I
    :cond_b8
    iget v7, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    iget v8, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    sub-int v8, v4, v8

    add-int/2addr v7, v8

    iput v7, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    .line 168
    iput v4, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 171
    if-eqz p3, :cond_c9

    if-ltz v6, :cond_c9

    move v7, v6

    goto :goto_ca

    :cond_c9
    move v7, v3

    :goto_ca
    iput v7, p2, Landroid/icu/text/Transliterator$Position;->start:I

    .line 172
    return-void

    nop

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_99
        :pswitch_28
    .end packed-switch
.end method
