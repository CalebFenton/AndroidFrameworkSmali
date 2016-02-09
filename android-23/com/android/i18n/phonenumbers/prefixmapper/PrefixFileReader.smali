.class public Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;
.super Ljava/lang/Object;
.source "PrefixFileReader.java"


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private availablePhonePrefixMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;",
            ">;"
        }
    .end annotation
.end field

.field private mappingFileProvider:Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;

.field private final phonePrefixDataDirectory:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 35
    const-class v0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    #@9
    move-result-object v0

    #@a
    sput-object v0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->LOGGER:Ljava/util/logging/Logger;

    #@c
    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "phonePrefixDataDirectory"    # Ljava/lang/String;

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    new-instance v0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;

    #@5
    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->mappingFileProvider:Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;

    #@a
    .line 44
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    .line 43
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->availablePhonePrefixMaps:Ljava/util/Map;

    #@11
    .line 47
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->phonePrefixDataDirectory:Ljava/lang/String;

    #@13
    .line 48
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->loadMappingFileProvider()V

    #@16
    .line 46
    return-void
.end method

.method private static close(Ljava/io/InputStream;)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 94
    if-eqz p0, :cond_0

    #@2
    .line 96
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 93
    :cond_0
    :goto_0
    return-void

    #@6
    .line 97
    :catch_0
    move-exception v0

    #@7
    .line 98
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->LOGGER:Ljava/util/logging/Logger;

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

