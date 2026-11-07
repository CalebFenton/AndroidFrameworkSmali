.class public Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
.super Ljava/lang/Object;
.source "Phonemetadata.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata$Builder;
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private blacklist carrierSpecific_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private blacklist countryCode_:I

.field private blacklist emergency_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private blacklist fixedLine_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private blacklist generalDesc_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private blacklist hasCarrierSpecific:Z

.field private blacklist hasCountryCode:Z

.field private blacklist hasEmergency:Z

.field private blacklist hasFixedLine:Z

.field private blacklist hasGeneralDesc:Z

.field private blacklist hasId:Z

.field private blacklist hasInternationalPrefix:Z

.field private blacklist hasLeadingDigits:Z

.field private blacklist hasMainCountryForCode:Z

.field private blacklist hasMobile:Z

.field private blacklist hasMobileNumberPortableRegion:Z

.field private blacklist hasNationalPrefix:Z

.field private blacklist hasNationalPrefixForParsing:Z

.field private blacklist hasNationalPrefixTransformRule:Z

.field private blacklist hasNoInternationalDialling:Z

.field private blacklist hasPager:Z

.field private blacklist hasPersonalNumber:Z

.field private blacklist hasPreferredExtnPrefix:Z

.field private blacklist hasPreferredInternationalPrefix:Z

.field private blacklist hasPremiumRate:Z

.field private blacklist hasSameMobileAndFixedLinePattern:Z

.field private blacklist hasSharedCost:Z

.field private blacklist hasShortCode:Z

.field private blacklist hasSmsServices:Z

.field private blacklist hasStandardRate:Z

.field private blacklist hasTollFree:Z

.field private blacklist hasUan:Z

.field private blacklist hasVoicemail:Z

.field private blacklist hasVoip:Z

.field private blacklist id_:Ljava/lang/String;

.field private blacklist internationalPrefix_:Ljava/lang/String;

.field private blacklist intlNumberFormat_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist leadingDigits_:Ljava/lang/String;

.field private blacklist mainCountryForCode_:Z

.field private blacklist mobileNumberPortableRegion_:Z

.field private blacklist mobile_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private blacklist nationalPrefixForParsing_:Ljava/lang/String;

.field private blacklist nationalPrefixTransformRule_:Ljava/lang/String;

.field private blacklist nationalPrefix_:Ljava/lang/String;

.field private blacklist noInternationalDialling_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private blacklist numberFormat_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist pager_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private blacklist personalNumber_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private blacklist preferredExtnPrefix_:Ljava/lang/String;

.field private blacklist preferredInternationalPrefix_:Ljava/lang/String;

.field private blacklist premiumRate_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private blacklist sameMobileAndFixedLinePattern_:Z

.field private blacklist sharedCost_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private blacklist shortCode_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private blacklist smsServices_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private blacklist standardRate_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private blacklist tollFree_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private blacklist uan_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private blacklist voicemail_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private blacklist voip_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 383
    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->generalDesc_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 403
    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->fixedLine_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 417
    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->mobile_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 431
    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->tollFree_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 445
    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->premiumRate_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 459
    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->sharedCost_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 473
    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->personalNumber_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 487
    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->voip_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 501
    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->pager_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 515
    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->uan_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 529
    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->emergency_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 543
    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->voicemail_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 557
    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->shortCode_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 571
    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->standardRate_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 585
    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->carrierSpecific_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 599
    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->smsServices_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 613
    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 627
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    const/4 v1, 0x0

    .line 638
    iput v1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->countryCode_:I

    .line 649
    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    .line 660
    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    .line 676
    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    .line 692
    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    .line 708
    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    .line 719
    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    .line 735
    iput-boolean v1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    .line 750
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    .line 773
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    .line 803
    iput-boolean v1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    .line 822
    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    .line 833
    iput-boolean v1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->mobileNumberPortableRegion_:Z

    return-void
.end method

