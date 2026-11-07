.class public final Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat$Builder;
.super Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;
.source "Phonemetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;
    .registers 1

    .line 0
    return-object p0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat$Builder;
    .registers 4

    .line 52
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->hasPattern()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 53
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->setPattern(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    .line 55
    :cond_d
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->hasFormat()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 56
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->setFormat(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    :cond_1a
    const/4 v0, 0x0

    .line 58
    :goto_1b
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 59
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPattern(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->addLeadingDigitsPattern(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 61
    :cond_2b
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 62
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->setNationalPrefixFormattingRule(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    .line 64
    :cond_38
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 65
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getDomesticCarrierCodeFormattingRule()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->setDomesticCarrierCodeFormattingRule(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    .line 67
    :cond_45
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixOptionalWhenFormatting()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 68
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixOptionalWhenFormatting()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->setNationalPrefixOptionalWhenFormatting(Z)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    :cond_52
    return-object p0
.end method
