.class final enum Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency$2;
.super Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    const/4 v0, 0x0

    .line 575
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;-><init>(Ljava/lang/String;ILcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$1;)V

    return-void
.end method


# virtual methods
.method blacklist verify(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;)Z
    .registers 5

    .line 582
    invoke-virtual {p3, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 583
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, p3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->containsOnlyValidXChars(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_16

    .line 586
    :cond_11
    invoke-static {p1, p3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->isNationalPrefixPresentIfRequired(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;)Z

    move-result p0

    return p0

    :cond_16
    :goto_16
    const/4 p0, 0x0

    return p0
.end method
