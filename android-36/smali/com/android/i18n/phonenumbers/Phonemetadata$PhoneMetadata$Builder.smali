.class public final Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;
.super Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
.source "Phonemetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 385
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 1

    .line 387
    return-object p0
.end method

.method public blacklist setId(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 391
    invoke-super {p0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setId(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 392
    return-object p0
.end method

.method public bridge synthetic blacklist setId(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 385
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;->setId(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setInternationalPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 396
    invoke-super {p0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setInternationalPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 397
    return-object p0
.end method

.method public bridge synthetic blacklist setInternationalPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 385
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;->setInternationalPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;

    move-result-object p1

    return-object p1
.end method
