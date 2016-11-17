.class public final Landroid/icu/impl/DateNumberFormat;
.super Landroid/icu/text/NumberFormat;
.source "DateNumberFormat.java"


# static fields
.field private static CACHE:Landroid/icu/impl/SimpleCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/SimpleCache",
            "<",
            "Landroid/icu/util/ULocale;",
            "[C>;"
        }
    .end annotation
.end field

.field private static final DECIMAL_BUF_SIZE:I = 0x14

.field private static final PARSE_THRESHOLD:J = 0xccccccccccccccbL

.field private static final serialVersionUID:J = -0x57a5d92a02d4dc49L


# instance fields
.field private transient decimalBuf:[C

.field private digits:[C

.field private maxIntDigits:I

.field private minIntDigits:I

.field private minusSign:C

.field private positiveOnly:Z

.field private zeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 44
    new-instance v0, Landroid/icu/impl/SimpleCache;

    #@2
    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    #@5
    sput-object v0, Landroid/icu/impl/DateNumberFormat;->CACHE:Landroid/icu/impl/SimpleCache;

    #@7
    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;CLjava/lang/String;)V
    .locals 3
    .param p1, "loc"    # Landroid/icu/util/ULocale;
    .param p2, "zeroDigit"    # C
    .param p3, "nsName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    #@3
    .line 39
    const/4 v2, 0x0

    #@4
    iput-boolean v2, p0, Landroid/icu/impl/DateNumberFormat;->positiveOnly:Z

    #@6
    .line 42
    const/16 v2, 0x14

    #@8
    new-array v2, v2, [C

    #@a
    iput-object v2, p0, Landroid/icu/impl/DateNumberFormat;->decimalBuf:[C

    #@c
    .line 54
    new-instance v0, Ljava/lang/StringBuffer;

    #@e
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@11
    .line 55
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    #@12
    .local v1, "i":I
    :goto_0
    const/16 v2, 0xa

    #@14
    if-ge v1, v2, :cond_0

    #@16
    .line 56
    add-int v2, p2, v1

    #@18
    int-to-char v2, v2

    #@19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@1c
    .line 55
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 58
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-direct {p0, p1, v2, p3}, Landroid/icu/impl/DateNumberFormat;->initialize(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V

    #@26
    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "loc"    # Landroid/icu/util/ULocale;
    .param p2, "digitString"    # Ljava/lang/String;
    .param p3, "nsName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    #@3
    .line 39
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/icu/impl/DateNumberFormat;->positiveOnly:Z

    #@6
    .line 42
    const/16 v0, 0x14

    #@8
    new-array v0, v0, [C

    #@a
    iput-object v0, p0, Landroid/icu/impl/DateNumberFormat;->decimalBuf:[C

    #@c
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/DateNumberFormat;->initialize(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 49
    return-void
.end method

.method private initialize(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "loc"    # Landroid/icu/util/ULocale;
    .param p2, "digitString"    # Ljava/lang/String;
    .param p3, "nsName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/16 v8, 0xa

    #@3
    .line 62
    sget-object v6, Landroid/icu/impl/DateNumberFormat;->CACHE:Landroid/icu/impl/SimpleCache;

    #@5
    invoke-virtual {v6, p1}, Landroid/icu/impl/SimpleCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, [C

    #@b
    .line 63
    .local v0, "elems":[C
    if-nez v0, :cond_2

    #@d
    .line 66
    const-string/jumbo v6, "android/icu/impl/data/icudt56b"

    #@10
    invoke-static {v6, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@13
    move-result-object v5

    #@14
    check-cast v5, Landroid/icu/impl/ICUResourceBundle;

    #@16
    .line 68
    .local v5, "rb":Landroid/icu/impl/ICUResourceBundle;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v7, "NumberElements/"

    #@1e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v6

    #@22
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v6

    #@26
    const-string/jumbo v7, "/symbols/minusSign"

    #@29
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v6

    #@2d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v6

    #@31
    invoke-virtual {v5, v6}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    move-result-object v4

    #@35
    .line 80
    .local v4, "minusString":Ljava/lang/String;
    :goto_0
    const/16 v6, 0xb

    #@37
    new-array v0, v6, [C

    #@39
    .line 81
    const/4 v3, 0x0

    #@3a
    .local v3, "i":I
    :goto_1
    if-ge v3, v8, :cond_1

    #@3c
    .line 82
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    #@3f
    move-result v6

    #@40
    aput-char v6, v0, v3

    #@42
    .line 81
    add-int/lit8 v3, v3, 0x1

    #@44
    goto :goto_1

    #@45
    .line 69
    .end local v3    # "i":I
    .end local v4    # "minusString":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@46
    .line 70
    .local v1, "ex":Ljava/util/MissingResourceException;
    const-string/jumbo v6, "latn"

    #@49
    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v6

    #@4d
    if-nez v6, :cond_0

    #@4f
    .line 72
    :try_start_1
    const-string/jumbo v6, "NumberElements/latn/symbols/minusSign"

    #@52
    invoke-virtual {v5, v6}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    #@55
    move-result-object v4

    #@56
    .restart local v4    # "minusString":Ljava/lang/String;
    goto :goto_0

    #@57
    .line 73
    .end local v4    # "minusString":Ljava/lang/String;
    :catch_1
    move-exception v2

    #@58
    .line 74
    .local v2, "ex1":Ljava/util/MissingResourceException;
    const-string/jumbo v4, "-"

    #@5b
    .restart local v4    # "minusString":Ljava/lang/String;
    goto :goto_0

    #@5c
    .line 77
    .end local v2    # "ex1":Ljava/util/MissingResourceException;
    .end local v4    # "minusString":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "-"

    #@5f
    .restart local v4    # "minusString":Ljava/lang/String;
    goto :goto_0

    #@60
    .line 84
    .end local v1    # "ex":Ljava/util/MissingResourceException;
    .restart local v3    # "i":I
    :cond_1
    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    #@63
    move-result v6

    #@64
    aput-char v6, v0, v8

    #@66
    .line 85
    sget-object v6, Landroid/icu/impl/DateNumberFormat;->CACHE:Landroid/icu/impl/SimpleCache;

    #@68
    invoke-virtual {v6, p1, v0}, Landroid/icu/impl/SimpleCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    #@6b
    .line 88
    .end local v3    # "i":I
    .end local v4    # "minusString":Ljava/lang/String;
    .end local v5    # "rb":Landroid/icu/impl/ICUResourceBundle;
    :cond_2
    new-array v6, v8, [C

    #@6d
    iput-object v6, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    #@6f
    .line 89
    iget-object v6, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    #@71
    invoke-static {v0, v9, v6, v9, v8}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@74
    .line 90
    iget-object v6, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    #@76
    aget-char v6, v6, v9

    #@78
    iput-char v6, p0, Landroid/icu/impl/DateNumberFormat;->zeroDigit:C

    #@7a
    .line 92
    aget-char v6, v0, v8

    #@7c
    iput-char v6, p0, Landroid/icu/impl/DateNumberFormat;->minusSign:C

    #@7e
    .line 61
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 258
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 259
    iget-object v0, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    #@5
    if-nez v0, :cond_0

    #@7
    .line 260
    iget-char v0, p0, Landroid/icu/impl/DateNumberFormat;->zeroDigit:C

    #@9
    invoke-virtual {p0, v0}, Landroid/icu/impl/DateNumberFormat;->setZeroDigit(C)V

    #@c
    .line 263
    :cond_0
    const/16 v0, 0x14

    #@e
    new-array v0, v0, [C

    #@10
    iput-object v0, p0, Landroid/icu/impl/DateNumberFormat;->decimalBuf:[C

    #@12
    .line 257
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 268
    invoke-super {p0}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/impl/DateNumberFormat;

    #@6
    .line 269
    .local v0, "dnfmt":Landroid/icu/impl/DateNumberFormat;
    iget-object v1, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    #@8
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, [C

    #@e
    iput-object v1, v0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    #@10
    .line 270
    const/16 v1, 0x14

    #@12
    new-array v1, v1, [C

    #@14
    iput-object v1, v0, Landroid/icu/impl/DateNumberFormat;->decimalBuf:[C

    #@16
    .line 271
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 242
    if-eqz p1, :cond_1

    #@3
    invoke-super {p0, p1}, Landroid/icu/text/NumberFormat;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_1

    #@9
    instance-of v2, p1, Landroid/icu/impl/DateNumberFormat;

    #@b
    if-eqz v2, :cond_1

    #@d
    move-object v0, p1

    #@e
    .line 245
    check-cast v0, Landroid/icu/impl/DateNumberFormat;

    #@10
    .line 246
    .local v0, "other":Landroid/icu/impl/DateNumberFormat;
    iget v2, p0, Landroid/icu/impl/DateNumberFormat;->maxIntDigits:I

    #@12
    iget v3, v0, Landroid/icu/impl/DateNumberFormat;->maxIntDigits:I

    #@14
    if-ne v2, v3, :cond_0

    #@16
    .line 247
    iget v2, p0, Landroid/icu/impl/DateNumberFormat;->minIntDigits:I

    #@18
    iget v3, v0, Landroid/icu/impl/DateNumberFormat;->minIntDigits:I

    #@1a
    if-ne v2, v3, :cond_0

    #@1c
    .line 248
    iget-char v2, p0, Landroid/icu/impl/DateNumberFormat;->minusSign:C

    #@1e
    iget-char v3, v0, Landroid/icu/impl/DateNumberFormat;->minusSign:C

    #@20
    if-ne v2, v3, :cond_0

    #@22
    .line 249
    iget-boolean v2, p0, Landroid/icu/impl/DateNumberFormat;->positiveOnly:Z

    #@24
    iget-boolean v3, v0, Landroid/icu/impl/DateNumberFormat;->positiveOnly:Z

    #@26
    if-ne v2, v3, :cond_0

    #@28
    .line 250
    iget-object v1, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    #@2a
    iget-object v2, v0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    #@2c
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([C[C)Z

    #@2f
    move-result v1

    #@30
    .line 246
    :cond_0
    return v1

    #@31
    .line 243
    .end local v0    # "other":Landroid/icu/impl/DateNumberFormat;
    :cond_1
    return v1
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "number"    # D
    .param p3, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p4, "pos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 137
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "StringBuffer format(double, StringBuffer, FieldPostion) is not implemented"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 9
    .param p1, "numberL"    # J
    .param p3, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p4, "pos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 143
    const-wide/16 v6, 0x0

    #@3
    cmp-long v5, p1, v6

    #@5
    if-gez v5, :cond_0

    #@7
    .line 145
    iget-char v5, p0, Landroid/icu/impl/DateNumberFormat;->minusSign:C

    #@9
    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@c
    .line 146
    neg-long p1, p1

    #@d
    .line 152
    :cond_0
    long-to-int v3, p1

    #@e
    .line 154
    .local v3, "number":I
    iget-object v5, p0, Landroid/icu/impl/DateNumberFormat;->decimalBuf:[C

    #@10
    array-length v5, v5

    #@11
    iget v6, p0, Landroid/icu/impl/DateNumberFormat;->maxIntDigits:I

    #@13
    if-ge v5, v6, :cond_2

    #@15
    iget-object v5, p0, Landroid/icu/impl/DateNumberFormat;->decimalBuf:[C

    #@17
    array-length v2, v5

    #@18
    .line 155
    .local v2, "limit":I
    :goto_0
    add-int/lit8 v0, v2, -0x1

    #@1a
    .line 157
    .local v0, "index":I
    :goto_1
    iget-object v5, p0, Landroid/icu/impl/DateNumberFormat;->decimalBuf:[C

    #@1c
    iget-object v6, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    #@1e
    rem-int/lit8 v7, v3, 0xa

    #@20
    aget-char v6, v6, v7

    #@22
    aput-char v6, v5, v0

    #@24
    .line 158
    div-int/lit8 v3, v3, 0xa

    #@26
    .line 159
    if-eqz v0, :cond_1

    #@28
    if-nez v3, :cond_3

    #@2a
    .line 164
    :cond_1
    iget v5, p0, Landroid/icu/impl/DateNumberFormat;->minIntDigits:I

    #@2c
    sub-int v6, v2, v0

    #@2e
    sub-int v4, v5, v6

    #@30
    .line 165
    .local v4, "padding":I
    :goto_2
    if-lez v4, :cond_4

    #@32
    .line 166
    iget-object v5, p0, Landroid/icu/impl/DateNumberFormat;->decimalBuf:[C

    #@34
    add-int/lit8 v0, v0, -0x1

    #@36
    iget-object v6, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    #@38
    aget-char v6, v6, v8

    #@3a
    aput-char v6, v5, v0

    #@3c
    .line 165
    add-int/lit8 v4, v4, -0x1

    #@3e
    goto :goto_2

    #@3f
    .line 154
    .end local v0    # "index":I
    .end local v2    # "limit":I
    .end local v4    # "padding":I
    :cond_2
    iget v2, p0, Landroid/icu/impl/DateNumberFormat;->maxIntDigits:I

    #@41
    goto :goto_0

    #@42
    .line 162
    .restart local v0    # "index":I
    .restart local v2    # "limit":I
    :cond_3
    add-int/lit8 v0, v0, -0x1

    #@44
    goto :goto_1

    #@45
    .line 168
    .restart local v4    # "padding":I
    :cond_4
    sub-int v1, v2, v0

    #@47
    .line 169
    .local v1, "length":I
    iget-object v5, p0, Landroid/icu/impl/DateNumberFormat;->decimalBuf:[C

    #@49
    invoke-virtual {p3, v5, v0, v1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    #@4c
    .line 170
    invoke-virtual {p4, v8}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@4f
    .line 171
    invoke-virtual {p4}, Ljava/text/FieldPosition;->getField()I

    #@52
    move-result v5

    #@53
    if-nez v5, :cond_5

    #@55
    .line 172
    invoke-virtual {p4, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@58
    .line 176
    :goto_3
    return-object p3

    #@59
    .line 174
    :cond_5
    invoke-virtual {p4, v8}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@5c
    goto :goto_3
.end method

.method public format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "number"    # Landroid/icu/math/BigDecimal;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 191
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "StringBuffer format(BigDecimal, StringBuffer, FieldPostion) is not implemented"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "number"    # Ljava/math/BigDecimal;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 186
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "StringBuffer format(BigDecimal, StringBuffer, FieldPostion) is not implemented"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "number"    # Ljava/math/BigInteger;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 181
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "StringBuffer format(BigInteger, StringBuffer, FieldPostion) is not implemented"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getDigits()[C
    .locals 1

    #@0
    .prologue
    .line 132
    iget-object v0, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [C

    #@8
    return-object v0
.end method

.method public getMaximumIntegerDigits()I
    .locals 1

    #@0
    .prologue
    .line 100
    iget v0, p0, Landroid/icu/impl/DateNumberFormat;->maxIntDigits:I

    #@2
    return v0
.end method

.method public getMinimumIntegerDigits()I
    .locals 1

    #@0
    .prologue
    .line 108
    iget v0, p0, Landroid/icu/impl/DateNumberFormat;->minIntDigits:I

    #@2
    return v0
.end method

.method public getZeroDigit()C
    .locals 1

    #@0
    .prologue
    .line 117
    iget-char v0, p0, Landroid/icu/impl/DateNumberFormat;->zeroDigit:C

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 254
    invoke-super {p0}, Landroid/icu/text/NumberFormat;->hashCode()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 16
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "parsePosition"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 200
    const-wide/16 v6, 0x0

    #@2
    .line 201
    .local v6, "num":J
    const/4 v10, 0x0

    #@3
    .line 202
    .local v10, "sawNumber":Z
    const/4 v5, 0x0

    #@4
    .line 203
    .local v5, "negative":Z
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    #@7
    move-result v2

    #@8
    .line 204
    .local v2, "base":I
    const/4 v8, 0x0

    #@9
    .line 205
    .local v8, "offset":I
    :goto_0
    add-int v11, v2, v8

    #@b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@e
    move-result v12

    #@f
    if-ge v11, v12, :cond_0

    #@11
    .line 206
    add-int v11, v2, v8

    #@13
    move-object/from16 v0, p1

    #@15
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    #@18
    move-result v3

    #@19
    .line 207
    .local v3, "ch":C
    if-nez v8, :cond_4

    #@1b
    move-object/from16 v0, p0

    #@1d
    iget-char v11, v0, Landroid/icu/impl/DateNumberFormat;->minusSign:C

    #@1f
    if-ne v3, v11, :cond_4

    #@21
    .line 208
    move-object/from16 v0, p0

    #@23
    iget-boolean v11, v0, Landroid/icu/impl/DateNumberFormat;->positiveOnly:Z

    #@25
    if-eqz v11, :cond_3

    #@27
    .line 232
    .end local v3    # "ch":C
    :cond_0
    const/4 v9, 0x0

    #@28
    .line 233
    .local v9, "result":Ljava/lang/Number;
    if-eqz v10, :cond_2

    #@2a
    .line 234
    if-eqz v5, :cond_1

    #@2c
    const-wide/16 v12, -0x1

    #@2e
    mul-long/2addr v6, v12

    #@2f
    .line 235
    :cond_1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@32
    move-result-object v9

    #@33
    .line 236
    .local v9, "result":Ljava/lang/Number;
    add-int v11, v2, v8

    #@35
    move-object/from16 v0, p2

    #@37
    invoke-virtual {v0, v11}, Ljava/text/ParsePosition;->setIndex(I)V

    #@3a
    .line 238
    .end local v9    # "result":Ljava/lang/Number;
    :cond_2
    return-object v9

    #@3b
    .line 211
    .restart local v3    # "ch":C
    :cond_3
    const/4 v5, 0x1

    #@3c
    .line 205
    :goto_1
    add-int/lit8 v8, v8, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 213
    :cond_4
    move-object/from16 v0, p0

    #@41
    iget-object v11, v0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    #@43
    const/4 v12, 0x0

    #@44
    aget-char v11, v11, v12

    #@46
    sub-int v4, v3, v11

    #@48
    .line 214
    .local v4, "digit":I
    if-ltz v4, :cond_5

    #@4a
    const/16 v11, 0x9

    #@4c
    if-ge v11, v4, :cond_6

    #@4e
    .line 215
    :cond_5
    invoke-static {v3}, Landroid/icu/lang/UCharacter;->digit(I)I

    #@51
    move-result v4

    #@52
    .line 217
    :cond_6
    if-ltz v4, :cond_7

    #@54
    const/16 v11, 0x9

    #@56
    if-ge v11, v4, :cond_8

    #@58
    .line 218
    :cond_7
    const/4 v4, 0x0

    #@59
    :goto_2
    const/16 v11, 0xa

    #@5b
    if-ge v4, v11, :cond_8

    #@5d
    .line 219
    move-object/from16 v0, p0

    #@5f
    iget-object v11, v0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    #@61
    aget-char v11, v11, v4

    #@63
    if-ne v3, v11, :cond_9

    #@65
    .line 224
    :cond_8
    if-ltz v4, :cond_0

    #@67
    const/16 v11, 0x9

    #@69
    if-gt v4, v11, :cond_0

    #@6b
    const-wide v12, 0xccccccccccccccbL

    #@70
    cmp-long v11, v6, v12

    #@72
    if-gez v11, :cond_0

    #@74
    .line 225
    const/4 v10, 0x1

    #@75
    .line 226
    const-wide/16 v12, 0xa

    #@77
    mul-long/2addr v12, v6

    #@78
    int-to-long v14, v4

    #@79
    add-long v6, v12, v14

    #@7b
    .line 224
    goto :goto_1

    #@7c
    .line 218
    :cond_9
    add-int/lit8 v4, v4, 0x1

    #@7e
    goto :goto_2
.end method

.method public setMaximumIntegerDigits(I)V
    .locals 0
    .param p1, "newValue"    # I

    #@0
    .prologue
    .line 96
    iput p1, p0, Landroid/icu/impl/DateNumberFormat;->maxIntDigits:I

    #@2
    .line 95
    return-void
.end method

.method public setMinimumIntegerDigits(I)V
    .locals 0
    .param p1, "newValue"    # I

    #@0
    .prologue
    .line 104
    iput p1, p0, Landroid/icu/impl/DateNumberFormat;->minIntDigits:I

    #@2
    .line 103
    return-void
.end method

.method public setParsePositiveOnly(Z)V
    .locals 0
    .param p1, "isPositiveOnly"    # Z

    #@0
    .prologue
    .line 113
    iput-boolean p1, p0, Landroid/icu/impl/DateNumberFormat;->positiveOnly:Z

    #@2
    .line 112
    return-void
.end method

.method public setZeroDigit(C)V
    .locals 4
    .param p1, "zero"    # C

    #@0
    .prologue
    const/16 v3, 0xa

    #@2
    .line 121
    iput-char p1, p0, Landroid/icu/impl/DateNumberFormat;->zeroDigit:C

    #@4
    .line 122
    iget-object v1, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    #@6
    if-nez v1, :cond_0

    #@8
    .line 123
    new-array v1, v3, [C

    #@a
    iput-object v1, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    #@c
    .line 125
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    #@e
    const/4 v2, 0x0

    #@f
    aput-char p1, v1, v2

    #@11
    .line 126
    const/4 v0, 0x1

    #@12
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    #@14
    .line 127
    iget-object v1, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    #@16
    add-int v2, p1, v0

    #@18
    int-to-char v2, v2

    #@19
    aput-char v2, v1, v0

    #@1b
    .line 126
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 120
    :cond_1
    return-void
.end method
