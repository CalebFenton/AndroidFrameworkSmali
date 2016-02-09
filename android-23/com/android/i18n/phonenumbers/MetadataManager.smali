.class Lcom/android/i18n/phonenumbers/MetadataManager;
.super Ljava/lang/Object;
.source "MetadataManager.java"


# static fields
.field private static final ALTERNATE_FORMATS_FILE_PREFIX:Ljava/lang/String; = "/com/android/i18n/phonenumbers/data/PhoneNumberAlternateFormatsProto"

.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final SHORT_NUMBER_METADATA_FILE_PREFIX:Ljava/lang/String; = "/com/android/i18n/phonenumbers/data/ShortNumberMetadataProto"

.field private static final callingCodeToAlternateFormatsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private static final countryCodeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final regionCodeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final regionCodeToShortNumberMetadataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 45
    const-class v0, Lcom/android/i18n/phonenumbers/MetadataManager;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    #@9
    move-result-object v0

    #@a
    sput-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->LOGGER:Ljava/util/logging/Logger;

    #@c
    .line 48
    new-instance v0, Ljava/util/HashMap;

    #@e
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@11
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    #@14
    move-result-object v0

    #@15
    .line 47
    sput-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->callingCodeToAlternateFormatsMap:Ljava/util/Map;

    #@17
    .line 50
    new-instance v0, Ljava/util/HashMap;

    #@19
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1c
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    #@1f
    move-result-object v0

    #@20
    .line 49
    sput-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->regionCodeToShortNumberMetadataMap:Ljava/util/Map;

    #@22
    .line 55
    invoke-static {}, Lcom/android/i18n/phonenumbers/AlternateFormatsCountryCodeSet;->getCountryCodeSet()Ljava/util/Set;

    #@25
    move-result-object v0

    #@26
    .line 54
    sput-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->countryCodeSet:Ljava/util/Set;

    #@28
    .line 59
    invoke-static {}, Lcom/android/i18n/phonenumbers/ShortNumbersRegionCodeSet;->getRegionCodeSet()Ljava/util/Set;

    #@2b
    move-result-object v0

    #@2c
    sput-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->regionCodeSet:Ljava/util/Set;

    #@2e
    .line 39
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static close(Ljava/io/InputStream;)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 65
    if-eqz p0, :cond_0

    #@2
    .line 67
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 64
    :cond_0
    :goto_0
    return-void

    #@6
    .line 68
    :catch_0
    move-exception v0

    #@7
    .line 69
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/i18n/phonenumbers/MetadataManager;->LOGGER:Ljava/util/logging/Logger;

    #@9
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #@b
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@12
    goto :goto_0
.end method

