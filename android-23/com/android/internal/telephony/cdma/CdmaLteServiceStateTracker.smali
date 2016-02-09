.class public Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;
.super Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
.source "CdmaLteServiceStateTracker.java"


# static fields
.field private static synthetic -com_android_internal_telephony_CommandsInterface$RadioStateSwitchesValues:[I = null

.field private static final EVENT_ALL_DATA_DISCONNECTED:I = 0x3e9


# instance fields
.field private mCdmaLtePhone:Lcom/android/internal/telephony/cdma/CDMALTEPhone;

.field private final mCellInfoLte:Landroid/telephony/CellInfoLte;

.field private mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

.field private mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;


# direct methods
.method private static synthetic -getcom_android_internal_telephony_CommandsInterface$RadioStateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->-com_android_internal_telephony_CommandsInterface$RadioStateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->-com_android_internal_telephony_CommandsInterface$RadioStateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->values()[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@19
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x3

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@22
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x2

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    #@29
    :goto_2
    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->-com_android_internal_telephony_CommandsInterface$RadioStateSwitchesValues:[I

    #@2b
    return-object v0

    #@2c
    :catch_0
    move-exception v1

    #@2d
    goto :goto_2

    #@2e
    :catch_1
    move-exception v1

    #@2f
    goto :goto_1

    #@30
    :catch_2
    move-exception v1

    #@31
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMALTEPhone;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    #@0
    .prologue
    .line 72
    new-instance v0, Landroid/telephony/CellInfoLte;

    #@2
    invoke-direct {v0}, Landroid/telephony/CellInfoLte;-><init>()V

    #@5
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Landroid/telephony/CellInfo;)V

    #@8
    .line 68
    new-instance v0, Landroid/telephony/CellIdentityLte;

    #@a
    invoke-direct {v0}, Landroid/telephony/CellIdentityLte;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    #@f
    .line 69
    new-instance v0, Landroid/telephony/CellIdentityLte;

    #@11
    invoke-direct {v0}, Landroid/telephony/CellIdentityLte;-><init>()V

    #@14
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

    #@16
    .line 73
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCdmaLtePhone:Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    #@18
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCdmaLtePhone:Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    #@1a
    const/16 v1, 0x10

    #@1c
    const/4 v2, 0x0

    #@1d
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    #@20
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    #@22
    check-cast v0, Landroid/telephony/CellInfoLte;

    #@24
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    #@26
    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    #@28
    check-cast v0, Landroid/telephony/CellInfoLte;

    #@2a
    new-instance v1, Landroid/telephony/CellSignalStrengthLte;

    #@2c
    invoke-direct {v1}, Landroid/telephony/CellSignalStrengthLte;-><init>()V

    #@2f
    invoke-virtual {v0, v1}, Landroid/telephony/CellInfoLte;->setCellSignalStrength(Landroid/telephony/CellSignalStrengthLte;)V

    #@32
    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    #@34
    check-cast v0, Landroid/telephony/CellInfoLte;

    #@36
    new-instance v1, Landroid/telephony/CellIdentityLte;

    #@38
    invoke-direct {v1}, Landroid/telephony/CellIdentityLte;-><init>()V

    #@3b
    invoke-virtual {v0, v1}, Landroid/telephony/CellInfoLte;->setCellIdentity(Landroid/telephony/CellIdentityLte;)V

    #@3e
    .line 80
    const-string/jumbo v0, "CdmaLteServiceStateTracker Constructors"

    #@41
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    #@44
    .line 71
    return-void
.end method

.method private isInHomeSidNid(II)Z
    .locals 6
    .param p1, "sid"    # I
    .param p2, "nid"    # I

    #@0
    .prologue
    const v5, 0xffff

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 630
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isSidsAllZeros()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    return v4

    #@c
    .line 633
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeSystemId:[I

    #@e
    array-length v1, v1

    #@f
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeNetworkId:[I

    #@11
    array-length v2, v2

    #@12
    if-eq v1, v2, :cond_1

    #@14
    return v4

    #@15
    .line 635
    :cond_1
    if-nez p1, :cond_2

    #@17
    return v4

    #@18
    .line 637
    :cond_2
    const/4 v0, 0x0

    #@19
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeSystemId:[I

    #@1b
    array-length v1, v1

    #@1c
    if-ge v0, v1, :cond_6

    #@1e
    .line 640
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeSystemId:[I

    #@20
    aget v1, v1, v0

    #@22
    if-ne v1, p1, :cond_5

    #@24
    .line 641
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeNetworkId:[I

    #@26
    aget v1, v1, v0

    #@28
    if-eqz v1, :cond_3

    #@2a
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeNetworkId:[I

    #@2c
    aget v1, v1, v0

    #@2e
    if-ne v1, v5, :cond_4

    #@30
    .line 643
    :cond_3
    return v4

    #@31
    .line 642
    :cond_4
    if-eqz p2, :cond_3

    #@33
    if-eq p2, v5, :cond_3

    #@35
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeNetworkId:[I

    #@37
    aget v1, v1, v0

    #@39
    if-eq v1, p2, :cond_3

    #@3b
    .line 637
    :cond_5
    add-int/lit8 v0, v0, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 647
    :cond_6
    return v3
.end method


# virtual methods
.method public dispose()V
    .locals 1

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@2
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unregisterForSimRecordsLoaded(Landroid/os/Handler;)V

    #@5
    .line 86
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->dispose()V

    #@8
    .line 84
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 739
    const-string/jumbo v0, "CdmaLteServiceStateTracker extends:"

    #@3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 740
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@9
    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v1, " mCdmaLtePhone="

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCdmaLtePhone:Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22
    .line 738
    return-void
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 657
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRilVersion()I

    #@5
    move-result v1

    #@6
    const/16 v2, 0x8

    #@8
    if-lt v1, v2, :cond_0

    #@a
    .line 658
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getAllCellInfo()Ljava/util/List;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 660
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@14
    .line 662
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    #@16
    monitor-enter v2

    #@17
    .line 663
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    #@19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    monitor-exit v2

    #@1d
    .line 665
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v2, "getAllCellInfo: arrayList="

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    #@34
    .line 666
    return-object v0

    #@35
    .line 662
    :catchall_0
    move-exception v1

    #@36
    monitor-exit v2

    #@37
    throw v1
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3

    #@0
    .prologue
    .line 672
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@4
    check-cast v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    #@6
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getPhoneId()I

    #@9
    move-result v0

    #@a
    .line 673
    const/4 v2, 0x2

    #@b
    .line 672
    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 95
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@2
    iget-boolean v3, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsTheCurrentActivePhone:Z

    #@4
    if-nez v3, :cond_0

    #@6
    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v4, "Received message "

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    const-string/jumbo v4, "["

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    iget v4, p1, Landroid/os/Message;->what:I

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    const-string/jumbo v4, "]"

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    .line 97
    const-string/jumbo v4, " while being destroyed. Ignoring."

    #@2d
    .line 96
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    #@38
    .line 98
    return-void

    #@39
    .line 101
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v4, "handleMessage: "

    #@41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    iget v4, p1, Landroid/os/Message;->what:I

    #@47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    #@52
    .line 102
    iget v3, p1, Landroid/os/Message;->what:I

    #@54
    sparse-switch v3, :sswitch_data_0

    #@57
    .line 146
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    #@5a
    .line 90
    :goto_0
    return-void

    #@5b
    .line 104
    :sswitch_0
    const-string/jumbo v3, "handleMessage EVENT_POLL_STATE_GPRS"

    #@5e
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    #@61
    .line 105
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@63
    check-cast v0, Landroid/os/AsyncResult;

    #@65
    .line 106
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->what:I

    #@67
    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    #@6a
    goto :goto_0

    #@6b
    .line 109
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updatePhoneObject()V

    #@6e
    .line 110
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@70
    check-cast v2, Lcom/android/internal/telephony/uicc/RuimRecords;

    #@72
    .line 111
    .local v2, "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    if-eqz v2, :cond_2

    #@74
    .line 112
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->isProvisioned()Z

    #@77
    move-result v3

    #@78
    if-eqz v3, :cond_1

    #@7a
    .line 113
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    #@7d
    move-result-object v3

    #@7e
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mMdn:Ljava/lang/String;

    #@80
    .line 114
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMin()Ljava/lang/String;

    #@83
    move-result-object v3

    #@84
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mMin:Ljava/lang/String;

    #@86
    .line 115
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->getSid()Ljava/lang/String;

    #@89
    move-result-object v3

    #@8a
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->getNid()Ljava/lang/String;

    #@8d
    move-result-object v4

    #@8e
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->parseSidNid(Ljava/lang/String;Ljava/lang/String;)V

    #@91
    .line 116
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->getPrlVersion()Ljava/lang/String;

    #@94
    move-result-object v3

    #@95
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    #@97
    .line 117
    const/4 v3, 0x1

    #@98
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIsMinInfoReady:Z

    #@9a
    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updateOtaspState()V

    #@9d
    .line 123
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@9f
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->prepareEri()V

    #@a2
    .line 127
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->pollState()V

    #@a5
    goto :goto_0

    #@a6
    .line 130
    .end local v2    # "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updatePhoneObject()V

    #@a9
    goto :goto_0

    #@aa
    .line 133
    :sswitch_3
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    #@ad
    move-result v1

    #@ae
    .line 134
    .local v1, "dds":I
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    #@b1
    move-result-object v3

    #@b2
    invoke-virtual {v3, v1, p0}, Lcom/android/internal/telephony/ProxyController;->unregisterForAllDataDisconnected(ILandroid/os/Handler;)V

    #@b5
    .line 135
    monitor-enter p0

    #@b6
    .line 136
    :try_start_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    #@b8
    if-eqz v3, :cond_3

    #@ba
    .line 137
    const-string/jumbo v3, "EVENT_ALL_DATA_DISCONNECTED, turn radio off now."

    #@bd
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    #@c0
    .line 138
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->hangupAndPowerOff()V

    #@c3
    .line 139
    const/4 v3, 0x0

    #@c4
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c6
    :goto_1
    monitor-exit p0

    #@c7
    goto :goto_0

    #@c8
    .line 141
    :cond_3
    :try_start_1
    const-string/jumbo v3, "EVENT_ALL_DATA_DISCONNECTED is stale"

    #@cb
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@ce
    goto :goto_1

    #@cf
    .line 135
    :catchall_0
    move-exception v3

    #@d0
    monitor-exit p0

    #@d1
    throw v3

    #@d2
    .line 102
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x10 -> :sswitch_2
        0x1b -> :sswitch_1
        0x3e9 -> :sswitch_3
    .end sparse-switch
.end method

.method protected handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    .locals 17
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 155
    const/4 v1, 0x5

    #@1
    move/from16 v0, p1

    #@3
    if-ne v0, v1, :cond_2

    #@5
    .line 156
    move-object/from16 v0, p2

    #@7
    iget-object v14, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@9
    check-cast v14, [Ljava/lang/String;

    #@b
    .line 158
    .local v14, "states":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v16, "handlePollStateResultMessage: EVENT_POLL_STATE_GPRS states.length="

    #@13
    move-object/from16 v0, v16

    #@15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    .line 159
    array-length v0, v14

    #@1a
    move/from16 v16, v0

    #@1c
    .line 158
    move/from16 v0, v16

    #@1e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    .line 159
    const-string/jumbo v16, " states="

    #@25
    .line 158
    move-object/from16 v0, v16

    #@27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    move-object/from16 v0, p0

    #@35
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    #@38
    .line 162
    const/4 v15, 0x0

    #@39
    .line 163
    .local v15, "type":I
    const/4 v13, -0x1

    #@3a
    .line 164
    .local v13, "regState":I
    array-length v1, v14

    #@3b
    if-lez v1, :cond_1

    #@3d
    .line 166
    const/4 v1, 0x0

    #@3e
    :try_start_0
    aget-object v1, v14, v1

    #@40
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@43
    move-result v13

    #@44
    .line 169
    array-length v1, v14

    #@45
    const/16 v16, 0x4

    #@47
    move/from16 v0, v16

    #@49
    if-lt v1, v0, :cond_0

    #@4b
    const/4 v1, 0x3

    #@4c
    aget-object v1, v14, v1

    #@4e
    if-eqz v1, :cond_0

    #@50
    .line 170
    const/4 v1, 0x3

    #@51
    aget-object v1, v14, v1

    #@53
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@56
    move-result v15

    #@57
    .line 176
    :cond_0
    :goto_0
    array-length v1, v14

    #@58
    const/16 v16, 0xa

    #@5a
    move/from16 v0, v16

    #@5c
    if-lt v1, v0, :cond_1

    #@5e
    .line 183
    const/4 v12, 0x0

    #@5f
    .line 186
    .local v12, "operatorNumeric":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    #@61
    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@63
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@66
    move-result-object v12

    #@67
    .line 187
    .local v12, "operatorNumeric":Ljava/lang/String;
    const/4 v1, 0x0

    #@68
    const/16 v16, 0x3

    #@6a
    move/from16 v0, v16

    #@6c
    invoke-virtual {v12, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@6f
    move-result-object v1

    #@70
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@73
    move-result v2

    #@74
    .line 200
    .local v2, "mcc":I
    :goto_1
    const/4 v1, 0x3

    #@75
    :try_start_2
    invoke-virtual {v12, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@78
    move-result-object v1

    #@79
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    #@7c
    move-result v3

    #@7d
    .line 210
    .local v3, "mnc":I
    :goto_2
    const/4 v1, 0x6

    #@7e
    :try_start_3
    aget-object v1, v14, v1

    #@80
    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    #@83
    move-result-object v1

    #@84
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    #@87
    move-result v6

    #@88
    .line 217
    .local v6, "tac":I
    :goto_3
    const/4 v1, 0x7

    #@89
    :try_start_4
    aget-object v1, v14, v1

    #@8b
    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    #@8e
    move-result-object v1

    #@8f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    #@92
    move-result v5

    #@93
    .line 224
    .local v5, "pci":I
    :goto_4
    const/16 v1, 0x8

    #@95
    :try_start_5
    aget-object v1, v14, v1

    #@97
    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    #@9a
    move-result-object v1

    #@9b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    #@9e
    move-result v4

    #@9f
    .line 231
    .local v4, "eci":I
    :goto_5
    const/16 v1, 0x9

    #@a1
    :try_start_6
    aget-object v1, v14, v1

    #@a3
    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    #@a6
    move-result-object v1

    #@a7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    #@aa
    move-result v7

    #@ab
    .line 238
    .local v7, "csgid":I
    :goto_6
    new-instance v1, Landroid/telephony/CellIdentityLte;

    #@ad
    invoke-direct/range {v1 .. v6}, Landroid/telephony/CellIdentityLte;-><init>(IIIII)V

    #@b0
    move-object/from16 v0, p0

    #@b2
    iput-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    #@b4
    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    #@b6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b9
    const-string/jumbo v16, "handlePollStateResultMessage: mNewLteCellIdentity="

    #@bc
    move-object/from16 v0, v16

    #@be
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v1

    #@c2
    .line 241
    move-object/from16 v0, p0

    #@c4
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    #@c6
    move-object/from16 v16, v0

    #@c8
    .line 240
    move-object/from16 v0, v16

    #@ca
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v1

    #@ce
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object v1

    #@d2
    move-object/from16 v0, p0

    #@d4
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    #@d7
    .line 246
    .end local v2    # "mcc":I
    .end local v3    # "mnc":I
    .end local v4    # "eci":I
    .end local v5    # "pci":I
    .end local v6    # "tac":I
    .end local v7    # "csgid":I
    .end local v12    # "operatorNumeric":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    #@d9
    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@db
    invoke-virtual {v1, v15}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    #@de
    .line 247
    move-object/from16 v0, p0

    #@e0
    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->regCodeToServiceState(I)I

    #@e3
    move-result v8

    #@e4
    .line 248
    .local v8, "dataRegState":I
    move-object/from16 v0, p0

    #@e6
    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@e8
    invoke-virtual {v1, v8}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    #@eb
    .line 250
    move-object/from16 v0, p0

    #@ed
    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@ef
    move-object/from16 v0, p0

    #@f1
    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->regCodeIsRoaming(I)Z

    #@f4
    move-result v16

    #@f5
    move/from16 v0, v16

    #@f7
    invoke-virtual {v1, v0}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    #@fa
    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    #@fc
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@ff
    const-string/jumbo v16, "handlPollStateResultMessage: CdmaLteSST setDataRegState="

    #@102
    move-object/from16 v0, v16

    #@104
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v1

    #@108
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v1

    #@10c
    .line 253
    const-string/jumbo v16, " regState="

    #@10f
    .line 252
    move-object/from16 v0, v16

    #@111
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v1

    #@115
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@118
    move-result-object v1

    #@119
    .line 254
    const-string/jumbo v16, " dataRadioTechnology="

    #@11c
    .line 252
    move-object/from16 v0, v16

    #@11e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    move-result-object v1

    #@122
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@125
    move-result-object v1

    #@126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@129
    move-result-object v1

    #@12a
    move-object/from16 v0, p0

    #@12c
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    #@12f
    .line 154
    .end local v8    # "dataRegState":I
    .end local v13    # "regState":I
    .end local v14    # "states":[Ljava/lang/String;
    .end local v15    # "type":I
    :goto_7
    return-void

    #@130
    .line 172
    .restart local v13    # "regState":I
    .restart local v14    # "states":[Ljava/lang/String;
    .restart local v15    # "type":I
    :catch_0
    move-exception v11

    #@131
    .line 173
    .local v11, "ex":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    #@133
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@136
    const-string/jumbo v16, "handlePollStateResultMessage: error parsing GprsRegistrationState: "

    #@139
    move-object/from16 v0, v16

    #@13b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v1

    #@13f
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@142
    move-result-object v1

    #@143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@146
    move-result-object v1

    #@147
    move-object/from16 v0, p0

    #@149
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    #@14c
    goto/16 :goto_0

    #@14e
    .line 188
    .end local v11    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v9

    #@14f
    .line 190
    .local v9, "e":Ljava/lang/Exception;
    :try_start_7
    move-object/from16 v0, p0

    #@151
    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@153
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@156
    move-result-object v12

    #@157
    .line 191
    .restart local v12    # "operatorNumeric":Ljava/lang/String;
    const/4 v1, 0x0

    #@158
    const/16 v16, 0x3

    #@15a
    move/from16 v0, v16

    #@15c
    invoke-virtual {v12, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@15f
    move-result-object v1

    #@160
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    #@163
    move-result v2

    #@164
    .restart local v2    # "mcc":I
    goto/16 :goto_1

    #@166
    .line 192
    .end local v2    # "mcc":I
    .end local v12    # "operatorNumeric":Ljava/lang/String;
    :catch_2
    move-exception v10

    #@167
    .line 193
    .local v10, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    #@169
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16c
    const-string/jumbo v16, "handlePollStateResultMessage: bad mcc operatorNumeric="

    #@16f
    move-object/from16 v0, v16

    #@171
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@174
    move-result-object v1

    #@175
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@178
    move-result-object v1

    #@179
    .line 194
    const-string/jumbo v16, " ex="

    #@17c
    .line 193
    move-object/from16 v0, v16

    #@17e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@181
    move-result-object v1

    #@182
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@185
    move-result-object v1

    #@186
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@189
    move-result-object v1

    #@18a
    move-object/from16 v0, p0

    #@18c
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    #@18f
    .line 195
    const-string/jumbo v12, ""

    #@192
    .line 196
    .restart local v12    # "operatorNumeric":Ljava/lang/String;
    const v2, 0x7fffffff

    #@195
    .restart local v2    # "mcc":I
    goto/16 :goto_1

    #@197
    .line 201
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v9

    #@198
    .line 202
    .restart local v9    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    #@19a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19d
    const-string/jumbo v16, "handlePollStateResultMessage: bad mnc operatorNumeric="

    #@1a0
    move-object/from16 v0, v16

    #@1a2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a5
    move-result-object v1

    #@1a6
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a9
    move-result-object v1

    #@1aa
    .line 203
    const-string/jumbo v16, " e="

    #@1ad
    .line 202
    move-object/from16 v0, v16

    #@1af
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b2
    move-result-object v1

    #@1b3
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b6
    move-result-object v1

    #@1b7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ba
    move-result-object v1

    #@1bb
    move-object/from16 v0, p0

    #@1bd
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    #@1c0
    .line 204
    const v3, 0x7fffffff

    #@1c3
    .restart local v3    # "mnc":I
    goto/16 :goto_2

    #@1c5
    .line 211
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v9

    #@1c6
    .line 212
    .restart local v9    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1cb
    const-string/jumbo v16, "handlePollStateResultMessage: bad tac states[6]="

    #@1ce
    move-object/from16 v0, v16

    #@1d0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d3
    move-result-object v1

    #@1d4
    .line 213
    const/16 v16, 0x6

    #@1d6
    aget-object v16, v14, v16

    #@1d8
    .line 212
    move-object/from16 v0, v16

    #@1da
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dd
    move-result-object v1

    #@1de
    .line 213
    const-string/jumbo v16, " e="

    #@1e1
    .line 212
    move-object/from16 v0, v16

    #@1e3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e6
    move-result-object v1

    #@1e7
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1ea
    move-result-object v1

    #@1eb
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ee
    move-result-object v1

    #@1ef
    move-object/from16 v0, p0

    #@1f1
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    #@1f4
    .line 214
    const v6, 0x7fffffff

    #@1f7
    .restart local v6    # "tac":I
    goto/16 :goto_3

    #@1f9
    .line 218
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v9

    #@1fa
    .line 219
    .restart local v9    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    #@1fc
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1ff
    const-string/jumbo v16, "handlePollStateResultMessage: bad pci states[7]="

    #@202
    move-object/from16 v0, v16

    #@204
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@207
    move-result-object v1

    #@208
    .line 220
    const/16 v16, 0x7

    #@20a
    aget-object v16, v14, v16

    #@20c
    .line 219
    move-object/from16 v0, v16

    #@20e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@211
    move-result-object v1

    #@212
    .line 220
    const-string/jumbo v16, " e="

    #@215
    .line 219
    move-object/from16 v0, v16

    #@217
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21a
    move-result-object v1

    #@21b
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21e
    move-result-object v1

    #@21f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@222
    move-result-object v1

    #@223
    move-object/from16 v0, p0

    #@225
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    #@228
    .line 221
    const v5, 0x7fffffff

    #@22b
    .restart local v5    # "pci":I
    goto/16 :goto_4

    #@22d
    .line 225
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v9

    #@22e
    .line 226
    .restart local v9    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    #@230
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@233
    const-string/jumbo v16, "handlePollStateResultMessage: bad eci states[8]="

    #@236
    move-object/from16 v0, v16

    #@238
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23b
    move-result-object v1

    #@23c
    .line 227
    const/16 v16, 0x8

    #@23e
    aget-object v16, v14, v16

    #@240
    .line 226
    move-object/from16 v0, v16

    #@242
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@245
    move-result-object v1

    #@246
    .line 227
    const-string/jumbo v16, " e="

    #@249
    .line 226
    move-object/from16 v0, v16

    #@24b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24e
    move-result-object v1

    #@24f
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@252
    move-result-object v1

    #@253
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@256
    move-result-object v1

    #@257
    move-object/from16 v0, p0

    #@259
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    #@25c
    .line 228
    const v4, 0x7fffffff

    #@25f
    .restart local v4    # "eci":I
    goto/16 :goto_5

    #@261
    .line 232
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v9

    #@262
    .line 236
    .restart local v9    # "e":Ljava/lang/Exception;
    const v7, 0x7fffffff

    #@265
    .restart local v7    # "csgid":I
    goto/16 :goto_6

    #@267
    .line 257
    .end local v2    # "mcc":I
    .end local v3    # "mnc":I
    .end local v4    # "eci":I
    .end local v5    # "pci":I
    .end local v6    # "tac":I
    .end local v7    # "csgid":I
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v12    # "operatorNumeric":Ljava/lang/String;
    .end local v13    # "regState":I
    .end local v14    # "states":[Ljava/lang/String;
    .end local v15    # "type":I
    :cond_2
    invoke-super/range {p0 .. p2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handlePollStateResultMessage(ILandroid/os/AsyncResult;)V

    #@26a
    goto/16 :goto_7
.end method

.method public isConcurrentVoiceAndDataAllowed()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 619
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@3
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getCssIndicator()I

    #@6
    move-result v1

    #@7
    if-ne v1, v0, :cond_0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 729
    const-string/jumbo v0, "CdmaSST"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "[CdmaLteSST] "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 728
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 734
    const-string/jumbo v0, "CdmaSST"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "[CdmaLteSST] "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 733
    return-void
.end method

.method protected onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "isGsm"    # Z

    #@0
    .prologue
    const/16 v4, 0xe

    #@2
    .line 595
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@4
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@7
    move-result v2

    #@8
    if-ne v2, v4, :cond_0

    #@a
    .line 596
    const/4 p2, 0x1

    #@b
    .line 598
    .end local p2    # "isGsm":Z
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z

    #@e
    move-result v1

    #@f
    .line 600
    .local v1, "ssChanged":Z
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    #@11
    monitor-enter v3

    #@12
    .line 601
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@14
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@17
    move-result v2

    #@18
    if-ne v2, v4, :cond_1

    #@1a
    .line 602
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    #@1c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1f
    move-result-wide v4

    #@20
    const-wide/16 v6, 0x3e8

    #@22
    mul-long/2addr v4, v6

    #@23
    invoke-virtual {v2, v4, v5}, Landroid/telephony/CellInfoLte;->setTimeStamp(J)V

    #@26
    .line 603
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    #@28
    const/4 v4, 0x4

    #@29
    invoke-virtual {v2, v4}, Landroid/telephony/CellInfoLte;->setTimeStampType(I)V

    #@2c
    .line 604
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    #@2e
    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    #@31
    move-result-object v2

    #@32
    .line 605
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    #@34
    const v5, 0x7fffffff

    #@37
    .line 604
    invoke-virtual {v2, v4, v5}, Landroid/telephony/CellSignalStrengthLte;->initialize(Landroid/telephony/SignalStrength;I)V

    #@3a
    .line 607
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    #@3c
    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    #@3f
    move-result-object v2

    #@40
    if-eqz v2, :cond_2

    #@42
    .line 608
    new-instance v0, Ljava/util/ArrayList;

    #@44
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@47
    .line 609
    .local v0, "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    #@49
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4c
    .line 610
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    #@4e
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/PhoneBase;->notifyCellInfo(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@51
    .end local v0    # "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    :cond_2
    monitor-exit v3

    #@52
    .line 613
    return v1

    #@53
    .line 600
    :catchall_0
    move-exception v2

    #@54
    monitor-exit v3

    #@55
    throw v2
.end method

.method public pollState()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 263
    const/4 v0, 0x1

    #@2
    new-array v0, v0, [I

    #@4
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    #@6
    .line 264
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    #@8
    aput v3, v0, v3

    #@a
    .line 266
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->-getcom_android_internal_telephony_CommandsInterface$RadioStateSwitchesValues()[I

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@10
    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    #@17
    move-result v1

    #@18
    aget v0, v0, v1

    #@1a
    packed-switch v0, :pswitch_data_0

    #@1d
    .line 292
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    #@1f
    aget v1, v0, v3

    #@21
    add-int/lit8 v1, v1, 0x1

    #@23
    aput v1, v0, v3

    #@25
    .line 294
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@27
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    #@29
    const/16 v2, 0x19

    #@2b
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@2e
    move-result-object v1

    #@2f
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    #@32
    .line 296
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    #@34
    aget v1, v0, v3

    #@36
    add-int/lit8 v1, v1, 0x1

    #@38
    aput v1, v0, v3

    #@3a
    .line 298
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@3c
    .line 299
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    #@3e
    .line 298
    const/16 v2, 0x18

    #@40
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@43
    move-result-object v1

    #@44
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    #@47
    .line 301
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    #@49
    aget v1, v0, v3

    #@4b
    add-int/lit8 v1, v1, 0x1

    #@4d
    aput v1, v0, v3

    #@4f
    .line 303
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@51
    .line 304
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    #@53
    .line 303
    const/4 v2, 0x5

    #@54
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@57
    move-result-object v1

    #@58
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    #@5b
    .line 262
    :goto_1
    return-void

    #@5c
    .line 268
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@5e
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    #@61
    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    #@63
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->setStateInvalid()V

    #@66
    .line 270
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->setSignalStrengthDefaultValues()V

    #@69
    .line 271
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mGotCountryCode:Z

    #@6b
    .line 273
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->pollStateDone()V

    #@6e
    goto :goto_1

    #@6f
    .line 277
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@71
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    #@74
    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    #@76
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->setStateInvalid()V

    #@79
    .line 279
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->setSignalStrengthDefaultValues()V

    #@7c
    .line 280
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mGotCountryCode:Z

    #@7e
    .line 283
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@80
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@83
    move-result v0

    #@84
    .line 282
    const/16 v1, 0x12

    #@86
    if-eq v1, v0, :cond_0

    #@88
    .line 284
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->pollStateDone()V

    #@8b
    goto :goto_0

    #@8c
    .line 266
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected pollStateDone()V
    .locals 48

    #@0
    .prologue
    .line 311
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updateRoamingState()V

    #@3
    .line 313
    sget-boolean v42, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@5
    if-eqz v42, :cond_0

    #@7
    const-string/jumbo v42, "telephony.test.forceRoaming"

    #@a
    const/16 v43, 0x0

    #@c
    invoke-static/range {v42 .. v43}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@f
    move-result v42

    #@10
    if-eqz v42, :cond_0

    #@12
    .line 314
    move-object/from16 v0, p0

    #@14
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@16
    move-object/from16 v42, v0

    #@18
    const/16 v43, 0x1

    #@1a
    invoke-virtual/range {v42 .. v43}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    #@1d
    .line 315
    move-object/from16 v0, p0

    #@1f
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@21
    move-object/from16 v42, v0

    #@23
    const/16 v43, 0x1

    #@25
    invoke-virtual/range {v42 .. v43}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    #@28
    .line 318
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->useDataRegStateForDataOnlyDevices()V

    #@2b
    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->resetServiceStateInIwlanMode()V

    #@2e
    .line 320
    new-instance v42, Ljava/lang/StringBuilder;

    #@30
    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v43, "pollStateDone: lte 1 ss=["

    #@36
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v42

    #@3a
    move-object/from16 v0, p0

    #@3c
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@3e
    move-object/from16 v43, v0

    #@40
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v42

    #@44
    const-string/jumbo v43, "] newSS=["

    #@47
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v42

    #@4b
    move-object/from16 v0, p0

    #@4d
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@4f
    move-object/from16 v43, v0

    #@51
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v42

    #@55
    const-string/jumbo v43, "]"

    #@58
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v42

    #@5c
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v42

    #@60
    move-object/from16 v0, p0

    #@62
    move-object/from16 v1, v42

    #@64
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    #@67
    .line 322
    move-object/from16 v0, p0

    #@69
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@6b
    move-object/from16 v42, v0

    #@6d
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@70
    move-result v42

    #@71
    if-eqz v42, :cond_1d

    #@73
    .line 323
    move-object/from16 v0, p0

    #@75
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@77
    move-object/from16 v42, v0

    #@79
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@7c
    move-result v42

    #@7d
    if-nez v42, :cond_1c

    #@7f
    const/16 v25, 0x1

    #@81
    .line 325
    .local v25, "hasRegistered":Z
    :goto_0
    move-object/from16 v0, p0

    #@83
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@85
    move-object/from16 v42, v0

    #@87
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@8a
    move-result v42

    #@8b
    if-nez v42, :cond_1f

    #@8d
    .line 326
    move-object/from16 v0, p0

    #@8f
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@91
    move-object/from16 v42, v0

    #@93
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@96
    move-result v42

    #@97
    if-eqz v42, :cond_1e

    #@99
    const/16 v21, 0x1

    #@9b
    .line 329
    .local v21, "hasDeregistered":Z
    :goto_1
    move-object/from16 v0, p0

    #@9d
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@9f
    move-object/from16 v42, v0

    #@a1
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@a4
    move-result v42

    #@a5
    if-eqz v42, :cond_21

    #@a7
    .line 330
    move-object/from16 v0, p0

    #@a9
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@ab
    move-object/from16 v42, v0

    #@ad
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@b0
    move-result v42

    #@b1
    if-nez v42, :cond_20

    #@b3
    const/4 v14, 0x1

    #@b4
    .line 333
    .local v14, "hasCdmaDataConnectionAttached":Z
    :goto_2
    move-object/from16 v0, p0

    #@b6
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@b8
    move-object/from16 v42, v0

    #@ba
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@bd
    move-result v42

    #@be
    if-nez v42, :cond_23

    #@c0
    .line 334
    move-object/from16 v0, p0

    #@c2
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@c4
    move-object/from16 v42, v0

    #@c6
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@c9
    move-result v42

    #@ca
    if-eqz v42, :cond_22

    #@cc
    const/16 v16, 0x1

    #@ce
    .line 337
    .local v16, "hasCdmaDataConnectionDetached":Z
    :goto_3
    move-object/from16 v0, p0

    #@d0
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@d2
    move-object/from16 v42, v0

    #@d4
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@d7
    move-result v42

    #@d8
    move-object/from16 v0, p0

    #@da
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@dc
    move-object/from16 v43, v0

    #@de
    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@e1
    move-result v43

    #@e2
    move/from16 v0, v42

    #@e4
    move/from16 v1, v43

    #@e6
    if-eq v0, v1, :cond_24

    #@e8
    const/4 v15, 0x1

    #@e9
    .line 339
    .local v15, "hasCdmaDataConnectionChanged":Z
    :goto_4
    move-object/from16 v0, p0

    #@eb
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@ed
    move-object/from16 v42, v0

    #@ef
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@f2
    move-result v42

    #@f3
    .line 340
    move-object/from16 v0, p0

    #@f5
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@f7
    move-object/from16 v43, v0

    #@f9
    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@fc
    move-result v43

    #@fd
    .line 339
    move/from16 v0, v42

    #@ff
    move/from16 v1, v43

    #@101
    if-eq v0, v1, :cond_25

    #@103
    const/16 v26, 0x1

    #@105
    .line 342
    .local v26, "hasVoiceRadioTechnologyChanged":Z
    :goto_5
    move-object/from16 v0, p0

    #@107
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@109
    move-object/from16 v42, v0

    #@10b
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@10e
    move-result v42

    #@10f
    .line 343
    move-object/from16 v0, p0

    #@111
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@113
    move-object/from16 v43, v0

    #@115
    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@118
    move-result v43

    #@119
    .line 342
    move/from16 v0, v42

    #@11b
    move/from16 v1, v43

    #@11d
    if-eq v0, v1, :cond_26

    #@11f
    const/16 v18, 0x1

    #@121
    .line 345
    .local v18, "hasDataRadioTechnologyChanged":Z
    :goto_6
    move-object/from16 v0, p0

    #@123
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@125
    move-object/from16 v42, v0

    #@127
    move-object/from16 v0, p0

    #@129
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@12b
    move-object/from16 v43, v0

    #@12d
    invoke-virtual/range {v42 .. v43}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    #@130
    move-result v42

    #@131
    if-eqz v42, :cond_27

    #@133
    const/16 v17, 0x0

    #@135
    .line 347
    .local v17, "hasChanged":Z
    :goto_7
    move-object/from16 v0, p0

    #@137
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@139
    move-object/from16 v42, v0

    #@13b
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@13e
    move-result v42

    #@13f
    if-nez v42, :cond_28

    #@141
    move-object/from16 v0, p0

    #@143
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@145
    move-object/from16 v42, v0

    #@147
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@14a
    move-result v28

    #@14b
    .line 349
    :goto_8
    move-object/from16 v0, p0

    #@14d
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@14f
    move-object/from16 v42, v0

    #@151
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@154
    move-result v42

    #@155
    if-eqz v42, :cond_1

    #@157
    move-object/from16 v0, p0

    #@159
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@15b
    move-object/from16 v42, v0

    #@15d
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@160
    move-result v42

    #@161
    if-eqz v42, :cond_29

    #@163
    :cond_1
    const/16 v27, 0x0

    #@165
    .line 351
    .local v27, "hasVoiceRoamingOff":Z
    :goto_9
    move-object/from16 v0, p0

    #@167
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@169
    move-object/from16 v42, v0

    #@16b
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@16e
    move-result v42

    #@16f
    if-nez v42, :cond_2a

    #@171
    move-object/from16 v0, p0

    #@173
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@175
    move-object/from16 v42, v0

    #@177
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@17a
    move-result v20

    #@17b
    .line 353
    :goto_a
    move-object/from16 v0, p0

    #@17d
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@17f
    move-object/from16 v42, v0

    #@181
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@184
    move-result v42

    #@185
    if-eqz v42, :cond_2

    #@187
    move-object/from16 v0, p0

    #@189
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@18b
    move-object/from16 v42, v0

    #@18d
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@190
    move-result v42

    #@191
    if-eqz v42, :cond_2b

    #@193
    :cond_2
    const/16 v19, 0x0

    #@195
    .line 355
    .local v19, "hasDataRoamingOff":Z
    :goto_b
    move-object/from16 v0, p0

    #@197
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    #@199
    move-object/from16 v42, v0

    #@19b
    move-object/from16 v0, p0

    #@19d
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    #@19f
    move-object/from16 v43, v0

    #@1a1
    invoke-virtual/range {v42 .. v43}, Landroid/telephony/cdma/CdmaCellLocation;->equals(Ljava/lang/Object;)Z

    #@1a4
    move-result v42

    #@1a5
    if-eqz v42, :cond_2c

    #@1a7
    const/16 v22, 0x0

    #@1a9
    .line 358
    .local v22, "hasLocationChanged":Z
    :goto_c
    move-object/from16 v0, p0

    #@1ab
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1ad
    move-object/from16 v42, v0

    #@1af
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@1b2
    move-result v42

    #@1b3
    if-nez v42, :cond_30

    #@1b5
    .line 359
    move-object/from16 v0, p0

    #@1b7
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@1b9
    move-object/from16 v42, v0

    #@1bb
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@1be
    move-result v42

    #@1bf
    const/16 v43, 0xe

    #@1c1
    move/from16 v0, v42

    #@1c3
    move/from16 v1, v43

    #@1c5
    if-ne v0, v1, :cond_2d

    #@1c7
    .line 360
    move-object/from16 v0, p0

    #@1c9
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1cb
    move-object/from16 v42, v0

    #@1cd
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@1d0
    move-result v42

    #@1d1
    const/16 v43, 0xd

    #@1d3
    move/from16 v0, v42

    #@1d5
    move/from16 v1, v43

    #@1d7
    if-ne v0, v1, :cond_2d

    #@1d9
    .line 359
    const/4 v12, 0x1

    #@1da
    .line 365
    .local v12, "has4gHandoff":Z
    :goto_d
    move-object/from16 v0, p0

    #@1dc
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1de
    move-object/from16 v42, v0

    #@1e0
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@1e3
    move-result v42

    #@1e4
    const/16 v43, 0xe

    #@1e6
    move/from16 v0, v42

    #@1e8
    move/from16 v1, v43

    #@1ea
    if-eq v0, v1, :cond_3

    #@1ec
    .line 366
    move-object/from16 v0, p0

    #@1ee
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1f0
    move-object/from16 v42, v0

    #@1f2
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@1f5
    move-result v42

    #@1f6
    const/16 v43, 0xd

    #@1f8
    move/from16 v0, v42

    #@1fa
    move/from16 v1, v43

    #@1fc
    if-ne v0, v1, :cond_33

    #@1fe
    .line 367
    :cond_3
    move-object/from16 v0, p0

    #@200
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@202
    move-object/from16 v42, v0

    #@204
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@207
    move-result v42

    #@208
    const/16 v43, 0xe

    #@20a
    move/from16 v0, v42

    #@20c
    move/from16 v1, v43

    #@20e
    if-eq v0, v1, :cond_32

    #@210
    .line 368
    move-object/from16 v0, p0

    #@212
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@214
    move-object/from16 v42, v0

    #@216
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@219
    move-result v42

    #@21a
    const/16 v43, 0xd

    #@21c
    move/from16 v0, v42

    #@21e
    move/from16 v1, v43

    #@220
    if-eq v0, v1, :cond_31

    #@222
    const/16 v24, 0x1

    #@224
    .line 371
    .local v24, "hasMultiApnSupport":Z
    :goto_e
    move-object/from16 v0, p0

    #@226
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@228
    move-object/from16 v42, v0

    #@22a
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@22d
    move-result v42

    #@22e
    const/16 v43, 0x4

    #@230
    move/from16 v0, v42

    #@232
    move/from16 v1, v43

    #@234
    if-lt v0, v1, :cond_35

    #@236
    .line 372
    move-object/from16 v0, p0

    #@238
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@23a
    move-object/from16 v42, v0

    #@23c
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@23f
    move-result v42

    #@240
    const/16 v43, 0x8

    #@242
    move/from16 v0, v42

    #@244
    move/from16 v1, v43

    #@246
    if-gt v0, v1, :cond_34

    #@248
    const/16 v23, 0x1

    #@24a
    .line 375
    .local v23, "hasLostMultiApnSupport":Z
    :goto_f
    move-object/from16 v0, p0

    #@24c
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@24e
    move-object/from16 v42, v0

    #@250
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    #@253
    move-result-object v42

    #@254
    const-string/jumbo v43, "phone"

    #@257
    invoke-virtual/range {v42 .. v43}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@25a
    move-result-object v40

    #@25b
    check-cast v40, Landroid/telephony/TelephonyManager;

    #@25d
    .line 378
    .local v40, "tm":Landroid/telephony/TelephonyManager;
    new-instance v42, Ljava/lang/StringBuilder;

    #@25f
    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    #@262
    const-string/jumbo v43, "pollStateDone: hasRegistered="

    #@265
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@268
    move-result-object v42

    #@269
    move-object/from16 v0, v42

    #@26b
    move/from16 v1, v25

    #@26d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@270
    move-result-object v42

    #@271
    .line 380
    const-string/jumbo v43, " hasDeegistered="

    #@274
    .line 378
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@277
    move-result-object v42

    #@278
    move-object/from16 v0, v42

    #@27a
    move/from16 v1, v21

    #@27c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@27f
    move-result-object v42

    #@280
    .line 381
    const-string/jumbo v43, " hasCdmaDataConnectionAttached="

    #@283
    .line 378
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@286
    move-result-object v42

    #@287
    move-object/from16 v0, v42

    #@289
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@28c
    move-result-object v42

    #@28d
    .line 382
    const-string/jumbo v43, " hasCdmaDataConnectionDetached="

    #@290
    .line 378
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@293
    move-result-object v42

    #@294
    move-object/from16 v0, v42

    #@296
    move/from16 v1, v16

    #@298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@29b
    move-result-object v42

    #@29c
    .line 383
    const-string/jumbo v43, " hasCdmaDataConnectionChanged="

    #@29f
    .line 378
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a2
    move-result-object v42

    #@2a3
    move-object/from16 v0, v42

    #@2a5
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2a8
    move-result-object v42

    #@2a9
    .line 384
    const-string/jumbo v43, " hasVoiceRadioTechnologyChanged= "

    #@2ac
    .line 378
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2af
    move-result-object v42

    #@2b0
    move-object/from16 v0, v42

    #@2b2
    move/from16 v1, v26

    #@2b4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2b7
    move-result-object v42

    #@2b8
    .line 385
    const-string/jumbo v43, " hasDataRadioTechnologyChanged="

    #@2bb
    .line 378
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2be
    move-result-object v42

    #@2bf
    move-object/from16 v0, v42

    #@2c1
    move/from16 v1, v18

    #@2c3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2c6
    move-result-object v42

    #@2c7
    .line 386
    const-string/jumbo v43, " hasChanged="

    #@2ca
    .line 378
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2cd
    move-result-object v42

    #@2ce
    move-object/from16 v0, v42

    #@2d0
    move/from16 v1, v17

    #@2d2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2d5
    move-result-object v42

    #@2d6
    .line 387
    const-string/jumbo v43, " hasVoiceRoamingOn="

    #@2d9
    .line 378
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2dc
    move-result-object v42

    #@2dd
    move-object/from16 v0, v42

    #@2df
    move/from16 v1, v28

    #@2e1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2e4
    move-result-object v42

    #@2e5
    .line 388
    const-string/jumbo v43, " hasVoiceRoamingOff="

    #@2e8
    .line 378
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2eb
    move-result-object v42

    #@2ec
    move-object/from16 v0, v42

    #@2ee
    move/from16 v1, v27

    #@2f0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2f3
    move-result-object v42

    #@2f4
    .line 389
    const-string/jumbo v43, " hasDataRoamingOn="

    #@2f7
    .line 378
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fa
    move-result-object v42

    #@2fb
    move-object/from16 v0, v42

    #@2fd
    move/from16 v1, v20

    #@2ff
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@302
    move-result-object v42

    #@303
    .line 390
    const-string/jumbo v43, " hasDataRoamingOff="

    #@306
    .line 378
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@309
    move-result-object v42

    #@30a
    move-object/from16 v0, v42

    #@30c
    move/from16 v1, v19

    #@30e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@311
    move-result-object v42

    #@312
    .line 391
    const-string/jumbo v43, " hasLocationChanged="

    #@315
    .line 378
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@318
    move-result-object v42

    #@319
    move-object/from16 v0, v42

    #@31b
    move/from16 v1, v22

    #@31d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@320
    move-result-object v42

    #@321
    .line 392
    const-string/jumbo v43, " has4gHandoff = "

    #@324
    .line 378
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@327
    move-result-object v42

    #@328
    move-object/from16 v0, v42

    #@32a
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@32d
    move-result-object v42

    #@32e
    .line 393
    const-string/jumbo v43, " hasMultiApnSupport="

    #@331
    .line 378
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@334
    move-result-object v42

    #@335
    move-object/from16 v0, v42

    #@337
    move/from16 v1, v24

    #@339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@33c
    move-result-object v42

    #@33d
    .line 394
    const-string/jumbo v43, " hasLostMultiApnSupport="

    #@340
    .line 378
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@343
    move-result-object v42

    #@344
    move-object/from16 v0, v42

    #@346
    move/from16 v1, v23

    #@348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@34b
    move-result-object v42

    #@34c
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34f
    move-result-object v42

    #@350
    move-object/from16 v0, p0

    #@352
    move-object/from16 v1, v42

    #@354
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    #@357
    .line 397
    move-object/from16 v0, p0

    #@359
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@35b
    move-object/from16 v42, v0

    #@35d
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@360
    move-result v42

    #@361
    move-object/from16 v0, p0

    #@363
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@365
    move-object/from16 v43, v0

    #@367
    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@36a
    move-result v43

    #@36b
    move/from16 v0, v42

    #@36d
    move/from16 v1, v43

    #@36f
    if-ne v0, v1, :cond_4

    #@371
    .line 398
    move-object/from16 v0, p0

    #@373
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@375
    move-object/from16 v42, v0

    #@377
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@37a
    move-result v42

    #@37b
    move-object/from16 v0, p0

    #@37d
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@37f
    move-object/from16 v43, v0

    #@381
    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@384
    move-result v43

    #@385
    move/from16 v0, v42

    #@387
    move/from16 v1, v43

    #@389
    if-eq v0, v1, :cond_5

    #@38b
    .line 399
    :cond_4
    const/16 v42, 0x4

    #@38d
    move/from16 v0, v42

    #@38f
    new-array v0, v0, [Ljava/lang/Object;

    #@391
    move-object/from16 v42, v0

    #@393
    move-object/from16 v0, p0

    #@395
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@397
    move-object/from16 v43, v0

    #@399
    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@39c
    move-result v43

    #@39d
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3a0
    move-result-object v43

    #@3a1
    const/16 v44, 0x0

    #@3a3
    aput-object v43, v42, v44

    #@3a5
    .line 400
    move-object/from16 v0, p0

    #@3a7
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@3a9
    move-object/from16 v43, v0

    #@3ab
    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@3ae
    move-result v43

    #@3af
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3b2
    move-result-object v43

    #@3b3
    const/16 v44, 0x1

    #@3b5
    aput-object v43, v42, v44

    #@3b7
    move-object/from16 v0, p0

    #@3b9
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@3bb
    move-object/from16 v43, v0

    #@3bd
    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@3c0
    move-result v43

    #@3c1
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3c4
    move-result-object v43

    #@3c5
    const/16 v44, 0x2

    #@3c7
    aput-object v43, v42, v44

    #@3c9
    move-object/from16 v0, p0

    #@3cb
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@3cd
    move-object/from16 v43, v0

    #@3cf
    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@3d2
    move-result v43

    #@3d3
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3d6
    move-result-object v43

    #@3d7
    const/16 v44, 0x3

    #@3d9
    aput-object v43, v42, v44

    #@3db
    .line 399
    const v43, 0xc3c4

    #@3de
    move/from16 v0, v43

    #@3e0
    move-object/from16 v1, v42

    #@3e2
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@3e5
    .line 404
    :cond_5
    move-object/from16 v0, p0

    #@3e7
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@3e9
    move-object/from16 v41, v0

    #@3eb
    .line 405
    .local v41, "tss":Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    #@3ed
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@3ef
    move-object/from16 v42, v0

    #@3f1
    move-object/from16 v0, v42

    #@3f3
    move-object/from16 v1, p0

    #@3f5
    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@3f7
    .line 406
    move-object/from16 v0, v41

    #@3f9
    move-object/from16 v1, p0

    #@3fb
    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@3fd
    .line 408
    move-object/from16 v0, p0

    #@3ff
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@401
    move-object/from16 v42, v0

    #@403
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    #@406
    .line 410
    move-object/from16 v0, p0

    #@408
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    #@40a
    move-object/from16 v37, v0

    #@40c
    .line 411
    .local v37, "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    move-object/from16 v0, p0

    #@40e
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    #@410
    move-object/from16 v42, v0

    #@412
    move-object/from16 v0, v42

    #@414
    move-object/from16 v1, p0

    #@416
    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    #@418
    .line 412
    move-object/from16 v0, v37

    #@41a
    move-object/from16 v1, p0

    #@41c
    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    #@41e
    .line 414
    move-object/from16 v0, p0

    #@420
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@422
    move-object/from16 v42, v0

    #@424
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    #@427
    .line 416
    if-eqz v26, :cond_6

    #@429
    .line 417
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updatePhoneObject()V

    #@42c
    .line 420
    :cond_6
    if-eqz v18, :cond_7

    #@42e
    .line 421
    move-object/from16 v0, p0

    #@430
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@432
    move-object/from16 v42, v0

    #@434
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    #@437
    move-result v42

    #@438
    move-object/from16 v0, p0

    #@43a
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@43c
    move-object/from16 v43, v0

    #@43e
    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@441
    move-result v43

    #@442
    move-object/from16 v0, v40

    #@444
    move/from16 v1, v42

    #@446
    move/from16 v2, v43

    #@448
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setDataNetworkTypeForPhone(II)V

    #@44b
    .line 424
    move-object/from16 v0, p0

    #@44d
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@44f
    move-object/from16 v42, v0

    #@451
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@454
    move-result v42

    #@455
    .line 423
    const/16 v43, 0x12

    #@457
    move/from16 v0, v43

    #@459
    move/from16 v1, v42

    #@45b
    if-ne v0, v1, :cond_7

    #@45d
    .line 425
    const-string/jumbo v42, "pollStateDone: IWLAN enabled"

    #@460
    move-object/from16 v0, p0

    #@462
    move-object/from16 v1, v42

    #@464
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    #@467
    .line 429
    :cond_7
    if-eqz v25, :cond_8

    #@469
    .line 430
    move-object/from16 v0, p0

    #@46b
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    #@46d
    move-object/from16 v42, v0

    #@46f
    invoke-virtual/range {v42 .. v42}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@472
    .line 433
    :cond_8
    if-eqz v17, :cond_f

    #@474
    .line 434
    move-object/from16 v0, p0

    #@476
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@478
    move-object/from16 v42, v0

    #@47a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->getPhoneId()I

    #@47d
    move-result v43

    #@47e
    invoke-virtual/range {v42 .. v43}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    #@481
    move-result-object v42

    #@482
    if-nez v42, :cond_36

    #@484
    const/4 v13, 0x0

    #@485
    .line 436
    .local v13, "hasBrandOverride":Z
    :goto_10
    if-nez v13, :cond_b

    #@487
    move-object/from16 v0, p0

    #@489
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@48b
    move-object/from16 v42, v0

    #@48d
    invoke-interface/range {v42 .. v42}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@490
    move-result-object v42

    #@491
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    #@494
    move-result v42

    #@495
    if-eqz v42, :cond_b

    #@497
    move-object/from16 v0, p0

    #@499
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@49b
    move-object/from16 v42, v0

    #@49d
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isEriFileLoaded()Z

    #@4a0
    move-result v42

    #@4a1
    if-eqz v42, :cond_b

    #@4a3
    .line 437
    move-object/from16 v0, p0

    #@4a5
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@4a7
    move-object/from16 v42, v0

    #@4a9
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@4ac
    move-result v42

    #@4ad
    const/16 v43, 0xe

    #@4af
    move/from16 v0, v42

    #@4b1
    move/from16 v1, v43

    #@4b3
    if-ne v0, v1, :cond_9

    #@4b5
    .line 438
    move-object/from16 v0, p0

    #@4b7
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@4b9
    move-object/from16 v42, v0

    #@4bb
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    #@4be
    move-result-object v42

    #@4bf
    invoke-virtual/range {v42 .. v42}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4c2
    move-result-object v42

    #@4c3
    const v43, 0x1120096

    #@4c6
    invoke-virtual/range {v42 .. v43}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@4c9
    move-result v42

    #@4ca
    .line 436
    if-eqz v42, :cond_b

    #@4cc
    .line 441
    :cond_9
    move-object/from16 v0, p0

    #@4ce
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@4d0
    move-object/from16 v42, v0

    #@4d2
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    #@4d5
    move-result-object v9

    #@4d6
    .line 444
    .local v9, "eriText":Ljava/lang/String;
    move-object/from16 v0, p0

    #@4d8
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@4da
    move-object/from16 v42, v0

    #@4dc
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@4df
    move-result v42

    #@4e0
    if-nez v42, :cond_38

    #@4e2
    .line 445
    move-object/from16 v0, p0

    #@4e4
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@4e6
    move-object/from16 v42, v0

    #@4e8
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCdmaEriText()Ljava/lang/String;

    #@4eb
    move-result-object v9

    #@4ec
    .line 459
    .end local v9    # "eriText":Ljava/lang/String;
    :cond_a
    :goto_11
    move-object/from16 v0, p0

    #@4ee
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@4f0
    move-object/from16 v42, v0

    #@4f2
    move-object/from16 v0, v42

    #@4f4
    invoke-virtual {v0, v9}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    #@4f7
    .line 462
    :cond_b
    move-object/from16 v0, p0

    #@4f9
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@4fb
    move-object/from16 v42, v0

    #@4fd
    if-eqz v42, :cond_c

    #@4ff
    move-object/from16 v0, p0

    #@501
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@503
    move-object/from16 v42, v0

    #@505
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@508
    move-result-object v42

    #@509
    sget-object v43, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@50b
    move-object/from16 v0, v42

    #@50d
    move-object/from16 v1, v43

    #@50f
    if-ne v0, v1, :cond_c

    #@511
    .line 463
    move-object/from16 v0, p0

    #@513
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@515
    move-object/from16 v42, v0

    #@517
    if-eqz v42, :cond_c

    #@519
    move-object/from16 v0, p0

    #@51b
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@51d
    move-object/from16 v42, v0

    #@51f
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@522
    move-result v42

    #@523
    if-nez v42, :cond_c

    #@525
    .line 464
    move-object/from16 v0, p0

    #@527
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@529
    move-object/from16 v42, v0

    #@52b
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@52e
    move-result v42

    #@52f
    const/16 v43, 0xe

    #@531
    move/from16 v0, v42

    #@533
    move/from16 v1, v43

    #@535
    if-eq v0, v1, :cond_c

    #@537
    .line 469
    move-object/from16 v0, p0

    #@539
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@53b
    move-object/from16 v42, v0

    #@53d
    check-cast v42, Lcom/android/internal/telephony/uicc/RuimRecords;

    #@53f
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/uicc/RuimRecords;->getCsimSpnDisplayCondition()Z

    #@542
    move-result v35

    #@543
    .line 470
    .local v35, "showSpn":Z
    move-object/from16 v0, p0

    #@545
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@547
    move-object/from16 v42, v0

    #@549
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    #@54c
    move-result v29

    #@54d
    .line 472
    .local v29, "iconIndex":I
    if-eqz v35, :cond_c

    #@54f
    const/16 v42, 0x1

    #@551
    move/from16 v0, v29

    #@553
    move/from16 v1, v42

    #@555
    if-ne v0, v1, :cond_c

    #@557
    .line 473
    move-object/from16 v0, p0

    #@559
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@55b
    move-object/from16 v42, v0

    #@55d
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getSystemId()I

    #@560
    move-result v42

    #@561
    move-object/from16 v0, p0

    #@563
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@565
    move-object/from16 v43, v0

    #@567
    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getNetworkId()I

    #@56a
    move-result v43

    #@56b
    move-object/from16 v0, p0

    #@56d
    move/from16 v1, v42

    #@56f
    move/from16 v2, v43

    #@571
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isInHomeSidNid(II)Z

    #@574
    move-result v42

    #@575
    .line 472
    if-eqz v42, :cond_c

    #@577
    .line 474
    move-object/from16 v0, p0

    #@579
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@57b
    move-object/from16 v42, v0

    #@57d
    if-eqz v42, :cond_c

    #@57f
    .line 475
    move-object/from16 v0, p0

    #@581
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@583
    move-object/from16 v42, v0

    #@585
    move-object/from16 v0, p0

    #@587
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@589
    move-object/from16 v43, v0

    #@58b
    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    #@58e
    move-result-object v43

    #@58f
    invoke-virtual/range {v42 .. v43}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    #@592
    .line 481
    .end local v29    # "iconIndex":I
    .end local v35    # "showSpn":Z
    :cond_c
    move-object/from16 v0, p0

    #@594
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@596
    move-object/from16 v42, v0

    #@598
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    #@59b
    move-result v42

    #@59c
    move-object/from16 v0, p0

    #@59e
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@5a0
    move-object/from16 v43, v0

    #@5a2
    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    #@5a5
    move-result-object v43

    #@5a6
    move-object/from16 v0, v40

    #@5a8
    move/from16 v1, v42

    #@5aa
    move-object/from16 v2, v43

    #@5ac
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNameForPhone(ILjava/lang/String;)V

    #@5af
    .line 483
    move-object/from16 v0, p0

    #@5b1
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@5b3
    move-object/from16 v42, v0

    #@5b5
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    #@5b8
    move-result v42

    #@5b9
    move-object/from16 v0, v40

    #@5bb
    move/from16 v1, v42

    #@5bd
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    #@5c0
    move-result-object v33

    #@5c1
    .line 484
    .local v33, "prevOperatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    #@5c3
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@5c5
    move-object/from16 v42, v0

    #@5c7
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@5ca
    move-result-object v32

    #@5cb
    .line 486
    .local v32, "operatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    #@5cd
    move-object/from16 v1, v32

    #@5cf
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    #@5d2
    move-result v42

    #@5d3
    if-eqz v42, :cond_d

    #@5d5
    .line 487
    move-object/from16 v0, p0

    #@5d7
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@5d9
    move-object/from16 v42, v0

    #@5db
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getSystemId()I

    #@5de
    move-result v36

    #@5df
    .line 488
    .local v36, "sid":I
    move-object/from16 v0, p0

    #@5e1
    move-object/from16 v1, v32

    #@5e3
    move/from16 v2, v36

    #@5e5
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->fixUnknownMcc(Ljava/lang/String;I)Ljava/lang/String;

    #@5e8
    move-result-object v32

    #@5e9
    .line 490
    .end local v36    # "sid":I
    :cond_d
    move-object/from16 v0, p0

    #@5eb
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@5ed
    move-object/from16 v42, v0

    #@5ef
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    #@5f2
    move-result v42

    #@5f3
    move-object/from16 v0, v40

    #@5f5
    move/from16 v1, v42

    #@5f7
    move-object/from16 v2, v32

    #@5f9
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNumericForPhone(ILjava/lang/String;)V

    #@5fc
    .line 492
    move-object/from16 v0, p0

    #@5fe
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@600
    move-object/from16 v42, v0

    #@602
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    #@605
    move-result-object v42

    #@606
    .line 491
    move-object/from16 v0, p0

    #@608
    move-object/from16 v1, v32

    #@60a
    move-object/from16 v2, v33

    #@60c
    move-object/from16 v3, v42

    #@60e
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updateCarrierMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    #@611
    .line 494
    move-object/from16 v0, p0

    #@613
    move-object/from16 v1, v32

    #@615
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    #@618
    move-result v42

    #@619
    if-eqz v42, :cond_3b

    #@61b
    .line 495
    const-string/jumbo v42, "operatorNumeric is null"

    #@61e
    move-object/from16 v0, p0

    #@620
    move-object/from16 v1, v42

    #@622
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    #@625
    .line 496
    move-object/from16 v0, p0

    #@627
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@629
    move-object/from16 v42, v0

    #@62b
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    #@62e
    move-result v42

    #@62f
    const-string/jumbo v43, ""

    #@632
    move-object/from16 v0, v40

    #@634
    move/from16 v1, v42

    #@636
    move-object/from16 v2, v43

    #@638
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    #@63b
    .line 497
    const/16 v42, 0x0

    #@63d
    move/from16 v0, v42

    #@63f
    move-object/from16 v1, p0

    #@641
    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mGotCountryCode:Z

    #@643
    .line 521
    :cond_e
    :goto_12
    move-object/from16 v0, p0

    #@645
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@647
    move-object/from16 v42, v0

    #@649
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    #@64c
    move-result v43

    #@64d
    .line 522
    move-object/from16 v0, p0

    #@64f
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@651
    move-object/from16 v42, v0

    #@653
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@656
    move-result v42

    #@657
    if-nez v42, :cond_3c

    #@659
    move-object/from16 v0, p0

    #@65b
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@65d
    move-object/from16 v42, v0

    #@65f
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@662
    move-result v42

    #@663
    .line 521
    :goto_13
    move-object/from16 v0, v40

    #@665
    move/from16 v1, v43

    #@667
    move/from16 v2, v42

    #@669
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkRoamingForPhone(IZ)V

    #@66c
    .line 524
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updateSpnDisplay()V

    #@66f
    .line 525
    move-object/from16 v0, p0

    #@671
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@673
    move-object/from16 v42, v0

    #@675
    move-object/from16 v0, p0

    #@677
    move-object/from16 v1, v42

    #@679
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->setRoamingType(Landroid/telephony/ServiceState;)V

    #@67c
    .line 526
    new-instance v42, Ljava/lang/StringBuilder;

    #@67e
    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    #@681
    const-string/jumbo v43, "Broadcasting ServiceState : "

    #@684
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@687
    move-result-object v42

    #@688
    move-object/from16 v0, p0

    #@68a
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@68c
    move-object/from16 v43, v0

    #@68e
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@691
    move-result-object v42

    #@692
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@695
    move-result-object v42

    #@696
    move-object/from16 v0, p0

    #@698
    move-object/from16 v1, v42

    #@69a
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    #@69d
    .line 527
    move-object/from16 v0, p0

    #@69f
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@6a1
    move-object/from16 v42, v0

    #@6a3
    move-object/from16 v0, p0

    #@6a5
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@6a7
    move-object/from16 v43, v0

    #@6a9
    invoke-virtual/range {v42 .. v43}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    #@6ac
    .line 530
    .end local v13    # "hasBrandOverride":Z
    .end local v32    # "operatorNumeric":Ljava/lang/String;
    .end local v33    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_f
    if-nez v14, :cond_10

    #@6ae
    if-eqz v12, :cond_11

    #@6b0
    .line 531
    :cond_10
    move-object/from16 v0, p0

    #@6b2
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    #@6b4
    move-object/from16 v42, v0

    #@6b6
    invoke-virtual/range {v42 .. v42}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@6b9
    .line 534
    :cond_11
    if-eqz v16, :cond_12

    #@6bb
    .line 535
    move-object/from16 v0, p0

    #@6bd
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    #@6bf
    move-object/from16 v42, v0

    #@6c1
    invoke-virtual/range {v42 .. v42}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@6c4
    .line 538
    :cond_12
    if-nez v15, :cond_13

    #@6c6
    if-eqz v18, :cond_14

    #@6c8
    .line 539
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    #@6cb
    .line 541
    move-object/from16 v0, p0

    #@6cd
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@6cf
    move-object/from16 v42, v0

    #@6d1
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@6d4
    move-result v42

    #@6d5
    .line 540
    const/16 v43, 0x12

    #@6d7
    move/from16 v0, v43

    #@6d9
    move/from16 v1, v42

    #@6db
    if-ne v0, v1, :cond_3d

    #@6dd
    .line 542
    move-object/from16 v0, p0

    #@6df
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@6e1
    move-object/from16 v42, v0

    #@6e3
    const-string/jumbo v43, "iwlanAvailable"

    #@6e6
    invoke-virtual/range {v42 .. v43}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataConnection(Ljava/lang/String;)V

    #@6e9
    .line 548
    :cond_14
    :goto_14
    if-eqz v28, :cond_15

    #@6eb
    .line 549
    move-object/from16 v0, p0

    #@6ed
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    #@6ef
    move-object/from16 v42, v0

    #@6f1
    invoke-virtual/range {v42 .. v42}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@6f4
    .line 552
    :cond_15
    if-eqz v27, :cond_16

    #@6f6
    .line 553
    move-object/from16 v0, p0

    #@6f8
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    #@6fa
    move-object/from16 v42, v0

    #@6fc
    invoke-virtual/range {v42 .. v42}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@6ff
    .line 556
    :cond_16
    if-eqz v20, :cond_17

    #@701
    .line 557
    move-object/from16 v0, p0

    #@703
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    #@705
    move-object/from16 v42, v0

    #@707
    invoke-virtual/range {v42 .. v42}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@70a
    .line 560
    :cond_17
    if-eqz v19, :cond_18

    #@70c
    .line 561
    move-object/from16 v0, p0

    #@70e
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    #@710
    move-object/from16 v42, v0

    #@712
    invoke-virtual/range {v42 .. v42}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@715
    .line 564
    :cond_18
    if-eqz v22, :cond_19

    #@717
    .line 565
    move-object/from16 v0, p0

    #@719
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@71b
    move-object/from16 v42, v0

    #@71d
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyLocationChanged()V

    #@720
    .line 568
    :cond_19
    new-instance v6, Ljava/util/ArrayList;

    #@722
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@725
    .line 569
    .local v6, "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    move-object/from16 v0, p0

    #@727
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    #@729
    move-object/from16 v43, v0

    #@72b
    monitor-enter v43

    #@72c
    .line 570
    :try_start_0
    move-object/from16 v0, p0

    #@72e
    iget-object v8, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    #@730
    check-cast v8, Landroid/telephony/CellInfoLte;

    #@732
    .line 572
    .local v8, "cil":Landroid/telephony/CellInfoLte;
    move-object/from16 v0, p0

    #@734
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    #@736
    move-object/from16 v42, v0

    #@738
    move-object/from16 v0, p0

    #@73a
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

    #@73c
    move-object/from16 v44, v0

    #@73e
    move-object/from16 v0, v42

    #@740
    move-object/from16 v1, v44

    #@742
    invoke-virtual {v0, v1}, Landroid/telephony/CellIdentityLte;->equals(Ljava/lang/Object;)Z

    #@745
    move-result v42

    #@746
    if-eqz v42, :cond_3e

    #@748
    const/4 v7, 0x0

    #@749
    .line 573
    .local v7, "cidChanged":Z
    :goto_15
    if-nez v25, :cond_1a

    #@74b
    if-nez v21, :cond_1a

    #@74d
    if-eqz v7, :cond_1b

    #@74f
    .line 575
    :cond_1a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@752
    move-result-wide v44

    #@753
    const-wide/16 v46, 0x3e8

    #@755
    mul-long v38, v44, v46

    #@757
    .line 576
    .local v38, "timeStamp":J
    move-object/from16 v0, p0

    #@759
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@75b
    move-object/from16 v42, v0

    #@75d
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@760
    move-result v42

    #@761
    if-nez v42, :cond_3f

    #@763
    const/16 v34, 0x1

    #@765
    .line 577
    .local v34, "registered":Z
    :goto_16
    move-object/from16 v0, p0

    #@767
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    #@769
    move-object/from16 v42, v0

    #@76b
    move-object/from16 v0, v42

    #@76d
    move-object/from16 v1, p0

    #@76f
    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

    #@771
    .line 579
    move/from16 v0, v34

    #@773
    invoke-virtual {v8, v0}, Landroid/telephony/CellInfoLte;->setRegistered(Z)V

    #@776
    .line 580
    move-object/from16 v0, p0

    #@778
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

    #@77a
    move-object/from16 v42, v0

    #@77c
    move-object/from16 v0, v42

    #@77e
    invoke-virtual {v8, v0}, Landroid/telephony/CellInfoLte;->setCellIdentity(Landroid/telephony/CellIdentityLte;)V

    #@781
    .line 582
    new-instance v42, Ljava/lang/StringBuilder;

    #@783
    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    #@786
    const-string/jumbo v44, "pollStateDone: hasRegistered="

    #@789
    move-object/from16 v0, v42

    #@78b
    move-object/from16 v1, v44

    #@78d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@790
    move-result-object v42

    #@791
    move-object/from16 v0, v42

    #@793
    move/from16 v1, v25

    #@795
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@798
    move-result-object v42

    #@799
    .line 583
    const-string/jumbo v44, " hasDeregistered="

    #@79c
    .line 582
    move-object/from16 v0, v42

    #@79e
    move-object/from16 v1, v44

    #@7a0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a3
    move-result-object v42

    #@7a4
    move-object/from16 v0, v42

    #@7a6
    move/from16 v1, v21

    #@7a8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7ab
    move-result-object v42

    #@7ac
    .line 584
    const-string/jumbo v44, " cidChanged="

    #@7af
    .line 582
    move-object/from16 v0, v42

    #@7b1
    move-object/from16 v1, v44

    #@7b3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b6
    move-result-object v42

    #@7b7
    move-object/from16 v0, v42

    #@7b9
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7bc
    move-result-object v42

    #@7bd
    .line 585
    const-string/jumbo v44, " mCellInfo="

    #@7c0
    .line 582
    move-object/from16 v0, v42

    #@7c2
    move-object/from16 v1, v44

    #@7c4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c7
    move-result-object v42

    #@7c8
    .line 585
    move-object/from16 v0, p0

    #@7ca
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    #@7cc
    move-object/from16 v44, v0

    #@7ce
    .line 582
    move-object/from16 v0, v42

    #@7d0
    move-object/from16 v1, v44

    #@7d2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7d5
    move-result-object v42

    #@7d6
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d9
    move-result-object v42

    #@7da
    move-object/from16 v0, p0

    #@7dc
    move-object/from16 v1, v42

    #@7de
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    #@7e1
    .line 587
    move-object/from16 v0, p0

    #@7e3
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    #@7e5
    move-object/from16 v42, v0

    #@7e7
    move-object/from16 v0, v42

    #@7e9
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7ec
    .line 589
    .end local v34    # "registered":Z
    .end local v38    # "timeStamp":J
    :cond_1b
    move-object/from16 v0, p0

    #@7ee
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    #@7f0
    move-object/from16 v42, v0

    #@7f2
    move-object/from16 v0, v42

    #@7f4
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/PhoneBase;->notifyCellInfo(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7f7
    monitor-exit v43

    #@7f8
    .line 310
    return-void

    #@7f9
    .line 323
    .end local v6    # "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    .end local v7    # "cidChanged":Z
    .end local v8    # "cil":Landroid/telephony/CellInfoLte;
    .end local v12    # "has4gHandoff":Z
    .end local v14    # "hasCdmaDataConnectionAttached":Z
    .end local v15    # "hasCdmaDataConnectionChanged":Z
    .end local v16    # "hasCdmaDataConnectionDetached":Z
    .end local v17    # "hasChanged":Z
    .end local v18    # "hasDataRadioTechnologyChanged":Z
    .end local v19    # "hasDataRoamingOff":Z
    .end local v21    # "hasDeregistered":Z
    .end local v22    # "hasLocationChanged":Z
    .end local v23    # "hasLostMultiApnSupport":Z
    .end local v24    # "hasMultiApnSupport":Z
    .end local v25    # "hasRegistered":Z
    .end local v26    # "hasVoiceRadioTechnologyChanged":Z
    .end local v27    # "hasVoiceRoamingOff":Z
    .end local v37    # "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v40    # "tm":Landroid/telephony/TelephonyManager;
    .end local v41    # "tss":Landroid/telephony/ServiceState;
    :cond_1c
    const/16 v25, 0x0

    #@7fb
    .restart local v25    # "hasRegistered":Z
    goto/16 :goto_0

    #@7fd
    .line 322
    .end local v25    # "hasRegistered":Z
    :cond_1d
    const/16 v25, 0x0

    #@7ff
    .restart local v25    # "hasRegistered":Z
    goto/16 :goto_0

    #@801
    .line 326
    :cond_1e
    const/16 v21, 0x0

    #@803
    .restart local v21    # "hasDeregistered":Z
    goto/16 :goto_1

    #@805
    .line 325
    .end local v21    # "hasDeregistered":Z
    :cond_1f
    const/16 v21, 0x0

    #@807
    .restart local v21    # "hasDeregistered":Z
    goto/16 :goto_1

    #@809
    .line 330
    :cond_20
    const/4 v14, 0x0

    #@80a
    .restart local v14    # "hasCdmaDataConnectionAttached":Z
    goto/16 :goto_2

    #@80c
    .line 329
    .end local v14    # "hasCdmaDataConnectionAttached":Z
    :cond_21
    const/4 v14, 0x0

    #@80d
    .restart local v14    # "hasCdmaDataConnectionAttached":Z
    goto/16 :goto_2

    #@80f
    .line 334
    :cond_22
    const/16 v16, 0x0

    #@811
    .restart local v16    # "hasCdmaDataConnectionDetached":Z
    goto/16 :goto_3

    #@813
    .line 333
    .end local v16    # "hasCdmaDataConnectionDetached":Z
    :cond_23
    const/16 v16, 0x0

    #@815
    .restart local v16    # "hasCdmaDataConnectionDetached":Z
    goto/16 :goto_3

    #@817
    .line 337
    :cond_24
    const/4 v15, 0x0

    #@818
    .restart local v15    # "hasCdmaDataConnectionChanged":Z
    goto/16 :goto_4

    #@81a
    .line 339
    :cond_25
    const/16 v26, 0x0

    #@81c
    .restart local v26    # "hasVoiceRadioTechnologyChanged":Z
    goto/16 :goto_5

    #@81e
    .line 342
    :cond_26
    const/16 v18, 0x0

    #@820
    .restart local v18    # "hasDataRadioTechnologyChanged":Z
    goto/16 :goto_6

    #@822
    .line 345
    :cond_27
    const/16 v17, 0x1

    #@824
    .restart local v17    # "hasChanged":Z
    goto/16 :goto_7

    #@826
    .line 347
    :cond_28
    const/16 v28, 0x0

    #@828
    .local v28, "hasVoiceRoamingOn":Z
    goto/16 :goto_8

    #@82a
    .line 349
    .end local v28    # "hasVoiceRoamingOn":Z
    :cond_29
    const/16 v27, 0x1

    #@82c
    .restart local v27    # "hasVoiceRoamingOff":Z
    goto/16 :goto_9

    #@82e
    .line 351
    :cond_2a
    const/16 v20, 0x0

    #@830
    .local v20, "hasDataRoamingOn":Z
    goto/16 :goto_a

    #@832
    .line 353
    .end local v20    # "hasDataRoamingOn":Z
    :cond_2b
    const/16 v19, 0x1

    #@834
    .restart local v19    # "hasDataRoamingOff":Z
    goto/16 :goto_b

    #@836
    .line 355
    :cond_2c
    const/16 v22, 0x1

    #@838
    .restart local v22    # "hasLocationChanged":Z
    goto/16 :goto_c

    #@83a
    .line 361
    :cond_2d
    move-object/from16 v0, p0

    #@83c
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@83e
    move-object/from16 v42, v0

    #@840
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@843
    move-result v42

    #@844
    const/16 v43, 0xd

    #@846
    move/from16 v0, v42

    #@848
    move/from16 v1, v43

    #@84a
    if-ne v0, v1, :cond_2f

    #@84c
    .line 362
    move-object/from16 v0, p0

    #@84e
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@850
    move-object/from16 v42, v0

    #@852
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@855
    move-result v42

    #@856
    const/16 v43, 0xe

    #@858
    move/from16 v0, v42

    #@85a
    move/from16 v1, v43

    #@85c
    if-ne v0, v1, :cond_2e

    #@85e
    const/4 v12, 0x1

    #@85f
    .restart local v12    # "has4gHandoff":Z
    goto/16 :goto_d

    #@861
    .end local v12    # "has4gHandoff":Z
    :cond_2e
    const/4 v12, 0x0

    #@862
    .restart local v12    # "has4gHandoff":Z
    goto/16 :goto_d

    #@864
    .line 361
    .end local v12    # "has4gHandoff":Z
    :cond_2f
    const/4 v12, 0x0

    #@865
    .restart local v12    # "has4gHandoff":Z
    goto/16 :goto_d

    #@867
    .line 358
    .end local v12    # "has4gHandoff":Z
    :cond_30
    const/4 v12, 0x0

    #@868
    .restart local v12    # "has4gHandoff":Z
    goto/16 :goto_d

    #@86a
    .line 368
    :cond_31
    const/16 v24, 0x0

    #@86c
    .restart local v24    # "hasMultiApnSupport":Z
    goto/16 :goto_e

    #@86e
    .line 367
    .end local v24    # "hasMultiApnSupport":Z
    :cond_32
    const/16 v24, 0x0

    #@870
    .restart local v24    # "hasMultiApnSupport":Z
    goto/16 :goto_e

    #@872
    .line 365
    .end local v24    # "hasMultiApnSupport":Z
    :cond_33
    const/16 v24, 0x0

    #@874
    .restart local v24    # "hasMultiApnSupport":Z
    goto/16 :goto_e

    #@876
    .line 372
    :cond_34
    const/16 v23, 0x0

    #@878
    .restart local v23    # "hasLostMultiApnSupport":Z
    goto/16 :goto_f

    #@87a
    .line 371
    .end local v23    # "hasLostMultiApnSupport":Z
    :cond_35
    const/16 v23, 0x0

    #@87c
    .restart local v23    # "hasLostMultiApnSupport":Z
    goto/16 :goto_f

    #@87e
    .line 435
    .restart local v37    # "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    .restart local v40    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v41    # "tss":Landroid/telephony/ServiceState;
    :cond_36
    move-object/from16 v0, p0

    #@880
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@882
    move-object/from16 v42, v0

    #@884
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->getPhoneId()I

    #@887
    move-result v43

    #@888
    invoke-virtual/range {v42 .. v43}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    #@88b
    move-result-object v42

    #@88c
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    #@88f
    move-result-object v42

    #@890
    if-eqz v42, :cond_37

    #@892
    const/4 v13, 0x1

    #@893
    .restart local v13    # "hasBrandOverride":Z
    goto/16 :goto_10

    #@895
    .end local v13    # "hasBrandOverride":Z
    :cond_37
    const/4 v13, 0x0

    #@896
    .restart local v13    # "hasBrandOverride":Z
    goto/16 :goto_10

    #@898
    .line 446
    .restart local v9    # "eriText":Ljava/lang/String;
    :cond_38
    move-object/from16 v0, p0

    #@89a
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@89c
    move-object/from16 v42, v0

    #@89e
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@8a1
    move-result v42

    #@8a2
    const/16 v43, 0x3

    #@8a4
    move/from16 v0, v42

    #@8a6
    move/from16 v1, v43

    #@8a8
    if-ne v0, v1, :cond_3a

    #@8aa
    .line 447
    move-object/from16 v0, p0

    #@8ac
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@8ae
    move-object/from16 v42, v0

    #@8b0
    if-eqz v42, :cond_39

    #@8b2
    move-object/from16 v0, p0

    #@8b4
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@8b6
    move-object/from16 v42, v0

    #@8b8
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    #@8bb
    move-result-object v9

    #@8bc
    .line 448
    .end local v9    # "eriText":Ljava/lang/String;
    :goto_17
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@8bf
    move-result v42

    #@8c0
    if-eqz v42, :cond_a

    #@8c2
    .line 451
    const-string/jumbo v42, "ro.cdma.home.operator.alpha"

    #@8c5
    invoke-static/range {v42 .. v42}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@8c8
    move-result-object v9

    #@8c9
    .restart local v9    # "eriText":Ljava/lang/String;
    goto/16 :goto_11

    #@8cb
    .line 447
    :cond_39
    const/4 v9, 0x0

    #@8cc
    .local v9, "eriText":Ljava/lang/String;
    goto :goto_17

    #@8cd
    .line 453
    .local v9, "eriText":Ljava/lang/String;
    :cond_3a
    move-object/from16 v0, p0

    #@8cf
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@8d1
    move-object/from16 v42, v0

    #@8d3
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@8d6
    move-result v42

    #@8d7
    if-eqz v42, :cond_a

    #@8d9
    .line 456
    move-object/from16 v0, p0

    #@8db
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@8dd
    move-object/from16 v42, v0

    #@8df
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    #@8e2
    move-result-object v42

    #@8e3
    .line 457
    const v43, 0x10400c4

    #@8e6
    .line 456
    invoke-virtual/range {v42 .. v43}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@8e9
    move-result-object v42

    #@8ea
    invoke-interface/range {v42 .. v42}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@8ed
    move-result-object v9

    #@8ee
    goto/16 :goto_11

    #@8f0
    .line 499
    .end local v9    # "eriText":Ljava/lang/String;
    .restart local v32    # "operatorNumeric":Ljava/lang/String;
    .restart local v33    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_3b
    const-string/jumbo v30, ""

    #@8f3
    .line 500
    .local v30, "isoCountryCode":Ljava/lang/String;
    const/16 v42, 0x0

    #@8f5
    const/16 v43, 0x3

    #@8f7
    move-object/from16 v0, v32

    #@8f9
    move/from16 v1, v42

    #@8fb
    move/from16 v2, v43

    #@8fd
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@900
    move-result-object v31

    #@901
    .line 503
    .local v31, "mcc":Ljava/lang/String;
    const/16 v42, 0x0

    #@903
    const/16 v43, 0x3

    #@905
    .line 502
    :try_start_1
    move-object/from16 v0, v32

    #@907
    move/from16 v1, v42

    #@909
    move/from16 v2, v43

    #@90b
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@90e
    move-result-object v42

    #@90f
    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@912
    move-result v42

    #@913
    invoke-static/range {v42 .. v42}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    #@916
    move-result-object v30

    #@917
    .line 510
    :goto_18
    move-object/from16 v0, p0

    #@919
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@91b
    move-object/from16 v42, v0

    #@91d
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    #@920
    move-result v42

    #@921
    move-object/from16 v0, v40

    #@923
    move/from16 v1, v42

    #@925
    move-object/from16 v2, v30

    #@927
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    #@92a
    .line 511
    const/16 v42, 0x1

    #@92c
    move/from16 v0, v42

    #@92e
    move-object/from16 v1, p0

    #@930
    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mGotCountryCode:Z

    #@932
    .line 513
    move-object/from16 v0, p0

    #@934
    move-object/from16 v1, v32

    #@936
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->setOperatorIdd(Ljava/lang/String;)V

    #@939
    .line 515
    move-object/from16 v0, p0

    #@93b
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@93d
    move-object/from16 v42, v0

    #@93f
    .line 516
    move-object/from16 v0, p0

    #@941
    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNeedFixZone:Z

    #@943
    move/from16 v43, v0

    #@945
    .line 515
    move-object/from16 v0, p0

    #@947
    move-object/from16 v1, v42

    #@949
    move-object/from16 v2, v32

    #@94b
    move-object/from16 v3, v33

    #@94d
    move/from16 v4, v43

    #@94f
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->shouldFixTimeZoneNow(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/String;Z)Z

    #@952
    move-result v42

    #@953
    if-eqz v42, :cond_e

    #@955
    .line 517
    move-object/from16 v0, p0

    #@957
    move-object/from16 v1, v30

    #@959
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->fixTimeZone(Ljava/lang/String;)V

    #@95c
    goto/16 :goto_12

    #@95e
    .line 506
    :catch_0
    move-exception v11

    #@95f
    .line 507
    .local v11, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v42, Ljava/lang/StringBuilder;

    #@961
    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    #@964
    const-string/jumbo v43, "countryCodeForMcc error"

    #@967
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96a
    move-result-object v42

    #@96b
    move-object/from16 v0, v42

    #@96d
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@970
    move-result-object v42

    #@971
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@974
    move-result-object v42

    #@975
    move-object/from16 v0, p0

    #@977
    move-object/from16 v1, v42

    #@979
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    #@97c
    goto :goto_18

    #@97d
    .line 504
    .end local v11    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_1
    move-exception v10

    #@97e
    .line 505
    .local v10, "ex":Ljava/lang/NumberFormatException;
    new-instance v42, Ljava/lang/StringBuilder;

    #@980
    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    #@983
    const-string/jumbo v43, "countryCodeForMcc error"

    #@986
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@989
    move-result-object v42

    #@98a
    move-object/from16 v0, v42

    #@98c
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@98f
    move-result-object v42

    #@990
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@993
    move-result-object v42

    #@994
    move-object/from16 v0, p0

    #@996
    move-object/from16 v1, v42

    #@998
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    #@99b
    goto/16 :goto_18

    #@99d
    .line 522
    .end local v10    # "ex":Ljava/lang/NumberFormatException;
    .end local v30    # "isoCountryCode":Ljava/lang/String;
    .end local v31    # "mcc":Ljava/lang/String;
    :cond_3c
    const/16 v42, 0x1

    #@99f
    goto/16 :goto_13

    #@9a1
    .line 544
    .end local v13    # "hasBrandOverride":Z
    .end local v32    # "operatorNumeric":Ljava/lang/String;
    .end local v33    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_3d
    move-object/from16 v0, p0

    #@9a3
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@9a5
    move-object/from16 v42, v0

    #@9a7
    const/16 v43, 0x0

    #@9a9
    invoke-virtual/range {v42 .. v43}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataConnection(Ljava/lang/String;)V

    #@9ac
    goto/16 :goto_14

    #@9ae
    .line 572
    .restart local v6    # "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    .restart local v8    # "cil":Landroid/telephony/CellInfoLte;
    :cond_3e
    const/4 v7, 0x1

    #@9af
    .restart local v7    # "cidChanged":Z
    goto/16 :goto_15

    #@9b1
    .line 576
    .restart local v38    # "timeStamp":J
    :cond_3f
    const/16 v34, 0x0

    #@9b3
    .restart local v34    # "registered":Z
    goto/16 :goto_16

    #@9b5
    .line 569
    .end local v7    # "cidChanged":Z
    .end local v8    # "cil":Landroid/telephony/CellInfoLte;
    .end local v34    # "registered":Z
    .end local v38    # "timeStamp":J
    :catchall_0
    move-exception v42

    #@9b6
    monitor-exit v43

    #@9b7
    throw v42
.end method

.method public powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 5
    .param p1, "dcTracker"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@0
    .prologue
    .line 687
    monitor-enter p0

    #@1
    .line 688
    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    #@3
    if-nez v2, :cond_1

    #@5
    .line 689
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    #@8
    move-result v0

    #@9
    .line 692
    .local v0, "dds":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDisconnected()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_2

    #@f
    .line 693
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@11
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSubId()I

    #@14
    move-result v2

    #@15
    if-eq v0, v2, :cond_0

    #@17
    .line 694
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@19
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSubId()I

    #@1c
    move-result v2

    #@1d
    if-eq v0, v2, :cond_2

    #@1f
    .line 695
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/ProxyController;->isDataDisconnected(I)Z

    #@26
    move-result v2

    #@27
    .line 692
    if-eqz v2, :cond_2

    #@29
    .line 697
    :cond_0
    const-string/jumbo v2, "radioTurnedOff"

    #@2c
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    #@2f
    .line 698
    const-string/jumbo v2, "Data disconnected, turn off radio right away."

    #@32
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    #@35
    .line 699
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->hangupAndPowerOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    .end local v0    # "dds":I
    :cond_1
    :goto_0
    monitor-exit p0

    #@39
    .line 686
    return-void

    #@3a
    .line 701
    .restart local v0    # "dds":I
    :cond_2
    :try_start_1
    const-string/jumbo v2, "radioTurnedOff"

    #@3d
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    #@40
    .line 702
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@42
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSubId()I

    #@45
    move-result v2

    #@46
    if-eq v0, v2, :cond_3

    #@48
    .line 703
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/ProxyController;->isDataDisconnected(I)Z

    #@4f
    move-result v2

    #@50
    if-eqz v2, :cond_4

    #@52
    .line 711
    :cond_3
    :goto_1
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    #@55
    move-result-object v1

    #@56
    .line 712
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x26

    #@58
    iput v2, v1, Landroid/os/Message;->what:I

    #@5a
    .line 713
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    #@5c
    add-int/lit8 v2, v2, 0x1

    #@5e
    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    #@60
    iput v2, v1, Landroid/os/Message;->arg1:I

    #@62
    .line 714
    const-wide/16 v2, 0x7530

    #@64
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@67
    move-result v2

    #@68
    if-eqz v2, :cond_5

    #@6a
    .line 715
    const-string/jumbo v2, "Wait upto 30s for data to disconnect, then turn off radio."

    #@6d
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    #@70
    .line 716
    const/4 v2, 0x1

    #@71
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@73
    goto :goto_0

    #@74
    .line 687
    .end local v0    # "dds":I
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    #@75
    monitor-exit p0

    #@76
    throw v2

    #@77
    .line 704
    .restart local v0    # "dds":I
    :cond_4
    :try_start_2
    const-string/jumbo v2, "Data is active on DDS.  Wait for all data disconnect"

    #@7a
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    #@7d
    .line 707
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    #@80
    move-result-object v2

    #@81
    .line 708
    const/16 v3, 0x3e9

    #@83
    const/4 v4, 0x0

    #@84
    .line 707
    invoke-virtual {v2, v0, p0, v3, v4}, Lcom/android/internal/telephony/ProxyController;->registerForAllDataDisconnected(ILandroid/os/Handler;ILjava/lang/Object;)V

    #@87
    .line 709
    const/4 v2, 0x1

    #@88
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    #@8a
    goto :goto_1

    #@8b
    .line 718
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_5
    const-string/jumbo v2, "Cannot send delayed Msg, turn off radio right away."

    #@8e
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    #@91
    .line 719
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->hangupAndPowerOff()V

    #@94
    .line 720
    const/4 v2, 0x0

    #@95
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@97
    goto :goto_0
.end method

.method protected updateCdmaSubscription()V
    .locals 2

    #@0
    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    const/16 v1, 0x22

    #@4
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    #@b
    .line 676
    return-void
.end method
