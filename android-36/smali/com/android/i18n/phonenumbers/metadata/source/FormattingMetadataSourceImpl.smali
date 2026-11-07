.class public final Lcom/android/i18n/phonenumbers/metadata/source/FormattingMetadataSourceImpl;
.super Ljava/lang/Object;
.source "FormattingMetadataSourceImpl.java"

# interfaces
.implements Lcom/android/i18n/phonenumbers/metadata/source/FormattingMetadataSource;


# instance fields
.field private final blacklist bootstrappingGuard:Lcom/android/i18n/phonenumbers/metadata/source/MetadataBootstrappingGuard;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/i18n/phonenumbers/metadata/source/MetadataBootstrappingGuard<",
            "Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer<",
            "Ljava/lang/Integer;",
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

    .line 47
    new-instance v0, Lcom/android/i18n/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;

    .line 50
    invoke-static {}, Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;->byCountryCallingCode()Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;

    move-result-object v1

    invoke-direct {v0, p2, p3, v1}, Lcom/android/i18n/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;-><init>(Lcom/android/i18n/phonenumbers/MetadataLoader;Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;Lcom/android/i18n/phonenumbers/metadata/source/MetadataContainer;)V

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/android/i18n/phonenumbers/metadata/source/FormattingMetadataSourceImpl;-><init>(Lcom/android/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;Lcom/android/i18n/phonenumbers/metadata/source/MetadataBootstrappingGuard;)V

    .line 51
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
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 38
    .local p2, "bootstrappingGuard":Lcom/android/i18n/phonenumbers/metadata/source/MetadataBootstrappingGuard;, "Lcom/android/i18n/phonenumbers/metadata/source/MetadataBootstrappingGuard<Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer<Ljava/lang/Integer;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/metadata/source/FormattingMetadataSourceImpl;->phoneMetadataFileNameProvider:Lcom/android/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

    .line 40
    iput-object p2, p0, Lcom/android/i18n/phonenumbers/metadata/source/FormattingMetadataSourceImpl;->bootstrappingGuard:Lcom/android/i18n/phonenumbers/metadata/source/MetadataBootstrappingGuard;

    .line 41
    return-void
.end method


# virtual methods
.method public blacklist getFormattingMetadataForCountryCallingCode(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 5
    .param p1, "countryCallingCode"    # I

    .line 55
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/metadata/source/FormattingMetadataSourceImpl;->bootstrappingGuard:Lcom/android/i18n/phonenumbers/metadata/source/MetadataBootstrappingGuard;

    iget-object v1, p0, Lcom/android/i18n/phonenumbers/metadata/source/FormattingMetadataSourceImpl;->phoneMetadataFileNameProvider:Lcom/android/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;->getFor(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/i18n/phonenumbers/metadata/source/MetadataBootstrappingGuard;->getOrBootstrap(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/metadata/source/MetadataContainer;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;->getMetadataBy(Ljava/lang/Object;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 55
    return-object v0
.end method
