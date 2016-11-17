.class public Lcom/android/internal/telephony/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final BAD_IP_ADDRESS:I = 0xc3c5

.field public static final CALL_DROP:I = 0xc3ba

.field public static final CDMA_DATA_DROP:I = 0xc3bf

.field public static final CDMA_DATA_SETUP_FAILED:I = 0xc3be

.field public static final CDMA_DATA_STATE_CHANGE:I = 0xc3c3

.field public static final CDMA_SERVICE_STATE_CHANGE:I = 0xc3c4

.field public static final DATA_NETWORK_REGISTRATION_FAIL:I = 0xc3bb

.field public static final DATA_NETWORK_STATUS_ON_RADIO_OFF:I = 0xc3bc

.field public static final DATA_STALL_RECOVERY_CLEANUP:I = 0xc3c7

.field public static final DATA_STALL_RECOVERY_GET_DATA_CALL_LIST:I = 0xc3c6

.field public static final DATA_STALL_RECOVERY_RADIO_RESTART:I = 0xc3c9

.field public static final DATA_STALL_RECOVERY_RADIO_RESTART_WITH_PROP:I = 0xc3ca

.field public static final DATA_STALL_RECOVERY_REREGISTER:I = 0xc3c8

.field public static final EXP_DET_SMS_DENIED_BY_USER:I = 0xc3cd

.field public static final EXP_DET_SMS_SENT_BY_USER:I = 0xc3d0

.field public static final GSM_DATA_STATE_CHANGE:I = 0xc3c1

.field public static final GSM_RAT_SWITCHED:I = 0xc3c0

.field public static final GSM_RAT_SWITCHED_NEW:I = 0xc3cb

.field public static final GSM_SERVICE_STATE_CHANGE:I = 0xc3c2

.field public static final PDP_BAD_DNS_ADDRESS:I = 0xc3b4

.field public static final PDP_CONTEXT_RESET:I = 0xc3b7

.field public static final PDP_NETWORK_DROP:I = 0xc3bd

.field public static final PDP_RADIO_RESET:I = 0xc3b6

.field public static final PDP_RADIO_RESET_COUNTDOWN_TRIGGERED:I = 0xc3b5

.field public static final PDP_REREGISTER_NETWORK:I = 0xc3b8

.field public static final PDP_SETUP_FAIL:I = 0xc3b9


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static writeBadIpAddress(Ljava/lang/String;)V
    .locals 1
    .param p0, "ipAddress"    # Ljava/lang/String;

    #@0
    .prologue
    .line 160
    const v0, 0xc3c5

    #@3
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    #@6
    .line 159
    return-void
.end method

.method public static writeCallDrop(III)V
    .locals 3
    .param p0, "cause"    # I
    .param p1, "cid"    # I
    .param p2, "networkType"    # I

    #@0
    .prologue
    .line 116
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v1

    #@15
    const/4 v2, 0x2

    #@16
    aput-object v1, v0, v2

    #@18
    const v1, 0xc3ba

    #@1b
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@1e
    .line 115
    return-void
.end method

.method public static writeCdmaDataDrop(II)V
    .locals 3
    .param p0, "cid"    # I
    .param p1, "networkType"    # I

    #@0
    .prologue
    .line 136
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    const v1, 0xc3bf

    #@14
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@17
    .line 135
    return-void
.end method

.method public static writeCdmaDataSetupFailed(III)V
    .locals 3
    .param p0, "cause"    # I
    .param p1, "cid"    # I
    .param p2, "networkType"    # I

    #@0
    .prologue
    .line 132
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v1

    #@15
    const/4 v2, 0x2

    #@16
    aput-object v1, v0, v2

    #@18
    const v1, 0xc3be

    #@1b
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@1e
    .line 131
    return-void
.end method

.method public static writeCdmaDataStateChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "oldstate"    # Ljava/lang/String;
    .param p1, "newstate"    # Ljava/lang/String;

    #@0
    .prologue
    .line 152
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p0, v0, v1

    #@6
    const/4 v1, 0x1

    #@7
    aput-object p1, v0, v1

    #@9
    const v1, 0xc3c3

    #@c
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@f
    .line 151
    return-void
.end method

.method public static writeCdmaServiceStateChange(IIII)V
    .locals 3
    .param p0, "oldstate"    # I
    .param p1, "olddatastate"    # I
    .param p2, "newstate"    # I
    .param p3, "newdatastate"    # I

    #@0
    .prologue
    .line 156
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v1

    #@15
    const/4 v2, 0x2

    #@16
    aput-object v1, v0, v2

    #@18
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v1

    #@1c
    const/4 v2, 0x3

    #@1d
    aput-object v1, v0, v2

    #@1f
    const v1, 0xc3c4

    #@22
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@25
    .line 155
    return-void
.end method

.method public static writeDataNetworkRegistrationFail(II)V
    .locals 3
    .param p0, "opNumeric"    # I
    .param p1, "cid"    # I

    #@0
    .prologue
    .line 120
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    const v1, 0xc3bb

    #@14
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@17
    .line 119
    return-void
.end method

.method public static writeDataNetworkStatusOnRadioOff(Ljava/lang/String;I)V
    .locals 3
    .param p0, "dcState"    # Ljava/lang/String;
    .param p1, "enable"    # I

    #@0
    .prologue
    .line 124
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p0, v0, v1

    #@6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    const/4 v2, 0x1

    #@b
    aput-object v1, v0, v2

    #@d
    const v1, 0xc3bc

    #@10
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@13
    .line 123
    return-void
.end method

.method public static writeDataStallRecoveryCleanup(I)V
    .locals 1
    .param p0, "outPacketCount"    # I

    #@0
    .prologue
    .line 168
    const v0, 0xc3c7

    #@3
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    #@6
    .line 167
    return-void
