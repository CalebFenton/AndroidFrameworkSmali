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
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private carrierSpecific_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private countryCode_:I

.field private emergency_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private fixedLine_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private generalDesc_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private hasCarrierSpecific:Z

.field private hasCountryCode:Z

.field private hasEmergency:Z

.field private hasFixedLine:Z

.field private hasGeneralDesc:Z

.field private hasId:Z

.field private hasInternationalPrefix:Z

.field private hasLeadingDigits:Z

.field private hasLeadingZeroPossible:Z

.field private hasMainCountryForCode:Z

.field private hasMobile:Z

.field private hasMobileNumberPortableRegion:Z

.field private hasNationalPrefix:Z

.field private hasNationalPrefixForParsing:Z

.field private hasNationalPrefixTransformRule:Z

.field private hasNoInternationalDialling:Z

.field private hasPager:Z

.field private hasPersonalNumber:Z

.field private hasPreferredExtnPrefix:Z

.field private hasPreferredInternationalPrefix:Z

.field private hasPremiumRate:Z

.field private hasSameMobileAndFixedLinePattern:Z

.field private hasSharedCost:Z

.field private hasShortCode:Z

.field private hasStandardRate:Z

.field private hasTollFree:Z

.field private hasUan:Z

.field private hasVoicemail:Z

.field private hasVoip:Z

.field private id_:Ljava/lang/String;

.field private internationalPrefix_:Ljava/lang/String;

.field private intlNumberFormat_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private leadingDigits_:Ljava/lang/String;

.field private leadingZeroPossible_:Z

.field private mainCountryForCode_:Z

.field private mobileNumberPortableRegion_:Z

.field private mobile_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private nationalPrefixForParsing_:Ljava/lang/String;

.field private nationalPrefixTransformRule_:Ljava/lang/String;

.field private nationalPrefix_:Ljava/lang/String;

.field private noInternationalDialling_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private numberFormat_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private pager_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private personalNumber_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private preferredExtnPrefix_:Ljava/lang/String;

.field private preferredInternationalPrefix_:Ljava/lang/String;

.field private premiumRate_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private sameMobileAndFixedLinePattern_:Z

.field private sharedCost_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private shortCode_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private standardRate_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private tollFree_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private uan_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private voicemail_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private voip_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 312
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->generalDesc_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@7
    .line 326
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->fixedLine_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@9
    .line 340
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mobile_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@b
    .line 354
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->tollFree_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@d
    .line 368
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->premiumRate_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@f
    .line 382
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sharedCost_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@11
    .line 396
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->personalNumber_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@13
    .line 410
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voip_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@15
    .line 424
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->pager_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@17
    .line 438
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->uan_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@19
    .line 452
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->emergency_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@1b
    .line 466
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voicemail_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@1d
    .line 480
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->shortCode_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@1f
    .line 494
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->standardRate_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@21
    .line 508
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->carrierSpecific_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@23
    .line 522
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@25
    .line 536
    const-string/jumbo v0, ""

    #@28
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    #@2a
    .line 547
    iput v1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->countryCode_:I

    #@2c
    .line 558
    const-string/jumbo v0, ""

    #@2f
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    #@31
    .line 569
    const-string/jumbo v0, ""

    #@34
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    #@36
    .line 580
    const-string/jumbo v0, ""

    #@39
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    #@3b
    .line 591
    const-string/jumbo v0, ""

    #@3e
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    #@40
    .line 602
    const-string/jumbo v0, ""

    #@43
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    #@45
    .line 613
    const-string/jumbo v0, ""

    #@48
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    #@4a
    .line 624
    iput-boolean v1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    #@4c
    .line 634
    new-instance v0, Ljava/util/ArrayList;

    #@4e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@51
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    #@53
    .line 652
    new-instance v0, Ljava/util/ArrayList;

    #@55
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@58
    .line 651
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    #@5a
    .line 675
    iput-boolean v1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    #@5c
    .line 689
    const-string/jumbo v0, ""

    #@5f
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    #@61
    .line 700
    iput-boolean v1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingZeroPossible_:Z

    #@63
    .line 711
    iput-boolean v1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mobileNumberPortableRegion_:Z

    #@65
    .line 294
    return-void
