.class public final Landroid/icu/lang/UCharacter;
.super Ljava/lang/Object;
.source "UCharacter.java"

# interfaces
.implements Landroid/icu/lang/UCharacterEnums$ECharacterCategory;
.implements Landroid/icu/lang/UCharacterEnums$ECharacterDirection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/lang/UCharacter$BidiPairedBracketType;,
        Landroid/icu/lang/UCharacter$DecompositionType;,
        Landroid/icu/lang/UCharacter$DummyValueIterator;,
        Landroid/icu/lang/UCharacter$EastAsianWidth;,
        Landroid/icu/lang/UCharacter$GraphemeClusterBreak;,
        Landroid/icu/lang/UCharacter$HangulSyllableType;,
        Landroid/icu/lang/UCharacter$JoiningGroup;,
        Landroid/icu/lang/UCharacter$JoiningType;,
        Landroid/icu/lang/UCharacter$LineBreak;,
        Landroid/icu/lang/UCharacter$NumericType;,
        Landroid/icu/lang/UCharacter$SentenceBreak;,
        Landroid/icu/lang/UCharacter$StringContextIterator;,
        Landroid/icu/lang/UCharacter$UCharacterTypeIterator;,
        Landroid/icu/lang/UCharacter$UnicodeBlock;,
        Landroid/icu/lang/UCharacter$WordBreak;
    }
.end annotation


# static fields
.field private static final APPLICATION_PROGRAM_COMMAND_:I = 0x9f

.field private static final BREAK_MASK:I = 0x230

.field private static final CJK_IDEOGRAPH_COMPLEX_EIGHT_:I = 0x634c

.field private static final CJK_IDEOGRAPH_COMPLEX_FIVE_:I = 0x4f0d

.field private static final CJK_IDEOGRAPH_COMPLEX_FOUR_:I = 0x8086

.field private static final CJK_IDEOGRAPH_COMPLEX_HUNDRED_:I = 0x4f70

.field private static final CJK_IDEOGRAPH_COMPLEX_NINE_:I = 0x7396

.field private static final CJK_IDEOGRAPH_COMPLEX_ONE_:I = 0x58f9

.field private static final CJK_IDEOGRAPH_COMPLEX_SEVEN_:I = 0x67d2

.field private static final CJK_IDEOGRAPH_COMPLEX_SIX_:I = 0x9678

.field private static final CJK_IDEOGRAPH_COMPLEX_TEN_:I = 0x62fe

.field private static final CJK_IDEOGRAPH_COMPLEX_THOUSAND_:I = 0x4edf

.field private static final CJK_IDEOGRAPH_COMPLEX_THREE_:I = 0x53c3

.field private static final CJK_IDEOGRAPH_COMPLEX_TWO_:I = 0x8cb3

.field private static final CJK_IDEOGRAPH_COMPLEX_ZERO_:I = 0x96f6

.field private static final CJK_IDEOGRAPH_EIGHTH_:I = 0x516b

.field private static final CJK_IDEOGRAPH_FIFTH_:I = 0x4e94

.field private static final CJK_IDEOGRAPH_FIRST_:I = 0x4e00

.field private static final CJK_IDEOGRAPH_FOURTH_:I = 0x56db

.field private static final CJK_IDEOGRAPH_HUNDRED_:I = 0x767e

.field private static final CJK_IDEOGRAPH_HUNDRED_MILLION_:I = 0x5104

.field private static final CJK_IDEOGRAPH_NINETH_:I = 0x4e5d

.field private static final CJK_IDEOGRAPH_SECOND_:I = 0x4e8c

.field private static final CJK_IDEOGRAPH_SEVENTH_:I = 0x4e03

.field private static final CJK_IDEOGRAPH_SIXTH_:I = 0x516d

.field private static final CJK_IDEOGRAPH_TEN_:I = 0x5341

.field private static final CJK_IDEOGRAPH_TEN_THOUSAND_:I = 0x824c

.field private static final CJK_IDEOGRAPH_THIRD_:I = 0x4e09

.field private static final CJK_IDEOGRAPH_THOUSAND_:I = 0x5343

.field private static final DELETE_:I = 0x7f

.field private static final FIGURE_SPACE_:I = 0x2007

.field public static final FOLD_CASE_DEFAULT:I = 0x0

.field public static final FOLD_CASE_EXCLUDE_SPECIAL_I:I = 0x1

.field private static final IDEOGRAPHIC_NUMBER_ZERO_:I = 0x3007

.field private static final LAST_CHAR_MASK_:I = 0xffff

.field public static final MAX_CODE_POINT:I = 0x10ffff

.field public static final MAX_HIGH_SURROGATE:C = '\udbff'

.field public static final MAX_LOW_SURROGATE:C = '\udfff'

.field public static final MAX_RADIX:I = 0x24

.field public static final MAX_SURROGATE:C = '\udfff'

.field public static final MAX_VALUE:I = 0x10ffff

.field public static final MIN_CODE_POINT:I = 0x0

.field public static final MIN_HIGH_SURROGATE:C = '\ud800'

.field public static final MIN_LOW_SURROGATE:C = '\udc00'

.field public static final MIN_RADIX:I = 0x2

.field public static final MIN_SUPPLEMENTARY_CODE_POINT:I = 0x10000

.field public static final MIN_SURROGATE:C = '\ud800'

.field public static final MIN_VALUE:I = 0x0

.field private static final NARROW_NO_BREAK_SPACE_:I = 0x202f

.field private static final NO_BREAK_SPACE_:I = 0xa0

.field public static final NO_NUMERIC_VALUE:D = -1.23456789E8

.field public static final REPLACEMENT_CHAR:I = 0xfffd

.field public static final SUPPLEMENTARY_MIN_VALUE:I = 0x10000

.field public static final TITLECASE_NO_BREAK_ADJUSTMENT:I = 0x200

.field public static final TITLECASE_NO_LOWERCASE:I = 0x100

