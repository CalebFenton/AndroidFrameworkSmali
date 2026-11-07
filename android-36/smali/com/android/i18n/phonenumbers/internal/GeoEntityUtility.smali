.class public final Lcom/android/i18n/phonenumbers/internal/GeoEntityUtility;
.super Ljava/lang/Object;
.source "GeoEntityUtility.java"


# static fields
.field public static final blacklist REGION_CODE_FOR_NON_GEO_ENTITIES:Ljava/lang/String; = "001"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isGeoEntity(I)Z
    .registers 3
    .param p0, "countryCallingCode"    # I

    .line 51
    invoke-static {}, Lcom/android/i18n/phonenumbers/CountryCodeToRegionCodeMap;->getCountryCodeToRegionCodeMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 53
    .local v0, "regionCodesForCountryCallingCode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1a

    .line 54
    const-string v1, "001"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    .line 53
    :goto_1b
    return v1
.end method

.method public static blacklist isGeoEntity(Ljava/lang/String;)Z
    .registers 2
    .param p0, "regionCode"    # Ljava/lang/String;

    .line 37
    const-string v0, "001"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
