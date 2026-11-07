.class public final Lcom/android/internal/telephony/phonenumbers/metadata/source/RegionMetadataSourceImpl;
.super Ljava/lang/Object;
.source "RegionMetadataSourceImpl.java"

# interfaces
.implements Lcom/android/internal/telephony/phonenumbers/metadata/source/RegionMetadataSource;


# instance fields
.field private final blacklist bootstrappingGuard:Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataBootstrappingGuard;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataBootstrappingGuard<",
            "Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist phoneMetadataFileNameProvider:Lcom/android/internal/telephony/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;Lcom/android/internal/telephony/phonenumbers/MetadataLoader;Lcom/android/internal/telephony/phonenumbers/metadata/init/MetadataParser;)V
    .registers 6

    .line 47
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;

    .line 50
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;->byRegionCode()Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;

    move-result-object v1

    invoke-direct {v0, p2, p3, v1}, Lcom/android/internal/telephony/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;-><init>(Lcom/android/internal/telephony/phonenumbers/MetadataLoader;Lcom/android/internal/telephony/phonenumbers/metadata/init/MetadataParser;Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataContainer;)V

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/metadata/source/RegionMetadataSourceImpl;-><init>(Lcom/android/internal/telephony/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataBootstrappingGuard;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataBootstrappingGuard;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;",
            "Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataBootstrappingGuard<",
            "Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/metadata/source/RegionMetadataSourceImpl;->phoneMetadataFileNameProvider:Lcom/android/internal/telephony/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

    .line 40
    iput-object p2, p0, Lcom/android/internal/telephony/phonenumbers/metadata/source/RegionMetadataSourceImpl;->bootstrappingGuard:Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataBootstrappingGuard;

    return-void
.end method


# virtual methods
.method public blacklist getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3

    .line 55
    invoke-static {p1}, Lcom/android/internal/telephony/phonenumbers/internal/GeoEntityUtility;->isGeoEntity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/metadata/source/RegionMetadataSourceImpl;->bootstrappingGuard:Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataBootstrappingGuard;

    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/metadata/source/RegionMetadataSourceImpl;->phoneMetadataFileNameProvider:Lcom/android/internal/telephony/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

    .line 59
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;->getFor(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataBootstrappingGuard;->getOrBootstrap(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataContainer;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;->getMetadataBy(Ljava/lang/Object;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p0

    return-object p0

    .line 56
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " region code is a non-geo entity"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
