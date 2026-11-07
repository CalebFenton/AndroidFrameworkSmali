.class final Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;
.super Ljava/lang/Object;
.source "MapBackedMetadataContainer.java"

# interfaces
.implements Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataContainer;"
    }
.end annotation


# instance fields
.field private final blacklist keyProvider:Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final blacklist metadataMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "TT;",
            "Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider<",
            "TT;>;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;->metadataMap:Ljava/util/concurrent/ConcurrentMap;

    .line 55
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;->keyProvider:Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider;

    return-void
.end method

.method static blacklist byCountryCallingCode()Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;

    new-instance v1, Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer$2;

    invoke-direct {v1}, Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer$2;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;-><init>(Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider;)V

    return-object v0
.end method

.method static blacklist byRegionCode()Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;

    new-instance v1, Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer$1;

    invoke-direct {v1}, Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;-><init>(Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider;)V

    return-object v0
.end method


# virtual methods
.method public blacklist accept(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;)V
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;->metadataMap:Ljava/util/concurrent/ConcurrentMap;

    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;->keyProvider:Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider;->getKeyOf(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method blacklist getKeyProvider()Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider<",
            "TT;>;"
        }
    .end annotation

    .line 63
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;->keyProvider:Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider;

    return-object p0
.end method

.method blacklist getMetadataBy(Ljava/lang/Object;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;"
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 59
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;->metadataMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method
