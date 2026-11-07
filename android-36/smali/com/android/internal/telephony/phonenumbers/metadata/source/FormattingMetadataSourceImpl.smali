.class public final Lcom/android/internal/telephony/phonenumbers/metadata/source/FormattingMetadataSourceImpl;
.super Ljava/lang/Object;
.source "FormattingMetadataSourceImpl.java"

# interfaces
.implements Lcom/android/internal/telephony/phonenumbers/metadata/source/FormattingMetadataSource;


# instance fields
.field private final blacklist bootstrappingGuard:Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataBootstrappingGuard;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataBootstrappingGuard<",
            "Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist phoneMetadataFileNameProvider:Lcom/android/internal/telephony/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;Lcom/android/internal/telephony/phonenumbers/MetadataLoader;Lcom/android/internal/telephony/phonenumbers/metadata/init/MetadataParser;)V
    .registers 6

    .line 45
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;

    .line 48
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;->byCountryCallingCode()Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;

    move-result-object v1

    invoke-direct {v0, p2, p3, v1}, Lcom/android/internal/telephony/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;-><init>(Lcom/android/internal/telephony/phonenumbers/MetadataLoader;Lcom/android/internal/telephony/phonenumbers/metadata/init/MetadataParser;Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataContainer;)V

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/metadata/source/FormattingMetadataSourceImpl;-><init>(Lcom/android/internal/telephony/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataBootstrappingGuard;)V

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
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/metadata/source/FormattingMetadataSourceImpl;->phoneMetadataFileNameProvider:Lcom/android/internal/telephony/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

    .line 38
    iput-object p2, p0, Lcom/android/internal/telephony/phonenumbers/metadata/source/FormattingMetadataSourceImpl;->bootstrappingGuard:Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataBootstrappingGuard;

    return-void
.end method


# virtual methods
.method public blacklist getFormattingMetadataForCountryCallingCode(I)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 4

    .line 53
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/metadata/source/FormattingMetadataSourceImpl;->bootstrappingGuard:Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataBootstrappingGuard;

    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/metadata/source/FormattingMetadataSourceImpl;->phoneMetadataFileNameProvider:Lcom/android/internal/telephony/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/android/internal/telephony/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;->getFor(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataBootstrappingGuard;->getOrBootstrap(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataContainer;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;

    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;->getMetadataBy(Ljava/lang/Object;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p0

    return-object p0
.end method
