.class final Lcom/android/internal/telephony/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;
.super Ljava/lang/Object;
.source "BlockingMetadataBootstrappingGuard.java"

# interfaces
.implements Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataBootstrappingGuard;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataContainer;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataBootstrappingGuard<",
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

.field private final blacklist metadataContainer:Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final blacklist metadataLoader:Lcom/android/internal/telephony/phonenumbers/MetadataLoader;

.field private final blacklist metadataParser:Lcom/android/internal/telephony/phonenumbers/metadata/init/MetadataParser;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/phonenumbers/MetadataLoader;Lcom/android/internal/telephony/phonenumbers/metadata/init/MetadataParser;Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataContainer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/phonenumbers/MetadataLoader;",
            "Lcom/android/internal/telephony/phonenumbers/metadata/init/MetadataParser;",
            "TT;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;->metadataLoader:Lcom/android/internal/telephony/phonenumbers/MetadataLoader;

    .line 44
    iput-object p2, p0, Lcom/android/internal/telephony/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;->metadataParser:Lcom/android/internal/telephony/phonenumbers/metadata/init/MetadataParser;

    .line 45
    iput-object p3, p0, Lcom/android/internal/telephony/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;->metadataContainer:Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataContainer;

    .line 46
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;->loadedFiles:Ljava/util/Map;

    return-void
.end method

.method private declared-synchronized blacklist bootstrapMetadata(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 60
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;->loadedFiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_25

    if-eqz v0, :cond_b

    .line 61
    monitor-exit p0

    return-void

    .line 63
    :cond_b
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;->read(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 64
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 65
    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;->metadataContainer:Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataContainer;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataContainer;->accept(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;)V

    goto :goto_13

    :catchall_25
    move-exception p1

    goto :goto_2e

    .line 67
    :cond_27
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;->loadedFiles:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_b .. :try_end_2c} :catchall_25

    .line 68
    monitor-exit p0

    return-void

    :goto_2e
    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_25

    throw p1
.end method

.method private blacklist read(Ljava/lang/String;)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;->metadataLoader:Lcom/android/internal/telephony/phonenumbers/MetadataLoader;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/phonenumbers/MetadataLoader;->loadMetadata(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 73
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;->metadataParser:Lcom/android/internal/telephony/phonenumbers/metadata/init/MetadataParser;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/metadata/init/MetadataParser;->parse(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public blacklist getOrBootstrap(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataContainer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;->loadedFiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 52
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;->bootstrapMetadata(Ljava/lang/String;)V

    .line 54
    :cond_b
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;->metadataContainer:Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataContainer;

    return-object p0
.end method
