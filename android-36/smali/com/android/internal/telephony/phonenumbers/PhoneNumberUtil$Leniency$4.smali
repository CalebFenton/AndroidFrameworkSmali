.class final enum Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency$4;
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

    .line 638
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;-><init>(Ljava/lang/String;ILcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$1;)V

    return-void
.end method


# virtual methods
.method blacklist verify(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;)Z
    .registers 7

    .line 645
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 646
    invoke-virtual {p3, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 647
    invoke-static {p1, v0, p3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->containsOnlyValidXChars(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 648
    invoke-static {p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->containsMoreThanOneSlashInNationalNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 649
    invoke-static {p1, p3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->isNationalPrefixPresentIfRequired(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_27

    .line 652
    :cond_1d
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency$4$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency$4$1;-><init>(Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency$4;)V

    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->checkNumberGroupingIsValid(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;)Z

    move-result p0

    return p0

    :cond_27
    :goto_27
    const/4 p0, 0x0

    return p0
.end method