.method private getPhonePrefixDescriptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;
    .locals 2
    .param p1, "prefixMapKey"    # I
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "script"    # Ljava/lang/String;
    .param p4, "region"    # Ljava/lang/String;

    #@0
    .prologue
    .line 67
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->mappingFileProvider:Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;

    #@2
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->getFileName(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 68
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 69
    const/4 v1, 0x0

    #@d
    return-object v1

    #@e
    .line 71
    :cond_0
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->availablePhonePrefixMaps:Ljava/util/Map;

    #@10
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_1

    #@16
    .line 72
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->loadPhonePrefixMapFromFile(Ljava/lang/String;)V

    #@19
    .line 74
    :cond_1
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->availablePhonePrefixMaps:Ljava/util/Map;

    #@1b
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    #@21
    return-object v1
.end method

.method private loadMappingFileProvider()V
    .locals 7

    #@0
    .prologue
    .line 53
    const-class v4, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;

    #@2
    new-instance v5, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    iget-object v6, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->phonePrefixDataDirectory:Ljava/lang/String;

    #@9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v5

    #@d
    const-string/jumbo v6, "config"

    #@10
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v5

    #@14
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    #@1b
    move-result-object v3

    #@1c
    .line 54
    .local v3, "source":Ljava/io/InputStream;
    const/4 v1, 0x0

    #@1d
    .line 56
    .local v1, "in":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    #@1f
    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 57
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .local v2, "in":Ljava/io/ObjectInputStream;
    :try_start_1
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->mappingFileProvider:Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;

    #@24
    invoke-virtual {v4, v2}, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->readExternal(Ljava/io/ObjectInput;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@27
    .line 61
    invoke-static {v2}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->close(Ljava/io/InputStream;)V

    #@2a
    move-object v1, v2

    #@2b
    .line 51
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    :goto_0
    return-void

    #@2c
    .line 58
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v0

    #@2d
    .line 59
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    sget-object v4, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->LOGGER:Ljava/util/logging/Logger;

    #@2f
    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #@31
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@34
    move-result-object v6

    #@35
    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@38
    .line 61
    invoke-static {v1}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->close(Ljava/io/InputStream;)V

    #@3b
    goto :goto_0

    #@3c
    .line 60
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    #@3d
    .line 61
    :goto_2
    invoke-static {v1}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->close(Ljava/io/InputStream;)V

    #@40
    .line 60
    throw v4

    #@41
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v4

    #@42
    move-object v1, v2

    #@43
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .local v1, "in":Ljava/io/ObjectInputStream;
    goto :goto_2

    #@44
    .line 58
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v0

    #@45
    .restart local v0    # "e":Ljava/io/IOException;
    move-object v1, v2

    #@46
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    goto :goto_1
.end method

.method private loadPhonePrefixMapFromFile(Ljava/lang/String;)V
    .locals 8
    .param p1, "fileName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 79
    const-class v5, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;

    #@2
    new-instance v6, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    iget-object v7, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->phonePrefixDataDirectory:Ljava/lang/String;

    #@9
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v6

    #@d
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v6

    #@11
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v6

    #@15
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    #@18
    move-result-object v4

    #@19
    .line 80
    .local v4, "source":Ljava/io/InputStream;
    const/4 v1, 0x0

    #@1a
    .line 82
    .local v1, "in":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    #@1c
    invoke-direct {v2, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 83
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .local v2, "in":Ljava/io/ObjectInputStream;
    :try_start_1
    new-instance v3, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    #@21
    invoke-direct {v3}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;-><init>()V

    #@24
    .line 84
    .local v3, "map":Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;
    invoke-virtual {v3, v2}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->readExternal(Ljava/io/ObjectInput;)V

    #@27
    .line 85
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->availablePhonePrefixMaps:Ljava/util/Map;

    #@29
    invoke-interface {v5, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@2c
    .line 89
    invoke-static {v2}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->close(Ljava/io/InputStream;)V

    #@2f
    move-object v1, v2

    #@30
    .line 77
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .end local v3    # "map":Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;
    :goto_0
    return-void

    #@31
    .line 86
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v0

    #@32
    .line 87
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    sget-object v5, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->LOGGER:Ljava/util/logging/Logger;

    #@34
    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #@36
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@39
    move-result-object v7

    #@3a
    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3d
    .line 89
    invoke-static {v1}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->close(Ljava/io/InputStream;)V

    #@40
    goto :goto_0

    #@41
    .line 88
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    #@42
    .line 89
    :goto_2
    invoke-static {v1}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->close(Ljava/io/InputStream;)V

    #@45
    .line 88
    throw v5

    #@46
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v5

    #@47
    move-object v1, v2

    #@48
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .local v1, "in":Ljava/io/ObjectInputStream;
    goto :goto_2

    #@49
    .line 86
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v0

    #@4a
    .restart local v0    # "e":Ljava/io/IOException;
    move-object v1, v2

    #@4b
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    goto :goto_1
.end method

.method private mayFallBackToEnglish(Ljava/lang/String;)Z
    .locals 2
    .param p1, "lang"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 141
    const-string/jumbo v1, "zh"

    #@4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    const-string/jumbo v1, "ja"

    #@d
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    :cond_0
    :goto_0
    return v0

    #@14
    :cond_1
    const-string/jumbo v1, "ko"

    #@17
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v1

    #@1b
    if-nez v1, :cond_0

    #@1d
    const/4 v0, 0x1

    #@1e
    goto :goto_0
.end method


# virtual methods
.method public getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "lang"    # Ljava/lang/String;
    .param p3, "script"    # Ljava/lang/String;
    .param p4, "region"    # Ljava/lang/String;

    #@0
    .prologue
    .line 116
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    #@3
    move-result v0

    #@4
    .line 119
    .local v0, "countryCallingCode":I
    const/4 v5, 0x1

    #@5
    if-eq v0, v5, :cond_1

    #@7
    .line 120
    move v3, v0

    #@8
    .line 122
    .local v3, "phonePrefix":I
    :goto_0
    invoke-direct {p0, v3, p2, p3, p4}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->getPhonePrefixDescriptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    #@b
    move-result-object v4

    #@c
    .line 123
    .local v4, "phonePrefixDescriptions":Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;
    if-eqz v4, :cond_2

    #@e
    .line 124
    invoke-virtual {v4, p1}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->lookup(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    .line 126
    :goto_1
    if-eqz v2, :cond_0

    #@14
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@17
    move-result v5

    #@18
    if-nez v5, :cond_4

    #@1a
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->mayFallBackToEnglish(Ljava/lang/String;)Z

    #@1d
    move-result v5

    #@1e
    if-eqz v5, :cond_4

    #@20
    .line 127
    const-string/jumbo v5, "en"

    #@23
    const-string/jumbo v6, ""

    #@26
    const-string/jumbo v7, ""

    #@29
    invoke-direct {p0, v3, v5, v6, v7}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->getPhonePrefixDescriptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    #@2c
    move-result-object v1

    #@2d
    .line 128
    .local v1, "defaultMap":Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;
    if-nez v1, :cond_3

    #@2f
    .line 129
    const-string/jumbo v5, ""

    #@32
    return-object v5

    #@33
    .line 120
    .end local v1    # "defaultMap":Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;
    .end local v3    # "phonePrefix":I
    .end local v4    # "phonePrefixDescriptions":Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;
    :cond_1
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    #@36
    move-result-wide v6

    #@37
    const-wide/32 v8, 0x989680

    #@3a
    div-long/2addr v6, v8

    #@3b
    long-to-int v5, v6

    #@3c
    add-int/lit16 v3, v5, 0x3e8

    #@3e
    .restart local v3    # "phonePrefix":I
    goto :goto_0

    #@3f
    .line 124
    .restart local v4    # "phonePrefixDescriptions":Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;
    :cond_2
    const/4 v2, 0x0

    #@40
    .local v2, "description":Ljava/lang/String;
    goto :goto_1

    #@41
    .line 131
    .end local v2    # "description":Ljava/lang/String;
    .restart local v1    # "defaultMap":Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;
    :cond_3
    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->lookup(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    .line 133
    .end local v1    # "defaultMap":Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;
    :cond_4
    if-eqz v2, :cond_5

    #@47
    :goto_2
    return-object v2

    #@48
    :cond_5
    const-string/jumbo v2, ""

    #@4b
    goto :goto_2
.end method
