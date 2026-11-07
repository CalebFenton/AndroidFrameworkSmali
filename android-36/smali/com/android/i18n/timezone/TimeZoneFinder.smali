.class public final Lcom/android/i18n/timezone/TimeZoneFinder;
.super Ljava/lang/Object;
.source "TimeZoneFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/timezone/TimeZoneFinder$TimeZonesValidator;,
        Lcom/android/i18n/timezone/TimeZoneFinder$TimeZonesProcessor;,
        Lcom/android/i18n/timezone/TimeZoneFinder$IanaVersionExtractor;,
        Lcom/android/i18n/timezone/TimeZoneFinder$CountryZonesLookupExtractor;,
        Lcom/android/i18n/timezone/TimeZoneFinder$SelectiveCountryTimeZonesExtractor;
    }
.end annotation


# static fields
.field private static final blacklist COUNTRY_CODE_ATTRIBUTE:Ljava/lang/String; = "code"

.field private static final blacklist COUNTRY_ELEMENT:Ljava/lang/String; = "country"

.field private static final blacklist COUNTRY_ZONES_ELEMENT:Ljava/lang/String; = "countryzones"

.field private static final blacklist DEFAULT_TIME_ZONE_BOOST_ATTRIBUTE:Ljava/lang/String; = "defaultBoost"

.field private static final blacklist DEFAULT_TIME_ZONE_ID_ATTRIBUTE:Ljava/lang/String; = "default"

.field private static final blacklist EVER_USES_UTC_ATTRIBUTE:Ljava/lang/String; = "everutc"

.field private static final blacklist IANA_VERSION_ATTRIBUTE:Ljava/lang/String; = "ianaversion"

.field private static final blacklist TIMEZONES_ELEMENT:Ljava/lang/String; = "timezones"

.field public static final blacklist TZLOOKUP_FILE_NAME:Ljava/lang/String; = "tzlookup.xml"

.field private static final blacklist ZONE_ALTERNATIVE_IDS_ATTRIBUTE:Ljava/lang/String; = "alts"

.field private static final blacklist ZONE_ID_ELEMENT:Ljava/lang/String; = "id"

.field private static final blacklist ZONE_NOT_USED_AFTER_ATTRIBUTE:Ljava/lang/String; = "notafter"

.field private static final blacklist ZONE_SHOW_IN_PICKER_ATTRIBUTE:Ljava/lang/String; = "picker"

.field private static blacklist instance:Lcom/android/i18n/timezone/TimeZoneFinder;


# instance fields
.field private blacklist lastCountryTimeZones:Lcom/android/i18n/timezone/CountryTimeZones;

.field private final blacklist xmlSource:Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier;


# direct methods
.method private constructor blacklist <init>(Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier;)V
    .registers 2
    .param p1, "xmlSource"    # Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/android/i18n/timezone/TimeZoneFinder;->xmlSource:Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier;

    .line 93
    return-void
.end method

