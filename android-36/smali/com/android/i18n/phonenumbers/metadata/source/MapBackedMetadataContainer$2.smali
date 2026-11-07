.class Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer$2;
.super Ljava/lang/Object;
.source "MapBackedMetadataContainer.java"

# interfaces
.implements Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;->byCountryCallingCode()Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getKeyOf(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Ljava/lang/Integer;
    .registers 3
    .param p1, "phoneMetadata"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 45
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

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

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer$2;->getKeyOf(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
