.class public final Lcom/android/i18n/timezone/TelephonyLookup;
.super Ljava/lang/Object;
.source "TelephonyLookup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/timezone/TelephonyLookup$TelephonyNetworkValidator;,
        Lcom/android/i18n/timezone/TelephonyLookup$TelephonyNetworkProcessor;,
        Lcom/android/i18n/timezone/TelephonyLookup$TelephonyNetworksExtractor;
    }
.end annotation


# static fields
.field private static final blacklist COUNTRY_ISO_CODE_ATTRIBUTE:Ljava/lang/String; = "country"

.field private static final blacklist DEFAULT_ATTRIBUTE:Ljava/lang/String; = "default"

.field private static final blacklist MOBILE_COUNTRIES_ELEMENT:Ljava/lang/String; = "mobile_countries"

.field private static final blacklist MOBILE_COUNTRY_CODE_ATTRIBUTE:Ljava/lang/String; = "mcc"

.field private static final blacklist MOBILE_COUNTRY_ELEMENT:Ljava/lang/String; = "mobile_country"

.field private static final blacklist MOBILE_NETWORK_CODE_ATTRIBUTE:Ljava/lang/String; = "mnc"

.field private static final blacklist NETWORKS_ELEMENT:Ljava/lang/String; = "networks"

.field private static final blacklist NETWORK_ELEMENT:Ljava/lang/String; = "network"

.field public static final blacklist TELEPHONYLOOKUP_FILE_NAME:Ljava/lang/String; = "telephonylookup.xml"

.field private static final blacklist TELEPHONY_LOOKUP_ELEMENT:Ljava/lang/String; = "telephony_lookup"

.field private static blacklist instance:Lcom/android/i18n/timezone/TelephonyLookup;


# instance fields
.field private final blacklist xmlSource:Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier;


# direct methods
.method private constructor blacklist <init>(Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier;)V
    .registers 2
    .param p1, "xmlSource"    # Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/i18n/timezone/TelephonyLookup;->xmlSource:Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier;

    .line 83
    return-void
.end method

