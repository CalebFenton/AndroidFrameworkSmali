.class public final Landroid/icu/impl/DateNumberFormat;
.super Landroid/icu/text/NumberFormat;
.source "DateNumberFormat.java"


# static fields
.field private static blacklist CACHE:Landroid/icu/impl/SimpleCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/SimpleCache<",
            "Landroid/icu/util/ULocale;",
            "[C>;"
        }
    .end annotation
.end field

.field private static final blacklist DECIMAL_BUF_SIZE:I = 0x14

.field private static final blacklist PARSE_THRESHOLD:J = 0xccccccccccccccbL

.field private static final whitelist serialVersionUID:J = -0x57a5d92a02d4dc49L


# instance fields
.field private transient blacklist decimalBuf:[C

.field private blacklist digits:[C

.field private blacklist maxIntDigits:I

.field private blacklist minIntDigits:I

.field private blacklist minusSign:C

.field private blacklist positiveOnly:Z

.field private blacklist zeroDigit:C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Landroid/icu/impl/DateNumberFormat;->CACHE:Landroid/icu/impl/SimpleCache;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/util/ULocale;CLjava/lang/String;)V
    .registers 7
    .param p1, "loc"    # Landroid/icu/util/ULocale;
    .param p2, "zeroDigit"    # C
    .param p3, "nsName"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/DateNumberFormat;->positiveOnly:Z

    .line 44
    const/16 v0, 0x14

    new-array v0, v0, [C

    iput-object v0, p0, Landroid/icu/impl/DateNumberFormat;->decimalBuf:[C

    .line 59
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 60
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1f

    .line 61
    add-int v2, p2, v1

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 63
    .end local v1    # "i":I
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, p3}, Landroid/icu/impl/DateNumberFormat;->initialize(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "loc"    # Landroid/icu/util/ULocale;
    .param p2, "digitString"    # Ljava/lang/String;
    .param p3, "nsName"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/DateNumberFormat;->positiveOnly:Z

    .line 44
    const/16 v0, 0x14

    new-array v0, v0, [C

    iput-object v0, p0, Landroid/icu/impl/DateNumberFormat;->decimalBuf:[C

    .line 52
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_18

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/DateNumberFormat;->initialize(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void

    .line 53
    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DateNumberFormat does not support digits out of BMP."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist initialize(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "loc"    # Landroid/icu/util/ULocale;
    .param p2, "digitString"    # Ljava/lang/String;
    .param p3, "nsName"    # Ljava/lang/String;

    .line 67
    sget-object v0, Landroid/icu/impl/DateNumberFormat;->CACHE:Landroid/icu/impl/SimpleCache;

    invoke-virtual {v0, p1}, Landroid/icu/impl/SimpleCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 68
    .local v0, "elems":[C
    const/4 v1, 0x0

    const/16 v2, 0xa

    if-nez v0, :cond_66

    .line 71
    const-string v3, "android/icu/impl/data/icudata"

    invoke-static {v3, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/ICUResourceBundle;

    .line 73
    .local v3, "rb":Landroid/icu/impl/ICUResourceBundle;
    :try_start_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NumberElements/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/symbols/minusSign"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_32
    .catch Ljava/util/MissingResourceException; {:try_start_15 .. :try_end_32} :catch_33

    .line 84
    .local v4, "minusString":Ljava/lang/String;
    goto :goto_4b

    .line 74
    .end local v4    # "minusString":Ljava/lang/String;
    :catch_33
    move-exception v4

    .line 75
    .local v4, "ex":Ljava/util/MissingResourceException;
    const-string v5, "latn"

    invoke-virtual {p3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_48

    .line 77
    :try_start_3c
    const-string v5, "NumberElements/latn/symbols/minusSign"

    invoke-virtual {v3, v5}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_42
    .catch Ljava/util/MissingResourceException; {:try_start_3c .. :try_end_42} :catch_43

    .local v5, "minusString":Ljava/lang/String;
    goto :goto_46

    .line 78
    .end local v5    # "minusString":Ljava/lang/String;
    :catch_43
    move-exception v5

    .line 79
    .local v5, "ex1":Ljava/util/MissingResourceException;
    const-string v5, "-"

    .line 80
    .local v5, "minusString":Ljava/lang/String;
    :goto_46
    move-object v4, v5

    goto :goto_4b

    .line 82
    .end local v5    # "minusString":Ljava/lang/String;
    :cond_48
    const-string v5, "-"

    move-object v4, v5

    .line 85
    .local v4, "minusString":Ljava/lang/String;
    :goto_4b
    const/16 v5, 0xb

    new-array v0, v5, [C

    .line 86
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_50
    if-ge v5, v2, :cond_5b

    .line 87
    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v0, v5

    .line 86
    add-int/lit8 v5, v5, 0x1

    goto :goto_50

    .line 89
    .end local v5    # "i":I
    :cond_5b
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v0, v2

    .line 90
    sget-object v5, Landroid/icu/impl/DateNumberFormat;->CACHE:Landroid/icu/impl/SimpleCache;

    invoke-virtual {v5, p1, v0}, Landroid/icu/impl/SimpleCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .end local v3    # "rb":Landroid/icu/impl/ICUResourceBundle;
    .end local v4    # "minusString":Ljava/lang/String;
    :cond_66
    new-array v3, v2, [C

    iput-object v3, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    .line 94
    iget-object v3, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iget-object v3, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    aget-char v1, v3, v1

    iput-char v1, p0, Landroid/icu/impl/DateNumberFormat;->zeroDigit:C

    .line 97
    aget-char v1, v0, v2

    iput-char v1, p0, Landroid/icu/impl/DateNumberFormat;->minusSign:C

    .line 98
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 275
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 276
    iget-object v0, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    if-nez v0, :cond_c

    .line 277
    iget-char v0, p0, Landroid/icu/impl/DateNumberFormat;->zeroDigit:C

    invoke-virtual {p0, v0}, Landroid/icu/impl/DateNumberFormat;->setZeroDigit(C)V

    .line 280
    :cond_c
    const/16 v0, 0x14

    new-array v0, v0, [C

    iput-object v0, p0, Landroid/icu/impl/DateNumberFormat;->decimalBuf:[C

    .line 281
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 285
    invoke-super {p0}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/DateNumberFormat;

    .line 286
    .local v0, "dnfmt":Landroid/icu/impl/DateNumberFormat;
    iget-object v1, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, v0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    .line 287
    const/16 v1, 0x14

    new-array v1, v1, [C

    iput-object v1, v0, Landroid/icu/impl/DateNumberFormat;->decimalBuf:[C

    .line 288
    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 258
    const/4 v0, 0x0

    if-eqz p1, :cond_37

    invoke-super {p0, p1}, Landroid/icu/text/NumberFormat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    instance-of v1, p1, Landroid/icu/impl/DateNumberFormat;

    if-nez v1, :cond_e

    goto :goto_37

    .line 261
    :cond_e
    move-object v1, p1

    check-cast v1, Landroid/icu/impl/DateNumberFormat;

    .line 262
    .local v1, "other":Landroid/icu/impl/DateNumberFormat;
    iget v2, p0, Landroid/icu/impl/DateNumberFormat;->maxIntDigits:I

    iget v3, v1, Landroid/icu/impl/DateNumberFormat;->maxIntDigits:I

    if-ne v2, v3, :cond_35

    iget v2, p0, Landroid/icu/impl/DateNumberFormat;->minIntDigits:I

    iget v3, v1, Landroid/icu/impl/DateNumberFormat;->minIntDigits:I

    if-ne v2, v3, :cond_35

    iget-char v2, p0, Landroid/icu/impl/DateNumberFormat;->minusSign:C

    iget-char v3, v1, Landroid/icu/impl/DateNumberFormat;->minusSign:C

    if-ne v2, v3, :cond_35

    iget-boolean v2, p0, Landroid/icu/impl/DateNumberFormat;->positiveOnly:Z

    iget-boolean v3, v1, Landroid/icu/impl/DateNumberFormat;->positiveOnly:Z

    if-ne v2, v3, :cond_35

    iget-object v2, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    iget-object v3, v1, Landroid/icu/impl/DateNumberFormat;->digits:[C

    .line 266
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_35

    const/4 v0, 0x1

    goto :goto_36

    :cond_35
    nop

    .line 262
    :goto_36
    return v0

    .line 259
    .end local v1    # "other":Landroid/icu/impl/DateNumberFormat;
    :cond_37
    :goto_37
    return v0
.end method

.method public whitelist test-api format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 7
    .param p1, "number"    # D
    .param p3, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p4, "pos"    # Ljava/text/FieldPosition;

    .line 147
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "StringBuffer format(double, StringBuffer, FieldPosition) is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 12
    .param p1, "numberL"    # J
    .param p3, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p4, "pos"    # Ljava/text/FieldPosition;

    .line 154
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_c

    .line 156
    iget-char v0, p0, Landroid/icu/impl/DateNumberFormat;->minusSign:C

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 157
    neg-long p1, p1

    .line 163
    :cond_c
    long-to-int v0, p1

    .line 165
    .local v0, "number":I
    iget-object v1, p0, Landroid/icu/impl/DateNumberFormat;->decimalBuf:[C

    array-length v1, v1

    iget v2, p0, Landroid/icu/impl/DateNumberFormat;->maxIntDigits:I

    if-ge v1, v2, :cond_18

    iget-object v1, p0, Landroid/icu/impl/DateNumberFormat;->decimalBuf:[C

    array-length v1, v1

    goto :goto_1a

    :cond_18
    iget v1, p0, Landroid/icu/impl/DateNumberFormat;->maxIntDigits:I

    .line 166
    .local v1, "limit":I
    :goto_1a
    add-int/lit8 v2, v1, -0x1

    .line 168
    .local v2, "index":I
    :goto_1c
    iget-object v3, p0, Landroid/icu/impl/DateNumberFormat;->decimalBuf:[C

    iget-object v4, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    rem-int/lit8 v5, v0, 0xa

    aget-char v4, v4, v5

    aput-char v4, v3, v2

    .line 169
    div-int/lit8 v0, v0, 0xa

    .line 170
    if-eqz v2, :cond_30

    if-nez v0, :cond_2d

    .line 171
    goto :goto_30

    .line 173
    :cond_2d
    add-int/lit8 v2, v2, -0x1

    goto :goto_1c

    .line 175
    :cond_30
    :goto_30
    iget v3, p0, Landroid/icu/impl/DateNumberFormat;->minIntDigits:I

    sub-int v4, v1, v2

    sub-int/2addr v3, v4

    .line 176
    .local v3, "padding":I
    :goto_35
    const/4 v4, 0x0

    if-lez v3, :cond_45

    .line 177
    iget-object v5, p0, Landroid/icu/impl/DateNumberFormat;->decimalBuf:[C

    add-int/lit8 v2, v2, -0x1

    iget-object v6, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    aget-char v4, v6, v4

    aput-char v4, v5, v2

    .line 176
    add-int/lit8 v3, v3, -0x1

    goto :goto_35

    .line 179
    :cond_45
    sub-int v5, v1, v2

    .line 180
    .local v5, "length":I
    iget-object v6, p0, Landroid/icu/impl/DateNumberFormat;->decimalBuf:[C

    invoke-virtual {p3, v6, v2, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 181
    invoke-virtual {p4, v4}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 182
    invoke-virtual {p4}, Ljava/text/FieldPosition;->getField()I

    move-result v6

    if-nez v6, :cond_59

    .line 183
    invoke-virtual {p4, v5}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_5c

    .line 185
    :cond_59
    invoke-virtual {p4, v4}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 187
    :goto_5c
    return-object p3
.end method

.method public whitelist test-api format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 6
    .param p1, "number"    # Landroid/icu/math/BigDecimal;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 205
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "StringBuffer format(BigDecimal, StringBuffer, FieldPosition) is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 6
    .param p1, "number"    # Ljava/math/BigDecimal;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 199
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "StringBuffer format(BigDecimal, StringBuffer, FieldPosition) is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 6
    .param p1, "number"    # Ljava/math/BigInteger;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 193
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "StringBuffer format(BigInteger, StringBuffer, FieldPosition) is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getDigits()[C
    .registers 2

    .line 141
    iget-object v0, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public whitelist test-api getMaximumIntegerDigits()I
    .registers 2

    .line 107
    iget v0, p0, Landroid/icu/impl/DateNumberFormat;->maxIntDigits:I

    return v0
.end method

.method public whitelist test-api getMinimumIntegerDigits()I
    .registers 2

    .line 117
    iget v0, p0, Landroid/icu/impl/DateNumberFormat;->minIntDigits:I

    return v0
.end method

.method public blacklist getZeroDigit()C
    .registers 2

    .line 126
    iget-char v0, p0, Landroid/icu/impl/DateNumberFormat;->zeroDigit:C

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 271
    invoke-super {p0}, Landroid/icu/text/NumberFormat;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .registers 15
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "parsePosition"    # Ljava/text/ParsePosition;

    .line 215
    const-wide/16 v0, 0x0

    .line 216
    .local v0, "num":J
    const/4 v2, 0x0

    .line 217
    .local v2, "sawNumber":Z
    const/4 v3, 0x0

    .line 218
    .local v3, "negative":Z
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    .line 219
    .local v4, "base":I
    const/4 v5, 0x0

    .line 220
    .local v5, "offset":I
    :goto_9
    add-int v6, v4, v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_5f

    .line 221
    add-int v6, v4, v5

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 222
    .local v6, "ch":C
    if-nez v5, :cond_24

    iget-char v7, p0, Landroid/icu/impl/DateNumberFormat;->minusSign:C

    if-ne v6, v7, :cond_24

    .line 223
    iget-boolean v7, p0, Landroid/icu/impl/DateNumberFormat;->positiveOnly:Z

    if-eqz v7, :cond_22

    .line 224
    goto :goto_5f

    .line 226
    :cond_22
    const/4 v3, 0x1

    goto :goto_5c

    .line 228
    :cond_24
    iget-object v7, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    const/4 v8, 0x0

    aget-char v7, v7, v8

    sub-int v7, v6, v7

    .line 229
    .local v7, "digit":I
    const/16 v8, 0x9

    if-ltz v7, :cond_31

    if-ge v8, v7, :cond_35

    .line 230
    :cond_31
    invoke-static {v6}, Landroid/icu/lang/UCharacter;->digit(I)I

    move-result v7

    .line 232
    :cond_35
    if-ltz v7, :cond_39

    if-ge v8, v7, :cond_48

    .line 233
    :cond_39
    const/4 v7, 0x0

    :goto_3a
    const/16 v9, 0xa

    if-ge v7, v9, :cond_48

    .line 234
    iget-object v9, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    aget-char v9, v9, v7

    if-ne v6, v9, :cond_45

    .line 235
    goto :goto_48

    .line 233
    :cond_45
    add-int/lit8 v7, v7, 0x1

    goto :goto_3a

    .line 239
    :cond_48
    :goto_48
    if-ltz v7, :cond_5f

    if-gt v7, v8, :cond_5f

    const-wide v8, 0xccccccccccccccbL

    cmp-long v8, v0, v8

    if-gez v8, :cond_5f

    .line 240
    const/4 v2, 0x1

    .line 241
    const-wide/16 v8, 0xa

    mul-long/2addr v8, v0

    int-to-long v10, v7

    add-long/2addr v8, v10

    move-wide v0, v8

    .line 220
    .end local v6    # "ch":C
    .end local v7    # "digit":I
    :goto_5c
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 247
    :cond_5f
    :goto_5f
    const/4 v6, 0x0

    .line 248
    .local v6, "result":Ljava/lang/Number;
    if-eqz v2, :cond_73

    .line 249
    if-eqz v3, :cond_68

    const-wide/16 v7, -0x1

    mul-long/2addr v7, v0

    goto :goto_69

    :cond_68
    move-wide v7, v0

    :goto_69
    move-wide v0, v7

    .line 250
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 251
    add-int v7, v4, v5

    invoke-virtual {p2, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 253
    :cond_73
    return-object v6
.end method

.method public whitelist test-api setMaximumIntegerDigits(I)V
    .registers 2
    .param p1, "newValue"    # I

    .line 102
    iput p1, p0, Landroid/icu/impl/DateNumberFormat;->maxIntDigits:I

    .line 103
    return-void
.end method

.method public whitelist test-api setMinimumIntegerDigits(I)V
    .registers 2
    .param p1, "newValue"    # I

    .line 112
    iput p1, p0, Landroid/icu/impl/DateNumberFormat;->minIntDigits:I

    .line 113
    return-void
.end method

.method public blacklist setParsePositiveOnly(Z)V
    .registers 2
    .param p1, "isPositiveOnly"    # Z

    .line 122
    iput-boolean p1, p0, Landroid/icu/impl/DateNumberFormat;->positiveOnly:Z

    .line 123
    return-void
.end method

.method public blacklist setZeroDigit(C)V
    .registers 6
    .param p1, "zero"    # C

    .line 130
    iput-char p1, p0, Landroid/icu/impl/DateNumberFormat;->zeroDigit:C

    .line 131
    iget-object v0, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    const/16 v1, 0xa

    if-nez v0, :cond_c

    .line 132
    new-array v0, v1, [C

    iput-object v0, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    .line 134
    :cond_c
    iget-object v0, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    const/4 v2, 0x0

    aput-char p1, v0, v2

    .line 135
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_12
    if-ge v0, v1, :cond_1e

    .line 136
    iget-object v2, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    add-int v3, p1, v0

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 138
    .end local v0    # "i":I
    :cond_1e
    return-void
.end method
