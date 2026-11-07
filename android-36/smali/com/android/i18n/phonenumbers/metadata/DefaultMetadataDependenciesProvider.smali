.class public final Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;
.super Ljava/lang/Object;
.source "DefaultMetadataDependenciesProvider.java"


# static fields
.field private static final blacklist INSTANCE:Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;


# instance fields
.field private final blacklist alternateFormatsMetadataFileNameProvider:Lcom/android/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

.field private final blacklist alternateFormatsMetadataSource:Lcom/android/i18n/phonenumbers/metadata/source/FormattingMetadataSource;

.field private final blacklist metadataLoader:Lcom/android/i18n/phonenumbers/MetadataLoader;

.field private final blacklist metadataParser:Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;

.field private final blacklist phoneNumberMetadataFileNameProvider:Lcom/android/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

.field private final blacklist phoneNumberMetadataSource:Lcom/android/i18n/phonenumbers/metadata/source/MetadataSource;

.field private final blacklist shortNumberMetadataFileNameProvider:Lcom/android/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

.field private final blacklist shortNumberMetadataSource:Lcom/android/i18n/phonenumbers/metadata/source/RegionMetadataSource;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;-><init>()V

    sput-object v0, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->INSTANCE:Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 5

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;->newLenientParser()Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->metadataParser:Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;

    .line 49
    new-instance v0, Lcom/android/i18n/phonenumbers/metadata/init/ClassPathResourceMetadataLoader;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/metadata/init/ClassPathResourceMetadataLoader;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->metadataLoader:Lcom/android/i18n/phonenumbers/MetadataLoader;

    .line 51
    new-instance v0, Lcom/android/i18n/phonenumbers/metadata/source/MultiFileModeFileNameProvider;

    const-string v1, "/com/android/i18n/phonenumbers/data/PhoneNumberMetadataProto"

    invoke-direct {v0, v1}, Lcom/android/i18n/phonenumbers/metadata/source/MultiFileModeFileNameProvider;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->phoneNumberMetadataFileNameProvider:Lcom/android/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

    .line 54
    new-instance v0, Lcom/android/i18n/phonenumbers/metadata/source/MetadataSourceImpl;

    iget-object v1, p0, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->phoneNumberMetadataFileNameProvider:Lcom/android/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

    iget-object v2, p0, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->metadataLoader:Lcom/android/i18n/phonenumbers/MetadataLoader;

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->metadataParser:Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/i18n/phonenumbers/metadata/source/MetadataSourceImpl;-><init>(Lcom/android/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;Lcom/android/i18n/phonenumbers/MetadataLoader;Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;)V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->phoneNumberMetadataSource:Lcom/android/i18n/phonenumbers/metadata/source/MetadataSource;

    .line 60
    new-instance v0, Lcom/android/i18n/phonenumbers/metadata/source/MultiFileModeFileNameProvider;

    const-string v1, "/com/android/i18n/phonenumbers/data/ShortNumberMetadataProto"

    invoke-direct {v0, v1}, Lcom/android/i18n/phonenumbers/metadata/source/MultiFileModeFileNameProvider;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->shortNumberMetadataFileNameProvider:Lcom/android/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

    .line 63
    new-instance v0, Lcom/android/i18n/phonenumbers/metadata/source/RegionMetadataSourceImpl;

    iget-object v1, p0, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->shortNumberMetadataFileNameProvider:Lcom/android/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

    iget-object v2, p0, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->metadataLoader:Lcom/android/i18n/phonenumbers/MetadataLoader;

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->metadataParser:Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/i18n/phonenumbers/metadata/source/RegionMetadataSourceImpl;-><init>(Lcom/android/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;Lcom/android/i18n/phonenumbers/MetadataLoader;Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;)V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->shortNumberMetadataSource:Lcom/android/i18n/phonenumbers/metadata/source/RegionMetadataSource;

    .line 69
    new-instance v0, Lcom/android/i18n/phonenumbers/metadata/source/MultiFileModeFileNameProvider;

    const-string v1, "/com/android/i18n/phonenumbers/data/PhoneNumberAlternateFormatsProto"

    invoke-direct {v0, v1}, Lcom/android/i18n/phonenumbers/metadata/source/MultiFileModeFileNameProvider;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->alternateFormatsMetadataFileNameProvider:Lcom/android/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

    .line 72
    new-instance v0, Lcom/android/i18n/phonenumbers/metadata/source/FormattingMetadataSourceImpl;

    iget-object v1, p0, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->alternateFormatsMetadataFileNameProvider:Lcom/android/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

    iget-object v2, p0, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->metadataLoader:Lcom/android/i18n/phonenumbers/MetadataLoader;

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->metadataParser:Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/i18n/phonenumbers/metadata/source/FormattingMetadataSourceImpl;-><init>(Lcom/android/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;Lcom/android/i18n/phonenumbers/MetadataLoader;Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;)V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->alternateFormatsMetadataSource:Lcom/android/i18n/phonenumbers/metadata/source/FormattingMetadataSource;

    .line 46
    return-void
.end method

.method public static blacklist getInstance()Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;
    .registers 1

    .line 42
    sget-object v0, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->INSTANCE:Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;

    return-object v0
.end method


# virtual methods
.method public blacklist getAlternateFormatsMetadataFileNameProvider()Lcom/android/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->alternateFormatsMetadataFileNameProvider:Lcom/android/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

    return-object v0
.end method

.method public blacklist getAlternateFormatsMetadataSource()Lcom/android/i18n/phonenumbers/metadata/source/FormattingMetadataSource;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->alternateFormatsMetadataSource:Lcom/android/i18n/phonenumbers/metadata/source/FormattingMetadataSource;

    return-object v0
.end method

.method public blacklist getCarrierDataDirectory()Ljava/lang/String;
    .registers 2

    .line 111
    const-string v0, "/com/android/i18n/phonenumbers/carrier/data/"

    return-object v0
.end method

.method public blacklist getGeocodingDataDirectory()Ljava/lang/String;
    .registers 2

    .line 115
    const-string v0, "/com/android/i18n/phonenumbers/geocoding/data/"

    return-object v0
.end method

.method public blacklist getMetadataLoader()Lcom/android/i18n/phonenumbers/MetadataLoader;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->metadataLoader:Lcom/android/i18n/phonenumbers/MetadataLoader;

    return-object v0
.end method

.method public blacklist getMetadataParser()Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->metadataParser:Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;

    return-object v0
.end method

.method public blacklist getPhoneNumberMetadataFileNameProvider()Lcom/android/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->phoneNumberMetadataFileNameProvider:Lcom/android/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

    return-object v0
.end method

.method public blacklist getPhoneNumberMetadataSource()Lcom/android/i18n/phonenumbers/metadata/source/MetadataSource;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->phoneNumberMetadataSource:Lcom/android/i18n/phonenumbers/metadata/source/MetadataSource;

    return-object v0
.end method

.method public blacklist getShortNumberMetadataFileNameProvider()Lcom/android/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->shortNumberMetadataFileNameProvider:Lcom/android/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

    return-object v0
.end method

.method public blacklist getShortNumberMetadataSource()Lcom/android/i18n/phonenumbers/metadata/source/RegionMetadataSource;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->shortNumberMetadataSource:Lcom/android/i18n/phonenumbers/metadata/source/RegionMetadataSource;

    return-object v0
.end method
