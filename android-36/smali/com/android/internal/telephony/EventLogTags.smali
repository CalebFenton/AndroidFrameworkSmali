.class public Lcom/android/internal/telephony/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final blacklist BAD_IP_ADDRESS:I = 0xc3c5

.field public static final blacklist CALL_DROP:I = 0xc3ba

.field public static final blacklist CDMA_DATA_DROP:I = 0xc3bf

.field public static final blacklist CDMA_DATA_SETUP_FAILED:I = 0xc3be

.field public static final blacklist CDMA_DATA_STATE_CHANGE:I = 0xc3c3

.field public static final blacklist CDMA_SERVICE_STATE_CHANGE:I = 0xc3c4

.field public static final blacklist DATA_NETWORK_REGISTRATION_FAIL:I = 0xc3bb

.field public static final blacklist DATA_NETWORK_STATUS_ON_RADIO_OFF:I = 0xc3bc

.field public static final blacklist DATA_STALL_RECOVERY_CLEANUP:I = 0xc3c7

.field public static final blacklist DATA_STALL_RECOVERY_GET_DATA_CALL_LIST:I = 0xc3c6

.field public static final blacklist DATA_STALL_RECOVERY_RADIO_RESTART:I = 0xc3c9

.field public static final blacklist DATA_STALL_RECOVERY_RADIO_RESTART_WITH_PROP:I = 0xc3ca

.field public static final blacklist DATA_STALL_RECOVERY_REREGISTER:I = 0xc3c8

.field public static final blacklist EXP_DET_SMS_DENIED_BY_USER:I = 0xc3cd

.field public static final blacklist EXP_DET_SMS_SENT_BY_USER:I = 0xc3d0

.field public static final blacklist GSM_DATA_STATE_CHANGE:I = 0xc3c1

.field public static final blacklist GSM_RAT_SWITCHED:I = 0xc3c0

.field public static final blacklist GSM_RAT_SWITCHED_NEW:I = 0xc3cb

.field public static final blacklist GSM_SERVICE_STATE_CHANGE:I = 0xc3c2

.field public static final blacklist PDP_BAD_DNS_ADDRESS:I = 0xc3b4

.field public static final blacklist PDP_CONTEXT_RESET:I = 0xc3b7

.field public static final blacklist PDP_NETWORK_DROP:I = 0xc3bd

.field public static final blacklist PDP_RADIO_RESET:I = 0xc3b6

.field public static final blacklist PDP_RADIO_RESET_COUNTDOWN_TRIGGERED:I = 0xc3b5

.field public static final blacklist PDP_REREGISTER_NETWORK:I = 0xc3b8

.field public static final blacklist PDP_SETUP_FAIL:I = 0xc3b9


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist writeBadIpAddress(Ljava/lang/String;)V
    .registers 2

    const v0, 0xc3c5

    .line 160
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    return-void
.end method

.method public static blacklist writeCallDrop(III)V
    .registers 3

    .line 116
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0xc3ba

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static blacklist writeCdmaDataDrop(II)V
    .registers 2

    .line 136
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0xc3bf

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static blacklist writeCdmaDataSetupFailed(III)V
    .registers 3

    .line 132
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0xc3be

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static blacklist writeCdmaDataStateChange(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const v0, 0xc3c3

    .line 152
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static blacklist writeCdmaServiceStateChange(IIII)V
    .registers 4

    .line 156
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0xc3c4

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static blacklist writeDataNetworkRegistrationFail(II)V
    .registers 2

    .line 120
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0xc3bb

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static blacklist writeDataNetworkStatusOnRadioOff(Ljava/lang/String;I)V
    .registers 2

    .line 124
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0xc3bc

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static blacklist writeDataStallRecoveryCleanup(I)V
    .registers 2

    const v0, 0xc3c7

    .line 168
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    return-void
.end method

.method public static blacklist writeDataStallRecoveryGetDataCallList(I)V
    .registers 2

    const v0, 0xc3c6

    .line 164
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    return-void
.end method

.method public static blacklist writeDataStallRecoveryRadioRestart(I)V
    .registers 2

    const v0, 0xc3c9

    .line 176
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    return-void
.end method

.method public static blacklist writeDataStallRecoveryRadioRestartWithProp(I)V
    .registers 2

    const v0, 0xc3ca

    .line 180
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    return-void
.end method

.method public static blacklist writeDataStallRecoveryReregister(I)V
    .registers 2

    const v0, 0xc3c8

    .line 172
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    return-void
.end method

.method public static blacklist writeExpDetSmsDeniedByUser(Ljava/lang/String;)V
    .registers 2

    const v0, 0xc3cd

    .line 188
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    return-void
.end method

.method public static blacklist writeExpDetSmsSentByUser(Ljava/lang/String;)V
    .registers 2

    const v0, 0xc3d0

    .line 192
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    return-void
.end method

.method public static blacklist writeGsmDataStateChange(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const v0, 0xc3c1

    .line 144
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static blacklist writeGsmRatSwitched(III)V
    .registers 3

    .line 140
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0xc3c0

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static blacklist writeGsmRatSwitchedNew(III)V
    .registers 3

    .line 184
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0xc3cb

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static blacklist writeGsmServiceStateChange(IIII)V
    .registers 4

    .line 148
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0xc3c2

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static blacklist writePdpBadDnsAddress(Ljava/lang/String;)V
    .registers 2

    const v0, 0xc3b4

    .line 92
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    return-void
.end method

.method public static blacklist writePdpContextReset(I)V
    .registers 2

    const v0, 0xc3b7

    .line 104
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    return-void
.end method

.method public static blacklist writePdpNetworkDrop(II)V
    .registers 2

    .line 128
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0xc3bd

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static blacklist writePdpRadioReset(I)V
    .registers 2

    const v0, 0xc3b6

    .line 100
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    return-void
.end method

.method public static blacklist writePdpRadioResetCountdownTriggered(I)V
    .registers 2

    const v0, 0xc3b5

    .line 96
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    return-void
.end method

.method public static blacklist writePdpReregisterNetwork(I)V
    .registers 2

    const v0, 0xc3b8

    .line 108
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    return-void
.end method

.method public static blacklist writePdpSetupFail(III)V
    .registers 3

    .line 112
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0xc3b9

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method
