.class Landroid/icu/text/StringMatcher;
.super Ljava/lang/Object;
.source "StringMatcher.java"

# interfaces
.implements Landroid/icu/text/UnicodeMatcher;
.implements Landroid/icu/text/UnicodeReplacer;


# instance fields
.field private final data:Landroid/icu/text/RuleBasedTransliterator$Data;

.field private matchLimit:I

.field private matchStart:I

.field private pattern:Ljava/lang/String;

.field private segmentNumber:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILandroid/icu/text/RuleBasedTransliterator$Data;)V
    .locals 1
    .param p1, "theString"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "limit"    # I
    .param p4, "segmentNum"    # I
    .param p5, "theData"    # Landroid/icu/text/RuleBasedTransliterator$Data;

    #@0
    .prologue
    .line 94
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p4, p5}, Landroid/icu/text/StringMatcher;-><init>(Ljava/lang/String;ILandroid/icu/text/RuleBasedTransliterator$Data;)V

    #@7
    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/icu/text/RuleBasedTransliterator$Data;)V
    .locals 1
    .param p1, "theString"    # Ljava/lang/String;
    .param p2, "segmentNum"    # I
    .param p3, "theData"    # Landroid/icu/text/RuleBasedTransliterator$Data;

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 70
    iput-object p3, p0, Landroid/icu/text/StringMatcher;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@6
    .line 71
    iput-object p1, p0, Landroid/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    #@8
    .line 72
    iput v0, p0, Landroid/icu/text/StringMatcher;->matchLimit:I

    #@a
    iput v0, p0, Landroid/icu/text/StringMatcher;->matchStart:I

    #@c
    .line 73
    iput p2, p0, Landroid/icu/text/StringMatcher;->segmentNumber:I

    #@e
    .line 69
    return-void
.end method


