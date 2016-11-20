.class final Lcom/android/i18n/phonenumbers/MultiFileMetadataSourceImpl;
.super Ljava/lang/Object;
.source "MultiFileMetadataSourceImpl.java"

# interfaces
.implements Lcom/android/i18n/phonenumbers/MetadataSource;


# static fields
.field private static final META_DATA_FILE_PREFIX:Ljava/lang/String; = "/com/android/i18n/phonenumbers/data/PhoneNumberMetadataProto"

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;
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

.field private final currentFilePrefix:Ljava/lang/String;

.field private final metadataLoader:Lcom/android/i18n/phonenumbers/MetadataLoader;

.field private final regionToMetadataMap:Ljava/util/Map;
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
    .line 38
    const-class v0, Lcom/android/i18n/phonenumbers/MultiFileMetadataSourceImpl;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    #@9
    move-result-object v0

    #@a
    .line 37
    sput-object v0, Lcom/android/i18n/phonenumbers/MultiFileMetadataSourceImpl;->logger:Ljava/util/logging/Logger;

    #@c
    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/android/i18n/phonenumbers/MetadataLoader;)V
    .locals 1
    .param p1, "metadataLoader"    # Lcom/android/i18n/phonenumbers/MetadataLoader;

    #@0
    .prologue
    .line 71
    const-string/jumbo v0, "/com/android/i18n/phonenumbers/data/PhoneNumberMetadataProto"

    #@3
    invoke-direct {p0, v0, p1}, Lcom/android/i18n/phonenumbers/MultiFileMetadataSourceImpl;-><init>(Ljava/lang/String;Lcom/android/i18n/phonenumbers/MetadataLoader;)V

    #@6
    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/i18n/phonenumbers/MetadataLoader;)V
    .locals 1
    .param p1, "currentFilePrefix"    # Ljava/lang/String;
    .param p2, "metadataLoader"    # Lcom/android/i18n/phonenumbers/MetadataLoader;

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    #@b
    move-result-object v0

    #@c
    .line 46
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/MultiFileMetadataSourceImpl;->regionToMetadataMap:Ljava/util/Map;

    #@e
    .line 55
    new-instance v0, Ljava/util/HashMap;

    #@10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@13
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    #@16
    move-result-object v0

    #@17
    .line 54
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/MultiFileMetadataSourceImpl;->countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;

    #@19
    .line 65
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/MultiFileMetadataSourceImpl;->currentFilePrefix:Ljava/lang/String;

    #@1b
    .line 66
    iput-object p2, p0, Lcom/android/i18n/phonenumbers/MultiFileMetadataSourceImpl;->metadataLoader:Lcom/android/i18n/phonenumbers/MetadataLoader;

    #@1d
    .line 64
    return-void
.end method

