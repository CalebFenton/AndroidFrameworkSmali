.class Lcom/android/i18n/timezone/TimeZoneFinder$CountryZonesLookupExtractor;
.super Ljava/lang/Object;
.source "TimeZoneFinder.java"

# interfaces
.implements Lcom/android/i18n/timezone/TimeZoneFinder$TimeZonesProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/timezone/TimeZoneFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CountryZonesLookupExtractor"
.end annotation


# instance fields
.field private blacklist countryTimeZonesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/i18n/timezone/CountryTimeZones;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .registers 3

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xfa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/i18n/timezone/TimeZoneFinder$CountryZonesLookupExtractor;->countryTimeZonesList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/i18n/timezone/TimeZoneFinder-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/i18n/timezone/TimeZoneFinder$CountryZonesLookupExtractor;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist getCountryZonesLookup()Lcom/android/i18n/timezone/CountryZonesFinder;
    .registers 3

    .line 513
    new-instance v0, Lcom/android/i18n/timezone/CountryZonesFinder;

    iget-object v1, p0, Lcom/android/i18n/timezone/TimeZoneFinder$CountryZonesLookupExtractor;->countryTimeZonesList:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/android/i18n/timezone/CountryZonesFinder;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public blacklist processCountryZones(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/List;Ljava/lang/String;)Z
    .registers 9
    .param p1, "countryIso"    # Ljava/lang/String;
    .param p2, "defaultTimeZoneId"    # Ljava/lang/String;
    .param p3, "defaultTimeZoneBoost"    # Z
    .param p4, "everUsesUtc"    # Z
    .param p6, "debugInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/List<",
            "Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 504
    .local p5, "timeZoneMappings":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;>;"
    nop

    .line 505
    invoke-static/range {p1 .. p6}, Lcom/android/i18n/timezone/CountryTimeZones;->createValidated(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/List;Ljava/lang/String;)Lcom/android/i18n/timezone/CountryTimeZones;

    move-result-object v0

    .line 508
    .local v0, "countryTimeZones":Lcom/android/i18n/timezone/CountryTimeZones;
    iget-object v1, p0, Lcom/android/i18n/timezone/TimeZoneFinder$CountryZonesLookupExtractor;->countryTimeZonesList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    const/4 v1, 0x1

    return v1
.end method
