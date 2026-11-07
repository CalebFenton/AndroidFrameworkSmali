.class public final Landroid/icu/lang/UCharacter;
.super Ljava/lang/Object;
.source "UCharacter.java"

# interfaces
.implements Landroid/icu/lang/UCharacterEnums$ECharacterCategory;
.implements Landroid/icu/lang/UCharacterEnums$ECharacterDirection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/lang/UCharacter$IdentifierType;,
        Landroid/icu/lang/UCharacter$UCharacterTypeIterator;,
        Landroid/icu/lang/UCharacter$DummyValueIterator;,
        Landroid/icu/lang/UCharacter$IdentifierStatus;,
        Landroid/icu/lang/UCharacter$VerticalOrientation;,
        Landroid/icu/lang/UCharacter$IndicConjunctBreak;,
        Landroid/icu/lang/UCharacter$IndicSyllabicCategory;,
        Landroid/icu/lang/UCharacter$IndicPositionalCategory;,
        Landroid/icu/lang/UCharacter$BidiPairedBracketType;,
        Landroid/icu/lang/UCharacter$HangulSyllableType;,
        Landroid/icu/lang/UCharacter$NumericType;,
        Landroid/icu/lang/UCharacter$LineBreak;,
        Landroid/icu/lang/UCharacter$SentenceBreak;,
        Landroid/icu/lang/UCharacter$WordBreak;,
        Landroid/icu/lang/UCharacter$GraphemeClusterBreak;,
        Landroid/icu/lang/UCharacter$JoiningGroup;,
        Landroid/icu/lang/UCharacter$JoiningType;,
        Landroid/icu/lang/UCharacter$DecompositionType;,
        Landroid/icu/lang/UCharacter$EastAsianWidth;,
        Landroid/icu/lang/UCharacter$UnicodeBlock;
    }
.end annotation


# static fields
.field private static final greylist-max-o APPLICATION_PROGRAM_COMMAND_:I = 0x9f

.field private static final greylist-max-o CJK_IDEOGRAPH_COMPLEX_EIGHT_:I = 0x634c

.field private static final greylist-max-o CJK_IDEOGRAPH_COMPLEX_FIVE_:I = 0x4f0d

.field private static final greylist-max-o CJK_IDEOGRAPH_COMPLEX_FOUR_:I = 0x8086

.field private static final greylist-max-o CJK_IDEOGRAPH_COMPLEX_HUNDRED_:I = 0x4f70

.field private static final greylist-max-o CJK_IDEOGRAPH_COMPLEX_NINE_:I = 0x7396

.field private static final greylist-max-o CJK_IDEOGRAPH_COMPLEX_ONE_:I = 0x58f9

.field private static final greylist-max-o CJK_IDEOGRAPH_COMPLEX_SEVEN_:I = 0x67d2

.field private static final greylist-max-o CJK_IDEOGRAPH_COMPLEX_SIX_:I = 0x9678

.field private static final greylist-max-o CJK_IDEOGRAPH_COMPLEX_TEN_:I = 0x62fe

.field private static final greylist-max-o CJK_IDEOGRAPH_COMPLEX_THOUSAND_:I = 0x4edf

.field private static final greylist-max-o CJK_IDEOGRAPH_COMPLEX_THREE_:I = 0x53c3

.field private static final greylist-max-o CJK_IDEOGRAPH_COMPLEX_TWO_:I = 0x8cb3

.field private static final greylist-max-o CJK_IDEOGRAPH_COMPLEX_ZERO_:I = 0x96f6

.field private static final greylist-max-o CJK_IDEOGRAPH_EIGHTH_:I = 0x516b

.field private static final greylist-max-o CJK_IDEOGRAPH_FIFTH_:I = 0x4e94

.field private static final greylist-max-o CJK_IDEOGRAPH_FIRST_:I = 0x4e00

.field private static final greylist-max-o CJK_IDEOGRAPH_FOURTH_:I = 0x56db

.field private static final greylist-max-o CJK_IDEOGRAPH_HUNDRED_:I = 0x767e

.field private static final greylist-max-o CJK_IDEOGRAPH_HUNDRED_MILLION_:I = 0x5104

.field private static final greylist-max-o CJK_IDEOGRAPH_NINETH_:I = 0x4e5d

.field private static final greylist-max-o CJK_IDEOGRAPH_SECOND_:I = 0x4e8c

.field private static final greylist-max-o CJK_IDEOGRAPH_SEVENTH_:I = 0x4e03

.field private static final greylist-max-o CJK_IDEOGRAPH_SIXTH_:I = 0x516d

.field private static final greylist-max-o CJK_IDEOGRAPH_TEN_:I = 0x5341

.field private static final greylist-max-o CJK_IDEOGRAPH_TEN_THOUSAND_:I = 0x824c

.field private static final greylist-max-o CJK_IDEOGRAPH_THIRD_:I = 0x4e09

.field private static final greylist-max-o CJK_IDEOGRAPH_THOUSAND_:I = 0x5343

.field private static final greylist-max-o DELETE_:I = 0x7f

.field private static final greylist-max-o FIGURE_SPACE_:I = 0x2007

.field public static final whitelist test-api FOLD_CASE_DEFAULT:I = 0x0

.field public static final whitelist test-api FOLD_CASE_EXCLUDE_SPECIAL_I:I = 0x1

.field private static final greylist-max-o IDEOGRAPHIC_NUMBER_ZERO_:I = 0x3007

.field private static final greylist-max-o LAST_CHAR_MASK_:I = 0xffff

.field private static final blacklist LEAD_SURROGATE_BITMASK:I = -0x400

.field private static final blacklist LEAD_SURROGATE_BITS:I = 0xd800

.field public static final whitelist test-api MAX_CODE_POINT:I = 0x10ffff

.field public static final whitelist test-api MAX_HIGH_SURROGATE:C = '\udbff'

.field public static final whitelist test-api MAX_LOW_SURROGATE:C = '\udfff'

.field public static final whitelist test-api MAX_RADIX:I = 0x24

.field public static final whitelist test-api MAX_SURROGATE:C = '\udfff'

.field public static final whitelist test-api MAX_VALUE:I = 0x10ffff

.field public static final whitelist test-api MIN_CODE_POINT:I = 0x0

.field public static final whitelist test-api MIN_HIGH_SURROGATE:C = '\ud800'

.field public static final whitelist test-api MIN_LOW_SURROGATE:C = '\udc00'

.field public static final whitelist test-api MIN_RADIX:I = 0x2

.field public static final whitelist test-api MIN_SUPPLEMENTARY_CODE_POINT:I = 0x10000

.field public static final whitelist test-api MIN_SURROGATE:C = '\ud800'

.field public static final whitelist test-api MIN_VALUE:I = 0x0

.field private static final greylist-max-o NARROW_NO_BREAK_SPACE_:I = 0x202f

.field private static final greylist-max-o NO_BREAK_SPACE_:I = 0xa0

.field public static final whitelist test-api NO_NUMERIC_VALUE:D = -1.23456789E8