.method public static blacklist newBuilder()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata$Builder;
    .registers 1

    .line 378
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public blacklist addIntlNumberFormat(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3

    .line 791
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 793
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist addNumberFormat(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3

    .line 766
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 768
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist clearIntlNumberFormat()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 2

    .line 797
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public blacklist clearMainCountryForCode()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 2

    const/4 v0, 0x0

    .line 815
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasMainCountryForCode:Z

    .line 816
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    return-object p0
.end method

.method public blacklist clearMobileNumberPortableRegion()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 2

    const/4 v0, 0x0

    .line 844
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobileNumberPortableRegion:Z

    .line 845
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->mobileNumberPortableRegion_:Z

    return-object p0
.end method

.method public blacklist clearNationalPrefix()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 2

    const/4 v0, 0x0

    .line 685
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    .line 686
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist clearNationalPrefixTransformRule()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 2

    const/4 v0, 0x0

    .line 728
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    .line 729
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist clearPreferredExtnPrefix()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 2

    const/4 v0, 0x0

    .line 701
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    .line 702
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist clearPreferredInternationalPrefix()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 2

    const/4 v0, 0x0

    .line 669
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    .line 670
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist clearSameMobileAndFixedLinePattern()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 2

    const/4 v0, 0x0

    .line 744
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasSameMobileAndFixedLinePattern:Z

    .line 745
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    return-object p0
.end method

.method public blacklist getCarrierSpecific()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 1

    .line 587
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->carrierSpecific_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public blacklist getCountryCode()I
    .registers 1

    .line 640
    iget p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->countryCode_:I

    return p0
.end method

.method public blacklist getEmergency()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 1

    .line 531
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->emergency_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public blacklist getFixedLine()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 1

    .line 405
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->fixedLine_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public blacklist getGeneralDesc()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 1

    .line 385
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->generalDesc_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public blacklist getGeneralDescBuilder()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->generalDesc_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    if-nez v0, :cond_b

    .line 388
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->generalDesc_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 390
    :cond_b
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->generalDesc_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public blacklist getId()Ljava/lang/String;
    .registers 1

    .line 629
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getInternationalPrefix()Ljava/lang/String;
    .registers 1

    .line 651
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getIntlNumberFormat(I)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;
    .registers 2

    .line 786
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    return-object p0
.end method

.method public blacklist getIntlNumberFormatCount()I
    .registers 1

    .line 784
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public blacklist getIntlNumberFormatList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation

    .line 780
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    return-object p0
.end method

.method public blacklist getLeadingDigits()Ljava/lang/String;
    .registers 1

    .line 824
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getMainCountryForCode()Z
    .registers 1

    .line 808
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    return p0
.end method

.method public blacklist getMobile()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 1

    .line 419
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->mobile_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public blacklist getMobileNumberPortableRegion()Z
    .registers 1

    .line 837
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->mobileNumberPortableRegion_:Z

    return p0
.end method

.method public blacklist getNationalPrefix()Ljava/lang/String;
    .registers 1

    .line 678
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getNationalPrefixForParsing()Ljava/lang/String;
    .registers 1

    .line 710
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getNationalPrefixTransformRule()Ljava/lang/String;
    .registers 1

    .line 721
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getNoInternationalDialling()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 1

    .line 615
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public blacklist getNumberFormat(I)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;
    .registers 2

    .line 762
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    return-object p0
.end method

.method public blacklist getNumberFormatCount()I
    .registers 1

    .line 760
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public blacklist getNumberFormatList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation

    .line 756
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    return-object p0
.end method

.method public blacklist getPager()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 1

    .line 503
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->pager_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public blacklist getPersonalNumber()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 1

    .line 475
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->personalNumber_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public blacklist getPreferredExtnPrefix()Ljava/lang/String;
    .registers 1

    .line 694
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getPreferredInternationalPrefix()Ljava/lang/String;
    .registers 1

    .line 662
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getPremiumRate()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 1

    .line 447
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->premiumRate_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public blacklist getSameMobileAndFixedLinePattern()Z
    .registers 1

    .line 737
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    return p0
.end method

.method public blacklist getSharedCost()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 1

    .line 461
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->sharedCost_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public blacklist getShortCode()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 1

    .line 559
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->shortCode_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public blacklist getSmsServices()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 1

    .line 601
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->smsServices_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public blacklist getStandardRate()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 1

    .line 573
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->standardRate_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public blacklist getTollFree()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 1

    .line 433
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->tollFree_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public blacklist getUan()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 1

    .line 517
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->uan_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public blacklist getVoicemail()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 1

    .line 545
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->voicemail_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public blacklist getVoip()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 1

    .line 489
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->voip_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public blacklist hasCarrierSpecific()Z
    .registers 1

    .line 586
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasCarrierSpecific:Z

    return p0
.end method

.method public blacklist hasCountryCode()Z
    .registers 1

    .line 639
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasCountryCode:Z

    return p0
.end method

.method public blacklist hasEmergency()Z
    .registers 1

    .line 530
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasEmergency:Z

    return p0
.end method

.method public blacklist hasFixedLine()Z
    .registers 1

    .line 404
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    return p0
.end method

.method public blacklist hasGeneralDesc()Z
    .registers 1

    .line 384
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    return p0
.end method

.method public blacklist hasId()Z
    .registers 1

    .line 628
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasId:Z

    return p0
.end method

.method public blacklist hasInternationalPrefix()Z
    .registers 1

    .line 650
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasInternationalPrefix:Z

    return p0
.end method

.method public blacklist hasLeadingDigits()Z
    .registers 1

    .line 823
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    return p0
.end method

.method public blacklist hasMainCountryForCode()Z
    .registers 1

    .line 804
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasMainCountryForCode:Z

    return p0
.end method

.method public blacklist hasMobile()Z
    .registers 1

    .line 418
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobile:Z

    return p0
.end method

.method public blacklist hasMobileNumberPortableRegion()Z
    .registers 1

    .line 834
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobileNumberPortableRegion:Z

    return p0
.end method

.method public blacklist hasNationalPrefix()Z
    .registers 1

    .line 677
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    return p0
.end method

.method public blacklist hasNationalPrefixForParsing()Z
    .registers 1

    .line 709
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    return p0
.end method

.method public blacklist hasNationalPrefixTransformRule()Z
    .registers 1

    .line 720
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    return p0
.end method

.method public blacklist hasNoInternationalDialling()Z
    .registers 1

    .line 614
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    return p0
.end method

.method public blacklist hasPager()Z
    .registers 1

    .line 502
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasPager:Z

    return p0
.end method

.method public blacklist hasPersonalNumber()Z
    .registers 1

    .line 474
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    return p0
.end method

.method public blacklist hasPreferredExtnPrefix()Z
    .registers 1

    .line 693
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    return p0
.end method

.method public blacklist hasPreferredInternationalPrefix()Z
    .registers 1

    .line 661
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    return p0
.end method

.method public blacklist hasPremiumRate()Z
    .registers 1

    .line 446
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    return p0
.end method

.method public blacklist hasSameMobileAndFixedLinePattern()Z
    .registers 1

    .line 736
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasSameMobileAndFixedLinePattern:Z

    return p0
.end method

.method public blacklist hasSharedCost()Z
    .registers 1

    .line 460
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    return p0
.end method

.method public blacklist hasShortCode()Z
    .registers 1

    .line 558
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasShortCode:Z

    return p0
.end method

.method public blacklist hasSmsServices()Z
    .registers 1

    .line 600
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasSmsServices:Z

    return p0
.end method

.method public blacklist hasStandardRate()Z
    .registers 1

    .line 572
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasStandardRate:Z

    return p0
.end method

.method public blacklist hasTollFree()Z
    .registers 1

    .line 432
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    return p0
.end method

.method public blacklist hasUan()Z
    .registers 1

    .line 516
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasUan:Z

    return p0
.end method

.method public blacklist hasVoicemail()Z
    .registers 1

    .line 544
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoicemail:Z

    return p0
.end method

.method public blacklist hasVoip()Z
    .registers 1

    .line 488
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoip:Z

    return p0
.end method

.method public blacklist intlNumberFormatSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 783
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getIntlNumberFormatCount()I

    move-result p0

    return p0
.end method

.method public blacklist intlNumberFormats()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 777
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getIntlNumberFormatList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist isMainCountryForCode()Z
    .registers 1

    .line 805
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    return p0
.end method

.method public blacklist isMobileNumberPortableRegion()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 836
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getMobileNumberPortableRegion()Z

    move-result p0

    return p0
.end method

.method public blacklist numberFormatSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 759
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getNumberFormatCount()I

    move-result p0

    return p0
.end method

.method public blacklist numberFormats()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 753
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getNumberFormatList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api readExternal(Ljava/io/ObjectInput;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 973
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 975
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 976
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 977
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->setGeneralDesc(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 979
    :cond_11
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 981
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 982
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 983
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->setFixedLine(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 985
    :cond_22
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 987
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 988
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 989
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->setMobile(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 991
    :cond_33
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 993
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 994
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 995
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->setTollFree(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 997
    :cond_44
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 999
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1000
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1001
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->setPremiumRate(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1003
    :cond_55
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 1005
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1006
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1007
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->setSharedCost(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1009
    :cond_66
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 1011
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1012
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1013
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->setPersonalNumber(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1015
    :cond_77
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 1017
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1018
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1019
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->setVoip(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1021
    :cond_88
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 1023
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1024
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1025
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->setPager(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1027
    :cond_99
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 1029
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1030
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1031
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->setUan(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1033
    :cond_aa
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 1035
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1036
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1037
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->setEmergency(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1039
    :cond_bb
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 1041
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1042
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1043
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->setVoicemail(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1045
    :cond_cc
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 1047
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1048
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1049
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->setShortCode(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1051
    :cond_dd
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 1053
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1054
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1055
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->setStandardRate(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1057
    :cond_ee
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 1059
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1060
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1061
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->setCarrierSpecific(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1063
    :cond_ff
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_110

    .line 1065
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1066
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1067
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->setSmsServices(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1069
    :cond_110
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_121

    .line 1071
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1072
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1073
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->setNoInternationalDialling(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1076
    :cond_121
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->setId(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1077
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->setCountryCode(I)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1078
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->setInternationalPrefix(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1080
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_143

    .line 1082
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->setPreferredInternationalPrefix(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1085
    :cond_143
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_150

    .line 1087
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->setNationalPrefix(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1090
    :cond_150
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_15d

    .line 1092
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->setPreferredExtnPrefix(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1095
    :cond_15d
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_16a

    .line 1097
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->setNationalPrefixForParsing(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1100
    :cond_16a
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_177

    .line 1102
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->setNationalPrefixTransformRule(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1105
    :cond_177
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->setSameMobileAndFixedLinePattern(Z)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1107
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_184
    if-ge v2, v0, :cond_196

    .line 1109
    new-instance v3, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    invoke-direct {v3}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;-><init>()V

    .line 1110
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->readExternal(Ljava/io/ObjectInput;)V

    .line 1111
    iget-object v4, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_184

    .line 1114
    :cond_196
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    :goto_19a
    if-ge v1, v0, :cond_1ac

    .line 1116
    new-instance v2, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    invoke-direct {v2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;-><init>()V

    .line 1117
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->readExternal(Ljava/io/ObjectInput;)V

    .line 1118
    iget-object v3, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_19a

    .line 1121
    :cond_1ac
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->setMainCountryForCode(Z)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1123
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_1c0

    .line 1125
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->setLeadingDigits(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1128
    :cond_1c0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->setMobileNumberPortableRegion(Z)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    return-void
.end method

.method public blacklist setCarrierSpecific(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3

    .line 590
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 592
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasCarrierSpecific:Z

    .line 593
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->carrierSpecific_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public blacklist setCountryCode(I)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3

    const/4 v0, 0x1

    .line 642
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasCountryCode:Z

    .line 643
    iput p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->countryCode_:I

    return-object p0
.end method

.method public blacklist setEmergency(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3

    .line 534
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 536
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasEmergency:Z

    .line 537
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->emergency_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public blacklist setFixedLine(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3

    .line 408
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 410
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    .line 411
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->fixedLine_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public blacklist setGeneralDesc(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3

    .line 394
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 396
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    .line 397
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->generalDesc_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public blacklist setId(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3

    const/4 v0, 0x1

    .line 631
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasId:Z

    .line 632
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setInternationalPrefix(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3

    const/4 v0, 0x1

    .line 653
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasInternationalPrefix:Z

    .line 654
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setLeadingDigits(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3

    const/4 v0, 0x1

    .line 826
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    .line 827
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setMainCountryForCode(Z)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3

    const/4 v0, 0x1

    .line 810
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasMainCountryForCode:Z

    .line 811
    iput-boolean p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    return-object p0
.end method

.method public blacklist setMobile(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3

    .line 422
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 424
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobile:Z

    .line 425
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->mobile_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public blacklist setMobileNumberPortableRegion(Z)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3

    const/4 v0, 0x1

    .line 839
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobileNumberPortableRegion:Z

    .line 840
    iput-boolean p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->mobileNumberPortableRegion_:Z

    return-object p0
.end method

.method public blacklist setNationalPrefix(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3

    const/4 v0, 0x1

    .line 680
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    .line 681
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setNationalPrefixForParsing(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3

    const/4 v0, 0x1

    .line 712
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    .line 713
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setNationalPrefixTransformRule(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3

    const/4 v0, 0x1

    .line 723
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    .line 724
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setNoInternationalDialling(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3

    .line 618
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 620
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    .line 621
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public blacklist setPager(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3

    .line 506
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 508
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasPager:Z

    .line 509
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->pager_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public blacklist setPersonalNumber(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3

    .line 478
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 480
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    .line 481
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->personalNumber_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public blacklist setPreferredExtnPrefix(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3

    const/4 v0, 0x1

    .line 696
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    .line 697
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setPreferredInternationalPrefix(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3

    const/4 v0, 0x1

    .line 664
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    .line 665
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setPremiumRate(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3

    .line 450
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 452
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    .line 453
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->premiumRate_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public blacklist setSameMobileAndFixedLinePattern(Z)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3

    const/4 v0, 0x1

    .line 739
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasSameMobileAndFixedLinePattern:Z

    .line 740
    iput-boolean p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    return-object p0
.end method

.method public blacklist setSharedCost(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3

    .line 464
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 466
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    .line 467
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->sharedCost_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public blacklist setShortCode(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3

    .line 562
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 564
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasShortCode:Z

    .line 565
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->shortCode_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public blacklist setSmsServices(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3

    .line 604
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 606
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasSmsServices:Z

    .line 607
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->smsServices_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public blacklist setStandardRate(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3

    .line 576
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 578
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasStandardRate:Z

    .line 579
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->standardRate_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public blacklist setTollFree(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3

    .line 436
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 438
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    .line 439
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->tollFree_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public blacklist setUan(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3

    .line 520
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 522
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasUan:Z

    .line 523
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->uan_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public blacklist setVoicemail(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3

    .line 548
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 550
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoicemail:Z

    .line 551
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->voicemail_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public blacklist setVoip(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3

    .line 492
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 494
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoip:Z

    .line 495
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->voip_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public whitelist test-api writeExternal(Ljava/io/ObjectOutput;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 850
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 851
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    if-eqz v0, :cond_e

    .line 852
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->generalDesc_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 854
    :cond_e
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 855
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    if-eqz v0, :cond_1c

    .line 856
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->fixedLine_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 858
    :cond_1c
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobile:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 859
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobile:Z

    if-eqz v0, :cond_2a

    .line 860
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->mobile_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 862
    :cond_2a
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 863
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    if-eqz v0, :cond_38

    .line 864
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->tollFree_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 866
    :cond_38
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 867
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    if-eqz v0, :cond_46

    .line 868
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->premiumRate_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 870
    :cond_46
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 871
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    if-eqz v0, :cond_54

    .line 872
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->sharedCost_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 874
    :cond_54
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 875
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    if-eqz v0, :cond_62

    .line 876
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->personalNumber_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 878
    :cond_62
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoip:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 879
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoip:Z

    if-eqz v0, :cond_70

    .line 880
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->voip_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 882
    :cond_70
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasPager:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 883
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasPager:Z

    if-eqz v0, :cond_7e

    .line 884
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->pager_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 886
    :cond_7e
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasUan:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 887
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasUan:Z

    if-eqz v0, :cond_8c

    .line 888
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->uan_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 890
    :cond_8c
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasEmergency:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 891
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasEmergency:Z

    if-eqz v0, :cond_9a

    .line 892
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->emergency_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 894
    :cond_9a
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoicemail:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 895
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoicemail:Z

    if-eqz v0, :cond_a8

    .line 896
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->voicemail_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 898
    :cond_a8
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasShortCode:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 899
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasShortCode:Z

    if-eqz v0, :cond_b6

    .line 900
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->shortCode_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 902
    :cond_b6
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasStandardRate:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 903
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasStandardRate:Z

    if-eqz v0, :cond_c4

    .line 904
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->standardRate_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 906
    :cond_c4
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasCarrierSpecific:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 907
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasCarrierSpecific:Z

    if-eqz v0, :cond_d2

    .line 908
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->carrierSpecific_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 910
    :cond_d2
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasSmsServices:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 911
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasSmsServices:Z

    if-eqz v0, :cond_e0

    .line 912
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->smsServices_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 914
    :cond_e0
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 915
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    if-eqz v0, :cond_ee

    .line 916
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 919
    :cond_ee
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 920
    iget v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->countryCode_:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 921
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 923
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 924
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    if-eqz v0, :cond_10b

    .line 925
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 928
    :cond_10b
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 929
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    if-eqz v0, :cond_119

    .line 930
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 933
    :cond_119
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 934
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    if-eqz v0, :cond_127

    .line 935
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 938
    :cond_127
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 939
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    if-eqz v0, :cond_135

    .line 940
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 943
    :cond_135
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 944
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    if-eqz v0, :cond_143

    .line 945
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 948
    :cond_143
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 950
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormatSize()I

    move-result v0

    .line 951
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_151
    if-ge v2, v0, :cond_161

    .line 953
    iget-object v3, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->writeExternal(Ljava/io/ObjectOutput;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_151

    .line 956
    :cond_161
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormatSize()I

    move-result v0

    .line 957
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    :goto_168
    if-ge v1, v0, :cond_178

    .line 959
    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->writeExternal(Ljava/io/ObjectOutput;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_168

    .line 962
    :cond_178
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 964
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 965
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    if-eqz v0, :cond_18b

    .line 966
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 969
    :cond_18b
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->mobileNumberPortableRegion_:Z

    invoke-interface {p1, p0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    return-void
.end method
