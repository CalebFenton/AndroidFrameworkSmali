.class public final Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;
.super Ljava/lang/Object;
.source "DomainSelectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/DomainSelectionService$SelectionAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAddress:Landroid/net/Uri;

.field private blacklist mCallId:Ljava/lang/String;

.field private blacklist mCause:I

.field private blacklist mEmergencyRegistrationResult:Landroid/telephony/EmergencyRegistrationResult;

.field private blacklist mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

.field private blacklist mIsEmergency:Z

.field private blacklist mIsExitedFromAirplaneMode:Z

.field private blacklist mIsTestEmergencyNumber:Z

.field private blacklist mIsVideoCall:Z

.field private final blacklist mSelectorType:I

.field private final blacklist mSlotIndex:I

.field private final blacklist mSubId:I


# direct methods
.method public constructor whitelist <init>(III)V
    .registers 4
    .param p1, "slotIndex"    # I
    .param p2, "subscriptionId"    # I
    .param p3, "selectorType"    # I

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    iput p1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mSlotIndex:I

    .line 426
    iput p2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mSubId:I

    .line 427
    iput p3, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mSelectorType:I

    .line 428
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/DomainSelectionService$SelectionAttributes;
    .registers 15

    .line 536
    new-instance v0, Landroid/telephony/DomainSelectionService$SelectionAttributes;

    iget v1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mSlotIndex:I

    iget v2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mSubId:I

    iget-object v3, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mCallId:Ljava/lang/String;

    iget-object v4, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mAddress:Landroid/net/Uri;

    iget v5, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mSelectorType:I

    iget-boolean v6, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mIsVideoCall:Z

    iget-boolean v7, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mIsEmergency:Z

    iget-boolean v8, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mIsTestEmergencyNumber:Z

    iget-boolean v9, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mIsExitedFromAirplaneMode:Z

    iget-object v10, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    iget v11, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mCause:I

    iget-object v12, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mEmergencyRegistrationResult:Landroid/telephony/EmergencyRegistrationResult;

    const/4 v13, 0x0

    invoke-direct/range {v0 .. v13}, Landroid/telephony/DomainSelectionService$SelectionAttributes;-><init>(IILjava/lang/String;Landroid/net/Uri;IZZZZLandroid/telephony/ims/ImsReasonInfo;ILandroid/telephony/EmergencyRegistrationResult;Landroid/telephony/DomainSelectionService-IA;)V

    return-object v0
.end method

.method public whitelist setAddress(Landroid/net/Uri;)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;
    .registers 2
    .param p1, "address"    # Landroid/net/Uri;

    .line 448
    iput-object p1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mAddress:Landroid/net/Uri;

    .line 449
    return-object p0
.end method

.method public whitelist setCallId(Ljava/lang/String;)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;
    .registers 2
    .param p1, "callId"    # Ljava/lang/String;

    .line 437
    iput-object p1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mCallId:Ljava/lang/String;

    .line 438
    return-object p0
.end method

.method public whitelist setCsDisconnectCause(I)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;
    .registers 2
    .param p1, "cause"    # I

    .line 515
    iput p1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mCause:I

    .line 516
    return-object p0
.end method

.method public whitelist setEmergency(Z)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;
    .registers 2
    .param p1, "isEmergency"    # Z

    .line 470
    iput-boolean p1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mIsEmergency:Z

    .line 471
    return-object p0
.end method

.method public whitelist setEmergencyRegistrationResult(Landroid/telephony/EmergencyRegistrationResult;)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;
    .registers 2
    .param p1, "regResult"    # Landroid/telephony/EmergencyRegistrationResult;

    .line 527
    iput-object p1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mEmergencyRegistrationResult:Landroid/telephony/EmergencyRegistrationResult;

    .line 528
    return-object p0
.end method

.method public whitelist setExitedFromAirplaneMode(Z)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;
    .registers 2
    .param p1, "exited"    # Z

    .line 493
    iput-boolean p1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mIsExitedFromAirplaneMode:Z

    .line 494
    return-object p0
.end method

.method public whitelist setPsDisconnectCause(Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;
    .registers 2
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 504
    iput-object p1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 505
    return-object p0
.end method

.method public whitelist setTestEmergencyNumber(Z)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;
    .registers 2
    .param p1, "isTest"    # Z

    .line 481
    iput-boolean p1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mIsTestEmergencyNumber:Z

    .line 482
    return-object p0
.end method

.method public whitelist setVideoCall(Z)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;
    .registers 2
    .param p1, "isVideo"    # Z

    .line 459
    iput-boolean p1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mIsVideoCall:Z

    .line 460
    return-object p0
.end method
