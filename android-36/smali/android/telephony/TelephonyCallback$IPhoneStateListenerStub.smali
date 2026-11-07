.class Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;
.super Lcom/android/internal/telephony/IPhoneStateListener$Stub;
.source "TelephonyCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IPhoneStateListenerStub"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/telephony/TelephonyCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$-iSO2-bofbIr8coIwUN5rlHeB68(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onUserMobileDataStateChanged$33(Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$0mjV2OEuDAZPmJClWHYaDz3F4Uw(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;III)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCallbackModeStopped$75(Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;III)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$6QaBuRUudDGl2Djksq9NbD9AsZY(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$MessageWaitingIndicatorListener;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onMessageWaitingIndicatorChanged$3(Landroid/telephony/TelephonyCallback$MessageWaitingIndicatorListener;Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$7Wd-E7U3NQcB6LmWI22KaHnVqwY(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCarrierRoamingNtnModeChanged$77(Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$9G0TNQ1qjOu9pKDaXqfHEec2NQg(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;Landroid/telephony/emergency/EmergencyNumber;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onOutgoingEmergencyCall$41(Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;Landroid/telephony/emergency/EmergencyNumber;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$BFTV4OJv21ap8DAIAyUT1DfBE0k(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;Landroid/telephony/emergency/EmergencyNumber;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onOutgoingEmergencySms$43(Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;Landroid/telephony/emergency/EmergencyNumber;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$BXCgkrZ76STkpFqUfVb0I7xYEek(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CallAttributesListener;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCallStatesChanged$49(Landroid/telephony/TelephonyCallback$CallAttributesListener;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$BqB5K976UefGVXP-oKE_MEtugvg(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$EmergencyNumberListListener;Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onEmergencyNumberListChanged$39(Landroid/telephony/TelephonyCallback$EmergencyNumberListListener;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$DgLKm0T0mI-G3UQ0tfzvUy9ztQE(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$PreciseCallStateListener;Landroid/telephony/PreciseCallState;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onPreciseCallStateChanged$21(Landroid/telephony/TelephonyCallback$PreciseCallStateListener;Landroid/telephony/PreciseCallState;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$HFZp1oQlhVEtJnPrLCAKneKsbZ8(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CellLocationListener;Landroid/telephony/CellLocation;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCellLocationChanged$7(Landroid/telephony/TelephonyCallback$CellLocationListener;Landroid/telephony/CellLocation;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$HOJE4BX3x_utI9BSf4H5rDUOzX4(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCarrierRoamingNtnEligibleStateChanged$79(Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$JDz6clJc1Nl8WD0tAjiWTAEZRdo(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$MediaQualityStatusChangedListener;Landroid/telephony/ims/MediaQualityStatus;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onMediaQualityStatusChanged$69(Landroid/telephony/TelephonyCallback$MediaQualityStatusChangedListener;Landroid/telephony/ims/MediaQualityStatus;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$L4DNMZFoGGRSS1EVNV1Wk_FIKac(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;ILjava/time/Duration;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCallbackModeRestarted$73(Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;ILjava/time/Duration;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$MCk3FIc5EE0oMkyh_ynCvnb_290(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$DisplayInfoListener;Landroid/telephony/TelephonyDisplayInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onDisplayInfoChanged$35(Landroid/telephony/TelephonyCallback$DisplayInfoListener;Landroid/telephony/TelephonyDisplayInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$OGgn9f83ZzU_nAXKYMOk5wHxl6Y(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CellularIdentifierDisclosedListener;Landroid/telephony/CellularIdentifierDisclosure;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCellularIdentifierDisclosedChanged$87(Landroid/telephony/TelephonyCallback$CellularIdentifierDisclosedListener;Landroid/telephony/CellularIdentifierDisclosure;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$OJMif-7meWkwpzkLx7f7tJ5niv0(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;[I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCarrierRoamingNtnAvailableServicesChanged$81(Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;[I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$OcLOx1SRPAe5wOLYcngwk4yTneY(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$PhoneCapabilityListener;Landroid/telephony/PhoneCapability;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onPhoneCapabilityChanged$45(Landroid/telephony/TelephonyCallback$PhoneCapabilityListener;Landroid/telephony/PhoneCapability;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RGSketXIP4iZFX3-OcJHJu91uEw(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$DataConnectionStateListener;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onDataConnectionStateChanged$11(Landroid/telephony/TelephonyCallback$DataConnectionStateListener;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Sy_1T7OR1uo2LGGS7bLkYmAgZNc(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;Landroid/telephony/PreciseDataConnectionState;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onPreciseDataConnectionStateChanged$25(Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;Landroid/telephony/PreciseDataConnectionState;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$USou5vEcj4EWQ0qlsUuf9M2s_Ns(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CarrierNetworkListener;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCarrierNetworkChange$37(Landroid/telephony/TelephonyCallback$CarrierNetworkListener;Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$W0STBotDwiSp5BOFRiVDqglimAo(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$SimultaneousCellularCallingSupportListener;[I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onSimultaneousCallingStateChanged$65(Landroid/telephony/TelephonyCallback$SimultaneousCellularCallingSupportListener;[I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WLBEG5EA3EdC1VUf3gtKnDG-8m4(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$SignalStrengthsListener;Landroid/telephony/SignalStrength;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onSignalStrengthsChanged$17(Landroid/telephony/TelephonyCallback$SignalStrengthsListener;Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Xm97qoTRJVK-GQK2QzHpiY6pNRc(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$DataActivationStateListener;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onDataActivationStateChanged$31(Landroid/telephony/TelephonyCallback$DataActivationStateListener;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_Cj3jhhaFnlsy_DDSw9HVH2SP8c(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$VoiceActivationStateListener;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onVoiceActivationStateChanged$29(Landroid/telephony/TelephonyCallback$VoiceActivationStateListener;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_vhu47kS9Qa4Tjl0s5rGoYik_xw(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$DataEnabledListener;ZI)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onDataEnabledChanged$61(Landroid/telephony/TelephonyCallback$DataEnabledListener;ZI)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$a21lwFErB8c0gq68l8cMISmyQqo(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CellInfoListener;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCellInfoChanged$19(Landroid/telephony/TelephonyCallback$CellInfoListener;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$eRfaUxFDsfSZImJVe_NaMLLTihM(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$DataConnectionStateListener;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onDataConnectionStateChanged$13(Landroid/telephony/TelephonyCallback$DataConnectionStateListener;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fuzf3r54FO5fIqFeIEpPC10xWSA(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$SecurityAlgorithmsListener;Landroid/telephony/SecurityAlgorithmUpdate;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onSecurityAlgorithmsChanged$85(Landroid/telephony/TelephonyCallback$SecurityAlgorithmsListener;Landroid/telephony/SecurityAlgorithmUpdate;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gvPU7yaTOuHzu5kZg4P_xLFYPjE(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;IJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onAllowedNetworkTypesChanged$63(Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;IJ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$i9o_T85bS0Jz9RT7f_Hr4zHZ_is(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onActiveDataSubIdChanged$51(Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ivydF_IXCOPfIqpfYTQKGRxXTPk(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CallDisconnectCauseListener;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCallDisconnectCauseChanged$23(Landroid/telephony/TelephonyCallback$CallDisconnectCauseListener;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jWvzp9DqXY-INdegrVTvfHq0cso(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CallForwardingIndicatorListener;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCallForwardingIndicatorChanged$5(Landroid/telephony/TelephonyCallback$CallForwardingIndicatorListener;Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jYFV3rfCD-wvE5Jmmrw7NDPnWRo(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$RegistrationFailedListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onRegistrationFailed$55(Landroid/telephony/TelephonyCallback$RegistrationFailedListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$kRmoLlxUdEqUTDqcnaqY7reBNIw(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$SrvccStateListener;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onSrvccStateChanged$27(Landroid/telephony/TelephonyCallback$SrvccStateListener;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$l9EJVzT0R6BL15SjGyVYp__TkBA(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;Landroid/telephony/satellite/NtnSignalStrength;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCarrierRoamingNtnSignalStrengthChanged$83(Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;Landroid/telephony/satellite/NtnSignalStrength;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$lykKDOCeiEZ-UF5239H8Y-Wjrqc(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$ImsCallDisconnectCauseListener;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onImsCallDisconnectCauseChanged$53(Landroid/telephony/TelephonyCallback$ImsCallDisconnectCauseListener;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$m_BBeWs1TmM3iDmj1-PROfgu3vM(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onPhysicalChannelConfigChanged$59(Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$thpxAcrRmUg6q0CmL4AEQWZkZ7M(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CallStateListener;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCallStateChanged$9(Landroid/telephony/TelephonyCallback$CallStateListener;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vU2E7ycVfi0HJ6fbhhiOFdDwl2U(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$RadioPowerStateListener;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onRadioPowerStateChanged$47(Landroid/telephony/TelephonyCallback$RadioPowerStateListener;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wFuLqi-vuAobrLjGLBsMry1wg9U(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$ServiceStateListener;Landroid/telephony/ServiceState;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onServiceStateChanged$1(Landroid/telephony/TelephonyCallback$ServiceStateListener;Landroid/telephony/ServiceState;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wUpn60kylb84dpeRLREJTSpP7R8(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;ILjava/time/Duration;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCallbackModeStarted$71(Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;ILjava/time/Duration;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$x-OWJ9gpiSJ1K-wvp2zZi-2h8OE(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$DataActivityListener;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onDataActivity$15(Landroid/telephony/TelephonyCallback$DataActivityListener;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$yrMl2yhbt09gKJ1M75twMhH6lwA(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$BarringInfoListener;Landroid/telephony/BarringInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onBarringInfoChanged$57(Landroid/telephony/TelephonyCallback$BarringInfoListener;Landroid/telephony/BarringInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zItixx3sneUNeZ4KbT1UR2FoqHA(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$LinkCapacityEstimateChangedListener;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onLinkCapacityEstimateChanged$67(Landroid/telephony/TelephonyCallback$LinkCapacityEstimateChangedListener;Ljava/util/List;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/telephony/TelephonyCallback;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "telephonyCallback"    # Landroid/telephony/TelephonyCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 1919
    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;-><init>()V

    .line 1920
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 1921
    iput-object p2, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1922
    return-void
.end method

.method static synthetic blacklist lambda$onActiveDataSubIdChanged$50(Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;I)V
    .registers 2
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;
    .param p1, "subId"    # I

    .line 2185
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;->onActiveDataSubscriptionIdChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onActiveDataSubIdChanged$51(Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;I)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2185
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda72;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda72;-><init>(Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onAllowedNetworkTypesChanged$62(Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;IJ)V
    .registers 4
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;
    .param p1, "reason"    # I
    .param p2, "allowedNetworkType"    # J

    .line 2247
    invoke-interface {p0, p1, p2, p3}, Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;->onAllowedNetworkTypesChanged(IJ)V

    return-void
.end method

.method private synthetic blacklist lambda$onAllowedNetworkTypesChanged$63(Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;IJ)V
    .registers 7
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;
    .param p2, "reason"    # I
    .param p3, "allowedNetworkType"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2246
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda63;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda63;-><init>(Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;IJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onBarringInfoChanged$56(Landroid/telephony/TelephonyCallback$BarringInfoListener;Landroid/telephony/BarringInfo;)V
    .registers 2
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$BarringInfoListener;
    .param p1, "barringInfo"    # Landroid/telephony/BarringInfo;

    .line 2216
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$BarringInfoListener;->onBarringInfoChanged(Landroid/telephony/BarringInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$onBarringInfoChanged$57(Landroid/telephony/TelephonyCallback$BarringInfoListener;Landroid/telephony/BarringInfo;)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$BarringInfoListener;
    .param p2, "barringInfo"    # Landroid/telephony/BarringInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2216
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda33;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda33;-><init>(Landroid/telephony/TelephonyCallback$BarringInfoListener;Landroid/telephony/BarringInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCallDisconnectCauseChanged$22(Landroid/telephony/TelephonyCallback$CallDisconnectCauseListener;II)V
    .registers 3
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$CallDisconnectCauseListener;
    .param p1, "disconnectCause"    # I
    .param p2, "preciseDisconnectCause"    # I

    .line 2038
    invoke-interface {p0, p1, p2}, Landroid/telephony/TelephonyCallback$CallDisconnectCauseListener;->onCallDisconnectCauseChanged(II)V

    return-void
.end method

.method private synthetic blacklist lambda$onCallDisconnectCauseChanged$23(Landroid/telephony/TelephonyCallback$CallDisconnectCauseListener;II)V
    .registers 6
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$CallDisconnectCauseListener;
    .param p2, "disconnectCause"    # I
    .param p3, "preciseDisconnectCause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2038
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda45;

    invoke-direct {v1, p1, p2, p3}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda45;-><init>(Landroid/telephony/TelephonyCallback$CallDisconnectCauseListener;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCallForwardingIndicatorChanged$4(Landroid/telephony/TelephonyCallback$CallForwardingIndicatorListener;Z)V
    .registers 2
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$CallForwardingIndicatorListener;
    .param p1, "cfi"    # Z

    .line 1951
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$CallForwardingIndicatorListener;->onCallForwardingIndicatorChanged(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onCallForwardingIndicatorChanged$5(Landroid/telephony/TelephonyCallback$CallForwardingIndicatorListener;Z)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$CallForwardingIndicatorListener;
    .param p2, "cfi"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1951
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda8;-><init>(Landroid/telephony/TelephonyCallback$CallForwardingIndicatorListener;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCallStateChanged$8(Landroid/telephony/TelephonyCallback$CallStateListener;I)V
    .registers 2
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$CallStateListener;
    .param p1, "state"    # I

    .line 1976
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$CallStateListener;->onCallStateChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onCallStateChanged$9(Landroid/telephony/TelephonyCallback$CallStateListener;I)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$CallStateListener;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1976
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda57;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda57;-><init>(Landroid/telephony/TelephonyCallback$CallStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCallStatesChanged$48(Landroid/telephony/TelephonyCallback$CallAttributesListener;Ljava/util/List;)V
    .registers 2
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$CallAttributesListener;
    .param p1, "callStateList"    # Ljava/util/List;

    .line 2176
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$CallAttributesListener;->onCallStatesChanged(Ljava/util/List;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCallStatesChanged$49(Landroid/telephony/TelephonyCallback$CallAttributesListener;Ljava/util/List;)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$CallAttributesListener;
    .param p2, "callStateList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2176
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda76;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda76;-><init>(Landroid/telephony/TelephonyCallback$CallAttributesListener;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCallbackModeRestarted$72(Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;ILjava/time/Duration;I)V
    .registers 4
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;
    .param p1, "type"    # I
    .param p2, "timerDuration"    # Ljava/time/Duration;
    .param p3, "subscriptionId"    # I

    .line 2312
    invoke-interface {p0, p1, p2, p3}, Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;->onCallbackModeRestarted(ILjava/time/Duration;I)V

    return-void
.end method

.method private synthetic blacklist lambda$onCallbackModeRestarted$73(Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;ILjava/time/Duration;I)V
    .registers 7
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;
    .param p2, "type"    # I
    .param p3, "timerDuration"    # Ljava/time/Duration;
    .param p4, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2312
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda26;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda26;-><init>(Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;ILjava/time/Duration;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCallbackModeStarted$70(Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;ILjava/time/Duration;I)V
    .registers 4
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;
    .param p1, "type"    # I
    .param p2, "timerDuration"    # Ljava/time/Duration;
    .param p3, "subscriptionId"    # I

    .line 2296
    invoke-interface {p0, p1, p2, p3}, Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;->onCallbackModeStarted(ILjava/time/Duration;I)V

    return-void
.end method

.method private synthetic blacklist lambda$onCallbackModeStarted$71(Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;ILjava/time/Duration;I)V
    .registers 7
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;
    .param p2, "type"    # I
    .param p3, "timerDuration"    # Ljava/time/Duration;
    .param p4, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2296
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda71;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda71;-><init>(Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;ILjava/time/Duration;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCallbackModeStopped$74(Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;III)V
    .registers 4
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;
    .param p1, "type"    # I
    .param p2, "reason"    # I
    .param p3, "subscriptionId"    # I

    .line 2328
    invoke-interface {p0, p1, p2, p3}, Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;->onCallbackModeStopped(III)V

    return-void
.end method

.method private synthetic blacklist lambda$onCallbackModeStopped$75(Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;III)V
    .registers 7
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;
    .param p2, "type"    # I
    .param p3, "reason"    # I
    .param p4, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2328
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda39;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda39;-><init>(Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;III)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCarrierNetworkChange$36(Landroid/telephony/TelephonyCallback$CarrierNetworkListener;Z)V
    .registers 2
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$CarrierNetworkListener;
    .param p1, "active"    # Z

    .line 2115
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$CarrierNetworkListener;->onCarrierNetworkChange(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onCarrierNetworkChange$37(Landroid/telephony/TelephonyCallback$CarrierNetworkListener;Z)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$CarrierNetworkListener;
    .param p2, "active"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2115
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/TelephonyCallback$CarrierNetworkListener;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCarrierRoamingNtnAvailableServicesChanged$80(Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;[I)V
    .registers 2
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;
    .param p1, "availableServices"    # [I

    .line 2361
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;->onCarrierRoamingNtnAvailableServicesChanged([I)V

    return-void
.end method

.method private synthetic blacklist lambda$onCarrierRoamingNtnAvailableServicesChanged$81(Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;[I)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;
    .param p2, "availableServices"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2360
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda61;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda61;-><init>(Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;[I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCarrierRoamingNtnEligibleStateChanged$78(Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;Z)V
    .registers 2
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;
    .param p1, "eligible"    # Z

    .line 2349
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;->onCarrierRoamingNtnEligibleStateChanged(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onCarrierRoamingNtnEligibleStateChanged$79(Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;Z)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;
    .param p2, "eligible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2348
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda9;-><init>(Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCarrierRoamingNtnModeChanged$76(Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;Z)V
    .registers 2
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;
    .param p1, "active"    # Z

    .line 2338
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;->onCarrierRoamingNtnModeChanged(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onCarrierRoamingNtnModeChanged$77(Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;Z)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;
    .param p2, "active"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2338
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda54;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda54;-><init>(Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCarrierRoamingNtnSignalStrengthChanged$82(Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;Landroid/telephony/satellite/NtnSignalStrength;)V
    .registers 2
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;
    .param p1, "ntnSignalStrength"    # Landroid/telephony/satellite/NtnSignalStrength;

    .line 2373
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;->onCarrierRoamingNtnSignalStrengthChanged(Landroid/telephony/satellite/NtnSignalStrength;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCarrierRoamingNtnSignalStrengthChanged$83(Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;Landroid/telephony/satellite/NtnSignalStrength;)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;
    .param p2, "ntnSignalStrength"    # Landroid/telephony/satellite/NtnSignalStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2372
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda23;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda23;-><init>(Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;Landroid/telephony/satellite/NtnSignalStrength;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCellInfoChanged$18(Landroid/telephony/TelephonyCallback$CellInfoListener;Ljava/util/List;)V
    .registers 2
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$CellInfoListener;
    .param p1, "cellInfo"    # Ljava/util/List;

    .line 2020
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$CellInfoListener;->onCellInfoChanged(Ljava/util/List;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCellInfoChanged$19(Landroid/telephony/TelephonyCallback$CellInfoListener;Ljava/util/List;)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$CellInfoListener;
    .param p2, "cellInfo"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2020
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/TelephonyCallback$CellInfoListener;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCellLocationChanged$6(Landroid/telephony/TelephonyCallback$CellLocationListener;Landroid/telephony/CellLocation;)V
    .registers 2
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$CellLocationListener;
    .param p1, "location"    # Landroid/telephony/CellLocation;

    .line 1963
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$CellLocationListener;->onCellLocationChanged(Landroid/telephony/CellLocation;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCellLocationChanged$7(Landroid/telephony/TelephonyCallback$CellLocationListener;Landroid/telephony/CellLocation;)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$CellLocationListener;
    .param p2, "location"    # Landroid/telephony/CellLocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1963
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda17;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda17;-><init>(Landroid/telephony/TelephonyCallback$CellLocationListener;Landroid/telephony/CellLocation;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCellularIdentifierDisclosedChanged$86(Landroid/telephony/TelephonyCallback$CellularIdentifierDisclosedListener;Landroid/telephony/CellularIdentifierDisclosure;)V
    .registers 2
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$CellularIdentifierDisclosedListener;
    .param p1, "disclosure"    # Landroid/telephony/CellularIdentifierDisclosure;

    .line 2396
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$CellularIdentifierDisclosedListener;->onCellularIdentifierDisclosedChanged(Landroid/telephony/CellularIdentifierDisclosure;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCellularIdentifierDisclosedChanged$87(Landroid/telephony/TelephonyCallback$CellularIdentifierDisclosedListener;Landroid/telephony/CellularIdentifierDisclosure;)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$CellularIdentifierDisclosedListener;
    .param p2, "disclosure"    # Landroid/telephony/CellularIdentifierDisclosure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2395
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda25;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda25;-><init>(Landroid/telephony/TelephonyCallback$CellularIdentifierDisclosedListener;Landroid/telephony/CellularIdentifierDisclosure;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDataActivationStateChanged$30(Landroid/telephony/TelephonyCallback$DataActivationStateListener;I)V
    .registers 2
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$DataActivationStateListener;
    .param p1, "activationState"    # I

    .line 2083
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$DataActivationStateListener;->onDataActivationStateChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onDataActivationStateChanged$31(Landroid/telephony/TelephonyCallback$DataActivationStateListener;I)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$DataActivationStateListener;
    .param p2, "activationState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2082
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda86;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda86;-><init>(Landroid/telephony/TelephonyCallback$DataActivationStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDataActivity$14(Landroid/telephony/TelephonyCallback$DataActivityListener;I)V
    .registers 2
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$DataActivityListener;
    .param p1, "direction"    # I

    .line 2002
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$DataActivityListener;->onDataActivity(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onDataActivity$15(Landroid/telephony/TelephonyCallback$DataActivityListener;I)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$DataActivityListener;
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2002
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda13;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda13;-><init>(Landroid/telephony/TelephonyCallback$DataActivityListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDataConnectionStateChanged$10(Landroid/telephony/TelephonyCallback$DataConnectionStateListener;I)V
    .registers 3
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$DataConnectionStateListener;
    .param p1, "networkType"    # I

    .line 1988
    const/4 v0, 0x2

    invoke-interface {p0, v0, p1}, Landroid/telephony/TelephonyCallback$DataConnectionStateListener;->onDataConnectionStateChanged(II)V

    return-void
.end method

.method private synthetic blacklist lambda$onDataConnectionStateChanged$11(Landroid/telephony/TelephonyCallback$DataConnectionStateListener;I)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$DataConnectionStateListener;
    .param p2, "networkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1987
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda10;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda10;-><init>(Landroid/telephony/TelephonyCallback$DataConnectionStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDataConnectionStateChanged$12(Landroid/telephony/TelephonyCallback$DataConnectionStateListener;II)V
    .registers 3
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$DataConnectionStateListener;
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .line 1993
    invoke-interface {p0, p1, p2}, Landroid/telephony/TelephonyCallback$DataConnectionStateListener;->onDataConnectionStateChanged(II)V

    return-void
.end method

.method private synthetic blacklist lambda$onDataConnectionStateChanged$13(Landroid/telephony/TelephonyCallback$DataConnectionStateListener;II)V
    .registers 6
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$DataConnectionStateListener;
    .param p2, "state"    # I
    .param p3, "networkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1992
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2, p3}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/TelephonyCallback$DataConnectionStateListener;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDataEnabledChanged$60(Landroid/telephony/TelephonyCallback$DataEnabledListener;ZI)V
    .registers 3
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$DataEnabledListener;
    .param p1, "enabled"    # Z
    .param p2, "reason"    # I

    .line 2236
    invoke-interface {p0, p1, p2}, Landroid/telephony/TelephonyCallback$DataEnabledListener;->onDataEnabledChanged(ZI)V

    return-void
.end method

.method private synthetic blacklist lambda$onDataEnabledChanged$61(Landroid/telephony/TelephonyCallback$DataEnabledListener;ZI)V
    .registers 6
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$DataEnabledListener;
    .param p2, "enabled"    # Z
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2236
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda20;

    invoke-direct {v1, p1, p2, p3}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda20;-><init>(Landroid/telephony/TelephonyCallback$DataEnabledListener;ZI)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDisplayInfoChanged$34(Landroid/telephony/TelephonyCallback$DisplayInfoListener;Landroid/telephony/TelephonyDisplayInfo;)V
    .registers 2
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$DisplayInfoListener;
    .param p1, "telephonyDisplayInfo"    # Landroid/telephony/TelephonyDisplayInfo;

    .line 2102
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$DisplayInfoListener;->onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDisplayInfoChanged$35(Landroid/telephony/TelephonyCallback$DisplayInfoListener;Landroid/telephony/TelephonyDisplayInfo;)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$DisplayInfoListener;
    .param p2, "telephonyDisplayInfo"    # Landroid/telephony/TelephonyDisplayInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2101
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda38;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda38;-><init>(Landroid/telephony/TelephonyCallback$DisplayInfoListener;Landroid/telephony/TelephonyDisplayInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onEmergencyNumberListChanged$38(Landroid/telephony/TelephonyCallback$EmergencyNumberListListener;Ljava/util/Map;)V
    .registers 2
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$EmergencyNumberListListener;
    .param p1, "emergencyNumberList"    # Ljava/util/Map;

    .line 2125
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$EmergencyNumberListListener;->onEmergencyNumberListChanged(Ljava/util/Map;)V

    return-void
.end method

.method private synthetic blacklist lambda$onEmergencyNumberListChanged$39(Landroid/telephony/TelephonyCallback$EmergencyNumberListListener;Ljava/util/Map;)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$EmergencyNumberListListener;
    .param p2, "emergencyNumberList"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2124
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda51;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda51;-><init>(Landroid/telephony/TelephonyCallback$EmergencyNumberListListener;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onImsCallDisconnectCauseChanged$52(Landroid/telephony/TelephonyCallback$ImsCallDisconnectCauseListener;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 2
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$ImsCallDisconnectCauseListener;
    .param p1, "disconnectCause"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2196
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$ImsCallDisconnectCauseListener;->onImsCallDisconnectCauseChanged(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$onImsCallDisconnectCauseChanged$53(Landroid/telephony/TelephonyCallback$ImsCallDisconnectCauseListener;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$ImsCallDisconnectCauseListener;
    .param p2, "disconnectCause"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2195
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda75;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda75;-><init>(Landroid/telephony/TelephonyCallback$ImsCallDisconnectCauseListener;Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onLinkCapacityEstimateChanged$66(Landroid/telephony/TelephonyCallback$LinkCapacityEstimateChangedListener;Ljava/util/List;)V
    .registers 2
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$LinkCapacityEstimateChangedListener;
    .param p1, "linkCapacityEstimateList"    # Ljava/util/List;

    .line 2269
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$LinkCapacityEstimateChangedListener;->onLinkCapacityEstimateChanged(Ljava/util/List;)V

    return-void
.end method

.method private synthetic blacklist lambda$onLinkCapacityEstimateChanged$67(Landroid/telephony/TelephonyCallback$LinkCapacityEstimateChangedListener;Ljava/util/List;)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$LinkCapacityEstimateChangedListener;
    .param p2, "linkCapacityEstimateList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2269
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda47;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda47;-><init>(Landroid/telephony/TelephonyCallback$LinkCapacityEstimateChangedListener;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onMediaQualityStatusChanged$68(Landroid/telephony/TelephonyCallback$MediaQualityStatusChangedListener;Landroid/telephony/ims/MediaQualityStatus;)V
    .registers 2
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$MediaQualityStatusChangedListener;
    .param p1, "mediaQualityStatus"    # Landroid/telephony/ims/MediaQualityStatus;

    .line 2280
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$MediaQualityStatusChangedListener;->onMediaQualityStatusChanged(Landroid/telephony/ims/MediaQualityStatus;)V

    return-void
.end method

.method private synthetic blacklist lambda$onMediaQualityStatusChanged$69(Landroid/telephony/TelephonyCallback$MediaQualityStatusChangedListener;Landroid/telephony/ims/MediaQualityStatus;)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$MediaQualityStatusChangedListener;
    .param p2, "mediaQualityStatus"    # Landroid/telephony/ims/MediaQualityStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2280
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda82;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda82;-><init>(Landroid/telephony/TelephonyCallback$MediaQualityStatusChangedListener;Landroid/telephony/ims/MediaQualityStatus;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onMessageWaitingIndicatorChanged$2(Landroid/telephony/TelephonyCallback$MessageWaitingIndicatorListener;Z)V
    .registers 2
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$MessageWaitingIndicatorListener;
    .param p1, "mwi"    # Z

    .line 1942
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$MessageWaitingIndicatorListener;->onMessageWaitingIndicatorChanged(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onMessageWaitingIndicatorChanged$3(Landroid/telephony/TelephonyCallback$MessageWaitingIndicatorListener;Z)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$MessageWaitingIndicatorListener;
    .param p2, "mwi"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1942
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda12;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda12;-><init>(Landroid/telephony/TelephonyCallback$MessageWaitingIndicatorListener;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onOutgoingEmergencyCall$40(Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;Landroid/telephony/emergency/EmergencyNumber;I)V
    .registers 3
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;
    .param p1, "placedEmergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p2, "subscriptionId"    # I

    .line 2136
    invoke-interface {p0, p1, p2}, Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;->onOutgoingEmergencyCall(Landroid/telephony/emergency/EmergencyNumber;I)V

    return-void
.end method

.method private synthetic blacklist lambda$onOutgoingEmergencyCall$41(Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;Landroid/telephony/emergency/EmergencyNumber;I)V
    .registers 6
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;
    .param p2, "placedEmergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p3, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2135
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda68;

    invoke-direct {v1, p1, p2, p3}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda68;-><init>(Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;Landroid/telephony/emergency/EmergencyNumber;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onOutgoingEmergencySms$42(Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;Landroid/telephony/emergency/EmergencyNumber;I)V
    .registers 3
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;
    .param p1, "sentEmergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p2, "subscriptionId"    # I

    .line 2148
    invoke-interface {p0, p1, p2}, Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;->onOutgoingEmergencySms(Landroid/telephony/emergency/EmergencyNumber;I)V

    return-void
.end method

.method private synthetic blacklist lambda$onOutgoingEmergencySms$43(Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;Landroid/telephony/emergency/EmergencyNumber;I)V
    .registers 6
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;
    .param p2, "sentEmergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p3, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2147
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda31;

    invoke-direct {v1, p1, p2, p3}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda31;-><init>(Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;Landroid/telephony/emergency/EmergencyNumber;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onPhoneCapabilityChanged$44(Landroid/telephony/TelephonyCallback$PhoneCapabilityListener;Landroid/telephony/PhoneCapability;)V
    .registers 2
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$PhoneCapabilityListener;
    .param p1, "capability"    # Landroid/telephony/PhoneCapability;

    .line 2158
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$PhoneCapabilityListener;->onPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V

    return-void
.end method

.method private synthetic blacklist lambda$onPhoneCapabilityChanged$45(Landroid/telephony/TelephonyCallback$PhoneCapabilityListener;Landroid/telephony/PhoneCapability;)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$PhoneCapabilityListener;
    .param p2, "capability"    # Landroid/telephony/PhoneCapability;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2158
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda74;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda74;-><init>(Landroid/telephony/TelephonyCallback$PhoneCapabilityListener;Landroid/telephony/PhoneCapability;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onPhysicalChannelConfigChanged$58(Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;Ljava/util/List;)V
    .registers 2
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;
    .param p1, "configs"    # Ljava/util/List;

    .line 2225
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;->onPhysicalChannelConfigChanged(Ljava/util/List;)V

    return-void
.end method

.method private synthetic blacklist lambda$onPhysicalChannelConfigChanged$59(Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;Ljava/util/List;)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;
    .param p2, "configs"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2225
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda27;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda27;-><init>(Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onPreciseCallStateChanged$20(Landroid/telephony/TelephonyCallback$PreciseCallStateListener;Landroid/telephony/PreciseCallState;)V
    .registers 2
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$PreciseCallStateListener;
    .param p1, "callState"    # Landroid/telephony/PreciseCallState;

    .line 2029
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$PreciseCallStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V

    return-void
.end method

.method private synthetic blacklist lambda$onPreciseCallStateChanged$21(Landroid/telephony/TelephonyCallback$PreciseCallStateListener;Landroid/telephony/PreciseCallState;)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$PreciseCallStateListener;
    .param p2, "callState"    # Landroid/telephony/PreciseCallState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2029
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda64;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda64;-><init>(Landroid/telephony/TelephonyCallback$PreciseCallStateListener;Landroid/telephony/PreciseCallState;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onPreciseDataConnectionStateChanged$24(Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;Landroid/telephony/PreciseDataConnectionState;)V
    .registers 2
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;
    .param p1, "dataConnectionState"    # Landroid/telephony/PreciseDataConnectionState;

    .line 2050
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V

    return-void
.end method

.method private synthetic blacklist lambda$onPreciseDataConnectionStateChanged$25(Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;Landroid/telephony/PreciseDataConnectionState;)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;
    .param p2, "dataConnectionState"    # Landroid/telephony/PreciseDataConnectionState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2049
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda22;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda22;-><init>(Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;Landroid/telephony/PreciseDataConnectionState;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onRadioPowerStateChanged$46(Landroid/telephony/TelephonyCallback$RadioPowerStateListener;I)V
    .registers 2
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$RadioPowerStateListener;
    .param p1, "state"    # I

    .line 2167
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$RadioPowerStateListener;->onRadioPowerStateChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onRadioPowerStateChanged$47(Landroid/telephony/TelephonyCallback$RadioPowerStateListener;I)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$RadioPowerStateListener;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2167
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/TelephonyCallback$RadioPowerStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onRegistrationFailed$54(Landroid/telephony/TelephonyCallback$RegistrationFailedListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .registers 6
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$RegistrationFailedListener;
    .param p1, "cellIdentity"    # Landroid/telephony/CellIdentity;
    .param p2, "chosenPlmn"    # Ljava/lang/String;
    .param p3, "domain"    # I
    .param p4, "causeCode"    # I
    .param p5, "additionalCauseCode"    # I

    .line 2206
    invoke-interface/range {p0 .. p5}, Landroid/telephony/TelephonyCallback$RegistrationFailedListener;->onRegistrationFailed(Landroid/telephony/CellIdentity;Ljava/lang/String;III)V

    return-void
.end method

.method private synthetic blacklist lambda$onRegistrationFailed$55(Landroid/telephony/TelephonyCallback$RegistrationFailedListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .registers 15
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$RegistrationFailedListener;
    .param p2, "cellIdentity"    # Landroid/telephony/CellIdentity;
    .param p3, "chosenPlmn"    # Ljava/lang/String;
    .param p4, "domain"    # I
    .param p5, "causeCode"    # I
    .param p6, "additionalCauseCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2206
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda24;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .end local p1    # "listener":Landroid/telephony/TelephonyCallback$RegistrationFailedListener;
    .end local p2    # "cellIdentity":Landroid/telephony/CellIdentity;
    .end local p3    # "chosenPlmn":Ljava/lang/String;
    .end local p4    # "domain":I
    .end local p5    # "causeCode":I
    .end local p6    # "additionalCauseCode":I
    .local v2, "listener":Landroid/telephony/TelephonyCallback$RegistrationFailedListener;
    .local v3, "cellIdentity":Landroid/telephony/CellIdentity;
    .local v4, "chosenPlmn":Ljava/lang/String;
    .local v5, "domain":I
    .local v6, "causeCode":I
    .local v7, "additionalCauseCode":I
    invoke-direct/range {v1 .. v7}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda24;-><init>(Landroid/telephony/TelephonyCallback$RegistrationFailedListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSecurityAlgorithmsChanged$84(Landroid/telephony/TelephonyCallback$SecurityAlgorithmsListener;Landroid/telephony/SecurityAlgorithmUpdate;)V
    .registers 2
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$SecurityAlgorithmsListener;
    .param p1, "update"    # Landroid/telephony/SecurityAlgorithmUpdate;

    .line 2385
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$SecurityAlgorithmsListener;->onSecurityAlgorithmsChanged(Landroid/telephony/SecurityAlgorithmUpdate;)V

    return-void
.end method

.method private synthetic blacklist lambda$onSecurityAlgorithmsChanged$85(Landroid/telephony/TelephonyCallback$SecurityAlgorithmsListener;Landroid/telephony/SecurityAlgorithmUpdate;)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$SecurityAlgorithmsListener;
    .param p2, "update"    # Landroid/telephony/SecurityAlgorithmUpdate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2384
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda7;-><init>(Landroid/telephony/TelephonyCallback$SecurityAlgorithmsListener;Landroid/telephony/SecurityAlgorithmUpdate;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onServiceStateChanged$0(Landroid/telephony/TelephonyCallback$ServiceStateListener;Landroid/telephony/ServiceState;)V
    .registers 2
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$ServiceStateListener;
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 1929
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$ServiceStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method private synthetic blacklist lambda$onServiceStateChanged$1(Landroid/telephony/TelephonyCallback$ServiceStateListener;Landroid/telephony/ServiceState;)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$ServiceStateListener;
    .param p2, "serviceState"    # Landroid/telephony/ServiceState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1929
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda79;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda79;-><init>(Landroid/telephony/TelephonyCallback$ServiceStateListener;Landroid/telephony/ServiceState;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSignalStrengthsChanged$16(Landroid/telephony/TelephonyCallback$SignalStrengthsListener;Landroid/telephony/SignalStrength;)V
    .registers 2
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$SignalStrengthsListener;
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 2011
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$SignalStrengthsListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method private synthetic blacklist lambda$onSignalStrengthsChanged$17(Landroid/telephony/TelephonyCallback$SignalStrengthsListener;Landroid/telephony/SignalStrength;)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$SignalStrengthsListener;
    .param p2, "signalStrength"    # Landroid/telephony/SignalStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2011
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda52;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda52;-><init>(Landroid/telephony/TelephonyCallback$SignalStrengthsListener;Landroid/telephony/SignalStrength;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSimultaneousCallingStateChanged$64(Landroid/telephony/TelephonyCallback$SimultaneousCellularCallingSupportListener;[I)V
    .registers 4
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$SimultaneousCellularCallingSupportListener;
    .param p1, "subIds"    # [I

    .line 2258
    nop

    .line 2259
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 2258
    invoke-interface {p0, v0}, Landroid/telephony/TelephonyCallback$SimultaneousCellularCallingSupportListener;->onSimultaneousCellularCallingSubscriptionsChanged(Ljava/util/Set;)V

    return-void
.end method

.method private synthetic blacklist lambda$onSimultaneousCallingStateChanged$65(Landroid/telephony/TelephonyCallback$SimultaneousCellularCallingSupportListener;[I)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$SimultaneousCellularCallingSupportListener;
    .param p2, "subIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2257
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda34;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda34;-><init>(Landroid/telephony/TelephonyCallback$SimultaneousCellularCallingSupportListener;[I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSrvccStateChanged$26(Landroid/telephony/TelephonyCallback$SrvccStateListener;I)V
    .registers 2
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$SrvccStateListener;
    .param p1, "state"    # I

    .line 2063
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$SrvccStateListener;->onSrvccStateChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onSrvccStateChanged$27(Landroid/telephony/TelephonyCallback$SrvccStateListener;I)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$SrvccStateListener;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2063
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda67;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda67;-><init>(Landroid/telephony/TelephonyCallback$SrvccStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onUserMobileDataStateChanged$32(Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;Z)V
    .registers 2
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;
    .param p1, "enabled"    # Z

    .line 2093
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;->onUserMobileDataStateChanged(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onUserMobileDataStateChanged$33(Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;Z)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2092
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda32;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda32;-><init>(Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onVoiceActivationStateChanged$28(Landroid/telephony/TelephonyCallback$VoiceActivationStateListener;I)V
    .registers 2
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$VoiceActivationStateListener;
    .param p1, "activationState"    # I

    .line 2073
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$VoiceActivationStateListener;->onVoiceActivationStateChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onVoiceActivationStateChanged$29(Landroid/telephony/TelephonyCallback$VoiceActivationStateListener;I)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$VoiceActivationStateListener;
    .param p2, "activationState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2072
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda37;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda37;-><init>(Landroid/telephony/TelephonyCallback$VoiceActivationStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onActiveDataSubIdChanged(I)V
    .registers 4
    .param p1, "subId"    # I

    .line 2180
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 2181
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;

    .line 2182
    .local v0, "listener":Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;
    if-nez v0, :cond_b

    return-void

    .line 2184
    :cond_b
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda30;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2187
    return-void
.end method

.method public blacklist onAllowedNetworkTypesChanged(IJ)V
    .registers 11
    .param p1, "reason"    # I
    .param p2, "allowedNetworkType"    # J

    .line 2241
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 2242
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;

    .line 2243
    .local v3, "listener":Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;
    if-nez v3, :cond_c

    return-void

    .line 2245
    :cond_c
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda80;

    move-object v2, p0

    move v4, p1

    move-wide v5, p2

    .end local p1    # "reason":I
    .end local p2    # "allowedNetworkType":J
    .local v4, "reason":I
    .local v5, "allowedNetworkType":J
    invoke-direct/range {v1 .. v6}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda80;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;IJ)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2249
    return-void
.end method

.method public blacklist onBarringInfoChanged(Landroid/telephony/BarringInfo;)V
    .registers 4
    .param p1, "barringInfo"    # Landroid/telephony/BarringInfo;

    .line 2212
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$BarringInfoListener;

    .line 2213
    .local v0, "listener":Landroid/telephony/TelephonyCallback$BarringInfoListener;
    if-nez v0, :cond_b

    return-void

    .line 2215
    :cond_b
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda84;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda84;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$BarringInfoListener;Landroid/telephony/BarringInfo;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2217
    return-void
.end method

.method public blacklist onCallDisconnectCauseChanged(II)V
    .registers 5
    .param p1, "disconnectCause"    # I
    .param p2, "preciseDisconnectCause"    # I

    .line 2033
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 2034
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$CallDisconnectCauseListener;

    .line 2035
    .local v0, "listener":Landroid/telephony/TelephonyCallback$CallDisconnectCauseListener;
    if-nez v0, :cond_b

    return-void

    .line 2037
    :cond_b
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CallDisconnectCauseListener;II)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2040
    return-void
.end method

.method public blacklist onCallForwardingIndicatorChanged(Z)V
    .registers 4
    .param p1, "cfi"    # Z

    .line 1946
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 1947
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$CallForwardingIndicatorListener;

    .line 1948
    .local v0, "listener":Landroid/telephony/TelephonyCallback$CallForwardingIndicatorListener;
    if-nez v0, :cond_b

    return-void

    .line 1950
    :cond_b
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda11;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CallForwardingIndicatorListener;Z)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1952
    return-void
.end method

.method public blacklist onCallStateChanged(I)V
    .registers 4
    .param p1, "state"    # I

    .line 1972
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$CallStateListener;

    .line 1973
    .local v0, "listener":Landroid/telephony/TelephonyCallback$CallStateListener;
    if-nez v0, :cond_b

    return-void

    .line 1975
    :cond_b
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda78;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda78;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CallStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1977
    return-void
.end method

.method public blacklist onCallStatesChanged(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CallState;",
            ">;)V"
        }
    .end annotation

    .line 2171
    .local p1, "callStateList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CallState;>;"
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 2172
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$CallAttributesListener;

    .line 2173
    .local v0, "listener":Landroid/telephony/TelephonyCallback$CallAttributesListener;
    if-nez v0, :cond_b

    return-void

    .line 2175
    :cond_b
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda28;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CallAttributesListener;Ljava/util/List;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2177
    return-void
.end method

.method public blacklist onCallbackModeRestarted(IJI)V
    .registers 12
    .param p1, "type"    # I
    .param p2, "durationMillis"    # J
    .param p4, "subscriptionId"    # I

    .line 2303
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->emergencyCallbackModeNotification()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2305
    :cond_7
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 2306
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;

    .line 2307
    .local v3, "listener":Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCallbackModeRestarted:type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2308
    if-nez v3, :cond_36

    return-void

    .line 2310
    :cond_36
    invoke-static {p2, p3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v5

    .line 2311
    .local v5, "timerDuration":Ljava/time/Duration;
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda66;

    move-object v2, p0

    move v4, p1

    move v6, p4

    .end local p1    # "type":I
    .end local p4    # "subscriptionId":I
    .local v4, "type":I
    .local v6, "subscriptionId":I
    invoke-direct/range {v1 .. v6}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda66;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;ILjava/time/Duration;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2314
    return-void
.end method

.method public blacklist onCallbackModeStarted(IJI)V
    .registers 12
    .param p1, "type"    # I
    .param p2, "durationMillis"    # J
    .param p4, "subscriptionId"    # I

    .line 2287
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->emergencyCallbackModeNotification()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2289
    :cond_7
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 2290
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;

    .line 2291
    .local v3, "listener":Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCallBackModeStarted:type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2292
    if-nez v3, :cond_36

    return-void

    .line 2294
    :cond_36
    invoke-static {p2, p3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v5

    .line 2295
    .local v5, "timerDuration":Ljava/time/Duration;
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda29;

    move-object v2, p0

    move v4, p1

    move v6, p4

    .end local p1    # "type":I
    .end local p4    # "subscriptionId":I
    .local v4, "type":I
    .local v6, "subscriptionId":I
    invoke-direct/range {v1 .. v6}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda29;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;ILjava/time/Duration;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2298
    return-void
.end method

.method public blacklist onCallbackModeStopped(III)V
    .registers 11
    .param p1, "type"    # I
    .param p2, "reason"    # I
    .param p3, "subscriptionId"    # I

    .line 2319
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->emergencyCallbackModeNotification()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2321
    :cond_7
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 2322
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;

    .line 2323
    .local v3, "listener":Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCallBackModeStopped:type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    if-nez v3, :cond_40

    return-void

    .line 2327
    :cond_40
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda81;

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v6, p3

    .end local p1    # "type":I
    .end local p2    # "reason":I
    .end local p3    # "subscriptionId":I
    .local v4, "type":I
    .local v5, "reason":I
    .local v6, "subscriptionId":I
    invoke-direct/range {v1 .. v6}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda81;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;III)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2330
    return-void
.end method

.method public blacklist onCarrierNetworkChange(Z)V
    .registers 4
    .param p1, "active"    # Z

    .line 2110
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 2111
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$CarrierNetworkListener;

    .line 2112
    .local v0, "listener":Landroid/telephony/TelephonyCallback$CarrierNetworkListener;
    if-nez v0, :cond_b

    return-void

    .line 2114
    :cond_b
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda73;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda73;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CarrierNetworkListener;Z)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2116
    return-void
.end method

.method public blacklist onCarrierRoamingNtnAvailableServicesChanged([I)V
    .registers 4
    .param p1, "availableServices"    # [I

    .line 2354
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->carrierRoamingNbIotNtn()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2356
    :cond_7
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 2357
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;

    .line 2358
    .local v0, "listener":Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;
    if-nez v0, :cond_12

    return-void

    .line 2360
    :cond_12
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda36;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda36;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;[I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2362
    return-void
.end method

.method public blacklist onCarrierRoamingNtnEligibleStateChanged(Z)V
    .registers 4
    .param p1, "eligible"    # Z

    .line 2342
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->carrierRoamingNbIotNtn()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2344
    :cond_7
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 2345
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;

    .line 2346
    .local v0, "listener":Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;
    if-nez v0, :cond_12

    return-void

    .line 2348
    :cond_12
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda77;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda77;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;Z)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2350
    return-void
.end method

.method public blacklist onCarrierRoamingNtnModeChanged(Z)V
    .registers 4
    .param p1, "active"    # Z

    .line 2333
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 2334
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;

    .line 2335
    .local v0, "listener":Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;
    if-nez v0, :cond_b

    return-void

    .line 2337
    :cond_b
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda85;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda85;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;Z)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2339
    return-void
.end method

.method public blacklist onCarrierRoamingNtnSignalStrengthChanged(Landroid/telephony/satellite/NtnSignalStrength;)V
    .registers 4
    .param p1, "ntnSignalStrength"    # Landroid/telephony/satellite/NtnSignalStrength;

    .line 2366
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->carrierRoamingNbIotNtn()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2368
    :cond_7
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 2369
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;

    .line 2370
    .local v0, "listener":Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;
    if-nez v0, :cond_12

    return-void

    .line 2372
    :cond_12
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda55;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda55;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;Landroid/telephony/satellite/NtnSignalStrength;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2375
    return-void
.end method

.method public blacklist onCellInfoChanged(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 2016
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$CellInfoListener;

    .line 2017
    .local v0, "listener":Landroid/telephony/TelephonyCallback$CellInfoListener;
    if-nez v0, :cond_b

    return-void

    .line 2019
    :cond_b
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda65;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda65;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CellInfoListener;Ljava/util/List;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2021
    return-void
.end method

.method public blacklist onCellLocationChanged(Landroid/telephony/CellIdentity;)V
    .registers 5
    .param p1, "cellIdentity"    # Landroid/telephony/CellIdentity;

    .line 1958
    if-nez p1, :cond_7

    invoke-static {}, Landroid/telephony/CellLocation;->getEmpty()Landroid/telephony/CellLocation;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-virtual {p1}, Landroid/telephony/CellIdentity;->asCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 1959
    .local v0, "location":Landroid/telephony/CellLocation;
    :goto_b
    iget-object v1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyCallback$CellLocationListener;

    .line 1960
    .local v1, "listener":Landroid/telephony/TelephonyCallback$CellLocationListener;
    if-nez v1, :cond_16

    return-void

    .line 1962
    :cond_16
    new-instance v2, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda62;

    invoke-direct {v2, p0, v1, v0}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda62;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CellLocationListener;Landroid/telephony/CellLocation;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1964
    return-void
.end method

.method public blacklist onCellularIdentifierDisclosedChanged(Landroid/telephony/CellularIdentifierDisclosure;)V
    .registers 4
    .param p1, "disclosure"    # Landroid/telephony/CellularIdentifierDisclosure;

    .line 2389
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->cellularIdentifierDisclosureIndications()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2391
    :cond_7
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 2392
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$CellularIdentifierDisclosedListener;

    .line 2393
    .local v0, "listener":Landroid/telephony/TelephonyCallback$CellularIdentifierDisclosedListener;
    if-nez v0, :cond_12

    return-void

    .line 2395
    :cond_12
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda14;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CellularIdentifierDisclosedListener;Landroid/telephony/CellularIdentifierDisclosure;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2397
    return-void
.end method

.method public blacklist onDataActivationStateChanged(I)V
    .registers 4
    .param p1, "activationState"    # I

    .line 2077
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 2078
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$DataActivationStateListener;

    .line 2079
    .local v0, "listener":Landroid/telephony/TelephonyCallback$DataActivationStateListener;
    if-nez v0, :cond_b

    return-void

    .line 2081
    :cond_b
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda56;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda56;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$DataActivationStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2084
    return-void
.end method

.method public blacklist onDataActivity(I)V
    .registers 4
    .param p1, "direction"    # I

    .line 1998
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$DataActivityListener;

    .line 1999
    .local v0, "listener":Landroid/telephony/TelephonyCallback$DataActivityListener;
    if-nez v0, :cond_b

    return-void

    .line 2001
    :cond_b
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda19;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$DataActivityListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2003
    return-void
.end method

.method public blacklist onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .registers 2
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .line 2056
    return-void
.end method

.method public blacklist onDataConnectionStateChanged(II)V
    .registers 6
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .line 1980
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 1981
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$DataConnectionStateListener;

    .line 1982
    .local v0, "listener":Landroid/telephony/TelephonyCallback$DataConnectionStateListener;
    if-nez v0, :cond_b

    return-void

    .line 1984
    :cond_b
    const/4 v1, 0x4

    if-ne p1, v1, :cond_23

    .line 1985
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v1

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_23

    .line 1986
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda43;

    invoke-direct {v1, p0, v0, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda43;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$DataConnectionStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    goto :goto_2b

    .line 1991
    :cond_23
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda44;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda44;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$DataConnectionStateListener;II)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1995
    :goto_2b
    return-void
.end method

.method public blacklist onDataEnabledChanged(ZI)V
    .registers 5
    .param p1, "enabled"    # Z
    .param p2, "reason"    # I

    .line 2231
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 2232
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$DataEnabledListener;

    .line 2233
    .local v0, "listener":Landroid/telephony/TelephonyCallback$DataEnabledListener;
    if-nez v0, :cond_b

    return-void

    .line 2235
    :cond_b
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$DataEnabledListener;ZI)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2238
    return-void
.end method

.method public blacklist onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .registers 4
    .param p1, "telephonyDisplayInfo"    # Landroid/telephony/TelephonyDisplayInfo;

    .line 2097
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$DisplayInfoListener;

    .line 2098
    .local v0, "listener":Landroid/telephony/TelephonyCallback$DisplayInfoListener;
    if-nez v0, :cond_b

    return-void

    .line 2100
    :cond_b
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda42;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda42;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$DisplayInfoListener;Landroid/telephony/TelephonyDisplayInfo;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2103
    return-void
.end method

.method public blacklist onEmergencyNumberListChanged(Ljava/util/Map;)V
    .registers 4
    .param p1, "emergencyNumberList"    # Ljava/util/Map;

    .line 2119
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 2120
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$EmergencyNumberListListener;

    .line 2121
    .local v0, "listener":Landroid/telephony/TelephonyCallback$EmergencyNumberListListener;
    if-nez v0, :cond_b

    return-void

    .line 2123
    :cond_b
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda49;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda49;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$EmergencyNumberListListener;Ljava/util/Map;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2126
    return-void
.end method

.method public blacklist onImsCallDisconnectCauseChanged(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "disconnectCause"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2190
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 2191
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$ImsCallDisconnectCauseListener;

    .line 2192
    .local v0, "listener":Landroid/telephony/TelephonyCallback$ImsCallDisconnectCauseListener;
    if-nez v0, :cond_b

    return-void

    .line 2194
    :cond_b
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda50;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda50;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$ImsCallDisconnectCauseListener;Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2197
    return-void
.end method

.method public blacklist onLegacyCallStateChanged(ILjava/lang/String;)V
    .registers 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .line 1969
    return-void
.end method

.method public blacklist onLinkCapacityEstimateChanged(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/LinkCapacityEstimate;",
            ">;)V"
        }
    .end annotation

    .line 2264
    .local p1, "linkCapacityEstimateList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/LinkCapacityEstimate;>;"
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 2265
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$LinkCapacityEstimateChangedListener;

    .line 2266
    .local v0, "listener":Landroid/telephony/TelephonyCallback$LinkCapacityEstimateChangedListener;
    if-nez v0, :cond_b

    return-void

    .line 2268
    :cond_b
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda87;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda87;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$LinkCapacityEstimateChangedListener;Ljava/util/List;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2271
    return-void
.end method

.method public blacklist onMediaQualityStatusChanged(Landroid/telephony/ims/MediaQualityStatus;)V
    .registers 4
    .param p1, "mediaQualityStatus"    # Landroid/telephony/ims/MediaQualityStatus;

    .line 2275
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 2276
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$MediaQualityStatusChangedListener;

    .line 2277
    .local v0, "listener":Landroid/telephony/TelephonyCallback$MediaQualityStatusChangedListener;
    if-nez v0, :cond_b

    return-void

    .line 2279
    :cond_b
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda48;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda48;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$MediaQualityStatusChangedListener;Landroid/telephony/ims/MediaQualityStatus;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2282
    return-void
.end method

.method public blacklist onMessageWaitingIndicatorChanged(Z)V
    .registers 4
    .param p1, "mwi"    # Z

    .line 1937
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 1938
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$MessageWaitingIndicatorListener;

    .line 1939
    .local v0, "listener":Landroid/telephony/TelephonyCallback$MessageWaitingIndicatorListener;
    if-nez v0, :cond_b

    return-void

    .line 1941
    :cond_b
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda21;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$MessageWaitingIndicatorListener;Z)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1943
    return-void
.end method

.method public blacklist onOemHookRawEvent([B)V
    .registers 2
    .param p1, "rawData"    # [B

    .line 2107
    return-void
.end method

.method public blacklist onOutgoingEmergencyCall(Landroid/telephony/emergency/EmergencyNumber;I)V
    .registers 5
    .param p1, "placedEmergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p2, "subscriptionId"    # I

    .line 2130
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 2131
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;

    .line 2132
    .local v0, "listener":Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;
    if-nez v0, :cond_b

    return-void

    .line 2134
    :cond_b
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda40;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda40;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;Landroid/telephony/emergency/EmergencyNumber;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2138
    return-void
.end method

.method public blacklist onOutgoingEmergencySms(Landroid/telephony/emergency/EmergencyNumber;I)V
    .registers 5
    .param p1, "sentEmergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p2, "subscriptionId"    # I

    .line 2142
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 2143
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;

    .line 2144
    .local v0, "listener":Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;
    if-nez v0, :cond_b

    return-void

    .line 2146
    :cond_b
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda59;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda59;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;Landroid/telephony/emergency/EmergencyNumber;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2150
    return-void
.end method

.method public blacklist onPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
    .registers 4
    .param p1, "capability"    # Landroid/telephony/PhoneCapability;

    .line 2153
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 2154
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$PhoneCapabilityListener;

    .line 2155
    .local v0, "listener":Landroid/telephony/TelephonyCallback$PhoneCapabilityListener;
    if-nez v0, :cond_b

    return-void

    .line 2157
    :cond_b
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda83;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda83;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$PhoneCapabilityListener;Landroid/telephony/PhoneCapability;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2159
    return-void
.end method

.method public blacklist onPhysicalChannelConfigChanged(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 2220
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 2221
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;

    .line 2222
    .local v0, "listener":Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;
    if-nez v0, :cond_b

    return-void

    .line 2224
    :cond_b
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda46;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda46;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;Ljava/util/List;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2227
    return-void
.end method

.method public blacklist onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .registers 4
    .param p1, "callState"    # Landroid/telephony/PreciseCallState;

    .line 2024
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 2025
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$PreciseCallStateListener;

    .line 2026
    .local v0, "listener":Landroid/telephony/TelephonyCallback$PreciseCallStateListener;
    if-nez v0, :cond_b

    return-void

    .line 2028
    :cond_b
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda18;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$PreciseCallStateListener;Landroid/telephony/PreciseCallState;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2030
    return-void
.end method

.method public blacklist onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .registers 4
    .param p1, "dataConnectionState"    # Landroid/telephony/PreciseDataConnectionState;

    .line 2044
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 2045
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;

    .line 2046
    .local v0, "listener":Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;
    if-nez v0, :cond_b

    return-void

    .line 2048
    :cond_b
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda60;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda60;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;Landroid/telephony/PreciseDataConnectionState;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2052
    return-void
.end method

.method public blacklist onRadioPowerStateChanged(I)V
    .registers 4
    .param p1, "state"    # I

    .line 2162
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 2163
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$RadioPowerStateListener;

    .line 2164
    .local v0, "listener":Landroid/telephony/TelephonyCallback$RadioPowerStateListener;
    if-nez v0, :cond_b

    return-void

    .line 2166
    :cond_b
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda53;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda53;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$RadioPowerStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2168
    return-void
.end method

.method public blacklist onRegistrationFailed(Landroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .registers 15
    .param p1, "cellIdentity"    # Landroid/telephony/CellIdentity;
    .param p2, "chosenPlmn"    # Ljava/lang/String;
    .param p3, "domain"    # I
    .param p4, "causeCode"    # I
    .param p5, "additionalCauseCode"    # I

    .line 2201
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 2202
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/telephony/TelephonyCallback$RegistrationFailedListener;

    .line 2203
    .local v3, "listener":Landroid/telephony/TelephonyCallback$RegistrationFailedListener;
    if-nez v3, :cond_c

    return-void

    .line 2205
    :cond_c
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda69;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .end local p1    # "cellIdentity":Landroid/telephony/CellIdentity;
    .end local p2    # "chosenPlmn":Ljava/lang/String;
    .end local p3    # "domain":I
    .end local p4    # "causeCode":I
    .end local p5    # "additionalCauseCode":I
    .local v4, "cellIdentity":Landroid/telephony/CellIdentity;
    .local v5, "chosenPlmn":Ljava/lang/String;
    .local v6, "domain":I
    .local v7, "causeCode":I
    .local v8, "additionalCauseCode":I
    invoke-direct/range {v1 .. v8}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda69;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$RegistrationFailedListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2209
    return-void
.end method

.method public blacklist onSecurityAlgorithmsChanged(Landroid/telephony/SecurityAlgorithmUpdate;)V
    .registers 4
    .param p1, "update"    # Landroid/telephony/SecurityAlgorithmUpdate;

    .line 2378
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->securityAlgorithmsUpdateIndications()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2380
    :cond_7
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 2381
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$SecurityAlgorithmsListener;

    .line 2382
    .local v0, "listener":Landroid/telephony/TelephonyCallback$SecurityAlgorithmsListener;
    if-nez v0, :cond_12

    return-void

    .line 2384
    :cond_12
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda6;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$SecurityAlgorithmsListener;Landroid/telephony/SecurityAlgorithmUpdate;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2386
    return-void
.end method

.method public blacklist onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 1925
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$ServiceStateListener;

    .line 1926
    .local v0, "listener":Landroid/telephony/TelephonyCallback$ServiceStateListener;
    if-nez v0, :cond_b

    return-void

    .line 1928
    :cond_b
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda58;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda58;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$ServiceStateListener;Landroid/telephony/ServiceState;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1930
    return-void
.end method

.method public blacklist onSignalStrengthChanged(I)V
    .registers 2
    .param p1, "asu"    # I

    .line 1934
    return-void
.end method

.method public blacklist onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .registers 4
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 2006
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 2007
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$SignalStrengthsListener;

    .line 2008
    .local v0, "listener":Landroid/telephony/TelephonyCallback$SignalStrengthsListener;
    if-nez v0, :cond_b

    return-void

    .line 2010
    :cond_b
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda41;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda41;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$SignalStrengthsListener;Landroid/telephony/SignalStrength;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2013
    return-void
.end method

.method public blacklist onSimultaneousCallingStateChanged([I)V
    .registers 4
    .param p1, "subIds"    # [I

    .line 2252
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 2253
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$SimultaneousCellularCallingSupportListener;

    .line 2254
    .local v0, "listener":Landroid/telephony/TelephonyCallback$SimultaneousCellularCallingSupportListener;
    if-nez v0, :cond_b

    return-void

    .line 2256
    :cond_b
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda35;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda35;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$SimultaneousCellularCallingSupportListener;[I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2260
    return-void
.end method

.method public blacklist onSrvccStateChanged(I)V
    .registers 4
    .param p1, "state"    # I

    .line 2059
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$SrvccStateListener;

    .line 2060
    .local v0, "listener":Landroid/telephony/TelephonyCallback$SrvccStateListener;
    if-nez v0, :cond_b

    return-void

    .line 2062
    :cond_b
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda70;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda70;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$SrvccStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2064
    return-void
.end method

.method public blacklist onUserMobileDataStateChanged(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 2087
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 2088
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;

    .line 2089
    .local v0, "listener":Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;
    if-nez v0, :cond_b

    return-void

    .line 2091
    :cond_b
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda16;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;Z)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2094
    return-void
.end method

.method public blacklist onVoiceActivationStateChanged(I)V
    .registers 4
    .param p1, "activationState"    # I

    .line 2067
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 2068
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$VoiceActivationStateListener;

    .line 2069
    .local v0, "listener":Landroid/telephony/TelephonyCallback$VoiceActivationStateListener;
    if-nez v0, :cond_b

    return-void

    .line 2071
    :cond_b
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda15;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$VoiceActivationStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2074
    return-void
.end method
