.class public final Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;
.super Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
.source "Phonemetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .registers 1

    .line 56
    return-object p0
.end method

.method public blacklist mergeFrom(Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;
    .registers 4
    .param p1, "other"    # Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 60
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasPattern()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 61
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;->setPattern(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 63
    :cond_d
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasFormat()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 64
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;->setFormat(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 66
    :cond_1a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1b
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 67
    invoke-virtual {p1, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPattern(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;->addLeadingDigitsPattern(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 69
    .end local v0    # "i":I
    :cond_2b
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 70
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;->setNationalPrefixFormattingRule(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 72
    :cond_38
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 73
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getDomesticCarrierCodeFormattingRule()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;->setDomesticCarrierCodeFormattingRule(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 75
    :cond_45
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixOptionalWhenFormatting()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 76
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixOptionalWhenFormatting()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;->setNationalPrefixOptionalWhenFormatting(Z)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 78
    :cond_52
    return-object p0
.end method
