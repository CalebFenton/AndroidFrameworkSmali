.class public final Lcom/android/internal/telephony/phonenumbers/metadata/init/MetadataParser;
.super Ljava/lang/Object;
.source "MetadataParser.java"


# static fields
.field private static final blacklist logger:Ljava/util/logging/Logger;


# instance fields
.field private final blacklist strictMode:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 36
    const-class v0, Lcom/android/internal/telephony/phonenumbers/metadata/init/MetadataParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/metadata/init/MetadataParser;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor blacklist <init>(Z)V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean p1, p0, Lcom/android/internal/telephony/phonenumbers/metadata/init/MetadataParser;->strictMode:Z

    return-void
.end method

.method private blacklist close(Ljava/io/InputStream;)V
    .registers 4

    .line 103
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 105
    sget-object p1, Lcom/android/internal/telephony/phonenumbers/metadata/init/MetadataParser;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v1, "Error closing input stream (ignored)"

    invoke-virtual {p1, v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private blacklist handleNullSource()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation

    .line 95
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/metadata/init/MetadataParser;->strictMode:Z

    if-nez p0, :cond_7

    .line 98
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 96
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist newLenientParser()Lcom/android/internal/telephony/phonenumbers/metadata/init/MetadataParser;
    .registers 2

    .line 43
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/metadata/init/MetadataParser;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/phonenumbers/metadata/init/MetadataParser;-><init>(Z)V

    return-object v0
.end method

.method public static blacklist newStrictParser()Lcom/android/internal/telephony/phonenumbers/metadata/init/MetadataParser;
    .registers 2

    .line 51
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/metadata/init/MetadataParser;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/phonenumbers/metadata/init/MetadataParser;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public blacklist parse(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_7

    .line 69
    invoke-direct {p0}, Lcom/android/internal/telephony/phonenumbers/metadata/init/MetadataParser;->handleNullSource()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 v0, 0x0

    .line 73
    :try_start_8
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_38
    .catchall {:try_start_8 .. :try_end_d} :catchall_33

    .line 74
    :try_start_d
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadataCollection;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadataCollection;-><init>()V

    .line 75
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadataCollection;->readExternal(Ljava/io/ObjectInput;)V

    .line 76
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadataCollection;->getMetadataList()Ljava/util/List;

    move-result-object v2

    .line 78
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 81
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadataCollection;->getMetadataList()Ljava/util/List;

    move-result-object p1
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_23} :catch_29
    .catchall {:try_start_d .. :try_end_23} :catchall_27

    .line 87
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonenumbers/metadata/init/MetadataParser;->close(Ljava/io/InputStream;)V

    return-object p1

    :catchall_27
    move-exception v0

    goto :goto_44

    :catch_29
    move-exception v0

    goto :goto_3c

    .line 79
    :cond_2b
    :try_start_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Empty metadata"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_33} :catch_29
    .catchall {:try_start_2b .. :try_end_33} :catchall_27

    :catchall_33
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_44

    :catch_38
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 83
    :goto_3c
    :try_start_3c
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to parse metadata file"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_27

    :goto_44
    if-eqz v1, :cond_4a

    .line 87
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonenumbers/metadata/init/MetadataParser;->close(Ljava/io/InputStream;)V

    goto :goto_4d

    .line 89
    :cond_4a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonenumbers/metadata/init/MetadataParser;->close(Ljava/io/InputStream;)V

    .line 91
    :goto_4d
    throw v0
.end method
