.class public Lcom/android/internal/telephony/phonenumbers/prefixmapper/PrefixFileReader;
.super Ljava/lang/Object;
.source "PrefixFileReader.java"


# static fields
.field private static final blacklist logger:Ljava/util/logging/Logger;


# instance fields
.field private blacklist availablePhonePrefixMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMap;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mappingFileProvider:Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;

.field private final blacklist metadataLoader:Lcom/android/internal/telephony/phonenumbers/MetadataLoader;

.field private final blacklist phonePrefixDataDirectory:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    const-class v0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PrefixFileReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PrefixFileReader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PrefixFileReader;->mappingFileProvider:Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PrefixFileReader;->availablePhonePrefixMaps:Ljava/util/Map;

    .line 49
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PrefixFileReader;->phonePrefixDataDirectory:Ljava/lang/String;

    .line 50
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->getInstance()Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->getMetadataLoader()Lcom/android/internal/telephony/phonenumbers/MetadataLoader;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PrefixFileReader;->metadataLoader:Lcom/android/internal/telephony/phonenumbers/MetadataLoader;

    .line 51
    invoke-direct {p0}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PrefixFileReader;->loadMappingFileProvider()V

    return-void
.end method

.method private static blacklist close(Ljava/io/InputStream;)V
    .registers 3

    if-eqz p0, :cond_12

    .line 97
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 99
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PrefixFileReader;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method private blacklist getPhonePrefixDescriptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMap;
    .registers 6

    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PrefixFileReader;->mappingFileProvider:Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;->getFileName(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 73
    :cond_e
    iget-object p2, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PrefixFileReader;->availablePhonePrefixMaps:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_19

    .line 74
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PrefixFileReader;->loadPhonePrefixMapFromFile(Ljava/lang/String;)V

    .line 76
    :cond_19
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PrefixFileReader;->availablePhonePrefixMaps:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMap;

    return-object p0
.end method

.method private blacklist loadMappingFileProvider()V
    .registers 4

    .line 55
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PrefixFileReader;->metadataLoader:Lcom/android/internal/telephony/phonenumbers/MetadataLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PrefixFileReader;->phonePrefixDataDirectory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/phonenumbers/MetadataLoader;->loadMetadata(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    .line 58
    :try_start_1a
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1f} :catch_30
    .catchall {:try_start_1a .. :try_end_1f} :catchall_2e

    .line 59
    :try_start_1f
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PrefixFileReader;->mappingFileProvider:Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;->readExternal(Ljava/io/ObjectInput;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_24} :catch_2b
    .catchall {:try_start_1f .. :try_end_24} :catchall_28

    .line 63
    invoke-static {v2}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PrefixFileReader;->close(Ljava/io/InputStream;)V

    return-void

    :catchall_28
    move-exception p0

    move-object v1, v2

    goto :goto_40

    :catch_2b
    move-exception p0

    move-object v1, v2

    goto :goto_31

    :catchall_2e
    move-exception p0

    goto :goto_40

    :catch_30
    move-exception p0

    .line 61
    :goto_31
    :try_start_31
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PrefixFileReader;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_2e

    .line 63
    invoke-static {v1}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PrefixFileReader;->close(Ljava/io/InputStream;)V

    return-void

    :goto_40
    invoke-static {v1}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PrefixFileReader;->close(Ljava/io/InputStream;)V

    .line 64
    throw p0
.end method

.method private blacklist loadPhonePrefixMapFromFile(Ljava/lang/String;)V
    .registers 5

    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PrefixFileReader;->metadataLoader:Lcom/android/internal/telephony/phonenumbers/MetadataLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PrefixFileReader;->phonePrefixDataDirectory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/phonenumbers/MetadataLoader;->loadMetadata(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    .line 83
    :try_start_18
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_36
    .catchall {:try_start_18 .. :try_end_1d} :catchall_34

    .line 84
    :try_start_1d
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMap;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMap;-><init>()V

    .line 85
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMap;->readExternal(Ljava/io/ObjectInput;)V

    .line 86
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PrefixFileReader;->availablePhonePrefixMaps:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2a} :catch_31
    .catchall {:try_start_1d .. :try_end_2a} :catchall_2e

    .line 90
    invoke-static {v2}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PrefixFileReader;->close(Ljava/io/InputStream;)V

    return-void

    :catchall_2e
    move-exception p0

    move-object v1, v2

    goto :goto_46

    :catch_31
    move-exception p0

    move-object v1, v2

    goto :goto_37

    :catchall_34
    move-exception p0

    goto :goto_46

    :catch_36
    move-exception p0

    .line 88
    :goto_37
    :try_start_37
    sget-object p1, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PrefixFileReader;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_34

    .line 90
    invoke-static {v1}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PrefixFileReader;->close(Ljava/io/InputStream;)V

    return-void

    :goto_46
    invoke-static {v1}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PrefixFileReader;->close(Ljava/io/InputStream;)V

    .line 91
    throw p0
.end method

.method private blacklist mayFallBackToEnglish(Ljava/lang/String;)Z
    .registers 2

    .line 144
    const-string p0, "zh"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    const-string p0, "ja"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    const-string p0, "ko"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist getDescriptionForNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 119
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    goto :goto_13

    .line 123
    :cond_8
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v0

    const-wide/32 v2, 0x989680

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit16 v0, v0, 0x3e8

    .line 125
    :goto_13
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PrefixFileReader;->getPhonePrefixDescriptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMap;

    move-result-object p3

    if-eqz p3, :cond_1e

    .line 127
    invoke-virtual {p3, p1}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMap;->lookup(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1f

    :cond_1e
    const/4 p3, 0x0

    .line 129
    :goto_1f
    const-string p4, ""

    if-eqz p3, :cond_29

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3c

    :cond_29
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PrefixFileReader;->mayFallBackToEnglish(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3c

    .line 130
    const-string p2, "en"

    invoke-direct {p0, v0, p2, p4, p4}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PrefixFileReader;->getPhonePrefixDescriptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMap;

    move-result-object p0

    if-nez p0, :cond_38

    return-object p4

    .line 134
    :cond_38
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMap;->lookup(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p3

    :cond_3c
    if-eqz p3, :cond_3f

    return-object p3

    :cond_3f
    return-object p4
.end method
