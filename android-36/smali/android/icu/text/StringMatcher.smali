.class Landroid/icu/text/StringMatcher;
.super Ljava/lang/Object;
.source "StringMatcher.java"

# interfaces
.implements Landroid/icu/text/UnicodeMatcher;
.implements Landroid/icu/text/UnicodeReplacer;


# instance fields
.field private final greylist-max-o data:Landroid/icu/text/RuleBasedTransliterator$Data;

.field private greylist-max-o matchLimit:I

.field private greylist-max-o matchStart:I

.field private greylist-max-o pattern:Ljava/lang/String;

.field private greylist-max-o segmentNumber:I


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;IIILandroid/icu/text/RuleBasedTransliterator$Data;)V
    .registers 7
    .param p1, "theString"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "limit"    # I
    .param p4, "segmentNum"    # I
    .param p5, "theData"    # Landroid/icu/text/RuleBasedTransliterator$Data;

    .line 96
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p4, p5}, Landroid/icu/text/StringMatcher;-><init>(Ljava/lang/String;ILandroid/icu/text/RuleBasedTransliterator$Data;)V

    .line 97
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;ILandroid/icu/text/RuleBasedTransliterator$Data;)V
    .registers 5
    .param p1, "theString"    # Ljava/lang/String;
    .param p2, "segmentNum"    # I
    .param p3, "theData"    # Landroid/icu/text/RuleBasedTransliterator$Data;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p3, p0, Landroid/icu/text/StringMatcher;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    .line 73
    iput-object p1, p0, Landroid/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/text/StringMatcher;->matchLimit:I

    iput v0, p0, Landroid/icu/text/StringMatcher;->matchStart:I

    .line 75
    iput p2, p0, Landroid/icu/text/StringMatcher;->segmentNumber:I

    .line 76
    return-void
.end method


