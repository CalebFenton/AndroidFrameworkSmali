.class Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer$1;
.super Ljava/lang/Object;
.source "MapBackedMetadataContainer.java"

# interfaces
.implements Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;->byRegionCode()Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist getKeyOf(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer$1;->getKeyOf(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getKeyOf(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Ljava/lang/String;
    .registers 3
    .param p1, "phoneMetadata"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 35
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
