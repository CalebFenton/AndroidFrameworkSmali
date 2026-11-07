.class final enum Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$2;
.super Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;I)V
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

    .line 608
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;-><init>(Ljava/lang/String;ILcom/android/i18n/phonenumbers/PhoneNumberUtil-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILcom/android/i18n/phonenumbers/PhoneNumberUtil-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$2;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method blacklist verify(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;)Z
    .registers 6
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "candidate"    # Ljava/lang/CharSequence;
    .param p3, "util"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .param p4, "matcher"    # Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;

    .line 615
    invoke-virtual {p3, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 616
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->containsOnlyValidXChars(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_16

    .line 619
    :cond_11
    invoke-static {p1, p3}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->isNationalPrefixPresentIfRequired(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;)Z

    move-result v0

    return v0

    .line 617
    :cond_16
    :goto_16
    const/4 v0, 0x0

    return v0
.end method
