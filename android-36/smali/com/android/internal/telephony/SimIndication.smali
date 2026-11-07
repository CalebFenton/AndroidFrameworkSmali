.class public Lcom/android/internal/telephony/SimIndication;
.super Landroid/hardware/radio/sim/IRadioSimIndication$Stub;
.source "SimIndication.java"


# instance fields
.field private final blacklist mRil:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 2

    .line 49
    invoke-direct {p0}, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    return-void
.end method


# virtual methods
.method public blacklist carrierInfoForImsiEncryption(I)V
    .registers 4

    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 60
    iget-object p1, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_16

    .line 61
    iget-object p1, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v1, 0x418

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 64
    :cond_16
    iget-object p0, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCarrierInfoForImsiEncryptionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p1, Landroid/os/AsyncResult;

    invoke-direct {p1, v0, v0, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist cdmaSubscriptionSourceChanged(II)V
    .registers 5

    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 76
    filled-new-array {p2}, [I

    move-result-object p1

    .line 77
    iget-object p2, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_19

    .line 78
    iget-object p2, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x407

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 81
    :cond_19
    iget-object p0, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSubscriptionChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 1

    .line 238
    const-string p0, "fc1a19a4f86a58981158cc8d956763c9d8ace630"

    return-object p0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 1

    .line 0
    const/4 p0, 0x4

    return p0
.end method

.method public blacklist simPhonebookChanged(I)V
    .registers 4

    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 92
    iget-object p1, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 93
    iget-object p1, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x41d

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 96
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSimPhonebookChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public blacklist simPhonebookRecordsReceived(IB[Landroid/hardware/radio/sim/PhonebookRecordInfo;)V
    .registers 7

    .line 107
    iget-object v0, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 109
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    array-length v0, p3

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_1b

    aget-object v2, p3, v1

    .line 112
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertHalPhonebookRecordInfo(Landroid/hardware/radio/sim/PhonebookRecordInfo;)Lcom/android/internal/telephony/uicc/SimPhonebookRecord;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 115
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p3, p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " records"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/16 v1, 0x41e

    invoke-virtual {v0, v1, p3}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 121
    :cond_49
    iget-object p0, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSimPhonebookRecordsReceivedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p3, Landroid/os/AsyncResult;

    new-instance v0, Lcom/android/internal/telephony/uicc/ReceivedPhonebookRecords;

    invoke-direct {v0, p2, p1}, Lcom/android/internal/telephony/uicc/ReceivedPhonebookRecords;-><init>(ILjava/util/List;)V

    const/4 p1, 0x0

    invoke-direct {p3, p1, v0, p1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist simRefresh(ILandroid/hardware/radio/sim/SimRefreshResult;)V
    .registers 5

    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 134
    new-instance p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    invoke-direct {p1}, Lcom/android/internal/telephony/uicc/IccRefreshResponse;-><init>()V

    .line 135
    iget v0, p2, Landroid/hardware/radio/sim/SimRefreshResult;->type:I

    iput v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    .line 136
    iget v0, p2, Landroid/hardware/radio/sim/SimRefreshResult;->efId:I

    iput v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    .line 137
    iget-object p2, p2, Landroid/hardware/radio/sim/SimRefreshResult;->aid:Ljava/lang/String;

    iput-object p2, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    .line 139
    iget-object p2, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_26

    iget-object p2, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f9

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 141
    :cond_26
    iget-object p0, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccRefreshRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist simStatusChanged(I)V
    .registers 4

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 151
    iget-object p1, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3fb

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 153
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccStatusChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public blacklist stkEventNotify(ILjava/lang/String;)V
    .registers 5

    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 166
    iget-object p1, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f6

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 168
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatEventRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_24

    .line 169
    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_24
    return-void
.end method

.method public blacklist stkProactiveCommand(ILjava/lang/String;)V
    .registers 5

    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 182
    iget-object p1, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f5

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 184
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatProCmdRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_24

    .line 185
    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_24
    return-void
.end method

.method public blacklist stkSessionEnd(I)V
    .registers 4

    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 196
    iget-object p1, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f4

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 198
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatSessionEndRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_24

    .line 199
    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_24
    return-void
.end method

.method public blacklist subscriptionStatusChanged(IZ)V
    .registers 5

    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 211
    filled-new-array {p2}, [I

    move-result-object p1

    .line 213
    iget-object p2, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_19

    .line 214
    iget-object p2, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x40e

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 217
    :cond_19
    iget-object p0, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSubscriptionStatusRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist uiccApplicationsEnablementChanged(IZ)V
    .registers 5

    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 229
    iget-object p1, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 230
    iget-object p1, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x44f

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 233
    :cond_19
    iget-object p0, p0, Lcom/android/internal/telephony/SimIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mUiccApplicationsEnablementRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method
