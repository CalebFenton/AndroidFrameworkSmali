.class public final Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;
.super Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;
.source "Phonemetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 1

    .line 0
    return-object p0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;
    .registers 5

    .line 213
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 214
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->setNationalNumberPattern(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    :cond_d
    const/4 v0, 0x0

    move v1, v0

    .line 216
    :goto_f
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthCount()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 217
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLength(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->addPossibleLength(I)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 219
    :cond_1f
    :goto_1f
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthLocalOnlyCount()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 220
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthLocalOnly(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->addPossibleLengthLocalOnly(I)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 222
    :cond_2f
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 223
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->setExampleNumber(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    :cond_3c
    return-object p0
.end method
