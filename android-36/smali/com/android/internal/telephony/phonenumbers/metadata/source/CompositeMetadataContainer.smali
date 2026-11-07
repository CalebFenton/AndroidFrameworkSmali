.class final Lcom/android/internal/telephony/phonenumbers/metadata/source/CompositeMetadataContainer;
.super Ljava/lang/Object;
.source "CompositeMetadataContainer.java"

# interfaces
.implements Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataContainer;


# instance fields
.field private final blacklist metadataByCountryCode:Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist metadataByRegionCode:Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;->byCountryCallingCode()Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/metadata/source/CompositeMetadataContainer;->metadataByCountryCode:Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;

    .line 32
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;->byRegionCode()Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/metadata/source/CompositeMetadataContainer;->metadataByRegionCode:Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;

    return-void
.end method


# virtual methods
.method public blacklist accept(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;)V
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/metadata/source/CompositeMetadataContainer;->metadataByRegionCode:Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;->getKeyProvider()Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider;->getKeyOf(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    invoke-static {v0}, Lcom/android/internal/telephony/phonenumbers/internal/GeoEntityUtility;->isGeoEntity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 64
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/metadata/source/CompositeMetadataContainer;->metadataByRegionCode:Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;->accept(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;)V

    return-void

    .line 66
    :cond_18
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/metadata/source/CompositeMetadataContainer;->metadataByCountryCode:Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;->accept(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;)V

    return-void
.end method

.method blacklist getMetadataBy(I)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 2

    .line 48
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/metadata/source/CompositeMetadataContainer;->metadataByCountryCode:Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;->getMetadataBy(Ljava/lang/Object;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p0

    return-object p0
.end method

.method blacklist getMetadataBy(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 2

    .line 39
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/metadata/source/CompositeMetadataContainer;->metadataByRegionCode:Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;->getMetadataBy(Ljava/lang/Object;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p0

    return-object p0
.end method