.method static getAlternateFormatsForCountry(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 3
    .param p0, "countryCallingCode"    # I

    #@0
    .prologue
    .line 93
    sget-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->countryCodeSet:Ljava/util/Set;

    #@2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 94
    const/4 v0, 0x0

    #@d
    return-object v0

    #@e
    .line 96
    :cond_0
    sget-object v1, Lcom/android/i18n/phonenumbers/MetadataManager;->callingCodeToAlternateFormatsMap:Ljava/util/Map;

    #@10
    monitor-enter v1

    #@11
    .line 97
    :try_start_0
    sget-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->callingCodeToAlternateFormatsMap:Ljava/util/Map;

    #@13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16
    move-result-object v2

    #@17
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@1a
    move-result v0

    #@1b
    if-nez v0, :cond_1

    #@1d
    .line 98
    invoke-static {p0}, Lcom/android/i18n/phonenumbers/MetadataManager;->loadAlternateFormatsMetadataFromFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    :cond_1
    monitor-exit v1

    #@21
    .line 101
    sget-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->callingCodeToAlternateFormatsMap:Ljava/util/Map;

    #@23
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26
    move-result-object v1

    #@27
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@2d
    return-object v0

    #@2e
    .line 96
    :catchall_0
    move-exception v0

    #@2f
    monitor-exit v1

    #@30
    throw v0
.end method

.method static getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 2
    .param p0, "regionCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 128
    sget-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->regionCodeSet:Ljava/util/Set;

    #@2
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 129
    const/4 v0, 0x0

    #@9
    return-object v0

    #@a
    .line 131
    :cond_0
    sget-object v1, Lcom/android/i18n/phonenumbers/MetadataManager;->regionCodeToShortNumberMetadataMap:Ljava/util/Map;

    #@c
    monitor-enter v1

    #@d
    .line 132
    :try_start_0
    sget-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->regionCodeToShortNumberMetadataMap:Ljava/util/Map;

    #@f
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_1

    #@15
    .line 133
    invoke-static {p0}, Lcom/android/i18n/phonenumbers/MetadataManager;->loadShortNumberMetadataFromFile(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    :cond_1
    monitor-exit v1

    #@19
    .line 136
    sget-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->regionCodeToShortNumberMetadataMap:Ljava/util/Map;

    #@1b
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@21
    return-object v0

    #@22
    .line 131
    :catchall_0
    move-exception v0

    #@23
    monitor-exit v1

    #@24
    throw v0
.end method

.method static getShortNumberMetadataSupportedRegions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 124
    sget-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->regionCodeSet:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method private static loadAlternateFormatsMetadataFromFile(I)V
    .locals 10
    .param p0, "countryCallingCode"    # I

    #@0
    .prologue
    .line 75
    const-class v7, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;

    #@2
    .line 76
    new-instance v8, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v9, "/com/android/i18n/phonenumbers/data/PhoneNumberAlternateFormatsProto_"

    #@a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v8

    #@e
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v8

    #@12
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v8

    #@16
    .line 75
    invoke-virtual {v7, v8}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    #@19
    move-result-object v6

    #@1a
    .line 77
    .local v6, "source":Ljava/io/InputStream;
    const/4 v2, 0x0

    #@1b
    .line 79
    .local v2, "in":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectInputStream;

    #@1d
    invoke-direct {v3, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 80
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .local v3, "in":Ljava/io/ObjectInputStream;
    :try_start_1
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;

    #@22
    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;-><init>()V

    #@25
    .line 81
    .local v0, "alternateFormats":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    invoke-virtual {v0, v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->readExternal(Ljava/io/ObjectInput;)V

    #@28
    .line 82
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->getMetadataList()Ljava/util/List;

    #@2b
    move-result-object v7

    #@2c
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2f
    move-result-object v5

    #@30
    .local v5, "metadata$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@33
    move-result v7

    #@34
    if-eqz v7, :cond_0

    #@36
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@39
    move-result-object v4

    #@3a
    check-cast v4, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@3c
    .line 83
    .local v4, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    sget-object v7, Lcom/android/i18n/phonenumbers/MetadataManager;->callingCodeToAlternateFormatsMap:Ljava/util/Map;

    #@3e
    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    #@41
    move-result v8

    #@42
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@45
    move-result-object v8

    #@46
    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@49
    goto :goto_0

    #@4a
    .line 85
    .end local v0    # "alternateFormats":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .end local v4    # "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v5    # "metadata$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    #@4b
    .local v1, "e":Ljava/io/IOException;
    move-object v2, v3

    #@4c
    .line 86
    .end local v3    # "in":Ljava/io/ObjectInputStream;
    :goto_1
    :try_start_2
    sget-object v7, Lcom/android/i18n/phonenumbers/MetadataManager;->LOGGER:Ljava/util/logging/Logger;

    #@4e
    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #@50
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@53
    move-result-object v9

    #@54
    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@57
    .line 88
    invoke-static {v2}, Lcom/android/i18n/phonenumbers/MetadataManager;->close(Ljava/io/InputStream;)V

    #@5a
    .line 74
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    #@5b
    .line 88
    .restart local v0    # "alternateFormats":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .restart local v3    # "in":Ljava/io/ObjectInputStream;
    .restart local v5    # "metadata$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-static {v3}, Lcom/android/i18n/phonenumbers/MetadataManager;->close(Ljava/io/InputStream;)V

    #@5e
    move-object v2, v3

    #@5f
    .end local v3    # "in":Ljava/io/ObjectInputStream;
    .local v2, "in":Ljava/io/ObjectInputStream;
    goto :goto_2

    #@60
    .line 87
    .end local v0    # "alternateFormats":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .end local v5    # "metadata$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    #@61
    .line 88
    :goto_3
    invoke-static {v2}, Lcom/android/i18n/phonenumbers/MetadataManager;->close(Ljava/io/InputStream;)V

    #@64
    .line 87
    throw v7

    #@65
    .restart local v3    # "in":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v7

    #@66
    move-object v2, v3

    #@67
    .end local v3    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    goto :goto_3

    #@68
    .line 85
    .local v2, "in":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v1

    #@69
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method private static loadShortNumberMetadataFromFile(Ljava/lang/String;)V
    .locals 10
    .param p0, "regionCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 105
    const-class v7, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;

    #@2
    .line 106
    new-instance v8, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v9, "/com/android/i18n/phonenumbers/data/ShortNumberMetadataProto_"

    #@a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v8

    #@e
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v8

    #@12
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v8

    #@16
    .line 105
    invoke-virtual {v7, v8}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    #@19
    move-result-object v6

    #@1a
    .line 107
    .local v6, "source":Ljava/io/InputStream;
    const/4 v1, 0x0

    #@1b
    .line 109
    .local v1, "in":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    #@1d
    invoke-direct {v2, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 110
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .local v2, "in":Ljava/io/ObjectInputStream;
    :try_start_1
    new-instance v5, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;

    #@22
    invoke-direct {v5}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;-><init>()V

    #@25
    .line 111
    .local v5, "shortNumberMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    invoke-virtual {v5, v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->readExternal(Ljava/io/ObjectInput;)V

    #@28
    .line 112
    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->getMetadataList()Ljava/util/List;

    #@2b
    move-result-object v7

    #@2c
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2f
    move-result-object v4

    #@30
    .local v4, "metadata$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@33
    move-result v7

    #@34
    if-eqz v7, :cond_0

    #@36
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@39
    move-result-object v3

    #@3a
    check-cast v3, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@3c
    .line 113
    .local v3, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    sget-object v7, Lcom/android/i18n/phonenumbers/MetadataManager;->regionCodeToShortNumberMetadataMap:Ljava/util/Map;

    #@3e
    invoke-interface {v7, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@41
    goto :goto_0

    #@42
    .line 115
    .end local v3    # "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v4    # "metadata$iterator":Ljava/util/Iterator;
    .end local v5    # "shortNumberMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    :catch_0
    move-exception v0

    #@43
    .local v0, "e":Ljava/io/IOException;
    move-object v1, v2

    #@44
    .line 116
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    :goto_1
    :try_start_2
    sget-object v7, Lcom/android/i18n/phonenumbers/MetadataManager;->LOGGER:Ljava/util/logging/Logger;

    #@46
    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #@48
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@4b
    move-result-object v9

    #@4c
    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4f
    .line 118
    invoke-static {v1}, Lcom/android/i18n/phonenumbers/MetadataManager;->close(Ljava/io/InputStream;)V

    #@52
    .line 104
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    #@53
    .line 118
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v4    # "metadata$iterator":Ljava/util/Iterator;
    .restart local v5    # "shortNumberMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    :cond_0
    invoke-static {v2}, Lcom/android/i18n/phonenumbers/MetadataManager;->close(Ljava/io/InputStream;)V

    #@56
    move-object v1, v2

    #@57
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .local v1, "in":Ljava/io/ObjectInputStream;
    goto :goto_2

    #@58
    .line 117
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .end local v4    # "metadata$iterator":Ljava/util/Iterator;
    .end local v5    # "shortNumberMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    :catchall_0
    move-exception v7

    #@59
    .line 118
    :goto_3
    invoke-static {v1}, Lcom/android/i18n/phonenumbers/MetadataManager;->close(Ljava/io/InputStream;)V

    #@5c
    .line 117
    throw v7

    #@5d
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v7

    #@5e
    move-object v1, v2

    #@5f
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    goto :goto_3

    #@60
    .line 115
    .local v1, "in":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v0

    #@61
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1
.end method
