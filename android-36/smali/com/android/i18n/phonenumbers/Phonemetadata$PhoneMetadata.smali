.class public Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
.super Ljava/lang/Object;
.source "Phonemetadata.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/phonenumbers/Phonemetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneMetadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private greylist-max-o carrierSpecific_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private greylist-max-o countryCode_:I

.field private greylist-max-o emergency_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private greylist-max-o fixedLine_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private greylist-max-o generalDesc_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private greylist-max-o hasCarrierSpecific:Z

.field private greylist-max-o hasCountryCode:Z

.field private greylist-max-o hasEmergency:Z

.field private greylist-max-o hasFixedLine:Z

.field private greylist-max-o hasGeneralDesc:Z

.field private greylist-max-o hasId:Z

.field private greylist-max-o hasInternationalPrefix:Z

.field private greylist-max-o hasLeadingDigits:Z

.field private greylist-max-o hasMainCountryForCode:Z

.field private greylist-max-o hasMobile:Z

.field private greylist-max-o hasMobileNumberPortableRegion:Z

.field private greylist-max-o hasNationalPrefix:Z

.field private greylist-max-o hasNationalPrefixForParsing:Z

.field private greylist-max-o hasNationalPrefixTransformRule:Z

.field private greylist-max-o hasNoInternationalDialling:Z

.field private greylist-max-o hasPager:Z

.field private greylist-max-o hasPersonalNumber:Z

.field private greylist-max-o hasPreferredExtnPrefix:Z

.field private greylist-max-o hasPreferredInternationalPrefix:Z

.field private greylist-max-o hasPremiumRate:Z

.field private greylist-max-o hasSameMobileAndFixedLinePattern:Z

.field private greylist-max-o hasSharedCost:Z

.field private greylist-max-o hasShortCode:Z

.field private greylist-max-o hasSmsServices:Z

.field private greylist-max-o hasStandardRate:Z

.field private greylist-max-o hasTollFree:Z

.field private greylist-max-o hasUan:Z

.field private greylist-max-o hasVoicemail:Z

.field private greylist-max-o hasVoip:Z

.field private greylist-max-o id_:Ljava/lang/String;

.field private greylist-max-o internationalPrefix_:Ljava/lang/String;

.field private greylist-max-o intlNumberFormat_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o leadingDigits_:Ljava/lang/String;

.field private greylist-max-o mainCountryForCode_:Z

.field private greylist-max-o mobileNumberPortableRegion_:Z

.field private greylist-max-o mobile_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private greylist-max-o nationalPrefixForParsing_:Ljava/lang/String;

.field private greylist-max-o nationalPrefixTransformRule_:Ljava/lang/String;

.field private greylist-max-o nationalPrefix_:Ljava/lang/String;

.field private greylist-max-o noInternationalDialling_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private greylist-max-o numberFormat_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o pager_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private greylist-max-o personalNumber_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private greylist-max-o preferredExtnPrefix_:Ljava/lang/String;

.field private greylist-max-o preferredInternationalPrefix_:Ljava/lang/String;

.field private greylist-max-o premiumRate_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private greylist-max-o sameMobileAndFixedLinePattern_:Z

.field private greylist-max-o sharedCost_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private greylist-max-o shortCode_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private greylist-max-o smsServices_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private greylist-max-o standardRate_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private greylist-max-o tollFree_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private greylist-max-o uan_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private greylist-max-o voicemail_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private greylist-max-o voip_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->generalDesc_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 427
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->fixedLine_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 441
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mobile_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 455
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->tollFree_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 469
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->premiumRate_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 483
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sharedCost_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 497
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->personalNumber_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 511
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voip_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 525
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->pager_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 539
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->uan_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 553
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->emergency_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 567
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voicemail_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 581
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->shortCode_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 595
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->standardRate_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 609
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->carrierSpecific_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 623
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->smsServices_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 637
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 651
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    .line 662
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->countryCode_:I

    .line 674
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    .line 685
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    .line 701
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    .line 718
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    .line 736
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    .line 748
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    .line 765
    iput-boolean v1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    .line 780
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    .line 804
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    .line 835
    iput-boolean v1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    .line 854
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    .line 865
    iput-boolean v1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mobileNumberPortableRegion_:Z

    .line 377
    return-void
