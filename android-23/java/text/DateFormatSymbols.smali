.class public Ljava/text/DateFormatSymbols;
.super Ljava/lang/Object;
.source "DateFormatSymbols.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = -0x53198e36cae8e83eL


# instance fields
.field ampms:[Ljava/lang/String;

.field eras:[Ljava/lang/String;

.field private localPatternChars:Ljava/lang/String;

.field private final locale:Ljava/util/Locale;

.field transient localeData:Llibcore/icu/LocaleData;

.field months:[Ljava/lang/String;

.field shortMonths:[Ljava/lang/String;

.field shortWeekdays:[Ljava/lang/String;

.field weekdays:[Ljava/lang/String;

.field private zoneStrings:[[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 92
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    #@7
    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 103
    invoke-static {p1}, Llibcore/icu/LocaleData;->mapInvalidAndNullLocales(Ljava/util/Locale;)Ljava/util/Locale;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    #@9
    .line 104
    const-string/jumbo v0, "GyMdkHmsSEDFwWahKzZLc"

    #@c
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    #@e
    .line 106
    invoke-static {p1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    #@14
    .line 107
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    #@16
    iget-object v0, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    #@18
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    #@1a
    .line 108
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    #@1c
    iget-object v0, v0, Llibcore/icu/LocaleData;->eras:[Ljava/lang/String;

    #@1e
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    #@20
    .line 109
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    #@22
    iget-object v0, v0, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    #@24
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    #@26
    .line 110
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    #@28
    iget-object v0, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    #@2a
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    #@2c
    .line 111
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    #@2e
    iget-object v0, v0, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    #@30
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    #@32
    .line 112
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    #@34
    iget-object v0, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    #@36
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    #@38
    .line 102
    return-void
.end method

.method private static clone2dStringArray([[Ljava/lang/String;)[[Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [[Ljava/lang/String;

    #@0
    .prologue
    .line 345
    array-length v2, p0

    #@1
    new-array v1, v2, [[Ljava/lang/String;

    #@3
    .line 346
    .local v1, "result":[[Ljava/lang/String;
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@5
    if-ge v0, v2, :cond_0

    #@7
    .line 347
    aget-object v2, p0, v0

    #@9
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, [Ljava/lang/String;

    #@f
    aput-object v2, v1, v0

    #@11
    .line 346
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 349
    :cond_0
    return-object v1
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 148
    invoke-static {}, Llibcore/icu/ICU;->getAvailableDateFormatSymbolsLocales()[Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static final getInstance()Ljava/text/DateFormatSymbols;
    .locals 1

    #@0
    .prologue
    .line 123
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static final getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 135
    if-nez p0, :cond_0

    #@2
    .line 136
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "locale == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 138
    :cond_0
    new-instance v0, Ljava/text/DateFormatSymbols;

    #@d
    invoke-direct {v0, p0}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    #@10
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 152
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 154
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    #@5
    .line 155
    .local v0, "locale":Ljava/util/Locale;
    if-nez v0, :cond_0

    #@7
    .line 157
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@a
    move-result-object v0

    #@b
    .line 159
    :cond_0
    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@e
    move-result-object v1

    #@f
    iput-object v1, p0, Ljava/text/DateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    #@11
    .line 151
    return-void
.end method

.method private static timeZoneStringsEqual(Ljava/text/DateFormatSymbols;Ljava/text/DateFormatSymbols;)Z
    .locals 2
    .param p0, "lhs"    # Ljava/text/DateFormatSymbols;
    .param p1, "rhs"    # Ljava/text/DateFormatSymbols;

    #@0
    .prologue
    .line 209
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    #@6
    if-nez v0, :cond_0

    #@8
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    #@a
    iget-object v1, p1, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    #@c
    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 210
    const/4 v0, 0x1

    #@13
    return v0

    #@14
    .line 213
    :cond_0
    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-static {v0, v1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@1f
    move-result v0

    #@20
    return v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 163
    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    #@3
    .line 164
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@6
    .line 162
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 170
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 171
    :catch_0
    move-exception v0

    #@6
    .line 172
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    #@8
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@b
    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 189
    if-ne p0, p1, :cond_0

    #@3
    .line 190
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 192
    :cond_0
    instance-of v2, p1, Ljava/text/DateFormatSymbols;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 193
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 195
    check-cast v0, Ljava/text/DateFormatSymbols;

    #@d
    .line 196
    .local v0, "rhs":Ljava/text/DateFormatSymbols;
    iget-object v2, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    #@f
    iget-object v3, v0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_2

    #@17
    .line 197
    iget-object v2, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    #@19
    iget-object v3, v0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    #@1b
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@1e
    move-result v2

    #@1f
    .line 196
    if-eqz v2, :cond_2

    #@21
    .line 198
    iget-object v2, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    #@23
    iget-object v3, v0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    #@25
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@28
    move-result v2

    #@29
    .line 196
    if-eqz v2, :cond_2

    #@2b
    .line 199
    iget-object v2, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    #@2d
    iget-object v3, v0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    #@2f
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@32
    move-result v2

    #@33
    .line 196
    if-eqz v2, :cond_2

    #@35
    .line 200
    iget-object v2, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    #@37
    iget-object v3, v0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    #@39
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@3c
    move-result v2

    #@3d
    .line 196
    if-eqz v2, :cond_2

    #@3f
    .line 201
    iget-object v2, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    #@41
    iget-object v3, v0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    #@43
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@46
    move-result v2

    #@47
    .line 196
    if-eqz v2, :cond_2

    #@49
    .line 202
    iget-object v2, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    #@4b
    iget-object v3, v0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    #@4d
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@50
    move-result v2

    #@51
    .line 196
    if-eqz v2, :cond_2

    #@53
    .line 203
    invoke-static {p0, v0}, Ljava/text/DateFormatSymbols;->timeZoneStringsEqual(Ljava/text/DateFormatSymbols;Ljava/text/DateFormatSymbols;)Z

    #@56
    move-result v1

    #@57
    .line 196
    :cond_2
    return v1
.end method

.method public getAmPmStrings()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 240
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public getEras()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 251
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public getLocalPatternChars()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 259
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMonths()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 270
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public getShortMonths()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 281
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public getShortWeekdays()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 292
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Ljava/lang/String;

    #@8
    return-object v0
.end method

.method getTimeZoneDisplayName(Ljava/util/TimeZone;ZI)Ljava/lang/String;
    .locals 4
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "daylight"    # Z
    .param p3, "style"    # I

    #@0
    .prologue
    .line 501
    if-eqz p3, :cond_0

    #@2
    const/4 v1, 0x1

    #@3
    if-eq p3, v1, :cond_0

    #@5
    .line 502
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "Bad style: "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v1

    #@1f
    .line 507
    :cond_0
    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    .line 508
    .local v0, "zoneStrings":[[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-static {v0, v1, p2, p3}, Llibcore/icu/TimeZoneNames;->getDisplayName([[Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    return-object v1
.end method

.method public getWeekdays()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 303
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public getZoneStrings()[[Ljava/lang/String;
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x3

    #@1
    const/4 v9, 0x2

    #@2
    const/4 v8, 0x1

    #@3
    const/4 v4, 0x0

    #@4
    .line 323
    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    invoke-static {v3}, Ljava/text/DateFormatSymbols;->clone2dStringArray([[Ljava/lang/String;)[[Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 326
    .local v1, "result":[[Ljava/lang/String;
    array-length v5, v1

    #@d
    move v3, v4

    #@e
    :goto_0
    if-ge v3, v5, :cond_4

    #@10
    aget-object v2, v1, v3

    #@12
    .line 327
    .local v2, "zone":[Ljava/lang/String;
    aget-object v0, v2, v4

    #@14
    .line 328
    .local v0, "id":Ljava/lang/String;
    aget-object v6, v2, v8

    #@16
    if-nez v6, :cond_0

    #@18
    .line 329
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@1b
    move-result-object v6

    #@1c
    iget-object v7, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    #@1e
    invoke-virtual {v6, v4, v8, v7}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    #@21
    move-result-object v6

    #@22
    aput-object v6, v2, v8

    #@24
    .line 331
    :cond_0
    aget-object v6, v2, v9

    #@26
    if-nez v6, :cond_1

    #@28
    .line 332
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@2b
    move-result-object v6

    #@2c
    iget-object v7, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    #@2e
    invoke-virtual {v6, v4, v4, v7}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    #@31
    move-result-object v6

    #@32
    aput-object v6, v2, v9

    #@34
    .line 334
    :cond_1
    aget-object v6, v2, v10

    #@36
    if-nez v6, :cond_2

    #@38
    .line 335
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@3b
    move-result-object v6

    #@3c
    iget-object v7, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    #@3e
    invoke-virtual {v6, v8, v8, v7}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    #@41
    move-result-object v6

    #@42
    aput-object v6, v2, v10

    #@44
    .line 337
    :cond_2
    const/4 v6, 0x4

    #@45
    aget-object v6, v2, v6

    #@47
    if-nez v6, :cond_3

    #@49
    .line 338
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@4c
    move-result-object v6

    #@4d
    iget-object v7, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    #@4f
    invoke-virtual {v6, v8, v4, v7}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    #@52
    move-result-object v6

    #@53
    const/4 v7, 0x4

    #@54
    aput-object v6, v2, v7

    #@56
    .line 326
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@58
    goto :goto_0

    #@59
    .line 341
    .end local v0    # "id":Ljava/lang/String;
    .end local v2    # "zone":[Ljava/lang/String;
    :cond_4
    return-object v1
.end method

.method public hashCode()I
    .locals 10

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 354
    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    #@4
    move-result-object v4

    #@5
    .line 356
    .local v4, "zoneStrings":[[Ljava/lang/String;
    iget-object v6, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    #@7
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    #@a
    move-result v2

    #@b
    .line 357
    .local v2, "hashCode":I
    iget-object v7, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    #@d
    array-length v8, v7

    #@e
    move v6, v5

    #@f
    :goto_0
    if-ge v6, v8, :cond_0

    #@11
    aget-object v0, v7, v6

    #@13
    .line 358
    .local v0, "element":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@16
    move-result v9

    #@17
    add-int/2addr v2, v9

    #@18
    .line 357
    add-int/lit8 v6, v6, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 360
    .end local v0    # "element":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    #@1d
    array-length v8, v7

    #@1e
    move v6, v5

    #@1f
    :goto_1
    if-ge v6, v8, :cond_1

    #@21
    aget-object v0, v7, v6

    #@23
    .line 361
    .restart local v0    # "element":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@26
    move-result v9

    #@27
    add-int/2addr v2, v9

    #@28
    .line 360
    add-int/lit8 v6, v6, 0x1

    #@2a
    goto :goto_1

    #@2b
    .line 363
    .end local v0    # "element":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    #@2d
    array-length v8, v7

    #@2e
    move v6, v5

    #@2f
    :goto_2
    if-ge v6, v8, :cond_2

    #@31
    aget-object v0, v7, v6

    #@33
    .line 364
    .restart local v0    # "element":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@36
    move-result v9

    #@37
    add-int/2addr v2, v9

    #@38
    .line 363
    add-int/lit8 v6, v6, 0x1

    #@3a
    goto :goto_2

    #@3b
    .line 366
    .end local v0    # "element":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    #@3d
    array-length v8, v7

    #@3e
    move v6, v5

    #@3f
    :goto_3
    if-ge v6, v8, :cond_3

    #@41
    aget-object v0, v7, v6

    #@43
    .line 367
    .restart local v0    # "element":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@46
    move-result v9

    #@47
    add-int/2addr v2, v9

    #@48
    .line 366
    add-int/lit8 v6, v6, 0x1

    #@4a
    goto :goto_3

    #@4b
    .line 369
    .end local v0    # "element":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    #@4d
    array-length v8, v7

    #@4e
    move v6, v5

    #@4f
    :goto_4
    if-ge v6, v8, :cond_4

    #@51
    aget-object v0, v7, v6

    #@53
    .line 370
    .restart local v0    # "element":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@56
    move-result v9

    #@57
    add-int/2addr v2, v9

    #@58
    .line 369
    add-int/lit8 v6, v6, 0x1

    #@5a
    goto :goto_4

    #@5b
    .line 372
    .end local v0    # "element":Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    #@5d
    array-length v8, v7

    #@5e
    move v6, v5

    #@5f
    :goto_5
    if-ge v6, v8, :cond_5

    #@61
    aget-object v0, v7, v6

    #@63
    .line 373
    .restart local v0    # "element":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@66
    move-result v9

    #@67
    add-int/2addr v2, v9

    #@68
    .line 372
    add-int/lit8 v6, v6, 0x1

    #@6a
    goto :goto_5

    #@6b
    .line 375
    .end local v0    # "element":Ljava/lang/String;
    :cond_5
    array-length v6, v4

    #@6c
    :goto_6
    if-ge v5, v6, :cond_8

    #@6e
    aget-object v1, v4, v5

    #@70
    .line 376
    .local v1, "element":[Ljava/lang/String;
    const/4 v3, 0x0

    #@71
    .local v3, "j":I
    :goto_7
    array-length v7, v1

    #@72
    if-ge v3, v7, :cond_7

    #@74
    .line 377
    aget-object v7, v1, v3

    #@76
    if-eqz v7, :cond_6

    #@78
    .line 378
    aget-object v7, v1, v3

    #@7a
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    #@7d
    move-result v7

    #@7e
    add-int/2addr v2, v7

    #@7f
    .line 376
    :cond_6
    add-int/lit8 v3, v3, 0x1

    #@81
    goto :goto_7

    #@82
    .line 375
    :cond_7
    add-int/lit8 v5, v5, 0x1

    #@84
    goto :goto_6

    #@85
    .line 382
    .end local v1    # "element":[Ljava/lang/String;
    .end local v3    # "j":I
    :cond_8
    return v2
.end method

.method declared-synchronized internalZoneStrings()[[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 80
    :try_start_0
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 81
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    #@7
    invoke-static {v0}, Llibcore/icu/TimeZoneNames;->getZoneStrings(Ljava/util/Locale;)[[Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    #@d
    .line 83
    :cond_0
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit p0

    #@10
    return-object v0

    #@11
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
.end method

.method public setAmPmStrings([Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 394
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, [Ljava/lang/String;

    #@6
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    #@8
    .line 393
    return-void
.end method

.method public setEras([Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 406
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, [Ljava/lang/String;

    #@6
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    #@8
    .line 405
    return-void
.end method

.method public setLocalPatternChars(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 419
    if-nez p1, :cond_0

    #@2
    .line 420
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "data == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 422
    :cond_0
    iput-object p1, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    #@d
    .line 418
    return-void
.end method

.method public setMonths([Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 434
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, [Ljava/lang/String;

    #@6
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    #@8
    .line 433
    return-void
.end method

.method public setShortMonths([Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 446
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, [Ljava/lang/String;

    #@6
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    #@8
    .line 445
    return-void
.end method

.method public setShortWeekdays([Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 458
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, [Ljava/lang/String;

    #@6
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    #@8
    .line 457
    return-void
.end method

.method public setWeekdays([Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 470
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, [Ljava/lang/String;

    #@6
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    #@8
    .line 469
    return-void
.end method

.method public setZoneStrings([[Ljava/lang/String;)V
    .locals 5
    .param p1, "zoneStrings"    # [[Ljava/lang/String;

    #@0
    .prologue
    .line 480
    if-nez p1, :cond_0

    #@2
    .line 481
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "zoneStrings == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 483
    :cond_0
    const/4 v1, 0x0

    #@c
    array-length v2, p1

    #@d
    :goto_0
    if-ge v1, v2, :cond_2

    #@f
    aget-object v0, p1, v1

    #@11
    .line 484
    .local v0, "row":[Ljava/lang/String;
    array-length v3, v0

    #@12
    const/4 v4, 0x5

    #@13
    if-ge v3, v4, :cond_1

    #@15
    .line 485
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@17
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    const-string/jumbo v3, ".length < 5"

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@32
    throw v1

    #@33
    .line 483
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_0

    #@36
    .line 488
    .end local v0    # "row":[Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Ljava/text/DateFormatSymbols;->clone2dStringArray([[Ljava/lang/String;)[[Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    iput-object v1, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    #@3c
    .line 479
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->getClass()Ljava/lang/Class;

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
    .line 221
    const-string/jumbo v1, "[amPmStrings="

    #@14
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 221
    iget-object v1, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    #@1a
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    .line 222
    const-string/jumbo v1, ",eras="

    #@25
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    .line 222
    iget-object v1, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    #@2b
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 223
    const-string/jumbo v1, ",localPatternChars="

    #@36
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    .line 223
    iget-object v1, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    #@3c
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 224
    const-string/jumbo v1, ",months="

    #@43
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    .line 224
    iget-object v1, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    #@49
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v0

    #@51
    .line 225
    const-string/jumbo v1, ",shortMonths="

    #@54
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v0

    #@58
    .line 225
    iget-object v1, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    #@5a
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@5d
    move-result-object v1

    #@5e
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v0

    #@62
    .line 226
    const-string/jumbo v1, ",shortWeekdays="

    #@65
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v0

    #@69
    .line 226
    iget-object v1, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    #@6b
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@6e
    move-result-object v1

    #@6f
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v0

    #@73
    .line 227
    const-string/jumbo v1, ",weekdays="

    #@76
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v0

    #@7a
    .line 227
    iget-object v1, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    #@7c
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@7f
    move-result-object v1

    #@80
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v0

    #@84
    .line 228
    const-string/jumbo v1, ",zoneStrings=["

    #@87
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v0

    #@8b
    .line 228
    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    #@8e
    move-result-object v1

    #@8f
    const/4 v2, 0x0

    #@90
    aget-object v1, v1, v2

    #@92
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@95
    move-result-object v1

    #@96
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v0

    #@9a
    .line 228
    const-string/jumbo v1, "...]"

    #@9d
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v0

    #@a1
    .line 229
    const-string/jumbo v1, "]"

    #@a4
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v0

    #@a8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v0

    #@ac
    return-object v0
.end method
