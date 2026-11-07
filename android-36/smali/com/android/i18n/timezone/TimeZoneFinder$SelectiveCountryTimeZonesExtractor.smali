.class Lcom/android/i18n/timezone/TimeZoneFinder$SelectiveCountryTimeZonesExtractor;
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
    name = "SelectiveCountryTimeZonesExtractor"
.end annotation


# instance fields
.field private final blacklist countryCodeToMatch:Ljava/lang/String;

.field private blacklist validatedCountryTimeZones:Lcom/android/i18n/timezone/CountryTimeZones;


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "countryCodeToMatch"    # Ljava/lang/String;

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    invoke-static {p1}, Lcom/android/i18n/timezone/XmlUtils;->normalizeCountryIso(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/timezone/TimeZoneFinder$SelectiveCountryTimeZonesExtractor;->countryCodeToMatch:Ljava/lang/String;

    .line 529
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Lcom/android/i18n/timezone/TimeZoneFinder-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/i18n/timezone/TimeZoneFinder$SelectiveCountryTimeZonesExtractor;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method blacklist getValidatedCountryTimeZones()Lcom/android/i18n/timezone/CountryTimeZones;
    .registers 2

    .line 550
    iget-object v0, p0, Lcom/android/i18n/timezone/TimeZoneFinder$SelectiveCountryTimeZonesExtractor;->validatedCountryTimeZones:Lcom/android/i18n/timezone/CountryTimeZones;

    return-object v0
.end method

.method public blacklist processCountryZones(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/List;Ljava/lang/String;)Z
    .registers 8
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

    .line 535
    .local p5, "timeZoneMappings":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;>;"
    invoke-static {p1}, Lcom/android/i18n/timezone/XmlUtils;->normalizeCountryIso(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 536
    iget-object v0, p0, Lcom/android/i18n/timezone/TimeZoneFinder$SelectiveCountryTimeZonesExtractor;->countryCodeToMatch:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 537
    const/4 v0, 0x1

    return v0

    .line 539
    :cond_e
    invoke-static/range {p1 .. p6}, Lcom/android/i18n/timezone/CountryTimeZones;->createValidated(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/List;Ljava/lang/String;)Lcom/android/i18n/timezone/CountryTimeZones;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/timezone/TimeZoneFinder$SelectiveCountryTimeZonesExtractor;->validatedCountryTimeZones:Lcom/android/i18n/timezone/CountryTimeZones;

    .line 543
    const/4 v0, 0x0

    return v0
.end method