# virtual methods
.method public whitelist test-api addMatchSetTo(Landroid/icu/text/UnicodeSet;)V
    .registers 5
    .param p1, "toUnionTo"    # Landroid/icu/text/UnicodeSet;

    .line 227
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 228
    iget-object v1, p0, Landroid/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v1

    .line 229
    .local v1, "ch":I
    iget-object v2, p0, Landroid/icu/text/StringMatcher;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-virtual {v2, v1}, Landroid/icu/text/RuleBasedTransliterator$Data;->lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;

    move-result-object v2

    .line 230
    .local v2, "matcher":Landroid/icu/text/UnicodeMatcher;
    if-nez v2, :cond_1b

    .line 231
    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto :goto_1e

    .line 233
    :cond_1b
    invoke-interface {v2, p1}, Landroid/icu/text/UnicodeMatcher;->addMatchSetTo(Landroid/icu/text/UnicodeSet;)V

    .line 227
    .end local v2    # "matcher":Landroid/icu/text/UnicodeMatcher;
    :goto_1e
    invoke-static {v1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 236
    .end local v0    # "i":I
    .end local v1    # "ch":I
    :cond_24
    return-void
.end method

.method public greylist-max-o addReplacementSetTo(Landroid/icu/text/UnicodeSet;)V
    .registers 2
    .param p1, "toUnionTo"    # Landroid/icu/text/UnicodeSet;

    .line 296
    return-void
.end method

.method public whitelist test-api matches(Landroid/icu/text/Replaceable;[IIZ)I
    .registers 13
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "offset"    # [I
    .param p3, "limit"    # I
    .param p4, "incremental"    # Z

    .line 112
    const/4 v0, 0x0

    aget v1, p2, v0

    filled-new-array {v1}, [I

    move-result-object v1

    .line 113
    .local v1, "cursor":[I
    aget v2, v1, v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge p3, v2, :cond_51

    .line 115
    iget-object v2, p0, Landroid/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    .local v2, "i":I
    :goto_14
    if-ltz v2, :cond_42

    .line 116
    iget-object v5, p0, Landroid/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 117
    .local v5, "keyChar":C
    iget-object v6, p0, Landroid/icu/text/StringMatcher;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-virtual {v6, v5}, Landroid/icu/text/RuleBasedTransliterator$Data;->lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;

    move-result-object v6

    .line 118
    .local v6, "subm":Landroid/icu/text/UnicodeMatcher;
    if-nez v6, :cond_37

    .line 119
    aget v7, v1, v0

    if-le v7, p3, :cond_36

    aget v7, v1, v0

    .line 120
    invoke-interface {p1, v7}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result v7

    if-ne v5, v7, :cond_36

    .line 121
    aget v7, v1, v0

    sub-int/2addr v7, v4

    aput v7, v1, v0

    goto :goto_3f

    .line 123
    :cond_36
    return v0

    .line 126
    :cond_37
    nop

    .line 127
    invoke-interface {v6, p1, v1, p3, p4}, Landroid/icu/text/UnicodeMatcher;->matches(Landroid/icu/text/Replaceable;[IIZ)I

    move-result v7

    .line 128
    .local v7, "m":I
    if-eq v7, v3, :cond_3f

    .line 129
    return v7

    .line 115
    .end local v5    # "keyChar":C
    .end local v6    # "subm":Landroid/icu/text/UnicodeMatcher;
    .end local v7    # "m":I
    :cond_3f
    :goto_3f
    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    .line 136
    :cond_42
    iget v5, p0, Landroid/icu/text/StringMatcher;->matchStart:I

    if-gez v5, :cond_95

    .line 137
    aget v5, v1, v0

    add-int/2addr v5, v4

    iput v5, p0, Landroid/icu/text/StringMatcher;->matchStart:I

    .line 138
    aget v5, p2, v0

    add-int/2addr v5, v4

    iput v5, p0, Landroid/icu/text/StringMatcher;->matchLimit:I

    goto :goto_95

    .line 141
    .end local v2    # "i":I
    :cond_51
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_52
    iget-object v5, p0, Landroid/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_8d

    .line 142
    if-eqz p4, :cond_61

    aget v5, v1, v0

    if-ne v5, p3, :cond_61

    .line 145
    return v4

    .line 147
    :cond_61
    iget-object v5, p0, Landroid/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 148
    .restart local v5    # "keyChar":C
    iget-object v6, p0, Landroid/icu/text/StringMatcher;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-virtual {v6, v5}, Landroid/icu/text/RuleBasedTransliterator$Data;->lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;

    move-result-object v6

    .line 149
    .restart local v6    # "subm":Landroid/icu/text/UnicodeMatcher;
    if-nez v6, :cond_82

    .line 153
    aget v7, v1, v0

    if-ge v7, p3, :cond_81

    aget v7, v1, v0

    .line 154
    invoke-interface {p1, v7}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result v7

    if-ne v5, v7, :cond_81

    .line 155
    aget v7, v1, v0

    add-int/2addr v7, v4

    aput v7, v1, v0

    goto :goto_8a

    .line 157
    :cond_81
    return v0

    .line 160
    :cond_82
    nop

    .line 161
    invoke-interface {v6, p1, v1, p3, p4}, Landroid/icu/text/UnicodeMatcher;->matches(Landroid/icu/text/Replaceable;[IIZ)I

    move-result v7

    .line 162
    .restart local v7    # "m":I
    if-eq v7, v3, :cond_8a

    .line 163
    return v7

    .line 141
    .end local v5    # "keyChar":C
    .end local v6    # "subm":Landroid/icu/text/UnicodeMatcher;
    .end local v7    # "m":I
    :cond_8a
    :goto_8a
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 168
    :cond_8d
    aget v4, p2, v0

    iput v4, p0, Landroid/icu/text/StringMatcher;->matchStart:I

    .line 169
    aget v4, v1, v0

    iput v4, p0, Landroid/icu/text/StringMatcher;->matchLimit:I

    .line 172
    :cond_95
    :goto_95
    aget v4, v1, v0

    aput v4, p2, v0

    .line 173
    return v3
.end method

.method public whitelist test-api matchesIndexValue(I)Z
    .registers 7
    .param p1, "v"    # I

    .line 210
    iget-object v0, p0, Landroid/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 211
    return v1

    .line 213
    :cond_a
    iget-object v0, p0, Landroid/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    .line 214
    .local v0, "c":I
    iget-object v3, p0, Landroid/icu/text/StringMatcher;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-virtual {v3, v0}, Landroid/icu/text/RuleBasedTransliterator$Data;->lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;

    move-result-object v3

    .line 215
    .local v3, "m":Landroid/icu/text/UnicodeMatcher;
    if-nez v3, :cond_20

    and-int/lit16 v4, v0, 0xff

    if-ne v4, p1, :cond_1e

    goto :goto_24

    :cond_1e
    move v1, v2

    goto :goto_24

    :cond_20
    invoke-interface {v3, p1}, Landroid/icu/text/UnicodeMatcher;->matchesIndexValue(I)Z

    move-result v1

    :goto_24
    return v1
.end method

.method public greylist-max-o replace(Landroid/icu/text/Replaceable;II[I)I
    .registers 9
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "start"    # I
    .param p3, "limit"    # I
    .param p4, "cursor"    # [I

    .line 247
    const/4 v0, 0x0

    .line 250
    .local v0, "outLen":I
    move v1, p3

    .line 253
    .local v1, "dest":I
    iget v2, p0, Landroid/icu/text/StringMatcher;->matchStart:I

    if-ltz v2, :cond_19

    .line 254
    iget v2, p0, Landroid/icu/text/StringMatcher;->matchStart:I

    iget v3, p0, Landroid/icu/text/StringMatcher;->matchLimit:I

    if-eq v2, v3, :cond_19

    .line 255
    iget v2, p0, Landroid/icu/text/StringMatcher;->matchStart:I

    iget v3, p0, Landroid/icu/text/StringMatcher;->matchLimit:I

    invoke-interface {p1, v2, v3, v1}, Landroid/icu/text/Replaceable;->copy(III)V

    .line 256
    iget v2, p0, Landroid/icu/text/StringMatcher;->matchLimit:I

    iget v3, p0, Landroid/icu/text/StringMatcher;->matchStart:I

    sub-int v0, v2, v3

    .line 260
    :cond_19
    const-string v2, ""

    invoke-interface {p1, p2, p3, v2}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    .line 262
    return v0
.end method

.method public greylist-max-o resetMatch()V
    .registers 2

    .line 281
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/text/StringMatcher;->matchLimit:I

    iput v0, p0, Landroid/icu/text/StringMatcher;->matchStart:I

    .line 282
    return-void
.end method

.method public whitelist test-api toPattern(Z)Ljava/lang/String;
    .registers 9
    .param p1, "escapeUnprintable"    # Z

    .line 181
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 182
    .local v0, "result":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 183
    .local v1, "quoteBuf":Ljava/lang/StringBuffer;
    iget v2, p0, Landroid/icu/text/StringMatcher;->segmentNumber:I

    if-lez v2, :cond_13

    .line 184
    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 186
    :cond_13
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    iget-object v3, p0, Landroid/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_3a

    .line 187
    iget-object v3, p0, Landroid/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 188
    .local v3, "keyChar":C
    iget-object v5, p0, Landroid/icu/text/StringMatcher;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-virtual {v5, v3}, Landroid/icu/text/RuleBasedTransliterator$Data;->lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;

    move-result-object v5

    .line 189
    .local v5, "m":Landroid/icu/text/UnicodeMatcher;
    if-nez v5, :cond_30

    .line 190
    const/4 v4, 0x0

    invoke-static {v0, v3, v4, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    goto :goto_37

    .line 192
    :cond_30
    invoke-interface {v5, p1}, Landroid/icu/text/UnicodeMatcher;->toPattern(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v4, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;Ljava/lang/String;ZZLjava/lang/StringBuffer;)V

    .line 186
    .end local v3    # "keyChar":C
    .end local v5    # "m":Landroid/icu/text/UnicodeMatcher;
    :goto_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 196
    .end local v2    # "i":I
    :cond_3a
    iget v2, p0, Landroid/icu/text/StringMatcher;->segmentNumber:I

    if-lez v2, :cond_43

    .line 197
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 200
    :cond_43
    const/4 v2, -0x1

    invoke-static {v0, v2, v4, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public greylist-max-o toReplacerPattern(Z)Ljava/lang/String;
    .registers 6
    .param p1, "escapeUnprintable"    # Z

    .line 271
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 272
    .local v0, "rule":Ljava/lang/StringBuffer;
    iget v1, p0, Landroid/icu/text/StringMatcher;->segmentNumber:I

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/icu/impl/Utility;->appendNumber(Ljava/lang/Appendable;III)Ljava/lang/Appendable;

    .line 273
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
