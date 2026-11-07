.class public final Lcom/android/i18n/phonenumbers/metadata/source/RegionMetadataSourceImpl;
.super Ljava/lang/Object;
.source "RegionMetadataSourceImpl.java"

# interfaces
.implements Lcom/android/i18n/phonenumbers/metadata/source/RegionMetadataSource;


# instance fields
.field private final blacklist bootstrappingGuard:Lcom/android/i18n/phonenumbers/metadata/source/MetadataBootstrappingGuard;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/i18n/phonenumbers/metadata/source/MetadataBootstrappingGuard<",
            "Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist phoneMetadataFileNameProvider:Lcom/android/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;


# direct methods
.method public constructor blacklist <init>(Lcom/android/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;Lcom/android/i18n/phonenumbers/MetadataLoader;Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;)V
    .registers 6
    .param p1, "phoneMetadataFileNameProvider"    # Lcom/android/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;
    .param p2, "metadataLoader"    # Lcom/android/i18n/phonenumbers/MetadataLoader;
    .param p3, "metadataParser"    # Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;

    .line 49
    new-instance v0, Lcom/android/i18n/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;

    .line 52
    invoke-static {}, Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;->byRegionCode()Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;

    move-result-object v1

    invoke-direct {v0, p2, p3, v1}, Lcom/android/i18n/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;-><init>(Lcom/android/i18n/phonenumbers/MetadataLoader;Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;Lcom/android/i18n/phonenumbers/metadata/source/MetadataContainer;)V

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/android/i18n/phonenumbers/metadata/source/RegionMetadataSourceImpl;-><init>(Lcom/android/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;Lcom/android/i18n/phonenumbers/metadata/source/MetadataBootstrappingGuard;)V

    .line 53
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;Lcom/android/i18n/phonenumbers/metadata/source/MetadataBootstrappingGuard;)V
    .registers 3
    .param p1, "phoneMetadataFileNameProvider"    # Lcom/android/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;",
            "Lcom/android/i18n/phonenumbers/metadata/source/MetadataBootstrappingGuard<",
            "Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 40
    .local p2, "bootstrappingGuard":Lcom/android/i18n/phonenumbers/metadata/source/MetadataBootstrappingGuard;, "Lcom/android/i18n/phonenumbers/metadata/source/MetadataBootstrappingGuard<Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/metadata/source/RegionMetadataSourceImpl;->phoneMetadataFileNameProvider:Lcom/android/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

    .line 42
    iput-object p2, p0, Lcom/android/i18n/phonenumbers/metadata/source/RegionMetadataSourceImpl;->bootstrappingGuard:Lcom/android/i18n/phonenumbers/metadata/source/MetadataBootstrappingGuard;

    .line 43
    return-void
.end method


# virtual methods
.method public blacklist getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 5
    .param p1, "regionCode"    # Ljava/lang/String;

    .line 57
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/internal/GeoEntityUtility;->isGeoEntity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 60
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/metadata/source/RegionMetadataSourceImpl;->bootstrappingGuard:Lcom/android/i18n/phonenumbers/metadata/source/MetadataBootstrappingGuard;

    iget-object v1, p0, Lcom/android/i18n/phonenumbers/metadata/source/RegionMetadataSourceImpl;->phoneMetadataFileNameProvider:Lcom/android/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

    .line 61
    invoke-interface {v1, p1}, Lcom/android/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;->getFor(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/i18n/phonenumbers/metadata/source/MetadataBootstrappingGuard;->getOrBootstrap(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/metadata/source/MetadataContainer;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;

    .line 62
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;->getMetadataBy(Ljava/lang/Object;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 60
    return-object v0

    .line 58
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " region code is a non-geo entity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
