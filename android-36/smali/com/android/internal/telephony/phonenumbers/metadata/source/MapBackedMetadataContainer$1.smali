.class Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer$1;
.super Ljava/lang/Object;
.source "MapBackedMetadataContainer.java"

# interfaces
.implements Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;->byRegionCode()Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/metadata/source/MapBackedMetadataContainer$1;->getKeyOf(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getKeyOf(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;)Ljava/lang/String;
    .registers 2

    .line 34
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
