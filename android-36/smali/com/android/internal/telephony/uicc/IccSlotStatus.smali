.class public Lcom/android/internal/telephony/uicc/IccSlotStatus;
.super Ljava/lang/Object;
.source "IccSlotStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;
    }
.end annotation


# static fields
.field public static final blacklist STATE_ACTIVE:I = 0x1


# instance fields
.field public blacklist atr:Ljava/lang/String;

.field public blacklist cardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field public blacklist eid:Ljava/lang/String;

.field public blacklist mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

.field public blacklist mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sget-object v0, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->NONE:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_39

    .line 142
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_39

    .line 146
    :cond_12
    check-cast p1, Lcom/android/internal/telephony/uicc/IccSlotStatus;

    .line 147
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccSlotStatus;->cardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iget-object v3, p1, Lcom/android/internal/telephony/uicc/IccSlotStatus;->cardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v2, v3, :cond_39

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccSlotStatus;->atr:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/telephony/uicc/IccSlotStatus;->atr:Ljava/lang/String;

    .line 148
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccSlotStatus;->eid:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/telephony/uicc/IccSlotStatus;->eid:Ljava/lang/String;

    .line 149
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    iget-object p1, p1, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    .line 150
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_39

    return v0

    :cond_39
    :goto_39
    return v1
.end method

.method public blacklist setCardState(I)V
    .registers 4

    if-eqz p1, :cond_31

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_27

    const/4 v0, 0x3

    if-ne p1, v0, :cond_10

    .line 89
    sget-object p1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_RESTRICTED:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccSlotStatus;->cardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    return-void

    .line 92
    :cond_10
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized RIL_CardState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 86
    :cond_27
    sget-object p1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccSlotStatus;->cardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    return-void

    .line 83
    :cond_2c
    sget-object p1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccSlotStatus;->cardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    return-void

    .line 80
    :cond_31
    sget-object p1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccSlotStatus;->cardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    return-void
.end method

.method public blacklist setMultipleEnabledProfilesMode(I)V
    .registers 4

    if-eqz p1, :cond_31

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_27

    const/4 v0, 0x3

    if-ne p1, v0, :cond_10

    .line 111
    sget-object p1, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->MEP_B:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    return-void

    .line 114
    :cond_10
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized RIL_MultipleEnabledProfilesMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 108
    :cond_27
    sget-object p1, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->MEP_A2:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    return-void

    .line 105
    :cond_2c
    sget-object p1, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->MEP_A1:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    return-void

    .line 102
    :cond_31
    sget-object p1, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->NONE:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    const-string v1, "IccSlotStatus {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccSlotStatus;->cardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "atr="

    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccSlotStatus;->atr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "eid="

    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccSlotStatus;->eid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    if-eqz v1, :cond_67

    .line 125
    const-string v1, "num_ports="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 126
    :goto_44
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_6c

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", IccSimPortInfo-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 130
    :cond_67
    const-string v1, "num_ports=null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_6c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", SupportedMepMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