.end method

.method public static blacklist newBuilder()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;
    .registers 1

    .line 401
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public blacklist addIntlNumberFormat(Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 822
    if-eqz p1, :cond_8

    .line 825
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    return-object p0

    .line 823
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist addNumberFormat(Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 796
    if-eqz p1, :cond_8

    .line 799
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 800
    return-object p0

    .line 797
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist clearIntlNumberFormat()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 2

    .line 829
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 830
    return-object p0
.end method

.method public blacklist clearMainCountryForCode()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 2

    .line 847
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMainCountryForCode:Z

    .line 848
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    .line 849
    return-object p0
.end method

.method public blacklist clearMobileNumberPortableRegion()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 2

    .line 876
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobileNumberPortableRegion:Z

    .line 877
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mobileNumberPortableRegion_:Z

    .line 878
    return-object p0
.end method

.method public blacklist clearNationalPrefix()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 2

    .line 711
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    .line 712
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    .line 713
    return-object p0
.end method

.method public blacklist clearNationalPrefixTransformRule()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 2

    .line 758
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    .line 759
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    .line 760
    return-object p0
.end method

.method public blacklist clearPreferredExtnPrefix()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 2

    .line 729
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    .line 730
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    .line 731
    return-object p0
.end method

.method public blacklist clearPreferredInternationalPrefix()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 2

    .line 694
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    .line 695
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    .line 696
    return-object p0
.end method

.method public blacklist clearSameMobileAndFixedLinePattern()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 2

    .line 774
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSameMobileAndFixedLinePattern:Z

    .line 775
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    .line 776
    return-object p0
.end method

.method public blacklist getCarrierSpecific()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 611
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->carrierSpecific_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public greylist-max-r getCountryCode()I
    .registers 2

    .line 665
    iget v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->countryCode_:I

    return v0
.end method

.method public blacklist getEmergency()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 555
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->emergency_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public blacklist getFixedLine()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 429
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->fixedLine_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public greylist-max-r getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 409
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->generalDesc_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public blacklist getGeneralDescBuilder()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 411
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->generalDesc_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    if-nez v0, :cond_b

    .line 412
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->generalDesc_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 414
    :cond_b
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->generalDesc_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public blacklist getId()Ljava/lang/String;
    .registers 2

    .line 653
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getInternationalPrefix()Ljava/lang/String;
    .registers 2

    .line 676
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getIntlNumberFormat(I)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .registers 3
    .param p1, "index"    # I

    .line 818
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    return-object v0
.end method

.method public blacklist getIntlNumberFormatCount()I
    .registers 2

    .line 816
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getIntlNumberFormatList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation

    .line 812
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getLeadingDigits()Ljava/lang/String;
    .registers 2

    .line 856
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMainCountryForCode()Z
    .registers 2

    .line 840
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    return v0
.end method

.method public blacklist getMobile()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 443
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mobile_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public blacklist getMobileNumberPortableRegion()Z
    .registers 2

    .line 869
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mobileNumberPortableRegion_:Z

    return v0
.end method

.method public blacklist getNationalPrefix()Ljava/lang/String;
    .registers 2

    .line 704
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-r getNationalPrefixForParsing()Ljava/lang/String;
    .registers 2

    .line 739
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-r getNationalPrefixTransformRule()Ljava/lang/String;
    .registers 2

    .line 751
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNoInternationalDialling()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 639
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public blacklist getNumberFormat(I)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .registers 3
    .param p1, "index"    # I

    .line 793
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    return-object v0
.end method

.method public blacklist getNumberFormatCount()I
    .registers 2

    .line 791
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getNumberFormatList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation

    .line 787
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getPager()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 527
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->pager_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public blacklist getPersonalNumber()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 499
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->personalNumber_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public greylist-max-r getPreferredExtnPrefix()Ljava/lang/String;
    .registers 2

    .line 722
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPreferredInternationalPrefix()Ljava/lang/String;
    .registers 2

    .line 687
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPremiumRate()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 471
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->premiumRate_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public blacklist getSameMobileAndFixedLinePattern()Z
    .registers 2

    .line 767
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    return v0
.end method

.method public blacklist getSharedCost()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 485
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sharedCost_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public blacklist getShortCode()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 583
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->shortCode_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public blacklist getSmsServices()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 625
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->smsServices_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public blacklist getStandardRate()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 597
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->standardRate_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public blacklist getTollFree()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 457
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->tollFree_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public blacklist getUan()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 541
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->uan_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public blacklist getVoicemail()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 569
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voicemail_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public blacklist getVoip()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 513
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voip_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public blacklist hasCarrierSpecific()Z
    .registers 2

    .line 610
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasCarrierSpecific:Z

    return v0
.end method

.method public blacklist hasCountryCode()Z
    .registers 2

    .line 663
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasCountryCode:Z

    return v0
.end method

.method public blacklist hasEmergency()Z
    .registers 2

    .line 554
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasEmergency:Z

    return v0
.end method

.method public blacklist hasFixedLine()Z
    .registers 2

    .line 428
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    return v0
.end method

.method public blacklist hasGeneralDesc()Z
    .registers 2

    .line 407
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    return v0
.end method

.method public blacklist hasId()Z
    .registers 2

    .line 652
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasId:Z

    return v0
.end method

.method public blacklist hasInternationalPrefix()Z
    .registers 2

    .line 675
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasInternationalPrefix:Z

    return v0
.end method

.method public blacklist hasLeadingDigits()Z
    .registers 2

    .line 855
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    return v0
.end method

.method public blacklist hasMainCountryForCode()Z
    .registers 2

    .line 836
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMainCountryForCode:Z

    return v0
.end method

.method public blacklist hasMobile()Z
    .registers 2

    .line 442
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobile:Z

    return v0
.end method

.method public blacklist hasMobileNumberPortableRegion()Z
    .registers 2

    .line 866
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobileNumberPortableRegion:Z

    return v0
.end method

.method public greylist-max-r hasNationalPrefix()Z
    .registers 2

    .line 703
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    return v0
.end method

.method public blacklist hasNationalPrefixForParsing()Z
    .registers 2

    .line 737
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    return v0
.end method

.method public blacklist hasNationalPrefixTransformRule()Z
    .registers 2

    .line 749
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    return v0
.end method

.method public blacklist hasNoInternationalDialling()Z
    .registers 2

    .line 638
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    return v0
.end method

.method public blacklist hasPager()Z
    .registers 2

    .line 526
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPager:Z

    return v0
.end method

.method public blacklist hasPersonalNumber()Z
    .registers 2

    .line 498
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    return v0
.end method

.method public greylist-max-r hasPreferredExtnPrefix()Z
    .registers 2

    .line 720
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    return v0
.end method

.method public blacklist hasPreferredInternationalPrefix()Z
    .registers 2

    .line 686
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    return v0
.end method

.method public blacklist hasPremiumRate()Z
    .registers 2

    .line 470
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    return v0
.end method

.method public blacklist hasSameMobileAndFixedLinePattern()Z
    .registers 2

    .line 766
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSameMobileAndFixedLinePattern:Z

    return v0
.end method

.method public blacklist hasSharedCost()Z
    .registers 2

    .line 484
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    return v0
.end method

.method public blacklist hasShortCode()Z
    .registers 2

    .line 582
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasShortCode:Z

    return v0
.end method

.method public blacklist hasSmsServices()Z
    .registers 2

    .line 624
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSmsServices:Z

    return v0
.end method

.method public blacklist hasStandardRate()Z
    .registers 2

    .line 596
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasStandardRate:Z

    return v0
.end method

.method public blacklist hasTollFree()Z
    .registers 2

    .line 456
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    return v0
.end method

.method public blacklist hasUan()Z
    .registers 2

    .line 540
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasUan:Z

    return v0
.end method

.method public blacklist hasVoicemail()Z
    .registers 2

    .line 568
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoicemail:Z

    return v0
.end method

.method public blacklist hasVoip()Z
    .registers 2

    .line 512
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoip:Z

    return v0
.end method

.method public blacklist intlNumberFormatSize()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 815
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getIntlNumberFormatCount()I

    move-result v0

    return v0
.end method

.method public greylist-max-r intlNumberFormats()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 809
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getIntlNumberFormatList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isMainCountryForCode()Z
    .registers 2

    .line 837
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    return v0
.end method

.method public blacklist isMobileNumberPortableRegion()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 868
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getMobileNumberPortableRegion()Z

    move-result v0

    return v0
.end method

.method public blacklist numberFormatSize()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 790
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNumberFormatCount()I

    move-result v0

    return v0
.end method

.method public greylist-max-r numberFormats()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 784
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNumberFormatList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api readExternal(Ljava/io/ObjectInput;)V
    .registers 9
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1005
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 1006
    .local v0, "hasDesc":Z
    if-eqz v0, :cond_11

    .line 1007
    new-instance v1, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1008
    .local v1, "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1009
    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setGeneralDesc(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1011
    .end local v1    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_11
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 1012
    if-eqz v0, :cond_22

    .line 1013
    new-instance v1, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1014
    .restart local v1    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1015
    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setFixedLine(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1017
    .end local v1    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_22
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 1018
    if-eqz v0, :cond_33

    .line 1019
    new-instance v1, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1020
    .restart local v1    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1021
    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setMobile(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1023
    .end local v1    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_33
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 1024
    if-eqz v0, :cond_44

    .line 1025
    new-instance v1, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1026
    .restart local v1    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1027
    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setTollFree(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1029
    .end local v1    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_44
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 1030
    if-eqz v0, :cond_55

    .line 1031
    new-instance v1, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1032
    .restart local v1    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1033
    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setPremiumRate(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1035
    .end local v1    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_55
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 1036
    if-eqz v0, :cond_66

    .line 1037
    new-instance v1, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1038
    .restart local v1    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1039
    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setSharedCost(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1041
    .end local v1    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_66
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 1042
    if-eqz v0, :cond_77

    .line 1043
    new-instance v1, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1044
    .restart local v1    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1045
    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setPersonalNumber(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1047
    .end local v1    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_77
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 1048
    if-eqz v0, :cond_88

    .line 1049
    new-instance v1, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1050
    .restart local v1    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1051
    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setVoip(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1053
    .end local v1    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_88
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 1054
    if-eqz v0, :cond_99

    .line 1055
    new-instance v1, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1056
    .restart local v1    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1057
    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setPager(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1059
    .end local v1    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_99
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 1060
    if-eqz v0, :cond_aa

    .line 1061
    new-instance v1, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1062
    .restart local v1    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1063
    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setUan(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1065
    .end local v1    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_aa
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 1066
    if-eqz v0, :cond_bb

    .line 1067
    new-instance v1, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1068
    .restart local v1    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1069
    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setEmergency(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1071
    .end local v1    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_bb
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 1072
    if-eqz v0, :cond_cc

    .line 1073
    new-instance v1, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1074
    .restart local v1    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1075
    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setVoicemail(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1077
    .end local v1    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_cc
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 1078
    if-eqz v0, :cond_dd

    .line 1079
    new-instance v1, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1080
    .restart local v1    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1081
    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setShortCode(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1083
    .end local v1    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_dd
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 1084
    if-eqz v0, :cond_ee

    .line 1085
    new-instance v1, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1086
    .restart local v1    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1087
    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setStandardRate(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1089
    .end local v1    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_ee
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 1090
    if-eqz v0, :cond_ff

    .line 1091
    new-instance v1, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1092
    .restart local v1    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1093
    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setCarrierSpecific(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1095
    .end local v1    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_ff
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 1096
    if-eqz v0, :cond_110

    .line 1097
    new-instance v1, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1098
    .restart local v1    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1099
    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setSmsServices(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1101
    .end local v1    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_110
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 1102
    if-eqz v0, :cond_121

    .line 1103
    new-instance v1, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1104
    .restart local v1    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1105
    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setNoInternationalDialling(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1108
    .end local v1    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_121
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setId(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1109
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setCountryCode(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1110
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setInternationalPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1112
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 1113
    .local v1, "hasString":Z
    if-eqz v1, :cond_143

    .line 1114
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setPreferredInternationalPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1117
    :cond_143
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 1118
    if-eqz v1, :cond_150

    .line 1119
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setNationalPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1122
    :cond_150
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 1123
    if-eqz v1, :cond_15d

    .line 1124
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setPreferredExtnPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1127
    :cond_15d
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 1128
    if-eqz v1, :cond_16a

    .line 1129
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setNationalPrefixForParsing(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1132
    :cond_16a
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 1133
    if-eqz v1, :cond_177

    .line 1134
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setNationalPrefixTransformRule(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1137
    :cond_177
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setSameMobileAndFixedLinePattern(Z)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1139
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    .line 1140
    .local v2, "nationalFormatSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_183
    if-ge v3, v2, :cond_195

    .line 1141
    new-instance v4, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    invoke-direct {v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;-><init>()V

    .line 1142
    .local v4, "numFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v4, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->readExternal(Ljava/io/ObjectInput;)V

    .line 1143
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1140
    .end local v4    # "numFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    add-int/lit8 v3, v3, 0x1

    goto :goto_183

    .line 1146
    .end local v3    # "i":I
    :cond_195
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    .line 1147
    .local v3, "intlNumberFormatSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19a
    if-ge v4, v3, :cond_1ac

    .line 1148
    new-instance v5, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    invoke-direct {v5}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;-><init>()V

    .line 1149
    .local v5, "numFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v5, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->readExternal(Ljava/io/ObjectInput;)V

    .line 1150
    iget-object v6, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1147
    .end local v5    # "numFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    add-int/lit8 v4, v4, 0x1

    goto :goto_19a

    .line 1153
    .end local v4    # "i":I
    :cond_1ac
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setMainCountryForCode(Z)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1155
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 1156
    if-eqz v1, :cond_1c0

    .line 1157
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setLeadingDigits(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1160
    :cond_1c0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setMobileNumberPortableRegion(Z)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1161
    return-void
.end method

.method public blacklist setCarrierSpecific(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 613
    if-eqz p1, :cond_8

    .line 616
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasCarrierSpecific:Z

    .line 617
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->carrierSpecific_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 618
    return-object p0

    .line 614
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setCountryCode(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3
    .param p1, "value"    # I

    .line 667
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasCountryCode:Z

    .line 668
    iput p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->countryCode_:I

    .line 669
    return-object p0
.end method

.method public blacklist setEmergency(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 557
    if-eqz p1, :cond_8

    .line 560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasEmergency:Z

    .line 561
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->emergency_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 562
    return-object p0

    .line 558
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setFixedLine(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 431
    if-eqz p1, :cond_8

    .line 434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    .line 435
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->fixedLine_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 436
    return-object p0

    .line 432
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setGeneralDesc(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 417
    if-eqz p1, :cond_8

    .line 420
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    .line 421
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->generalDesc_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 422
    return-object p0

    .line 418
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setId(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 655
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasId:Z

    .line 656
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    .line 657
    return-object p0
.end method

.method public blacklist setInternationalPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 678
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasInternationalPrefix:Z

    .line 679
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    .line 680
    return-object p0
.end method

.method public blacklist setLeadingDigits(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 858
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    .line 859
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    .line 860
    return-object p0
.end method

.method public blacklist setMainCountryForCode(Z)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3
    .param p1, "value"    # Z

    .line 842
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMainCountryForCode:Z

    .line 843
    iput-boolean p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    .line 844
    return-object p0
.end method

.method public blacklist setMobile(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 445
    if-eqz p1, :cond_8

    .line 448
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobile:Z

    .line 449
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mobile_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 450
    return-object p0

    .line 446
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setMobileNumberPortableRegion(Z)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3
    .param p1, "value"    # Z

    .line 871
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobileNumberPortableRegion:Z

    .line 872
    iput-boolean p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mobileNumberPortableRegion_:Z

    .line 873
    return-object p0
.end method

.method public blacklist setNationalPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 706
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    .line 707
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    .line 708
    return-object p0
.end method

.method public blacklist setNationalPrefixForParsing(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 741
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    .line 742
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    .line 743
    return-object p0
.end method

.method public blacklist setNationalPrefixTransformRule(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 753
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    .line 754
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    .line 755
    return-object p0
.end method

.method public blacklist setNoInternationalDialling(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 641
    if-eqz p1, :cond_8

    .line 644
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    .line 645
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 646
    return-object p0

    .line 642
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setPager(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 529
    if-eqz p1, :cond_8

    .line 532
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPager:Z

    .line 533
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->pager_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 534
    return-object p0

    .line 530
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setPersonalNumber(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 501
    if-eqz p1, :cond_8

    .line 504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    .line 505
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->personalNumber_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 506
    return-object p0

    .line 502
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setPreferredExtnPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 724
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    .line 725
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    .line 726
    return-object p0
.end method

.method public blacklist setPreferredInternationalPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 689
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    .line 690
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    .line 691
    return-object p0
.end method

.method public blacklist setPremiumRate(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 473
    if-eqz p1, :cond_8

    .line 476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    .line 477
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->premiumRate_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 478
    return-object p0

    .line 474
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setSameMobileAndFixedLinePattern(Z)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3
    .param p1, "value"    # Z

    .line 769
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSameMobileAndFixedLinePattern:Z

    .line 770
    iput-boolean p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    .line 771
    return-object p0
.end method

.method public blacklist setSharedCost(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 487
    if-eqz p1, :cond_8

    .line 490
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    .line 491
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sharedCost_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 492
    return-object p0

    .line 488
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setShortCode(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 585
    if-eqz p1, :cond_8

    .line 588
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasShortCode:Z

    .line 589
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->shortCode_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 590
    return-object p0

    .line 586
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setSmsServices(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 627
    if-eqz p1, :cond_8

    .line 630
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSmsServices:Z

    .line 631
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->smsServices_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 632
    return-object p0

    .line 628
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setStandardRate(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 599
    if-eqz p1, :cond_8

    .line 602
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasStandardRate:Z

    .line 603
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->standardRate_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 604
    return-object p0

    .line 600
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setTollFree(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 459
    if-eqz p1, :cond_8

    .line 462
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    .line 463
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->tollFree_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 464
    return-object p0

    .line 460
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setUan(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 543
    if-eqz p1, :cond_8

    .line 546
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasUan:Z

    .line 547
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->uan_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 548
    return-object p0

    .line 544
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setVoicemail(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 571
    if-eqz p1, :cond_8

    .line 574
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoicemail:Z

    .line 575
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voicemail_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 576
    return-object p0

    .line 572
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setVoip(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 515
    if-eqz p1, :cond_8

    .line 518
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoip:Z

    .line 519
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voip_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 520
    return-object p0

    .line 516
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api writeExternal(Ljava/io/ObjectOutput;)V
    .registers 6
    .param p1, "objectOutput"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 882
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 883
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    if-eqz v0, :cond_e

    .line 884
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->generalDesc_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 886
    :cond_e
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 887
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    if-eqz v0, :cond_1c

    .line 888
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->fixedLine_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 890
    :cond_1c
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobile:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 891
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobile:Z

    if-eqz v0, :cond_2a

    .line 892
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mobile_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 894
    :cond_2a
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 895
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    if-eqz v0, :cond_38

    .line 896
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->tollFree_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 898
    :cond_38
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 899
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    if-eqz v0, :cond_46

    .line 900
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->premiumRate_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 902
    :cond_46
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 903
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    if-eqz v0, :cond_54

    .line 904
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sharedCost_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 906
    :cond_54
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 907
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    if-eqz v0, :cond_62

    .line 908
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->personalNumber_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 910
    :cond_62
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoip:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 911
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoip:Z

    if-eqz v0, :cond_70

    .line 912
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voip_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 914
    :cond_70
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPager:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 915
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPager:Z

    if-eqz v0, :cond_7e

    .line 916
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->pager_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 918
    :cond_7e
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasUan:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 919
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasUan:Z

    if-eqz v0, :cond_8c

    .line 920
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->uan_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 922
    :cond_8c
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasEmergency:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 923
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasEmergency:Z

    if-eqz v0, :cond_9a

    .line 924
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->emergency_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 926
    :cond_9a
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoicemail:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 927
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoicemail:Z

    if-eqz v0, :cond_a8

    .line 928
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voicemail_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 930
    :cond_a8
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasShortCode:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 931
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasShortCode:Z

    if-eqz v0, :cond_b6

    .line 932
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->shortCode_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 934
    :cond_b6
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasStandardRate:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 935
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasStandardRate:Z

    if-eqz v0, :cond_c4

    .line 936
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->standardRate_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 938
    :cond_c4
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasCarrierSpecific:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 939
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasCarrierSpecific:Z

    if-eqz v0, :cond_d2

    .line 940
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->carrierSpecific_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 942
    :cond_d2
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSmsServices:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 943
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSmsServices:Z

    if-eqz v0, :cond_e0

    .line 944
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->smsServices_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 946
    :cond_e0
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 947
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    if-eqz v0, :cond_ee

    .line 948
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 951
    :cond_ee
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 952
    iget v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->countryCode_:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 953
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 955
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 956
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    if-eqz v0, :cond_10b

    .line 957
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 960
    :cond_10b
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 961
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    if-eqz v0, :cond_119

    .line 962
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 965
    :cond_119
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 966
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    if-eqz v0, :cond_127

    .line 967
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 970
    :cond_127
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 971
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    if-eqz v0, :cond_135

    .line 972
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 975
    :cond_135
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 976
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    if-eqz v0, :cond_143

    .line 977
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 980
    :cond_143
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 982
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormatSize()I

    move-result v0

    .line 983
    .local v0, "numberFormatSize":I
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 984
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_150
    if-ge v1, v0, :cond_160

    .line 985
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    invoke-virtual {v2, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 984
    add-int/lit8 v1, v1, 0x1

    goto :goto_150

    .line 988
    .end local v1    # "i":I
    :cond_160
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormatSize()I

    move-result v1

    .line 989
    .local v1, "intlNumberFormatSize":I
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 990
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_168
    if-ge v2, v1, :cond_178

    .line 991
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 990
    add-int/lit8 v2, v2, 0x1

    goto :goto_168

    .line 994
    .end local v2    # "i":I
    :cond_178
    iget-boolean v2, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 996
    iget-boolean v2, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 997
    iget-boolean v2, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    if-eqz v2, :cond_18b

    .line 998
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 1001
    :cond_18b
    iget-boolean v2, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mobileNumberPortableRegion_:Z

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 1002
    return-void
.end method