.field private static final UNIT_SEPARATOR_:I = 0x1f


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 5842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static charCount(I)I
    .locals 1
    .param p0, "cp"    # I

    #@0
    .prologue
    .line 5341
    invoke-static {p0}, Ljava/lang/Character;->charCount(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static final codePointAt(Ljava/lang/CharSequence;I)I
    .locals 4
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I

    #@0
    .prologue
    .line 5367
    add-int/lit8 v2, p1, 0x1

    #@2
    .end local p1    # "index":I
    .local v2, "index":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@5
    move-result v0

    #@6
    .line 5368
    .local v0, "c1":C
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isHighSurrogate(C)Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_0

    #@c
    .line 5369
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@f
    move-result v3

    #@10
    if-ge v2, v3, :cond_0

    #@12
    .line 5370
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@15
    move-result v1

    #@16
    .line 5371
    .local v1, "c2":C
    invoke-static {v1}, Landroid/icu/lang/UCharacter;->isLowSurrogate(C)Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_0

    #@1c
    .line 5372
    invoke-static {v0, v1}, Landroid/icu/lang/UCharacter;->toCodePoint(CC)I

    #@1f
    move-result v3

    #@20
    return v3

    #@21
    .line 5376
    .end local v1    # "c2":C
    :cond_0
    return v0
.end method

.method public static final codePointAt([CI)I
    .locals 4
    .param p0, "text"    # [C
    .param p1, "index"    # I

    #@0
    .prologue
    .line 5389
    add-int/lit8 v2, p1, 0x1

    #@2
    .end local p1    # "index":I
    .local v2, "index":I
    aget-char v0, p0, p1

    #@4
    .line 5390
    .local v0, "c1":C
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isHighSurrogate(C)Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 5391
    array-length v3, p0

    #@b
    if-ge v2, v3, :cond_0

    #@d
    .line 5392
    aget-char v1, p0, v2

    #@f
    .line 5393
    .local v1, "c2":C
    invoke-static {v1}, Landroid/icu/lang/UCharacter;->isLowSurrogate(C)Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_0

    #@15
    .line 5394
    invoke-static {v0, v1}, Landroid/icu/lang/UCharacter;->toCodePoint(CC)I

    #@18
    move-result v3

    #@19
    return v3

    #@1a
    .line 5398
    .end local v1    # "c2":C
    :cond_0
    return v0
.end method

.method public static final codePointAt([CII)I
    .locals 4
    .param p0, "text"    # [C
    .param p1, "index"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    .line 5412
    if-ge p1, p2, :cond_0

    #@2
    array-length v3, p0

    #@3
    if-le p2, v3, :cond_1

    #@5
    .line 5413
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@7
    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@a
    throw v3

    #@b
    .line 5415
    :cond_1
    add-int/lit8 v2, p1, 0x1

    #@d
    .end local p1    # "index":I
    .local v2, "index":I
    aget-char v0, p0, p1

    #@f
    .line 5416
    .local v0, "c1":C
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isHighSurrogate(C)Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_2

    #@15
    .line 5417
    if-ge v2, p2, :cond_2

    #@17
    .line 5418
    aget-char v1, p0, v2

    #@19
    .line 5419
    .local v1, "c2":C
    invoke-static {v1}, Landroid/icu/lang/UCharacter;->isLowSurrogate(C)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_2

    #@1f
    .line 5420
    invoke-static {v0, v1}, Landroid/icu/lang/UCharacter;->toCodePoint(CC)I

    #@22
    move-result v3

    #@23
    return v3

    #@24
    .line 5424
    .end local v1    # "c2":C
    :cond_2
    return v0
.end method

.method public static final codePointBefore(Ljava/lang/CharSequence;I)I
    .locals 3
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I

    #@0
    .prologue
    .line 5437
    add-int/lit8 p1, p1, -0x1

    #@2
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@5
    move-result v1

    #@6
    .line 5438
    .local v1, "c2":C
    invoke-static {v1}, Landroid/icu/lang/UCharacter;->isLowSurrogate(C)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 5439
    if-lez p1, :cond_0

    #@e
    .line 5440
    add-int/lit8 p1, p1, -0x1

    #@10
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@13
    move-result v0

    #@14
    .line 5441
    .local v0, "c1":C
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isHighSurrogate(C)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 5442
    invoke-static {v0, v1}, Landroid/icu/lang/UCharacter;->toCodePoint(CC)I

    #@1d
    move-result v2

    #@1e
    return v2

    #@1f
    .line 5446
    .end local v0    # "c1":C
    :cond_0
    return v1
.end method

.method public static final codePointBefore([CI)I
    .locals 3
    .param p0, "text"    # [C
    .param p1, "index"    # I

    #@0
    .prologue
    .line 5459
    add-int/lit8 p1, p1, -0x1

    #@2
    aget-char v1, p0, p1

    #@4
    .line 5460
    .local v1, "c2":C
    invoke-static {v1}, Landroid/icu/lang/UCharacter;->isLowSurrogate(C)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 5461
    if-lez p1, :cond_0

    #@c
    .line 5462
    add-int/lit8 p1, p1, -0x1

    #@e
    aget-char v0, p0, p1

    #@10
    .line 5463
    .local v0, "c1":C
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isHighSurrogate(C)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 5464
    invoke-static {v0, v1}, Landroid/icu/lang/UCharacter;->toCodePoint(CC)I

    #@19
    move-result v2

    #@1a
    return v2

    #@1b
    .line 5468
    .end local v0    # "c1":C
    :cond_0
    return v1
.end method

.method public static final codePointBefore([CII)I
    .locals 3
    .param p0, "text"    # [C
    .param p1, "index"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    .line 5482
    if-le p1, p2, :cond_0

    #@2
    if-gez p2, :cond_1

    #@4
    .line 5483
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@6
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@9
    throw v2

    #@a
    .line 5485
    :cond_1
    add-int/lit8 p1, p1, -0x1

    #@c
    aget-char v1, p0, p1

    #@e
    .line 5486
    .local v1, "c2":C
    invoke-static {v1}, Landroid/icu/lang/UCharacter;->isLowSurrogate(C)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_2

    #@14
    .line 5487
    if-le p1, p2, :cond_2

    #@16
    .line 5488
    add-int/lit8 p1, p1, -0x1

    #@18
    aget-char v0, p0, p1

    #@1a
    .line 5489
    .local v0, "c1":C
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isHighSurrogate(C)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_2

    #@20
    .line 5490
    invoke-static {v0, v1}, Landroid/icu/lang/UCharacter;->toCodePoint(CC)I

    #@23
    move-result v2

    #@24
    return v2

    #@25
    .line 5494
    .end local v0    # "c1":C
    :cond_2
    return v1
.end method

.method public static codePointCount(Ljava/lang/CharSequence;II)I
    .locals 5
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    .line 5555
    if-ltz p1, :cond_0

    #@2
    if-ge p2, p1, :cond_1

    #@4
    .line 5556
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@6
    new-instance v3, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v4, "start ("

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    .line 5557
    const-string/jumbo v4, ") or limit ("

    #@19
    .line 5556
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    .line 5558
    const-string/jumbo v4, ") invalid or out of range 0, "

    #@24
    .line 5556
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    .line 5558
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@2b
    move-result v4

    #@2c
    .line 5556
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@37
    throw v2

    #@38
    .line 5555
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@3b
    move-result v2

    #@3c
    if-gt p2, v2, :cond_0

    #@3e
    .line 5561
    sub-int v1, p2, p1

    #@40
    .line 5562
    .local v1, "len":I
    :cond_2
    :goto_0
    if-le p2, p1, :cond_4

    #@42
    .line 5563
    add-int/lit8 p2, p2, -0x1

    #@44
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    #@47
    move-result v0

    #@48
    .line 5564
    .local v0, "ch":C
    :cond_3
    const v2, 0xdc00

    #@4b
    if-lt v0, v2, :cond_2

    #@4d
    const v2, 0xdfff

    #@50
    if-gt v0, v2, :cond_2

    #@52
    if-le p2, p1, :cond_2

    #@54
    .line 5565
    add-int/lit8 p2, p2, -0x1

    #@56
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    #@59
    move-result v0

    #@5a
    .line 5566
    const v2, 0xd800

    #@5d
    if-lt v0, v2, :cond_3

    #@5f
    const v2, 0xdbff

    #@62
    if-gt v0, v2, :cond_3

    #@64
    .line 5567
    add-int/lit8 v1, v1, -0x1

    #@66
    .line 5568
    goto :goto_0

    #@67
    .line 5572
    .end local v0    # "ch":C
    :cond_4
    return v1
.end method

.method public static codePointCount([CII)I
    .locals 5
    .param p0, "text"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    .line 5584
    if-ltz p1, :cond_0

    #@2
    if-ge p2, p1, :cond_1

    #@4
    .line 5585
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@6
    new-instance v3, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v4, "start ("

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    .line 5586
    const-string/jumbo v4, ") or limit ("

    #@19
    .line 5585
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    .line 5587
    const-string/jumbo v4, ") invalid or out of range 0, "

    #@24
    .line 5585
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    .line 5587
    array-length v4, p0

    #@29
    .line 5585
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@34
    throw v2

    #@35
    .line 5584
    :cond_1
    array-length v2, p0

    #@36
    if-gt p2, v2, :cond_0

    #@38
    .line 5590
    sub-int v1, p2, p1

    #@3a
    .line 5591
    .local v1, "len":I
    :cond_2
    :goto_0
    if-le p2, p1, :cond_4

    #@3c
    .line 5592
    add-int/lit8 p2, p2, -0x1

    #@3e
    aget-char v0, p0, p2

    #@40
    .line 5593
    .local v0, "ch":C
    :cond_3
    const v2, 0xdc00

    #@43
    if-lt v0, v2, :cond_2

    #@45
    const v2, 0xdfff

    #@48
    if-gt v0, v2, :cond_2

    #@4a
    if-le p2, p1, :cond_2

    #@4c
    .line 5594
    add-int/lit8 p2, p2, -0x1

    #@4e
    aget-char v0, p0, p2

    #@50
    .line 5595
    const v2, 0xd800

    #@53
    if-lt v0, v2, :cond_3

    #@55
    const v2, 0xdbff

    #@58
    if-gt v0, v2, :cond_3

    #@5a
    .line 5596
    add-int/lit8 v1, v1, -0x1

    #@5c
    .line 5597
    goto :goto_0

    #@5d
    .line 5601
    .end local v0    # "ch":C
    :cond_4
    return v1
.end method

.method public static digit(I)I
    .locals 1
    .param p0, "ch"    # I

    #@0
    .prologue
    .line 3013
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    #@2
    invoke-virtual {v0, p0}, Landroid/icu/impl/UCharacterProperty;->digit(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static digit(II)I
    .locals 3
    .param p0, "ch"    # I
    .param p1, "radix"    # I

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 2987
    const/4 v2, 0x2

    #@2
    if-gt v2, p1, :cond_2

    #@4
    const/16 v2, 0x24

    #@6
    if-gt p1, v2, :cond_2

    #@8
    .line 2988
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->digit(I)I

    #@b
    move-result v0

    #@c
    .line 2989
    .local v0, "value":I
    if-gez v0, :cond_0

    #@e
    .line 2991
    invoke-static {p0}, Landroid/icu/impl/UCharacterProperty;->getEuropeanDigit(I)I

    #@11
    move-result v0

    #@12
    .line 2993
    :cond_0
    if-ge v0, p1, :cond_1

    #@14
    .end local v0    # "value":I
    :goto_0
    return v0

    #@15
    .restart local v0    # "value":I
    :cond_1
    move v0, v1

    #@16
    goto :goto_0

    #@17
    .line 2995
    .end local v0    # "value":I
    :cond_2
    return v1
.end method

.method public static foldCase(II)I
    .locals 1
    .param p0, "ch"    # I
    .param p1, "options"    # I

    #@0
    .prologue
    .line 4766
    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    #@2
    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/UCaseProps;->fold(II)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static foldCase(IZ)I
    .locals 1
    .param p0, "ch"    # I
    .param p1, "defaultmapping"    # Z

    #@0
    .prologue
    .line 4701
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x0

    #@3
    :goto_0
    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->foldCase(II)I

    #@6
    move-result v0

    #@7
    return v0

    #@8
    :cond_0
    const/4 v0, 0x1

    #@9
    goto :goto_0
.end method

.method public static final foldCase(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "options"    # I

    #@0
    .prologue
    .line 4784
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v4

    #@6
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    #@9
    .line 4787
    .local v3, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@c
    move-result v2

    #@d
    .line 4788
    .local v2, "length":I
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@10
    .line 4789
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    #@13
    move-result v0

    #@14
    .line 4790
    .local v0, "c":I
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@17
    move-result v4

    #@18
    add-int/2addr v1, v4

    #@19
    .line 4791
    sget-object v4, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    #@1b
    invoke-virtual {v4, v0, v3, p1}, Landroid/icu/impl/UCaseProps;->toFullFolding(ILjava/lang/StringBuilder;I)I

    #@1e
    move-result v0

    #@1f
    .line 4794
    if-gez v0, :cond_1

    #@21
    .line 4796
    not-int v0, v0

    #@22
    .line 4802
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@25
    goto :goto_0

    #@26
    .line 4797
    :cond_1
    const/16 v4, 0x1f

    #@28
    if-gt v0, v4, :cond_0

    #@2a
    goto :goto_0

    #@2b
    .line 4804
    .end local v0    # "c":I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    return-object v4
.end method

.method public static foldCase(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultmapping"    # Z

    #@0
    .prologue
    .line 4721
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x0

    #@3
    :goto_0
    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->foldCase(Ljava/lang/String;I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    :cond_0
    const/4 v0, 0x1

    #@9
    goto :goto_0
.end method

.method public static forDigit(II)C
    .locals 1
    .param p0, "digit"    # I
    .param p1, "radix"    # I

    #@0
    .prologue
    .line 5231
    invoke-static {p0, p1}, Ljava/lang/Character;->forDigit(II)C

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static getAge(I)Landroid/icu/util/VersionInfo;
    .locals 2
    .param p0, "ch"    # I

    #@0
    .prologue
    .line 5012
    if-ltz p0, :cond_0

    #@2
    const v0, 0x10ffff

    #@5
    if-le p0, v0, :cond_1

    #@7
    .line 5013
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "Codepoint out of bounds"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 5015
    :cond_1
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    #@12
    invoke-virtual {v0, p0}, Landroid/icu/impl/UCharacterProperty;->getAge(I)Landroid/icu/util/VersionInfo;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method public static getBidiPairedBracket(I)I
    .locals 1
    .param p0, "c"    # I

    #@0
    .prologue
    .line 3660
    sget-object v0, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    #@2
    invoke-virtual {v0, p0}, Landroid/icu/impl/UBiDiProps;->getPairedBracket(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getCharFromExtendedName(Ljava/lang/String;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3887
    sget-object v0, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    #@2
    .line 3888
    const/4 v1, 0x2

    #@3
    .line 3887
    invoke-virtual {v0, v1, p0}, Landroid/icu/impl/UCharacterName;->getCharFromName(ILjava/lang/String;)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public static getCharFromName(Ljava/lang/String;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3848
    sget-object v0, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    #@2
    .line 3849
    const/4 v1, 0x0

    #@3
    .line 3848
    invoke-virtual {v0, v1, p0}, Landroid/icu/impl/UCharacterName;->getCharFromName(ILjava/lang/String;)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public static getCharFromName1_0(Ljava/lang/String;)I
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 3865
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public static getCharFromNameAlias(Ljava/lang/String;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3900
    sget-object v0, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    #@2
    const/4 v1, 0x3

    #@3
    invoke-virtual {v0, v1, p0}, Landroid/icu/impl/UCharacterName;->getCharFromName(ILjava/lang/String;)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public static getCodePoint(C)I
    .locals 2
    .param p0, "char16"    # C

    #@0
    .prologue
    .line 4121
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->isLegal(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 4122
    return p0

    #@7
    .line 4124
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "Illegal codepoint"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
.end method

.method public static getCodePoint(CC)I
    .locals 2
    .param p0, "lead"    # C
    .param p1, "trail"    # C

    #@0
    .prologue
    .line 4105
    invoke-static {p0, p1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 4106
    invoke-static {p0, p1}, Ljava/lang/Character;->toCodePoint(CC)I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 4108
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v1, "Illegal surrogate characters"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0
.end method

.method public static getCombiningClass(I)I
    .locals 1
    .param p0, "ch"    # I

    #@0
    .prologue
    .line 3670
    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFDInstance()Landroid/icu/text/Normalizer2;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Landroid/icu/text/Normalizer2;->getCombiningClass(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static getDirection(I)I
    .locals 1
    .param p0, "ch"    # I

    #@0
    .prologue
    .line 3610
    sget-object v0, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    #@2
    invoke-virtual {v0, p0}, Landroid/icu/impl/UBiDiProps;->getClass(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getDirectionality(I)B
    .locals 1
    .param p0, "cp"    # I

    #@0
    .prologue
    .line 5542
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getDirection(I)I

    #@3
    move-result v0

    #@4
    int-to-byte v0, v0

    #@5
    return v0
.end method

.method public static getExtendedName(I)Ljava/lang/String;
    .locals 2
    .param p0, "ch"    # I

    #@0
    .prologue
    .line 3803
    sget-object v0, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-virtual {v0, p0, v1}, Landroid/icu/impl/UCharacterName;->getName(II)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public static getExtendedNameIterator()Landroid/icu/util/ValueIterator;
    .locals 3

    #@0
    .prologue
    .line 4995
    new-instance v0, Landroid/icu/lang/UCharacterNameIterator;

    #@2
    sget-object v1, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    #@4
    .line 4996
    const/4 v2, 0x2

    #@5
    .line 4995
    invoke-direct {v0, v1, v2}, Landroid/icu/lang/UCharacterNameIterator;-><init>(Landroid/icu/impl/UCharacterName;I)V

    #@8
    return-object v0
.end method

.method public static getHanNumericValue(I)I
    .locals 1
    .param p0, "ch"    # I

    #@0
    .prologue
    .line 4828
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 4874
    const/4 v0, -0x1

    #@4
    return v0

    #@5
    .line 4832
    :sswitch_0
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 4835
    :sswitch_1
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    .line 4838
    :sswitch_2
    const/4 v0, 0x2

    #@a
    return v0

    #@b
    .line 4841
    :sswitch_3
    const/4 v0, 0x3

    #@c
    return v0

    #@d
    .line 4844
    :sswitch_4
    const/4 v0, 0x4

    #@e
    return v0

    #@f
    .line 4847
    :sswitch_5
    const/4 v0, 0x5

    #@10
    return v0

    #@11
    .line 4850
    :sswitch_6
    const/4 v0, 0x6

    #@12
    return v0

    #@13
    .line 4853
    :sswitch_7
    const/4 v0, 0x7

    #@14
    return v0

    #@15
    .line 4856
    :sswitch_8
    const/16 v0, 0x8

    #@17
    return v0

    #@18
    .line 4859
    :sswitch_9
    const/16 v0, 0x9

    #@1a
    return v0

    #@1b
    .line 4862
    :sswitch_a
    const/16 v0, 0xa

    #@1d
    return v0

    #@1e
    .line 4865
    :sswitch_b
    const/16 v0, 0x64

    #@20
    return v0

    #@21
    .line 4868
    :sswitch_c
    const/16 v0, 0x3e8

    #@23
    return v0

    #@24
    .line 4870
    :sswitch_d
    const/16 v0, 0x2710

    #@26
    return v0

    #@27
    .line 4872
    :sswitch_e
    const v0, 0x5f5e100

    #@2a
    return v0

    #@2b
    .line 4828
    nop

    #@2c
    :sswitch_data_0
    .sparse-switch
        0x3007 -> :sswitch_0
        0x4e00 -> :sswitch_1
        0x4e03 -> :sswitch_7
        0x4e09 -> :sswitch_3
        0x4e5d -> :sswitch_9
        0x4e8c -> :sswitch_2
        0x4e94 -> :sswitch_5
        0x4edf -> :sswitch_c
        0x4f0d -> :sswitch_5
        0x4f70 -> :sswitch_b
        0x5104 -> :sswitch_e
        0x516b -> :sswitch_8
        0x516d -> :sswitch_6
        0x5341 -> :sswitch_a
        0x5343 -> :sswitch_c
        0x53c3 -> :sswitch_3
        0x56db -> :sswitch_4
        0x58f9 -> :sswitch_1
        0x62fe -> :sswitch_a
        0x634c -> :sswitch_8
        0x67d2 -> :sswitch_7
        0x7396 -> :sswitch_9
        0x767e -> :sswitch_b
        0x8086 -> :sswitch_4
        0x824c -> :sswitch_d
        0x8cb3 -> :sswitch_2
        0x9678 -> :sswitch_6
        0x96f6 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getISOComment(I)Ljava/lang/String;
    .locals 1
    .param p0, "ch"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 3835
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public static getIntPropertyMaxValue(I)I
    .locals 1
    .param p0, "type"    # I

    #@0
    .prologue
    .line 5224
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    #@2
    invoke-virtual {v0, p0}, Landroid/icu/impl/UCharacterProperty;->getIntPropertyMaxValue(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getIntPropertyMinValue(I)I
    .locals 1
    .param p0, "type"    # I

    #@0
    .prologue
    .line 5194
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public static getIntPropertyValue(II)I
    .locals 1
    .param p0, "ch"    # I
    .param p1, "type"    # I

    #@0
    .prologue
    .line 5132
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    #@2
    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/UCharacterProperty;->getIntPropertyValue(II)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getMirror(I)I
    .locals 1
    .param p0, "ch"    # I

    #@0
    .prologue
    .line 3641
    sget-object v0, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    #@2
    invoke-virtual {v0, p0}, Landroid/icu/impl/UBiDiProps;->getMirror(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 2
    .param p0, "ch"    # I

    #@0
    .prologue
    .line 3748
    sget-object v0, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p0, v1}, Landroid/icu/impl/UCharacterName;->getName(II)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public static getName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3758
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v3

    #@5
    const/4 v4, 0x1

    #@6
    if-ne v3, v4, :cond_0

    #@8
    .line 3759
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v3

    #@c
    invoke-static {v3}, Landroid/icu/lang/UCharacter;->getName(I)Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    return-object v3

    #@11
    .line 3762
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    .line 3763
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@17
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@1a
    move-result v3

    #@1b
    if-ge v1, v3, :cond_2

    #@1d
    .line 3764
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    #@20
    move-result v0

    #@21
    .line 3765
    .local v0, "cp":I
    if-eqz v1, :cond_1

    #@23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    .line 3766
    :cond_1
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->getName(I)Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 3763
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@30
    move-result v3

    #@31
    add-int/2addr v1, v3

    #@32
    goto :goto_0

    #@33
    .line 3768
    .end local v0    # "cp":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    return-object v3
.end method

.method public static getName1_0(I)Ljava/lang/String;
    .locals 1
    .param p0, "ch"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 3782
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public static getName1_0Iterator()Landroid/icu/util/ValueIterator;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 4967
    new-instance v0, Landroid/icu/lang/UCharacter$DummyValueIterator;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/icu/lang/UCharacter$DummyValueIterator;-><init>(Landroid/icu/lang/UCharacter$DummyValueIterator;)V

    #@6
    return-object v0
.end method

.method public static getNameAlias(I)Ljava/lang/String;
    .locals 2
    .param p0, "ch"    # I

    #@0
    .prologue
    .line 3818
    sget-object v0, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    #@2
    const/4 v1, 0x3

    #@3
    invoke-virtual {v0, p0, v1}, Landroid/icu/impl/UCharacterName;->getName(II)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public static getNameIterator()Landroid/icu/util/ValueIterator;
    .locals 3

    #@0
    .prologue
    .line 4953
    new-instance v0, Landroid/icu/lang/UCharacterNameIterator;

    #@2
    sget-object v1, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    #@4
    .line 4954
    const/4 v2, 0x0

    #@5
    .line 4953
    invoke-direct {v0, v1, v2}, Landroid/icu/lang/UCharacterNameIterator;-><init>(Landroid/icu/impl/UCharacterName;I)V

    #@8
    return-object v0
.end method

.method public static getNumericValue(I)I
    .locals 1
    .param p0, "ch"    # I

    #@0
    .prologue
    .line 3031
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    #@2
    invoke-virtual {v0, p0}, Landroid/icu/impl/UCharacterProperty;->getNumericValue(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getPropertyEnum(Ljava/lang/CharSequence;)I
    .locals 4
    .param p0, "propertyAlias"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 3962
    sget-object v1, Landroid/icu/impl/UPropertyAliases;->INSTANCE:Landroid/icu/impl/UPropertyAliases;

    #@2
    invoke-virtual {v1, p0}, Landroid/icu/impl/UPropertyAliases;->getPropertyEnum(Ljava/lang/CharSequence;)I

    #@5
    move-result v0

    #@6
    .line 3963
    .local v0, "propEnum":I
    const/4 v1, -0x1

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 3964
    new-instance v1, Landroid/icu/impl/IllegalIcuArgumentException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Invalid name: "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-direct {v1, v2}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v1

    #@23
    .line 3966
    :cond_0
    return v0
.end method

.method public static getPropertyName(II)Ljava/lang/String;
    .locals 1
    .param p0, "property"    # I
    .param p1, "nameChoice"    # I

    #@0
    .prologue
    .line 3937
    sget-object v0, Landroid/icu/impl/UPropertyAliases;->INSTANCE:Landroid/icu/impl/UPropertyAliases;

    #@2
    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/UPropertyAliases;->getPropertyName(II)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getPropertyValueEnum(ILjava/lang/CharSequence;)I
    .locals 4
    .param p0, "property"    # I
    .param p1, "valueAlias"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 4072
    sget-object v1, Landroid/icu/impl/UPropertyAliases;->INSTANCE:Landroid/icu/impl/UPropertyAliases;

    #@2
    invoke-virtual {v1, p0, p1}, Landroid/icu/impl/UPropertyAliases;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    #@5
    move-result v0

    #@6
    .line 4073
    .local v0, "propEnum":I
    const/4 v1, -0x1

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 4074
    new-instance v1, Landroid/icu/impl/IllegalIcuArgumentException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Invalid name: "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-direct {v1, v2}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v1

    #@23
    .line 4076
    :cond_0
    return v0
.end method

.method public static getPropertyValueEnumNoThrow(ILjava/lang/CharSequence;)I
    .locals 1
    .param p0, "property"    # I
    .param p1, "valueAlias"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 4090
    sget-object v0, Landroid/icu/impl/UPropertyAliases;->INSTANCE:Landroid/icu/impl/UPropertyAliases;

    #@2
    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/UPropertyAliases;->getPropertyValueEnumNoThrow(ILjava/lang/CharSequence;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getPropertyValueName(III)Ljava/lang/String;
    .locals 3
    .param p0, "property"    # I
    .param p1, "value"    # I
    .param p2, "nameChoice"    # I

    #@0
    .prologue
    const/16 v2, 0x1002

    #@2
    .line 4020
    if-eq p0, v2, :cond_0

    #@4
    .line 4021
    const/16 v1, 0x1010

    #@6
    if-ne p0, v1, :cond_1

    #@8
    .line 4023
    :cond_0
    invoke-static {v2}, Landroid/icu/lang/UCharacter;->getIntPropertyMinValue(I)I

    #@b
    move-result v1

    #@c
    if-lt p1, v1, :cond_2

    #@e
    .line 4025
    invoke-static {v2}, Landroid/icu/lang/UCharacter;->getIntPropertyMaxValue(I)I

    #@11
    move-result v1

    #@12
    if-gt p1, v1, :cond_2

    #@14
    .line 4027
    if-ltz p2, :cond_2

    #@16
    const/4 v1, 0x2

    #@17
    if-ge p2, v1, :cond_2

    #@19
    .line 4031
    :try_start_0
    sget-object v1, Landroid/icu/impl/UPropertyAliases;->INSTANCE:Landroid/icu/impl/UPropertyAliases;

    #@1b
    invoke-virtual {v1, p0, p1, p2}, Landroid/icu/impl/UPropertyAliases;->getPropertyValueName(III)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    move-result-object v1

    #@1f
    return-object v1

    #@20
    .line 4022
    :cond_1
    const/16 v1, 0x1011

    #@22
    if-eq p0, v1, :cond_0

    #@24
    .line 4038
    :cond_2
    sget-object v1, Landroid/icu/impl/UPropertyAliases;->INSTANCE:Landroid/icu/impl/UPropertyAliases;

    #@26
    invoke-virtual {v1, p0, p1, p2}, Landroid/icu/impl/UPropertyAliases;->getPropertyValueName(III)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    return-object v1

    #@2b
    .line 4034
    :catch_0
    move-exception v0

    #@2c
    .line 4035
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    #@2d
    return-object v1
.end method

.method public static getStringPropertyValue(III)Ljava/lang/String;
    .locals 2
    .param p0, "propertyEnum"    # I
    .param p1, "codepoint"    # I
    .param p2, "nameChoice"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 5147
    if-ltz p0, :cond_1

    #@3
    const/16 v0, 0x39

    #@5
    if-ge p0, v0, :cond_1

    #@7
    .line 5149
    :cond_0
    invoke-static {p1, p0}, Landroid/icu/lang/UCharacter;->getIntPropertyValue(II)I

    #@a
    move-result v0

    #@b
    invoke-static {p0, v0, p2}, Landroid/icu/lang/UCharacter;->getPropertyValueName(III)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 5148
    :cond_1
    const/16 v0, 0x1000

    #@12
    if-lt p0, v0, :cond_2

    #@14
    const/16 v0, 0x1016

    #@16
    if-lt p0, v0, :cond_0

    #@18
    .line 5152
    :cond_2
    const/16 v0, 0x3000

    #@1a
    if-ne p0, v0, :cond_3

    #@1c
    .line 5153
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getUnicodeNumericValue(I)D

    #@1f
    move-result-wide v0

    #@20
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    return-object v0

    #@25
    .line 5156
    :cond_3
    packed-switch p0, :pswitch_data_0

    #@28
    .line 5171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2a
    const-string/jumbo v1, "Illegal Property Enum"

    #@2d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0

    #@31
    .line 5157
    :pswitch_0
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getAge(I)Landroid/icu/util/VersionInfo;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0}, Landroid/icu/util/VersionInfo;->toString()Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    return-object v0

    #@3a
    .line 5158
    :pswitch_1
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getISOComment(I)Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    return-object v0

    #@3f
    .line 5159
    :pswitch_2
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getMirror(I)I

    #@42
    move-result v0

    #@43
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    return-object v0

    #@48
    .line 5160
    :pswitch_3
    invoke-static {p1, v1}, Landroid/icu/lang/UCharacter;->foldCase(IZ)I

    #@4b
    move-result v0

    #@4c
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    #@4f
    move-result-object v0

    #@50
    return-object v0

    #@51
    .line 5161
    :pswitch_4
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->toLowerCase(I)I

    #@54
    move-result v0

    #@55
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    #@58
    move-result-object v0

    #@59
    return-object v0

    #@5a
    .line 5162
    :pswitch_5
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getName(I)Ljava/lang/String;

    #@5d
    move-result-object v0

    #@5e
    return-object v0

    #@5f
    .line 5163
    :pswitch_6
    invoke-static {p1, v1}, Landroid/icu/lang/UCharacter;->foldCase(IZ)I

    #@62
    move-result v0

    #@63
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    #@66
    move-result-object v0

    #@67
    return-object v0

    #@68
    .line 5164
    :pswitch_7
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->toLowerCase(I)I

    #@6b
    move-result v0

    #@6c
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    #@6f
    move-result-object v0

    #@70
    return-object v0

    #@71
    .line 5165
    :pswitch_8
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->toTitleCase(I)I

    #@74
    move-result v0

    #@75
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    #@78
    move-result-object v0

    #@79
    return-object v0

    #@7a
    .line 5166
    :pswitch_9
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->toUpperCase(I)I

    #@7d
    move-result v0

    #@7e
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    #@81
    move-result-object v0

    #@82
    return-object v0

    #@83
    .line 5167
    :pswitch_a
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->toTitleCase(I)I

    #@86
    move-result v0

    #@87
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    #@8a
    move-result-object v0

    #@8b
    return-object v0

    #@8c
    .line 5168
    :pswitch_b
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getName1_0(I)Ljava/lang/String;

    #@8f
    move-result-object v0

    #@90
    return-object v0

    #@91
    .line 5169
    :pswitch_c
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->toUpperCase(I)I

    #@94
    move-result v0

    #@95
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    #@98
    move-result-object v0

    #@99
    return-object v0

    #@9a
    .line 5156
    :pswitch_data_0
    .packed-switch 0x4000
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public static getType(I)I
    .locals 1
    .param p0, "ch"    # I

    #@0
    .prologue
    .line 3087
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    #@2
    invoke-virtual {v0, p0}, Landroid/icu/impl/UCharacterProperty;->getType(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getTypeIterator()Landroid/icu/util/RangeValueIterator;
    .locals 1

    #@0
    .prologue
    .line 4896
    new-instance v0, Landroid/icu/lang/UCharacter$UCharacterTypeIterator;

    #@2
    invoke-direct {v0}, Landroid/icu/lang/UCharacter$UCharacterTypeIterator;-><init>()V

    #@5
    return-object v0
.end method

.method public static getUnicodeNumericValue(I)D
    .locals 2
    .param p0, "ch"    # I

    #@0
    .prologue
    .line 3052
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    #@2
    invoke-virtual {v0, p0}, Landroid/icu/impl/UCharacterProperty;->getUnicodeNumericValue(I)D

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public static getUnicodeVersion()Landroid/icu/util/VersionInfo;
    .locals 1

    #@0
    .prologue
    .line 3733
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    #@2
    iget-object v0, v0, Landroid/icu/impl/UCharacterProperty;->m_unicodeVersion_:Landroid/icu/util/VersionInfo;

    #@4
    return-object v0
.end method

.method public static hasBinaryProperty(II)Z
    .locals 1
    .param p0, "ch"    # I
    .param p1, "property"    # I

    #@0
    .prologue
    .line 5044
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    #@2
    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/UCharacterProperty;->hasBinaryProperty(II)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isBMP(I)Z
    .locals 2
    .param p0, "ch"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3554
    if-ltz p0, :cond_0

    #@3
    const v1, 0xffff

    #@6
    if-gt p0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :cond_0
    return v0
.end method

.method public static isBaseForm(I)Z
    .locals 3
    .param p0, "ch"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 3584
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    #@4
    move-result v0

    #@5
    .line 3586
    .local v0, "cat":I
    const/16 v2, 0x9

    #@7
    if-eq v0, v2, :cond_0

    #@9
    .line 3587
    const/16 v2, 0xb

    #@b
    if-ne v0, v2, :cond_1

    #@d
    .line 3586
    :cond_0
    :goto_0
    return v1

    #@e
    .line 3588
    :cond_1
    const/16 v2, 0xa

    #@10
    if-eq v0, v2, :cond_0

    #@12
    .line 3589
    if-eq v0, v1, :cond_0

    #@14
    .line 3590
    const/4 v2, 0x2

    #@15
    if-eq v0, v2, :cond_0

    #@17
    .line 3591
    const/4 v2, 0x3

    #@18
    if-eq v0, v2, :cond_0

    #@1a
    .line 3592
    const/4 v2, 0x4

    #@1b
    if-eq v0, v2, :cond_0

    #@1d
    .line 3593
    const/4 v2, 0x5

    #@1e
    if-eq v0, v2, :cond_0

    #@20
    .line 3594
    const/4 v2, 0x6

    #@21
    if-eq v0, v2, :cond_0

    #@23
    .line 3595
    const/4 v2, 0x7

    #@24
    if-eq v0, v2, :cond_0

    #@26
    .line 3596
    const/16 v2, 0x8

    #@28
    if-eq v0, v2, :cond_0

    #@2a
    const/4 v1, 0x0

    #@2b
    goto :goto_0
.end method

.method public static isDefined(I)Z
    .locals 2
    .param p0, "ch"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3102
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public static isDigit(I)Z
    .locals 2
    .param p0, "ch"    # I

    #@0
    .prologue
    .line 3118
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    #@3
    move-result v0

    #@4
    const/16 v1, 0x9

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public static isHighSurrogate(C)Z
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 5308
    invoke-static {p0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isISOControl(I)Z
    .locals 3
    .param p0, "ch"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 3132
    if-ltz p0, :cond_2

    #@4
    const/16 v2, 0x9f

    #@6
    if-gt p0, v2, :cond_2

    #@8
    .line 3133
    const/16 v2, 0x1f

    #@a
    if-le p0, v2, :cond_0

    #@c
    const/16 v2, 0x7f

    #@e
    if-lt p0, v2, :cond_1

    #@10
    .line 3132
    :cond_0
    :goto_0
    return v0

    #@11
    :cond_1
    move v0, v1

    #@12
    .line 3133
    goto :goto_0

    #@13
    :cond_2
    move v0, v1

    #@14
    .line 3132
    goto :goto_0
.end method

.method public static isIdentifierIgnorable(I)Z
    .locals 4
    .param p0, "ch"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 3409
    const/16 v2, 0x9f

    #@4
    if-gt p0, v2, :cond_4

    #@6
    .line 3410
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->isISOControl(I)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_2

    #@c
    .line 3411
    const/16 v2, 0x9

    #@e
    if-lt p0, v2, :cond_0

    #@10
    const/16 v2, 0xd

    #@12
    if-le p0, v2, :cond_2

    #@14
    .line 3412
    :cond_0
    const/16 v2, 0x1c

    #@16
    if-lt p0, v2, :cond_1

    #@18
    const/16 v2, 0x1f

    #@1a
    if-le p0, v2, :cond_3

    #@1c
    :cond_1
    :goto_0
    move v1, v0

    #@1d
    .line 3410
    :cond_2
    return v1

    #@1e
    :cond_3
    move v0, v1

    #@1f
    .line 3412
    goto :goto_0

    #@20
    .line 3414
    :cond_4
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    #@23
    move-result v2

    #@24
    const/16 v3, 0x10

    #@26
    if-ne v2, v3, :cond_5

    #@28
    :goto_1
    return v0

    #@29
    :cond_5
    move v0, v1

    #@2a
    goto :goto_1
.end method

.method public static isJavaIdentifierPart(I)Z
    .locals 1
    .param p0, "cp"    # I

    #@0
    .prologue
    .line 3218
    int-to-char v0, p0

    #@1
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public static isJavaIdentifierStart(I)Z
    .locals 1
    .param p0, "cp"    # I

    #@0
    .prologue
    .line 3207
    int-to-char v0, p0

    #@1
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public static isJavaLetter(I)Z
    .locals 1
    .param p0, "cp"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 3182
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->isJavaIdentifierStart(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isJavaLetterOrDigit(I)Z
    .locals 1
    .param p0, "cp"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 3196
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->isJavaIdentifierPart(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isLegal(I)Z
    .locals 3
    .param p0, "ch"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 3686
    if-gez p0, :cond_0

    #@4
    .line 3687
    return v1

    #@5
    .line 3689
    :cond_0
    const v2, 0xd800

    #@8
    if-ge p0, v2, :cond_1

    #@a
    .line 3690
    return v0

    #@b
    .line 3692
    :cond_1
    const v2, 0xdfff

    #@e
    if-gt p0, v2, :cond_2

    #@10
    .line 3693
    return v1

    #@11
    .line 3695
    :cond_2
    invoke-static {p0}, Landroid/icu/impl/UCharacterUtility;->isNonCharacter(I)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_3

    #@17
    .line 3696
    return v1

    #@18
    .line 3698
    :cond_3
    const v2, 0x10ffff

    #@1b
    if-gt p0, v2, :cond_4

    #@1d
    :goto_0
    return v0

    #@1e
    :cond_4
    move v0, v1

    #@1f
    goto :goto_0
.end method

.method public static isLegal(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3715
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v2

    #@4
    .line 3717
    .local v2, "size":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@7
    .line 3719
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    #@a
    move-result v0

    #@b
    .line 3720
    .local v0, "codepoint":I
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isLegal(I)Z

    #@e
    move-result v3

    #@f
    if-nez v3, :cond_0

    #@11
    .line 3721
    const/4 v3, 0x0

    #@12
    return v3

    #@13
    .line 3717
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@16
    move-result v3

    #@17
    add-int/2addr v1, v3

    #@18
    goto :goto_0

    #@19
    .line 3724
    .end local v0    # "codepoint":I
    :cond_1
    const/4 v3, 0x1

    #@1a
    return v3
.end method

.method public static isLetter(I)Z
    .locals 3
    .param p0, "ch"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 3145
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    #@5
    move-result v2

    #@6
    shl-int v2, v0, v2

    #@8
    and-int/lit8 v2, v2, 0x3e

    #@a
    if-eqz v2, :cond_0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    move v0, v1

    #@e
    goto :goto_0
.end method

.method public static isLetterOrDigit(I)Z
    .locals 3
    .param p0, "ch"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 3162
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    #@5
    move-result v2

    #@6
    shl-int v2, v0, v2

    #@8
    and-int/lit16 v2, v2, 0x23e

    #@a
    if-eqz v2, :cond_0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    move v0, v1

    #@e
    goto :goto_0
.end method

.method public static isLowSurrogate(C)Z
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 5318
    invoke-static {p0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isLowerCase(I)Z
    .locals 2
    .param p0, "ch"    # I

    #@0
    .prologue
    .line 3236
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x2

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public static isMirrored(I)Z
    .locals 1
    .param p0, "ch"    # I

    #@0
    .prologue
    .line 3623
    sget-object v0, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    #@2
    invoke-virtual {v0, p0}, Landroid/icu/impl/UBiDiProps;->isMirrored(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isPrintable(I)Z
    .locals 3
    .param p0, "ch"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3565
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    #@4
    move-result v0

    #@5
    .line 3567
    .local v0, "cat":I
    if-eqz v0, :cond_0

    #@7
    .line 3568
    const/16 v2, 0xf

    #@9
    if-eq v0, v2, :cond_0

    #@b
    .line 3569
    const/16 v2, 0x10

    #@d
    if-eq v0, v2, :cond_0

    #@f
    .line 3570
    const/16 v2, 0x11

    #@11
    if-eq v0, v2, :cond_0

    #@13
    .line 3571
    const/16 v2, 0x12

    #@15
    if-eq v0, v2, :cond_0

    #@17
    .line 3572
    if-eqz v0, :cond_0

    #@19
    const/4 v1, 0x1

    #@1a
    .line 3567
    :cond_0
    return v1
.end method

.method public static isSpace(I)Z
    .locals 3
    .param p0, "ch"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/16 v2, 0x20

    #@2
    const/4 v0, 0x1

    #@3
    const/4 v1, 0x0

    #@4
    .line 3067
    if-gt p0, v2, :cond_2

    #@6
    .line 3068
    if-eq p0, v2, :cond_0

    #@8
    const/16 v2, 0x9

    #@a
    if-ne p0, v2, :cond_1

    #@c
    .line 3067
    :cond_0
    :goto_0
    return v0

    #@d
    .line 3068
    :cond_1
    const/16 v2, 0xa

    #@f
    if-eq p0, v2, :cond_0

    #@11
    const/16 v2, 0xc

    #@13
    if-eq p0, v2, :cond_0

    #@15
    const/16 v2, 0xd

    #@17
    if-eq p0, v2, :cond_0

    #@19
    move v0, v1

    #@1a
    goto :goto_0

    #@1b
    :cond_2
    move v0, v1

    #@1c
    .line 3067
    goto :goto_0
.end method

.method public static isSpaceChar(I)Z
    .locals 3
    .param p0, "ch"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 3291
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    #@5
    move-result v2

    #@6
    shl-int v2, v0, v2

    #@8
    and-int/lit16 v2, v2, 0x7000

    #@a
    if-eqz v2, :cond_0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    move v0, v1

    #@e
    goto :goto_0
.end method

.method public static isSupplementary(I)Z
    .locals 2
    .param p0, "ch"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3542
    const/high16 v1, 0x10000

    #@3
    if-lt p0, v1, :cond_0

    #@5
    .line 3543
    const v1, 0x10ffff

    #@8
    if-gt p0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    .line 3542
    :cond_0
    return v0
.end method

.method public static final isSupplementaryCodePoint(I)Z
    .locals 1
    .param p0, "cp"    # I

    #@0
    .prologue
    .line 5298
    invoke-static {p0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static final isSurrogatePair(CC)Z
    .locals 1
    .param p0, "high"    # C
    .param p1, "low"    # C

    #@0
    .prologue
    .line 5329
    invoke-static {p0, p1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isTitleCase(I)Z
    .locals 2
    .param p0, "ch"    # I

    #@0
    .prologue
    .line 3312
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x3

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public static isUAlphabetic(I)Z
    .locals 1
    .param p0, "ch"    # I

    #@0
    .prologue
    .line 5055
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public static isULowercase(I)Z
    .locals 1
    .param p0, "ch"    # I

    #@0
    .prologue
    .line 5066
    const/16 v0, 0x16

    #@2
    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isUUppercase(I)Z
    .locals 1
    .param p0, "ch"    # I

    #@0
    .prologue
    .line 5077
    const/16 v0, 0x1e

    #@2
    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isUWhiteSpace(I)Z
    .locals 1
    .param p0, "ch"    # I

    #@0
    .prologue
    .line 5089
    const/16 v0, 0x1f

    #@2
    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isUnicodeIdentifierPart(I)Z
    .locals 3
    .param p0, "ch"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 3345
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    #@4
    move-result v1

    #@5
    shl-int v1, v0, v1

    #@7
    .line 3346
    const v2, 0x40077e

    #@a
    .line 3345
    and-int/2addr v1, v2

    #@b
    if-nez v1, :cond_0

    #@d
    .line 3356
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->isIdentifierIgnorable(I)Z

    #@10
    move-result v0

    #@11
    .line 3345
    :cond_0
    return v0
.end method

.method public static isUnicodeIdentifierStart(I)Z
    .locals 3
    .param p0, "ch"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 3382
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    #@5
    move-result v2

    #@6
    shl-int v2, v0, v2

    #@8
    and-int/lit16 v2, v2, 0x43e

    #@a
    if-eqz v2, :cond_0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    move v0, v1

    #@e
    goto :goto_0
.end method

.method public static isUpperCase(I)Z
    .locals 2
    .param p0, "ch"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 3436
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    #@4
    move-result v1

    #@5
    if-ne v1, v0, :cond_0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public static final isValidCodePoint(I)Z
    .locals 2
    .param p0, "cp"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 5288
    if-ltz p0, :cond_0

    #@3
    const v1, 0x10ffff

    #@6
    if-gt p0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :cond_0
    return v0
.end method

.method public static isWhitespace(I)Z
    .locals 3
    .param p0, "ch"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 3271
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    #@5
    move-result v2

    #@6
    shl-int v2, v0, v2

    #@8
    and-int/lit16 v2, v2, 0x7000

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 3275
    const/16 v2, 0xa0

    #@e
    if-eq p0, v2, :cond_1

    #@10
    const/16 v2, 0x2007

    #@12
    if-eq p0, v2, :cond_1

    #@14
    const/16 v2, 0x202f

    #@16
    if-eq p0, v2, :cond_1

    #@18
    .line 3271
    :cond_0
    :goto_0
    return v0

    #@19
    .line 3278
    :cond_1
    const/16 v2, 0x9

    #@1b
    if-lt p0, v2, :cond_2

    #@1d
    const/16 v2, 0xd

    #@1f
    if-le p0, v2, :cond_0

    #@21
    :cond_2
    const/16 v2, 0x1c

    #@23
    if-lt p0, v2, :cond_3

    #@25
    const/16 v2, 0x1f

    #@27
    if-le p0, v2, :cond_0

    #@29
    :cond_3
    move v0, v1

    #@2a
    goto :goto_0
.end method

.method public static offsetByCodePoints(Ljava/lang/CharSequence;II)I
    .locals 8
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I
    .param p2, "codePointOffset"    # I

    #@0
    .prologue
    const v7, 0xdfff

    #@3
    const v6, 0xdc00

    #@6
    const v5, 0xdbff

    #@9
    const v4, 0xd800

    #@c
    .line 5613
    if-ltz p1, :cond_0

    #@e
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@11
    move-result v3

    #@12
    if-le p1, v3, :cond_1

    #@14
    .line 5614
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@16
    new-instance v4, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v5, "index ( "

    #@1e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    .line 5615
    const-string/jumbo v5, ") out of range 0, "

    #@29
    .line 5614
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    .line 5615
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@30
    move-result v5

    #@31
    .line 5614
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v3

    #@3d
    .line 5618
    :cond_1
    if-gez p2, :cond_5

    #@3f
    .line 5619
    :cond_2
    add-int/lit8 p2, p2, 0x1

    #@41
    if-gtz p2, :cond_a

    #@43
    .line 5620
    add-int/lit8 p1, p1, -0x1

    #@45
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@48
    move-result v0

    #@49
    .line 5621
    .local v0, "ch":C
    :cond_3
    if-lt v0, v6, :cond_2

    #@4b
    if-gt v0, v7, :cond_2

    #@4d
    if-lez p1, :cond_2

    #@4f
    .line 5622
    add-int/lit8 p1, p1, -0x1

    #@51
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@54
    move-result v0

    #@55
    .line 5623
    if-lt v0, v4, :cond_4

    #@57
    if-le v0, v5, :cond_3

    #@59
    .line 5624
    :cond_4
    add-int/lit8 p2, p2, 0x1

    #@5b
    if-lez p2, :cond_3

    #@5d
    .line 5625
    add-int/lit8 v3, p1, 0x1

    #@5f
    return v3

    #@60
    .line 5631
    .end local v0    # "ch":C
    :cond_5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@63
    move-result v2

    #@64
    .local v2, "limit":I
    move v1, p1

    #@65
    .line 5632
    .end local p1    # "index":I
    .local v1, "index":I
    :cond_6
    add-int/lit8 p2, p2, -0x1

    #@67
    if-ltz p2, :cond_9

    #@69
    .line 5633
    add-int/lit8 p1, v1, 0x1

    #@6b
    .end local v1    # "index":I
    .restart local p1    # "index":I
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@6e
    move-result v0

    #@6f
    .restart local v0    # "ch":C
    move v1, p1

    #@70
    .line 5634
    .end local p1    # "index":I
    .restart local v1    # "index":I
    :goto_0
    if-lt v0, v4, :cond_6

    #@72
    if-gt v0, v5, :cond_6

    #@74
    if-ge v1, v2, :cond_6

    #@76
    .line 5635
    add-int/lit8 p1, v1, 0x1

    #@78
    .end local v1    # "index":I
    .restart local p1    # "index":I
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@7b
    move-result v0

    #@7c
    .line 5636
    if-lt v0, v6, :cond_7

    #@7e
    if-le v0, v7, :cond_8

    #@80
    .line 5637
    :cond_7
    add-int/lit8 p2, p2, -0x1

    #@82
    if-gez p2, :cond_8

    #@84
    .line 5638
    add-int/lit8 v3, p1, -0x1

    #@86
    return v3

    #@87
    :cond_8
    move v1, p1

    #@88
    .end local p1    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    #@89
    .end local v0    # "ch":C
    :cond_9
    move p1, v1

    #@8a
    .line 5645
    .end local v1    # "index":I
    .end local v2    # "limit":I
    .restart local p1    # "index":I
    :cond_a
    return p1
.end method

.method public static offsetByCodePoints([CIIII)I
    .locals 8
    .param p0, "text"    # [C
    .param p1, "start"    # I
    .param p2, "count"    # I
    .param p3, "index"    # I
    .param p4, "codePointOffset"    # I

    #@0
    .prologue
    const v7, 0xdfff

    #@3
    const v6, 0xdc00

    #@6
    const v5, 0xdbff

    #@9
    const v4, 0xd800

    #@c
    .line 5661
    add-int v2, p1, p2

    #@e
    .line 5662
    .local v2, "limit":I
    if-ltz p1, :cond_0

    #@10
    if-ge v2, p1, :cond_1

    #@12
    .line 5663
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@14
    new-instance v4, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v5, "index ( "

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    .line 5664
    const-string/jumbo v5, ") out of range "

    #@27
    .line 5663
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    .line 5665
    const-string/jumbo v5, ", "

    #@32
    .line 5663
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    .line 5666
    const-string/jumbo v5, " in array 0, "

    #@3d
    .line 5663
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    .line 5666
    array-length v5, p0

    #@42
    .line 5663
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v4

    #@4a
    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v3

    #@4e
    .line 5662
    :cond_1
    array-length v3, p0

    #@4f
    if-gt v2, v3, :cond_0

    #@51
    if-lt p3, p1, :cond_0

    #@53
    if-gt p3, v2, :cond_0

    #@55
    .line 5669
    if-gez p4, :cond_5

    #@57
    .line 5670
    :cond_2
    add-int/lit8 p4, p4, 0x1

    #@59
    if-gtz p4, :cond_a

    #@5b
    .line 5671
    add-int/lit8 p3, p3, -0x1

    #@5d
    aget-char v0, p0, p3

    #@5f
    .line 5672
    .local v0, "ch":C
    if-ge p3, p1, :cond_3

    #@61
    .line 5673
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@63
    new-instance v4, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v5, "index ( "

    #@6b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v4

    #@6f
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@72
    move-result-object v4

    #@73
    .line 5674
    const-string/jumbo v5, ") < start ("

    #@76
    .line 5673
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v4

    #@7a
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v4

    #@7e
    .line 5675
    const-string/jumbo v5, ")"

    #@81
    .line 5673
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v4

    #@85
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v4

    #@89
    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@8c
    throw v3

    #@8d
    .line 5677
    :cond_3
    if-lt v0, v6, :cond_2

    #@8f
    if-gt v0, v7, :cond_2

    #@91
    if-le p3, p1, :cond_2

    #@93
    .line 5678
    add-int/lit8 p3, p3, -0x1

    #@95
    aget-char v0, p0, p3

    #@97
    .line 5679
    if-lt v0, v4, :cond_4

    #@99
    if-le v0, v5, :cond_3

    #@9b
    .line 5680
    :cond_4
    add-int/lit8 p4, p4, 0x1

    #@9d
    if-lez p4, :cond_3

    #@9f
    .line 5681
    add-int/lit8 v3, p3, 0x1

    #@a1
    return v3

    #@a2
    .end local v0    # "ch":C
    :cond_5
    move v1, p3

    #@a3
    .line 5687
    .end local p3    # "index":I
    .local v1, "index":I
    :cond_6
    add-int/lit8 p4, p4, -0x1

    #@a5
    if-ltz p4, :cond_9

    #@a7
    .line 5688
    add-int/lit8 p3, v1, 0x1

    #@a9
    .end local v1    # "index":I
    .restart local p3    # "index":I
    aget-char v0, p0, v1

    #@ab
    .line 5689
    .restart local v0    # "ch":C
    if-le p3, v2, :cond_7

    #@ad
    .line 5690
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@af
    new-instance v4, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    const-string/jumbo v5, "index ( "

    #@b7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v4

    #@bb
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@be
    move-result-object v4

    #@bf
    .line 5691
    const-string/jumbo v5, ") > limit ("

    #@c2
    .line 5690
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v4

    #@c6
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v4

    #@ca
    .line 5692
    const-string/jumbo v5, ")"

    #@cd
    .line 5690
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v4

    #@d1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d4
    move-result-object v4

    #@d5
    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@d8
    throw v3

    #@d9
    :cond_7
    move v1, p3

    #@da
    .line 5694
    .end local p3    # "index":I
    .restart local v1    # "index":I
    if-lt v0, v4, :cond_6

    #@dc
    if-gt v0, v5, :cond_6

    #@de
    if-ge v1, v2, :cond_6

    #@e0
    .line 5695
    add-int/lit8 p3, v1, 0x1

    #@e2
    .end local v1    # "index":I
    .restart local p3    # "index":I
    aget-char v0, p0, v1

    #@e4
    .line 5696
    if-lt v0, v6, :cond_8

    #@e6
    if-le v0, v7, :cond_7

    #@e8
    .line 5697
    :cond_8
    add-int/lit8 p4, p4, -0x1

    #@ea
    if-gez p4, :cond_7

    #@ec
    .line 5698
    add-int/lit8 v3, p3, -0x1

    #@ee
    return v3

    #@ef
    .end local v0    # "ch":C
    .end local p3    # "index":I
    .restart local v1    # "index":I
    :cond_9
    move p3, v1

    #@f0
    .line 5705
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_a
    return p3
.end method

.method public static final toChars(I[CI)I
    .locals 1
    .param p0, "cp"    # I
    .param p1, "dst"    # [C
    .param p2, "dstIndex"    # I

    #@0
    .prologue
    .line 5509
    invoke-static {p0, p1, p2}, Ljava/lang/Character;->toChars(I[CI)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static final toChars(I)[C
    .locals 1
    .param p0, "cp"    # I

    #@0
    .prologue
    .line 5521
    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static final toCodePoint(CC)I
    .locals 1
    .param p0, "high"    # C
    .param p1, "low"    # C

    #@0
    .prologue
    .line 5354
    invoke-static {p0, p1}, Ljava/lang/Character;->toCodePoint(CC)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static toLowerCase(I)I
    .locals 1
    .param p0, "ch"    # I

    #@0
    .prologue
    .line 3458
    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    #@2
    invoke-virtual {v0, p0}, Landroid/icu/impl/UCaseProps;->tolower(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static toLowerCase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 4356
    new-instance v2, Landroid/icu/lang/UCharacter$StringContextIterator;

    #@3
    invoke-direct {v2, p1}, Landroid/icu/lang/UCharacter$StringContextIterator;-><init>(Ljava/lang/String;)V

    #@6
    .line 4357
    .local v2, "iter":Landroid/icu/lang/UCharacter$StringContextIterator;
    new-instance v3, Ljava/lang/StringBuilder;

    #@8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@b
    move-result v0

    #@c
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@f
    .line 4358
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    #@10
    new-array v5, v0, [I

    #@12
    .line 4361
    .local v5, "locCache":[I
    if-nez p0, :cond_0

    #@14
    .line 4362
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    #@17
    move-result-object p0

    #@18
    .line 4364
    :cond_0
    aput v4, v5, v4

    #@1a
    .line 4366
    :goto_0
    invoke-virtual {v2}, Landroid/icu/lang/UCharacter$StringContextIterator;->nextCaseMapCP()I

    #@1d
    move-result v1

    #@1e
    .local v1, "c":I
    if-ltz v1, :cond_3

    #@20
    .line 4367
    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    #@22
    move-object v4, p0

    #@23
    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/UCaseProps;->toFullLower(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[I)I

    #@26
    move-result v1

    #@27
    .line 4370
    if-gez v1, :cond_2

    #@29
    .line 4372
    not-int v1, v1

    #@2a
    .line 4378
    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@2d
    goto :goto_0

    #@2e
    .line 4373
    :cond_2
    const/16 v0, 0x1f

    #@30
    if-gt v1, v0, :cond_1

    #@32
    goto :goto_0

    #@33
    .line 4380
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method

.method public static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4264
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p0}, Landroid/icu/lang/UCharacter;->toLowerCase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static toLowerCase(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4345
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/icu/lang/UCharacter;->toLowerCase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "ch"    # I

    #@0
    .prologue
    .line 3474
    if-ltz p0, :cond_0

    #@2
    const v0, 0x10ffff

    #@5
    if-le p0, v0, :cond_1

    #@7
    .line 3475
    :cond_0
    const/4 v0, 0x0

    #@8
    return-object v0

    #@9
    .line 3478
    :cond_1
    const/high16 v0, 0x10000

    #@b
    if-ge p0, v0, :cond_2

    #@d
    .line 3479
    int-to-char v0, p0

    #@e
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    return-object v0

    #@13
    .line 3482
    :cond_2
    new-instance v0, Ljava/lang/String;

    #@15
    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    #@1c
    return-object v0
.end method

.method public static toTitleCase(I)I
    .locals 1
    .param p0, "ch"    # I

    #@0
    .prologue
    .line 3505
    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    #@2
    invoke-virtual {v0, p0}, Landroid/icu/impl/UCaseProps;->totitle(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "titleIter"    # Landroid/icu/text/BreakIterator;

    #@0
    .prologue
    .line 4427
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, v0}, Landroid/icu/lang/UCharacter;->toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;
    .locals 23
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "titleIter"    # Landroid/icu/text/BreakIterator;
    .param p3, "options"    # I

    #@0
    .prologue
    .line 4454
    new-instance v5, Landroid/icu/lang/UCharacter$StringContextIterator;

    #@2
    move-object/from16 v0, p1

    #@4
    invoke-direct {v5, v0}, Landroid/icu/lang/UCharacter$StringContextIterator;-><init>(Ljava/lang/String;)V

    #@7
    .line 4455
    .local v5, "iter":Landroid/icu/lang/UCharacter$StringContextIterator;
    new-instance v6, Ljava/lang/StringBuilder;

    #@9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@c
    move-result v3

    #@d
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@10
    .line 4456
    .local v6, "result":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    #@11
    new-array v8, v3, [I

    #@13
    .line 4457
    .local v8, "locCache":[I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@16
    move-result v20

    #@17
    .line 4459
    .local v20, "srcLength":I
    if-nez p0, :cond_0

    #@19
    .line 4460
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    #@1c
    move-result-object p0

    #@1d
    .line 4462
    :cond_0
    const/4 v3, 0x0

    #@1e
    const/4 v7, 0x0

    #@1f
    aput v3, v8, v7

    #@21
    .line 4464
    if-nez p2, :cond_1

    #@23
    .line 4465
    invoke-static/range {p0 .. p0}, Landroid/icu/text/BreakIterator;->getWordInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    #@26
    move-result-object p2

    #@27
    .line 4467
    :cond_1
    move-object/from16 v0, p2

    #@29
    move-object/from16 v1, p1

    #@2b
    invoke-virtual {v0, v1}, Landroid/icu/text/BreakIterator;->setText(Ljava/lang/String;)V

    #@2e
    .line 4471
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    const-string/jumbo v7, "nl"

    #@35
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v17

    #@39
    .line 4472
    .local v17, "isDutch":Z
    const/4 v15, 0x1

    #@3a
    .line 4475
    .local v15, "FirstIJ":Z
    const/16 v19, 0x0

    #@3c
    .line 4476
    .local v19, "prev":I
    const/16 v18, 0x1

    #@3e
    .line 4479
    .local v18, "isFirstIndex":Z
    :goto_0
    move/from16 v0, v19

    #@40
    move/from16 v1, v20

    #@42
    if-ge v0, v1, :cond_11

    #@44
    .line 4481
    if-eqz v18, :cond_a

    #@46
    .line 4482
    const/16 v18, 0x0

    #@48
    .line 4483
    invoke-virtual/range {p2 .. p2}, Landroid/icu/text/BreakIterator;->first()I

    #@4b
    move-result v16

    #@4c
    .line 4487
    .local v16, "index":I
    :goto_1
    const/4 v3, -0x1

    #@4d
    move/from16 v0, v16

    #@4f
    if-eq v0, v3, :cond_2

    #@51
    move/from16 v0, v16

    #@53
    move/from16 v1, v20

    #@55
    if-le v0, v1, :cond_3

    #@57
    .line 4488
    :cond_2
    move/from16 v16, v20

    #@59
    .line 4504
    :cond_3
    move/from16 v0, v19

    #@5b
    move/from16 v1, v16

    #@5d
    if-ge v0, v1, :cond_9

    #@5f
    .line 4506
    move/from16 v0, v16

    #@61
    invoke-virtual {v5, v0}, Landroid/icu/lang/UCharacter$StringContextIterator;->setLimit(I)V

    #@64
    .line 4507
    invoke-virtual {v5}, Landroid/icu/lang/UCharacter$StringContextIterator;->nextCaseMapCP()I

    #@67
    move-result v4

    #@68
    .line 4508
    .local v4, "c":I
    move/from16 v0, p3

    #@6a
    and-int/lit16 v3, v0, 0x200

    #@6c
    if-nez v3, :cond_b

    #@6e
    .line 4509
    sget-object v3, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    #@70
    invoke-virtual {v3, v4}, Landroid/icu/impl/UCaseProps;->getType(I)I

    #@73
    move-result v3

    #@74
    if-nez v3, :cond_b

    #@76
    .line 4510
    :cond_4
    invoke-virtual {v5}, Landroid/icu/lang/UCharacter$StringContextIterator;->nextCaseMapCP()I

    #@79
    move-result v4

    #@7a
    if-ltz v4, :cond_5

    #@7c
    .line 4511
    sget-object v3, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    #@7e
    invoke-virtual {v3, v4}, Landroid/icu/impl/UCaseProps;->getType(I)I

    #@81
    move-result v3

    #@82
    if-eqz v3, :cond_4

    #@84
    .line 4512
    :cond_5
    invoke-virtual {v5}, Landroid/icu/lang/UCharacter$StringContextIterator;->getCPStart()I

    #@87
    move-result v22

    #@88
    .line 4513
    .local v22, "titleStart":I
    move/from16 v0, v19

    #@8a
    move/from16 v1, v22

    #@8c
    if-ge v0, v1, :cond_6

    #@8e
    .line 4514
    move-object/from16 v0, p1

    #@90
    move/from16 v1, v19

    #@92
    move/from16 v2, v22

    #@94
    invoke-virtual {v6, v0, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@97
    .line 4520
    :cond_6
    :goto_2
    move/from16 v0, v22

    #@99
    move/from16 v1, v16

    #@9b
    if-ge v0, v1, :cond_9

    #@9d
    .line 4521
    const/4 v15, 0x1

    #@9e
    .line 4523
    sget-object v3, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    #@a0
    move-object/from16 v7, p0

    #@a2
    invoke-virtual/range {v3 .. v8}, Landroid/icu/impl/UCaseProps;->toFullTitle(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[I)I

    #@a5
    move-result v4

    #@a6
    .line 4527
    :goto_3
    if-gez v4, :cond_c

    #@a8
    .line 4529
    not-int v4, v4

    #@a9
    .line 4530
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@ac
    .line 4538
    :cond_7
    :goto_4
    move/from16 v0, p3

    #@ae
    and-int/lit16 v3, v0, 0x100

    #@b0
    if-eqz v3, :cond_e

    #@b2
    .line 4541
    invoke-virtual {v5}, Landroid/icu/lang/UCharacter$StringContextIterator;->getCPLimit()I

    #@b5
    move-result v21

    #@b6
    .line 4542
    .local v21, "titleLimit":I
    move/from16 v0, v21

    #@b8
    move/from16 v1, v16

    #@ba
    if-ge v0, v1, :cond_8

    #@bc
    .line 4544
    if-eqz v17, :cond_d

    #@be
    const/16 v3, 0x49

    #@c0
    if-ne v4, v3, :cond_d

    #@c2
    move-object/from16 v0, p1

    #@c4
    move/from16 v1, v21

    #@c6
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@c9
    move-result v3

    #@ca
    const/16 v7, 0x6a

    #@cc
    if-ne v3, v7, :cond_d

    #@ce
    .line 4545
    const/16 v3, 0x4a

    #@d0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v3

    #@d4
    add-int/lit8 v7, v21, 0x1

    #@d6
    move-object/from16 v0, p1

    #@d8
    move/from16 v1, v16

    #@da
    invoke-virtual {v3, v0, v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@dd
    .line 4550
    :cond_8
    :goto_5
    invoke-virtual {v5}, Landroid/icu/lang/UCharacter$StringContextIterator;->moveToLimit()V

    #@e0
    .line 4569
    .end local v4    # "c":I
    .end local v21    # "titleLimit":I
    .end local v22    # "titleStart":I
    :cond_9
    move/from16 v19, v16

    #@e2
    goto/16 :goto_0

    #@e4
    .line 4485
    .end local v16    # "index":I
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/icu/text/BreakIterator;->next()I

    #@e7
    move-result v16

    #@e8
    .restart local v16    # "index":I
    goto/16 :goto_1

    #@ea
    .line 4517
    .restart local v4    # "c":I
    :cond_b
    move/from16 v22, v19

    #@ec
    .restart local v22    # "titleStart":I
    goto :goto_2

    #@ed
    .line 4531
    :cond_c
    const/16 v3, 0x1f

    #@ef
    if-le v4, v3, :cond_7

    #@f1
    .line 4535
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@f4
    goto :goto_4

    #@f5
    .line 4547
    .restart local v21    # "titleLimit":I
    :cond_d
    move-object/from16 v0, p1

    #@f7
    move/from16 v1, v21

    #@f9
    move/from16 v2, v16

    #@fb
    invoke-virtual {v6, v0, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@fe
    goto :goto_5

    #@ff
    .line 4552
    .end local v21    # "titleLimit":I
    :cond_e
    invoke-virtual {v5}, Landroid/icu/lang/UCharacter$StringContextIterator;->nextCaseMapCP()I

    #@102
    move-result v10

    #@103
    .local v10, "nc":I
    if-ltz v10, :cond_9

    #@105
    .line 4553
    if-eqz v17, :cond_10

    #@107
    const/16 v3, 0x4a

    #@109
    if-eq v10, v3, :cond_f

    #@10b
    const/16 v3, 0x6a

    #@10d
    if-ne v10, v3, :cond_10

    #@10f
    .line 4554
    :cond_f
    const/16 v3, 0x49

    #@111
    if-ne v4, v3, :cond_10

    #@113
    if-eqz v15, :cond_10

    #@115
    .line 4555
    const/16 v4, 0x4a

    #@117
    .line 4556
    const/4 v15, 0x0

    #@118
    .line 4554
    goto :goto_3

    #@119
    .line 4559
    :cond_10
    sget-object v9, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    #@11b
    move-object v11, v5

    #@11c
    move-object v12, v6

    #@11d
    move-object/from16 v13, p0

    #@11f
    move-object v14, v8

    #@120
    invoke-virtual/range {v9 .. v14}, Landroid/icu/impl/UCaseProps;->toFullLower(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[I)I

    #@123
    move-result v4

    #@124
    goto :goto_3

    #@125
    .line 4571
    .end local v4    # "c":I
    .end local v10    # "nc":I
    .end local v16    # "index":I
    .end local v22    # "titleStart":I
    :cond_11
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@128
    move-result-object v3

    #@129
    return-object v3
.end method

.method public static toTitleCase(Ljava/lang/String;Landroid/icu/text/BreakIterator;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "breakiter"    # Landroid/icu/text/BreakIterator;

    #@0
    .prologue
    .line 4286
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p0, p1}, Landroid/icu/lang/UCharacter;->toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static toTitleCase(Ljava/util/Locale;Ljava/lang/String;Landroid/icu/text/BreakIterator;)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "breakiter"    # Landroid/icu/text/BreakIterator;

    #@0
    .prologue
    .line 4404
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1, p2}, Landroid/icu/lang/UCharacter;->toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static toTitleCase(Ljava/util/Locale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "titleIter"    # Landroid/icu/text/BreakIterator;
    .param p3, "options"    # I

    #@0
    .prologue
    .line 4674
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1, p2, p3}, Landroid/icu/lang/UCharacter;->toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static toTitleFirst(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "str"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 4605
    const/4 v0, 0x0

    #@2
    .line 4606
    .local v0, "c":I
    const/4 v1, 0x0

    #@3
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v7

    #@7
    if-ge v1, v7, :cond_0

    #@9
    .line 4607
    invoke-static {p1, v1}, Landroid/icu/lang/UCharacter;->codePointAt(Ljava/lang/CharSequence;I)I

    #@c
    move-result v0

    #@d
    .line 4608
    const/16 v7, 0x2000

    #@f
    invoke-static {v0, v7}, Landroid/icu/lang/UCharacter;->getIntPropertyValue(II)I

    #@12
    move-result v2

    #@13
    .line 4609
    .local v2, "propertyMask":I
    and-int/lit16 v7, v2, 0x230

    #@15
    if-eqz v7, :cond_1

    #@17
    .line 4647
    .end local v2    # "propertyMask":I
    :cond_0
    return-object p1

    #@18
    .line 4612
    .restart local v2    # "propertyMask":I
    :cond_1
    sget-object v7, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    #@1a
    invoke-virtual {v7, v0}, Landroid/icu/impl/UCaseProps;->getType(I)I

    #@1d
    move-result v7

    #@1e
    if-nez v7, :cond_2

    #@20
    .line 4606
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->charCount(I)I

    #@23
    move-result v7

    #@24
    add-int/2addr v1, v7

    #@25
    goto :goto_0

    #@26
    .line 4623
    :cond_2
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->charCount(I)I

    #@29
    move-result v7

    #@2a
    add-int/2addr v7, v1

    #@2b
    invoke-virtual {p1, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    .line 4624
    .local v5, "substring":Ljava/lang/String;
    invoke-static {p0}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    #@32
    move-result-object v7

    #@33
    invoke-static {p0, v5, v7, v9}, Landroid/icu/lang/UCharacter;->toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;

    #@36
    move-result-object v6

    #@37
    .line 4627
    .local v6, "titled":Ljava/lang/String;
    invoke-virtual {v6, v9}, Ljava/lang/String;->codePointAt(I)I

    #@3a
    move-result v7

    #@3b
    if-eq v7, v0, :cond_0

    #@3d
    .line 4631
    new-instance v7, Ljava/lang/StringBuilder;

    #@3f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@42
    move-result v8

    #@43
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    #@46
    invoke-virtual {v7, p1, v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    .line 4636
    .local v3, "result":Ljava/lang/StringBuilder;
    const/16 v7, 0x69

    #@4c
    if-ne v0, v7, :cond_3

    #@4e
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@51
    move-result-object v7

    #@52
    const-string/jumbo v8, "nl"

    #@55
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v7

    #@59
    if-eqz v7, :cond_3

    #@5b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5e
    move-result v7

    #@5f
    if-ge v1, v7, :cond_3

    #@61
    add-int/lit8 v7, v1, 0x1

    #@63
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    #@66
    move-result v7

    #@67
    const/16 v8, 0x6a

    #@69
    if-ne v7, v8, :cond_3

    #@6b
    .line 4637
    const-string/jumbo v7, "IJ"

    #@6e
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    .line 4638
    const/4 v4, 0x2

    #@72
    .line 4645
    .local v4, "startOfSuffix":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@75
    move-result v7

    #@76
    invoke-virtual {v3, p1, v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@79
    move-result-object v7

    #@7a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v7

    #@7e
    return-object v7

    #@7f
    .line 4640
    .end local v4    # "startOfSuffix":I
    :cond_3
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    .line 4641
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->charCount(I)I

    #@85
    move-result v7

    #@86
    add-int v4, v1, v7

    #@88
    .restart local v4    # "startOfSuffix":I
    goto :goto_1
.end method

.method public static toUpperCase(I)I
    .locals 1
    .param p0, "ch"    # I

    #@0
    .prologue
    .line 3527
    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    #@2
    invoke-virtual {v0, p0}, Landroid/icu/impl/UCaseProps;->toupper(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static toUpperCase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 4309
    new-instance v2, Landroid/icu/lang/UCharacter$StringContextIterator;

    #@3
    invoke-direct {v2, p1}, Landroid/icu/lang/UCharacter$StringContextIterator;-><init>(Ljava/lang/String;)V

    #@6
    .line 4310
    .local v2, "iter":Landroid/icu/lang/UCharacter$StringContextIterator;
    new-instance v3, Ljava/lang/StringBuilder;

    #@8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@b
    move-result v0

    #@c
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@f
    .line 4311
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    #@10
    new-array v5, v0, [I

    #@12
    .line 4314
    .local v5, "locCache":[I
    if-nez p0, :cond_0

    #@14
    .line 4315
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    #@17
    move-result-object p0

    #@18
    .line 4317
    :cond_0
    aput v4, v5, v4

    #@1a
    .line 4319
    :goto_0
    invoke-virtual {v2}, Landroid/icu/lang/UCharacter$StringContextIterator;->nextCaseMapCP()I

    #@1d
    move-result v1

    #@1e
    .local v1, "c":I
    if-ltz v1, :cond_3

    #@20
    .line 4320
    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    #@22
    move-object v4, p0

    #@23
    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/UCaseProps;->toFullUpper(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[I)I

    #@26
    move-result v1

    #@27
    .line 4323
    if-gez v1, :cond_2

    #@29
    .line 4325
    not-int v1, v1

    #@2a
    .line 4331
    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@2d
    goto :goto_0

    #@2e
    .line 4326
    :cond_2
    const/16 v0, 0x1f

    #@30
    if-gt v1, v0, :cond_1

    #@32
    goto :goto_0

    #@33
    .line 4333
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method

.method public static toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4253
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p0}, Landroid/icu/lang/UCharacter;->toUpperCase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static toUpperCase(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4298
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/icu/lang/UCharacter;->toUpperCase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
