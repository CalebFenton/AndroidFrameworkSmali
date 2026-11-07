.class public final Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;
.super Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
.source "Phonemetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 225
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 1

    .line 227
    return-object p0
.end method

.method public blacklist mergeFrom(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;
    .registers 4
    .param p1, "other"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 231
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 232
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;->setNationalNumberPattern(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 234
    :cond_d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthCount()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 235
    invoke-virtual {p1, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLength(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;->addPossibleLength(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 237
    .end local v0    # "i":I
    :cond_1e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1f
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthLocalOnlyCount()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 238
    invoke-virtual {p1, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthLocalOnly(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;->addPossibleLengthLocalOnly(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 240
    .end local v0    # "i":I
    :cond_2f
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 241
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;->setExampleNumber(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 243
    :cond_3c
    return-object p0
.end method