# virtual methods
.method public addMatchSetTo(Landroid/icu/text/UnicodeSet;)V
    .locals 4
    .param p1, "toUnionTo"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 221
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    #@3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@6
    move-result v3

    #@7
    if-ge v1, v3, :cond_1

    #@9
    .line 222
    iget-object v3, p0, Landroid/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    #@b
    invoke-static {v3, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@e
    move-result v0

    #@f
    .line 223
    .local v0, "ch":I
    iget-object v3, p0, Landroid/icu/text/StringMatcher;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@11
    invoke-virtual {v3, v0}, Landroid/icu/text/RuleBasedTransliterator$Data;->lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;

    #@14
    move-result-object v2

    #@15
    .line 224
    .local v2, "matcher":Landroid/icu/text/UnicodeMatcher;
    if-nez v2, :cond_0

    #@17
    .line 225
    invoke-virtual {p1, v0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@1a
    .line 221
    :goto_1
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@1d
    move-result v3

    #@1e
    add-int/2addr v1, v3

    #@1f
    goto :goto_0

    #@20
    .line 227
    :cond_0
    invoke-interface {v2, p1}, Landroid/icu/text/UnicodeMatcher;->addMatchSetTo(Landroid/icu/text/UnicodeSet;)V

    #@23
    goto :goto_1

    #@24
    .line 219
    .end local v0    # "ch":I
    .end local v2    # "matcher":Landroid/icu/text/UnicodeMatcher;
    :cond_1
    return-void
.end method

.method public addReplacementSetTo(Landroid/icu/text/UnicodeSet;)V
    .locals 0
    .param p1, "toUnionTo"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 281
    return-void
.end method

.method public matches(Landroid/icu/text/Replaceable;[IIZ)I
    .locals 9
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "offset"    # [I
    .param p3, "limit"    # I
    .param p4, "incremental"    # Z

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x2

    #@2
    const/4 v6, 0x0

    #@3
    .line 109
    new-array v0, v8, [I

    #@5
    aget v5, p2, v6

    #@7
    aput v5, v0, v6

    #@9
    .line 110
    .local v0, "cursor":[I
    aget v5, v0, v6

    #@b
    if-ge p3, v5, :cond_5

    #@d
    .line 112
    iget-object v5, p0, Landroid/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    #@f
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@12
    move-result v5

    #@13
    add-int/lit8 v1, v5, -0x1

    #@15
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    #@17
    .line 113
    iget-object v5, p0, Landroid/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    #@19
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    #@1c
    move-result v2

    #@1d
    .line 114
    .local v2, "keyChar":C
    iget-object v5, p0, Landroid/icu/text/StringMatcher;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@1f
    invoke-virtual {v5, v2}, Landroid/icu/text/RuleBasedTransliterator$Data;->lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;

    #@22
    move-result-object v4

    #@23
    .line 115
    .local v4, "subm":Landroid/icu/text/UnicodeMatcher;
    if-nez v4, :cond_2

    #@25
    .line 116
    aget v5, v0, v6

    #@27
    if-le v5, p3, :cond_1

    #@29
    .line 117
    aget v5, v0, v6

    #@2b
    invoke-interface {p1, v5}, Landroid/icu/text/Replaceable;->charAt(I)C

    #@2e
    move-result v5

    #@2f
    if-ne v2, v5, :cond_1

    #@31
    .line 118
    aget v5, v0, v6

    #@33
    add-int/lit8 v5, v5, -0x1

    #@35
    aput v5, v0, v6

    #@37
    .line 112
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@39
    goto :goto_0

    #@3a
    .line 120
    :cond_1
    return v6

    #@3b
    .line 124
    :cond_2
    invoke-interface {v4, p1, v0, p3, p4}, Landroid/icu/text/UnicodeMatcher;->matches(Landroid/icu/text/Replaceable;[IIZ)I

    #@3e
    move-result v3

    #@3f
    .line 125
    .local v3, "m":I
    if-eq v3, v7, :cond_0

    #@41
    .line 126
    return v3

    #@42
    .line 133
    .end local v2    # "keyChar":C
    .end local v3    # "m":I
    .end local v4    # "subm":Landroid/icu/text/UnicodeMatcher;
    :cond_3
    iget v5, p0, Landroid/icu/text/StringMatcher;->matchStart:I

    #@44
    if-gez v5, :cond_4

    #@46
    .line 134
    aget v5, v0, v6

    #@48
    add-int/lit8 v5, v5, 0x1

    #@4a
    iput v5, p0, Landroid/icu/text/StringMatcher;->matchStart:I

    #@4c
    .line 135
    aget v5, p2, v6

    #@4e
    add-int/lit8 v5, v5, 0x1

    #@50
    iput v5, p0, Landroid/icu/text/StringMatcher;->matchLimit:I

    #@52
    .line 169
    :cond_4
    :goto_1
    aget v5, v0, v6

    #@54
    aput v5, p2, v6

    #@56
    .line 170
    return v7

    #@57
    .line 138
    .end local v1    # "i":I
    :cond_5
    const/4 v1, 0x0

    #@58
    .restart local v1    # "i":I
    :goto_2
    iget-object v5, p0, Landroid/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    #@5a
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@5d
    move-result v5

    #@5e
    if-ge v1, v5, :cond_a

    #@60
    .line 139
    if-eqz p4, :cond_6

    #@62
    aget v5, v0, v6

    #@64
    if-ne v5, p3, :cond_6

    #@66
    .line 142
    return v8

    #@67
    .line 144
    :cond_6
    iget-object v5, p0, Landroid/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    #@69
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    #@6c
    move-result v2

    #@6d
    .line 145
    .restart local v2    # "keyChar":C
    iget-object v5, p0, Landroid/icu/text/StringMatcher;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@6f
    invoke-virtual {v5, v2}, Landroid/icu/text/RuleBasedTransliterator$Data;->lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;

    #@72
    move-result-object v4

    #@73
    .line 146
    .restart local v4    # "subm":Landroid/icu/text/UnicodeMatcher;
    if-nez v4, :cond_9

    #@75
    .line 150
    aget v5, v0, v6

    #@77
    if-ge v5, p3, :cond_8

    #@79
    .line 151
    aget v5, v0, v6

    #@7b
    invoke-interface {p1, v5}, Landroid/icu/text/Replaceable;->charAt(I)C

    #@7e
    move-result v5

    #@7f
    if-ne v2, v5, :cond_8

    #@81
    .line 152
    aget v5, v0, v6

    #@83
    add-int/lit8 v5, v5, 0x1

    #@85
    aput v5, v0, v6

    #@87
    .line 138
    :cond_7
    add-int/lit8 v1, v1, 0x1

    #@89
    goto :goto_2

    #@8a
    .line 154
    :cond_8
    return v6

    #@8b
    .line 158
    :cond_9
    invoke-interface {v4, p1, v0, p3, p4}, Landroid/icu/text/UnicodeMatcher;->matches(Landroid/icu/text/Replaceable;[IIZ)I

    #@8e
    move-result v3

    #@8f
    .line 159
    .restart local v3    # "m":I
    if-eq v3, v7, :cond_7

    #@91
    .line 160
    return v3

    #@92
    .line 165
    .end local v2    # "keyChar":C
    .end local v3    # "m":I
    .end local v4    # "subm":Landroid/icu/text/UnicodeMatcher;
    :cond_a
    aget v5, p2, v6

    #@94
    iput v5, p0, Landroid/icu/text/StringMatcher;->matchStart:I

    #@96
    .line 166
    aget v5, v0, v6

    #@98
    iput v5, p0, Landroid/icu/text/StringMatcher;->matchLimit:I

    #@9a
    goto :goto_1
.end method

.method public matchesIndexValue(I)Z
    .locals 5
    .param p1, "v"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 205
    iget-object v4, p0, Landroid/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    #@4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@7
    move-result v4

    #@8
    if-nez v4, :cond_0

    #@a
    .line 206
    return v2

    #@b
    .line 208
    :cond_0
    iget-object v4, p0, Landroid/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    #@d
    invoke-static {v4, v3}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@10
    move-result v0

    #@11
    .line 209
    .local v0, "c":I
    iget-object v4, p0, Landroid/icu/text/StringMatcher;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@13
    invoke-virtual {v4, v0}, Landroid/icu/text/RuleBasedTransliterator$Data;->lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;

    #@16
    move-result-object v1

    #@17
    .line 210
    .local v1, "m":Landroid/icu/text/UnicodeMatcher;
    if-nez v1, :cond_2

    #@19
    and-int/lit16 v4, v0, 0xff

    #@1b
    if-ne v4, p1, :cond_1

    #@1d
    :goto_0
    return v2

    #@1e
    :cond_1
    move v2, v3

    #@1f
    goto :goto_0

    #@20
    :cond_2
    invoke-interface {v1, p1}, Landroid/icu/text/UnicodeMatcher;->matchesIndexValue(I)Z

    #@23
    move-result v2

    #@24
    goto :goto_0
.end method

.method public replace(Landroid/icu/text/Replaceable;II[I)I
    .locals 4
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "start"    # I
    .param p3, "limit"    # I
    .param p4, "cursor"    # [I

    #@0
    .prologue
    .line 240
    const/4 v1, 0x0

    #@1
    .line 243
    .local v1, "outLen":I
    move v0, p3

    #@2
    .line 246
    .local v0, "dest":I
    iget v2, p0, Landroid/icu/text/StringMatcher;->matchStart:I

    #@4
    if-ltz v2, :cond_0

    #@6
    .line 247
    iget v2, p0, Landroid/icu/text/StringMatcher;->matchStart:I

    #@8
    iget v3, p0, Landroid/icu/text/StringMatcher;->matchLimit:I

    #@a
    if-eq v2, v3, :cond_0

    #@c
    .line 248
    iget v2, p0, Landroid/icu/text/StringMatcher;->matchStart:I

    #@e
    iget v3, p0, Landroid/icu/text/StringMatcher;->matchLimit:I

    #@10
    invoke-interface {p1, v2, v3, p3}, Landroid/icu/text/Replaceable;->copy(III)V

    #@13
    .line 249
    iget v2, p0, Landroid/icu/text/StringMatcher;->matchLimit:I

    #@15
    iget v3, p0, Landroid/icu/text/StringMatcher;->matchStart:I

    #@17
    sub-int v1, v2, v3

    #@19
    .line 253
    :cond_0
    const-string/jumbo v2, ""

    #@1c
    invoke-interface {p1, p2, p3, v2}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    #@1f
    .line 255
    return v1
.end method

.method public resetMatch()V
    .locals 1

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 273
    iput v0, p0, Landroid/icu/text/StringMatcher;->matchLimit:I

    #@3
    iput v0, p0, Landroid/icu/text/StringMatcher;->matchStart:I

    #@5
    .line 272
    return-void
.end method

.method public toPattern(Z)Ljava/lang/String;
    .locals 8
    .param p1, "escapeUnprintable"    # Z

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 177
    new-instance v4, Ljava/lang/StringBuffer;

    #@4
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    #@7
    .line 178
    .local v4, "result":Ljava/lang/StringBuffer;
    new-instance v3, Ljava/lang/StringBuffer;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    #@c
    .line 179
    .local v3, "quoteBuf":Ljava/lang/StringBuffer;
    iget v5, p0, Landroid/icu/text/StringMatcher;->segmentNumber:I

    #@e
    if-lez v5, :cond_0

    #@10
    .line 180
    const/16 v5, 0x28

    #@12
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@15
    .line 182
    :cond_0
    const/4 v0, 0x0

    #@16
    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Landroid/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    #@18
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@1b
    move-result v5

    #@1c
    if-ge v0, v5, :cond_2

    #@1e
    .line 183
    iget-object v5, p0, Landroid/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    #@20
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    #@23
    move-result v1

    #@24
    .line 184
    .local v1, "keyChar":C
    iget-object v5, p0, Landroid/icu/text/StringMatcher;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@26
    invoke-virtual {v5, v1}, Landroid/icu/text/RuleBasedTransliterator$Data;->lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;

    #@29
    move-result-object v2

    #@2a
    .line 185
    .local v2, "m":Landroid/icu/text/UnicodeMatcher;
    if-nez v2, :cond_1

    #@2c
    .line 186
    invoke-static {v4, v1, v6, p1, v3}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    #@2f
    .line 182
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_0

    #@32
    .line 188
    :cond_1
    invoke-interface {v2, p1}, Landroid/icu/text/UnicodeMatcher;->toPattern(Z)Ljava/lang/String;

    #@35
    move-result-object v5

    #@36
    invoke-static {v4, v5, v7, p1, v3}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;Ljava/lang/String;ZZLjava/lang/StringBuffer;)V

    #@39
    goto :goto_1

    #@3a
    .line 192
    .end local v1    # "keyChar":C
    .end local v2    # "m":Landroid/icu/text/UnicodeMatcher;
    :cond_2
    iget v5, p0, Landroid/icu/text/StringMatcher;->segmentNumber:I

    #@3c
    if-lez v5, :cond_3

    #@3e
    .line 193
    const/16 v5, 0x29

    #@40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@43
    .line 196
    :cond_3
    const/4 v5, -0x1

    #@44
    invoke-static {v4, v5, v7, p1, v3}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    #@47
    .line 198
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@4a
    move-result-object v5

    #@4b
    return-object v5
.end method

.method public toReplacerPattern(Z)Ljava/lang/String;
    .locals 4
    .param p1, "escapeUnprintable"    # Z

    #@0
    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    const-string/jumbo v1, "$"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@8
    .line 264
    .local v0, "rule":Ljava/lang/StringBuffer;
    iget v1, p0, Landroid/icu/text/StringMatcher;->segmentNumber:I

    #@a
    const/16 v2, 0xa

    #@c
    const/4 v3, 0x1

    #@d
    invoke-static {v0, v1, v2, v3}, Landroid/icu/impl/Utility;->appendNumber(Ljava/lang/Appendable;III)Ljava/lang/Appendable;

    #@10
    .line 265
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    return-object v1
.end method
