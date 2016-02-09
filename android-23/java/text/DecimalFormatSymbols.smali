.class public Ljava/text/DecimalFormatSymbols;
.super Ljava/lang/Object;
.source "DecimalFormatSymbols.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x501d17990868939cL


# instance fields
.field private NaN:Ljava/lang/String;

.field private transient currency:Ljava/util/Currency;

.field private currencySymbol:Ljava/lang/String;

.field private decimalSeparator:C

.field private digit:C

.field private transient exponentSeparator:Ljava/lang/String;

.field private groupingSeparator:C

.field private infinity:Ljava/lang/String;

.field private intlCurrencySymbol:Ljava/lang/String;

.field private transient locale:Ljava/util/Locale;

.field private minusSign:Ljava/lang/String;

.field private monetarySeparator:C

.field private patternSeparator:C

.field private perMill:C

.field private percent:Ljava/lang/String;

.field private zeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 600
    const/16 v0, 0x13

    #@2
    new-array v0, v0, [Ljava/io/ObjectStreamField;

    #@4
    .line 601
    new-instance v1, Ljava/io/ObjectStreamField;

    #@6
    const-string/jumbo v2, "currencySymbol"

    #@9
    const-class v3, Ljava/lang/String;

    #@b
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@e
    const/4 v2, 0x0

    #@f
    aput-object v1, v0, v2

    #@11
    .line 602
    new-instance v1, Ljava/io/ObjectStreamField;

    #@13
    const-string/jumbo v2, "decimalSeparator"

    #@16
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@18
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@1b
    const/4 v2, 0x1

    #@1c
    aput-object v1, v0, v2

    #@1e
    .line 603
    new-instance v1, Ljava/io/ObjectStreamField;

    #@20
    const-string/jumbo v2, "digit"

    #@23
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@25
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@28
    const/4 v2, 0x2

    #@29
    aput-object v1, v0, v2

    #@2b
    .line 604
    new-instance v1, Ljava/io/ObjectStreamField;

    #@2d
    const-string/jumbo v2, "exponential"

    #@30
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@32
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@35
    const/4 v2, 0x3

    #@36
    aput-object v1, v0, v2

    #@38
    .line 605
    new-instance v1, Ljava/io/ObjectStreamField;

    #@3a
    const-string/jumbo v2, "exponentialSeparator"

    #@3d
    const-class v3, Ljava/lang/String;

    #@3f
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@42
    const/4 v2, 0x4

    #@43
    aput-object v1, v0, v2

    #@45
    .line 606
    new-instance v1, Ljava/io/ObjectStreamField;

    #@47
    const-string/jumbo v2, "groupingSeparator"

    #@4a
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@4c
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@4f
    const/4 v2, 0x5

    #@50
    aput-object v1, v0, v2

    #@52
    .line 607
    new-instance v1, Ljava/io/ObjectStreamField;

    #@54
    const-string/jumbo v2, "infinity"

    #@57
    const-class v3, Ljava/lang/String;

    #@59
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@5c
    const/4 v2, 0x6

    #@5d
    aput-object v1, v0, v2

    #@5f
    .line 608
    new-instance v1, Ljava/io/ObjectStreamField;

    #@61
    const-string/jumbo v2, "intlCurrencySymbol"

    #@64
    const-class v3, Ljava/lang/String;

    #@66
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@69
    const/4 v2, 0x7

    #@6a
    aput-object v1, v0, v2

    #@6c
    .line 609
    new-instance v1, Ljava/io/ObjectStreamField;

    #@6e
    const-string/jumbo v2, "minusSign"

    #@71
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@73
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@76
    const/16 v2, 0x8

    #@78
    aput-object v1, v0, v2

    #@7a
    .line 610
    new-instance v1, Ljava/io/ObjectStreamField;

    #@7c
    const-string/jumbo v2, "monetarySeparator"

    #@7f
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@81
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@84
    const/16 v2, 0x9

    #@86
    aput-object v1, v0, v2

    #@88
    .line 611
    new-instance v1, Ljava/io/ObjectStreamField;

    #@8a
    const-string/jumbo v2, "NaN"

    #@8d
    const-class v3, Ljava/lang/String;

    #@8f
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@92
    const/16 v2, 0xa

    #@94
    aput-object v1, v0, v2

    #@96
    .line 612
    new-instance v1, Ljava/io/ObjectStreamField;

    #@98
    const-string/jumbo v2, "patternSeparator"

    #@9b
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@9d
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@a0
    const/16 v2, 0xb

    #@a2
    aput-object v1, v0, v2

    #@a4
    .line 613
    new-instance v1, Ljava/io/ObjectStreamField;

    #@a6
    const-string/jumbo v2, "percent"

    #@a9
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@ab
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@ae
    const/16 v2, 0xc

    #@b0
    aput-object v1, v0, v2

    #@b2
    .line 614
    new-instance v1, Ljava/io/ObjectStreamField;

    #@b4
    const-string/jumbo v2, "perMill"

    #@b7
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@b9
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@bc
    const/16 v2, 0xd

    #@be
    aput-object v1, v0, v2

    #@c0
    .line 615
    new-instance v1, Ljava/io/ObjectStreamField;

    #@c2
    const-string/jumbo v2, "serialVersionOnStream"

    #@c5
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@c7
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@ca
    const/16 v2, 0xe

    #@cc
    aput-object v1, v0, v2

    #@ce
    .line 616
    new-instance v1, Ljava/io/ObjectStreamField;

    #@d0
    const-string/jumbo v2, "zeroDigit"

    #@d3
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@d5
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@d8
    const/16 v2, 0xf

    #@da
    aput-object v1, v0, v2

    #@dc
    .line 617
    new-instance v1, Ljava/io/ObjectStreamField;

    #@de
    const-string/jumbo v2, "locale"

    #@e1
    const-class v3, Ljava/util/Locale;

    #@e3
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@e6
    const/16 v2, 0x10

    #@e8
    aput-object v1, v0, v2

    #@ea
    .line 618
    new-instance v1, Ljava/io/ObjectStreamField;

    #@ec
    const-string/jumbo v2, "minusSignStr"

    #@ef
    const-class v3, Ljava/lang/String;

    #@f1
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@f4
    const/16 v2, 0x11

    #@f6
    aput-object v1, v0, v2

    #@f8
    .line 619
    new-instance v1, Ljava/io/ObjectStreamField;

    #@fa
    const-string/jumbo v2, "percentStr"

    #@fd
    const-class v3, Ljava/lang/String;

    #@ff
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@102
    const/16 v2, 0x12

    #@104
    aput-object v1, v0, v2

    #@106
    .line 600
    sput-object v0, Ljava/text/DecimalFormatSymbols;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    #@108
    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 69
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    #@7
    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 84
    if-nez p1, :cond_0

    #@5
    .line 85
    new-instance v2, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v3, "locale == null"

    #@a
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2

    #@e
    .line 88
    :cond_0
    invoke-static {p1}, Llibcore/icu/LocaleData;->mapInvalidAndNullLocales(Ljava/util/Locale;)Ljava/util/Locale;

    #@11
    move-result-object p1

    #@12
    .line 89
    invoke-static {p1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@15
    move-result-object v1

    #@16
    .line 90
    .local v1, "localeData":Llibcore/icu/LocaleData;
    iget-char v2, v1, Llibcore/icu/LocaleData;->zeroDigit:C

    #@18
    iput-char v2, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    #@1a
    .line 91
    const/16 v2, 0x23

    #@1c
    iput-char v2, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    #@1e
    .line 92
    iget-char v2, v1, Llibcore/icu/LocaleData;->decimalSeparator:C

    #@20
    iput-char v2, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    #@22
    .line 93
    iget-char v2, v1, Llibcore/icu/LocaleData;->groupingSeparator:C

    #@24
    iput-char v2, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    #@26
    .line 94
    iget-char v2, v1, Llibcore/icu/LocaleData;->patternSeparator:C

    #@28
    iput-char v2, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    #@2a
    .line 95
    iget-object v2, v1, Llibcore/icu/LocaleData;->percent:Ljava/lang/String;

    #@2c
    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->percent:Ljava/lang/String;

    #@2e
    .line 96
    iget-char v2, v1, Llibcore/icu/LocaleData;->perMill:C

    #@30
    iput-char v2, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    #@32
    .line 97
    iget-char v2, v1, Llibcore/icu/LocaleData;->monetarySeparator:C

    #@34
    iput-char v2, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    #@36
    .line 98
    iget-object v2, v1, Llibcore/icu/LocaleData;->minusSign:Ljava/lang/String;

    #@38
    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->minusSign:Ljava/lang/String;

    #@3a
    .line 99
    iget-object v2, v1, Llibcore/icu/LocaleData;->infinity:Ljava/lang/String;

    #@3c
    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    #@3e
    .line 100
    iget-object v2, v1, Llibcore/icu/LocaleData;->NaN:Ljava/lang/String;

    #@40
    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    #@42
    .line 101
    iget-object v2, v1, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    #@44
    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    #@46
    .line 102
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    #@48
    .line 104
    :try_start_0
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    #@4b
    move-result-object v2

    #@4c
    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    #@4e
    .line 105
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    #@50
    invoke-virtual {v2, p1}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    #@53
    move-result-object v2

    #@54
    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    #@56
    .line 106
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    #@58
    invoke-virtual {v2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    #@5b
    move-result-object v2

    #@5c
    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@5e
    .line 83
    :goto_0
    return-void

    #@5f
    .line 107
    :catch_0
    move-exception v0

    #@60
    .line 108
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "XXX"

    #@63
    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    #@66
    move-result-object v2

    #@67
    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    #@69
    .line 109
    iget-object v2, v1, Llibcore/icu/LocaleData;->currencySymbol:Ljava/lang/String;

    #@6b
    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    #@6d
    .line 110
    iget-object v2, v1, Llibcore/icu/LocaleData;->internationalCurrencySymbol:Ljava/lang/String;

    #@6f
    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@71
    goto :goto_0
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 147
    invoke-static {}, Llibcore/icu/ICU;->getAvailableDecimalFormatSymbolsLocales()[Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getInstance()Ljava/text/DecimalFormatSymbols;
    .locals 1

    #@0
    .prologue
    .line 122
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 134
    if-nez p0, :cond_0

    #@2
    .line 135
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "locale == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 137
    :cond_0
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    #@d
    invoke-direct {v0, p0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    #@10
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 9
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v8, 0x2e

    #@2
    const/4 v6, 0x0

    #@3
    const/4 v7, 0x0

    #@4
    .line 651
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    #@7
    move-result-object v1

    #@8
    .line 652
    .local v1, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v5, "serialVersionOnStream"

    #@b
    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@e
    move-result v4

    #@f
    .line 653
    .local v4, "serialVersionOnStream":I
    const-string/jumbo v5, "currencySymbol"

    #@12
    const-string/jumbo v6, ""

    #@15
    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v5

    #@19
    check-cast v5, Ljava/lang/String;

    #@1b
    iput-object v5, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    #@1d
    .line 654
    const-string/jumbo v5, "decimalSeparator"

    #@20
    invoke-virtual {v1, v5, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    #@23
    move-result v5

    #@24
    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    #@27
    .line 655
    const-string/jumbo v5, "digit"

    #@2a
    const/16 v6, 0x23

    #@2c
    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    #@2f
    move-result v5

    #@30
    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setDigit(C)V

    #@33
    .line 656
    const-string/jumbo v5, "groupingSeparator"

    #@36
    const/16 v6, 0x2c

    #@38
    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    #@3b
    move-result v5

    #@3c
    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    #@3f
    .line 657
    const-string/jumbo v5, "infinity"

    #@42
    const-string/jumbo v6, ""

    #@45
    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    move-result-object v5

    #@49
    check-cast v5, Ljava/lang/String;

    #@4b
    iput-object v5, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    #@4d
    .line 658
    const-string/jumbo v5, "intlCurrencySymbol"

    #@50
    const-string/jumbo v6, ""

    #@53
    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@56
    move-result-object v5

    #@57
    check-cast v5, Ljava/lang/String;

    #@59
    iput-object v5, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@5b
    .line 659
    const-string/jumbo v5, "NaN"

    #@5e
    const-string/jumbo v6, ""

    #@61
    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@64
    move-result-object v5

    #@65
    check-cast v5, Ljava/lang/String;

    #@67
    iput-object v5, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    #@69
    .line 660
    const-string/jumbo v5, "patternSeparator"

    #@6c
    const/16 v6, 0x3b

    #@6e
    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    #@71
    move-result v5

    #@72
    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setPatternSeparator(C)V

    #@75
    .line 666
    const-string/jumbo v5, "minusSignStr"

    #@78
    invoke-virtual {v1, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@7b
    move-result-object v2

    #@7c
    check-cast v2, Ljava/lang/String;

    #@7e
    .line 667
    .local v2, "minusSignStr":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@80
    .line 668
    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->minusSign:Ljava/lang/String;

    #@82
    .line 672
    :goto_0
    const-string/jumbo v5, "percentStr"

    #@85
    invoke-virtual {v1, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@88
    move-result-object v3

    #@89
    check-cast v3, Ljava/lang/String;

    #@8b
    .line 673
    .local v3, "percentStr":Ljava/lang/String;
    if-eqz v3, :cond_1

    #@8d
    .line 674
    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->percent:Ljava/lang/String;

    #@8f
    .line 679
    :goto_1
    const-string/jumbo v5, "perMill"

    #@92
    const/16 v6, 0x2030

    #@94
    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    #@97
    move-result v5

    #@98
    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setPerMill(C)V

    #@9b
    .line 680
    const-string/jumbo v5, "zeroDigit"

    #@9e
    const/16 v6, 0x30

    #@a0
    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    #@a3
    move-result v5

    #@a4
    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setZeroDigit(C)V

    #@a7
    .line 681
    const-string/jumbo v5, "locale"

    #@aa
    invoke-virtual {v1, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@ad
    move-result-object v5

    #@ae
    check-cast v5, Ljava/util/Locale;

    #@b0
    iput-object v5, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    #@b2
    .line 682
    if-nez v4, :cond_2

    #@b4
    .line 683
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    #@b7
    move-result v5

    #@b8
    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setMonetaryDecimalSeparator(C)V

    #@bb
    .line 688
    :goto_2
    if-nez v4, :cond_3

    #@bd
    .line 690
    const-string/jumbo v5, "E"

    #@c0
    iput-object v5, p0, Ljava/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    #@c2
    .line 700
    :goto_3
    :try_start_0
    iget-object v5, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@c4
    invoke-static {v5}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    #@c7
    move-result-object v5

    #@c8
    iput-object v5, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@ca
    .line 650
    :goto_4
    return-void

    #@cb
    .line 670
    .end local v3    # "percentStr":Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "minusSign"

    #@ce
    const/16 v6, 0x2d

    #@d0
    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    #@d3
    move-result v5

    #@d4
    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setMinusSign(C)V

    #@d7
    goto :goto_0

    #@d8
    .line 676
    .restart local v3    # "percentStr":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "percent"

    #@db
    const/16 v6, 0x25

    #@dd
    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    #@e0
    move-result v5

    #@e1
    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setPercent(C)V

    #@e4
    goto :goto_1

    #@e5
    .line 685
    :cond_2
    const-string/jumbo v5, "monetarySeparator"

    #@e8
    invoke-virtual {v1, v5, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    #@eb
    move-result v5

    #@ec
    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setMonetaryDecimalSeparator(C)V

    #@ef
    goto :goto_2

    #@f0
    .line 691
    :cond_3
    const/4 v5, 0x3

    #@f1
    if-ge v4, v5, :cond_4

    #@f3
    .line 693
    const-string/jumbo v5, "exponential"

    #@f6
    const/16 v6, 0x45

    #@f8
    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    #@fb
    move-result v5

    #@fc
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@ff
    move-result-object v5

    #@100
    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    #@103
    goto :goto_3

    #@104
    .line 696
    :cond_4
    const-string/jumbo v5, "exponentialSeparator"

    #@107
    const-string/jumbo v6, "E"

    #@10a
    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@10d
    move-result-object v5

    #@10e
    check-cast v5, Ljava/lang/String;

    #@110
    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    #@113
    goto :goto_3

    #@114
    .line 701
    :catch_0
    move-exception v0

    #@115
    .line 702
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iput-object v7, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    #@117
    goto :goto_4
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 623
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    #@5
    move-result-object v0

    #@6
    .line 624
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v1, "currencySymbol"

    #@9
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    #@b
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@e
    .line 625
    const-string/jumbo v1, "decimalSeparator"

    #@11
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    #@14
    move-result v2

    #@15
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    #@18
    .line 626
    const-string/jumbo v1, "digit"

    #@1b
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDigit()C

    #@1e
    move-result v2

    #@1f
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    #@22
    .line 627
    const-string/jumbo v1, "exponential"

    #@25
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    #@2a
    move-result v2

    #@2b
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    #@2e
    .line 628
    const-string/jumbo v1, "exponentialSeparator"

    #@31
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    #@33
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@36
    .line 629
    const-string/jumbo v1, "groupingSeparator"

    #@39
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    #@3c
    move-result v2

    #@3d
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    #@40
    .line 630
    const-string/jumbo v1, "infinity"

    #@43
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    #@45
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@48
    .line 631
    const-string/jumbo v1, "intlCurrencySymbol"

    #@4b
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@4d
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@50
    .line 632
    const-string/jumbo v1, "monetarySeparator"

    #@53
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    #@56
    move-result v2

    #@57
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    #@5a
    .line 633
    const-string/jumbo v1, "NaN"

    #@5d
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    #@5f
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@62
    .line 634
    const-string/jumbo v1, "patternSeparator"

    #@65
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getPatternSeparator()C

    #@68
    move-result v2

    #@69
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    #@6c
    .line 635
    const-string/jumbo v1, "perMill"

    #@6f
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getPerMill()C

    #@72
    move-result v2

    #@73
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    #@76
    .line 636
    const-string/jumbo v1, "serialVersionOnStream"

    #@79
    const/4 v2, 0x3

    #@7a
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@7d
    .line 637
    const-string/jumbo v1, "zeroDigit"

    #@80
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    #@83
    move-result v2

    #@84
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    #@87
    .line 638
    const-string/jumbo v1, "locale"

    #@8a
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    #@8c
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@8f
    .line 642
    const-string/jumbo v2, "minusSign"

    #@92
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->minusSign:Ljava/lang/String;

    #@94
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@97
    move-result v1

    #@98
    if-ne v1, v4, :cond_0

    #@9a
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->minusSign:Ljava/lang/String;

    #@9c
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    #@9f
    move-result v1

    #@a0
    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    #@a3
    .line 643
    const-string/jumbo v2, "percent"

    #@a6
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->percent:Ljava/lang/String;

    #@a8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@ab
    move-result v1

    #@ac
    if-ne v1, v4, :cond_1

    #@ae
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->percent:Ljava/lang/String;

    #@b0
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    #@b3
    move-result v1

    #@b4
    :goto_1
    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    #@b7
    .line 645
    const-string/jumbo v1, "minusSignStr"

    #@ba
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    #@bd
    move-result-object v2

    #@be
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@c1
    .line 646
    const-string/jumbo v1, "percentStr"

    #@c4
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getPercentString()Ljava/lang/String;

    #@c7
    move-result-object v2

    #@c8
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@cb
    .line 647
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    #@ce
    .line 622
    return-void

    #@cf
    .line 642
    :cond_0
    const/16 v1, 0x2d

    #@d1
    goto :goto_0

    #@d2
    .line 643
    :cond_1
    const/16 v1, 0x25

    #@d4
    goto :goto_1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 153
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 154
    :catch_0
    move-exception v0

    #@6
    .line 155
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    #@8
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@b
    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 172
    if-ne p0, p1, :cond_0

    #@4
    .line 173
    return v1

    #@5
    .line 175
    :cond_0
    instance-of v3, p1, Ljava/text/DecimalFormatSymbols;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 176
    return v2

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 178
    check-cast v0, Ljava/text/DecimalFormatSymbols;

    #@d
    .line 179
    .local v0, "obj":Ljava/text/DecimalFormatSymbols;
    iget-object v3, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    #@f
    iget-object v4, v0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    #@11
    invoke-virtual {v3, v4}, Ljava/util/Currency;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_3

    #@17
    .line 180
    iget-object v3, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    #@19
    iget-object v4, v0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v3

    #@1f
    .line 179
    if-eqz v3, :cond_3

    #@21
    .line 181
    iget-char v3, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    #@23
    iget-char v4, v0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    #@25
    if-ne v3, v4, :cond_3

    #@27
    .line 182
    iget-char v3, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    #@29
    iget-char v4, v0, Ljava/text/DecimalFormatSymbols;->digit:C

    #@2b
    if-ne v3, v4, :cond_3

    #@2d
    .line 183
    iget-object v3, p0, Ljava/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    #@2f
    iget-object v4, v0, Ljava/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    #@31
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v3

    #@35
    .line 179
    if-eqz v3, :cond_3

    #@37
    .line 184
    iget-char v3, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    #@39
    iget-char v4, v0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    #@3b
    if-ne v3, v4, :cond_3

    #@3d
    .line 185
    iget-object v3, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    #@3f
    iget-object v4, v0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    #@41
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v3

    #@45
    .line 179
    if-eqz v3, :cond_3

    #@47
    .line 186
    iget-object v3, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@49
    iget-object v4, v0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@4b
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v3

    #@4f
    .line 179
    if-eqz v3, :cond_3

    #@51
    .line 187
    iget-object v3, p0, Ljava/text/DecimalFormatSymbols;->minusSign:Ljava/lang/String;

    #@53
    iget-object v4, v0, Ljava/text/DecimalFormatSymbols;->minusSign:Ljava/lang/String;

    #@55
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v3

    #@59
    .line 179
    if-eqz v3, :cond_3

    #@5b
    .line 188
    iget-char v3, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    #@5d
    iget-char v4, v0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    #@5f
    if-ne v3, v4, :cond_3

    #@61
    .line 189
    iget-object v3, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    #@63
    iget-object v4, v0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    #@65
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@68
    move-result v3

    #@69
    .line 179
    if-eqz v3, :cond_3

    #@6b
    .line 190
    iget-char v3, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    #@6d
    iget-char v4, v0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    #@6f
    if-ne v3, v4, :cond_3

    #@71
    .line 191
    iget-char v3, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    #@73
    iget-char v4, v0, Ljava/text/DecimalFormatSymbols;->perMill:C

    #@75
    if-ne v3, v4, :cond_3

    #@77
    .line 192
    iget-object v3, p0, Ljava/text/DecimalFormatSymbols;->percent:Ljava/lang/String;

    #@79
    iget-object v4, v0, Ljava/text/DecimalFormatSymbols;->percent:Ljava/lang/String;

    #@7b
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result v3

    #@7f
    .line 179
    if-eqz v3, :cond_3

    #@81
    .line 193
    iget-char v3, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    #@83
    iget-char v4, v0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    #@85
    if-ne v3, v4, :cond_2

    #@87
    .line 179
    :goto_0
    return v1

    #@88
    :cond_2
    move v1, v2

    #@89
    .line 193
    goto :goto_0

    #@8a
    :cond_3
    move v1, v2

    #@8b
    .line 179
    goto :goto_0
.end method

.method public getCurrency()Ljava/util/Currency;
    .locals 1

    #@0
    .prologue
    .line 232
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    #@2
    return-object v0
.end method

.method public getCurrencySymbol()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 250
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDecimalSeparator()C
    .locals 1

    #@0
    .prologue
    .line 259
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    #@2
    return v0
.end method

.method public getDigit()C
    .locals 1

    #@0
    .prologue
    .line 269
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    #@2
    return v0
.end method

.method public getExponentSeparator()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 392
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getGroupingSeparator()C
    .locals 1

    #@0
    .prologue
    .line 278
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    #@2
    return v0
.end method

.method public getInfinity()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 287
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getInternationalCurrencySymbol()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 241
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMinusSign()C
    .locals 2

    #@0
    .prologue
    .line 296
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->minusSign:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 297
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->minusSign:Ljava/lang/String;

    #@b
    const/4 v1, 0x0

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v0

    #@10
    return v0

    #@11
    .line 307
    :cond_0
    const/16 v0, 0x2d

    #@13
    return v0
.end method

.method public getMinusSignString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 312
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->minusSign:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMonetaryDecimalSeparator()C
    .locals 1

    #@0
    .prologue
    .line 327
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    #@2
    return v0
.end method

.method public getNaN()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 336
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPatternSeparator()C
    .locals 1

    #@0
    .prologue
    .line 346
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    #@2
    return v0
.end method

.method public getPerMill()C
    .locals 1

    #@0
    .prologue
    .line 375
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    #@2
    return v0
.end method

.method public getPercent()C
    .locals 2

    #@0
    .prologue
    .line 355
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->percent:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 356
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->percent:Ljava/lang/String;

    #@b
    const/4 v1, 0x0

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v0

    #@10
    return v0

    #@11
    .line 366
    :cond_0
    const/16 v0, 0x25

    #@13
    return v0
.end method

.method public getPercentString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 317
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->percent:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getZeroDigit()C
    .locals 1

    #@0
    .prologue
    .line 384
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 398
    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    #@2
    add-int/lit16 v0, v1, 0x20f

    #@4
    .line 399
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@6
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    #@8
    add-int v0, v1, v2

    #@a
    .line 400
    mul-int/lit8 v1, v0, 0x1f

    #@c
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    #@e
    add-int v0, v1, v2

    #@10
    .line 401
    mul-int/lit8 v1, v0, 0x1f

    #@12
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    #@14
    add-int v0, v1, v2

    #@16
    .line 402
    mul-int/lit8 v1, v0, 0x1f

    #@18
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    #@1a
    add-int v0, v1, v2

    #@1c
    .line 403
    mul-int/lit8 v1, v0, 0x1f

    #@1e
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->percent:Ljava/lang/String;

    #@20
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@23
    move-result v2

    #@24
    add-int v0, v1, v2

    #@26
    .line 404
    mul-int/lit8 v1, v0, 0x1f

    #@28
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    #@2a
    add-int v0, v1, v2

    #@2c
    .line 405
    mul-int/lit8 v1, v0, 0x1f

    #@2e
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    #@30
    add-int v0, v1, v2

    #@32
    .line 406
    mul-int/lit8 v1, v0, 0x1f

    #@34
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->minusSign:Ljava/lang/String;

    #@36
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@39
    move-result v2

    #@3a
    add-int v0, v1, v2

    #@3c
    .line 407
    mul-int/lit8 v1, v0, 0x1f

    #@3e
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    #@40
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@43
    move-result v2

    #@44
    add-int v0, v1, v2

    #@46
    .line 408
    mul-int/lit8 v1, v0, 0x1f

    #@48
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    #@4a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@4d
    move-result v2

    #@4e
    add-int v0, v1, v2

    #@50
    .line 409
    mul-int/lit8 v1, v0, 0x1f

    #@52
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    #@54
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@57
    move-result v2

    #@58
    add-int v0, v1, v2

    #@5a
    .line 410
    mul-int/lit8 v1, v0, 0x1f

    #@5c
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    #@5e
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@61
    move-result v2

    #@62
    add-int v0, v1, v2

    #@64
    .line 411
    mul-int/lit8 v1, v0, 0x1f

    #@66
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@68
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@6b
    move-result v2

    #@6c
    add-int v0, v1, v2

    #@6e
    .line 412
    return v0
.end method

.method public setCurrency(Ljava/util/Currency;)V
    .locals 2
    .param p1, "currency"    # Ljava/util/Currency;

    #@0
    .prologue
    .line 428
    if-nez p1, :cond_0

    #@2
    .line 429
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "currency == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 431
    :cond_0
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    #@d
    .line 432
    invoke-virtual {p1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@13
    .line 433
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    #@15
    invoke-virtual {p1, v0}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    #@1b
    .line 427
    return-void
.end method

.method public setCurrencySymbol(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 474
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    #@2
    .line 473
    return-void
.end method

.method public setDecimalSeparator(C)V
    .locals 0
    .param p1, "value"    # C

    #@0
    .prologue
    .line 484
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    #@2
    .line 483
    return-void
.end method

.method public setDigit(C)V
    .locals 0
    .param p1, "value"    # C

    #@0
    .prologue
    .line 494
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    #@2
    .line 493
    return-void
.end method

.method public setExponentSeparator(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 594
    if-nez p1, :cond_0

    #@2
    .line 595
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "value == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 597
    :cond_0
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    #@d
    .line 593
    return-void
.end method

.method public setGroupingSeparator(C)V
    .locals 0
    .param p1, "value"    # C

    #@0
    .prologue
    .line 504
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    #@2
    .line 503
    return-void
.end method

.method public setInfinity(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 514
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    #@2
    .line 513
    return-void
.end method

.method public setInternationalCurrencySymbol(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 448
    if-nez p1, :cond_0

    #@3
    .line 449
    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    #@5
    .line 450
    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@7
    .line 451
    return-void

    #@8
    .line 454
    :cond_0
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@a
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 455
    return-void

    #@11
    .line 459
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    #@14
    move-result-object v1

    #@15
    iput-object v1, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    #@17
    .line 460
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    #@19
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    #@1b
    invoke-virtual {v1, v2}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    iput-object v1, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 464
    :goto_0
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@23
    .line 447
    return-void

    #@24
    .line 461
    :catch_0
    move-exception v0

    #@25
    .line 462
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    #@27
    goto :goto_0
.end method

.method public setMinusSign(C)V
    .locals 1
    .param p1, "value"    # C

    #@0
    .prologue
    .line 524
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->minusSign:Ljava/lang/String;

    #@6
    .line 523
    return-void
.end method

.method public setMonetaryDecimalSeparator(C)V
    .locals 0
    .param p1, "value"    # C

    #@0
    .prologue
    .line 535
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    #@2
    .line 534
    return-void
.end method

.method public setNaN(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 545
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    #@2
    .line 544
    return-void
.end method

.method public setPatternSeparator(C)V
    .locals 0
    .param p1, "value"    # C

    #@0
    .prologue
    .line 556
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    #@2
    .line 555
    return-void
.end method

.method public setPerMill(C)V
    .locals 0
    .param p1, "value"    # C

    #@0
    .prologue
    .line 576
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    #@2
    .line 575
    return-void
.end method

.method public setPercent(C)V
    .locals 1
    .param p1, "value"    # C

    #@0
    .prologue
    .line 566
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->percent:Ljava/lang/String;

    #@6
    .line 565
    return-void
.end method

.method public setZeroDigit(C)V
    .locals 0
    .param p1, "value"    # C

    #@0
    .prologue
    .line 586
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    #@2
    .line 585
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    .line 199
    const-string/jumbo v1, "[currency="

    #@14
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 199
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    #@1a
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    .line 200
    const-string/jumbo v1, ",currencySymbol="

    #@21
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 200
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    #@27
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    .line 201
    const-string/jumbo v1, ",decimalSeparator="

    #@2e
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    .line 201
    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    #@34
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    .line 202
    const-string/jumbo v1, ",digit="

    #@3b
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    .line 202
    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    #@41
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    .line 203
    const-string/jumbo v1, ",exponentSeparator="

    #@48
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    .line 203
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    #@4e
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v0

    #@52
    .line 204
    const-string/jumbo v1, ",groupingSeparator="

    #@55
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v0

    #@59
    .line 204
    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    #@5b
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v0

    #@5f
    .line 205
    const-string/jumbo v1, ",infinity="

    #@62
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v0

    #@66
    .line 205
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    #@68
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v0

    #@6c
    .line 206
    const-string/jumbo v1, ",intlCurrencySymbol="

    #@6f
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v0

    #@73
    .line 206
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@75
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v0

    #@79
    .line 207
    const-string/jumbo v1, ",minusSign="

    #@7c
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v0

    #@80
    .line 207
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->minusSign:Ljava/lang/String;

    #@82
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v0

    #@86
    .line 208
    const-string/jumbo v1, ",monetarySeparator="

    #@89
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v0

    #@8d
    .line 208
    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    #@8f
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@92
    move-result-object v0

    #@93
    .line 209
    const-string/jumbo v1, ",NaN="

    #@96
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v0

    #@9a
    .line 209
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    #@9c
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v0

    #@a0
    .line 210
    const-string/jumbo v1, ",patternSeparator="

    #@a3
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v0

    #@a7
    .line 210
    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    #@a9
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v0

    #@ad
    .line 211
    const-string/jumbo v1, ",perMill="

    #@b0
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v0

    #@b4
    .line 211
    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    #@b6
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v0

    #@ba
    .line 212
    const-string/jumbo v1, ",percent="

    #@bd
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v0

    #@c1
    .line 212
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->percent:Ljava/lang/String;

    #@c3
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v0

    #@c7
    .line 213
    const-string/jumbo v1, ",zeroDigit="

    #@ca
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v0

    #@ce
    .line 213
    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    #@d0
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v0

    #@d4
    .line 214
    const-string/jumbo v1, "]"

    #@d7
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v0

    #@db
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@de
    move-result-object v0

    #@df
    return-object v0
.end method
