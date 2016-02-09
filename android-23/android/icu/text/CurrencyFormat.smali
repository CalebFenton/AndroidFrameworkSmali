.class Landroid/icu/text/CurrencyFormat;
.super Landroid/icu/text/MeasureFormat;
.source "CurrencyFormat.java"


# static fields
.field static final serialVersionUID:J = -0xcedfd71ed74263aL


# instance fields
.field private fmt:Landroid/icu/text/NumberFormat;

.field private final transient mf:Landroid/icu/text/MeasureFormat;


# direct methods
.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Landroid/icu/text/MeasureFormat;-><init>()V

    #@3
    .line 42
    invoke-virtual {p0, p1, p1}, Landroid/icu/text/CurrencyFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    #@6
    .line 43
    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@8
    invoke-static {p1, v0}, Landroid/icu/text/MeasureFormat;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Landroid/icu/text/CurrencyFormat;->mf:Landroid/icu/text/MeasureFormat;

    #@e
    .line 44
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    #@11
    move-result-object v0

    #@12
    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Landroid/icu/text/CurrencyFormat;->fmt:Landroid/icu/text/NumberFormat;

    #@18
    .line 40
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    #@0
    .prologue
    .line 118
    new-instance v0, Landroid/icu/text/CurrencyFormat;

    #@2
    iget-object v1, p0, Landroid/icu/text/CurrencyFormat;->fmt:Landroid/icu/text/NumberFormat;

    #@4
    sget-object v2, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    #@6
    invoke-virtual {v1, v2}, Landroid/icu/text/NumberFormat;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Landroid/icu/text/CurrencyFormat;-><init>(Landroid/icu/util/ULocale;)V

    #@d
    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Landroid/icu/text/CurrencyFormat;->mf:Landroid/icu/text/MeasureFormat;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/MeasureFormat;->toCurrencyProxy()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 52
    invoke-super {p0}, Landroid/icu/text/MeasureFormat;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/text/CurrencyFormat;

    #@6
    .line 53
    .local v0, "result":Landroid/icu/text/CurrencyFormat;
    iget-object v1, p0, Landroid/icu/text/CurrencyFormat;->fmt:Landroid/icu/text/NumberFormat;

    #@8
    invoke-virtual {v1}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Landroid/icu/text/NumberFormat;

    #@e
    iput-object v1, v0, Landroid/icu/text/CurrencyFormat;->fmt:Landroid/icu/text/NumberFormat;

    #@10
    .line 54
    return-object v0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 62
    instance-of v1, p1, Landroid/icu/util/CurrencyAmount;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 63
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "Invalid type: "

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v1

    #@26
    :cond_0
    move-object v0, p1

    #@27
    .line 65
    check-cast v0, Landroid/icu/util/CurrencyAmount;

    #@29
    .line 67
    .local v0, "currency":Landroid/icu/util/CurrencyAmount;
    iget-object v1, p0, Landroid/icu/text/CurrencyFormat;->fmt:Landroid/icu/text/NumberFormat;

    #@2b
    invoke-virtual {v0}, Landroid/icu/util/CurrencyAmount;->getCurrency()Landroid/icu/util/Currency;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v1, v2}, Landroid/icu/text/NumberFormat;->setCurrency(Landroid/icu/util/Currency;)V

    #@32
    .line 68
    iget-object v1, p0, Landroid/icu/text/CurrencyFormat;->fmt:Landroid/icu/text/NumberFormat;

    #@34
    invoke-virtual {v0}, Landroid/icu/util/CurrencyAmount;->getNumber()Ljava/lang/Number;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v1, v2, p2, p3}, Landroid/icu/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@3b
    move-result-object v1

    #@3c
    return-object v1
.end method

.method public varargs formatMeasures(Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "appendTo"    # Ljava/lang/StringBuilder;
    .param p2, "fieldPosition"    # Ljava/text/FieldPosition;
    .param p3, "measures"    # [Landroid/icu/util/Measure;

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Landroid/icu/text/CurrencyFormat;->mf:Landroid/icu/text/MeasureFormat;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/text/MeasureFormat;->formatMeasures(Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)Ljava/lang/StringBuilder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNumberFormat()Landroid/icu/text/NumberFormat;
    .locals 1

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Landroid/icu/text/CurrencyFormat;->mf:Landroid/icu/text/MeasureFormat;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/MeasureFormat;->getNumberFormat()Landroid/icu/text/NumberFormat;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getWidth()Landroid/icu/text/MeasureFormat$FormatWidth;
    .locals 1

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Landroid/icu/text/CurrencyFormat;->mf:Landroid/icu/text/MeasureFormat;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/MeasureFormat;->getWidth()Landroid/icu/text/MeasureFormat$FormatWidth;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/CurrencyAmount;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Landroid/icu/text/CurrencyFormat;->fmt:Landroid/icu/text/NumberFormat;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/icu/text/NumberFormat;->parseCurrency(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Landroid/icu/util/CurrencyAmount;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public bridge synthetic parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/Measure;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 76
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/CurrencyFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/CurrencyAmount;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
