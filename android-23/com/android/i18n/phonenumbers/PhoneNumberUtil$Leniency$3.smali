.class final enum Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$3;
.super Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    #@0
    .prologue
    .line 480
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;-><init>(Ljava/lang/String;ILcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;)V

    #@4
    return-void
.end method


# virtual methods
.method verify(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;)Z
    .locals 1
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "candidate"    # Ljava/lang/String;
    .param p3, "util"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@0
    .prologue
    .line 483
    invoke-virtual {p3, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 484
    invoke-static {p1, p2, p3}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->containsOnlyValidXChars(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 485
    invoke-static {p1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->containsMoreThanOneSlashInNationalNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    .line 483
    if-nez v0, :cond_0

    #@12
    .line 486
    invoke-static {p1, p3}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->isNationalPrefixPresentIfRequired(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 490
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$3$1;

    #@1a
    invoke-direct {v0, p0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$3$1;-><init>(Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$3;)V

    #@1d
    .line 489
    invoke-static {p1, p2, p3, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->checkNumberGroupingIsValid(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;)Z

    #@20
    move-result v0

    #@21
    return v0

    #@22
    .line 487
    :cond_0
    const/4 v0, 0x0

    #@23
    return v0
.end method
