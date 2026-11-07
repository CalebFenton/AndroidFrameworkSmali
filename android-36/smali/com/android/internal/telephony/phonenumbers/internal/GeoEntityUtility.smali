.class public final Lcom/android/internal/telephony/phonenumbers/internal/GeoEntityUtility;
.super Ljava/lang/Object;
.source "GeoEntityUtility.java"


# static fields
.field public static final blacklist REGION_CODE_FOR_NON_GEO_ENTITIES:Ljava/lang/String; = "001"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isGeoEntity(I)Z
    .registers 2

    .line 49
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/CountryCodeToRegionCodeMap;->getCountryCodeToRegionCodeMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1a

    .line 51
    const-string v0, "001"

    .line 52
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist isGeoEntity(Ljava/lang/String;)Z
    .registers 2

    .line 35
    const-string v0, "001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
