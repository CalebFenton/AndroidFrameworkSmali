.class public final Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata$Builder;
.super Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
.source "Phonemetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 362
    invoke-direct {p0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 1

    .line 0
    return-object p0
.end method

.method public blacklist setId(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata$Builder;
    .registers 2

    .line 368
    invoke-super {p0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->setId(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    return-object p0
.end method

.method public bridge synthetic blacklist setId(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 362
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata$Builder;->setId(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata$Builder;

    move-result-object p0

    return-object p0
.end method

.method public blacklist setInternationalPrefix(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata$Builder;
    .registers 2

    .line 373
    invoke-super {p0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->setInternationalPrefix(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    return-object p0
.end method

.method public bridge synthetic blacklist setInternationalPrefix(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 362
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata$Builder;->setInternationalPrefix(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata$Builder;

    move-result-object p0

    return-object p0
.end method
