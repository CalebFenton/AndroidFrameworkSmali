.class Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer$2;
.super Ljava/lang/Object;
.source "MapBackedMetadataContainer.java"

# interfaces
.implements Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;->byCountryCallingCode()Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getKeyOf(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;)Ljava/lang/Integer;
    .registers 2

    .line 44
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist getKeyOf(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer$2;->getKeyOf(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
