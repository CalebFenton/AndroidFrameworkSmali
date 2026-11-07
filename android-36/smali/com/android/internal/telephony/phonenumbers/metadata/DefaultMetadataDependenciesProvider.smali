.class public final Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;
.super Ljava/lang/Object;
.source "DefaultMetadataDependenciesProvider.java"


# static fields
.field private static final blacklist INSTANCE:Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;


# instance fields
.field private final blacklist alternateFormatsMetadataFileNameProvider:Lcom/android/internal/telephony/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

.field private final blacklist alternateFormatsMetadataSource:Lcom/android/internal/telephony/phonenumbers/metadata/source/FormattingMetadataSource;

.field private final blacklist metadataLoader:Lcom/android/internal/telephony/phonenumbers/MetadataLoader;

.field private final blacklist metadataParser:Lcom/android/internal/telephony/phonenumbers/metadata/init/MetadataParser;

.field private final blacklist phoneNumberMetadataFileNameProvider:Lcom/android/internal/telephony/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

.field private final blacklist phoneNumberMetadataSource:Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataSource;

.field private final blacklist shortNumberMetadataFileNameProvider:Lcom/android/internal/telephony/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

.field private final blacklist shortNumberMetadataSource:Lcom/android/internal/telephony/phonenumbers/metadata/source/RegionMetadataSource;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->INSTANCE:Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 5

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/metadata/init/MetadataParser;->newLenientParser()Lcom/android/internal/telephony/phonenumbers/metadata/init/MetadataParser;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->metadataParser:Lcom/android/internal/telephony/phonenumbers/metadata/init/MetadataParser;

    .line 47
    new-instance v1, Lcom/android/internal/telephony/phonenumbers/metadata/init/ClassPathResourceMetadataLoader;

    invoke-direct {v1}, Lcom/android/internal/telephony/phonenumbers/metadata/init/ClassPathResourceMetadataLoader;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->metadataLoader:Lcom/android/internal/telephony/phonenumbers/MetadataLoader;

    .line 49
    new-instance v2, Lcom/android/internal/telephony/phonenumbers/metadata/source/MultiFileModeFileNameProvider;

    const-string v3, "/com/android/internal/telephony/phonenumbers/data/PhoneNumberMetadataProto"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/phonenumbers/metadata/source/MultiFileModeFileNameProvider;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->phoneNumberMetadataFileNameProvider:Lcom/android/internal/telephony/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

    .line 52
    new-instance v3, Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataSourceImpl;

    invoke-direct {v3, v2, v1, v0}, Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataSourceImpl;-><init>(Lcom/android/internal/telephony/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;Lcom/android/internal/telephony/phonenumbers/MetadataLoader;Lcom/android/internal/telephony/phonenumbers/metadata/init/MetadataParser;)V

    iput-object v3, p0, Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->phoneNumberMetadataSource:Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataSource;

    .line 58
    new-instance v2, Lcom/android/internal/telephony/phonenumbers/metadata/source/MultiFileModeFileNameProvider;

    const-string v3, "/com/android/internal/telephony/phonenumbers/data/ShortNumberMetadataProto"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/phonenumbers/metadata/source/MultiFileModeFileNameProvider;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->shortNumberMetadataFileNameProvider:Lcom/android/internal/telephony/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

    .line 61
    new-instance v3, Lcom/android/internal/telephony/phonenumbers/metadata/source/RegionMetadataSourceImpl;

    invoke-direct {v3, v2, v1, v0}, Lcom/android/internal/telephony/phonenumbers/metadata/source/RegionMetadataSourceImpl;-><init>(Lcom/android/internal/telephony/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;Lcom/android/internal/telephony/phonenumbers/MetadataLoader;Lcom/android/internal/telephony/phonenumbers/metadata/init/MetadataParser;)V

    iput-object v3, p0, Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->shortNumberMetadataSource:Lcom/android/internal/telephony/phonenumbers/metadata/source/RegionMetadataSource;

    .line 67
    new-instance v2, Lcom/android/internal/telephony/phonenumbers/metadata/source/MultiFileModeFileNameProvider;

    const-string v3, "/com/android/internal/telephony/phonenumbers/data/PhoneNumberAlternateFormatsProto"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/phonenumbers/metadata/source/MultiFileModeFileNameProvider;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->alternateFormatsMetadataFileNameProvider:Lcom/android/internal/telephony/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

    .line 70
    new-instance v3, Lcom/android/internal/telephony/phonenumbers/metadata/source/FormattingMetadataSourceImpl;

    invoke-direct {v3, v2, v1, v0}, Lcom/android/internal/telephony/phonenumbers/metadata/source/FormattingMetadataSourceImpl;-><init>(Lcom/android/internal/telephony/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;Lcom/android/internal/telephony/phonenumbers/MetadataLoader;Lcom/android/internal/telephony/phonenumbers/metadata/init/MetadataParser;)V

    iput-object v3, p0, Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->alternateFormatsMetadataSource:Lcom/android/internal/telephony/phonenumbers/metadata/source/FormattingMetadataSource;

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;
    .registers 1

    .line 40
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->INSTANCE:Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;

    return-object v0
.end method


# virtual methods
.method public blacklist getAlternateFormatsMetadataFileNameProvider()Lcom/android/internal/telephony/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->alternateFormatsMetadataFileNameProvider:Lcom/android/internal/telephony/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

    return-object p0
.end method

.method public blacklist getAlternateFormatsMetadataSource()Lcom/android/internal/telephony/phonenumbers/metadata/source/FormattingMetadataSource;
    .registers 1

    .line 105
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->alternateFormatsMetadataSource:Lcom/android/internal/telephony/phonenumbers/metadata/source/FormattingMetadataSource;

    return-object p0
.end method

.method public blacklist getCarrierDataDirectory()Ljava/lang/String;
    .registers 1

    .line 109
    const-string p0, "/com/android/internal/telephony/phonenumbers/carrier/data/"

    return-object p0
.end method

.method public blacklist getGeocodingDataDirectory()Ljava/lang/String;
    .registers 1

    .line 113
    const-string p0, "/com/android/internal/telephony/phonenumbers/geocoding/data/"

    return-object p0
.end method

.method public blacklist getMetadataLoader()Lcom/android/internal/telephony/phonenumbers/MetadataLoader;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->metadataLoader:Lcom/android/internal/telephony/phonenumbers/MetadataLoader;

    return-object p0
.end method

.method public blacklist getMetadataParser()Lcom/android/internal/telephony/phonenumbers/metadata/init/MetadataParser;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->metadataParser:Lcom/android/internal/telephony/phonenumbers/metadata/init/MetadataParser;

    return-object p0
.end method

.method public blacklist getPhoneNumberMetadataFileNameProvider()Lcom/android/internal/telephony/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->phoneNumberMetadataFileNameProvider:Lcom/android/internal/telephony/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

    return-object p0
.end method

.method public blacklist getPhoneNumberMetadataSource()Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataSource;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->phoneNumberMetadataSource:Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataSource;

    return-object p0
.end method

.method public blacklist getShortNumberMetadataFileNameProvider()Lcom/android/internal/telephony/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->shortNumberMetadataFileNameProvider:Lcom/android/internal/telephony/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

    return-object p0
.end method

.method public blacklist getShortNumberMetadataSource()Lcom/android/internal/telephony/phonenumbers/metadata/source/RegionMetadataSource;
    .registers 1

    .line 97
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->shortNumberMetadataSource:Lcom/android/internal/telephony/phonenumbers/metadata/source/RegionMetadataSource;

    return-object p0
.end method