.field public static final whitelist test-api REPLACEMENT_CHAR:I = 0xfffd

.field public static final whitelist test-api SUPPLEMENTARY_MIN_VALUE:I = 0x10000

.field public static final whitelist test-api TITLECASE_NO_BREAK_ADJUSTMENT:I = 0x200

.field public static final whitelist test-api TITLECASE_NO_LOWERCASE:I = 0x100

.field private static final blacklist TRAIL_SURROGATE_BITMASK:I = -0x400

.field private static final blacklist TRAIL_SURROGATE_BITS:I = 0xdc00

.field private static final blacklist U16_SURROGATE_OFFSET:I = 0x35fdc00

.field private static final greylist-max-o UNIT_SEPARATOR_:I = 0x1f


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 6423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6424
    return-void
.end method

.method public static whitelist test-api charCount(I)I
    .registers 2
    .param p0, "cp"    # I

    .line 5902
    invoke-static {p0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    return v0
.end method

.method public static final whitelist test-api codePointAt(Ljava/lang/CharSequence;I)I
    .registers 5
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I

    .line 5947
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "index":I
    .local v0, "index":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 5948
    .local p1, "c1":C
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 5949
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 5950
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 5951
    .local v1, "c2":C
    invoke-static {v1}, Landroid/icu/lang/UCharacter;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 5952
    invoke-static {p1, v1}, Landroid/icu/lang/UCharacter;->toCodePoint(CC)I

    move-result v2

    return v2

    .line 5956
    .end local v1    # "c2":C
    :cond_21
    return p1
.end method

.method public static final whitelist test-api codePointAt([CI)I
    .registers 5
    .param p0, "text"    # [C
    .param p1, "index"    # I

    .line 5969
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "index":I
    .local v0, "index":I
    aget-char p1, p0, p1

    .line 5970
    .local p1, "c1":C
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 5971
    array-length v1, p0

    if-ge v0, v1, :cond_1a

    .line 5972
    aget-char v1, p0, v0

    .line 5973
    .local v1, "c2":C
    invoke-static {v1}, Landroid/icu/lang/UCharacter;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 5974
    invoke-static {p1, v1}, Landroid/icu/lang/UCharacter;->toCodePoint(CC)I

    move-result v2

    return v2

    .line 5978
    .end local v1    # "c2":C
    :cond_1a
    return p1
.end method

.method public static final whitelist test-api codePointAt([CII)I
    .registers 6
    .param p0, "text"    # [C
    .param p1, "index"    # I
    .param p2, "limit"    # I

    .line 5992
    if-ge p1, p2, :cond_1f

    array-length v0, p0

    if-gt p2, v0, :cond_1f

    .line 5995
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "index":I
    .local v0, "index":I
    aget-char p1, p0, p1

    .line 5996
    .local p1, "c1":C
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 5997
    if-ge v0, p2, :cond_1e

    .line 5998
    aget-char v1, p0, v0

    .line 5999
    .local v1, "c2":C
    invoke-static {v1}, Landroid/icu/lang/UCharacter;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 6000
    invoke-static {p1, v1}, Landroid/icu/lang/UCharacter;->toCodePoint(CC)I

    move-result v2

    return v2

    .line 6004
    .end local v1    # "c2":C
    :cond_1e
    return p1

    .line 5993
    .end local v0    # "index":I
    .local p1, "index":I
    :cond_1f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static final whitelist test-api codePointBefore(Ljava/lang/CharSequence;I)I
    .registers 5
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I

    .line 6017
    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 6018
    .local v0, "c2":C
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 6019
    if-lez p1, :cond_1f

    .line 6020
    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 6021
    .local v1, "c1":C
    invoke-static {v1}, Landroid/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 6022
    invoke-static {v1, v0}, Landroid/icu/lang/UCharacter;->toCodePoint(CC)I

    move-result v2

    return v2

    .line 6026
    .end local v1    # "c1":C
    :cond_1f
    return v0
.end method

.method public static final whitelist test-api codePointBefore([CI)I
    .registers 5
    .param p0, "text"    # [C
    .param p1, "index"    # I

    .line 6039
    add-int/lit8 p1, p1, -0x1

    aget-char v0, p0, p1

    .line 6040
    .local v0, "c2":C
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 6041
    if-lez p1, :cond_1b

    .line 6042
    add-int/lit8 p1, p1, -0x1

    aget-char v1, p0, p1

    .line 6043
    .local v1, "c1":C
    invoke-static {v1}, Landroid/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 6044
    invoke-static {v1, v0}, Landroid/icu/lang/UCharacter;->toCodePoint(CC)I

    move-result v2

    return v2

    .line 6048
    .end local v1    # "c1":C
    :cond_1b
    return v0
.end method

.method public static final whitelist test-api codePointBefore([CII)I
    .registers 6
    .param p0, "text"    # [C
    .param p1, "index"    # I
    .param p2, "limit"    # I

    .line 6062
    if-le p1, p2, :cond_20

    if-ltz p2, :cond_20

    .line 6065
    add-int/lit8 p1, p1, -0x1

    aget-char v0, p0, p1

    .line 6066
    .local v0, "c2":C
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 6067
    if-le p1, p2, :cond_1f

    .line 6068
    add-int/lit8 p1, p1, -0x1

    aget-char v1, p0, p1

    .line 6069
    .local v1, "c1":C
    invoke-static {v1}, Landroid/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 6070
    invoke-static {v1, v0}, Landroid/icu/lang/UCharacter;->toCodePoint(CC)I

    move-result v2

    return v2

    .line 6074
    .end local v1    # "c1":C
    :cond_1f
    return v0

    .line 6063
    .end local v0    # "c2":C
    :cond_20
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static whitelist test-api codePointCount(Ljava/lang/CharSequence;II)I
    .registers 6
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .line 6135
    if-ltz p1, :cond_35

    if-lt p2, p1, :cond_35

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_35

    .line 6141
    sub-int v0, p2, p1

    .line 6142
    .local v0, "len":I
    :goto_c
    if-le p2, p1, :cond_34

    .line 6143
    add-int/lit8 p2, p2, -0x1

    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 6144
    .local v1, "ch":C
    :cond_14
    const v2, 0xdc00

    if-lt v1, v2, :cond_33

    const v2, 0xdfff

    if-gt v1, v2, :cond_33

    if-le p2, p1, :cond_33

    .line 6145
    add-int/lit8 p2, p2, -0x1

    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 6146
    const v2, 0xd800

    if-lt v1, v2, :cond_14

    const v2, 0xdbff

    if-gt v1, v2, :cond_14

    .line 6147
    add-int/lit8 v0, v0, -0x1

    .line 6148
    nop

    .line 6151
    .end local v1    # "ch":C
    :cond_33
    goto :goto_c

    .line 6152
    :cond_34
    return v0

    .line 6136
    .end local v0    # "len":I
    :cond_35
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") or limit ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") invalid or out of range 0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6138
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api codePointCount([CII)I
    .registers 6
    .param p0, "text"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .line 6164
    if-ltz p1, :cond_2e

    if-lt p2, p1, :cond_2e

    array-length v0, p0

    if-gt p2, v0, :cond_2e

    .line 6170
    sub-int v0, p2, p1

    .line 6171
    .local v0, "len":I
    :goto_9
    if-le p2, p1, :cond_2d

    .line 6172
    add-int/lit8 p2, p2, -0x1

    aget-char v1, p0, p2

    .line 6173
    .local v1, "ch":C
    :cond_f
    const v2, 0xdc00

    if-lt v1, v2, :cond_2c

    const v2, 0xdfff

    if-gt v1, v2, :cond_2c

    if-le p2, p1, :cond_2c

    .line 6174
    add-int/lit8 p2, p2, -0x1

    aget-char v1, p0, p2

    .line 6175
    const v2, 0xd800

    if-lt v1, v2, :cond_f

    const v2, 0xdbff

    if-gt v1, v2, :cond_f

    .line 6176
    add-int/lit8 v0, v0, -0x1

    .line 6177
    nop

    .line 6180
    .end local v1    # "ch":C
    :cond_2c
    goto :goto_9

    .line 6181
    :cond_2d
    return v0

    .line 6165
    .end local v0    # "len":I
    :cond_2e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") or limit ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") invalid or out of range 0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api digit(I)I
    .registers 2
    .param p0, "ch"    # I

    .line 3822
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UCharacterProperty;->digit(I)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api digit(II)I
    .registers 4
    .param p0, "ch"    # I
    .param p1, "radix"    # I

    .line 3796
    const/4 v0, 0x2

    const/4 v1, -0x1

    if-gt v0, p1, :cond_16

    const/16 v0, 0x24

    if-gt p1, v0, :cond_16

    .line 3797
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->digit(I)I

    move-result v0

    .line 3798
    .local v0, "value":I
    if-gez v0, :cond_12

    .line 3800
    invoke-static {p0}, Landroid/icu/impl/UCharacterProperty;->getEuropeanDigit(I)I

    move-result v0

    .line 3802
    :cond_12
    if-ge v0, p1, :cond_15

    move v1, v0

    :cond_15
    return v1

    .line 3804
    .end local v0    # "value":I
    :cond_16
    return v1
.end method

.method public static whitelist test-api foldCase(II)I
    .registers 3
    .param p0, "ch"    # I
    .param p1, "options"    # I

    .line 5262
    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/UCaseProps;->fold(II)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api foldCase(IZ)I
    .registers 3
    .param p0, "ch"    # I
    .param p1, "defaultmapping"    # Z

    .line 5197
    xor-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->foldCase(II)I

    move-result v0

    return v0
.end method

.method public static final whitelist test-api foldCase(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "options"    # I

    .line 5280
    invoke-static {p1, p0}, Landroid/icu/impl/CaseMapImpl;->fold(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api foldCase(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultmapping"    # Z

    .line 5217
    xor-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->foldCase(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api forDigit(II)C
    .registers 3
    .param p0, "digit"    # I
    .param p1, "radix"    # I

    .line 5749
    invoke-static {p0, p1}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    return v0
.end method

.method public static whitelist test-api getAge(I)Landroid/icu/util/VersionInfo;
    .registers 3
    .param p0, "ch"    # I

    .line 5494
    if-ltz p0, :cond_e

    const v0, 0x10ffff

    if-gt p0, v0, :cond_e

    .line 5497
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UCharacterProperty;->getAge(I)Landroid/icu/util/VersionInfo;

    move-result-object v0

    return-object v0

    .line 5495
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Codepoint out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api getBidiPairedBracket(I)I
    .registers 2
    .param p0, "c"    # I

    .line 4469
    sget-object v0, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UBiDiProps;->getPairedBracket(I)I

    move-result v0

    return v0
.end method

.method private static greylist-max-o getCaseLocale(Landroid/icu/util/ULocale;)I
    .registers 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 5011
    if-nez p0, :cond_6

    .line 5012
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object p0

    .line 5014
    :cond_6
    invoke-static {p0}, Landroid/icu/impl/UCaseProps;->getCaseLocale(Landroid/icu/util/ULocale;)I

    move-result v0

    return v0
.end method

.method private static greylist-max-o getCaseLocale(Ljava/util/Locale;)I
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 5004
    if-nez p0, :cond_6

    .line 5005
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 5007
    :cond_6
    invoke-static {p0}, Landroid/icu/impl/UCaseProps;->getCaseLocale(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api getCharFromExtendedName(Ljava/lang/String;)I
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 4697
    sget-object v0, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/icu/impl/UCharacterName;->getCharFromName(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api getCharFromName(Ljava/lang/String;)I
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 4658
    sget-object v0, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/icu/impl/UCharacterName;->getCharFromName(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o getCharFromName1_0(Ljava/lang/String;)I
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4675
    const/4 v0, -0x1

    return v0
.end method

.method public static whitelist test-api getCharFromNameAlias(Ljava/lang/String;)I
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 4710
    sget-object v0, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Landroid/icu/impl/UCharacterName;->getCharFromName(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api getCodePoint(C)I
    .registers 3
    .param p0, "char16"    # C

    .line 4949
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->isLegal(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4950
    return p0

    .line 4952
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal codepoint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api getCodePoint(CC)I
    .registers 3
    .param p0, "lead"    # C
    .param p1, "trail"    # C

    .line 4935
    invoke-static {p0, p1}, Landroid/icu/lang/UCharacter;->getCodePoint(II)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api getCodePoint(II)I
    .registers 4
    .param p0, "lead"    # I
    .param p1, "trail"    # I

    .line 4917
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->isHighSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p1}, Landroid/icu/lang/UCharacter;->isLowSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4918
    invoke-static {p0, p1}, Landroid/icu/lang/UCharacter;->toCodePoint(II)I

    move-result v0

    return v0

    .line 4920
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a valid surrogate pair"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api getCombiningClass(I)I
    .registers 2
    .param p0, "ch"    # I

    .line 4479
    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFDInstance()Landroid/icu/text/Normalizer2;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/icu/text/Normalizer2;->getCombiningClass(I)I

    move-result v0

    return v0
.end method

.method private static greylist-max-o getDefaultCaseLocale()I
    .registers 1

    .line 5000
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getCaseLocale(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api getDirection(I)I
    .registers 2
    .param p0, "ch"    # I

    .line 4419
    sget-object v0, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UBiDiProps;->getClass(I)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api getDirectionality(I)B
    .registers 2
    .param p0, "cp"    # I

    .line 6122
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getDirection(I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public static whitelist test-api getExtendedName(I)Ljava/lang/String;
    .registers 3
    .param p0, "ch"    # I

    .line 4613
    sget-object v0, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/icu/impl/UCharacterName;->getName(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getExtendedNameIterator()Landroid/icu/util/ValueIterator;
    .registers 3

    .line 5477
    new-instance v0, Landroid/icu/lang/UCharacterNameIterator;

    sget-object v1, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/lang/UCharacterNameIterator;-><init>(Landroid/icu/impl/UCharacterName;I)V

    return-object v0
.end method

.method public static whitelist test-api getHanNumericValue(I)I
    .registers 2
    .param p0, "ch"    # I

    .line 5304
    sparse-switch p0, :sswitch_data_2c

    .line 5350
    const/4 v0, -0x1

    return v0

    .line 5346
    :sswitch_5
    const/16 v0, 0x2710

    return v0

    .line 5320
    :sswitch_8
    const/4 v0, 0x4

    return v0

    .line 5338
    :sswitch_a
    const/16 v0, 0xa

    return v0

    .line 5326
    :sswitch_d
    const/4 v0, 0x6

    return v0

    .line 5332
    :sswitch_f
    const/16 v0, 0x8

    return v0

    .line 5348
    :sswitch_12
    const v0, 0x5f5e100

    return v0

    .line 5341
    :sswitch_16
    const/16 v0, 0x64

    return v0

    .line 5344
    :sswitch_19
    const/16 v0, 0x3e8

    return v0

    .line 5323
    :sswitch_1c
    const/4 v0, 0x5

    return v0

    .line 5314
    :sswitch_1e
    const/4 v0, 0x2

    return v0

    .line 5335
    :sswitch_20
    const/16 v0, 0x9

    return v0

    .line 5317
    :sswitch_23
    const/4 v0, 0x3

    return v0

    .line 5329
    :sswitch_25
    const/4 v0, 0x7

    return v0

    .line 5311
    :sswitch_27
    const/4 v0, 0x1

    return v0

    .line 5308
    :sswitch_29
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_2c
    .sparse-switch
        0x3007 -> :sswitch_29
        0x4e00 -> :sswitch_27
        0x4e03 -> :sswitch_25
        0x4e09 -> :sswitch_23
        0x4e5d -> :sswitch_20
        0x4e8c -> :sswitch_1e
        0x4e94 -> :sswitch_1c
        0x4edf -> :sswitch_19
        0x4f0d -> :sswitch_1c
        0x4f70 -> :sswitch_16
        0x5104 -> :sswitch_12
        0x516b -> :sswitch_f
        0x516d -> :sswitch_d
        0x5341 -> :sswitch_a
        0x5343 -> :sswitch_19
        0x53c3 -> :sswitch_23
        0x56db -> :sswitch_8
        0x58f9 -> :sswitch_27
        0x62fe -> :sswitch_a
        0x634c -> :sswitch_f
        0x67d2 -> :sswitch_25
        0x7396 -> :sswitch_20
        0x767e -> :sswitch_16
        0x8086 -> :sswitch_8
        0x824c -> :sswitch_5
        0x8cb3 -> :sswitch_1e
        0x9678 -> :sswitch_d
        0x96f6 -> :sswitch_29
    .end sparse-switch
.end method

.method public static greylist-max-o getISOComment(I)Ljava/lang/String;
    .registers 2
    .param p0, "ch"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4645
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final blacklist getIdentifierTypes(ILjava/util/EnumSet;)I
    .registers 3
    .param p0, "c"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/EnumSet<",
            "Landroid/icu/lang/UCharacter$IdentifierType;",
            ">;)I"
        }
    .end annotation

    .line 4197
    .local p1, "types":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/lang/UCharacter$IdentifierType;>;"
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/UCharacterProperty;->getIDTypes(ILjava/util/EnumSet;)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api getIntPropertyMaxValue(I)I
    .registers 2
    .param p0, "type"    # I

    .line 5742
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UCharacterProperty;->getIntPropertyMaxValue(I)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api getIntPropertyMinValue(I)I
    .registers 2
    .param p0, "type"    # I

    .line 5712
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist test-api getIntPropertyValue(II)I
    .registers 3
    .param p0, "ch"    # I
    .param p1, "type"    # I

    .line 5650
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/UCharacterProperty;->getIntPropertyValue(II)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api getMirror(I)I
    .registers 2
    .param p0, "ch"    # I

    .line 4450
    sget-object v0, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UBiDiProps;->getMirror(I)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api getName(I)Ljava/lang/String;
    .registers 3
    .param p0, "ch"    # I

    .line 4558
    sget-object v0, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/icu/impl/UCharacterName;->getName(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 4568
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 4569
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->getName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4572
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4573
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 4574
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 4575
    .local v2, "cp":I
    if-eqz v1, :cond_26

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4576
    :cond_26
    invoke-static {v2}, Landroid/icu/lang/UCharacter;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4573
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_17

    .line 4578
    .end local v1    # "i":I
    .end local v2    # "cp":I
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o getName1_0(I)Ljava/lang/String;
    .registers 2
    .param p0, "ch"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4592
    const/4 v0, 0x0

    return-object v0
.end method

.method public static greylist-max-o getName1_0Iterator()Landroid/icu/util/ValueIterator;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5446
    new-instance v0, Landroid/icu/lang/UCharacter$DummyValueIterator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/lang/UCharacter$DummyValueIterator;-><init>(Landroid/icu/lang/UCharacter-IA;)V

    return-object v0
.end method

.method public static whitelist test-api getNameAlias(I)Ljava/lang/String;
    .registers 3
    .param p0, "ch"    # I

    .line 4628
    sget-object v0, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Landroid/icu/impl/UCharacterName;->getName(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getNameIterator()Landroid/icu/util/ValueIterator;
    .registers 3

    .line 5432
    new-instance v0, Landroid/icu/lang/UCharacterNameIterator;

    sget-object v1, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/lang/UCharacterNameIterator;-><init>(Landroid/icu/impl/UCharacterName;I)V

    return-object v0
.end method

.method public static whitelist test-api getNumericValue(I)I
    .registers 2
    .param p0, "ch"    # I

    .line 3840
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UCharacterProperty;->getNumericValue(I)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api getPropertyEnum(Ljava/lang/CharSequence;)I
    .registers 5
    .param p0, "propertyAlias"    # Ljava/lang/CharSequence;

    .line 4772
    sget-object v0, Landroid/icu/impl/UPropertyAliases;->INSTANCE:Landroid/icu/impl/UPropertyAliases;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UPropertyAliases;->getPropertyEnum(Ljava/lang/CharSequence;)I

    move-result v0

    .line 4773
    .local v0, "propEnum":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 4776
    return v0

    .line 4774
    :cond_a
    new-instance v1, Landroid/icu/impl/IllegalIcuArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist test-api getPropertyName(II)Ljava/lang/String;
    .registers 3
    .param p0, "property"    # I
    .param p1, "nameChoice"    # I

    .line 4747
    sget-object v0, Landroid/icu/impl/UPropertyAliases;->INSTANCE:Landroid/icu/impl/UPropertyAliases;

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/UPropertyAliases;->getPropertyName(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getPropertyValueEnum(ILjava/lang/CharSequence;)I
    .registers 6
    .param p0, "property"    # I
    .param p1, "valueAlias"    # Ljava/lang/CharSequence;

    .line 4882
    sget-object v0, Landroid/icu/impl/UPropertyAliases;->INSTANCE:Landroid/icu/impl/UPropertyAliases;

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/UPropertyAliases;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    move-result v0

    .line 4883
    .local v0, "propEnum":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 4886
    return v0

    .line 4884
    :cond_a
    new-instance v1, Landroid/icu/impl/IllegalIcuArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static greylist-max-o getPropertyValueEnumNoThrow(ILjava/lang/CharSequence;)I
    .registers 3
    .param p0, "property"    # I
    .param p1, "valueAlias"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4900
    sget-object v0, Landroid/icu/impl/UPropertyAliases;->INSTANCE:Landroid/icu/impl/UPropertyAliases;

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/UPropertyAliases;->getPropertyValueEnumNoThrow(ILjava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api getPropertyValueName(III)Ljava/lang/String;
    .registers 5
    .param p0, "property"    # I
    .param p1, "value"    # I
    .param p2, "nameChoice"    # I

    .line 4830
    const/16 v0, 0x1002

    if-eq p0, v0, :cond_c

    const/16 v1, 0x1010

    if-eq p0, v1, :cond_c

    const/16 v1, 0x1011

    if-ne p0, v1, :cond_27

    .line 4833
    :cond_c
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->getIntPropertyMinValue(I)I

    move-result v1

    if-lt p1, v1, :cond_27

    .line 4835
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->getIntPropertyMaxValue(I)I

    move-result v0

    if-gt p1, v0, :cond_27

    if-ltz p2, :cond_27

    const/4 v0, 0x2

    if-ge p2, v0, :cond_27

    .line 4841
    :try_start_1d
    sget-object v0, Landroid/icu/impl/UPropertyAliases;->INSTANCE:Landroid/icu/impl/UPropertyAliases;

    invoke-virtual {v0, p0, p1, p2}, Landroid/icu/impl/UPropertyAliases;->getPropertyValueName(III)Ljava/lang/String;

    move-result-object v0
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_23} :catch_24

    return-object v0

    .line 4844
    :catch_24
    move-exception v0

    .line 4845
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return-object v1

    .line 4848
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_27
    sget-object v0, Landroid/icu/impl/UPropertyAliases;->INSTANCE:Landroid/icu/impl/UPropertyAliases;

    invoke-virtual {v0, p0, p1, p2}, Landroid/icu/impl/UPropertyAliases;->getPropertyValueName(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getStringPropertyValue(III)Ljava/lang/String;
    .registers 5
    .param p0, "propertyEnum"    # I
    .param p1, "codepoint"    # I
    .param p2, "nameChoice"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5665
    if-ltz p0, :cond_6

    const/16 v0, 0x4c

    if-lt p0, v0, :cond_e

    :cond_6
    const/16 v0, 0x1000

    if-lt p0, v0, :cond_17

    const/16 v0, 0x101b

    if-ge p0, v0, :cond_17

    .line 5667
    :cond_e
    invoke-static {p1, p0}, Landroid/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result v0

    invoke-static {p0, v0, p2}, Landroid/icu/lang/UCharacter;->getPropertyValueName(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5670
    :cond_17
    const/16 v0, 0x3000

    if-ne p0, v0, :cond_24

    .line 5671
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getUnicodeNumericValue(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5674
    :cond_24
    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_9a

    .line 5689
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal Property Enum"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5687
    :pswitch_30
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->toUpperCase(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5686
    :pswitch_39
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getName1_0(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5685
    :pswitch_3e
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->toTitleCase(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5684
    :pswitch_47
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->toUpperCase(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5683
    :pswitch_50
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->toTitleCase(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5682
    :pswitch_59
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->toLowerCase(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5681
    :pswitch_62
    invoke-static {p1, v0}, Landroid/icu/lang/UCharacter;->foldCase(IZ)I

    move-result v0

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5680
    :pswitch_6b
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5679
    :pswitch_70
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->toLowerCase(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5676
    :pswitch_79
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getISOComment(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5678
    :pswitch_7e
    invoke-static {p1, v0}, Landroid/icu/lang/UCharacter;->foldCase(IZ)I

    move-result v0

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5677
    :pswitch_87
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getMirror(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5675
    :pswitch_90
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getAge(I)Landroid/icu/util/VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/VersionInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_9a
    .packed-switch 0x4000
        :pswitch_90
        :pswitch_87
        :pswitch_7e
        :pswitch_79
        :pswitch_70
        :pswitch_6b
        :pswitch_62
        :pswitch_59
        :pswitch_50
        :pswitch_47
        :pswitch_3e
        :pswitch_39
        :pswitch_30
    .end packed-switch
.end method

.method public static whitelist test-api getType(I)I
    .registers 2
    .param p0, "ch"    # I

    .line 3896
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UCharacterProperty;->getType(I)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api getTypeIterator()Landroid/icu/util/RangeValueIterator;
    .registers 1

    .line 5372
    new-instance v0, Landroid/icu/lang/UCharacter$UCharacterTypeIterator;

    invoke-direct {v0}, Landroid/icu/lang/UCharacter$UCharacterTypeIterator;-><init>()V

    return-object v0
.end method

.method public static whitelist test-api getUnicodeNumericValue(I)D
    .registers 3
    .param p0, "ch"    # I

    .line 3861
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UCharacterProperty;->getUnicodeNumericValue(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api getUnicodeVersion()Landroid/icu/util/VersionInfo;
    .registers 1

    .line 4542
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    iget-object v0, v0, Landroid/icu/impl/UCharacterProperty;->m_unicodeVersion_:Landroid/icu/util/VersionInfo;

    return-object v0
.end method

.method public static whitelist test-api hasBinaryProperty(II)Z
    .registers 3
    .param p0, "ch"    # I
    .param p1, "property"    # I

    .line 5526
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/UCharacterProperty;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api hasBinaryProperty(Ljava/lang/CharSequence;I)Z
    .registers 7
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "property"    # I

    .line 5548
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 5549
    .local v0, "length":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    .line 5550
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1, p1}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v1

    return v1

    .line 5551
    :cond_11
    const/4 v3, 0x2

    if-ne v0, v3, :cond_23

    .line 5553
    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 5554
    .local v3, "c":I
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    if-ne v4, v0, :cond_23

    .line 5555
    invoke-static {v3, p1}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v1

    return v1

    .line 5560
    .end local v3    # "c":I
    :cond_23
    const/16 v3, 0x41

    if-gt v3, p1, :cond_35

    const/16 v3, 0x47

    if-gt p1, v3, :cond_35

    sget-object v3, Landroid/icu/impl/EmojiProps;->INSTANCE:Landroid/icu/impl/EmojiProps;

    .line 5561
    invoke-virtual {v3, p0, p1}, Landroid/icu/impl/EmojiProps;->hasBinaryProperty(Ljava/lang/CharSequence;I)Z

    move-result v3

    if-eqz v3, :cond_35

    move v1, v2

    goto :goto_36

    :cond_35
    nop

    .line 5560
    :goto_36
    return v1
.end method

.method public static final blacklist hasIdentifierType(ILandroid/icu/lang/UCharacter$IdentifierType;)Z
    .registers 3
    .param p0, "c"    # I
    .param p1, "type"    # Landroid/icu/lang/UCharacter$IdentifierType;

    .line 4173
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/UCharacterProperty;->hasIDType(ILandroid/icu/lang/UCharacter$IdentifierType;)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api isBMP(I)Z
    .registers 2
    .param p0, "ch"    # I

    .line 4363
    if-ltz p0, :cond_9

    const v0, 0xffff

    if-gt p0, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static whitelist test-api isBaseForm(I)Z
    .registers 4
    .param p0, "ch"    # I

    .line 4393
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v0

    .line 4395
    .local v0, "cat":I
    const/16 v1, 0x9

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2b

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2b

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2b

    if-eq v0, v2, :cond_2b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2b

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x0

    :cond_2b
    :goto_2b
    return v2
.end method

.method public static whitelist test-api isDefined(I)Z
    .registers 2
    .param p0, "ch"    # I

    .line 3911
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static whitelist test-api isDigit(I)Z
    .registers 3
    .param p0, "ch"    # I

    .line 3927
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static whitelist test-api isHighSurrogate(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 5839
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->isHighSurrogate(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api isHighSurrogate(I)Z
    .registers 3
    .param p0, "codePoint"    # I

    .line 5828
    and-int/lit16 v0, p0, -0x400

    const v1, 0xd800

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static whitelist test-api isISOControl(I)Z
    .registers 2
    .param p0, "ch"    # I

    .line 3941
    if-ltz p0, :cond_10

    const/16 v0, 0x9f

    if-gt p0, v0, :cond_10

    const/16 v0, 0x1f

    if-le p0, v0, :cond_e

    const/16 v0, 0x7f

    if-lt p0, v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static whitelist test-api isIdentifierIgnorable(I)Z
    .registers 5
    .param p0, "ch"    # I

    .line 4218
    const/16 v0, 0x9f

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt p0, v0, :cond_1f

    .line 4219
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->isISOControl(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/16 v0, 0x9

    if-lt p0, v0, :cond_14

    const/16 v0, 0xd

    if-le p0, v0, :cond_1d

    :cond_14
    const/16 v0, 0x1c

    if-lt p0, v0, :cond_1c

    const/16 v0, 0x1f

    if-le p0, v0, :cond_1d

    :cond_1c
    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    return v1

    .line 4223
    :cond_1f
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v0

    const/16 v3, 0x10

    if-ne v0, v3, :cond_28

    goto :goto_29

    :cond_28
    move v1, v2

    :goto_29
    return v1
.end method

.method public static whitelist test-api isJavaIdentifierPart(I)Z
    .registers 2
    .param p0, "cp"    # I

    .line 4027
    int-to-char v0, p0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api isJavaIdentifierStart(I)Z
    .registers 2
    .param p0, "cp"    # I

    .line 4016
    int-to-char v0, p0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isJavaLetter(I)Z
    .registers 2
    .param p0, "cp"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3991
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->isJavaIdentifierStart(I)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isJavaLetterOrDigit(I)Z
    .registers 2
    .param p0, "cp"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4005
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->isJavaIdentifierPart(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api isLegal(I)Z
    .registers 4
    .param p0, "ch"    # I

    .line 4495
    const/4 v0, 0x0

    if-gez p0, :cond_4

    .line 4496
    return v0

    .line 4498
    :cond_4
    const v1, 0xd800

    const/4 v2, 0x1

    if-ge p0, v1, :cond_b

    .line 4499
    return v2

    .line 4501
    :cond_b
    const v1, 0xdfff

    if-gt p0, v1, :cond_11

    .line 4502
    return v0

    .line 4504
    :cond_11
    invoke-static {p0}, Landroid/icu/impl/UCharacterUtility;->isNonCharacter(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 4505
    return v0

    .line 4507
    :cond_18
    const v1, 0x10ffff

    if-gt p0, v1, :cond_1e

    move v0, v2

    :cond_1e
    return v0
.end method

.method public static whitelist test-api isLegal(Ljava/lang/String;)Z
    .registers 5
    .param p0, "str"    # Ljava/lang/String;

    .line 4524
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4526
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_19

    .line 4528
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 4529
    .local v2, "codepoint":I
    invoke-static {v2}, Landroid/icu/lang/UCharacter;->isLegal(I)Z

    move-result v3

    if-nez v3, :cond_13

    .line 4530
    const/4 v3, 0x0

    return v3

    .line 4526
    :cond_13
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_5

    .line 4533
    .end local v1    # "i":I
    .end local v2    # "codepoint":I
    :cond_19
    const/4 v1, 0x1

    return v1
.end method

.method public static whitelist test-api isLetter(I)Z
    .registers 3
    .param p0, "ch"    # I

    .line 3954
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    and-int/lit8 v0, v0, 0x3e

    if-eqz v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public static whitelist test-api isLetterOrDigit(I)Z
    .registers 3
    .param p0, "ch"    # I

    .line 3971
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    and-int/lit16 v0, v0, 0x23e

    if-eqz v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public static whitelist test-api isLowSurrogate(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 5863
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->isLowSurrogate(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api isLowSurrogate(I)Z
    .registers 3
    .param p0, "codePoint"    # I

    .line 5852
    and-int/lit16 v0, p0, -0x400

    const v1, 0xdc00

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static whitelist test-api isLowerCase(I)Z
    .registers 3
    .param p0, "ch"    # I

    .line 4045
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static whitelist test-api isMirrored(I)Z
    .registers 2
    .param p0, "ch"    # I

    .line 4432
    sget-object v0, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UBiDiProps;->isMirrored(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api isPrintable(I)Z
    .registers 3
    .param p0, "ch"    # I

    .line 4374
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v0

    .line 4376
    .local v0, "cat":I
    if-eqz v0, :cond_1a

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1a

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1a

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1a

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1a

    if-eqz v0, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method public static greylist-max-o isSpace(I)Z
    .registers 2
    .param p0, "ch"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3876
    const/16 v0, 0x20

    if-gt p0, v0, :cond_18

    if-eq p0, v0, :cond_16

    const/16 v0, 0x9

    if-eq p0, v0, :cond_16

    const/16 v0, 0xa

    if-eq p0, v0, :cond_16

    const/16 v0, 0xc

    if-eq p0, v0, :cond_16

    const/16 v0, 0xd

    if-ne p0, v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public static whitelist test-api isSpaceChar(I)Z
    .registers 3
    .param p0, "ch"    # I

    .line 4100
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    and-int/lit16 v0, v0, 0x7000

    if-eqz v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public static whitelist test-api isSupplementary(I)Z
    .registers 2
    .param p0, "ch"    # I

    .line 4351
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_b

    const v0, 0x10ffff

    if-gt p0, v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public static final whitelist test-api isSupplementaryCodePoint(I)Z
    .registers 2
    .param p0, "cp"    # I

    .line 5816
    invoke-static {p0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v0

    return v0
.end method

.method public static final whitelist test-api isSurrogatePair(CC)Z
    .registers 3
    .param p0, "high"    # C
    .param p1, "low"    # C

    .line 5889
    invoke-static {p0, p1}, Landroid/icu/lang/UCharacter;->isSurrogatePair(II)Z

    move-result v0

    return v0
.end method

.method public static final whitelist test-api isSurrogatePair(II)Z
    .registers 3
    .param p0, "high"    # I
    .param p1, "low"    # I

    .line 5877
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->isHighSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Landroid/icu/lang/UCharacter;->isLowSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static whitelist test-api isTitleCase(I)Z
    .registers 3
    .param p0, "ch"    # I

    .line 4121
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static whitelist test-api isUAlphabetic(I)Z
    .registers 2
    .param p0, "ch"    # I

    .line 5572
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api isULowercase(I)Z
    .registers 2
    .param p0, "ch"    # I

    .line 5583
    const/16 v0, 0x16

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api isUUppercase(I)Z
    .registers 2
    .param p0, "ch"    # I

    .line 5594
    const/16 v0, 0x1e

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api isUWhiteSpace(I)Z
    .registers 2
    .param p0, "ch"    # I

    .line 5606
    const/16 v0, 0x1f

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api isUnicodeIdentifierPart(I)Z
    .registers 2
    .param p0, "ch"    # I

    .line 4139
    const/16 v0, 0xf

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api isUnicodeIdentifierStart(I)Z
    .registers 2
    .param p0, "ch"    # I

    .line 4156
    const/16 v0, 0x10

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api isUpperCase(I)Z
    .registers 3
    .param p0, "ch"    # I

    .line 4245
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public static final whitelist test-api isValidCodePoint(I)Z
    .registers 2
    .param p0, "cp"    # I

    .line 5806
    if-ltz p0, :cond_9

    const v0, 0x10ffff

    if-gt p0, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static whitelist test-api isWhitespace(I)Z
    .registers 3
    .param p0, "ch"    # I

    .line 4080
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    and-int/lit16 v0, v0, 0x7000

    if-eqz v0, :cond_17

    const/16 v0, 0xa0

    if-eq p0, v0, :cond_17

    const/16 v0, 0x2007

    if-eq p0, v0, :cond_17

    const/16 v0, 0x202f

    if-ne p0, v0, :cond_29

    :cond_17
    const/16 v0, 0x9

    if-lt p0, v0, :cond_1f

    const/16 v0, 0xd

    if-le p0, v0, :cond_29

    :cond_1f
    const/16 v0, 0x1c

    if-lt p0, v0, :cond_28

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_28

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :cond_29
    :goto_29
    return v1
.end method

.method public static whitelist test-api offsetByCodePoints(Ljava/lang/CharSequence;II)I
    .registers 10
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I
    .param p2, "codePointOffset"    # I

    .line 6193
    if-ltz p1, :cond_65

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p1, v0, :cond_65

    .line 6198
    const v0, 0xdbff

    const v1, 0xd800

    const v2, 0xdfff

    const v3, 0xdc00

    if-gez p2, :cond_38

    .line 6199
    :goto_16
    add-int/lit8 p2, p2, 0x1

    if-gtz p2, :cond_64

    .line 6200
    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 6201
    .local v4, "ch":C
    :cond_20
    if-lt v4, v3, :cond_37

    if-gt v4, v2, :cond_37

    if-lez p1, :cond_37

    .line 6202
    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 6203
    if-lt v4, v1, :cond_30

    if-le v4, v0, :cond_20

    .line 6204
    :cond_30
    add-int/lit8 p2, p2, 0x1

    if-lez p2, :cond_20

    .line 6205
    add-int/lit8 v0, p1, 0x1

    return v0

    .line 6209
    .end local v4    # "ch":C
    :cond_37
    goto :goto_16

    .line 6211
    :cond_38
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 6212
    .local v4, "limit":I
    :goto_3c
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_64

    .line 6213
    add-int/lit8 v5, p1, 0x1

    .end local p1    # "index":I
    .local v5, "index":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 6214
    .local p1, "ch":C
    :goto_46
    if-lt p1, v1, :cond_62

    if-gt p1, v0, :cond_62

    if-ge v5, v4, :cond_62

    .line 6215
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .local v6, "index":I
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 6216
    if-lt p1, v3, :cond_59

    if-le p1, v2, :cond_57

    goto :goto_59

    :cond_57
    move v5, v6

    goto :goto_46

    .line 6217
    :cond_59
    :goto_59
    add-int/lit8 p2, p2, -0x1

    if-gez p2, :cond_60

    .line 6218
    add-int/lit8 v0, v6, -0x1

    return v0

    .line 6217
    :cond_60
    move v5, v6

    goto :goto_46

    .line 6222
    .end local v6    # "index":I
    .end local p1    # "ch":C
    .restart local v5    # "index":I
    :cond_62
    move p1, v5

    goto :goto_3c

    .line 6225
    .end local v4    # "limit":I
    .end local v5    # "index":I
    .local p1, "index":I
    :cond_64
    return p1

    .line 6194
    :cond_65
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") out of range 0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6195
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api offsetByCodePoints([CIIII)I
    .registers 14
    .param p0, "text"    # [C
    .param p1, "start"    # I
    .param p2, "count"    # I
    .param p3, "index"    # I
    .param p4, "codePointOffset"    # I

    .line 6241
    add-int v0, p1, p2

    .line 6242
    .local v0, "limit":I
    const-string v1, "index ( "

    if-ltz p1, :cond_b0

    if-lt v0, p1, :cond_b0

    array-length v2, p0

    if-gt v0, v2, :cond_b0

    if-lt p3, p1, :cond_b0

    if-gt p3, v0, :cond_b0

    .line 6249
    const v2, 0xdbff

    const v3, 0xdfff

    const v4, 0xd800

    const-string v5, ")"

    const v6, 0xdc00

    if-gez p4, :cond_64

    .line 6250
    :goto_1f
    add-int/lit8 p4, p4, 0x1

    if-gtz p4, :cond_af

    .line 6251
    add-int/lit8 p3, p3, -0x1

    aget-char v7, p0, p3

    .line 6252
    .local v7, "ch":C
    if-lt p3, p1, :cond_3f

    .line 6257
    :cond_29
    if-lt v7, v6, :cond_3e

    if-gt v7, v3, :cond_3e

    if-le p3, p1, :cond_3e

    .line 6258
    add-int/lit8 p3, p3, -0x1

    aget-char v7, p0, p3

    .line 6259
    if-lt v7, v4, :cond_37

    if-le v7, v2, :cond_29

    .line 6260
    :cond_37
    add-int/lit8 p4, p4, 0x1

    if-lez p4, :cond_29

    .line 6261
    add-int/lit8 v1, p3, 0x1

    return v1

    .line 6265
    .end local v7    # "ch":C
    :cond_3e
    goto :goto_1f

    .line 6253
    .restart local v7    # "ch":C
    :cond_3f
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") < start ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6267
    .end local v7    # "ch":C
    :cond_64
    :goto_64
    add-int/lit8 p4, p4, -0x1

    if-ltz p4, :cond_af

    .line 6268
    add-int/lit8 v7, p3, 0x1

    .end local p3    # "index":I
    .local v7, "index":I
    aget-char p3, p0, p3

    .line 6269
    .local p3, "ch":C
    if-gt v7, v0, :cond_8a

    .line 6274
    :goto_6e
    if-lt p3, v4, :cond_88

    if-gt p3, v2, :cond_88

    if-ge v7, v0, :cond_88

    .line 6275
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "index":I
    .local v8, "index":I
    aget-char p3, p0, v7

    .line 6276
    if-lt p3, v6, :cond_7f

    if-le p3, v3, :cond_7d

    goto :goto_7f

    :cond_7d
    move v7, v8

    goto :goto_6e

    .line 6277
    :cond_7f
    :goto_7f
    add-int/lit8 p4, p4, -0x1

    if-gez p4, :cond_86

    .line 6278
    add-int/lit8 v1, v8, -0x1

    return v1

    .line 6277
    :cond_86
    move v7, v8

    goto :goto_6e

    .line 6282
    .end local v8    # "index":I
    .end local p3    # "ch":C
    .restart local v7    # "index":I
    :cond_88
    move p3, v7

    goto :goto_64

    .line 6270
    .restart local p3    # "ch":C
    :cond_8a
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") > limit ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6285
    .end local v7    # "index":I
    .local p3, "index":I
    :cond_af
    return p3

    .line 6243
    :cond_b0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") out of range "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " in array 0, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, p0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final whitelist test-api toChars(I[CI)I
    .registers 4
    .param p0, "cp"    # I
    .param p1, "dst"    # [C
    .param p2, "dstIndex"    # I

    .line 6089
    invoke-static {p0, p1, p2}, Ljava/lang/Character;->toChars(I[CI)I

    move-result v0

    return v0
.end method

.method public static final whitelist test-api toChars(I)[C
    .registers 2
    .param p0, "cp"    # I

    .line 6101
    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api toCodePoint(CC)I
    .registers 3
    .param p0, "high"    # C
    .param p1, "low"    # C

    .line 5933
    invoke-static {p0, p1}, Landroid/icu/lang/UCharacter;->toCodePoint(II)I

    move-result v0

    return v0
.end method

.method public static final whitelist test-api toCodePoint(II)I
    .registers 4
    .param p0, "high"    # I
    .param p1, "low"    # I

    .line 5919
    shl-int/lit8 v0, p0, 0xa

    add-int/2addr v0, p1

    const v1, 0x35fdc00

    sub-int/2addr v0, v1

    return v0
.end method

.method public static whitelist test-api toLowerCase(I)I
    .registers 2
    .param p0, "ch"    # I

    .line 4267
    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UCaseProps;->tolower(I)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api toLowerCase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "str"    # Ljava/lang/String;

    .line 5060
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getCaseLocale(Landroid/icu/util/ULocale;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/icu/impl/CaseMapImpl;->toLower(IILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 4974
    invoke-static {}, Landroid/icu/lang/UCharacter;->getDefaultCaseLocale()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Landroid/icu/impl/CaseMapImpl;->toLower(IILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toLowerCase(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "str"    # Ljava/lang/String;

    .line 5049
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getCaseLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/icu/impl/CaseMapImpl;->toLower(IILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "ch"    # I

    .line 4283
    if-ltz p0, :cond_1c

    const v0, 0x10ffff

    if-le p0, v0, :cond_8

    goto :goto_1c

    .line 4287
    :cond_8
    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_12

    .line 4288
    int-to-char v0, p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4291
    :cond_12
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 4284
    :cond_1c
    :goto_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist test-api toTitleCase(I)I
    .registers 2
    .param p0, "ch"    # I

    .line 4314
    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UCaseProps;->totitle(I)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;)Ljava/lang/String;
    .registers 4
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "titleIter"    # Landroid/icu/text/BreakIterator;

    .line 5107
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/icu/lang/UCharacter;->toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;
    .registers 5
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "titleIter"    # Landroid/icu/text/BreakIterator;
    .param p3, "options"    # I

    .line 5133
    if-nez p2, :cond_8

    if-nez p0, :cond_8

    .line 5134
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object p0

    .line 5136
    :cond_8
    invoke-static {p0, p3, p2}, Landroid/icu/impl/CaseMapImpl;->getTitleBreakIterator(Landroid/icu/util/ULocale;ILandroid/icu/text/BreakIterator;)Landroid/icu/text/BreakIterator;

    move-result-object p2

    .line 5137
    invoke-virtual {p2, p1}, Landroid/icu/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 5138
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getCaseLocale(Landroid/icu/util/ULocale;)I

    move-result v0

    invoke-static {v0, p3, p2, p1}, Landroid/icu/impl/CaseMapImpl;->toTitle(IILandroid/icu/text/BreakIterator;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toTitleCase(Ljava/lang/String;Landroid/icu/text/BreakIterator;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "breakiter"    # Landroid/icu/text/BreakIterator;

    .line 4996
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Landroid/icu/lang/UCharacter;->toTitleCase(Ljava/util/Locale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toTitleCase(Ljava/util/Locale;Ljava/lang/String;Landroid/icu/text/BreakIterator;)Ljava/lang/String;
    .registers 4
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "breakiter"    # Landroid/icu/text/BreakIterator;

    .line 5084
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/icu/lang/UCharacter;->toTitleCase(Ljava/util/Locale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toTitleCase(Ljava/util/Locale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;
    .registers 5
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "titleIter"    # Landroid/icu/text/BreakIterator;
    .param p3, "options"    # I

    .line 5165
    if-nez p2, :cond_8

    if-nez p0, :cond_8

    .line 5166
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 5168
    :cond_8
    invoke-static {p0, p3, p2}, Landroid/icu/impl/CaseMapImpl;->getTitleBreakIterator(Ljava/util/Locale;ILandroid/icu/text/BreakIterator;)Landroid/icu/text/BreakIterator;

    move-result-object p2

    .line 5169
    invoke-virtual {p2, p1}, Landroid/icu/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 5170
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getCaseLocale(Ljava/util/Locale;)I

    move-result v0

    invoke-static {v0, p3, p2, p1}, Landroid/icu/impl/CaseMapImpl;->toTitle(IILandroid/icu/text/BreakIterator;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toUpperCase(I)I
    .registers 2
    .param p0, "ch"    # I

    .line 4336
    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UCaseProps;->toupper(I)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api toUpperCase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "str"    # Ljava/lang/String;

    .line 5037
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getCaseLocale(Landroid/icu/util/ULocale;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/icu/impl/CaseMapImpl;->toUpper(IILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 4963
    invoke-static {}, Landroid/icu/lang/UCharacter;->getDefaultCaseLocale()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Landroid/icu/impl/CaseMapImpl;->toUpper(IILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toUpperCase(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "str"    # Ljava/lang/String;

    .line 5026
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getCaseLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/icu/impl/CaseMapImpl;->toUpper(IILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
