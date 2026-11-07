.class final enum Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$4;
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

    .line 671
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;-><init>(Ljava/lang/String;ILcom/android/i18n/phonenumbers/PhoneNumberUtil-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILcom/android/i18n/phonenumbers/PhoneNumberUtil-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$4;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method blacklist verify(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;)Z
    .registers 7
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "candidate"    # Ljava/lang/CharSequence;
    .param p3, "util"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .param p4, "matcher"    # Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;

    .line 678
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 679
    .local v0, "candidateString":Ljava/lang/String;
    invoke-virtual {p3, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 680
    invoke-static {p1, v0, p3}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->containsOnlyValidXChars(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 681
    invoke-static {p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->containsMoreThanOneSlashInNationalNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 682
    invoke-static {p1, p3}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->isNationalPrefixPresentIfRequired(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_27

    .line 685
    :cond_1d
    new-instance v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$4$1;

    invoke-direct {v1, p0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$4$1;-><init>(Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$4;)V

    invoke-virtual {p4, p1, p2, p3, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->checkNumberGroupingIsValid(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;)Z

    move-result v1

    return v1

    .line 683
    :cond_27
    :goto_27
    const/4 v1, 0x0

    return v1
.end method
