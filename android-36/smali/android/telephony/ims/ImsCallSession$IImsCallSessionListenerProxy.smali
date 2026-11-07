.class Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;
.super Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;
.source "ImsCallSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IImsCallSessionListenerProxy"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/ims/ImsCallSession;


# direct methods
.method public static synthetic blacklist $r8$lambda$3ExggI5_SKn1G3pUycHKcLsFrI8(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionRtpHeaderExtensionsReceived$40(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$5V1y1dVbQjFYsnt-DqWa0ZKYeBo(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;C)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionDtmfReceived$38(C)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$8vG630Srj0L41L6VRnGZoMKLdZ0(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionMultipartyStateChanged$30(Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$96PZfnGaalBmfFD75UFq67j7AL0(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionHoldReceived$8(Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$9uxtNB0BH4DJCSajl3m7yz9AlaA(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionMergeFailed$13(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$AqOKhHt_Nw1wr8eeSCwCsFvVi5Q(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionSuppServiceReceived$31(Landroid/telephony/ims/ImsSuppServiceNotification;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$BRht3XylxQhYHcmuvqBSVtYVSHE(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/CallQuality;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callQualityChanged$39(Landroid/telephony/CallQuality;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$C2xU7v11EUPRJcLpW68sZZYJwwo(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionRttMessageReceived$34(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$CooqUpCyCWkTqd86wfrPIOJrJhY(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionConferenceExtendReceived$19(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$DCFwYFl2Cz0Sp1uAeKGEJMDbLs8(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;)V
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionInviteParticipantsRequestDelivered$20()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$DX9GMoM5S6V22ghjjSPfnTky37k(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionRttModifyResponseReceived$33(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$HFU60zc7kAASqvWgwYW9lHaB2jQ(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionTerminated$5(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$J6kjeacAEJAsD0mwRI-T0yDavIU(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionInviteParticipantsRequestFailed$21(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$JA4K2JziZjigHWgnxbI0DRlQiuU(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;)V
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionRemoveParticipantsRequestDelivered$22()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Kz7of66WZJ0T1SiR8DhCSMIOl9s(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionUpdateReceived$16(Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$M4uYl5eHMjbGe-tfSmuf-YwvQzA(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionInitiatedFailed$4(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$P3SPhYEkTTazUt0Sdd7IBblAqL0(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionInitiated$2(Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Q9FcULSQGdQ6ISfpE6hjoTD6gtU(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionConferenceExtended$17(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$VGZepcjSERjJUDn1etS5FWpYfnM(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsConferenceState;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionConferenceStateUpdated$24(Landroid/telephony/ims/ImsConferenceState;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$XrR01Q3kp9Ez9gG1xibSC1A6Wc4(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionUpdateFailed$15(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ZCAUUfWFgl4_csfpH3Li_95URMY(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionRttModifyRequestReceived$32(Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_UnatmS4h6U29AAqUARH64OXGXM(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionResumeFailed$10(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$aBv0De2b7oUbYlQV-PdMr22bgtk(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionInitiating$0(Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ajzmcVcOthA72gGblmv53FtIrsQ(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionResumed$9(Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$bDgjVqSlNuYihFtHSYeLVh7TFeI(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionHandoverFailed$28(IILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$diCb-v6Ha_evjYSZTMAh7L55HAI(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionHandover$27(IILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$duJqJ763XhLjOz-t93IOYPDzySw(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionMayHandover$26(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fyo3EEwdpqPb8IGQ-VSD1kAQzZo(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionResumeReceived$11(Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gd0qhfB1rQAjgQXu4ZdwmKhw_to(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionMergeComplete$12(Lcom/android/ims/internal/IImsCallSession;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gtBKpMiVcUOyZmtbJ5N9fuKB8cM(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;)V
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionTransferred$36()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$kC_z_k5DHLAFj_yrbgQ0y6pXMkM(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionUssdMessageReceived$25(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oKyLIu-2xK9C8PUL9dYWTnltSbU(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionSendAnbrQuery$41(III)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$okDZaK4e5-CFVWxA1nDr9oiI2to(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionHeld$6(Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$p1UKorU0Le_v1lh5PLqJG6_2uyg(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionUpdated$14(Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qDh_UbJbVIekVLJGfca4tAnHyLM(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionProgressing$1(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$sC7wYukwX_R9PIXuy9KfBW7gcYU(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionConferenceExtendFailed$18(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$sW5L7YuBvk9iV--u1DWoepKjPQg(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionTransferFailed$37(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ssc7925hL0ysnIn1OgCDh_eORG4(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionTtyModeReceived$29(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vXpLLbC5gYJEArHDNvl21hKqWEc(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionHoldFailed$7(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wvODitsiq2oOeHVzEnvfEFS45VI(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionRttAudioIndicatorChanged$35(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$x8myNWtyq6IeoCEXnV2sXXS3jzc(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionRemoveParticipantsRequestFailed$23(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zCpfkbTJdqPXh0wluRbJrcizwkY(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionInitiatingFailed$3(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telephony/ims/ImsCallSession;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1268
    iput-object p1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;-><init>(Landroid/telephony/ims/ImsCallSession;)V

    return-void
.end method

.method private synthetic blacklist lambda$callQualityChanged$39(Landroid/telephony/CallQuality;)V
    .registers 3
    .param p1, "callQuality"    # Landroid/telephony/CallQuality;

    .line 1735
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1736
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callQualityChanged(Landroid/telephony/CallQuality;)V

    .line 1738
    :cond_11
    return-void
.end method

.method private synthetic blacklist lambda$callSessionConferenceExtendFailed$18(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1477
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1478
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1481
    :cond_13
    return-void
.end method

.method private synthetic blacklist lambda$callSessionConferenceExtendReceived$19(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 6
    .param p1, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1488
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 1489
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    new-instance v2, Landroid/telephony/ims/ImsCallSession;

    invoke-direct {v2, p1}, Landroid/telephony/ims/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    invoke-virtual {v0, v1, v2, p2}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionConferenceExtendReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1492
    :cond_18
    return-void
.end method

.method private synthetic blacklist lambda$callSessionConferenceExtended$17(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 6
    .param p1, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1467
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 1468
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    new-instance v2, Landroid/telephony/ims/ImsCallSession;

    invoke-direct {v2, p1}, Landroid/telephony/ims/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    invoke-virtual {v0, v1, v2, p2}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionConferenceExtended(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1471
    :cond_18
    return-void
.end method

.method private synthetic blacklist lambda$callSessionConferenceStateUpdated$24(Landroid/telephony/ims/ImsConferenceState;)V
    .registers 4
    .param p1, "state"    # Landroid/telephony/ims/ImsConferenceState;

    .line 1544
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1545
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsConferenceState;)V

    .line 1547
    :cond_13
    return-void
.end method

.method private synthetic blacklist lambda$callSessionDtmfReceived$38(C)V
    .registers 3
    .param p1, "dtmf"    # C

    .line 1723
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1724
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionDtmfReceived(C)V

    .line 1726
    :cond_11
    return-void
.end method

.method private synthetic blacklist lambda$callSessionHandover$27(IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .param p1, "srcNetworkType"    # I
    .param p2, "targetNetworkType"    # I
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1591
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1592
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionHandover(Landroid/telephony/ims/ImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1595
    :cond_13
    return-void
.end method

.method private synthetic blacklist lambda$callSessionHandoverFailed$28(IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .param p1, "srcNetworkType"    # I
    .param p2, "targetNetworkType"    # I
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1605
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1606
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionHandoverFailed(Landroid/telephony/ims/ImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1609
    :cond_13
    return-void
.end method

.method private synthetic blacklist lambda$callSessionHeld$6(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1332
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1333
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionHeld(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1335
    :cond_13
    return-void
.end method

.method private synthetic blacklist lambda$callSessionHoldFailed$7(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1341
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1342
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionHoldFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1344
    :cond_13
    return-void
.end method

.method private synthetic blacklist lambda$callSessionHoldReceived$8(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1350
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1351
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionHoldReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1353
    :cond_13
    return-void
.end method

.method private synthetic blacklist lambda$callSessionInitiated$2(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1293
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1294
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionStarted(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1296
    :cond_13
    return-void
.end method

.method private synthetic blacklist lambda$callSessionInitiatedFailed$4(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1311
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1312
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionStartFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1314
    :cond_13
    return-void
.end method

.method private synthetic blacklist lambda$callSessionInitiating$0(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1275
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1276
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionInitiating(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1278
    :cond_13
    return-void
.end method

.method private synthetic blacklist lambda$callSessionInitiatingFailed$3(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1302
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1303
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionStartFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1305
    :cond_13
    return-void
.end method

.method private synthetic blacklist lambda$callSessionInviteParticipantsRequestDelivered$20()V
    .registers 3

    .line 1502
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1503
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionInviteParticipantsRequestDelivered(Landroid/telephony/ims/ImsCallSession;)V

    .line 1506
    :cond_13
    return-void
.end method

.method private synthetic blacklist lambda$callSessionInviteParticipantsRequestFailed$21(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1512
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1513
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1516
    :cond_13
    return-void
.end method

.method private synthetic blacklist lambda$callSessionMayHandover$26(II)V
    .registers 5
    .param p1, "srcNetworkType"    # I
    .param p2, "targetNetworkType"    # I

    .line 1577
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1578
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionMayHandover(Landroid/telephony/ims/ImsCallSession;II)V

    .line 1581
    :cond_13
    return-void
.end method

.method private synthetic blacklist lambda$callSessionMergeComplete$12(Lcom/android/ims/internal/IImsCallSession;)V
    .registers 4
    .param p1, "newSession"    # Lcom/android/ims/internal/IImsCallSession;

    .line 1404
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 1405
    if-eqz p1, :cond_19

    .line 1407
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    new-instance v1, Landroid/telephony/ims/ImsCallSession;

    invoke-direct {v1, p1}, Landroid/telephony/ims/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionMergeComplete(Landroid/telephony/ims/ImsCallSession;)V

    goto :goto_23

    .line 1410
    :cond_19
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionMergeComplete(Landroid/telephony/ims/ImsCallSession;)V

    .line 1413
    :cond_23
    :goto_23
    return-void
.end method

.method private synthetic blacklist lambda$callSessionMergeFailed$13(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1424
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1425
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionMergeFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1427
    :cond_13
    return-void
.end method

.method private synthetic blacklist lambda$callSessionMultipartyStateChanged$30(Z)V
    .registers 4
    .param p1, "isMultiParty"    # Z

    .line 1632
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1633
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionMultipartyStateChanged(Landroid/telephony/ims/ImsCallSession;Z)V

    .line 1636
    :cond_13
    return-void
.end method

.method private synthetic blacklist lambda$callSessionProgressing$1(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1284
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1285
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionProgressing(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1287
    :cond_13
    return-void
.end method

.method private synthetic blacklist lambda$callSessionRemoveParticipantsRequestDelivered$22()V
    .registers 3

    .line 1522
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1523
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionRemoveParticipantsRequestDelivered(Landroid/telephony/ims/ImsCallSession;)V

    .line 1525
    :cond_13
    return-void
.end method

.method private synthetic blacklist lambda$callSessionRemoveParticipantsRequestFailed$23(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1531
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1532
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionRemoveParticipantsRequestFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1535
    :cond_13
    return-void
.end method

.method private synthetic blacklist lambda$callSessionResumeFailed$10(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1368
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1369
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionResumeFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1371
    :cond_13
    return-void
.end method

.method private synthetic blacklist lambda$callSessionResumeReceived$11(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1377
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1378
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionResumeReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1380
    :cond_13
    return-void
.end method

.method private synthetic blacklist lambda$callSessionResumed$9(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1359
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1360
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionResumed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1362
    :cond_13
    return-void
.end method

.method private synthetic blacklist lambda$callSessionRtpHeaderExtensionsReceived$40(Ljava/util/List;)V
    .registers 4
    .param p1, "extensions"    # Ljava/util/List;

    .line 1749
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1750
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionRtpHeaderExtensionsReceived(Ljava/util/Set;)V

    .line 1753
    :cond_16
    return-void
.end method

.method private synthetic blacklist lambda$callSessionRttAudioIndicatorChanged$35(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1692
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1693
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1695
    :cond_11
    return-void
.end method

.method private synthetic blacklist lambda$callSessionRttMessageReceived$34(Ljava/lang/String;)V
    .registers 3
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 1680
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1681
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionRttMessageReceived(Ljava/lang/String;)V

    .line 1683
    :cond_11
    return-void
.end method

.method private synthetic blacklist lambda$callSessionRttModifyRequestReceived$32(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "callProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1655
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1656
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1659
    :cond_13
    return-void
.end method

.method private synthetic blacklist lambda$callSessionRttModifyResponseReceived$33(I)V
    .registers 3
    .param p1, "status"    # I

    .line 1668
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1669
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionRttModifyResponseReceived(I)V

    .line 1671
    :cond_11
    return-void
.end method

.method private synthetic blacklist lambda$callSessionSendAnbrQuery$41(III)V
    .registers 5
    .param p1, "mediaType"    # I
    .param p2, "direction"    # I
    .param p3, "bitsPerSecond"    # I

    .line 1770
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1771
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionSendAnbrQuery(III)V

    .line 1773
    :cond_11
    return-void
.end method

.method private synthetic blacklist lambda$callSessionSuppServiceReceived$31(Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .registers 4
    .param p1, "suppServiceInfo"    # Landroid/telephony/ims/ImsSuppServiceNotification;

    .line 1642
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1643
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionSuppServiceReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsSuppServiceNotification;)V

    .line 1646
    :cond_13
    return-void
.end method

.method private synthetic blacklist lambda$callSessionTerminated$5(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1320
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1321
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionTerminated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1323
    :cond_13
    return-void
.end method

.method private synthetic blacklist lambda$callSessionTransferFailed$37(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1710
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1711
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionTransferFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1713
    :cond_13
    return-void
.end method

.method private synthetic blacklist lambda$callSessionTransferred$36()V
    .registers 3

    .line 1701
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1702
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionTransferred(Landroid/telephony/ims/ImsCallSession;)V

    .line 1704
    :cond_13
    return-void
.end method

.method private synthetic blacklist lambda$callSessionTtyModeReceived$29(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 1618
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1619
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionTtyModeReceived(Landroid/telephony/ims/ImsCallSession;I)V

    .line 1621
    :cond_13
    return-void
.end method

.method private synthetic blacklist lambda$callSessionUpdateFailed$15(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1445
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1446
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionUpdateFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1448
    :cond_13
    return-void
.end method

.method private synthetic blacklist lambda$callSessionUpdateReceived$16(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1454
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1455
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionUpdateReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1457
    :cond_13
    return-void
.end method

.method private synthetic blacklist lambda$callSessionUpdated$14(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1436
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1437
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionUpdated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1439
    :cond_13
    return-void
.end method

.method private synthetic blacklist lambda$callSessionUssdMessageReceived$25(ILjava/lang/String;)V
    .registers 5
    .param p1, "mode"    # I
    .param p2, "ussdMessage"    # Ljava/lang/String;

    .line 1556
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1557
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionUssdMessageReceived(Landroid/telephony/ims/ImsCallSession;ILjava/lang/String;)V

    .line 1560
    :cond_13
    return-void
.end method


# virtual methods
.method public blacklist callQualityChanged(Landroid/telephony/CallQuality;)V
    .registers 4
    .param p1, "callQuality"    # Landroid/telephony/CallQuality;

    .line 1734
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda13;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/CallQuality;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1739
    return-void
.end method

.method public greylist-max-o callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1476
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1482
    return-void
.end method

.method public greylist-max-o callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 5
    .param p1, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1487
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1493
    return-void
.end method

.method public greylist-max-o callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 5
    .param p1, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1466
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda41;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda41;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1472
    return-void
.end method

.method public greylist-max-o callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V
    .registers 4
    .param p1, "state"    # Landroid/telephony/ims/ImsConferenceState;

    .line 1543
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda37;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda37;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsConferenceState;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1548
    return-void
.end method

.method public blacklist callSessionDtmfReceived(C)V
    .registers 4
    .param p1, "dtmf"    # C

    .line 1722
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda24;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;C)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1727
    return-void
.end method

.method public greylist-max-o callSessionHandover(IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .param p1, "srcNetworkType"    # I
    .param p2, "targetNetworkType"    # I
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1590
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;IILandroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1596
    return-void
.end method

.method public greylist-max-o callSessionHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .param p1, "srcNetworkType"    # I
    .param p2, "targetNetworkType"    # I
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1604
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda15;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;IILandroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1610
    return-void
.end method

.method public greylist-max-o callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1331
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda40;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda40;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1336
    return-void
.end method

.method public greylist-max-o callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1340
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda18;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1345
    return-void
.end method

.method public greylist-max-o callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1349
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda31;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1354
    return-void
.end method

.method public greylist-max-o callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1292
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda26;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1297
    return-void
.end method

.method public greylist-max-o callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1310
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda14;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1315
    return-void
.end method

.method public blacklist callSessionInitiating(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1274
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda38;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda38;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1279
    return-void
.end method

.method public blacklist callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1301
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda12;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1306
    return-void
.end method

.method public greylist-max-o callSessionInviteParticipantsRequestDelivered()V
    .registers 3

    .line 1501
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda39;

    invoke-direct {v0, p0}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda39;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1507
    return-void
.end method

.method public greylist-max-o callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1511
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda29;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1517
    return-void
.end method

.method public greylist-max-o callSessionMayHandover(II)V
    .registers 5
    .param p1, "srcNetworkType"    # I
    .param p2, "targetNetworkType"    # I

    .line 1576
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda6;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;II)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1582
    return-void
.end method

.method public greylist-max-o callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V
    .registers 4
    .param p1, "newSession"    # Lcom/android/ims/internal/IImsCallSession;

    .line 1403
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1414
    return-void
.end method

.method public greylist-max-o callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1423
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda32;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1428
    return-void
.end method

.method public greylist-max-o callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 5
    .param p1, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1393
    const-string v0, "ImsCallSession"

    const-string v1, "callSessionMergeStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    return-void
.end method

.method public greylist-max-o callSessionMultipartyStateChanged(Z)V
    .registers 4
    .param p1, "isMultiParty"    # Z

    .line 1631
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda16;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Z)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1637
    return-void
.end method

.method public greylist-max-o callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1283
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda35;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda35;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1288
    return-void
.end method

.method public greylist-max-o callSessionRemoveParticipantsRequestDelivered()V
    .registers 3

    .line 1521
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda8;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1526
    return-void
.end method

.method public greylist-max-o callSessionRemoveParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1530
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda9;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1536
    return-void
.end method

.method public greylist-max-o callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1367
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda36;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda36;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1372
    return-void
.end method

.method public greylist-max-o callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1376
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda7;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1381
    return-void
.end method

.method public greylist-max-o callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1358
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda22;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1363
    return-void
.end method

.method public blacklist callSessionRtpHeaderExtensionsReceived(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .line 1748
    .local p1, "extensions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RtpHeaderExtension;>;"
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda25;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Ljava/util/List;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1754
    return-void
.end method

.method public blacklist callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1691
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda20;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1696
    return-void
.end method

.method public greylist-max-o callSessionRttMessageReceived(Ljava/lang/String;)V
    .registers 4
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 1679
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda11;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1684
    return-void
.end method

.method public greylist-max-o callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "callProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1654
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda34;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda34;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1660
    return-void
.end method

.method public greylist-max-o callSessionRttModifyResponseReceived(I)V
    .registers 4
    .param p1, "status"    # I

    .line 1667
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda27;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;I)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1672
    return-void
.end method

.method public blacklist callSessionSendAnbrQuery(III)V
    .registers 6
    .param p1, "mediaType"    # I
    .param p2, "direction"    # I
    .param p3, "bitsPerSecond"    # I

    .line 1768
    const-string v0, "ImsCallSession"

    const-string v1, "callSessionSendAnbrQuery in ImsCallSession"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda10;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;III)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1774
    return-void
.end method

.method public greylist-max-o callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .registers 4
    .param p1, "suppServiceInfo"    # Landroid/telephony/ims/ImsSuppServiceNotification;

    .line 1641
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda17;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsSuppServiceNotification;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1647
    return-void
.end method

.method public greylist-max-o callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1319
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda19;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1324
    return-void
.end method

.method public blacklist callSessionTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1709
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda23;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1714
    return-void
.end method

.method public blacklist callSessionTransferred()V
    .registers 3

    .line 1700
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda33;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1705
    return-void
.end method

.method public greylist-max-o callSessionTtyModeReceived(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 1617
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda30;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;I)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1622
    return-void
.end method

.method public greylist-max-o callSessionUpdateFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1444
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1449
    return-void
.end method

.method public greylist-max-o callSessionUpdateReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1453
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda21;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1458
    return-void
.end method

.method public greylist-max-o callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1435
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1440
    return-void
.end method

.method public greylist-max-o callSessionUssdMessageReceived(ILjava/lang/String;)V
    .registers 5
    .param p1, "mode"    # I
    .param p2, "ussdMessage"    # Ljava/lang/String;

    .line 1555
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda28;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;ILjava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1561
    return-void
.end method