.method public static blacklist test-api createInstance(Ljava/lang/String;)Lcom/android/i18n/timezone/TelephonyLookup;
    .registers 3
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier;->forFile(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier;

    move-result-object v0

    .line 140
    .local v0, "xmlSupplier":Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier;
    new-instance v1, Lcom/android/i18n/timezone/TelephonyLookup;

    invoke-direct {v1, v0}, Lcom/android/i18n/timezone/TelephonyLookup;-><init>(Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier;)V

    return-object v1
.end method

.method public static blacklist createInstanceFromString(Ljava/lang/String;)Lcom/android/i18n/timezone/TelephonyLookup;
    .registers 3
    .param p0, "xml"    # Ljava/lang/String;

    .line 146
    new-instance v0, Lcom/android/i18n/timezone/TelephonyLookup;

    invoke-static {p0}, Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier;->forString(Ljava/lang/String;)Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/i18n/timezone/TelephonyLookup;-><init>(Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier;)V

    return-object v0
.end method

.method public static varargs blacklist createInstanceWithFallback([Ljava/lang/String;)Lcom/android/i18n/timezone/TelephonyLookup;
    .registers 6
    .param p0, "telephonyLookupFilePaths"    # [Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "lastException":Ljava/io/IOException;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_16

    aget-object v3, p0, v2

    .line 110
    .local v3, "tzLookupFilePath":Ljava/lang/String;
    :try_start_7
    invoke-static {v3}, Lcom/android/i18n/timezone/TelephonyLookup;->createInstance(Ljava/lang/String;)Lcom/android/i18n/timezone/TelephonyLookup;

    move-result-object v1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_b} :catch_c

    return-object v1

    .line 111
    :catch_c
    move-exception v4

    .line 115
    .local v4, "e":Ljava/io/IOException;
    if-eqz v0, :cond_12

    .line 116
    invoke-virtual {v4, v0}, Ljava/io/IOException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 118
    :cond_12
    move-object v0, v4

    .line 105
    .end local v3    # "tzLookupFilePath":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 122
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

    .line 124
    const-string v1, "<telephony_lookup>\n <networks/>\n <mobile_countries/>\n</telephony_lookup>\n"

    invoke-static {v1}, Lcom/android/i18n/timezone/TelephonyLookup;->createInstanceFromString(Ljava/lang/String;)Lcom/android/i18n/timezone/TelephonyLookup;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist test-api getInstance()Lcom/android/i18n/timezone/TelephonyLookup;
    .registers 3

    .line 92
    const-class v0, Lcom/android/i18n/timezone/TelephonyLookup;

    monitor-enter v0

    .line 93
    :try_start_3
    sget-object v1, Lcom/android/i18n/timezone/TelephonyLookup;->instance:Lcom/android/i18n/timezone/TelephonyLookup;

    if-nez v1, :cond_13

    .line 94
    const-string v1, "telephonylookup.xml"

    .line 95
    invoke-static {v1}, Lcom/android/i18n/timezone/TimeZoneDataFiles;->getTimeZoneFilePaths(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "telephonyLookupFilePaths":[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/i18n/timezone/TelephonyLookup;->createInstanceWithFallback([Ljava/lang/String;)Lcom/android/i18n/timezone/TelephonyLookup;

    move-result-object v2

    sput-object v2, Lcom/android/i18n/timezone/TelephonyLookup;->instance:Lcom/android/i18n/timezone/TelephonyLookup;

    .line 98
    .end local v1    # "telephonyLookupFilePaths":[Ljava/lang/String;
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_17

    .line 99
    sget-object v0, Lcom/android/i18n/timezone/TelephonyLookup;->instance:Lcom/android/i18n/timezone/TelephonyLookup;

    return-object v0

    .line 98
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private static blacklist processMobileCountries(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/i18n/timezone/TelephonyLookup$TelephonyNetworkProcessor;)V
    .registers 9
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "processor"    # Lcom/android/i18n/timezone/TelephonyLookup$TelephonyNetworkProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 280
    nop

    :goto_1
    const-string v0, "mobile_country"

    invoke-static {p0, v0}, Lcom/android/i18n/timezone/XmlUtils;->findNextStartTagOrEndTagNoRecurse(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 281
    const-string v1, "mcc"

    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "mcc":Ljava/lang/String;
    const-string v3, "default"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "defaultCountryIsoCode":Ljava/lang/String;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 287
    .local v3, "countryIsoCodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_67

    .line 292
    :goto_1d
    const-string v4, "country"

    invoke-static {p0, v4}, Lcom/android/i18n/timezone/XmlUtils;->findNextStartTagOrEndTagNoRecurse(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 293
    invoke-static {p0}, Lcom/android/i18n/timezone/XmlUtils;->consumeText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v5

    .line 294
    .local v5, "countryIsoCode":Ljava/lang/String;
    if-eqz v5, :cond_35

    .line 299
    if-nez v2, :cond_2e

    .line 300
    move-object v2, v5

    .line 302
    :cond_2e
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-static {p0, v4}, Lcom/android/i18n/timezone/XmlUtils;->consumeUntilEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 306
    .end local v5    # "countryIsoCode":Ljava/lang/String;
    goto :goto_1d

    .line 295
    .restart local v5    # "countryIsoCode":Ljava/lang/String;
    :cond_35
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find country for mcc="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 297
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    .end local v5    # "countryIsoCode":Ljava/lang/String;
    :cond_5c
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    .line 309
    .local v4, "debugInfo":Ljava/lang/String;
    invoke-interface {p1, v1, v3, v2, v4}, Lcom/android/i18n/timezone/TelephonyLookup$TelephonyNetworkProcessor;->processMobileCountries(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-static {p0, v0}, Lcom/android/i18n/timezone/XmlUtils;->consumeUntilEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 314
    .end local v1    # "mcc":Ljava/lang/String;
    .end local v2    # "defaultCountryIsoCode":Ljava/lang/String;
    .end local v3    # "countryIsoCodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "debugInfo":Ljava/lang/String;
    goto :goto_1

    .line 288
    .restart local v1    # "mcc":Ljava/lang/String;
    .restart local v2    # "defaultCountryIsoCode":Ljava/lang/String;
    .restart local v3    # "countryIsoCodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_67
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find mcc: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 289
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    .end local v1    # "mcc":Ljava/lang/String;
    .end local v2    # "defaultCountryIsoCode":Ljava/lang/String;
    .end local v3    # "countryIsoCodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_84
    return-void
.end method

.method private static blacklist processNetworks(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/i18n/timezone/TelephonyLookup$TelephonyNetworkProcessor;)V
    .registers 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "processor"    # Lcom/android/i18n/timezone/TelephonyLookup$TelephonyNetworkProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 245
    nop

    :goto_1
    const-string v0, "network"

    invoke-static {p0, v0}, Lcom/android/i18n/timezone/XmlUtils;->findNextStartTagOrEndTagNoRecurse(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 246
    const-string v1, "mcc"

    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "mcc":Ljava/lang/String;
    if-eqz v1, :cond_6b

    .line 253
    const-string v3, "mnc"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, "mnc":Ljava/lang/String;
    if-eqz v3, :cond_4e

    .line 260
    nop

    .line 261
    const-string v4, "country"

    invoke-interface {p0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "countryCode":Ljava/lang/String;
    if-eqz v2, :cond_31

    .line 267
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, "debugInfo":Ljava/lang/String;
    invoke-interface {p1, v1, v3, v2, v4}, Lcom/android/i18n/timezone/TelephonyLookup$TelephonyNetworkProcessor;->processNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 273
    invoke-static {p0, v0}, Lcom/android/i18n/timezone/XmlUtils;->consumeUntilEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 274
    .end local v1    # "mcc":Ljava/lang/String;
    .end local v2    # "countryCode":Ljava/lang/String;
    .end local v3    # "mnc":Ljava/lang/String;
    .end local v4    # "debugInfo":Ljava/lang/String;
    goto :goto_1

    .line 263
    .restart local v1    # "mcc":Ljava/lang/String;
    .restart local v2    # "countryCode":Ljava/lang/String;
    .restart local v3    # "mnc":Ljava/lang/String;
    :cond_31
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find country: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 264
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    .end local v2    # "countryCode":Ljava/lang/String;
    :cond_4e
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find mnc: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 257
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    .end local v3    # "mnc":Ljava/lang/String;
    :cond_6b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find mcc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 250
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    .end local v1    # "mcc":Ljava/lang/String;
    :cond_88
    return-void
.end method

.method private blacklist processXml(Lcom/android/i18n/timezone/TelephonyLookup$TelephonyNetworkProcessor;)V
    .registers 8
    .param p1, "processor"    # Lcom/android/i18n/timezone/TelephonyLookup$TelephonyNetworkProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    const-string v0, "mobile_countries"

    const-string v1, "networks"

    const-string v2, "telephony_lookup"

    iget-object v3, p0, Lcom/android/i18n/timezone/TelephonyLookup;->xmlSource:Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier;

    invoke-interface {v3}, Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier;->get()Ljava/io/Reader;

    move-result-object v3

    .line 186
    .local v3, "reader":Ljava/io/Reader;
    :try_start_c
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 187
    .local v4, "xmlPullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 189
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 190
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 211
    invoke-static {v5, v2}, Lcom/android/i18n/timezone/XmlUtils;->findNextStartTagOrThrowNoRecurse(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 214
    invoke-static {v5, v1}, Lcom/android/i18n/timezone/XmlUtils;->findNextStartTagOrThrowNoRecurse(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 215
    invoke-static {v5, p1}, Lcom/android/i18n/timezone/TelephonyLookup;->processNetworks(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/i18n/timezone/TelephonyLookup$TelephonyNetworkProcessor;)V

    .line 216
    invoke-static {v5, v1}, Lcom/android/i18n/timezone/XmlUtils;->checkOnEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 220
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 222
    invoke-static {}, Lcom/android/icu/Flags;->telephonyLookupMccExtension()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 224
    invoke-static {v5, v0}, Lcom/android/i18n/timezone/XmlUtils;->findNextStartTagOrThrowNoRecurse(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 225
    invoke-static {v5, p1}, Lcom/android/i18n/timezone/TelephonyLookup;->processMobileCountries(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/i18n/timezone/TelephonyLookup$TelephonyNetworkProcessor;)V

    .line 226
    invoke-static {v5, v0}, Lcom/android/i18n/timezone/XmlUtils;->checkOnEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 230
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 235
    :cond_3c
    invoke-static {v5, v2}, Lcom/android/i18n/timezone/XmlUtils;->consumeUntilEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 238
    invoke-static {v5, v2}, Lcom/android/i18n/timezone/XmlUtils;->checkOnEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_c .. :try_end_42} :catchall_48

    .line 239
    .end local v4    # "xmlPullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    if-eqz v3, :cond_47

    invoke-virtual {v3}, Ljava/io/Reader;->close()V

    .line 240
    .end local v3    # "reader":Ljava/io/Reader;
    :cond_47
    return-void

    .line 185
    .restart local v3    # "reader":Ljava/io/Reader;
    :catchall_48
    move-exception v0

    if-eqz v3, :cond_53

    :try_start_4b
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_4f

    goto :goto_53

    :catchall_4f
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_53
    :goto_53
    throw v0
.end method


# virtual methods
.method public blacklist test-api getTelephonyNetworkFinder()Lcom/android/i18n/timezone/TelephonyNetworkFinder;
    .registers 5

    .line 167
    new-instance v0, Lcom/android/i18n/timezone/TelephonyLookup$TelephonyNetworksExtractor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/i18n/timezone/TelephonyLookup$TelephonyNetworksExtractor;-><init>(Lcom/android/i18n/timezone/TelephonyLookup-IA;)V

    .line 169
    .local v0, "extractor":Lcom/android/i18n/timezone/TelephonyLookup$TelephonyNetworksExtractor;
    :try_start_6
    invoke-direct {p0, v0}, Lcom/android/i18n/timezone/TelephonyLookup;->processXml(Lcom/android/i18n/timezone/TelephonyLookup$TelephonyNetworkProcessor;)V

    .line 171
    invoke-virtual {v0}, Lcom/android/i18n/timezone/TelephonyLookup$TelephonyNetworksExtractor;->getTelephonyNetworkFinder()Lcom/android/i18n/timezone/TelephonyNetworkFinder;

    move-result-object v1
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_d} :catch_e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_e

    return-object v1

    .line 172
    :catch_e
    move-exception v2

    .line 173
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Error reading telephony networks"

    invoke-static {v3, v2}, Lcom/android/i18n/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    return-object v1
.end method

.method public blacklist test-api validate()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    :try_start_0
    new-instance v0, Lcom/android/i18n/timezone/TelephonyLookup$TelephonyNetworkValidator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/i18n/timezone/TelephonyLookup$TelephonyNetworkValidator;-><init>(Lcom/android/i18n/timezone/TelephonyLookup-IA;)V

    invoke-direct {p0, v0}, Lcom/android/i18n/timezone/TelephonyLookup;->processXml(Lcom/android/i18n/timezone/TelephonyLookup$TelephonyNetworkProcessor;)V
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_9} :catch_b

    .line 158
    nop

    .line 159
    return-void

    .line 156
    :catch_b
    move-exception v0

    .line 157
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Parsing error"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
