.class final Lcom/android/i18n/phonenumbers/metadata/source/CompositeMetadataContainer;
.super Ljava/lang/Object;
.source "CompositeMetadataContainer.java"

# interfaces
.implements Lcom/android/i18n/phonenumbers/metadata/source/MetadataContainer;


# instance fields
.field private final blacklist metadataByCountryCode:Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist metadataByRegionCode:Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    nop

    .line 31
    invoke-static {}, Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;->byCountryCallingCode()Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/metadata/source/CompositeMetadataContainer;->metadataByCountryCode:Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;

    .line 32
    nop

    .line 33
    invoke-static {}, Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;->byRegionCode()Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/metadata/source/CompositeMetadataContainer;->metadataByRegionCode:Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;

    .line 32
    return-void
.end method


# virtual methods
.method public blacklist accept(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)V
    .registers 4
    .param p1, "phoneMetadata"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 63
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/metadata/source/CompositeMetadataContainer;->metadataByRegionCode:Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;->getKeyProvider()Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider;->getKeyOf(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    .local v0, "regionCode":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/i18n/phonenumbers/internal/GeoEntityUtility;->isGeoEntity(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 65
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/metadata/source/CompositeMetadataContainer;->metadataByRegionCode:Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;

    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;->accept(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)V

    goto :goto_1d

    .line 67
    :cond_18
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/metadata/source/CompositeMetadataContainer;->metadataByCountryCode:Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;

    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;->accept(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)V

    .line 69
    :goto_1d
    return-void
.end method

.method blacklist getMetadataBy(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 4
    .param p1, "countryCallingCode"    # I

    .line 49
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/metadata/source/CompositeMetadataContainer;->metadataByCountryCode:Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;->getMetadataBy(Ljava/lang/Object;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    return-object v0
.end method

.method blacklist getMetadataBy(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3
    .param p1, "regionCode"    # Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/metadata/source/CompositeMetadataContainer;->metadataByRegionCode:Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;->getMetadataBy(Ljava/lang/Object;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    return-object v0
.end method
