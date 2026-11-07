.class final Lcom/android/i18n/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;
.super Ljava/lang/Object;
.source "BlockingMetadataBootstrappingGuard.java"

# interfaces
.implements Lcom/android/i18n/phonenumbers/metadata/source/MetadataBootstrappingGuard;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/i18n/phonenumbers/metadata/source/MetadataContainer;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/i18n/phonenumbers/metadata/source/MetadataBootstrappingGuard<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final blacklist loadedFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist metadataContainer:Lcom/android/i18n/phonenumbers/metadata/source/MetadataContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final blacklist metadataLoader:Lcom/android/i18n/phonenumbers/MetadataLoader;

.field private final blacklist metadataParser:Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;


# direct methods
.method constructor blacklist <init>(Lcom/android/i18n/phonenumbers/MetadataLoader;Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;Lcom/android/i18n/phonenumbers/metadata/source/MetadataContainer;)V
    .registers 5
    .param p1, "metadataLoader"    # Lcom/android/i18n/phonenumbers/MetadataLoader;
    .param p2, "metadataParser"    # Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/phonenumbers/MetadataLoader;",
            "Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;",
            "TT;)V"
        }
    .end annotation

    .line 43
    .local p0, "this":Lcom/android/i18n/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;, "Lcom/android/i18n/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard<TT;>;"
    .local p3, "metadataContainer":Lcom/android/i18n/phonenumbers/metadata/source/MetadataContainer;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;->metadataLoader:Lcom/android/i18n/phonenumbers/MetadataLoader;

    .line 45
    iput-object p2, p0, Lcom/android/i18n/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;->metadataParser:Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;

    .line 46
    iput-object p3, p0, Lcom/android/i18n/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;->metadataContainer:Lcom/android/i18n/phonenumbers/metadata/source/MetadataContainer;

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;->loadedFiles:Ljava/util/Map;

    .line 48
    return-void
.end method

.method private declared-synchronized blacklist bootstrapMetadata(Ljava/lang/String;)V
    .registers 6
    .param p1, "phoneMetadataFile"    # Ljava/lang/String;

    .local p0, "this":Lcom/android/i18n/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;, "Lcom/android/i18n/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard<TT;>;"
    monitor-enter p0

    .line 61
    :try_start_1
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;->loadedFiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_2c

    if-eqz v0, :cond_b

    .line 62
    monitor-exit p0

    return-void

    .line 64
    :cond_b
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;->read(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 65
    .local v0, "phoneMetadata":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 66
    .local v2, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;->metadataContainer:Lcom/android/i18n/phonenumbers/metadata/source/MetadataContainer;

    invoke-interface {v3, v2}, Lcom/android/i18n/phonenumbers/metadata/source/MetadataContainer;->accept(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)V

    .line 67
    .end local v2    # "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    goto :goto_13

    .line 68
    .end local p0    # "this":Lcom/android/i18n/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;, "Lcom/android/i18n/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard<TT;>;"
    :cond_25
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;->loadedFiles:Ljava/util/Map;

    invoke-interface {v1, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_b .. :try_end_2a} :catchall_2c

    .line 69
    monitor-exit p0

    return-void

    .line 60
    .end local v0    # "phoneMetadata":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    .end local p1    # "phoneMetadataFile":Ljava/lang/String;
    :catchall_2c
    move-exception p1

    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method private blacklist read(Ljava/lang/String;)Ljava/util/Collection;
    .registers 6
    .param p1, "phoneMetadataFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lcom/android/i18n/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;, "Lcom/android/i18n/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard<TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;->metadataLoader:Lcom/android/i18n/phonenumbers/MetadataLoader;

    invoke-interface {v0, p1}, Lcom/android/i18n/phonenumbers/MetadataLoader;->loadMetadata(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 74
    .local v0, "metadataStream":Ljava/io/InputStream;
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;->metadataParser:Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;

    invoke-virtual {v1, v0}, Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;->parse(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v1

    .line 75
    .end local v0    # "metadataStream":Ljava/io/InputStream;
    :catch_d
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public blacklist getOrBootstrap(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/metadata/source/MetadataContainer;
    .registers 3
    .param p1, "phoneMetadataFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 52
    .local p0, "this":Lcom/android/i18n/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;, "Lcom/android/i18n/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard<TT;>;"
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;->loadedFiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 53
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;->bootstrapMetadata(Ljava/lang/String;)V

    .line 55
    :cond_b
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;->metadataContainer:Lcom/android/i18n/phonenumbers/metadata/source/MetadataContainer;

    return-object v0
.end method