.method private static loadMetadataAndCloseInput(Ljava/io/ObjectInputStream;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .locals 6
    .param p0, "source"    # Ljava/io/ObjectInputStream;

    #@0
    .prologue
    .line 141
    new-instance v1, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;

    #@2
    invoke-direct {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;-><init>()V

    #@5
    .line 143
    .local v1, "metadataCollection":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->readExternal(Ljava/io/ObjectInput;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    .line 148
    :try_start_1
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@b
    .line 153
    :goto_0
    return-object v1

    #@c
    .line 149
    :catch_0
    move-exception v0

    #@d
    .line 150
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/android/i18n/phonenumbers/MultiFileMetadataSourceImpl;->logger:Ljava/util/logging/Logger;

    #@f
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #@11
    const-string/jumbo v4, "error closing input stream (ignored)"

    #@14
    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@17
    goto :goto_0

    #@18
    .line 144
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    #@19
    .line 145
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_2
    sget-object v2, Lcom/android/i18n/phonenumbers/MultiFileMetadataSourceImpl;->logger:Ljava/util/logging/Logger;

    #@1b
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #@1d
    const-string/jumbo v4, "error reading input (ignored)"

    #@20
    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@23
    .line 148
    :try_start_3
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    #@26
    goto :goto_0

    #@27
    .line 149
    :catch_2
    move-exception v0

    #@28
    .line 150
    sget-object v2, Lcom/android/i18n/phonenumbers/MultiFileMetadataSourceImpl;->logger:Ljava/util/logging/Logger;

    #@2a
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #@2c
    const-string/jumbo v4, "error closing input stream (ignored)"

    #@2f
    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@32
    goto :goto_0

    #@33
    .line 146
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    #@34
    .line 148
    :try_start_4
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    #@37
    .line 146
    :goto_1
    throw v2

    #@38
    .line 149
    :catch_3
    move-exception v0

    #@39
    .line 150
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/i18n/phonenumbers/MultiFileMetadataSourceImpl;->logger:Ljava/util/logging/Logger;

    #@3b
    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #@3d
    const-string/jumbo v5, "error closing input stream (ignored)"

    #@40
    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@43
    goto :goto_1
.end method


# virtual methods
.method public getMetadataForNonGeographicalRegion(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 4
    .param p1, "countryCallingCode"    # I

    #@0
    .prologue
    .line 88
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/MultiFileMetadataSourceImpl;->countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;

    #@2
    monitor-enter v1

    #@3
    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/MultiFileMetadataSourceImpl;->countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;

    #@5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v2

    #@9
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 90
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/MultiFileMetadataSourceImpl;->currentFilePrefix:Ljava/lang/String;

    #@11
    const-string/jumbo v2, "001"

    #@14
    .line 91
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/MultiFileMetadataSourceImpl;->metadataLoader:Lcom/android/i18n/phonenumbers/MetadataLoader;

    #@16
    .line 90
    invoke-virtual {p0, v0, v2, p1, v3}, Lcom/android/i18n/phonenumbers/MultiFileMetadataSourceImpl;->loadMetadataFromFile(Ljava/lang/String;Ljava/lang/String;ILcom/android/i18n/phonenumbers/MetadataLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    :cond_0
    monitor-exit v1

    #@1a
    .line 94
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/MultiFileMetadataSourceImpl;->countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;

    #@1c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v1

    #@20
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@26
    return-object v0

    #@27
    .line 88
    :catchall_0
    move-exception v0

    #@28
    monitor-exit v1

    #@29
    throw v0
.end method

.method public getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 4
    .param p1, "regionCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 76
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/MultiFileMetadataSourceImpl;->regionToMetadataMap:Ljava/util/Map;

    #@2
    monitor-enter v1

    #@3
    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/MultiFileMetadataSourceImpl;->regionToMetadataMap:Ljava/util/Map;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 80
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/MultiFileMetadataSourceImpl;->currentFilePrefix:Ljava/lang/String;

    #@d
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/MultiFileMetadataSourceImpl;->metadataLoader:Lcom/android/i18n/phonenumbers/MetadataLoader;

    #@f
    const/4 v3, 0x0

    #@10
    invoke-virtual {p0, v0, p1, v3, v2}, Lcom/android/i18n/phonenumbers/MultiFileMetadataSourceImpl;->loadMetadataFromFile(Ljava/lang/String;Ljava/lang/String;ILcom/android/i18n/phonenumbers/MetadataLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :cond_0
    monitor-exit v1

    #@14
    .line 83
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/MultiFileMetadataSourceImpl;->regionToMetadataMap:Ljava/util/Map;

    #@16
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@1c
    return-object v0

    #@1d
    .line 76
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method

.method loadMetadataFromFile(Ljava/lang/String;Ljava/lang/String;ILcom/android/i18n/phonenumbers/MetadataLoader;)V
    .locals 14
    .param p1, "filePrefix"    # Ljava/lang/String;
    .param p2, "regionCode"    # Ljava/lang/String;
    .param p3, "countryCallingCode"    # I
    .param p4, "metadataLoader"    # Lcom/android/i18n/phonenumbers/MetadataLoader;

    #@0
    .prologue
    .line 100
    const-string/jumbo v10, "001"

    #@3
    move-object/from16 v0, p2

    #@5
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v5

    #@9
    .line 101
    .local v5, "isNonGeoRegion":Z
    new-instance v10, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v10

    #@12
    const-string/jumbo v11, "_"

    #@15
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v11

    #@19
    .line 102
    if-eqz v5, :cond_0

    #@1b
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@1e
    move-result-object v10

    #@1f
    .line 101
    :goto_0
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v10

    #@23
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    .line 103
    .local v2, "fileName":Ljava/lang/String;
    move-object/from16 v0, p4

    #@29
    invoke-interface {v0, v2}, Lcom/android/i18n/phonenumbers/MetadataLoader;->loadMetadata(Ljava/lang/String;)Ljava/io/InputStream;

    #@2c
    move-result-object v9

    #@2d
    .line 104
    .local v9, "source":Ljava/io/InputStream;
    if-nez v9, :cond_1

    #@2f
    .line 105
    sget-object v10, Lcom/android/i18n/phonenumbers/MultiFileMetadataSourceImpl;->logger:Ljava/util/logging/Logger;

    #@31
    sget-object v11, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    #@33
    new-instance v12, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v13, "missing metadata: "

    #@3b
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v12

    #@3f
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v12

    #@43
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v12

    #@47
    invoke-virtual {v10, v11, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@4a
    .line 106
    new-instance v10, Ljava/lang/IllegalStateException;

    #@4c
    new-instance v11, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v12, "missing metadata: "

    #@54
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v11

    #@58
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v11

    #@5c
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v11

    #@60
    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@63
    throw v10

    #@64
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v9    # "source":Ljava/io/InputStream;
    :cond_0
    move-object/from16 v10, p2

    #@66
    .line 102
    goto :goto_0

    #@67
    .line 108
    .restart local v2    # "fileName":Ljava/lang/String;
    .restart local v9    # "source":Ljava/io/InputStream;
    :cond_1
    const/4 v3, 0x0

    #@68
    .line 110
    .local v3, "in":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v4, Ljava/io/ObjectInputStream;

    #@6a
    invoke-direct {v4, v9}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@6d
    .line 111
    .local v4, "in":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-static {v4}, Lcom/android/i18n/phonenumbers/MultiFileMetadataSourceImpl;->loadMetadataAndCloseInput(Ljava/io/ObjectInputStream;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;

    #@70
    .end local v3    # "in":Ljava/io/ObjectInputStream;
    move-result-object v7

    #@71
    .line 112
    .local v7, "metadataCollection":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->getMetadataList()Ljava/util/List;

    #@74
    move-result-object v8

    #@75
    .line 113
    .local v8, "metadataList":Ljava/util/List;, "Ljava/util/List<Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    #@78
    move-result v10

    #@79
    if-eqz v10, :cond_2

    #@7b
    .line 114
    sget-object v10, Lcom/android/i18n/phonenumbers/MultiFileMetadataSourceImpl;->logger:Ljava/util/logging/Logger;

    #@7d
    sget-object v11, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    #@7f
    new-instance v12, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v13, "empty metadata: "

    #@87
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v12

    #@8b
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v12

    #@8f
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v12

    #@93
    invoke-virtual {v10, v11, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@96
    .line 115
    new-instance v10, Ljava/lang/IllegalStateException;

    #@98
    new-instance v11, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    const-string/jumbo v12, "empty metadata: "

    #@a0
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v11

    #@a4
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v11

    #@a8
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v11

    #@ac
    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@af
    throw v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@b0
    .line 126
    .end local v7    # "metadataCollection":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .end local v8    # "metadataList":Ljava/util/List;, "Ljava/util/List<Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    :catch_0
    move-exception v1

    #@b1
    .local v1, "e":Ljava/io/IOException;
    move-object v3, v4

    #@b2
    .line 127
    .end local v4    # "in":Ljava/io/ObjectInputStream;
    :goto_1
    sget-object v10, Lcom/android/i18n/phonenumbers/MultiFileMetadataSourceImpl;->logger:Ljava/util/logging/Logger;

    #@b4
    sget-object v11, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    #@b6
    new-instance v12, Ljava/lang/StringBuilder;

    #@b8
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@bb
    const-string/jumbo v13, "cannot load/parse metadata: "

    #@be
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v12

    #@c2
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v12

    #@c6
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c9
    move-result-object v12

    #@ca
    invoke-virtual {v10, v11, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@cd
    .line 128
    new-instance v10, Ljava/lang/RuntimeException;

    #@cf
    new-instance v11, Ljava/lang/StringBuilder;

    #@d1
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@d4
    const-string/jumbo v12, "cannot load/parse metadata: "

    #@d7
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v11

    #@db
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v11

    #@df
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e2
    move-result-object v11

    #@e3
    invoke-direct {v10, v11, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@e6
    throw v10

    #@e7
    .line 117
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "in":Ljava/io/ObjectInputStream;
    .restart local v7    # "metadataCollection":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .restart local v8    # "metadataList":Ljava/util/List;, "Ljava/util/List<Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    :cond_2
    :try_start_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@ea
    move-result v10

    #@eb
    const/4 v11, 0x1

    #@ec
    if-le v10, v11, :cond_3

    #@ee
    .line 118
    sget-object v10, Lcom/android/i18n/phonenumbers/MultiFileMetadataSourceImpl;->logger:Ljava/util/logging/Logger;

    #@f0
    sget-object v11, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #@f2
    new-instance v12, Ljava/lang/StringBuilder;

    #@f4
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@f7
    const-string/jumbo v13, "invalid metadata (too many entries): "

    #@fa
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v12

    #@fe
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v12

    #@102
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@105
    move-result-object v12

    #@106
    invoke-virtual {v10, v11, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@109
    .line 120
    :cond_3
    const/4 v10, 0x0

    #@10a
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10d
    move-result-object v6

    #@10e
    check-cast v6, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@110
    .line 121
    .local v6, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v5, :cond_4

    #@112
    .line 122
    iget-object v10, p0, Lcom/android/i18n/phonenumbers/MultiFileMetadataSourceImpl;->countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;

    #@114
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@117
    move-result-object v11

    #@118
    invoke-interface {v10, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11b
    .line 99
    :goto_2
    return-void

    #@11c
    .line 124
    :cond_4
    iget-object v10, p0, Lcom/android/i18n/phonenumbers/MultiFileMetadataSourceImpl;->regionToMetadataMap:Ljava/util/Map;

    #@11e
    move-object/from16 v0, p2

    #@120
    invoke-interface {v10, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@123
    goto :goto_2

    #@124
    .line 126
    .end local v4    # "in":Ljava/io/ObjectInputStream;
    .end local v6    # "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v7    # "metadataCollection":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .end local v8    # "metadataList":Ljava/util/List;, "Ljava/util/List<Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    .restart local v3    # "in":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v1

    #@125
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1
.end method