.end method

.method public static newBuilder()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;
    .locals 1

    #@0
    .prologue
    .line 307
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;

    #@2
    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;-><init>()V

    #@5
    return-object v0
.end method


# virtual methods
.method public addIntlNumberFormat(Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@0
    .prologue
    .line 662
    if-nez p1, :cond_0

    #@2
    .line 663
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 665
    :cond_0
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    #@a
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d
    .line 666
    return-object p0
.end method

.method public addNumberFormat(Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@0
    .prologue
    .line 643
    if-nez p1, :cond_0

    #@2
    .line 644
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 646
    :cond_0
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    #@a
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d
    .line 647
    return-object p0
.end method

.method public clearIntlNumberFormat()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    #@0
    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@5
    .line 670
    return-object p0
.end method

.method public getCarrierSpecific()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    #@0
    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->carrierSpecific_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@2
    return-object v0
.end method

.method public getCountryCode()I
    .locals 1

    #@0
    .prologue
    .line 549
    iget v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->countryCode_:I

    #@2
    return v0
.end method

.method public getEmergency()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    #@0
    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->emergency_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@2
    return-object v0
.end method

.method public getFixedLine()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    #@0
    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->fixedLine_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@2
    return-object v0
.end method

.method public getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    #@0
    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->generalDesc_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@2
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getInternationalPrefix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getIntlNumberFormat(I)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@8
    return-object v0
.end method

.method public getLeadingDigits()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMainCountryForCode()Z
    .locals 1

    #@0
    .prologue
    .line 680
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    #@2
    return v0
.end method

.method public getMobile()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    #@0
    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mobile_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@2
    return-object v0
.end method

.method public getNationalPrefix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNationalPrefixForParsing()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNationalPrefixTransformRule()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNoInternationalDialling()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    #@0
    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@2
    return-object v0
.end method

.method public getNumberFormat(I)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@8
    return-object v0
.end method

.method public getPager()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    #@0
    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->pager_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@2
    return-object v0
.end method

.method public getPersonalNumber()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    #@0
    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->personalNumber_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@2
    return-object v0
.end method

.method public getPreferredExtnPrefix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPreferredInternationalPrefix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPremiumRate()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    #@0
    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->premiumRate_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@2
    return-object v0
.end method

.method public getSharedCost()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    #@0
    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sharedCost_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@2
    return-object v0
.end method

.method public getShortCode()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    #@0
    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->shortCode_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@2
    return-object v0
.end method

.method public getStandardRate()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    #@0
    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->standardRate_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@2
    return-object v0
.end method

.method public getTollFree()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    #@0
    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->tollFree_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@2
    return-object v0
.end method

.method public getUan()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    #@0
    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->uan_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@2
    return-object v0
.end method

.method public getVoicemail()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    #@0
    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voicemail_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@2
    return-object v0
.end method

.method public getVoip()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    #@0
    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voip_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@2
    return-object v0
.end method

.method public hasCarrierSpecific()Z
    .locals 1

    #@0
    .prologue
    .line 509
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasCarrierSpecific:Z

    #@2
    return v0
.end method

.method public hasCountryCode()Z
    .locals 1

    #@0
    .prologue
    .line 548
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasCountryCode:Z

    #@2
    return v0
.end method

.method public hasEmergency()Z
    .locals 1

    #@0
    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasEmergency:Z

    #@2
    return v0
.end method

.method public hasFixedLine()Z
    .locals 1

    #@0
    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    #@2
    return v0
.end method

.method public hasGeneralDesc()Z
    .locals 1

    #@0
    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    #@2
    return v0
.end method

.method public hasId()Z
    .locals 1

    #@0
    .prologue
    .line 537
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasId:Z

    #@2
    return v0
.end method

.method public hasInternationalPrefix()Z
    .locals 1

    #@0
    .prologue
    .line 559
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasInternationalPrefix:Z

    #@2
    return v0
.end method

.method public hasLeadingDigits()Z
    .locals 1

    #@0
    .prologue
    .line 690
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    #@2
    return v0
.end method

.method public hasLeadingZeroPossible()Z
    .locals 1

    #@0
    .prologue
    .line 701
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingZeroPossible:Z

    #@2
    return v0
.end method

.method public hasMainCountryForCode()Z
    .locals 1

    #@0
    .prologue
    .line 676
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMainCountryForCode:Z

    #@2
    return v0
.end method

.method public hasMobile()Z
    .locals 1

    #@0
    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobile:Z

    #@2
    return v0
.end method

.method public hasMobileNumberPortableRegion()Z
    .locals 1

    #@0
    .prologue
    .line 712
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobileNumberPortableRegion:Z

    #@2
    return v0
.end method

.method public hasNationalPrefix()Z
    .locals 1

    #@0
    .prologue
    .line 581
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    #@2
    return v0
.end method

.method public hasNationalPrefixForParsing()Z
    .locals 1

    #@0
    .prologue
    .line 603
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    #@2
    return v0
.end method

.method public hasNationalPrefixTransformRule()Z
    .locals 1

    #@0
    .prologue
    .line 614
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    #@2
    return v0
.end method

.method public hasNoInternationalDialling()Z
    .locals 1

    #@0
    .prologue
    .line 523
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    #@2
    return v0
.end method

.method public hasPager()Z
    .locals 1

    #@0
    .prologue
    .line 425
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPager:Z

    #@2
    return v0
.end method

.method public hasPersonalNumber()Z
    .locals 1

    #@0
    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    #@2
    return v0
.end method

.method public hasPreferredExtnPrefix()Z
    .locals 1

    #@0
    .prologue
    .line 592
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    #@2
    return v0
.end method

.method public hasPreferredInternationalPrefix()Z
    .locals 1

    #@0
    .prologue
    .line 570
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    #@2
    return v0
.end method

.method public hasPremiumRate()Z
    .locals 1

    #@0
    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    #@2
    return v0
.end method

.method public hasSameMobileAndFixedLinePattern()Z
    .locals 1

    #@0
    .prologue
    .line 625
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSameMobileAndFixedLinePattern:Z

    #@2
    return v0
.end method

.method public hasSharedCost()Z
    .locals 1

    #@0
    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    #@2
    return v0
.end method

.method public hasShortCode()Z
    .locals 1

    #@0
    .prologue
    .line 481
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasShortCode:Z

    #@2
    return v0
.end method

.method public hasStandardRate()Z
    .locals 1

    #@0
    .prologue
    .line 495
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasStandardRate:Z

    #@2
    return v0
.end method

.method public hasTollFree()Z
    .locals 1

    #@0
    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    #@2
    return v0
.end method

.method public hasUan()Z
    .locals 1

    #@0
    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasUan:Z

    #@2
    return v0
.end method

.method public hasVoicemail()Z
    .locals 1

    #@0
    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoicemail:Z

    #@2
    return v0
.end method

.method public hasVoip()Z
    .locals 1

    #@0
    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoip:Z

    #@2
    return v0
.end method

.method public intlNumberFormatSize()I
    .locals 1

    #@0
    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public intlNumberFormats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public isLeadingZeroPossible()Z
    .locals 1

    #@0
    .prologue
    .line 702
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingZeroPossible_:Z

    #@2
    return v0
.end method

.method public isMainCountryForCode()Z
    .locals 1

    #@0
    .prologue
    .line 677
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    #@2
    return v0
.end method

.method public isMobileNumberPortableRegion()Z
    .locals 1

    #@0
    .prologue
    .line 713
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mobileNumberPortableRegion_:Z

    #@2
    return v0
.end method

.method public isSameMobileAndFixedLinePattern()Z
    .locals 1

    #@0
    .prologue
    .line 626
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    #@2
    return v0
.end method

.method public numberFormatSize()I
    .locals 1

    #@0
    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public numberFormats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 8
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 842
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    #@3
    move-result v1

    #@4
    .line 843
    .local v1, "hasDesc":Z
    if-eqz v1, :cond_0

    #@6
    .line 844
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@8
    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    #@b
    .line 845
    .local v0, "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    #@e
    .line 846
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setGeneralDesc(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@11
    .line 848
    .end local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    #@14
    move-result v1

    #@15
    .line 849
    if-eqz v1, :cond_1

    #@17
    .line 850
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@19
    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    #@1c
    .line 851
    .restart local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    #@1f
    .line 852
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setFixedLine(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@22
    .line 854
    .end local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    #@25
    move-result v1

    #@26
    .line 855
    if-eqz v1, :cond_2

    #@28
    .line 856
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@2a
    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    #@2d
    .line 857
    .restart local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    #@30
    .line 858
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setMobile(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@33
    .line 860
    .end local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_2
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    #@36
    move-result v1

    #@37
    .line 861
    if-eqz v1, :cond_3

    #@39
    .line 862
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@3b
    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    #@3e
    .line 863
    .restart local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    #@41
    .line 864
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setTollFree(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@44
    .line 866
    .end local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_3
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    #@47
    move-result v1

    #@48
    .line 867
    if-eqz v1, :cond_4

    #@4a
    .line 868
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@4c
    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    #@4f
    .line 869
    .restart local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    #@52
    .line 870
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setPremiumRate(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@55
    .line 872
    .end local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_4
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    #@58
    move-result v1

    #@59
    .line 873
    if-eqz v1, :cond_5

    #@5b
    .line 874
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@5d
    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    #@60
    .line 875
    .restart local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    #@63
    .line 876
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setSharedCost(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@66
    .line 878
    .end local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_5
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    #@69
    move-result v1

    #@6a
    .line 879
    if-eqz v1, :cond_6

    #@6c
    .line 880
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@6e
    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    #@71
    .line 881
    .restart local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    #@74
    .line 882
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setPersonalNumber(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@77
    .line 884
    .end local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_6
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    #@7a
    move-result v1

    #@7b
    .line 885
    if-eqz v1, :cond_7

    #@7d
    .line 886
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@7f
    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    #@82
    .line 887
    .restart local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    #@85
    .line 888
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setVoip(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@88
    .line 890
    .end local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_7
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    #@8b
    move-result v1

    #@8c
    .line 891
    if-eqz v1, :cond_8

    #@8e
    .line 892
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@90
    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    #@93
    .line 893
    .restart local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    #@96
    .line 894
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setPager(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@99
    .line 896
    .end local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_8
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    #@9c
    move-result v1

    #@9d
    .line 897
    if-eqz v1, :cond_9

    #@9f
    .line 898
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@a1
    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    #@a4
    .line 899
    .restart local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    #@a7
    .line 900
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setUan(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@aa
    .line 902
    .end local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_9
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    #@ad
    move-result v1

    #@ae
    .line 903
    if-eqz v1, :cond_a

    #@b0
    .line 904
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@b2
    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    #@b5
    .line 905
    .restart local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    #@b8
    .line 906
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setEmergency(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@bb
    .line 908
    .end local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_a
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    #@be
    move-result v1

    #@bf
    .line 909
    if-eqz v1, :cond_b

    #@c1
    .line 910
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@c3
    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    #@c6
    .line 911
    .restart local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    #@c9
    .line 912
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setVoicemail(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@cc
    .line 914
    .end local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_b
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    #@cf
    move-result v1

    #@d0
    .line 915
    if-eqz v1, :cond_c

    #@d2
    .line 916
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@d4
    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    #@d7
    .line 917
    .restart local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    #@da
    .line 918
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setShortCode(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@dd
    .line 920
    .end local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_c
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    #@e0
    move-result v1

    #@e1
    .line 921
    if-eqz v1, :cond_d

    #@e3
    .line 922
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@e5
    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    #@e8
    .line 923
    .restart local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    #@eb
    .line 924
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setStandardRate(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@ee
    .line 926
    .end local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_d
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    #@f1
    move-result v1

    #@f2
    .line 927
    if-eqz v1, :cond_e

    #@f4
    .line 928
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@f6
    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    #@f9
    .line 929
    .restart local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    #@fc
    .line 930
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setCarrierSpecific(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@ff
    .line 932
    .end local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_e
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    #@102
    move-result v1

    #@103
    .line 933
    if-eqz v1, :cond_f

    #@105
    .line 934
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@107
    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    #@10a
    .line 935
    .restart local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    #@10d
    .line 936
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setNoInternationalDialling(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@110
    .line 939
    .end local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_f
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    #@113
    move-result-object v7

    #@114
    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setId(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@117
    .line 940
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    #@11a
    move-result v7

    #@11b
    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setCountryCode(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@11e
    .line 941
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    #@121
    move-result-object v7

    #@122
    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setInternationalPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@125
    .line 943
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    #@128
    move-result v2

    #@129
    .line 944
    .local v2, "hasString":Z
    if-eqz v2, :cond_10

    #@12b
    .line 945
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    #@12e
    move-result-object v7

    #@12f
    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setPreferredInternationalPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@132
    .line 948
    :cond_10
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    #@135
    move-result v2

    #@136
    .line 949
    if-eqz v2, :cond_11

    #@138
    .line 950
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    #@13b
    move-result-object v7

    #@13c
    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setNationalPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@13f
    .line 953
    :cond_11
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    #@142
    move-result v2

    #@143
    .line 954
    if-eqz v2, :cond_12

    #@145
    .line 955
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    #@148
    move-result-object v7

    #@149
    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setPreferredExtnPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@14c
    .line 958
    :cond_12
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    #@14f
    move-result v2

    #@150
    .line 959
    if-eqz v2, :cond_13

    #@152
    .line 960
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    #@155
    move-result-object v7

    #@156
    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setNationalPrefixForParsing(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@159
    .line 963
    :cond_13
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    #@15c
    move-result v2

    #@15d
    .line 964
    if-eqz v2, :cond_14

    #@15f
    .line 965
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    #@162
    move-result-object v7

    #@163
    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setNationalPrefixTransformRule(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@166
    .line 968
    :cond_14
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    #@169
    move-result v7

    #@16a
    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setSameMobileAndFixedLinePattern(Z)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@16d
    .line 970
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    #@170
    move-result v5

    #@171
    .line 971
    .local v5, "nationalFormatSize":I
    const/4 v3, 0x0

    #@172
    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_15

    #@174
    .line 972
    new-instance v6, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@176
    invoke-direct {v6}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;-><init>()V

    #@179
    .line 973
    .local v6, "numFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v6, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->readExternal(Ljava/io/ObjectInput;)V

    #@17c
    .line 974
    iget-object v7, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    #@17e
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@181
    .line 971
    add-int/lit8 v3, v3, 0x1

    #@183
    goto :goto_0

    #@184
    .line 977
    .end local v6    # "numFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    :cond_15
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    #@187
    move-result v4

    #@188
    .line 978
    .local v4, "intlNumberFormatSize":I
    const/4 v3, 0x0

    #@189
    :goto_1
    if-ge v3, v4, :cond_16

    #@18b
    .line 979
    new-instance v6, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@18d
    invoke-direct {v6}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;-><init>()V

    #@190
    .line 980
    .restart local v6    # "numFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v6, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->readExternal(Ljava/io/ObjectInput;)V

    #@193
    .line 981
    iget-object v7, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    #@195
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@198
    .line 978
    add-int/lit8 v3, v3, 0x1

    #@19a
    goto :goto_1

    #@19b
    .line 984
    .end local v6    # "numFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    :cond_16
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    #@19e
    move-result v7

    #@19f
    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setMainCountryForCode(Z)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@1a2
    .line 986
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    #@1a5
    move-result v2

    #@1a6
    .line 987
    if-eqz v2, :cond_17

    #@1a8
    .line 988
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    #@1ab
    move-result-object v7

    #@1ac
    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setLeadingDigits(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@1af
    .line 991
    :cond_17
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    #@1b2
    move-result v7

    #@1b3
    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setLeadingZeroPossible(Z)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@1b6
    .line 993
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    #@1b9
    move-result v7

    #@1ba
    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setMobileNumberPortableRegion(Z)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@1bd
    .line 841
    return-void
.end method

.method public setCarrierSpecific(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@0
    .prologue
    .line 512
    if-nez p1, :cond_0

    #@2
    .line 513
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 515
    :cond_0
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasCarrierSpecific:Z

    #@b
    .line 516
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->carrierSpecific_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@d
    .line 517
    return-object p0
.end method

.method public setCountryCode(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 551
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasCountryCode:Z

    #@3
    .line 552
    iput p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->countryCode_:I

    #@5
    .line 553
    return-object p0
.end method

.method public setEmergency(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@0
    .prologue
    .line 456
    if-nez p1, :cond_0

    #@2
    .line 457
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 459
    :cond_0
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasEmergency:Z

    #@b
    .line 460
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->emergency_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@d
    .line 461
    return-object p0
.end method

.method public setFixedLine(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@0
    .prologue
    .line 330
    if-nez p1, :cond_0

    #@2
    .line 331
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 333
    :cond_0
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    #@b
    .line 334
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->fixedLine_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@d
    .line 335
    return-object p0
.end method

.method public setGeneralDesc(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@0
    .prologue
    .line 316
    if-nez p1, :cond_0

    #@2
    .line 317
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 319
    :cond_0
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    #@b
    .line 320
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->generalDesc_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@d
    .line 321
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 540
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasId:Z

    #@3
    .line 541
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    #@5
    .line 542
    return-object p0
.end method

.method public setInternationalPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 562
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasInternationalPrefix:Z

    #@3
    .line 563
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    #@5
    .line 564
    return-object p0
.end method

.method public setLeadingDigits(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 693
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    #@3
    .line 694
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    #@5
    .line 695
    return-object p0
.end method

.method public setLeadingZeroPossible(Z)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 704
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingZeroPossible:Z

    #@3
    .line 705
    iput-boolean p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingZeroPossible_:Z

    #@5
    .line 706
    return-object p0
.end method

.method public setMainCountryForCode(Z)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 682
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMainCountryForCode:Z

    #@3
    .line 683
    iput-boolean p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    #@5
    .line 684
    return-object p0
.end method

.method public setMobile(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@0
    .prologue
    .line 344
    if-nez p1, :cond_0

    #@2
    .line 345
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 347
    :cond_0
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobile:Z

    #@b
    .line 348
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mobile_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@d
    .line 349
    return-object p0
.end method

.method public setMobileNumberPortableRegion(Z)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 715
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobileNumberPortableRegion:Z

    #@3
    .line 716
    iput-boolean p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mobileNumberPortableRegion_:Z

    #@5
    .line 717
    return-object p0
.end method

.method public setNationalPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 584
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    #@3
    .line 585
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    #@5
    .line 586
    return-object p0
.end method

.method public setNationalPrefixForParsing(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 606
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    #@3
    .line 607
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    #@5
    .line 608
    return-object p0
.end method

.method public setNationalPrefixTransformRule(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 617
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    #@3
    .line 618
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    #@5
    .line 619
    return-object p0
.end method

.method public setNoInternationalDialling(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@0
    .prologue
    .line 526
    if-nez p1, :cond_0

    #@2
    .line 527
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 529
    :cond_0
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    #@b
    .line 530
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@d
    .line 531
    return-object p0
.end method

.method public setPager(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@0
    .prologue
    .line 428
    if-nez p1, :cond_0

    #@2
    .line 429
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 431
    :cond_0
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPager:Z

    #@b
    .line 432
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->pager_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@d
    .line 433
    return-object p0
.end method

.method public setPersonalNumber(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@0
    .prologue
    .line 400
    if-nez p1, :cond_0

    #@2
    .line 401
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 403
    :cond_0
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    #@b
    .line 404
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->personalNumber_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@d
    .line 405
    return-object p0
.end method

.method public setPreferredExtnPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 595
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    #@3
    .line 596
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    #@5
    .line 597
    return-object p0
.end method

.method public setPreferredInternationalPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 573
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    #@3
    .line 574
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    #@5
    .line 575
    return-object p0
.end method

.method public setPremiumRate(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@0
    .prologue
    .line 372
    if-nez p1, :cond_0

    #@2
    .line 373
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 375
    :cond_0
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    #@b
    .line 376
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->premiumRate_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@d
    .line 377
    return-object p0
.end method

.method public setSameMobileAndFixedLinePattern(Z)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 628
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSameMobileAndFixedLinePattern:Z

    #@3
    .line 629
    iput-boolean p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    #@5
    .line 630
    return-object p0
.end method

.method public setSharedCost(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@0
    .prologue
    .line 386
    if-nez p1, :cond_0

    #@2
    .line 387
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 389
    :cond_0
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    #@b
    .line 390
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sharedCost_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@d
    .line 391
    return-object p0
.end method

.method public setShortCode(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@0
    .prologue
    .line 484
    if-nez p1, :cond_0

    #@2
    .line 485
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 487
    :cond_0
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasShortCode:Z

    #@b
    .line 488
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->shortCode_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@d
    .line 489
    return-object p0
.end method

.method public setStandardRate(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@0
    .prologue
    .line 498
    if-nez p1, :cond_0

    #@2
    .line 499
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 501
    :cond_0
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasStandardRate:Z

    #@b
    .line 502
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->standardRate_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@d
    .line 503
    return-object p0
.end method

.method public setTollFree(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@0
    .prologue
    .line 358
    if-nez p1, :cond_0

    #@2
    .line 359
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 361
    :cond_0
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    #@b
    .line 362
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->tollFree_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@d
    .line 363
    return-object p0
.end method

.method public setUan(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@0
    .prologue
    .line 442
    if-nez p1, :cond_0

    #@2
    .line 443
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 445
    :cond_0
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasUan:Z

    #@b
    .line 446
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->uan_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@d
    .line 447
    return-object p0
.end method

.method public setVoicemail(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@0
    .prologue
    .line 470
    if-nez p1, :cond_0

    #@2
    .line 471
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 473
    :cond_0
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoicemail:Z

    #@b
    .line 474
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voicemail_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@d
    .line 475
    return-object p0
.end method

.method public setVoip(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@0
    .prologue
    .line 414
    if-nez p1, :cond_0

    #@2
    .line 415
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 417
    :cond_0
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoip:Z

    #@b
    .line 418
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voip_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@d
    .line 419
    return-object p0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .param p1, "objectOutput"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 721
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    #@2
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    #@5
    .line 722
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 723
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->generalDesc_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@b
    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    #@e
    .line 725
    :cond_0
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    #@10
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    #@13
    .line 726
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    #@15
    if-eqz v3, :cond_1

    #@17
    .line 727
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->fixedLine_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@19
    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    #@1c
    .line 729
    :cond_1
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobile:Z

    #@1e
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    #@21
    .line 730
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobile:Z

    #@23
    if-eqz v3, :cond_2

    #@25
    .line 731
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mobile_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@27
    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    #@2a
    .line 733
    :cond_2
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    #@2c
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    #@2f
    .line 734
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    #@31
    if-eqz v3, :cond_3

    #@33
    .line 735
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->tollFree_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@35
    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    #@38
    .line 737
    :cond_3
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    #@3a
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    #@3d
    .line 738
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    #@3f
    if-eqz v3, :cond_4

    #@41
    .line 739
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->premiumRate_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@43
    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    #@46
    .line 741
    :cond_4
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    #@48
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    #@4b
    .line 742
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    #@4d
    if-eqz v3, :cond_5

    #@4f
    .line 743
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sharedCost_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@51
    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    #@54
    .line 745
    :cond_5
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    #@56
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    #@59
    .line 746
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    #@5b
    if-eqz v3, :cond_6

    #@5d
    .line 747
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->personalNumber_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@5f
    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    #@62
    .line 749
    :cond_6
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoip:Z

    #@64
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    #@67
    .line 750
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoip:Z

    #@69
    if-eqz v3, :cond_7

    #@6b
    .line 751
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voip_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@6d
    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    #@70
    .line 753
    :cond_7
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPager:Z

    #@72
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    #@75
    .line 754
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPager:Z

    #@77
    if-eqz v3, :cond_8

    #@79
    .line 755
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->pager_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@7b
    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    #@7e
    .line 757
    :cond_8
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasUan:Z

    #@80
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    #@83
    .line 758
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasUan:Z

    #@85
    if-eqz v3, :cond_9

    #@87
    .line 759
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->uan_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@89
    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    #@8c
    .line 761
    :cond_9
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasEmergency:Z

    #@8e
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    #@91
    .line 762
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasEmergency:Z

    #@93
    if-eqz v3, :cond_a

    #@95
    .line 763
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->emergency_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@97
    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    #@9a
    .line 765
    :cond_a
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoicemail:Z

    #@9c
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    #@9f
    .line 766
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoicemail:Z

    #@a1
    if-eqz v3, :cond_b

    #@a3
    .line 767
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voicemail_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@a5
    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    #@a8
    .line 769
    :cond_b
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasShortCode:Z

    #@aa
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    #@ad
    .line 770
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasShortCode:Z

    #@af
    if-eqz v3, :cond_c

    #@b1
    .line 771
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->shortCode_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@b3
    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    #@b6
    .line 773
    :cond_c
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasStandardRate:Z

    #@b8
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    #@bb
    .line 774
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasStandardRate:Z

    #@bd
    if-eqz v3, :cond_d

    #@bf
    .line 775
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->standardRate_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@c1
    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    #@c4
    .line 777
    :cond_d
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasCarrierSpecific:Z

    #@c6
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    #@c9
    .line 778
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasCarrierSpecific:Z

    #@cb
    if-eqz v3, :cond_e

    #@cd
    .line 779
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->carrierSpecific_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@cf
    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    #@d2
    .line 781
    :cond_e
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    #@d4
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    #@d7
    .line 782
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    #@d9
    if-eqz v3, :cond_f

    #@db
    .line 783
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@dd
    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    #@e0
    .line 786
    :cond_f
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    #@e2
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    #@e5
    .line 787
    iget v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->countryCode_:I

    #@e7
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeInt(I)V

    #@ea
    .line 788
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    #@ec
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    #@ef
    .line 790
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    #@f1
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    #@f4
    .line 791
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    #@f6
    if-eqz v3, :cond_10

    #@f8
    .line 792
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    #@fa
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    #@fd
    .line 795
    :cond_10
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    #@ff
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    #@102
    .line 796
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    #@104
    if-eqz v3, :cond_11

    #@106
    .line 797
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    #@108
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    #@10b
    .line 800
    :cond_11
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    #@10d
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    #@110
    .line 801
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    #@112
    if-eqz v3, :cond_12

    #@114
    .line 802
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    #@116
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    #@119
    .line 805
    :cond_12
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    #@11b
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    #@11e
    .line 806
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    #@120
    if-eqz v3, :cond_13

    #@122
    .line 807
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    #@124
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    #@127
    .line 810
    :cond_13
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    #@129
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    #@12c
    .line 811
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    #@12e
    if-eqz v3, :cond_14

    #@130
    .line 812
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    #@132
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    #@135
    .line 815
    :cond_14
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    #@137
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    #@13a
    .line 817
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormatSize()I

    #@13d
    move-result v2

    #@13e
    .line 818
    .local v2, "numberFormatSize":I
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    #@141
    .line 819
    const/4 v0, 0x0

    #@142
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_15

    #@144
    .line 820
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    #@146
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@149
    move-result-object v3

    #@14a
    check-cast v3, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@14c
    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->writeExternal(Ljava/io/ObjectOutput;)V

    #@14f
    .line 819
    add-int/lit8 v0, v0, 0x1

    #@151
    goto :goto_0

    #@152
    .line 823
    :cond_15
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormatSize()I

    #@155
    move-result v1

    #@156
    .line 824
    .local v1, "intlNumberFormatSize":I
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    #@159
    .line 825
    const/4 v0, 0x0

    #@15a
    :goto_1
    if-ge v0, v1, :cond_16

    #@15c
    .line 826
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    #@15e
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@161
    move-result-object v3

    #@162
    check-cast v3, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@164
    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->writeExternal(Ljava/io/ObjectOutput;)V

    #@167
    .line 825
    add-int/lit8 v0, v0, 0x1

    #@169
    goto :goto_1

    #@16a
    .line 829
    :cond_16
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    #@16c
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    #@16f
    .line 831
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    #@171
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    #@174
    .line 832
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    #@176
    if-eqz v3, :cond_17

    #@178
    .line 833
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    #@17a
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    #@17d
    .line 836
    :cond_17
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingZeroPossible_:Z

    #@17f
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    #@182
    .line 838
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mobileNumberPortableRegion_:Z

    #@184
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    #@187
    .line 720
    return-void
.end method
