.class public Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;
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
            "Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mappingFileProvider:Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;

.field private final blacklist metadataLoader:Lcom/android/i18n/phonenumbers/MetadataLoader;

.field private final blacklist phonePrefixDataDirectory:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    const-class v0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "phonePrefixDataDirectory"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->mappingFileProvider:Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->availablePhonePrefixMaps:Ljava/util/Map;

    .line 51
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->phonePrefixDataDirectory:Ljava/lang/String;

    .line 52
    invoke-static {}, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->getInstance()Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->getMetadataLoader()Lcom/android/i18n/phonenumbers/MetadataLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->metadataLoader:Lcom/android/i18n/phonenumbers/MetadataLoader;

    .line 53
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->loadMappingFileProvider()V

    .line 54
    return-void
.end method

.method private static blacklist close(Ljava/io/InputStream;)V
    .registers 5
    .param p0, "in"    # Ljava/io/InputStream;

    .line 97
    if-eqz p0, :cond_12

    .line 99
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 102
    goto :goto_12

    .line 100
    :catch_6
    move-exception v0

    .line 101
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 104
    .end local v0    # "e":Ljava/io/IOException;
    :cond_12
    :goto_12
    return-void
.end method

.method private blacklist getPhonePrefixDescriptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;
    .registers 7
    .param p1, "prefixMapKey"    # I
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "script"    # Ljava/lang/String;
    .param p4, "region"    # Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->mappingFileProvider:Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->getFileName(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_e

    .line 73
    const/4 v1, 0x0

    return-object v1

    .line 75
    :cond_e
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->availablePhonePrefixMaps:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 76
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->loadPhonePrefixMapFromFile(Ljava/lang/String;)V

    .line 78
    :cond_19
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->availablePhonePrefixMaps:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    return-object v1
.end method

.method private blacklist loadMappingFileProvider()V
    .registers 7

    .line 57
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->metadataLoader:Lcom/android/i18n/phonenumbers/MetadataLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->phonePrefixDataDirectory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/i18n/phonenumbers/MetadataLoader;->loadMetadata(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 58
    .local v0, "source":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 60
    .local v1, "in":Ljava/io/ObjectInputStream;
    :try_start_1c
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v2

    .line 61
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->mappingFileProvider:Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;

    invoke-virtual {v2, v1}, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->readExternal(Ljava/io/ObjectInput;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_27} :catch_2d
    .catchall {:try_start_1c .. :try_end_27} :catchall_2b

    .line 65
    :goto_27
    invoke-static {v1}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->close(Ljava/io/InputStream;)V

    .line 66
    goto :goto_3a

    .line 65
    :catchall_2b
    move-exception v2

    goto :goto_3b

    .line 62
    :catch_2d
    move-exception v2

    .line 63
    .local v2, "e":Ljava/io/IOException;
    :try_start_2e
    sget-object v3, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_2b

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_27

    .line 67
    :goto_3a
    return-void

    .line 65
    :goto_3b
    invoke-static {v1}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->close(Ljava/io/InputStream;)V

    .line 66
    throw v2
.end method

.method private blacklist loadPhonePrefixMapFromFile(Ljava/lang/String;)V
    .registers 8
    .param p1, "fileName"    # Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->metadataLoader:Lcom/android/i18n/phonenumbers/MetadataLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->phonePrefixDataDirectory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/i18n/phonenumbers/MetadataLoader;->loadMetadata(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 83
    .local v0, "source":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 85
    .local v1, "in":Ljava/io/ObjectInputStream;
    :try_start_1a
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v2

    .line 86
    new-instance v2, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    invoke-direct {v2}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;-><init>()V

    .line 87
    .local v2, "map":Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;
    invoke-virtual {v2, v1}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->readExternal(Ljava/io/ObjectInput;)V

    .line 88
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->availablePhonePrefixMaps:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_2d} :catch_31
    .catchall {:try_start_1a .. :try_end_2d} :catchall_2f

    .line 92
    nop

    .end local v2    # "map":Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;
    goto :goto_3e

    :catchall_2f
    move-exception v2

    goto :goto_43

    .line 89
    :catch_31
    move-exception v2

    .line 90
    .local v2, "e":Ljava/io/IOException;
    :try_start_32
    sget-object v3, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_2f

    .line 92
    .end local v2    # "e":Ljava/io/IOException;
    nop

    :goto_3e
    invoke-static {v1}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->close(Ljava/io/InputStream;)V

    .line 93
    nop

    .line 94
    return-void

    .line 92
    :goto_43
    invoke-static {v1}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->close(Ljava/io/InputStream;)V

    .line 93
    throw v2
.end method

.method private blacklist mayFallBackToEnglish(Ljava/lang/String;)Z
    .registers 3
    .param p1, "lang"    # Ljava/lang/String;

    .line 146
    const-string v0, "zh"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "ja"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "ko"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method


# virtual methods
.method public blacklist getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "script"    # Ljava/lang/String;
    .param p4, "region"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 124
    .local v0, "countryCallingCode":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    .line 125
    move v1, v0

    goto :goto_14

    :cond_9
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v1

    const-wide/32 v3, 0x989680

    div-long/2addr v1, v3

    long-to-int v1, v1

    add-int/lit16 v1, v1, 0x3e8

    .line 126
    .local v1, "phonePrefix":I
    :goto_14
    nop

    .line 127
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->getPhonePrefixDescriptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    move-result-object v2

    .line 128
    .local v2, "phonePrefixDescriptions":Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;
    if-eqz v2, :cond_20

    .line 129
    invoke-virtual {v2, p1}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->lookup(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    .line 131
    .local v3, "description":Ljava/lang/String;
    :goto_21
    const-string v4, ""

    if-eqz v3, :cond_2b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3e

    :cond_2b
    invoke-direct {p0, p2}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->mayFallBackToEnglish(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 132
    const-string v5, "en"

    invoke-direct {p0, v1, v5, v4, v4}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->getPhonePrefixDescriptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    move-result-object v5

    .line 133
    .local v5, "defaultMap":Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;
    if-nez v5, :cond_3a

    .line 134
    return-object v4

    .line 136
    :cond_3a
    invoke-virtual {v5, p1}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->lookup(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 138
    .end local v5    # "defaultMap":Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;
    :cond_3e
    if-eqz v3, :cond_41

    move-object v4, v3

    :cond_41
    return-object v4
.end method
