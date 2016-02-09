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
.field private static final SUPERSCRIPT_DIGITS:[C

.field private static final SUPERSCRIPT_MINUS_SIGN:C = '\u207b'

.field private static final SUPERSCRIPT_PLUS_SIGN:C = '\u207a'


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 204
    const/16 v0, 0xa

    #@2
    new-array v0, v0, [C

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->SUPERSCRIPT_DIGITS:[C

    #@9
    .line 202
    return-void

    #@a
    .line 204
    :array_0
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

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 202
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/icu/text/ScientificNumberFormatter$Style;-><init>(Landroid/icu/text/ScientificNumberFormatter$Style;)V

    #@4
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;-><init>()V

    #@3
    return-void
.end method

.method private static char32AtAndAdvance(Ljava/text/AttributedCharacterIterator;)I
    .locals 3
    .param p0, "iterator"    # Ljava/text/AttributedCharacterIterator;

    #@0
    .prologue
    .line 289
    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->current()C

    #@3
    move-result v0

    #@4
    .line 290
    .local v0, "c1":C
    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->next()C

    #@7
    move-result v1

    #@8
    .line 291
    .local v1, "c2":C
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isHighSurrogate(C)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 294
    invoke-static {v1}, Landroid/icu/lang/UCharacter;->isLowSurrogate(C)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 295
    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->next()C

    #@17
    .line 296
    invoke-static {v0, v1}, Landroid/icu/lang/UCharacter;->toCodePoint(CC)I

    #@1a
    move-result v2

    #@1b
    return v2

    #@1c
    .line 299
    :cond_0
    return v0
.end method

.method private static copyAsSuperscript(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V
    .locals 4
    .param p0, "iterator"    # Ljava/text/AttributedCharacterIterator;
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "result"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 275
    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    #@3
    move-result v2

    #@4
    .line 276
    .local v2, "oldIndex":I
    invoke-interface {p0, p1}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    #@7
    .line 277
    :goto_0
    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    #@a
    move-result v3

    #@b
    if-ge v3, p2, :cond_1

    #@d
    .line 278
    invoke-static {p0}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->char32AtAndAdvance(Ljava/text/AttributedCharacterIterator;)I

    #@10
    move-result v0

    #@11
    .line 279
    .local v0, "aChar":I
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->digit(I)I

    #@14
    move-result v1

    #@15
    .line 280
    .local v1, "digit":I
    if-gez v1, :cond_0

    #@17
    .line 281
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@19
    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@1c
    throw v3

    #@1d
    .line 283
    :cond_0
    sget-object v3, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->SUPERSCRIPT_DIGITS:[C

    #@1f
    aget-char v3, v3, v1

    #@21
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    goto :goto_0

    #@25
    .line 285
    .end local v0    # "aChar":I
    .end local v1    # "digit":I
    :cond_1
    invoke-interface {p0, v2}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    #@28
    .line 274
    return-void
.end method


# virtual methods
.method format(Ljava/text/AttributedCharacterIterator;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "iterator"    # Ljava/text/AttributedCharacterIterator;
    .param p2, "preExponent"    # Ljava/lang/String;

    #@0
    .prologue
    .line 215
    const/4 v2, 0x0

    #@1
    .line 216
    .local v2, "copyFromOffset":I
    new-instance v4, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 218
    .local v4, "result":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->first()C

    #@9
    .line 219
    :goto_0
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->current()C

    #@c
    move-result v6

    #@d
    const v7, 0xffff

    #@10
    .line 217
    if-eq v6, v7, :cond_5

    #@12
    .line 221
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    #@15
    move-result-object v1

    #@16
    .line 222
    .local v1, "attributeSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    sget-object v6, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    #@18
    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@1b
    move-result v6

    #@1c
    if-eqz v6, :cond_0

    #@1e
    .line 226
    sget-object v6, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    #@20
    invoke-interface {p1, v6}, Ljava/text/AttributedCharacterIterator;->getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I

    #@23
    move-result v6

    #@24
    .line 223
    invoke-static {p1, v2, v6, v4}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    #@27
    .line 228
    sget-object v6, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    #@29
    invoke-interface {p1, v6}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    #@2c
    move-result v2

    #@2d
    .line 229
    invoke-interface {p1, v2}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    #@30
    .line 230
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    goto :goto_0

    #@34
    .line 231
    :cond_0
    sget-object v6, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    #@36
    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@39
    move-result v6

    #@3a
    if-eqz v6, :cond_3

    #@3c
    .line 232
    sget-object v6, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    #@3e
    invoke-interface {p1, v6}, Ljava/text/AttributedCharacterIterator;->getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I

    #@41
    move-result v5

    #@42
    .line 233
    .local v5, "start":I
    sget-object v6, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    #@44
    invoke-interface {p1, v6}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    #@47
    move-result v3

    #@48
    .line 234
    .local v3, "limit":I
    invoke-static {p1}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->char32AtAndAdvance(Ljava/text/AttributedCharacterIterator;)I

    #@4b
    move-result v0

    #@4c
    .line 235
    .local v0, "aChar":I
    sget-object v6, Landroid/icu/text/DecimalFormat;->minusSigns:Landroid/icu/text/UnicodeSet;

    #@4e
    invoke-virtual {v6, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@51
    move-result v6

    #@52
    if-eqz v6, :cond_1

    #@54
    .line 236
    invoke-static {p1, v2, v5, v4}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    #@57
    .line 241
    const/16 v6, 0x207b

    #@59
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5c
    .line 252
    :goto_1
    move v2, v3

    #@5d
    .line 253
    invoke-interface {p1, v2}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    #@60
    goto :goto_0

    #@61
    .line 242
    :cond_1
    sget-object v6, Landroid/icu/text/DecimalFormat;->plusSigns:Landroid/icu/text/UnicodeSet;

    #@63
    invoke-virtual {v6, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@66
    move-result v6

    #@67
    if-eqz v6, :cond_2

    #@69
    .line 243
    invoke-static {p1, v2, v5, v4}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    #@6c
    .line 248
    const/16 v6, 0x207a

    #@6e
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@71
    goto :goto_1

    #@72
    .line 250
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@74
    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@77
    throw v6

    #@78
    .line 254
    .end local v0    # "aChar":I
    .end local v3    # "limit":I
    .end local v5    # "start":I
    :cond_3
    sget-object v6, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    #@7a
    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@7d
    move-result v6

    #@7e
    if-eqz v6, :cond_4

    #@80
    .line 255
    sget-object v6, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    #@82
    invoke-interface {p1, v6}, Ljava/text/AttributedCharacterIterator;->getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I

    #@85
    move-result v5

    #@86
    .line 256
    .restart local v5    # "start":I
    sget-object v6, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    #@88
    invoke-interface {p1, v6}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    #@8b
    move-result v3

    #@8c
    .line 257
    .restart local v3    # "limit":I
    invoke-static {p1, v2, v5, v4}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    #@8f
    .line 262
    invoke-static {p1, v5, v3, v4}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->copyAsSuperscript(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    #@92
    .line 263
    move v2, v3

    #@93
    .line 264
    invoke-interface {p1, v2}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    #@96
    goto/16 :goto_0

    #@98
    .line 266
    .end local v3    # "limit":I
    .end local v5    # "start":I
    :cond_4
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->next()C

    #@9b
    goto/16 :goto_0

    #@9d
    .line 269
    .end local v1    # "attributeSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    :cond_5
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    #@a0
    move-result v6

    #@a1
    invoke-static {p1, v2, v6, v4}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    #@a4
    .line 270
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v6

    #@a8
    return-object v6
.end method
