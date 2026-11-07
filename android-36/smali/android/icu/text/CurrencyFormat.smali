.class Landroid/icu/text/CurrencyFormat;
.super Landroid/icu/text/MeasureFormat;
.source "CurrencyFormat.java"


# static fields
.field static final whitelist serialVersionUID:J = -0xcedfd71ed74263aL


# direct methods
.method public constructor blacklist <init>(Landroid/icu/util/ULocale;)V
    .registers 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 39
    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->DEFAULT_CURRENCY:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-direct {p0, p1, v0}, Landroid/icu/text/MeasureFormat;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)V

    .line 40
    return-void
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 73
    new-instance v0, Landroid/icu/text/CurrencyFormat;

    sget-object v1, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {p0, v1}, Landroid/icu/text/CurrencyFormat;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/text/CurrencyFormat;-><init>(Landroid/icu/util/ULocale;)V

    return-object v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Landroid/icu/text/CurrencyFormat;->toCurrencyProxy()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 49
    instance-of v0, p1, Landroid/icu/util/CurrencyAmount;

    if-eqz v0, :cond_9

    .line 52
    invoke-super {p0, p1, p2, p3}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 50
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/CurrencyAmount;
    .registers 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 62
    invoke-virtual {p0}, Landroid/icu/text/CurrencyFormat;->getNumberFormatInternal()Landroid/icu/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/icu/text/NumberFormat;->parseCurrency(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Landroid/icu/util/CurrencyAmount;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/Measure;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/CurrencyFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/CurrencyAmount;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/CurrencyFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/CurrencyAmount;

    move-result-object p1

    return-object p1
.end method