.end method

.method public static writeDataStallRecoveryGetDataCallList(I)V
    .locals 1
    .param p0, "outPacketCount"    # I

    #@0
    .prologue
    .line 164
    const v0, 0xc3c6

    #@3
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    #@6
    .line 163
    return-void
.end method

.method public static writeDataStallRecoveryRadioRestart(I)V
    .locals 1
    .param p0, "outPacketCount"    # I

    #@0
    .prologue
    .line 176
    const v0, 0xc3c9

    #@3
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    #@6
    .line 175
    return-void
.end method

.method public static writeDataStallRecoveryRadioRestartWithProp(I)V
    .locals 1
    .param p0, "outPacketCount"    # I

    #@0
    .prologue
    .line 180
    const v0, 0xc3ca

    #@3
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    #@6
    .line 179
    return-void
.end method

.method public static writeDataStallRecoveryReregister(I)V
    .locals 1
    .param p0, "outPacketCount"    # I

    #@0
    .prologue
    .line 172
    const v0, 0xc3c8

    #@3
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    #@6
    .line 171
    return-void
.end method

.method public static writeExpDetSmsDeniedByUser(Ljava/lang/String;)V
    .locals 1
    .param p0, "appSignature"    # Ljava/lang/String;

    #@0
    .prologue
    .line 188
    const v0, 0xc3cd

    #@3
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    #@6
    .line 187
    return-void
.end method

.method public static writeExpDetSmsSentByUser(Ljava/lang/String;)V
    .locals 1
    .param p0, "appSignature"    # Ljava/lang/String;

    #@0
    .prologue
    .line 192
    const v0, 0xc3d0

    #@3
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    #@6
    .line 191
    return-void
.end method

.method public static writeGsmDataStateChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "oldstate"    # Ljava/lang/String;
    .param p1, "newstate"    # Ljava/lang/String;

    #@0
    .prologue
    .line 144
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p0, v0, v1

    #@6
    const/4 v1, 0x1

    #@7
    aput-object p1, v0, v1

    #@9
    const v1, 0xc3c1

    #@c
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@f
    .line 143
    return-void
.end method

.method public static writeGsmRatSwitched(III)V
    .locals 3
    .param p0, "cid"    # I
    .param p1, "networkFrom"    # I
    .param p2, "networkTo"    # I

    #@0
    .prologue
    .line 140
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v1

    #@15
    const/4 v2, 0x2

    #@16
    aput-object v1, v0, v2

    #@18
    const v1, 0xc3c0

    #@1b
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@1e
    .line 139
    return-void
.end method

.method public static writeGsmRatSwitchedNew(III)V
    .locals 3
    .param p0, "cid"    # I
    .param p1, "networkFrom"    # I
    .param p2, "networkTo"    # I

    #@0
    .prologue
    .line 184
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v1

    #@15
    const/4 v2, 0x2

    #@16
    aput-object v1, v0, v2

    #@18
    const v1, 0xc3cb

    #@1b
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@1e
    .line 183
    return-void
.end method

.method public static writeGsmServiceStateChange(IIII)V
    .locals 3
    .param p0, "oldstate"    # I
    .param p1, "oldgprsstate"    # I
    .param p2, "newstate"    # I
    .param p3, "newgprsstate"    # I

    #@0
    .prologue
    .line 148
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v1

    #@15
    const/4 v2, 0x2

    #@16
    aput-object v1, v0, v2

    #@18
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v1

    #@1c
    const/4 v2, 0x3

    #@1d
    aput-object v1, v0, v2

    #@1f
    const v1, 0xc3c2

    #@22
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@25
    .line 147
    return-void
.end method

.method public static writePdpBadDnsAddress(Ljava/lang/String;)V
    .locals 1
    .param p0, "dnsAddress"    # Ljava/lang/String;

    #@0
    .prologue
    .line 92
    const v0, 0xc3b4

    #@3
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    #@6
    .line 91
    return-void
.end method

.method public static writePdpContextReset(I)V
    .locals 1
    .param p0, "outPacketCount"    # I

    #@0
    .prologue
    .line 104
    const v0, 0xc3b7

    #@3
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    #@6
    .line 103
    return-void
.end method

.method public static writePdpNetworkDrop(II)V
    .locals 3
    .param p0, "cid"    # I
    .param p1, "networkType"    # I

    #@0
    .prologue
    .line 128
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    const v1, 0xc3bd

    #@14
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@17
    .line 127
    return-void
.end method

.method public static writePdpRadioReset(I)V
    .locals 1
    .param p0, "outPacketCount"    # I

    #@0
    .prologue
    .line 100
    const v0, 0xc3b6

    #@3
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    #@6
    .line 99
    return-void
.end method

.method public static writePdpRadioResetCountdownTriggered(I)V
    .locals 1
    .param p0, "outPacketCount"    # I

    #@0
    .prologue
    .line 96
    const v0, 0xc3b5

    #@3
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    #@6
    .line 95
    return-void
.end method

.method public static writePdpReregisterNetwork(I)V
    .locals 1
    .param p0, "outPacketCount"    # I

    #@0
    .prologue
    .line 108
    const v0, 0xc3b8

    #@3
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    #@6
    .line 107
    return-void
.end method

.method public static writePdpSetupFail(III)V
    .locals 3
    .param p0, "cause"    # I
    .param p1, "cid"    # I
    .param p2, "networkType"    # I

    #@0
    .prologue
    .line 112
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v1

    #@15
    const/4 v2, 0x2

    #@16
    aput-object v1, v0, v2

    #@18
    const v1, 0xc3b9

    #@1b
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@1e
    .line 111
    return-void
.end method