.method public static blacklist test-api createInstance(Ljava/lang/String;)Lcom/android/i18n/timezone/TimeZoneFinder;
    .registers 3
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier;->forFile(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier;

    move-result-object v0

    .line 145
    .local v0, "xmlSupplier":Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier;
    new-instance v1, Lcom/android/i18n/timezone/TimeZoneFinder;

    invoke-direct {v1, v0}, Lcom/android/i18n/timezone/TimeZoneFinder;-><init>(Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier;)V

    return-object v1
.end method

.method public static blacklist createInstanceForTests(Ljava/lang/String;)Lcom/android/i18n/timezone/TimeZoneFinder;
    .registers 3
    .param p0, "xml"    # Ljava/lang/String;

    .line 151
    new-instance v0, Lcom/android/i18n/timezone/TimeZoneFinder;

    invoke-static {p0}, Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier;->forString(Ljava/lang/String;)Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/i18n/timezone/TimeZoneFinder;-><init>(Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier;)V

    return-object v0
.end method

.method public static varargs blacklist createInstanceWithFallback([Ljava/lang/String;)Lcom/android/i18n/timezone/TimeZoneFinder;
    .registers 6
    .param p0, "tzLookupFilePaths"    # [Ljava/lang/String;

    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, "lastException":Ljava/io/IOException;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_16

    aget-object v3, p0, v2

    .line 120
    .local v3, "tzLookupFilePath":Ljava/lang/String;
    :try_start_7
    invoke-static {v3}, Lcom/android/i18n/timezone/TimeZoneFinder;->createInstance(Ljava/lang/String;)Lcom/android/i18n/timezone/TimeZoneFinder;

    move-result-object v1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_b} :catch_c

    return-object v1

    .line 121
    :catch_c
    move-exception v4

    .line 125
    .local v4, "e":Ljava/io/IOException;
    if-eqz v0, :cond_12

    .line 126
    invoke-virtual {v4, v0}, Ljava/io/IOException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 128
    :cond_12
    move-object v0, v4

    .line 115
    .end local v3    # "tzLookupFilePath":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 132
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No valid file found in set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Printing exceptions and falling back to empty map."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/i18n/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    const-string v1, "<timezones><countryzones /></timezones>"

    invoke-static {v1}, Lcom/android/i18n/timezone/TimeZoneFinder;->createInstanceForTests(Ljava/lang/String;)Lcom/android/i18n/timezone/TimeZoneFinder;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist test-api getInstance()Lcom/android/i18n/timezone/TimeZoneFinder;
    .registers 3

    .line 102
    const-class v0, Lcom/android/i18n/timezone/TimeZoneFinder;

    monitor-enter v0

    .line 103
    :try_start_3
    sget-object v1, Lcom/android/i18n/timezone/TimeZoneFinder;->instance:Lcom/android/i18n/timezone/TimeZoneFinder;

    if-nez v1, :cond_13

    .line 104
    const-string v1, "tzlookup.xml"

    .line 105
    invoke-static {v1}, Lcom/android/i18n/timezone/TimeZoneDataFiles;->getTimeZoneFilePaths(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "tzLookupFilePaths":[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/i18n/timezone/TimeZoneFinder;->createInstanceWithFallback([Ljava/lang/String;)Lcom/android/i18n/timezone/TimeZoneFinder;

    move-result-object v2

    sput-object v2, Lcom/android/i18n/timezone/TimeZoneFinder;->instance:Lcom/android/i18n/timezone/TimeZoneFinder;

    .line 108
    .end local v1    # "tzLookupFilePaths":[Ljava/lang/String;
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_17

    .line 109
    sget-object v0, Lcom/android/i18n/timezone/TimeZoneFinder;->instance:Lcom/android/i18n/timezone/TimeZoneFinder;

    return-object v0

    .line 108
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private static blacklist internStrings(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 387
    .local p0, "stringsToIntern":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 388
    return-object p0

    .line 391
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 392
    .local v0, "internedStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 393
    .local v2, "stringToIntern":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    .end local v2    # "stringToIntern":Ljava/lang/String;
    goto :goto_14

    .line 395
    :cond_28
    return-object v0
.end method

.method private static blacklist parseTimeZoneMappings(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .registers 9
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v0, "timeZoneMappings":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;>;"
    :goto_5
    const-string v1, "id"

    invoke-static {p0, v1}, Lcom/android/i18n/timezone/XmlUtils;->findNextStartTagOrEndTagNoRecurse(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 355
    nop

    .line 356
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 355
    const-string v3, "picker"

    invoke-static {p0, v3, v2}, Lcom/android/i18n/timezone/XmlUtils;->parseBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 357
    .local v2, "showInPicker":Z
    const-string v3, "notafter"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/android/i18n/timezone/XmlUtils;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v3

    .line 359
    .local v3, "notUsedAfter":Ljava/lang/Long;
    nop

    .line 360
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 359
    const-string v5, "alts"

    invoke-static {p0, v5, v4}, Lcom/android/i18n/timezone/XmlUtils;->parseStringListAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 361
    .local v4, "alternativeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/android/i18n/timezone/XmlUtils;->consumeText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v5

    .line 364
    .local v5, "zoneIdString":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/android/i18n/timezone/XmlUtils;->checkOnEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 367
    if-eqz v5, :cond_4f

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4f

    .line 374
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "internedZoneIdString":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/i18n/timezone/TimeZoneFinder;->internStrings(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 377
    .local v6, "internedAlternativeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    invoke-direct {v7, v1, v2, v3, v6}, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;-><init>(Ljava/lang/String;ZLjava/lang/Long;Ljava/util/List;)V

    .line 379
    .local v7, "timeZoneMapping":Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    .end local v1    # "internedZoneIdString":Ljava/lang/String;
    .end local v2    # "showInPicker":Z
    .end local v3    # "notUsedAfter":Ljava/lang/Long;
    .end local v4    # "alternativeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "zoneIdString":Ljava/lang/String;
    .end local v6    # "internedAlternativeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "timeZoneMapping":Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;
    goto :goto_5

    .line 368
    .restart local v2    # "showInPicker":Z
    .restart local v3    # "notUsedAfter":Ljava/lang/Long;
    .restart local v4    # "alternativeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "zoneIdString":Ljava/lang/String;
    :cond_4f
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing text for id): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 369
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 383
    .end local v2    # "showInPicker":Z
    .end local v3    # "notUsedAfter":Ljava/lang/Long;
    .end local v4    # "alternativeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "zoneIdString":Ljava/lang/String;
    :cond_6c
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist processCountryZones(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/i18n/timezone/TimeZoneFinder$TimeZonesProcessor;)Z
    .registers 12
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "processor"    # Lcom/android/i18n/timezone/TimeZoneFinder$TimeZonesProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 306
    nop

    :goto_1
    const-string v0, "country"

    invoke-static {p0, v0}, Lcom/android/i18n/timezone/XmlUtils;->findNextStartTagOrEndTagNoRecurse(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 307
    const-string v1, "code"

    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 309
    .local v4, "code":Ljava/lang/String;
    if-eqz v4, :cond_94

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_94

    .line 314
    const-string v1, "default"

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 316
    .local v5, "defaultTimeZoneId":Ljava/lang/String;
    if-eqz v5, :cond_76

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_76

    .line 321
    nop

    .line 322
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 321
    const-string v6, "defaultBoost"

    invoke-static {p0, v6, v3}, Lcom/android/i18n/timezone/XmlUtils;->parseBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 324
    .local v6, "defaultTimeZoneBoost":Z
    const-string v3, "everutc"

    invoke-static {p0, v3, v2}, Lcom/android/i18n/timezone/XmlUtils;->parseBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    .line 326
    .local v2, "everUsesUtc":Ljava/lang/Boolean;
    if-eqz v2, :cond_58

    .line 333
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    .line 334
    .local v9, "debugInfo":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/i18n/timezone/TimeZoneFinder;->parseTimeZoneMappings(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v8

    .line 335
    .local v8, "timeZoneMappings":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;>;"
    nop

    .line 336
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 335
    move-object v3, p1

    .end local p1    # "processor":Lcom/android/i18n/timezone/TimeZoneFinder$TimeZonesProcessor;
    .local v3, "processor":Lcom/android/i18n/timezone/TimeZoneFinder$TimeZonesProcessor;
    invoke-interface/range {v3 .. v9}, Lcom/android/i18n/timezone/TimeZoneFinder$TimeZonesProcessor;->processCountryZones(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/List;Ljava/lang/String;)Z

    move-result p1

    .line 337
    .local p1, "result":Z
    if-nez p1, :cond_53

    .line 338
    return v1

    .line 342
    :cond_53
    invoke-static {p0, v0}, Lcom/android/i18n/timezone/XmlUtils;->checkOnEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 343
    .end local v2    # "everUsesUtc":Ljava/lang/Boolean;
    .end local v4    # "code":Ljava/lang/String;
    .end local v5    # "defaultTimeZoneId":Ljava/lang/String;
    .end local v6    # "defaultTimeZoneBoost":Z
    .end local v8    # "timeZoneMappings":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;>;"
    .end local v9    # "debugInfo":Ljava/lang/String;
    .end local p1    # "result":Z
    move-object p1, v3

    goto :goto_1

    .line 328
    .end local v3    # "processor":Lcom/android/i18n/timezone/TimeZoneFinder$TimeZonesProcessor;
    .restart local v2    # "everUsesUtc":Ljava/lang/Boolean;
    .restart local v4    # "code":Ljava/lang/String;
    .restart local v5    # "defaultTimeZoneId":Ljava/lang/String;
    .restart local v6    # "defaultTimeZoneBoost":Z
    .local p1, "processor":Lcom/android/i18n/timezone/TimeZoneFinder$TimeZonesProcessor;
    :cond_58
    move-object v3, p1

    .end local p1    # "processor":Lcom/android/i18n/timezone/TimeZoneFinder$TimeZonesProcessor;
    .restart local v3    # "processor":Lcom/android/i18n/timezone/TimeZoneFinder$TimeZonesProcessor;
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to find UTC hint attribute (everutc): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 330
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 316
    .end local v2    # "everUsesUtc":Ljava/lang/Boolean;
    .end local v3    # "processor":Lcom/android/i18n/timezone/TimeZoneFinder$TimeZonesProcessor;
    .end local v6    # "defaultTimeZoneBoost":Z
    .restart local p1    # "processor":Lcom/android/i18n/timezone/TimeZoneFinder$TimeZonesProcessor;
    :cond_76
    move-object v3, p1

    .line 317
    .end local p1    # "processor":Lcom/android/i18n/timezone/TimeZoneFinder$TimeZonesProcessor;
    .restart local v3    # "processor":Lcom/android/i18n/timezone/TimeZoneFinder$TimeZonesProcessor;
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to find default time zone ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 318
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 309
    .end local v3    # "processor":Lcom/android/i18n/timezone/TimeZoneFinder$TimeZonesProcessor;
    .end local v5    # "defaultTimeZoneId":Ljava/lang/String;
    .restart local p1    # "processor":Lcom/android/i18n/timezone/TimeZoneFinder$TimeZonesProcessor;
    :cond_94
    move-object v3, p1

    .line 310
    .end local p1    # "processor":Lcom/android/i18n/timezone/TimeZoneFinder$TimeZonesProcessor;
    .restart local v3    # "processor":Lcom/android/i18n/timezone/TimeZoneFinder$TimeZonesProcessor;
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to find country code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 311
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 345
    .end local v3    # "processor":Lcom/android/i18n/timezone/TimeZoneFinder$TimeZonesProcessor;
    .end local v4    # "code":Ljava/lang/String;
    .restart local p1    # "processor":Lcom/android/i18n/timezone/TimeZoneFinder$TimeZonesProcessor;
    :cond_b2
    move-object v3, p1

    .end local p1    # "processor":Lcom/android/i18n/timezone/TimeZoneFinder$TimeZonesProcessor;
    .restart local v3    # "processor":Lcom/android/i18n/timezone/TimeZoneFinder$TimeZonesProcessor;
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist processXml(Lcom/android/i18n/timezone/TimeZoneFinder$TimeZonesProcessor;)V
    .registers 9
    .param p1, "processor"    # Lcom/android/i18n/timezone/TimeZoneFinder$TimeZonesProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    const-string v0, "countryzones"

    const-string v1, "timezones"

    iget-object v2, p0, Lcom/android/i18n/timezone/TimeZoneFinder;->xmlSource:Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier;

    invoke-interface {v2}, Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier;->get()Ljava/io/Reader;

    move-result-object v2

    .line 245
    .local v2, "reader":Ljava/io/Reader;
    :try_start_a
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 246
    .local v3, "xmlPullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 248
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 249
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 269
    invoke-static {v4, v1}, Lcom/android/i18n/timezone/XmlUtils;->findNextStartTagOrThrowNoRecurse(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 273
    const-string v5, "ianaversion"

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 275
    .local v5, "ianaVersion":Ljava/lang/String;
    invoke-interface {p1, v5}, Lcom/android/i18n/timezone/TimeZoneFinder$TimeZonesProcessor;->processHeader(Ljava/lang/String;)Z

    move-result v6
    :try_end_27
    .catchall {:try_start_a .. :try_end_27} :catchall_50

    if-nez v6, :cond_2f

    .line 299
    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 276
    :cond_2e
    return-void

    .line 281
    :cond_2f
    :try_start_2f
    invoke-static {v4, v0}, Lcom/android/i18n/timezone/XmlUtils;->findNextStartTagOrThrowNoRecurse(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 283
    invoke-static {v4, p1}, Lcom/android/i18n/timezone/TimeZoneFinder;->processCountryZones(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/i18n/timezone/TimeZoneFinder$TimeZonesProcessor;)Z

    move-result v6
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_50

    if-nez v6, :cond_3e

    .line 299
    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 284
    :cond_3d
    return-void

    .line 288
    :cond_3e
    :try_start_3e
    invoke-static {v4, v0}, Lcom/android/i18n/timezone/XmlUtils;->checkOnEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 291
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 295
    invoke-static {v4, v1}, Lcom/android/i18n/timezone/XmlUtils;->consumeUntilEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 298
    invoke-static {v4, v1}, Lcom/android/i18n/timezone/XmlUtils;->checkOnEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_3e .. :try_end_4a} :catchall_50

    .line 299
    .end local v3    # "xmlPullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "ianaVersion":Ljava/lang/String;
    if-eqz v2, :cond_4f

    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 300
    .end local v2    # "reader":Ljava/io/Reader;
    :cond_4f
    return-void

    .line 244
    .restart local v2    # "reader":Ljava/io/Reader;
    :catchall_50
    move-exception v0

    if-eqz v2, :cond_5b

    :try_start_53
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    goto :goto_5b

    :catchall_57
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5b
    :goto_5b
    throw v0
.end method


# virtual methods
.method public blacklist test-api getCountryZonesFinder()Lcom/android/i18n/timezone/CountryZonesFinder;
    .registers 5

    .line 187
    new-instance v0, Lcom/android/i18n/timezone/TimeZoneFinder$CountryZonesLookupExtractor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/i18n/timezone/TimeZoneFinder$CountryZonesLookupExtractor;-><init>(Lcom/android/i18n/timezone/TimeZoneFinder-IA;)V

    .line 189
    .local v0, "extractor":Lcom/android/i18n/timezone/TimeZoneFinder$CountryZonesLookupExtractor;
    :try_start_6
    invoke-direct {p0, v0}, Lcom/android/i18n/timezone/TimeZoneFinder;->processXml(Lcom/android/i18n/timezone/TimeZoneFinder$TimeZonesProcessor;)V

    .line 191
    invoke-virtual {v0}, Lcom/android/i18n/timezone/TimeZoneFinder$CountryZonesLookupExtractor;->getCountryZonesLookup()Lcom/android/i18n/timezone/CountryZonesFinder;

    move-result-object v1
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_d} :catch_e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_e

    return-object v1

    .line 192
    :catch_e
    move-exception v2

    .line 193
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Error reading country zones "

    invoke-static {v3, v2}, Lcom/android/i18n/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    return-object v1
.end method

.method public blacklist test-api getIanaVersion()Ljava/lang/String;
    .registers 4

    .line 172
    new-instance v0, Lcom/android/i18n/timezone/TimeZoneFinder$IanaVersionExtractor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/i18n/timezone/TimeZoneFinder$IanaVersionExtractor;-><init>(Lcom/android/i18n/timezone/TimeZoneFinder-IA;)V

    .line 174
    .local v0, "ianaVersionExtractor":Lcom/android/i18n/timezone/TimeZoneFinder$IanaVersionExtractor;
    :try_start_6
    invoke-direct {p0, v0}, Lcom/android/i18n/timezone/TimeZoneFinder;->processXml(Lcom/android/i18n/timezone/TimeZoneFinder$TimeZonesProcessor;)V

    .line 175
    invoke-virtual {v0}, Lcom/android/i18n/timezone/TimeZoneFinder$IanaVersionExtractor;->getIanaVersion()Ljava/lang/String;

    move-result-object v1
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_d} :catch_e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_e

    return-object v1

    .line 176
    :catch_e
    move-exception v2

    .line 177
    .local v2, "e":Ljava/lang/Exception;
    return-object v1
.end method

.method public blacklist test-api lookupCountryTimeZones(Ljava/lang/String;)Lcom/android/i18n/timezone/CountryTimeZones;
    .registers 6
    .param p1, "countryIso"    # Ljava/lang/String;

    .line 205
    monitor-enter p0

    .line 206
    :try_start_1
    iget-object v0, p0, Lcom/android/i18n/timezone/TimeZoneFinder;->lastCountryTimeZones:Lcom/android/i18n/timezone/CountryTimeZones;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/i18n/timezone/TimeZoneFinder;->lastCountryTimeZones:Lcom/android/i18n/timezone/CountryTimeZones;

    .line 207
    invoke-virtual {v0, p1}, Lcom/android/i18n/timezone/CountryTimeZones;->matchesCountryCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 208
    iget-object v0, p0, Lcom/android/i18n/timezone/TimeZoneFinder;->lastCountryTimeZones:Lcom/android/i18n/timezone/CountryTimeZones;

    monitor-exit p0

    return-object v0

    .line 210
    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_31

    .line 212
    new-instance v0, Lcom/android/i18n/timezone/TimeZoneFinder$SelectiveCountryTimeZonesExtractor;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/i18n/timezone/TimeZoneFinder$SelectiveCountryTimeZonesExtractor;-><init>(Ljava/lang/String;Lcom/android/i18n/timezone/TimeZoneFinder-IA;)V

    .line 215
    .local v0, "extractor":Lcom/android/i18n/timezone/TimeZoneFinder$SelectiveCountryTimeZonesExtractor;
    :try_start_18
    invoke-direct {p0, v0}, Lcom/android/i18n/timezone/TimeZoneFinder;->processXml(Lcom/android/i18n/timezone/TimeZoneFinder$TimeZonesProcessor;)V

    .line 217
    invoke-virtual {v0}, Lcom/android/i18n/timezone/TimeZoneFinder$SelectiveCountryTimeZonesExtractor;->getValidatedCountryTimeZones()Lcom/android/i18n/timezone/CountryTimeZones;

    move-result-object v2

    .line 218
    .local v2, "countryTimeZones":Lcom/android/i18n/timezone/CountryTimeZones;
    if-nez v2, :cond_22

    .line 220
    return-object v1

    .line 224
    :cond_22
    monitor-enter p0
    :try_end_23
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_23} :catch_2a
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_23} :catch_2a

    .line 225
    :try_start_23
    iput-object v2, p0, Lcom/android/i18n/timezone/TimeZoneFinder;->lastCountryTimeZones:Lcom/android/i18n/timezone/CountryTimeZones;

    .line 226
    monitor-exit p0

    .line 227
    return-object v2

    .line 226
    :catchall_27
    move-exception v3

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_27

    .end local v0    # "extractor":Lcom/android/i18n/timezone/TimeZoneFinder$SelectiveCountryTimeZonesExtractor;
    .end local p0    # "this":Lcom/android/i18n/timezone/TimeZoneFinder;
    .end local p1    # "countryIso":Ljava/lang/String;
    :try_start_29
    throw v3
    :try_end_2a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_29 .. :try_end_2a} :catch_2a
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2a} :catch_2a

    .line 228
    .end local v2    # "countryTimeZones":Lcom/android/i18n/timezone/CountryTimeZones;
    .restart local v0    # "extractor":Lcom/android/i18n/timezone/TimeZoneFinder$SelectiveCountryTimeZonesExtractor;
    .restart local p0    # "this":Lcom/android/i18n/timezone/TimeZoneFinder;
    .restart local p1    # "countryIso":Ljava/lang/String;
    :catch_2a
    move-exception v2

    .line 229
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Error reading country zones "

    invoke-static {v3, v2}, Lcom/android/i18n/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    return-object v1

    .line 210
    .end local v0    # "extractor":Lcom/android/i18n/timezone/TimeZoneFinder$SelectiveCountryTimeZonesExtractor;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0
.end method

.method public blacklist test-api validate()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    :try_start_0
    new-instance v0, Lcom/android/i18n/timezone/TimeZoneFinder$TimeZonesValidator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/i18n/timezone/TimeZoneFinder$TimeZonesValidator;-><init>(Lcom/android/i18n/timezone/TimeZoneFinder-IA;)V

    invoke-direct {p0, v0}, Lcom/android/i18n/timezone/TimeZoneFinder;->processXml(Lcom/android/i18n/timezone/TimeZoneFinder$TimeZonesProcessor;)V
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_9} :catch_b

    .line 163
    nop

    .line 164
    return-void

    .line 161
    :catch_b
    move-exception v0

    .line 162
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Parsing error"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
