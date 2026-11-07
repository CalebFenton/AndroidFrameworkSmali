.class interface abstract Lcom/android/i18n/timezone/TimeZoneFinder$TimeZonesProcessor;
.super Ljava/lang/Object;
.source "TimeZoneFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/timezone/TimeZoneFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "TimeZonesProcessor"
.end annotation


# static fields
.field public static final blacklist CONTINUE:Z = true

.field public static final blacklist HALT:Z = false


# virtual methods
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 428
    .local p5, "timeZoneMappings":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist processHeader(Ljava/lang/String;)Z
    .registers 3
    .param p1, "ianaVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 414
    const/4 v0, 0x1

    return v0
.end method
