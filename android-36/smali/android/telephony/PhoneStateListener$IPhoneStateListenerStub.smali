.class Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;
.super Lcom/android/internal/telephony/IPhoneStateListener$Stub;
.source "PhoneStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IPhoneStateListenerStub"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private greylist-max-o mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/telephony/PhoneStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$-2I0FwvY-1OTdkWjkKiEZ-6_r1U(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/ServiceState;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onServiceStateChanged$1(Landroid/telephony/PhoneStateListener;Landroid/telephony/ServiceState;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$-Dx7IXgthN4GSupnSViArHwxu1c(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onRadioPowerStateChanged$53(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$2xIrY8wCgCY8rMik4w0sSAbku6M(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseCallState;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onPreciseCallStateChanged$23(Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseCallState;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$4ZMDYm1MQ6mhEoUaXuW4AazbAec(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/CallAttributes;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onCallStatesChanged$55(Landroid/telephony/PhoneStateListener;Landroid/telephony/CallAttributes;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$79IzSETkopHT-hH__CLgaXzNbj8(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onDataConnectionStateChanged$15(Landroid/telephony/PhoneStateListener;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$8bJUrf1cF8_BRNmPuK4wmPMushI(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onDataActivity$17(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$9bWY7-hTXIqExgaJ5DbkiyEPy1w(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onCallDisconnectCauseChanged$25(Landroid/telephony/PhoneStateListener;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$A2rN19a03XmC2XSFWH36e3rIqZc(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onSignalStrengthChanged$3(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$BlC9Gvh9CzQ4QtcIevumeeQD-78(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/DataConnectionRealTimeInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onDataConnectionRealTimeInfoChanged$29(Landroid/telephony/PhoneStateListener;Landroid/telephony/DataConnectionRealTimeInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Dz5AkscaWTsgTPVlGUHpDwF5qIQ(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/PhoneCapability;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onPhoneCapabilityChanged$51(Landroid/telephony/PhoneStateListener;Landroid/telephony/PhoneCapability;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$EzDPap-lgtYtF9YYZziv5HHtu-4(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onImsCallDisconnectCauseChanged$59(Landroid/telephony/PhoneStateListener;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$HZB1CexPd0I5VDHsMB9wyu47XfU(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onLegacyCallStateChanged$11(Landroid/telephony/PhoneStateListener;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$M9Z8E0-W6VvMLxluyuBP-B_vWas(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onMessageWaitingIndicatorChanged$5(Landroid/telephony/PhoneStateListener;Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$MSfx2el4Bndvelsgf3fvnYxbCno(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onRegistrationFailed$61(Landroid/telephony/PhoneStateListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RSBTkVQZVNkVKEJru1cbHitR7Tw(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onActiveDataSubIdChanged$57(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RmFNYTuzgIFKIwld7rDmBdMPwDo(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onDataConnectionStateChanged$13(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$UN-40ZmG4XQK1yA_161PG6Bfx9A(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onOutgoingEmergencySms$49(Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$VhnTd90XKmF_DMekum7QVdaWsJQ(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onCallForwardingIndicatorChanged$7(Landroid/telephony/PhoneStateListener;Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$YDlWElvJwvoGlZfk8FBg87sWhGA(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onSrvccStateChanged$31(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$YbzwgrpOSUHSUfUxRlqpuH8VVk8(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onCellInfoChanged$21(Landroid/telephony/PhoneStateListener;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ZX375TSOzhK62vJICfouX9DvIK4(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onVoiceActivationStateChanged$33(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$acIkx0-fppyS7exHYzIp5IeliVg(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onCarrierNetworkChange$43(Landroid/telephony/PhoneStateListener;Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dYp24nVxYuHRDV-_pVQyi4m--TI(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onUserMobileDataStateChanged$37(Landroid/telephony/PhoneStateListener;Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dqj06W3tYHXn_7d8kYj9hhjOvIo(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/TelephonyDisplayInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onDisplayInfoChanged$39(Landroid/telephony/PhoneStateListener;Landroid/telephony/TelephonyDisplayInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$evHVvwZSyLCS1bu59ts3E7EGkTw(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/SignalStrength;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onSignalStrengthsChanged$19(Landroid/telephony/PhoneStateListener;Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$kSt4d-CAs9WGLKZJbrcGRhY9i1E(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onOutgoingEmergencyCall$47(Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nrZn-85-L2j2nMPPrQLBI4fXJPQ(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onDataActivationStateChanged$35(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oPTGuBtiuHERsGyeXgMIBJXMHgQ(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseDataConnectionState;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onPreciseDataConnectionStateChanged$27(Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseDataConnectionState;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oSe_UsW_k8u6cR_SQ6f-c0ltVY0(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/CellLocation;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onCellLocationChanged$9(Landroid/telephony/PhoneStateListener;Landroid/telephony/CellLocation;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$pAUD_68Pyie4wh6foOP21SU8OZk(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;[B)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onOemHookRawEvent$41(Landroid/telephony/PhoneStateListener;[B)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$pv-_hquLDankNhU2NybFPH8fbr4(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onEmergencyNumberListChanged$45(Landroid/telephony/PhoneStateListener;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vZOb_xPD6wW3PFnpXN6rqyxf2Vg(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/BarringInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onBarringInfoChanged$63(Landroid/telephony/PhoneStateListener;Landroid/telephony/BarringInfo;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/telephony/PhoneStateListener;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "phoneStateListener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 1325
    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;-><init>()V

    .line 1326
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    .line 1327
    iput-object p2, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1328
    return-void
.end method

.method static synthetic blacklist lambda$onActiveDataSubIdChanged$56(Landroid/telephony/PhoneStateListener;I)V
    .registers 2
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "subId"    # I

    .line 1622
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onActiveDataSubscriptionIdChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onActiveDataSubIdChanged$57(Landroid/telephony/PhoneStateListener;I)V
    .registers 5
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1622
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda15;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda15;-><init>(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onBarringInfoChanged$62(Landroid/telephony/PhoneStateListener;Landroid/telephony/BarringInfo;)V
    .registers 2
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "barringInfo"    # Landroid/telephony/BarringInfo;

    .line 1650
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onBarringInfoChanged(Landroid/telephony/BarringInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$onBarringInfoChanged$63(Landroid/telephony/PhoneStateListener;Landroid/telephony/BarringInfo;)V
    .registers 5
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "barringInfo"    # Landroid/telephony/BarringInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1650
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda44;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda44;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/BarringInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCallDisconnectCauseChanged$24(Landroid/telephony/PhoneStateListener;II)V
    .registers 3
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "disconnectCause"    # I
    .param p2, "preciseDisconnectCause"    # I

    .line 1444
    invoke-virtual {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallDisconnectCauseChanged(II)V

    return-void
.end method

.method private synthetic blacklist lambda$onCallDisconnectCauseChanged$25(Landroid/telephony/PhoneStateListener;II)V
    .registers 6
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "disconnectCause"    # I
    .param p3, "preciseDisconnectCause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1444
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1, p2, p3}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda8;-><init>(Landroid/telephony/PhoneStateListener;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCallForwardingIndicatorChanged$6(Landroid/telephony/PhoneStateListener;Z)V
    .registers 2
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "cfi"    # Z

    .line 1359
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onCallForwardingIndicatorChanged$7(Landroid/telephony/PhoneStateListener;Z)V
    .registers 5
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "cfi"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1359
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda41;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda41;-><init>(Landroid/telephony/PhoneStateListener;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCallStatesChanged$54(Landroid/telephony/PhoneStateListener;Landroid/telephony/CallAttributes;)V
    .registers 2
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "ca"    # Landroid/telephony/CallAttributes;

    .line 1614
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onCallAttributesChanged(Landroid/telephony/CallAttributes;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCallStatesChanged$55(Landroid/telephony/PhoneStateListener;Landroid/telephony/CallAttributes;)V
    .registers 5
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "ca"    # Landroid/telephony/CallAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1613
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda30;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda30;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/CallAttributes;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCarrierNetworkChange$42(Landroid/telephony/PhoneStateListener;Z)V
    .registers 2
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "active"    # Z

    .line 1524
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onCarrierNetworkChange(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onCarrierNetworkChange$43(Landroid/telephony/PhoneStateListener;Z)V
    .registers 5
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "active"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1524
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda55;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda55;-><init>(Landroid/telephony/PhoneStateListener;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCellInfoChanged$20(Landroid/telephony/PhoneStateListener;Ljava/util/List;)V
    .registers 2
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "cellInfo"    # Ljava/util/List;

    .line 1428
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCellInfoChanged$21(Landroid/telephony/PhoneStateListener;Ljava/util/List;)V
    .registers 5
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "cellInfo"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1428
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda39;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda39;-><init>(Landroid/telephony/PhoneStateListener;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCellLocationChanged$8(Landroid/telephony/PhoneStateListener;Landroid/telephony/CellLocation;)V
    .registers 2
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "location"    # Landroid/telephony/CellLocation;

    .line 1371
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellLocation;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCellLocationChanged$9(Landroid/telephony/PhoneStateListener;Landroid/telephony/CellLocation;)V
    .registers 5
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "location"    # Landroid/telephony/CellLocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1371
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda53;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda53;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/CellLocation;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDataActivationStateChanged$34(Landroid/telephony/PhoneStateListener;I)V
    .registers 2
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "activationState"    # I

    .line 1490
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onDataActivationStateChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onDataActivationStateChanged$35(Landroid/telephony/PhoneStateListener;I)V
    .registers 5
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "activationState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1489
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda47;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda47;-><init>(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDataActivity$16(Landroid/telephony/PhoneStateListener;I)V
    .registers 2
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "direction"    # I

    .line 1412
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onDataActivity(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onDataActivity$17(Landroid/telephony/PhoneStateListener;I)V
    .registers 5
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1412
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda57;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda57;-><init>(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDataConnectionRealTimeInfoChanged$28(Landroid/telephony/PhoneStateListener;Landroid/telephony/DataConnectionRealTimeInfo;)V
    .registers 2
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .line 1464
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDataConnectionRealTimeInfoChanged$29(Landroid/telephony/PhoneStateListener;Landroid/telephony/DataConnectionRealTimeInfo;)V
    .registers 5
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1463
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda16;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda16;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/DataConnectionRealTimeInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDataConnectionStateChanged$12(Landroid/telephony/PhoneStateListener;I)V
    .registers 3
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "networkType"    # I

    .line 1394
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(II)V

    .line 1396
    invoke-virtual {p0, v0}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(I)V

    .line 1397
    return-void
.end method

.method private synthetic blacklist lambda$onDataConnectionStateChanged$13(Landroid/telephony/PhoneStateListener;I)V
    .registers 5
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "networkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1392
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda11;-><init>(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDataConnectionStateChanged$14(Landroid/telephony/PhoneStateListener;II)V
    .registers 3
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .line 1401
    invoke-virtual {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(II)V

    .line 1402
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(I)V

    .line 1403
    return-void
.end method

.method private synthetic blacklist lambda$onDataConnectionStateChanged$15(Landroid/telephony/PhoneStateListener;II)V
    .registers 6
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "state"    # I
    .param p3, "networkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1399
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda61;

    invoke-direct {v1, p1, p2, p3}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda61;-><init>(Landroid/telephony/PhoneStateListener;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDisplayInfoChanged$38(Landroid/telephony/PhoneStateListener;Landroid/telephony/TelephonyDisplayInfo;)V
    .registers 2
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "telephonyDisplayInfo"    # Landroid/telephony/TelephonyDisplayInfo;

    .line 1508
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDisplayInfoChanged$39(Landroid/telephony/PhoneStateListener;Landroid/telephony/TelephonyDisplayInfo;)V
    .registers 5
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "telephonyDisplayInfo"    # Landroid/telephony/TelephonyDisplayInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1507
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda23;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda23;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/TelephonyDisplayInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onEmergencyNumberListChanged$44(Landroid/telephony/PhoneStateListener;Ljava/util/Map;)V
    .registers 2
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "emergencyNumberList"    # Ljava/util/Map;

    .line 1533
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onEmergencyNumberListChanged(Ljava/util/Map;)V

    return-void
.end method

.method private synthetic blacklist lambda$onEmergencyNumberListChanged$45(Landroid/telephony/PhoneStateListener;Ljava/util/Map;)V
    .registers 5
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "emergencyNumberList"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1532
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda12;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda12;-><init>(Landroid/telephony/PhoneStateListener;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onImsCallDisconnectCauseChanged$58(Landroid/telephony/PhoneStateListener;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 2
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "disconnectCause"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1631
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onImsCallDisconnectCauseChanged(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$onImsCallDisconnectCauseChanged$59(Landroid/telephony/PhoneStateListener;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 5
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "disconnectCause"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1630
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda33;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda33;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onLegacyCallStateChanged$10(Landroid/telephony/PhoneStateListener;ILjava/lang/String;)V
    .registers 3
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .line 1379
    invoke-virtual {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$onLegacyCallStateChanged$11(Landroid/telephony/PhoneStateListener;ILjava/lang/String;)V
    .registers 6
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "state"    # I
    .param p3, "incomingNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1379
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda43;

    invoke-direct {v1, p1, p2, p3}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda43;-><init>(Landroid/telephony/PhoneStateListener;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onMessageWaitingIndicatorChanged$4(Landroid/telephony/PhoneStateListener;Z)V
    .registers 2
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "mwi"    # Z

    .line 1351
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onMessageWaitingIndicatorChanged$5(Landroid/telephony/PhoneStateListener;Z)V
    .registers 5
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "mwi"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1351
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda37;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda37;-><init>(Landroid/telephony/PhoneStateListener;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onOemHookRawEvent$40(Landroid/telephony/PhoneStateListener;[B)V
    .registers 2
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "rawData"    # [B

    .line 1516
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onOemHookRawEvent([B)V

    return-void
.end method

.method private synthetic blacklist lambda$onOemHookRawEvent$41(Landroid/telephony/PhoneStateListener;[B)V
    .registers 5
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "rawData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1516
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda36;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda36;-><init>(Landroid/telephony/PhoneStateListener;[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onOutgoingEmergencyCall$46(Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;I)V
    .registers 3
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "placedEmergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p2, "subscriptionId"    # I

    .line 1543
    invoke-virtual {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onOutgoingEmergencyCall(Landroid/telephony/emergency/EmergencyNumber;I)V

    return-void
.end method

.method private synthetic blacklist lambda$onOutgoingEmergencyCall$47(Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;I)V
    .registers 6
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "placedEmergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p3, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1542
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda40;

    invoke-direct {v1, p1, p2, p3}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda40;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onOutgoingEmergencySms$48(Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;I)V
    .registers 3
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "sentEmergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p2, "subscriptionId"    # I

    .line 1554
    invoke-virtual {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onOutgoingEmergencySms(Landroid/telephony/emergency/EmergencyNumber;I)V

    return-void
.end method

.method private synthetic blacklist lambda$onOutgoingEmergencySms$49(Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;I)V
    .registers 6
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "sentEmergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p3, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1553
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda24;

    invoke-direct {v1, p1, p2, p3}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda24;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onPhoneCapabilityChanged$50(Landroid/telephony/PhoneStateListener;Landroid/telephony/PhoneCapability;)V
    .registers 2
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "capability"    # Landroid/telephony/PhoneCapability;

    .line 1562
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V

    return-void
.end method

.method private synthetic blacklist lambda$onPhoneCapabilityChanged$51(Landroid/telephony/PhoneStateListener;Landroid/telephony/PhoneCapability;)V
    .registers 5
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "capability"    # Landroid/telephony/PhoneCapability;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1562
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda38;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda38;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/PhoneCapability;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onPreciseCallStateChanged$22(Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseCallState;)V
    .registers 2
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "callState"    # Landroid/telephony/PreciseCallState;

    .line 1436
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V

    return-void
.end method

.method private synthetic blacklist lambda$onPreciseCallStateChanged$23(Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseCallState;)V
    .registers 5
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "callState"    # Landroid/telephony/PreciseCallState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1436
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda25;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda25;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseCallState;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onPreciseDataConnectionStateChanged$26(Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseDataConnectionState;)V
    .registers 2
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "dataConnectionState"    # Landroid/telephony/PreciseDataConnectionState;

    .line 1455
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V

    return-void
.end method

.method private synthetic blacklist lambda$onPreciseDataConnectionStateChanged$27(Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseDataConnectionState;)V
    .registers 5
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "dataConnectionState"    # Landroid/telephony/PreciseDataConnectionState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1454
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda27;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda27;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseDataConnectionState;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onRadioPowerStateChanged$52(Landroid/telephony/PhoneStateListener;I)V
    .registers 2
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "state"    # I

    .line 1570
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onRadioPowerStateChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onRadioPowerStateChanged$53(Landroid/telephony/PhoneStateListener;I)V
    .registers 5
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1570
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda49;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda49;-><init>(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onRegistrationFailed$60(Landroid/telephony/PhoneStateListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .registers 6
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "cellIdentity"    # Landroid/telephony/CellIdentity;
    .param p2, "chosenPlmn"    # Ljava/lang/String;
    .param p3, "domain"    # I
    .param p4, "causeCode"    # I
    .param p5, "additionalCauseCode"    # I

    .line 1640
    invoke-virtual/range {p0 .. p5}, Landroid/telephony/PhoneStateListener;->onRegistrationFailed(Landroid/telephony/CellIdentity;Ljava/lang/String;III)V

    return-void
.end method

.method private synthetic blacklist lambda$onRegistrationFailed$61(Landroid/telephony/PhoneStateListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .registers 15
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
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

    .line 1640
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda6;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .end local p1    # "psl":Landroid/telephony/PhoneStateListener;
    .end local p2    # "cellIdentity":Landroid/telephony/CellIdentity;
    .end local p3    # "chosenPlmn":Ljava/lang/String;
    .end local p4    # "domain":I
    .end local p5    # "causeCode":I
    .end local p6    # "additionalCauseCode":I
    .local v2, "psl":Landroid/telephony/PhoneStateListener;
    .local v3, "cellIdentity":Landroid/telephony/CellIdentity;
    .local v4, "chosenPlmn":Ljava/lang/String;
    .local v5, "domain":I
    .local v6, "causeCode":I
    .local v7, "additionalCauseCode":I
    invoke-direct/range {v1 .. v7}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda6;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onServiceStateChanged$0(Landroid/telephony/PhoneStateListener;Landroid/telephony/ServiceState;)V
    .registers 2
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 1335
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method private synthetic blacklist lambda$onServiceStateChanged$1(Landroid/telephony/PhoneStateListener;Landroid/telephony/ServiceState;)V
    .registers 5
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "serviceState"    # Landroid/telephony/ServiceState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1335
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/ServiceState;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSignalStrengthChanged$2(Landroid/telephony/PhoneStateListener;I)V
    .registers 2
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "asu"    # I

    .line 1343
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onSignalStrengthChanged$3(Landroid/telephony/PhoneStateListener;I)V
    .registers 5
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "asu"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1343
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda14;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda14;-><init>(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSignalStrengthsChanged$18(Landroid/telephony/PhoneStateListener;Landroid/telephony/SignalStrength;)V
    .registers 2
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 1420
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method private synthetic blacklist lambda$onSignalStrengthsChanged$19(Landroid/telephony/PhoneStateListener;Landroid/telephony/SignalStrength;)V
    .registers 5
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "signalStrength"    # Landroid/telephony/SignalStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1420
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda51;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda51;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/SignalStrength;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSrvccStateChanged$30(Landroid/telephony/PhoneStateListener;I)V
    .registers 2
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "state"    # I

    .line 1472
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onSrvccStateChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onSrvccStateChanged$31(Landroid/telephony/PhoneStateListener;I)V
    .registers 5
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1472
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda20;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda20;-><init>(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onUserMobileDataStateChanged$36(Landroid/telephony/PhoneStateListener;Z)V
    .registers 2
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "enabled"    # Z

    .line 1499
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onUserMobileDataStateChanged(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onUserMobileDataStateChanged$37(Landroid/telephony/PhoneStateListener;Z)V
    .registers 5
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1498
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/PhoneStateListener;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onVoiceActivationStateChanged$32(Landroid/telephony/PhoneStateListener;I)V
    .registers 2
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "activationState"    # I

    .line 1481
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onVoiceActivationStateChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onVoiceActivationStateChanged$33(Landroid/telephony/PhoneStateListener;I)V
    .registers 5
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "activationState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1480
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda56;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda56;-><init>(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onActiveDataSubIdChanged(I)V
    .registers 4
    .param p1, "subId"    # I

    .line 1618
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1619
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_b

    return-void

    .line 1621
    :cond_b
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda32;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1623
    return-void
.end method

.method public blacklist onAllowedNetworkTypesChanged(IJ)V
    .registers 4
    .param p1, "reason"    # I
    .param p2, "allowedNetworkType"    # J

    .line 1663
    return-void
.end method

.method public blacklist onBarringInfoChanged(Landroid/telephony/BarringInfo;)V
    .registers 4
    .param p1, "barringInfo"    # Landroid/telephony/BarringInfo;

    .line 1646
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1647
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_b

    return-void

    .line 1649
    :cond_b
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/BarringInfo;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1651
    return-void
.end method

.method public blacklist onCallDisconnectCauseChanged(II)V
    .registers 5
    .param p1, "disconnectCause"    # I
    .param p2, "preciseDisconnectCause"    # I

    .line 1440
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1441
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_b

    return-void

    .line 1443
    :cond_b
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda26;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;II)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1446
    return-void
.end method

.method public greylist-max-o onCallForwardingIndicatorChanged(Z)V
    .registers 4
    .param p1, "cfi"    # Z

    .line 1355
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1356
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_b

    return-void

    .line 1358
    :cond_b
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda50;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda50;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Z)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1360
    return-void
.end method

.method public blacklist onCallStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .line 1384
    return-void
.end method

.method public blacklist onCallStatesChanged(Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CallState;",
            ">;)V"
        }
    .end annotation

    .line 1574
    .local p1, "callStateList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CallState;>;"
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1575
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_b

    return-void

    .line 1577
    :cond_b
    if-nez p1, :cond_e

    return-void

    .line 1579
    :cond_e
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    .line 1580
    new-instance v1, Landroid/telephony/CallAttributes;

    new-instance v3, Landroid/telephony/PreciseCallState;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/telephony/PreciseCallState;-><init>(IIIII)V

    new-instance v4, Landroid/telephony/CallQuality;

    invoke-direct {v4}, Landroid/telephony/CallQuality;-><init>()V

    invoke-direct {v1, v3, v2, v4}, Landroid/telephony/CallAttributes;-><init>(Landroid/telephony/PreciseCallState;ILandroid/telephony/CallQuality;)V

    .local v1, "ca":Landroid/telephony/CallAttributes;
    goto :goto_7a

    .line 1587
    .end local v1    # "ca":Landroid/telephony/CallAttributes;
    :cond_2a
    const/4 v1, 0x0

    .line 1588
    .local v1, "foregroundCallState":I
    const/4 v3, 0x0

    .line 1589
    .local v3, "backgroundCallState":I
    const/4 v4, 0x0

    .line 1590
    .local v4, "ringingCallState":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v8, v1

    move v9, v3

    move v7, v4

    .end local v1    # "foregroundCallState":I
    .end local v3    # "backgroundCallState":I
    .end local v4    # "ringingCallState":I
    .local v7, "ringingCallState":I
    .local v8, "foregroundCallState":I
    .local v9, "backgroundCallState":I
    :goto_34
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CallState;

    .line 1591
    .local v1, "cs":Landroid/telephony/CallState;
    invoke-virtual {v1}, Landroid/telephony/CallState;->getCallClassification()I

    move-result v3

    packed-switch v3, :pswitch_data_84

    goto :goto_59

    .line 1596
    :pswitch_48
    invoke-virtual {v1}, Landroid/telephony/CallState;->getCallState()I

    move-result v3

    .line 1597
    .end local v9    # "backgroundCallState":I
    .restart local v3    # "backgroundCallState":I
    move v9, v3

    goto :goto_59

    .line 1593
    .end local v3    # "backgroundCallState":I
    .restart local v9    # "backgroundCallState":I
    :pswitch_4e
    invoke-virtual {v1}, Landroid/telephony/CallState;->getCallState()I

    move-result v3

    .line 1594
    .end local v8    # "foregroundCallState":I
    .local v3, "foregroundCallState":I
    move v8, v3

    goto :goto_59

    .line 1599
    .end local v3    # "foregroundCallState":I
    .restart local v8    # "foregroundCallState":I
    :pswitch_54
    invoke-virtual {v1}, Landroid/telephony/CallState;->getCallState()I

    move-result v3

    .line 1600
    .end local v7    # "ringingCallState":I
    .local v3, "ringingCallState":I
    move v7, v3

    .line 1604
    .end local v1    # "cs":Landroid/telephony/CallState;
    .end local v3    # "ringingCallState":I
    .restart local v7    # "ringingCallState":I
    :goto_59
    goto :goto_34

    .line 1605
    :cond_5a
    new-instance v1, Landroid/telephony/CallAttributes;

    new-instance v6, Landroid/telephony/PreciseCallState;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct/range {v6 .. v11}, Landroid/telephony/PreciseCallState;-><init>(IIIII)V

    .line 1609
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CallState;

    invoke-virtual {v3}, Landroid/telephony/CallState;->getNetworkType()I

    move-result v3

    .line 1610
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CallState;

    invoke-virtual {v2}, Landroid/telephony/CallState;->getCallQuality()Landroid/telephony/CallQuality;

    move-result-object v2

    invoke-direct {v1, v6, v3, v2}, Landroid/telephony/CallAttributes;-><init>(Landroid/telephony/PreciseCallState;ILandroid/telephony/CallQuality;)V

    .line 1612
    .end local v7    # "ringingCallState":I
    .end local v8    # "foregroundCallState":I
    .end local v9    # "backgroundCallState":I
    .local v1, "ca":Landroid/telephony/CallAttributes;
    :goto_7a
    new-instance v2, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda29;

    invoke-direct {v2, p0, v0, v1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda29;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/CallAttributes;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1615
    return-void

    nop

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_54
        :pswitch_4e
        :pswitch_48
    .end packed-switch
.end method

.method public final blacklist onCallbackModeRestarted(IJI)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "durationMillis"    # J
    .param p4, "subId"    # I

    .line 1686
    return-void
.end method

.method public final blacklist onCallbackModeStarted(IJI)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "durationMillis"    # J
    .param p4, "subId"    # I

    .line 1679
    return-void
.end method

.method public final blacklist onCallbackModeStopped(III)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "reason"    # I
    .param p3, "subId"    # I

    .line 1692
    return-void
.end method

.method public greylist-max-o onCarrierNetworkChange(Z)V
    .registers 4
    .param p1, "active"    # Z

    .line 1520
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1521
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_b

    return-void

    .line 1523
    :cond_b
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda9;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Z)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1525
    return-void
.end method

.method public final blacklist onCarrierRoamingNtnAvailableServicesChanged([I)V
    .registers 2
    .param p1, "availableServices"    # [I

    .line 1709
    return-void
.end method

.method public final blacklist onCarrierRoamingNtnEligibleStateChanged(Z)V
    .registers 2
    .param p1, "eligible"    # Z

    .line 1704
    return-void
.end method

.method public final blacklist onCarrierRoamingNtnModeChanged(Z)V
    .registers 2
    .param p1, "active"    # Z

    .line 1700
    return-void
.end method

.method public final blacklist onCarrierRoamingNtnSignalStrengthChanged(Landroid/telephony/satellite/NtnSignalStrength;)V
    .registers 2
    .param p1, "ntnSignalStrength"    # Landroid/telephony/satellite/NtnSignalStrength;

    .line 1714
    return-void
.end method

.method public greylist-max-o onCellInfoChanged(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1424
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1425
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_b

    return-void

    .line 1427
    :cond_b
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda46;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda46;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Ljava/util/List;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1429
    return-void
.end method

.method public blacklist onCellLocationChanged(Landroid/telephony/CellIdentity;)V
    .registers 5
    .param p1, "cellIdentity"    # Landroid/telephony/CellIdentity;

    .line 1366
    if-nez p1, :cond_7

    invoke-static {}, Landroid/telephony/CellLocation;->getEmpty()Landroid/telephony/CellLocation;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-virtual {p1}, Landroid/telephony/CellIdentity;->asCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 1367
    .local v0, "location":Landroid/telephony/CellLocation;
    :goto_b
    iget-object v1, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/PhoneStateListener;

    .line 1368
    .local v1, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v1, :cond_16

    return-void

    .line 1370
    :cond_16
    new-instance v2, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda34;

    invoke-direct {v2, p0, v1, v0}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda34;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/CellLocation;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1372
    return-void
.end method

.method public final blacklist onCellularIdentifierDisclosedChanged(Landroid/telephony/CellularIdentifierDisclosure;)V
    .registers 2
    .param p1, "disclosure"    # Landroid/telephony/CellularIdentifierDisclosure;

    .line 1723
    return-void
.end method

.method public greylist-max-o onDataActivationStateChanged(I)V
    .registers 4
    .param p1, "activationState"    # I

    .line 1485
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1486
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_b

    return-void

    .line 1488
    :cond_b
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1491
    return-void
.end method

.method public greylist-max-o onDataActivity(I)V
    .registers 4
    .param p1, "direction"    # I

    .line 1408
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1409
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_b

    return-void

    .line 1411
    :cond_b
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda28;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1413
    return-void
.end method

.method public greylist-max-o onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .registers 4
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .line 1459
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1460
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_b

    return-void

    .line 1462
    :cond_b
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda7;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/DataConnectionRealTimeInfo;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1465
    return-void
.end method

.method public greylist-max-o onDataConnectionStateChanged(II)V
    .registers 6
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .line 1387
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1388
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_b

    return-void

    .line 1390
    :cond_b
    const/4 v1, 0x4

    if-ne p1, v1, :cond_23

    .line 1391
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v1

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_23

    .line 1392
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda58;

    invoke-direct {v1, p0, v0, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda58;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    goto :goto_2b

    .line 1399
    :cond_23
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda59;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda59;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;II)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1405
    :goto_2b
    return-void
.end method

.method public blacklist onDataEnabledChanged(ZI)V
    .registers 3
    .param p1, "enabled"    # Z
    .param p2, "reason"    # I

    .line 1659
    return-void
.end method

.method public blacklist onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .registers 4
    .param p1, "telephonyDisplayInfo"    # Landroid/telephony/TelephonyDisplayInfo;

    .line 1503
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1504
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_b

    return-void

    .line 1506
    :cond_b
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/TelephonyDisplayInfo;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1509
    return-void
.end method

.method public blacklist onEmergencyNumberListChanged(Ljava/util/Map;)V
    .registers 4
    .param p1, "emergencyNumberList"    # Ljava/util/Map;

    .line 1528
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1529
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_b

    return-void

    .line 1531
    :cond_b
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda48;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda48;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Ljava/util/Map;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1534
    return-void
.end method

.method public blacklist onImsCallDisconnectCauseChanged(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "disconnectCause"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1626
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1627
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_b

    return-void

    .line 1629
    :cond_b
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1632
    return-void
.end method

.method public blacklist onLegacyCallStateChanged(ILjava/lang/String;)V
    .registers 5
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .line 1375
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1376
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_b

    return-void

    .line 1378
    :cond_b
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda21;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;ILjava/lang/String;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1380
    return-void
.end method

.method public blacklist onLinkCapacityEstimateChanged(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/LinkCapacityEstimate;",
            ">;)V"
        }
    .end annotation

    .line 1668
    .local p1, "linkCapacityEstimateList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/LinkCapacityEstimate;>;"
    return-void
.end method

.method public final blacklist onMediaQualityStatusChanged(Landroid/telephony/ims/MediaQualityStatus;)V
    .registers 2
    .param p1, "mediaQualityStatus"    # Landroid/telephony/ims/MediaQualityStatus;

    .line 1672
    return-void
.end method

.method public greylist-max-o onMessageWaitingIndicatorChanged(Z)V
    .registers 4
    .param p1, "mwi"    # Z

    .line 1347
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1348
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_b

    return-void

    .line 1350
    :cond_b
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda19;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Z)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1352
    return-void
.end method

.method public greylist-max-o onOemHookRawEvent([B)V
    .registers 4
    .param p1, "rawData"    # [B

    .line 1512
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1513
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_b

    return-void

    .line 1515
    :cond_b
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda42;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda42;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;[B)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1517
    return-void
.end method

.method public blacklist onOutgoingEmergencyCall(Landroid/telephony/emergency/EmergencyNumber;I)V
    .registers 5
    .param p1, "placedEmergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p2, "subscriptionId"    # I

    .line 1538
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1539
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_b

    return-void

    .line 1541
    :cond_b
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda54;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda54;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1545
    return-void
.end method

.method public blacklist onOutgoingEmergencySms(Landroid/telephony/emergency/EmergencyNumber;I)V
    .registers 5
    .param p1, "sentEmergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p2, "subscriptionId"    # I

    .line 1549
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1550
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_b

    return-void

    .line 1552
    :cond_b
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda13;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1555
    return-void
.end method

.method public blacklist onPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
    .registers 4
    .param p1, "capability"    # Landroid/telephony/PhoneCapability;

    .line 1558
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1559
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_b

    return-void

    .line 1561
    :cond_b
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda63;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda63;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/PhoneCapability;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1563
    return-void
.end method

.method public blacklist onPhysicalChannelConfigChanged(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 1655
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    return-void
.end method

.method public greylist-max-o onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .registers 4
    .param p1, "callState"    # Landroid/telephony/PreciseCallState;

    .line 1432
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1433
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_b

    return-void

    .line 1435
    :cond_b
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda45;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda45;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseCallState;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1437
    return-void
.end method

.method public greylist-max-o onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .registers 4
    .param p1, "dataConnectionState"    # Landroid/telephony/PreciseDataConnectionState;

    .line 1450
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1451
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_b

    return-void

    .line 1453
    :cond_b
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda22;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseDataConnectionState;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1456
    return-void
.end method

.method public blacklist onRadioPowerStateChanged(I)V
    .registers 4
    .param p1, "state"    # I

    .line 1566
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1567
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_b

    return-void

    .line 1569
    :cond_b
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda52;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda52;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1571
    return-void
.end method

.method public blacklist onRegistrationFailed(Landroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .registers 15
    .param p1, "cellIdentity"    # Landroid/telephony/CellIdentity;
    .param p2, "chosenPlmn"    # Ljava/lang/String;
    .param p3, "domain"    # I
    .param p4, "causeCode"    # I
    .param p5, "additionalCauseCode"    # I

    .line 1636
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/telephony/PhoneStateListener;

    .line 1637
    .local v3, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v3, :cond_c

    return-void

    .line 1639
    :cond_c
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda60;

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
    invoke-direct/range {v1 .. v8}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda60;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1643
    return-void
.end method

.method public final blacklist onSecurityAlgorithmsChanged(Landroid/telephony/SecurityAlgorithmUpdate;)V
    .registers 2
    .param p1, "update"    # Landroid/telephony/SecurityAlgorithmUpdate;

    .line 1718
    return-void
.end method

.method public greylist-max-o onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 1331
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1332
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_b

    return-void

    .line 1334
    :cond_b
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda62;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda62;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/ServiceState;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1336
    return-void
.end method

.method public greylist-max-o onSignalStrengthChanged(I)V
    .registers 4
    .param p1, "asu"    # I

    .line 1339
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1340
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_b

    return-void

    .line 1342
    :cond_b
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda17;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1344
    return-void
.end method

.method public greylist-max-o onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .registers 4
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 1416
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1417
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_b

    return-void

    .line 1419
    :cond_b
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda31;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/SignalStrength;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1421
    return-void
.end method

.method public final blacklist onSimultaneousCallingStateChanged([I)V
    .registers 2
    .param p1, "subIds"    # [I

    .line 1696
    return-void
.end method

.method public blacklist onSrvccStateChanged(I)V
    .registers 4
    .param p1, "state"    # I

    .line 1468
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1469
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_b

    return-void

    .line 1471
    :cond_b
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda35;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda35;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1473
    return-void
.end method

.method public greylist-max-o onUserMobileDataStateChanged(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 1494
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1495
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_b

    return-void

    .line 1497
    :cond_b
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda18;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Z)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1500
    return-void
.end method

.method public greylist-max-o onVoiceActivationStateChanged(I)V
    .registers 4
    .param p1, "activationState"    # I

    .line 1476
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1477
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_b

    return-void

    .line 1479
    :cond_b
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda10;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1482
    return-void
.end method
