.class public Lcom/android/internal/telephony/RadioConfigIndicationAidl;
.super Landroid/hardware/radio/config/IRadioConfigIndication$Stub;
.source "RadioConfigIndicationAidl.java"


# instance fields
.field private final blacklist mRadioConfig:Lcom/android/internal/telephony/RadioConfig;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/RadioConfig;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Landroid/hardware/radio/config/IRadioConfigIndication$Stub;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/internal/telephony/RadioConfigIndicationAidl;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    return-void
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .registers 4

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioConfigIndicationAidl"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v0, 0x200000

    .line 73
    const-string v2, "RIL"

    invoke-static {v0, v1, v2, p0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 1

    .line 78
    const-string p0, "fc7eeb47f5238e538dead4af7575507920c359f7"

    return-object p0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 1

    .line 0
    const/4 p0, 0x4

    return p0
.end method

.method public blacklist onSimultaneousCallingSupportChanged([I)V
    .registers 4

    if-nez p1, :cond_5

    .line 61
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_9

    .line 62
    :cond_5
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([I)Ljava/util/ArrayList;

    move-result-object p1

    .line 63
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSimultaneousCallingSupportChanged: enabledLogicalSlots = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RadioConfigIndicationAidl;->logd(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfigIndicationAidl;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    iget-object v0, v0, Lcom/android/internal/telephony/RadioConfig;->mSimultaneousCallingSupportStatusRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_35

    .line 65
    const-string v0, "onSimultaneousCallingSupportChanged: notifying registrant"

    invoke-static {v0}, Lcom/android/internal/telephony/RadioConfigIndicationAidl;->logd(Ljava/lang/String;)V

    .line 66
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfigIndicationAidl;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfig;->mSimultaneousCallingSupportStatusRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_35
    return-void
.end method

.method public blacklist simSlotsStatusChanged(I[Landroid/hardware/radio/config/SimSlotStatus;)V
    .registers 4

    .line 48
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalSlotStatus(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 49
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UNSOL_SIM_SLOT_STATUS_CHANGED "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/telephony/RadioConfigIndicationAidl;->logd(Ljava/lang/String;)V

    .line 50
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfigIndicationAidl;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfig;->mSimSlotStatusRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_2b

    .line 51
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_2b
    return-void
.end method
