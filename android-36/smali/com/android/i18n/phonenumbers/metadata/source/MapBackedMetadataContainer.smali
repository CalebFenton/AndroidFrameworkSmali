.class final Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;
.super Ljava/lang/Object;
.source "MapBackedMetadataContainer.java"

# interfaces
.implements Lcom/android/i18n/phonenumbers/metadata/source/MetadataContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/i18n/phonenumbers/metadata/source/MetadataContainer;"
    }
.end annotation


# instance fields
.field private final blacklist keyProvider:Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final blacklist metadataMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "TT;",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider<",
            "TT;>;)V"
        }
    .end annotation

    .line 54
    .local p0, "this":Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;, "Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer<TT;>;"
    .local p1, "keyProvider":Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider;, "Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;->metadataMap:Ljava/util/concurrent/ConcurrentMap;

    .line 56
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;->keyProvider:Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider;

    .line 57
    return-void
.end method

.method static blacklist byCountryCallingCode()Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;

    new-instance v1, Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer$2;

    invoke-direct {v1}, Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer$2;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;-><init>(Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider;)V

    return-object v0
.end method

.method static blacklist byRegionCode()Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;

    new-instance v1, Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer$1;

    invoke-direct {v1}, Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;-><init>(Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider;)V

    return-object v0
.end method


# virtual methods
.method public blacklist accept(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)V
    .registers 4
    .param p1, "phoneMetadata"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 69
    .local p0, "this":Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;, "Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer<TT;>;"
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;->metadataMap:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;->keyProvider:Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider;

    invoke-interface {v1, p1}, Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider;->getKeyOf(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method

.method blacklist getKeyProvider()Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider<",
            "TT;>;"
        }
    .end annotation

    .line 64
    .local p0, "this":Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;, "Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer<TT;>;"
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;->keyProvider:Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider;

    return-object v0
.end method

.method blacklist getMetadataBy(Ljava/lang/Object;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;"
        }
    .end annotation

    .line 60
    .local p0, "this":Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;, "Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;->metadataMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method
