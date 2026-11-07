.class Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;
.super Landroid/icu/text/ScientificNumberFormatter$Style;
.source "ScientificNumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/ScientificNumberFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuperscriptStyle"
.end annotation


# static fields
.field private static final greylist-max-o SUPERSCRIPT_DIGITS:[C

.field private static final greylist-max-o SUPERSCRIPT_MINUS_SIGN:C = '\u207b'

.field private static final greylist-max-o SUPERSCRIPT_PLUS_SIGN:C = '\u207a'


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 191
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->SUPERSCRIPT_DIGITS:[C

    return-void

    :array_a
    .array-data 2
        0x2070s
        0xb9s
        0xb2s
        0xb3s
        0x2074s
        0x2075s
        0x2076s
        0x2077s
        0x2078s
        0x2079s
    .end array-data
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 189
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/text/ScientificNumberFormatter$Style;-><init>(Landroid/icu/text/ScientificNumberFormatter-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/ScientificNumberFormatter-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;-><init>()V

    return-void
.end method

.method private static greylist-max-o char32AtAndAdvance(Ljava/text/AttributedCharacterIterator;)I
    .registers 4
    .param p0, "iterator"    # Ljava/text/AttributedCharacterIterator;

    .line 276
    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->current()C

    move-result v0

    .line 277
    .local v0, "c1":C
    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->next()C

    move-result v1

    .line 278
    .local v1, "c2":C
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 281
    invoke-static {v1}, Landroid/icu/lang/UCharacter;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 282
    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->next()C

    .line 283
    invoke-static {v0, v1}, Landroid/icu/lang/UCharacter;->toCodePoint(CC)I

    move-result v2

    return v2

    .line 286
    :cond_1c
    return v0
.end method

.method private static greylist-max-o copyAsSuperscript(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V
    .registers 8
    .param p0, "iterator"    # Ljava/text/AttributedCharacterIterator;
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "result"    # Ljava/lang/StringBuilder;

    .line 262
    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    move-result v0

    .line 263
    .local v0, "oldIndex":I
    invoke-interface {p0, p1}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    .line 264
    :goto_7
    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    move-result v1

    if-ge v1, p2, :cond_25

    .line 265
    invoke-static {p0}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->char32AtAndAdvance(Ljava/text/AttributedCharacterIterator;)I

    move-result v1

    .line 266
    .local v1, "aChar":I
    invoke-static {v1}, Landroid/icu/lang/UCharacter;->digit(I)I

    move-result v2

    .line 267
    .local v2, "digit":I
    if-ltz v2, :cond_1f

    .line 270
    sget-object v3, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->SUPERSCRIPT_DIGITS:[C

    aget-char v3, v3, v2

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 271
    .end local v1    # "aChar":I
    .end local v2    # "digit":I
    goto :goto_7

    .line 268
    .restart local v1    # "aChar":I
    .restart local v2    # "digit":I
    :cond_1f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 272
    .end local v1    # "aChar":I
    .end local v2    # "digit":I
    :cond_25
    invoke-interface {p0, v0}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    .line 273
    return-void
.end method


# virtual methods
.method greylist-max-o format(Ljava/text/AttributedCharacterIterator;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "iterator"    # Ljava/text/AttributedCharacterIterator;
    .param p2, "preExponent"    # Ljava/lang/String;

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "copyFromOffset":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .local v1, "result":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->first()C

    .line 206
    :goto_9
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->current()C

    move-result v2

    const v3, 0xffff

    if-eq v2, v3, :cond_a4

    .line 208
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v2

    .line 209
    .local v2, "attributeSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    sget-object v3, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 210
    sget-object v3, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    .line 213
    invoke-interface {p1, v3}, Ljava/text/AttributedCharacterIterator;->getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v3

    .line 210
    invoke-static {p1, v0, v3, v1}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    .line 215
    sget-object v3, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {p1, v3}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v0

    .line 216
    invoke-interface {p1, v0}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    .line 217
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a2

    .line 218
    :cond_34
    sget-object v3, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 219
    sget-object v3, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {p1, v3}, Ljava/text/AttributedCharacterIterator;->getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v3

    .line 220
    .local v3, "start":I
    sget-object v4, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {p1, v4}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v4

    .line 221
    .local v4, "limit":I
    invoke-static {p1}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->char32AtAndAdvance(Ljava/text/AttributedCharacterIterator;)I

    move-result v5

    .line 222
    .local v5, "aChar":I
    sget-object v6, Landroid/icu/impl/StaticUnicodeSets$Key;->MINUS_SIGN:Landroid/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v6}, Landroid/icu/impl/StaticUnicodeSets;->get(Landroid/icu/impl/StaticUnicodeSets$Key;)Landroid/icu/text/UnicodeSet;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 223
    invoke-static {p1, v0, v3, v1}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    .line 228
    const/16 v6, 0x207b

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_75

    .line 229
    :cond_61
    sget-object v6, Landroid/icu/impl/StaticUnicodeSets$Key;->PLUS_SIGN:Landroid/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v6}, Landroid/icu/impl/StaticUnicodeSets;->get(Landroid/icu/impl/StaticUnicodeSets$Key;)Landroid/icu/text/UnicodeSet;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 230
    invoke-static {p1, v0, v3, v1}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    .line 235
    const/16 v6, 0x207a

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 239
    :goto_75
    move v0, v4

    .line 240
    invoke-interface {p1, v0}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    .line 241
    .end local v3    # "start":I
    .end local v4    # "limit":I
    .end local v5    # "aChar":I
    goto :goto_a2

    .line 237
    .restart local v3    # "start":I
    .restart local v4    # "limit":I
    .restart local v5    # "aChar":I
    :cond_7a
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 241
    .end local v3    # "start":I
    .end local v4    # "limit":I
    .end local v5    # "aChar":I
    :cond_80
    sget-object v3, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 242
    sget-object v3, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {p1, v3}, Ljava/text/AttributedCharacterIterator;->getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v3

    .line 243
    .restart local v3    # "start":I
    sget-object v4, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {p1, v4}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v4

    .line 244
    .restart local v4    # "limit":I
    invoke-static {p1, v0, v3, v1}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    .line 249
    invoke-static {p1, v3, v4, v1}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->copyAsSuperscript(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    .line 250
    move v0, v4

    .line 251
    invoke-interface {p1, v0}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    .line 252
    .end local v3    # "start":I
    .end local v4    # "limit":I
    goto :goto_a2

    .line 253
    :cond_9f
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->next()C

    .line 255
    .end local v2    # "attributeSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    :goto_a2
    goto/16 :goto_9

    .line 256
    :cond_a4
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v2

    invoke-static {p1, v0, v2, v1}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    .line 257
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
