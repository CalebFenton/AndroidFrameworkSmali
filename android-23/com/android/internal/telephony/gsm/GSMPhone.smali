.class public Lcom/android/internal/telephony/gsm/GSMPhone;
.super Lcom/android/internal/telephony/PhoneBase;
.source "GSMPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;
    }
.end annotation


# static fields
.field private static synthetic -com_android_internal_telephony_DctConstants$ActivitySwitchesValues:[I = null

.field private static synthetic -com_android_internal_telephony_DctConstants$StateSwitchesValues:[I = null

.field public static final CIPHERING_KEY:Ljava/lang/String; = "ciphering_key"

.field private static final LOCAL_DEBUG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "GSMPhone"

.field private static final VDBG:Z = false

.field public static final VM_NUMBER:Ljava/lang/String; = "vm_number_key"

.field public static final VM_SIM_IMSI:Ljava/lang/String; = "vm_sim_imsi_key"


# instance fields
.field mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

.field private final mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

.field private mImei:Ljava/lang/String;

.field private mImeiSv:Ljava/lang/String;

.field private mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

.field mPendingMMIs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmMmiCode;",
            ">;"
        }
    .end annotation
.end field

.field mPostDialHandler:Landroid/os/Registrant;

.field mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

.field mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

.field mSsnRegistrants:Landroid/os/RegistrantList;

.field mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

.field private mVmNumber:Ljava/lang/String;


# direct methods
.method private static synthetic -getcom_android_internal_telephony_DctConstants$ActivitySwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/gsm/GSMPhone;->-com_android_internal_telephony_DctConstants$ActivitySwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/gsm/GSMPhone;->-com_android_internal_telephony_DctConstants$ActivitySwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/DctConstants$Activity;->values()[Lcom/android/internal/telephony/DctConstants$Activity;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/DctConstants$Activity;->DATAIN:Lcom/android/internal/telephony/DctConstants$Activity;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$Activity;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/DctConstants$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    #@19
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$Activity;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/DctConstants$Activity;->DATAOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    #@22
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$Activity;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/DctConstants$Activity;->DORMANT:Lcom/android/internal/telephony/DctConstants$Activity;

    #@2b
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$Activity;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    #@34
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$Activity;->ordinal()I

    #@37
    move-result v1

    #@38
    const/16 v2, 0xc

    #@3a
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    #@3c
    :goto_4
    sput-object v0, Lcom/android/internal/telephony/gsm/GSMPhone;->-com_android_internal_telephony_DctConstants$ActivitySwitchesValues:[I

    #@3e
    return-object v0

    #@3f
    :catch_0
    move-exception v1

    #@40
    goto :goto_4

    #@41
    :catch_1
    move-exception v1

    #@42
    goto :goto_3

    #@43
    :catch_2
    move-exception v1

    #@44
    goto :goto_2

    #@45
    :catch_3
    move-exception v1

    #@46
    goto :goto_1

    #@47
    :catch_4
    move-exception v1

    #@48
    goto :goto_0
.end method

.method private static synthetic -getcom_android_internal_telephony_DctConstants$StateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/gsm/GSMPhone;->-com_android_internal_telephony_DctConstants$StateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/gsm/GSMPhone;->-com_android_internal_telephony_DctConstants$StateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/DctConstants$State;->values()[Lcom/android/internal/telephony/DctConstants$State;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    #@19
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    #@22
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@2b
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@34
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    #@3d
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x6

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    #@44
    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->SCANNING:Lcom/android/internal/telephony/DctConstants$State;

    #@46
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@49
    move-result v1

    #@4a
    const/4 v2, 0x7

    #@4b
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    #@4d
    :goto_6
    sput-object v0, Lcom/android/internal/telephony/gsm/GSMPhone;->-com_android_internal_telephony_DctConstants$StateSwitchesValues:[I

    #@4f
    return-object v0

    #@50
    :catch_0
    move-exception v1

    #@51
    goto :goto_6

    #@52
    :catch_1
    move-exception v1

    #@53
    goto :goto_5

    #@54
    :catch_2
    move-exception v1

    #@55
    goto :goto_4

    #@56
    :catch_3
    move-exception v1

    #@57
    goto :goto_3

    #@58
    :catch_4
    move-exception v1

    #@59
    goto :goto_2

    #@5a
    :catch_5
    move-exception v1

    #@5b
    goto :goto_1

    #@5c
    :catch_6
    move-exception v1

    #@5d
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "phoneId"    # I

    #@0
    .prologue
    .line 176
    const/4 v4, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move v5, p4

    #@6
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZI)V

    #@9
    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "unitTestMode"    # Z

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 147
    const-string/jumbo v1, "GSM"

    #@5
    move-object v0, p0

    #@6
    move-object v2, p3

    #@7
    move-object v3, p1

    #@8
    move-object v4, p2

    #@9
    move v5, p4

    #@a
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneBase;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V

    #@d
    .line 111
    new-instance v0, Ljava/util/ArrayList;

    #@f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@12
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@14
    .line 119
    new-instance v0, Landroid/os/RegistrantList;

    #@16
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@19
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    #@1b
    .line 122
    new-instance v0, Landroid/os/RegistrantList;

    #@1d
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@20
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    #@22
    .line 149
    instance-of v0, p2, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    #@24
    if-eqz v0, :cond_0

    #@26
    .line 150
    check-cast p2, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    #@28
    .end local p2    # "ci":Lcom/android/internal/telephony/CommandsInterface;
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    #@2a
    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2c
    invoke-interface {v0, v7}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    #@2f
    .line 154
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@31
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    #@34
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@36
    .line 156
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #@38
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    #@3b
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #@3d
    .line 157
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@3f
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    #@42
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@44
    .line 159
    if-nez p4, :cond_1

    #@46
    .line 160
    new-instance v0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    #@48
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    #@4b
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    #@4d
    .line 161
    new-instance v0, Lcom/android/internal/telephony/PhoneSubInfo;

    #@4f
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/PhoneSubInfo;-><init>(Lcom/android/internal/telephony/Phone;)V

    #@52
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    #@54
    .line 164
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@56
    invoke-interface {v0, p0, v7, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    #@59
    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@5b
    const/16 v1, 0x8

    #@5d
    invoke-interface {v0, p0, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    #@60
    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@62
    const/4 v1, 0x5

    #@63
    invoke-interface {v0, p0, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    #@66
    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@68
    const/4 v1, 0x7

    #@69
    invoke-interface {v0, p0, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V

    #@6c
    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@6e
    const/4 v1, 0x2

    #@6f
    invoke-interface {v0, p0, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    #@72
    .line 169
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #@74
    const/16 v1, 0x13

    #@76
    invoke-virtual {v0, p0, v1, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    #@79
    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@7b
    const/16 v1, 0x24

    #@7d
    invoke-interface {v0, p0, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->setOnSs(Landroid/os/Handler;ILjava/lang/Object;)V

    #@80
    .line 171
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setProperties()V

    #@83
    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZI)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "unitTestMode"    # Z
    .param p5, "phoneId"    # I

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 182
    const-string/jumbo v1, "GSM"

    #@5
    move-object v0, p0

    #@6
    move-object v2, p3

    #@7
    move-object v3, p1

    #@8
    move-object v4, p2

    #@9
    move v5, p4

    #@a
    move v6, p5

    #@b
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/PhoneBase;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;ZI)V

    #@e
    .line 111
    new-instance v0, Ljava/util/ArrayList;

    #@10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@13
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@15
    .line 119
    new-instance v0, Landroid/os/RegistrantList;

    #@17
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@1a
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    #@1c
    .line 122
    new-instance v0, Landroid/os/RegistrantList;

    #@1e
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@21
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    #@23
    .line 184
    instance-of v0, p2, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    #@25
    if-eqz v0, :cond_0

    #@27
    .line 185
    check-cast p2, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    #@29
    .end local p2    # "ci":Lcom/android/internal/telephony/CommandsInterface;
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    #@2b
    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2d
    invoke-interface {v0, v8}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    #@30
    .line 189
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@32
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    #@35
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@37
    .line 191
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #@39
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    #@3c
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #@3e
    .line 192
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@40
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    #@43
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@45
    .line 194
    if-nez p4, :cond_1

    #@47
    .line 195
    new-instance v0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    #@49
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    #@4c
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    #@4e
    .line 196
    new-instance v0, Lcom/android/internal/telephony/PhoneSubInfo;

    #@50
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/PhoneSubInfo;-><init>(Lcom/android/internal/telephony/Phone;)V

    #@53
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    #@55
    .line 199
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@57
    invoke-interface {v0, p0, v8, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5a
    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@5c
    const/16 v1, 0x8

    #@5e
    invoke-interface {v0, p0, v1, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    #@61
    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@63
    const/4 v1, 0x5

    #@64
    invoke-interface {v0, p0, v1, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    #@67
    .line 202
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@69
    const/4 v1, 0x7

    #@6a
    invoke-interface {v0, p0, v1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V

    #@6d
    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@6f
    const/4 v1, 0x2

    #@70
    invoke-interface {v0, p0, v1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    #@73
    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #@75
    const/16 v1, 0x13

    #@77
    invoke-virtual {v0, p0, v1, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    #@7a
    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@7c
    const/16 v1, 0x24

    #@7e
    invoke-interface {v0, p0, v1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnSs(Landroid/os/Handler;ILjava/lang/Object;)V

    #@81
    .line 206
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setProperties()V

    #@84
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v1, "GSMPhone: constructor: sub = "

    #@8c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v0

    #@90
    iget v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    #@92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@95
    move-result-object v0

    #@96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v0

    #@9a
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    #@9d
    .line 210
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setProperties()V

    #@a0
    .line 181
    return-void
.end method

.method private getVmSimImsi()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 998
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@7
    move-result-object v0

    #@8
    .line 999
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "vm_sim_imsi_key"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    #@17
    move-result v2

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    const/4 v2, 0x0

    #@21
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    return-object v1
.end method

.method private handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 589
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v1

    #@5
    if-le v1, v3, :cond_0

    #@7
    .line 590
    const/4 v1, 0x0

    #@8
    return v1

    #@9
    .line 593
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@10
    move-result-object v1

    #@11
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@13
    if-eq v1, v2, :cond_2

    #@15
    .line 594
    const-string/jumbo v1, "GSMPhone"

    #@18
    const-string/jumbo v2, "MmiCode 0: rejectCall"

    #@1b
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 596
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@20
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->rejectCall()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 608
    :cond_1
    :goto_0
    return v3

    #@24
    .line 597
    :catch_0
    move-exception v0

    #@25
    .line 598
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v1, "GSMPhone"

    #@28
    .line 599
    const-string/jumbo v2, "reject failed"

    #@2b
    .line 598
    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2e
    .line 600
    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->REJECT:Lcom/android/internal/telephony/Phone$SuppService;

    #@30
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    #@33
    goto :goto_0

    #@34
    .line 602
    .end local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@3b
    move-result-object v1

    #@3c
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@3e
    if-eq v1, v2, :cond_1

    #@40
    .line 603
    const-string/jumbo v1, "GSMPhone"

    #@43
    .line 604
    const-string/jumbo v2, "MmiCode 0: hangupWaitingOrBackground"

    #@46
    .line 603
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    .line 605
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@4b
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupWaitingOrBackground()V

    #@4e
    goto :goto_0
.end method

.method private handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 10
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    .line 654
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v5

    #@5
    .line 656
    .local v5, "len":I
    const/4 v6, 0x2

    #@6
    if-le v5, v6, :cond_0

    #@8
    .line 657
    const/4 v6, 0x0

    #@9
    return v6

    #@a
    .line 660
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    #@d
    move-result-object v0

    #@e
    .line 662
    .local v0, "call":Lcom/android/internal/telephony/gsm/GsmCall;
    if-le v5, v9, :cond_2

    #@10
    .line 664
    const/4 v6, 0x1

    #@11
    :try_start_0
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v2

    #@15
    .line 665
    .local v2, "ch":C
    add-int/lit8 v1, v2, -0x30

    #@17
    .line 666
    .local v1, "callIndex":I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@19
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)Lcom/android/internal/telephony/gsm/GsmConnection;

    #@1c
    move-result-object v3

    #@1d
    .line 669
    .local v3, "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    if-eqz v3, :cond_1

    #@1f
    if-lt v1, v9, :cond_1

    #@21
    const/4 v6, 0x7

    #@22
    if-gt v1, v6, :cond_1

    #@24
    .line 670
    const-string/jumbo v6, "GSMPhone"

    #@27
    new-instance v7, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v8, "MmiCode 2: separate call "

    #@2f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v7

    #@33
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v7

    #@37
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v7

    #@3b
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 672
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@40
    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->separate(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    #@43
    .line 701
    .end local v1    # "callIndex":I
    .end local v2    # "ch":C
    .end local v3    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :goto_0
    return v9

    #@44
    .line 674
    .restart local v1    # "callIndex":I
    .restart local v2    # "ch":C
    .restart local v3    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1
    const-string/jumbo v6, "GSMPhone"

    #@47
    new-instance v7, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v8, "separate: invalid call index "

    #@4f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v7

    #@53
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v7

    #@57
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v7

    #@5b
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5e
    .line 676
    sget-object v6, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    #@60
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@63
    goto :goto_0

    #@64
    .line 678
    .end local v1    # "callIndex":I
    .end local v2    # "ch":C
    .end local v3    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :catch_0
    move-exception v4

    #@65
    .line 679
    .local v4, "e":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v6, "GSMPhone"

    #@68
    .line 680
    const-string/jumbo v7, "separate failed"

    #@6b
    .line 679
    invoke-static {v6, v7, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6e
    .line 681
    sget-object v6, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    #@70
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    #@73
    goto :goto_0

    #@74
    .line 685
    .end local v4    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    #@77
    move-result-object v6

    #@78
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@7b
    move-result-object v6

    #@7c
    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@7e
    if-eq v6, v7, :cond_3

    #@80
    .line 686
    const-string/jumbo v6, "GSMPhone"

    #@83
    .line 687
    const-string/jumbo v7, "MmiCode 2: accept ringing call"

    #@86
    .line 686
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@89
    .line 688
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@8b
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->acceptCall()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    #@8e
    goto :goto_0

    #@8f
    .line 694
    :catch_1
    move-exception v4

    #@90
    .line 695
    .restart local v4    # "e":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v6, "GSMPhone"

    #@93
    .line 696
    const-string/jumbo v7, "switch failed"

    #@96
    .line 695
    invoke-static {v6, v7, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@99
    .line 697
    sget-object v6, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    #@9b
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    #@9e
    goto :goto_0

    #@9f
    .line 690
    .end local v4    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_3
    :try_start_2
    const-string/jumbo v6, "GSMPhone"

    #@a2
    .line 691
    const-string/jumbo v7, "MmiCode 2: switchWaitingOrHoldingAndActive"

    #@a5
    .line 690
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a8
    .line 692
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@aa
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_1

    #@ad
    goto :goto_0
.end method

.method private handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 9
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 613
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v4

    #@5
    .line 615
    .local v4, "len":I
    const/4 v5, 0x2

    #@6
    if-le v4, v5, :cond_0

    #@8
    .line 616
    const/4 v5, 0x0

    #@9
    return v5

    #@a
    .line 619
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    #@d
    move-result-object v0

    #@e
    .line 622
    .local v0, "call":Lcom/android/internal/telephony/gsm/GsmCall;
    if-le v4, v8, :cond_2

    #@10
    .line 623
    const/4 v5, 0x1

    #@11
    :try_start_0
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v2

    #@15
    .line 624
    .local v2, "ch":C
    add-int/lit8 v1, v2, -0x30

    #@17
    .line 626
    .local v1, "callIndex":I
    if-lt v1, v8, :cond_1

    #@19
    const/4 v5, 0x7

    #@1a
    if-gt v1, v5, :cond_1

    #@1c
    .line 627
    const-string/jumbo v5, "GSMPhone"

    #@1f
    .line 628
    new-instance v6, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v7, "MmiCode 1: hangupConnectionByIndex "

    #@27
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v6

    #@2f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v6

    #@33
    .line 627
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 630
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@38
    invoke-virtual {v5, v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)V

    #@3b
    .line 650
    .end local v1    # "callIndex":I
    .end local v2    # "ch":C
    :cond_1
    :goto_0
    return v8

    #@3c
    .line 633
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@3f
    move-result-object v5

    #@40
    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@42
    if-eq v5, v6, :cond_3

    #@44
    .line 634
    const-string/jumbo v5, "GSMPhone"

    #@47
    .line 635
    const-string/jumbo v6, "MmiCode 1: hangup foreground"

    #@4a
    .line 634
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 637
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@4f
    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmCall;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@52
    goto :goto_0

    #@53
    .line 644
    :catch_0
    move-exception v3

    #@54
    .line 645
    .local v3, "e":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v5, "GSMPhone"

    #@57
    .line 646
    const-string/jumbo v6, "hangup failed"

    #@5a
    .line 645
    invoke-static {v5, v6, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5d
    .line 647
    sget-object v5, Lcom/android/internal/telephony/Phone$SuppService;->HANGUP:Lcom/android/internal/telephony/Phone$SuppService;

    #@5f
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    #@62
    goto :goto_0

    #@63
    .line 639
    .end local v3    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_3
    :try_start_1
    const-string/jumbo v5, "GSMPhone"

    #@66
    .line 640
    const-string/jumbo v6, "MmiCode 1: switchWaitingOrHoldingAndActive"

    #@69
    .line 639
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6c
    .line 641
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@6e
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    #@71
    goto :goto_0
.end method

.method private handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 729
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v0

    #@5
    if-le v0, v2, :cond_0

    #@7
    .line 730
    const/4 v0, 0x0

    #@8
    return v0

    #@9
    .line 733
    :cond_0
    const-string/jumbo v0, "GSMPhone"

    #@c
    const-string/jumbo v1, "MmiCode 5: CCBS not supported!"

    #@f
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 735
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    #@14
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    #@17
    .line 736
    return v2
.end method

.method private handleCfuQueryResult([Lcom/android/internal/telephony/CallForwardInfo;)V
    .locals 7
    .param p1, "infos"    # [Lcom/android/internal/telephony/CallForwardInfo;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 1733
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@5
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    #@b
    .line 1734
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_1

    #@d
    .line 1735
    if-eqz p1, :cond_0

    #@f
    array-length v5, p1

    #@10
    if-nez v5, :cond_2

    #@12
    .line 1738
    :cond_0
    invoke-virtual {v1, v4, v3, v6}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    #@15
    .line 1732
    :cond_1
    :goto_0
    return-void

    #@16
    .line 1740
    :cond_2
    const/4 v0, 0x0

    #@17
    .local v0, "i":I
    array-length v2, p1

    #@18
    .local v2, "s":I
    :goto_1
    if-ge v0, v2, :cond_1

    #@1a
    .line 1741
    aget-object v5, p1, v0

    #@1c
    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    #@1e
    and-int/lit8 v5, v5, 0x1

    #@20
    if-eqz v5, :cond_4

    #@22
    .line 1742
    aget-object v5, p1, v0

    #@24
    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    #@26
    if-ne v5, v4, :cond_3

    #@28
    move v3, v4

    #@29
    .line 1743
    :cond_3
    aget-object v5, p1, v0

    #@2b
    iget-object v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    #@2d
    .line 1742
    invoke-virtual {v1, v4, v3, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    #@30
    goto :goto_0

    #@31
    .line 1740
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@33
    goto :goto_1
.end method

.method private handleEctIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 717
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v0

    #@5
    .line 719
    .local v0, "len":I
    if-eq v0, v3, :cond_0

    #@7
    .line 720
    const/4 v1, 0x0

    #@8
    return v1

    #@9
    .line 723
    :cond_0
    const-string/jumbo v1, "GSMPhone"

    #@c
    const-string/jumbo v2, "MmiCode 4: explicit call transfer"

    #@f
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 724
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->explicitCallTransfer()V

    #@15
    .line 725
    return v3
.end method

.method private handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 706
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v0

    #@5
    if-le v0, v2, :cond_0

    #@7
    .line 707
    const/4 v0, 0x0

    #@8
    return v0

    #@9
    .line 710
    :cond_0
    const-string/jumbo v0, "GSMPhone"

    #@c
    const-string/jumbo v1, "MmiCode 3: merge calls"

    #@f
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 711
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->conference()V

    #@15
    .line 712
    return v2
.end method

.method private isManualSelProhibitedInGlobalMode()Z
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 1841
    const/4 v2, 0x0

    #@3
    .line 1842
    .local v2, "isProhibited":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@a
    move-result-object v3

    #@b
    const v4, 0x104004c

    #@e
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 1845
    .local v1, "configString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@15
    move-result v3

    #@16
    if-nez v3, :cond_1

    #@18
    .line 1846
    const-string/jumbo v3, ";"

    #@1b
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    .line 1848
    .local v0, "configArray":[Ljava/lang/String;
    if-eqz v0, :cond_1

    #@21
    .line 1849
    array-length v3, v0

    #@22
    if-ne v3, v5, :cond_0

    #@24
    aget-object v3, v0, v6

    #@26
    const-string/jumbo v4, "true"

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2c
    move-result v3

    #@2d
    if-nez v3, :cond_3

    #@2f
    .line 1850
    :cond_0
    array-length v3, v0

    #@30
    const/4 v4, 0x2

    #@31
    if-ne v3, v4, :cond_1

    #@33
    aget-object v3, v0, v5

    #@35
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@38
    move-result v3

    #@39
    if-eqz v3, :cond_2

    #@3b
    .line 1856
    .end local v0    # "configArray":[Ljava/lang/String;
    :cond_1
    :goto_0
    const-string/jumbo v3, "GSMPhone"

    #@3e
    new-instance v4, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v5, "isManualNetSelAllowedInGlobal in current carrier is "

    #@46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v4

    #@4e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v4

    #@52
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    .line 1857
    return v2

    #@56
    .line 1851
    .restart local v0    # "configArray":[Ljava/lang/String;
    :cond_2
    aget-object v3, v0, v6

    #@58
    const-string/jumbo v4, "true"

    #@5b
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@5e
    move-result v3

    #@5f
    .line 1850
    if-eqz v3, :cond_1

    #@61
    .line 1852
    aget-object v3, v0, v5

    #@63
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getGroupIdLevel1()Ljava/lang/String;

    #@66
    move-result-object v4

    #@67
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6a
    move-result v3

    #@6b
    .line 1848
    if-eqz v3, :cond_1

    #@6d
    .line 1853
    :cond_3
    const/4 v2, 0x1

    #@6e
    goto :goto_0
.end method

.method private isValidCommandInterfaceCFAction(I)Z
    .locals 1
    .param p1, "commandInterfaceCFAction"    # I

    #@0
    .prologue
    .line 1149
    packed-switch p1, :pswitch_data_0

    #@3
    .line 1156
    :pswitch_0
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 1154
    :pswitch_1
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 1149
    nop

    #@8
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isValidCommandInterfaceCFReason(I)Z
    .locals 1
    .param p1, "commandInterfaceCFReason"    # I

    #@0
    .prologue
    .line 1127
    packed-switch p1, :pswitch_data_0

    #@3
    .line 1136
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 1134
    :pswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 1127
    nop

    #@8
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onIncomingUSSD(ILjava/lang/String;)V
    .locals 8
    .param p1, "ussdMode"    # I
    .param p2, "ussdMessage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 1369
    if-ne p1, v7, :cond_2

    #@3
    const/4 v4, 0x1

    #@4
    .line 1372
    .local v4, "isUssdRequest":Z
    :goto_0
    if-eqz p1, :cond_4

    #@6
    .line 1373
    if-eq p1, v7, :cond_3

    #@8
    const/4 v2, 0x1

    #@9
    .line 1375
    .local v2, "isUssdError":Z
    :goto_1
    const/4 v7, 0x2

    #@a
    if-ne p1, v7, :cond_5

    #@c
    const/4 v3, 0x1

    #@d
    .line 1380
    .local v3, "isUssdRelease":Z
    :goto_2
    const/4 v0, 0x0

    #@e
    .line 1381
    .local v0, "found":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v6

    #@15
    .local v6, "s":I
    :goto_3
    if-ge v1, v6, :cond_0

    #@17
    .line 1382
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v7

    #@1d
    check-cast v7, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    #@1f
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD()Z

    #@22
    move-result v7

    #@23
    if-eqz v7, :cond_6

    #@25
    .line 1383
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    .end local v0    # "found":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    #@2d
    .line 1388
    :cond_0
    if-eqz v0, :cond_9

    #@2f
    .line 1391
    if-eqz v3, :cond_7

    #@31
    .line 1392
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdRelease()V

    #@34
    .line 1363
    :cond_1
    :goto_4
    return-void

    #@35
    .line 1369
    .end local v1    # "i":I
    .end local v2    # "isUssdError":Z
    .end local v3    # "isUssdRelease":Z
    .end local v4    # "isUssdRequest":Z
    .end local v6    # "s":I
    :cond_2
    const/4 v4, 0x0

    #@36
    .restart local v4    # "isUssdRequest":Z
    goto :goto_0

    #@37
    .line 1373
    :cond_3
    const/4 v2, 0x0

    #@38
    .restart local v2    # "isUssdError":Z
    goto :goto_1

    #@39
    .line 1372
    .end local v2    # "isUssdError":Z
    :cond_4
    const/4 v2, 0x0

    #@3a
    .restart local v2    # "isUssdError":Z
    goto :goto_1

    #@3b
    .line 1375
    :cond_5
    const/4 v3, 0x0

    #@3c
    .restart local v3    # "isUssdRelease":Z
    goto :goto_2

    #@3d
    .line 1381
    .restart local v0    # "found":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .restart local v1    # "i":I
    .restart local v6    # "s":I
    :cond_6
    add-int/lit8 v1, v1, 0x1

    #@3f
    goto :goto_3

    #@40
    .line 1393
    .end local v0    # "found":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    :cond_7
    if-eqz v2, :cond_8

    #@42
    .line 1394
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinishedError()V

    #@45
    goto :goto_4

    #@46
    .line 1396
    :cond_8
    invoke-virtual {v0, p2, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinished(Ljava/lang/String;Z)V

    #@49
    goto :goto_4

    #@4a
    .line 1403
    :cond_9
    if-nez v2, :cond_1

    #@4c
    if-eqz p2, :cond_1

    #@4e
    .line 1408
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    #@50
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@53
    move-result-object v7

    #@54
    check-cast v7, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@56
    .line 1405
    invoke-static {p2, v4, p0, v7}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    #@59
    move-result-object v5

    #@5a
    .line 1409
    .local v5, "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->onNetworkInitiatedUssd(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    #@5d
    goto :goto_4
.end method

.method private onNetworkInitiatedUssd(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V
    .locals 3
    .param p1, "mmi"    # Lcom/android/internal/telephony/gsm/GsmMmiCode;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1356
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    #@3
    .line 1357
    new-instance v1, Landroid/os/AsyncResult;

    #@5
    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@8
    .line 1356
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@b
    .line 1355
    return-void
.end method

.method private processIccRecordEvents(I)V
    .locals 0
    .param p1, "eventCode"    # I

    #@0
    .prologue
    .line 1683
    packed-switch p1, :pswitch_data_0

    #@3
    .line 1682
    :goto_0
    return-void

    #@4
    .line 1685
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCallForwardingIndicator()V

    #@7
    goto :goto_0

    #@8
    .line 1683
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private registerForSimRecordEvents()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1861
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@9
    .line 1862
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v0, :cond_0

    #@b
    .line 1863
    return-void

    #@c
    .line 1866
    :cond_0
    const/16 v1, 0x1c

    #@e
    .line 1865
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForNetworkSelectionModeAutomatic(Landroid/os/Handler;ILjava/lang/Object;)V

    #@11
    .line 1867
    const/16 v1, 0x1d

    #@13
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V

    #@16
    .line 1868
    const/4 v1, 0x3

    #@17
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    #@1a
    .line 1860
    return-void
.end method

.method private setVmSimImsi(Ljava/lang/String;)V
    .locals 4
    .param p1, "imsi"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1003
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@3
    move-result-object v2

    #@4
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@7
    move-result-object v1

    #@8
    .line 1004
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@b
    move-result-object v0

    #@c
    .line 1005
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "vm_sim_imsi_key"

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    #@1b
    move-result v3

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@27
    .line 1006
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    #@2a
    .line 1002
    return-void
.end method

.method private storeVoiceMailNumber(Ljava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 956
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@3
    move-result-object v2

    #@4
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@7
    move-result-object v1

    #@8
    .line 957
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@b
    move-result-object v0

    #@c
    .line 958
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "vm_number_key"

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    #@1b
    move-result v3

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@27
    .line 959
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    #@2a
    .line 960
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscriberId()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVmSimImsi(Ljava/lang/String;)V

    #@31
    .line 955
    return-void
.end method

.method private unregisterForSimRecordEvents()V
    .locals 2

    #@0
    .prologue
    .line 1872
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@8
    .line 1873
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v0, :cond_0

    #@a
    .line 1874
    return-void

    #@b
    .line 1876
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForNetworkSelectionModeAutomatic(Landroid/os/Handler;)V

    #@e
    .line 1877
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsEvents(Landroid/os/Handler;)V

    #@11
    .line 1878
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    #@14
    .line 1871
    return-void
.end method

.method private updateVoiceMail()V
    .locals 6

    #@0
    .prologue
    .line 313
    const/4 v0, 0x0

    #@1
    .line 314
    .local v0, "countVoiceMessages":I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@3
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v2

    #@7
    check-cast v2, Lcom/android/internal/telephony/uicc/IccRecords;

    #@9
    .line 315
    .local v2, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v2, :cond_0

    #@b
    .line 317
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceMessageCount()I

    #@e
    move-result v0

    #@f
    .line 319
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getStoredVoiceMessageCount()I

    #@12
    move-result v1

    #@13
    .line 320
    .local v1, "countVoiceMessagesStored":I
    const/4 v3, -0x1

    #@14
    if-ne v0, v3, :cond_1

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 321
    move v0, v1

    #@19
    .line 323
    :cond_1
    const-string/jumbo v3, "GSMPhone"

    #@1c
    new-instance v4, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v5, "updateVoiceMail countVoiceMessages = "

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    .line 324
    const-string/jumbo v5, " subId "

    #@2f
    .line 323
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    .line 324
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    #@36
    move-result v5

    #@37
    .line 323
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 325
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVoiceMessageCount(I)V

    #@45
    .line 312
    return-void
.end method


# virtual methods
.method public acceptCall(I)V
    .locals 2
    .param p1, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2
    .line 507
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v0, :cond_0

    #@4
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isRinging()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 508
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->acceptCall(I)V

    #@11
    .line 505
    :goto_0
    return-void

    #@12
    .line 510
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@14
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->acceptCall()V

    #@17
    goto :goto_0
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 2
    .param p1, "activate"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1776
    const-string/jumbo v0, "GSMPhone"

    #@3
    const-string/jumbo v1, "[GSMPhone] activateCellBroadcastSms() is obsolete; use SmsManager"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1777
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    #@c
    .line 1775
    return-void
.end method

.method public canConference()Z
    .locals 2

    #@0
    .prologue
    .line 528
    const/4 v0, 0x0

    #@1
    .line 529
    .local v0, "canImsConference":Z
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 530
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@7
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->canConference()Z

    #@a
    move-result v0

    #@b
    .line 532
    .end local v0    # "canImsConference":Z
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@d
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canConference()Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_1

    #@13
    :goto_0
    return v0

    #@14
    :cond_1
    const/4 v0, 0x1

    #@15
    goto :goto_0
.end method

.method public canDial()Z
    .locals 1

    #@0
    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canDial()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public canTransfer()Z
    .locals 1

    #@0
    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canTransfer()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public clearDisconnected()V
    .locals 1

    #@0
    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->clearDisconnected()V

    #@5
    .line 550
    return-void
.end method

.method public conference()V
    .locals 1

    #@0
    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@6
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->canConference()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 542
    const-string/jumbo v0, "conference() - delegated to IMS phone"

    #@f
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    #@12
    .line 543
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@14
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->conference()V

    #@17
    .line 544
    return-void

    #@18
    .line 546
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@1a
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->conference()V

    #@1d
    .line 540
    return-void
.end method

.method public dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 798
    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 11
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p3, "videoState"    # I
    .param p4, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v9, 0x0

    #@2
    .line 805
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    #@5
    move-result v4

    #@6
    .line 806
    .local v4, "isEmergency":Z
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@8
    .line 808
    .local v2, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isImsUseEnabled()Z

    #@b
    move-result v6

    #@c
    if-eqz v6, :cond_3

    #@e
    .line 809
    if-eqz v2, :cond_3

    #@10
    .line 810
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVolteEnabled()Z

    #@13
    move-result v6

    #@14
    if-nez v6, :cond_0

    #@16
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVowifiEnabled()Z

    #@19
    move-result v6

    #@1a
    .line 808
    if-eqz v6, :cond_3

    #@1c
    .line 811
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    #@1f
    move-result-object v6

    #@20
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    #@23
    move-result v6

    #@24
    if-nez v6, :cond_2

    #@26
    const/4 v3, 0x1

    #@27
    .line 813
    .local v3, "imsUseEnabled":Z
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    #@29
    invoke-static {v6}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    #@2c
    move-result v6

    #@2d
    if-eqz v6, :cond_5

    #@2f
    .line 814
    if-eqz v2, :cond_5

    #@31
    .line 813
    if-eqz v4, :cond_5

    #@33
    .line 816
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    #@35
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@38
    move-result-object v6

    #@39
    .line 817
    const v7, 0x1120082

    #@3c
    .line 816
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@3f
    move-result v6

    #@40
    .line 813
    if-eqz v6, :cond_5

    #@42
    .line 818
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    #@44
    invoke-static {v6}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    #@47
    move-result v6

    #@48
    .line 813
    if-eqz v6, :cond_5

    #@4a
    .line 819
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    #@4d
    move-result-object v6

    #@4e
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    #@51
    move-result v6

    #@52
    const/4 v7, 0x3

    #@53
    if-eq v6, v7, :cond_4

    #@55
    const/4 v5, 0x1

    #@56
    .line 822
    .local v5, "useImsForEmergency":Z
    :goto_1
    const-string/jumbo v7, "GSMPhone"

    #@59
    new-instance v6, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v8, "imsUseEnabled="

    #@61
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v6

    #@65
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@68
    move-result-object v6

    #@69
    .line 823
    const-string/jumbo v8, ", useImsForEmergency="

    #@6c
    .line 822
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v6

    #@70
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@73
    move-result-object v6

    #@74
    .line 824
    const-string/jumbo v8, ", imsPhone="

    #@77
    .line 822
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v6

    #@7b
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v6

    #@7f
    .line 825
    const-string/jumbo v8, ", imsPhone.isVolteEnabled()="

    #@82
    .line 822
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v8

    #@86
    .line 826
    if-eqz v2, :cond_6

    #@88
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVolteEnabled()Z

    #@8b
    move-result v6

    #@8c
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@8f
    move-result-object v6

    #@90
    .line 822
    :goto_2
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v6

    #@94
    .line 827
    const-string/jumbo v8, ", imsPhone.isVowifiEnabled()="

    #@97
    .line 822
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v8

    #@9b
    .line 828
    if-eqz v2, :cond_7

    #@9d
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVowifiEnabled()Z

    #@a0
    move-result v6

    #@a1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@a4
    move-result-object v6

    #@a5
    .line 822
    :goto_3
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v6

    #@a9
    .line 829
    const-string/jumbo v8, ", imsPhone.getServiceState().getState()="

    #@ac
    .line 822
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v8

    #@b0
    .line 830
    if-eqz v2, :cond_8

    #@b2
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    #@b5
    move-result-object v6

    #@b6
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    #@b9
    move-result v6

    #@ba
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@bd
    move-result-object v6

    #@be
    .line 822
    :goto_4
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v6

    #@c2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c5
    move-result-object v6

    #@c6
    invoke-static {v7, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c9
    .line 833
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@cb
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    #@cd
    invoke-static {v6, v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->checkWfcWifiOnlyModeBeforeDial(Lcom/android/internal/telephony/imsphone/ImsPhone;Landroid/content/Context;)V

    #@d0
    .line 835
    if-nez v3, :cond_1

    #@d2
    if-eqz v5, :cond_9

    #@d4
    .line 837
    :cond_1
    :try_start_0
    const-string/jumbo v6, "GSMPhone"

    #@d7
    const-string/jumbo v7, "Trying IMS PS call"

    #@da
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@dd
    .line 838
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@e0
    move-result-object v6

    #@e1
    return-object v6

    #@e2
    .line 811
    .end local v3    # "imsUseEnabled":Z
    .end local v5    # "useImsForEmergency":Z
    :cond_2
    const/4 v3, 0x0

    #@e3
    .restart local v3    # "imsUseEnabled":Z
    goto/16 :goto_0

    #@e5
    .line 808
    .end local v3    # "imsUseEnabled":Z
    :cond_3
    const/4 v3, 0x0

    #@e6
    .restart local v3    # "imsUseEnabled":Z
    goto/16 :goto_0

    #@e8
    .line 819
    :cond_4
    const/4 v5, 0x0

    #@e9
    .restart local v5    # "useImsForEmergency":Z
    goto/16 :goto_1

    #@eb
    .line 813
    .end local v5    # "useImsForEmergency":Z
    :cond_5
    const/4 v5, 0x0

    #@ec
    .restart local v5    # "useImsForEmergency":Z
    goto/16 :goto_1

    #@ee
    .line 826
    :cond_6
    const-string/jumbo v6, "N/A"

    #@f1
    goto :goto_2

    #@f2
    .line 828
    :cond_7
    const-string/jumbo v6, "N/A"

    #@f5
    goto :goto_3

    #@f6
    .line 830
    :cond_8
    const-string/jumbo v6, "N/A"

    #@f9
    goto :goto_4

    #@fa
    .line 839
    :catch_0
    move-exception v1

    #@fb
    .line 840
    .local v1, "e":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v6, "GSMPhone"

    #@fe
    new-instance v7, Ljava/lang/StringBuilder;

    #@100
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@103
    const-string/jumbo v8, "IMS PS call exception "

    #@106
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v7

    #@10a
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v7

    #@10e
    .line 841
    const-string/jumbo v8, "imsUseEnabled ="

    #@111
    .line 840
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v7

    #@115
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@118
    move-result-object v7

    #@119
    .line 841
    const-string/jumbo v8, ", imsPhone ="

    #@11c
    .line 840
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11f
    move-result-object v7

    #@120
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v7

    #@124
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@127
    move-result-object v7

    #@128
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@12b
    .line 842
    const-string/jumbo v6, "cs_fallback"

    #@12e
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    #@131
    move-result-object v7

    #@132
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@135
    move-result v6

    #@136
    if-nez v6, :cond_9

    #@138
    .line 843
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    #@13a
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    #@13d
    move-result-object v6

    #@13e
    invoke-direct {v0, v6}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@141
    .line 844
    .local v0, "ce":Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@144
    move-result-object v6

    #@145
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/CallStateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    #@148
    .line 845
    throw v0

    #@149
    .line 850
    .end local v0    # "ce":Lcom/android/internal/telephony/CallStateException;
    .end local v1    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_9
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #@14b
    if-eqz v6, :cond_a

    #@14d
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #@14f
    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@151
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    #@154
    move-result v6

    #@155
    const/4 v7, 0x1

    #@156
    if-ne v6, v7, :cond_a

    #@158
    .line 851
    if-eqz v4, :cond_b

    #@15a
    .line 854
    :cond_a
    const-string/jumbo v6, "GSMPhone"

    #@15d
    const-string/jumbo v7, "Trying (non-IMS) CS call"

    #@160
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@163
    .line 855
    invoke-virtual {p0, p1, v9, v10, p4}, Lcom/android/internal/telephony/gsm/GSMPhone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    #@166
    move-result-object v6

    #@167
    return-object v6

    #@168
    .line 852
    :cond_b
    new-instance v6, Lcom/android/internal/telephony/CallStateException;

    #@16a
    const-string/jumbo v7, "cannot dial in current state"

    #@16d
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@170
    throw v6
.end method

.method protected dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 7
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p3, "videoState"    # I
    .param p4, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 864
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 867
    .local v2, "newDialString":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 868
    return-object v6

    #@c
    .line 872
    :cond_0
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 874
    .local v1, "networkPortion":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    #@12
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@18
    invoke-static {v1, p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    #@1b
    move-result-object v0

    #@1c
    .line 875
    .local v0, "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    const-string/jumbo v3, "GSMPhone"

    #@1f
    .line 876
    new-instance v4, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v5, "dialing w/ mmi \'"

    #@27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    const-string/jumbo v5, "\'..."

    #@32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    .line 875
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    .line 878
    if-nez v0, :cond_1

    #@3f
    .line 879
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@41
    invoke-virtual {v3, v2, p2, p4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    #@44
    move-result-object v3

    #@45
    return-object v3

    #@46
    .line 880
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTemporaryModeCLIR()Z

    #@49
    move-result v3

    #@4a
    if-eqz v3, :cond_2

    #@4c
    .line 881
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@4e
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    #@50
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getCLIRMode()I

    #@53
    move-result v5

    #@54
    invoke-virtual {v3, v4, v5, p2, p4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    #@57
    move-result-object v3

    #@58
    return-object v3

    #@59
    .line 883
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@5b
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5e
    .line 884
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    #@60
    new-instance v4, Landroid/os/AsyncResult;

    #@62
    invoke-direct {v4, v6, v0, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@65
    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@68
    .line 885
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processCode()V

    #@6b
    .line 888
    return-object v6
.end method

.method public disableLocationUpdates()V
    .locals 1

    #@0
    .prologue
    .line 1312
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->disableLocationUpdates()V

    #@5
    .line 1311
    return-void
.end method

.method public dispose()V
    .locals 2

    #@0
    .prologue
    .line 219
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 220
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->dispose()V

    #@6
    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@8
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    #@b
    .line 224
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->unregisterForSimRecordEvents()V

    #@e
    .line 225
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@10
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    #@13
    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@15
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    #@18
    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #@1a
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForNetworkAttached(Landroid/os/Handler;)V

    #@1d
    .line 228
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1f
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUSSD(Landroid/os/Handler;)V

    #@22
    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@24
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSuppServiceNotification(Landroid/os/Handler;)V

    #@27
    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@29
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSs(Landroid/os/Handler;)V

    #@2c
    .line 232
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@31
    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@33
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dispose()V

    #@36
    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@38
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dispose()V

    #@3b
    .line 237
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #@3d
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dispose()V

    #@40
    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    #@42
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->dispose()V

    #@45
    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    #@47
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4a
    monitor-exit v1

    #@4b
    .line 218
    return-void

    #@4c
    .line 219
    :catchall_0
    move-exception v0

    #@4d
    monitor-exit v1

    #@4e
    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1890
    const-string/jumbo v0, "GSMPhone extends:"

    #@3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 1891
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@9
    .line 1892
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v1, " mCT="

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

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
    .line 1893
    new-instance v0, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v1, " mSST="

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3b
    .line 1894
    new-instance v0, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v1, " mPendingMMIs="

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v0

    #@51
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@54
    .line 1895
    new-instance v0, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v1, " mSimPhoneBookIntManager="

    #@5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    #@62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v0

    #@66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v0

    #@6a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6d
    .line 1896
    new-instance v0, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v1, " mSubInfo="

    #@75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v0

    #@79
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    #@7b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v0

    #@7f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v0

    #@83
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@86
    .line 1899
    new-instance v0, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v1, " mVmNumber="

    #@8e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v0

    #@92
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    #@94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v0

    #@98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v0

    #@9c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9f
    .line 1889
    return-void
.end method

.method public enableLocationUpdates()V
    .locals 1

    #@0
    .prologue
    .line 1307
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->enableLocationUpdates()V

    #@5
    .line 1306
    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 1

    #@0
    .prologue
    .line 1883
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1884
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@6
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->exitEmergencyCallbackMode()V

    #@9
    .line 1882
    :cond_0
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 1

    #@0
    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->explicitCallTransfer()V

    #@5
    .line 560
    return-void
.end method

.method protected finalize()V
    .locals 2

    #@0
    .prologue
    .line 257
    const-string/jumbo v0, "GSMPhone"

    #@3
    const-string/jumbo v1, "GSMPhone finalized"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 256
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1264
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getAvailableNetworks(Landroid/os/Message;)V

    #@5
    .line 1263
    return-void
.end method

.method public bridge synthetic getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    #@0
    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;
    .locals 1

    #@0
    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@2
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@4
    return-object v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 6
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 1170
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@4
    .line 1171
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v0, :cond_0

    #@6
    .line 1172
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    #@d
    move-result v2

    #@e
    if-nez v2, :cond_0

    #@10
    .line 1173
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallForwardingOption(ILandroid/os/Message;)V

    #@13
    .line 1174
    return-void

    #@14
    .line 1177
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFReason(I)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_1

    #@1a
    .line 1178
    const-string/jumbo v2, "GSMPhone"

    #@1d
    const-string/jumbo v3, "requesting call forwarding query."

    #@20
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 1180
    if-nez p1, :cond_2

    #@25
    .line 1181
    const/16 v2, 0xd

    #@27
    invoke-virtual {p0, v2, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@2a
    move-result-object v1

    #@2b
    .line 1185
    .local v1, "resp":Landroid/os/Message;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2d
    invoke-interface {v2, p1, v4, v5, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    #@30
    .line 1169
    .end local v1    # "resp":Landroid/os/Message;
    :cond_1
    return-void

    #@31
    .line 1183
    :cond_2
    move-object v1, p2

    #@32
    .restart local v1    # "resp":Landroid/os/Message;
    goto :goto_0
.end method

.method public getCallTracker()Lcom/android/internal/telephony/CallTracker;
    .locals 1

    #@0
    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@2
    return-object v0
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 3
    .param p1, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1237
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@3
    .line 1238
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v0, :cond_0

    #@5
    .line 1239
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    .line 1240
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallWaiting(Landroid/os/Message;)V

    #@12
    .line 1241
    return-void

    #@13
    .line 1246
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@15
    invoke-interface {v1, v2, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    #@18
    .line 1236
    return-void
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1787
    const-string/jumbo v0, "GSMPhone"

    #@3
    const-string/jumbo v1, "[GSMPhone] getCellBroadcastSmsConfig() is obsolete; use SmsManager"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1788
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    #@c
    .line 1786
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    #@0
    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCellLocation()Landroid/telephony/CellLocation;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 3

    #@0
    .prologue
    .line 388
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    #@2
    .line 390
    .local v0, "ret":Lcom/android/internal/telephony/Phone$DataActivityState;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #@4
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCurrentDataConnectionState()I

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 391
    invoke-static {}, Lcom/android/internal/telephony/gsm/GSMPhone;->-getcom_android_internal_telephony_DctConstants$ActivitySwitchesValues()[I

    #@d
    move-result-object v1

    #@e
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@10
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getActivity()Lcom/android/internal/telephony/DctConstants$Activity;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Lcom/android/internal/telephony/DctConstants$Activity;->ordinal()I

    #@17
    move-result v2

    #@18
    aget v1, v1, v2

    #@1a
    packed-switch v1, :pswitch_data_0

    #@1d
    .line 409
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    #@1f
    .line 414
    :cond_0
    :goto_0
    return-object v0

    #@20
    .line 393
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAIN:Lcom/android/internal/telephony/Phone$DataActivityState;

    #@22
    goto :goto_0

    #@23
    .line 397
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    #@25
    goto :goto_0

    #@26
    .line 401
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    #@28
    goto :goto_0

    #@29
    .line 405
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DORMANT:Lcom/android/internal/telephony/Phone$DataActivityState;

    #@2b
    goto :goto_0

    #@2c
    .line 391
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1297
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    #@5
    .line 1296
    return-void
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 336
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@2
    .line 338
    .local v0, "ret":Lcom/android/internal/telephony/PhoneConstants$DataState;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 342
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@8
    .line 383
    :goto_0
    return-object v0

    #@9
    .line 343
    :cond_0
    const-string/jumbo v1, "emergency"

    #@c
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_1

    #@12
    .line 344
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #@14
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCurrentDataConnectionState()I

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 351
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@1c
    goto :goto_0

    #@1d
    .line 352
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@1f
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeEnabled(Ljava/lang/String;)Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_2

    #@25
    .line 353
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@27
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeActive(Ljava/lang/String;)Z

    #@2a
    move-result v1

    #@2b
    if-nez v1, :cond_3

    #@2d
    .line 357
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@2f
    goto :goto_0

    #@30
    .line 359
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/gsm/GSMPhone;->-getcom_android_internal_telephony_DctConstants$StateSwitchesValues()[I

    #@33
    move-result-object v1

    #@34
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@36
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@3d
    move-result v2

    #@3e
    aget v1, v1, v2

    #@40
    packed-switch v1, :pswitch_data_0

    #@43
    goto :goto_0

    #@44
    .line 368
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@46
    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@48
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@4a
    if-eq v1, v2, :cond_4

    #@4c
    .line 369
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #@4e
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    #@51
    move-result v1

    #@52
    if-eqz v1, :cond_5

    #@54
    .line 372
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@56
    goto :goto_0

    #@57
    .line 363
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@59
    goto :goto_0

    #@5a
    .line 370
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@5c
    goto :goto_0

    #@5d
    .line 378
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@5f
    goto :goto_0

    #@60
    .line 359
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getDataEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1327
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1317
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataOnRoamingEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1026
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1031
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiSv:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1046
    const-string/jumbo v0, "GSMPhone"

    #@3
    const-string/jumbo v1, "[GSMPhone] getEsn() is a CDMA method"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1047
    const-string/jumbo v0, "0"

    #@c
    return-object v0
.end method

.method public bridge synthetic getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    #@0
    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;
    .locals 1

    #@0
    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@2
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@4
    return-object v0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1073
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@9
    .line 1074
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid1()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    :cond_0
    return-object v1
.end method

.method public getGroupIdLevel2()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1079
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@9
    .line 1080
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid2()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    :cond_0
    return-object v1
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    #@0
    .prologue
    .line 1765
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    #@2
    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1041
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
    .locals 1

    #@0
    .prologue
    .line 1036
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    #@2
    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1097
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@9
    .line 1098
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnAlphaTag()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    :cond_0
    return-object v1
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1085
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@9
    .line 1086
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    :cond_0
    return-object v1
.end method

.method public getMeid()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1052
    const-string/jumbo v0, "GSMPhone"

    #@3
    const-string/jumbo v1, "[GSMPhone] getMeid() is a CDMA method"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1053
    const-string/jumbo v0, "0"

    #@c
    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1091
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@9
    .line 1092
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    :cond_0
    return-object v1
.end method

.method public getMute()Z
    .locals 1

    #@0
    .prologue
    .line 1292
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getMute()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getNai()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v4, 0x2

    #@2
    .line 1058
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@4
    iget v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    #@6
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    #@9
    move-result-object v0

    #@a
    .line 1059
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    const-string/jumbo v2, "GSMPhone"

    #@d
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 1060
    const-string/jumbo v2, "GSMPhone"

    #@16
    new-instance v3, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v4, "IccRecords is "

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 1062
    :cond_0
    if-eqz v0, :cond_1

    #@2f
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getNAI()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    :cond_1
    return-object v1
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1270
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getNeighboringCids(Landroid/os/Message;)V

    #@5
    .line 1269
    return-void
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1933
    const/4 v0, 0x0

    #@1
    .line 1934
    .local v0, "operatorNumeric":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    #@9
    .line 1935
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    #@b
    .line 1936
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 1938
    .end local v0    # "operatorNumeric":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1225
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    #@5
    .line 1224
    return-void
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    #@0
    .prologue
    .line 1757
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    #@2
    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    #@0
    .prologue
    .line 298
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 2

    #@0
    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2
    .line 579
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@4
    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@6
    if-eqz v1, :cond_0

    #@8
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@a
    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@c
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->isRinging()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 580
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@14
    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@16
    return-object v1

    #@17
    .line 581
    :cond_0
    if-eqz v0, :cond_1

    #@19
    .line 582
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@1c
    move-result-object v1

    #@1d
    return-object v1

    #@1e
    .line 584
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@20
    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@22
    return-object v1
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 2

    #@0
    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #@6
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@8
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_2

    #@e
    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@10
    if-eqz v0, :cond_2

    #@12
    .line 266
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #@14
    if-nez v0, :cond_1

    #@16
    new-instance v0, Landroid/telephony/ServiceState;

    #@18
    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    #@1b
    .line 267
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@1d
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    #@20
    move-result-object v1

    #@21
    .line 265
    invoke-static {v0, v1}, Landroid/telephony/ServiceState;->mergeServiceStates(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    #@24
    move-result-object v0

    #@25
    return-object v0

    #@26
    .line 266
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #@28
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@2a
    goto :goto_0

    #@2b
    .line 271
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #@2d
    if-eqz v0, :cond_3

    #@2f
    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #@31
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@33
    return-object v0

    #@34
    .line 275
    :cond_3
    new-instance v0, Landroid/telephony/ServiceState;

    #@36
    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    #@39
    return-object v0
.end method

.method public getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;
    .locals 1

    #@0
    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #@2
    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 2

    #@0
    .prologue
    .line 286
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 287
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@6
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    #@9
    move-result-object v0

    #@a
    .line 288
    .local v0, "imsState":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@c
    if-eq v0, v1, :cond_0

    #@e
    .line 289
    return-object v0

    #@f
    .line 293
    .end local v0    # "imsState":Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@11
    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@13
    return-object v1
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1067
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@9
    .line 1068
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    :cond_0
    return-object v1
.end method

.method public getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1142
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getUnitTestMode()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1143
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 1145
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    #@a
    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3

    #@0
    .prologue
    .line 1639
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@2
    iget v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    #@4
    .line 1640
    const/4 v2, 0x1

    #@5
    .line 1639
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 1012
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@8
    .line 1014
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_1

    #@a
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceMailAlphaTag()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 1016
    .local v1, "ret":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    #@10
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@13
    move-result v2

    #@14
    if-nez v2, :cond_2

    #@16
    .line 1017
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    #@18
    .line 1018
    const v3, 0x1040004

    #@1b
    .line 1017
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@1e
    move-result-object v2

    #@1f
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    return-object v2

    #@24
    .line 1014
    .end local v1    # "ret":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, ""

    #@27
    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    #@28
    .line 1021
    :cond_2
    return-object v1
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    const/4 v8, 0x0

    #@3
    .line 966
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@5
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@8
    move-result-object v4

    #@9
    check-cast v4, Lcom/android/internal/telephony/uicc/IccRecords;

    #@b
    .line 967
    .local v4, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v4, :cond_2

    #@d
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceMailNumber()Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    .line 968
    .local v3, "number":Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@14
    move-result v6

    #@15
    if-eqz v6, :cond_0

    #@17
    .line 969
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@1a
    move-result-object v6

    #@1b
    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@1e
    move-result-object v5

    #@1f
    .line 970
    .local v5, "sp":Landroid/content/SharedPreferences;
    new-instance v6, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v7, "vm_number_key"

    #@27
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    #@2e
    move-result v7

    #@2f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v6

    #@33
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v6

    #@37
    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    .line 973
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3e
    move-result v6

    #@3f
    if-eqz v6, :cond_4

    #@41
    .line 974
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@44
    move-result-object v6

    #@45
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@48
    move-result-object v6

    #@49
    .line 975
    const v7, 0x107003e

    #@4c
    .line 974
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    .line 976
    .local v2, "listArray":[Ljava/lang/String;
    if-eqz v2, :cond_4

    #@52
    array-length v6, v2

    #@53
    if-lez v6, :cond_4

    #@55
    .line 977
    const/4 v1, 0x0

    #@56
    .local v1, "i":I
    :goto_1
    array-length v6, v2

    #@57
    if-ge v1, v6, :cond_4

    #@59
    .line 978
    aget-object v6, v2, v1

    #@5b
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5e
    move-result v6

    #@5f
    if-nez v6, :cond_1

    #@61
    .line 979
    aget-object v6, v2, v1

    #@63
    const-string/jumbo v7, ";"

    #@66
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@69
    move-result-object v0

    #@6a
    .line 980
    .local v0, "defaultVMNumberArray":[Ljava/lang/String;
    if-eqz v0, :cond_1

    #@6c
    array-length v6, v0

    #@6d
    if-lez v6, :cond_1

    #@6f
    .line 981
    array-length v6, v0

    #@70
    if-ne v6, v10, :cond_3

    #@72
    .line 982
    aget-object v3, v0, v8

    #@74
    .line 977
    .end local v0    # "defaultVMNumberArray":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@76
    goto :goto_1

    #@77
    .line 967
    .end local v1    # "i":I
    .end local v2    # "listArray":[Ljava/lang/String;
    .end local v3    # "number":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, ""

    #@7a
    .restart local v3    # "number":Ljava/lang/String;
    goto :goto_0

    #@7b
    .line 983
    .restart local v0    # "defaultVMNumberArray":[Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "listArray":[Ljava/lang/String;
    :cond_3
    array-length v6, v0

    #@7c
    const/4 v7, 0x2

    #@7d
    if-ne v6, v7, :cond_1

    #@7f
    .line 984
    aget-object v6, v0, v10

    #@81
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@84
    move-result v6

    #@85
    if-nez v6, :cond_1

    #@87
    .line 985
    aget-object v6, v0, v10

    #@89
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getGroupIdLevel1()Ljava/lang/String;

    #@8c
    move-result-object v7

    #@8d
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@90
    move-result v6

    #@91
    .line 983
    if-eqz v6, :cond_1

    #@93
    .line 986
    aget-object v3, v0, v8

    #@95
    .line 994
    .end local v0    # "defaultVMNumberArray":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "listArray":[Ljava/lang/String;
    :cond_4
    return-object v3
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 5
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 741
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@3
    .line 742
    .local v1, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v1, :cond_0

    #@5
    .line 743
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    #@c
    move-result v3

    #@d
    if-nez v3, :cond_0

    #@f
    .line 744
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    #@12
    move-result v3

    #@13
    return v3

    #@14
    .line 747
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    #@17
    move-result v3

    #@18
    if-nez v3, :cond_1

    #@1a
    .line 748
    return v4

    #@1b
    .line 751
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_2

    #@21
    .line 752
    return v4

    #@22
    .line 755
    :cond_2
    const/4 v2, 0x0

    #@23
    .line 756
    .local v2, "result":Z
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@26
    move-result v0

    #@27
    .line 757
    .local v0, "ch":C
    packed-switch v0, :pswitch_data_0

    #@2a
    .line 782
    .end local v2    # "result":Z
    :goto_0
    return v2

    #@2b
    .line 759
    .restart local v2    # "result":Z
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z

    #@2e
    move-result v2

    #@2f
    .local v2, "result":Z
    goto :goto_0

    #@30
    .line 763
    .local v2, "result":Z
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z

    #@33
    move-result v2

    #@34
    .local v2, "result":Z
    goto :goto_0

    #@35
    .line 767
    .local v2, "result":Z
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z

    #@38
    move-result v2

    #@39
    .local v2, "result":Z
    goto :goto_0

    #@3a
    .line 770
    .local v2, "result":Z
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z

    #@3d
    move-result v2

    #@3e
    .local v2, "result":Z
    goto :goto_0

    #@3f
    .line 773
    .local v2, "result":Z
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleEctIncallSupplementaryService(Ljava/lang/String;)Z

    #@42
    move-result v2

    #@43
    .local v2, "result":Z
    goto :goto_0

    #@44
    .line 776
    .local v2, "result":Z
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z

    #@47
    move-result v2

    #@48
    .local v2, "result":Z
    goto :goto_0

    #@49
    .line 757
    nop

    #@4a
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1433
    move-object/from16 v0, p1

    #@2
    iget v13, v0, Landroid/os/Message;->what:I

    #@4
    packed-switch v13, :pswitch_data_0

    #@7
    .line 1441
    move-object/from16 v0, p0

    #@9
    iget-boolean v13, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsTheCurrentActivePhone:Z

    #@b
    if-nez v13, :cond_0

    #@d
    .line 1442
    const-string/jumbo v13, "GSMPhone"

    #@10
    new-instance v14, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v15, "Received message "

    #@18
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v14

    #@1c
    move-object/from16 v0, p1

    #@1e
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v14

    #@22
    .line 1443
    const-string/jumbo v15, "["

    #@25
    .line 1442
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v14

    #@29
    .line 1443
    move-object/from16 v0, p1

    #@2b
    iget v15, v0, Landroid/os/Message;->what:I

    #@2d
    .line 1442
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v14

    #@31
    .line 1443
    const-string/jumbo v15, "] while being destroyed. Ignoring."

    #@34
    .line 1442
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v14

    #@38
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v14

    #@3c
    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 1444
    return-void

    #@40
    .line 1437
    :pswitch_0
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/PhoneBase;->handleMessage(Landroid/os/Message;)V

    #@43
    .line 1438
    return-void

    #@44
    .line 1446
    :cond_0
    move-object/from16 v0, p1

    #@46
    iget v13, v0, Landroid/os/Message;->what:I

    #@48
    packed-switch v13, :pswitch_data_1

    #@4b
    .line 1634
    :pswitch_1
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/PhoneBase;->handleMessage(Landroid/os/Message;)V

    #@4e
    .line 1426
    :cond_1
    :goto_0
    return-void

    #@4f
    .line 1448
    :pswitch_2
    move-object/from16 v0, p0

    #@51
    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@53
    .line 1449
    const/4 v14, 0x6

    #@54
    move-object/from16 v0, p0

    #@56
    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    #@59
    move-result-object v14

    #@5a
    .line 1448
    invoke-interface {v13, v14}, Lcom/android/internal/telephony/CommandsInterface;->getBasebandVersion(Landroid/os/Message;)V

    #@5d
    .line 1451
    move-object/from16 v0, p0

    #@5f
    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@61
    const/16 v14, 0x9

    #@63
    move-object/from16 v0, p0

    #@65
    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    #@68
    move-result-object v14

    #@69
    invoke-interface {v13, v14}, Lcom/android/internal/telephony/CommandsInterface;->getIMEI(Landroid/os/Message;)V

    #@6c
    .line 1452
    move-object/from16 v0, p0

    #@6e
    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@70
    const/16 v14, 0xa

    #@72
    move-object/from16 v0, p0

    #@74
    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    #@77
    move-result-object v14

    #@78
    invoke-interface {v13, v14}, Lcom/android/internal/telephony/CommandsInterface;->getIMEISV(Landroid/os/Message;)V

    #@7b
    .line 1453
    move-object/from16 v0, p0

    #@7d
    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@7f
    const/16 v14, 0x23

    #@81
    move-object/from16 v0, p0

    #@83
    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    #@86
    move-result-object v14

    #@87
    invoke-interface {v13, v14}, Lcom/android/internal/telephony/CommandsInterface;->getRadioCapability(Landroid/os/Message;)V

    #@8a
    .line 1454
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->startLceAfterRadioIsAvailable()V

    #@8d
    goto :goto_0

    #@8e
    .line 1461
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setPreferredNetworkTypeIfSimLoaded()V

    #@91
    goto :goto_0

    #@92
    .line 1465
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->syncClirSetting()V

    #@95
    goto :goto_0

    #@96
    .line 1469
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateCurrentCarrierInProvider()Z

    #@99
    .line 1473
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getVmSimImsi()Ljava/lang/String;

    #@9c
    move-result-object v6

    #@9d
    .line 1474
    .local v6, "imsi":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscriberId()Ljava/lang/String;

    #@a0
    move-result-object v7

    #@a1
    .line 1475
    .local v7, "imsiFromSIM":Ljava/lang/String;
    if-eqz v6, :cond_2

    #@a3
    if-eqz v7, :cond_2

    #@a5
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a8
    move-result v13

    #@a9
    if-eqz v13, :cond_3

    #@ab
    .line 1480
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    #@ad
    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    #@af
    invoke-virtual {v13}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@b2
    .line 1481
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateVoiceMail()V

    #@b5
    goto :goto_0

    #@b6
    .line 1476
    :cond_3
    const/4 v13, 0x0

    #@b7
    move-object/from16 v0, p0

    #@b9
    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    #@bc
    .line 1477
    const/4 v13, 0x0

    #@bd
    move-object/from16 v0, p0

    #@bf
    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVmSimImsi(Ljava/lang/String;)V

    #@c2
    goto :goto_1

    #@c3
    .line 1485
    .end local v6    # "imsi":Ljava/lang/String;
    .end local v7    # "imsiFromSIM":Ljava/lang/String;
    :pswitch_6
    move-object/from16 v0, p1

    #@c5
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c7
    check-cast v1, Landroid/os/AsyncResult;

    #@c9
    .line 1487
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v13, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@cb
    if-nez v13, :cond_1

    #@cd
    .line 1491
    const-string/jumbo v13, "GSMPhone"

    #@d0
    new-instance v14, Ljava/lang/StringBuilder;

    #@d2
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@d5
    const-string/jumbo v15, "Baseband version: "

    #@d8
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v14

    #@dc
    iget-object v15, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@de
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v14

    #@e2
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e5
    move-result-object v14

    #@e6
    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@e9
    .line 1492
    move-object/from16 v0, p0

    #@eb
    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    #@ed
    invoke-static {v13}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@f0
    move-result-object v14

    #@f1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    #@f4
    move-result v15

    #@f5
    .line 1493
    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@f7
    check-cast v13, Ljava/lang/String;

    #@f9
    .line 1492
    invoke-virtual {v14, v15, v13}, Landroid/telephony/TelephonyManager;->setBasebandVersionForPhone(ILjava/lang/String;)V

    #@fc
    goto/16 :goto_0

    #@fe
    .line 1497
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    move-object/from16 v0, p1

    #@100
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@102
    check-cast v1, Landroid/os/AsyncResult;

    #@104
    .line 1499
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v13, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@106
    if-nez v13, :cond_1

    #@108
    .line 1503
    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@10a
    check-cast v13, Ljava/lang/String;

    #@10c
    move-object/from16 v0, p0

    #@10e
    iput-object v13, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    #@110
    goto/16 :goto_0

    #@112
    .line 1507
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_8
    move-object/from16 v0, p1

    #@114
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@116
    check-cast v1, Landroid/os/AsyncResult;

    #@118
    .line 1509
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v13, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@11a
    if-nez v13, :cond_1

    #@11c
    .line 1513
    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@11e
    check-cast v13, Ljava/lang/String;

    #@120
    move-object/from16 v0, p0

    #@122
    iput-object v13, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiSv:Ljava/lang/String;

    #@124
    goto/16 :goto_0

    #@126
    .line 1517
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_9
    move-object/from16 v0, p1

    #@128
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@12a
    check-cast v1, Landroid/os/AsyncResult;

    #@12c
    .line 1519
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v12, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@12e
    check-cast v12, [Ljava/lang/String;

    #@130
    .line 1521
    .local v12, "ussdResult":[Ljava/lang/String;
    array-length v13, v12

    #@131
    const/4 v14, 0x1

    #@132
    if-le v13, v14, :cond_1

    #@134
    .line 1523
    const/4 v13, 0x0

    #@135
    :try_start_0
    aget-object v13, v12, v13

    #@137
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@13a
    move-result v13

    #@13b
    const/4 v14, 0x1

    #@13c
    aget-object v14, v12, v14

    #@13e
    move-object/from16 v0, p0

    #@140
    invoke-direct {v0, v13, v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->onIncomingUSSD(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@143
    goto/16 :goto_0

    #@145
    .line 1524
    :catch_0
    move-exception v3

    #@146
    .line 1525
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v13, "GSMPhone"

    #@149
    const-string/jumbo v14, "error parsing USSD"

    #@14c
    invoke-static {v13, v14}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@14f
    goto/16 :goto_0

    #@151
    .line 1536
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v12    # "ussdResult":[Ljava/lang/String;
    :pswitch_a
    move-object/from16 v0, p0

    #@153
    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@155
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    #@158
    move-result v13

    #@159
    add-int/lit8 v4, v13, -0x1

    #@15b
    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_5

    #@15d
    .line 1537
    move-object/from16 v0, p0

    #@15f
    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@161
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@164
    move-result-object v13

    #@165
    check-cast v13, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    #@167
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD()Z

    #@16a
    move-result v13

    #@16b
    if-eqz v13, :cond_4

    #@16d
    .line 1538
    move-object/from16 v0, p0

    #@16f
    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@171
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@174
    move-result-object v13

    #@175
    check-cast v13, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    #@177
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinishedError()V

    #@17a
    .line 1536
    :cond_4
    add-int/lit8 v4, v4, -0x1

    #@17c
    goto :goto_2

    #@17d
    .line 1541
    :cond_5
    move-object/from16 v0, p0

    #@17f
    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@181
    .line 1542
    .local v5, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v5, :cond_6

    #@183
    .line 1543
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    #@186
    move-result-object v13

    #@187
    invoke-virtual {v13}, Landroid/telephony/ServiceState;->setStateOff()V

    #@18a
    .line 1545
    :cond_6
    move-object/from16 v0, p0

    #@18c
    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mRadioOffOrNotAvailableRegistrants:Landroid/os/RegistrantList;

    #@18e
    invoke-virtual {v13}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@191
    goto/16 :goto_0

    #@193
    .line 1550
    .end local v4    # "i":I
    .end local v5    # "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    :pswitch_b
    move-object/from16 v0, p1

    #@195
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@197
    check-cast v1, Landroid/os/AsyncResult;

    #@199
    .line 1551
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v9, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@19b
    check-cast v9, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    #@19d
    .line 1552
    .local v9, "not":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    move-object/from16 v0, p0

    #@19f
    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    #@1a1
    invoke-virtual {v13, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@1a4
    goto/16 :goto_0

    #@1a6
    .line 1556
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v9    # "not":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    :pswitch_c
    move-object/from16 v0, p1

    #@1a8
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1aa
    check-cast v1, Landroid/os/AsyncResult;

    #@1ac
    .line 1557
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    #@1ae
    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@1b0
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@1b3
    move-result-object v11

    #@1b4
    check-cast v11, Lcom/android/internal/telephony/uicc/IccRecords;

    #@1b6
    .line 1558
    .local v11, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@1b8
    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;

    #@1ba
    .line 1559
    .local v2, "cfu":Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;
    iget-object v13, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1bc
    if-nez v13, :cond_7

    #@1be
    if-eqz v11, :cond_7

    #@1c0
    .line 1560
    move-object/from16 v0, p1

    #@1c2
    iget v13, v0, Landroid/os/Message;->arg1:I

    #@1c4
    const/4 v14, 0x1

    #@1c5
    if-ne v13, v14, :cond_8

    #@1c7
    const/4 v13, 0x1

    #@1c8
    :goto_3
    iget-object v14, v2, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;->mSetCfNumber:Ljava/lang/String;

    #@1ca
    const/4 v15, 0x1

    #@1cb
    invoke-virtual {v11, v15, v13, v14}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    #@1ce
    .line 1562
    :cond_7
    iget-object v13, v2, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;->mOnComplete:Landroid/os/Message;

    #@1d0
    if-eqz v13, :cond_1

    #@1d2
    .line 1563
    iget-object v13, v2, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;->mOnComplete:Landroid/os/Message;

    #@1d4
    iget-object v14, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@1d6
    iget-object v15, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1d8
    invoke-static {v13, v14, v15}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@1db
    .line 1564
    iget-object v13, v2, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;->mOnComplete:Landroid/os/Message;

    #@1dd
    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    #@1e0
    goto/16 :goto_0

    #@1e2
    .line 1560
    :cond_8
    const/4 v13, 0x0

    #@1e3
    goto :goto_3

    #@1e4
    .line 1569
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "cfu":Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;
    .end local v11    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :pswitch_d
    move-object/from16 v0, p1

    #@1e6
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1e8
    check-cast v1, Landroid/os/AsyncResult;

    #@1ea
    .line 1570
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    const-class v13, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;

    #@1ec
    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1ee
    invoke-virtual {v13, v14}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@1f1
    move-result v13

    #@1f2
    if-eqz v13, :cond_9

    #@1f4
    .line 1571
    move-object/from16 v0, p0

    #@1f6
    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    #@1f8
    move-object/from16 v0, p0

    #@1fa
    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    #@1fd
    .line 1572
    const/4 v13, 0x0

    #@1fe
    iput-object v13, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@200
    .line 1574
    :cond_9
    iget-object v10, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@202
    check-cast v10, Landroid/os/Message;

    #@204
    .line 1575
    .local v10, "onComplete":Landroid/os/Message;
    if-eqz v10, :cond_1

    #@206
    .line 1576
    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@208
    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@20a
    invoke-static {v10, v13, v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@20d
    .line 1577
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    #@210
    goto/16 :goto_0

    #@212
    .line 1583
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "onComplete":Landroid/os/Message;
    :pswitch_e
    move-object/from16 v0, p1

    #@214
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@216
    check-cast v1, Landroid/os/AsyncResult;

    #@218
    .line 1584
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v13, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@21a
    if-nez v13, :cond_a

    #@21c
    .line 1585
    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@21e
    check-cast v13, [Lcom/android/internal/telephony/CallForwardInfo;

    #@220
    move-object/from16 v0, p0

    #@222
    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCfuQueryResult([Lcom/android/internal/telephony/CallForwardInfo;)V

    #@225
    .line 1587
    :cond_a
    iget-object v10, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@227
    check-cast v10, Landroid/os/Message;

    #@229
    .line 1588
    .restart local v10    # "onComplete":Landroid/os/Message;
    if-eqz v10, :cond_1

    #@22b
    .line 1589
    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@22d
    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@22f
    invoke-static {v10, v13, v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@232
    .line 1590
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    #@235
    goto/16 :goto_0

    #@237
    .line 1596
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "onComplete":Landroid/os/Message;
    :pswitch_f
    move-object/from16 v0, p1

    #@239
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@23b
    check-cast v1, Landroid/os/AsyncResult;

    #@23d
    .line 1597
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    #@23f
    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #@241
    iget-object v13, v13, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@243
    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    #@246
    move-result v13

    #@247
    if-eqz v13, :cond_b

    #@249
    .line 1598
    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@24b
    check-cast v13, Landroid/os/Message;

    #@24d
    move-object/from16 v0, p0

    #@24f
    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    #@252
    .line 1599
    const-string/jumbo v13, "GSMPhone"

    #@255
    const-string/jumbo v14, "SET_NETWORK_SELECTION_AUTOMATIC: set to automatic"

    #@258
    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@25b
    goto/16 :goto_0

    #@25d
    .line 1602
    :cond_b
    const-string/jumbo v13, "GSMPhone"

    #@260
    const-string/jumbo v14, "SET_NETWORK_SELECTION_AUTOMATIC: already automatic, ignore"

    #@263
    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@266
    goto/16 :goto_0

    #@268
    .line 1607
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_10
    move-object/from16 v0, p1

    #@26a
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@26c
    check-cast v1, Landroid/os/AsyncResult;

    #@26e
    .line 1608
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@270
    check-cast v13, Ljava/lang/Integer;

    #@272
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    #@275
    move-result v13

    #@276
    move-object/from16 v0, p0

    #@278
    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->processIccRecordEvents(I)V

    #@27b
    goto/16 :goto_0

    #@27d
    .line 1612
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_11
    move-object/from16 v0, p1

    #@27f
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@281
    check-cast v1, Landroid/os/AsyncResult;

    #@283
    .line 1613
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v13, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@285
    if-nez v13, :cond_c

    #@287
    .line 1614
    move-object/from16 v0, p1

    #@289
    iget v13, v0, Landroid/os/Message;->arg1:I

    #@28b
    move-object/from16 v0, p0

    #@28d
    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->saveClirSetting(I)V

    #@290
    .line 1616
    :cond_c
    iget-object v10, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@292
    check-cast v10, Landroid/os/Message;

    #@294
    .line 1617
    .restart local v10    # "onComplete":Landroid/os/Message;
    if-eqz v10, :cond_1

    #@296
    .line 1618
    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@298
    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@29a
    invoke-static {v10, v13, v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@29d
    .line 1619
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    #@2a0
    goto/16 :goto_0

    #@2a2
    .line 1624
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "onComplete":Landroid/os/Message;
    :pswitch_12
    move-object/from16 v0, p1

    #@2a4
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2a6
    check-cast v1, Landroid/os/AsyncResult;

    #@2a8
    .line 1625
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    const-string/jumbo v13, "GSMPhone"

    #@2ab
    const-string/jumbo v14, "Event EVENT_SS received"

    #@2ae
    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2b1
    .line 1629
    new-instance v8, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    #@2b3
    move-object/from16 v0, p0

    #@2b5
    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    #@2b7
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@2ba
    move-result-object v13

    #@2bb
    check-cast v13, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@2bd
    move-object/from16 v0, p0

    #@2bf
    invoke-direct {v8, v0, v13}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    #@2c2
    .line 1630
    .local v8, "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-virtual {v8, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processSsData(Landroid/os/AsyncResult;)V

    #@2c5
    goto/16 :goto_0

    #@2c7
    .line 1433
    nop

    #@2c8
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
    .end packed-switch

    #@2d0
    .line 1446
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_b
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_c
        :pswitch_e
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_11
        :pswitch_4
        :pswitch_d
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_f
        :pswitch_10
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_12
    .end packed-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 894
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    #@3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@9
    invoke-static {p1, p0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    #@c
    move-result-object v0

    #@d
    .line 896
    .local v0, "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    if-eqz v0, :cond_0

    #@f
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPinPukCommand()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 897
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1a
    .line 898
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    #@1c
    new-instance v2, Landroid/os/AsyncResult;

    #@1e
    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@21
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@24
    .line 899
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processCode()V

    #@27
    .line 900
    const/4 v1, 0x1

    #@28
    return v1

    #@29
    .line 903
    :cond_0
    const/4 v1, 0x0

    #@2a
    return v1
.end method

.method protected isCfEnable(I)Z
    .locals 2
    .param p1, "action"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1165
    if-eq p1, v0, :cond_0

    #@3
    const/4 v1, 0x3

    #@4
    if-ne p1, v1, :cond_1

    #@6
    :cond_0
    :goto_0
    return v0

    #@7
    :cond_1
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public isCspPlmnEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 1804
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@8
    .line 1805
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->isCspPlmnEnabled()Z

    #@d
    move-result v1

    #@e
    :goto_0
    return v1

    #@f
    :cond_0
    const/4 v1, 0x0

    #@10
    goto :goto_0
.end method

.method isInCall()Z
    .locals 4

    #@0
    .prologue
    .line 786
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@7
    move-result-object v1

    #@8
    .line 787
    .local v1, "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@f
    move-result-object v0

    #@10
    .line 788
    .local v0, "backgroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@17
    move-result-object v2

    #@18
    .line 790
    .local v2, "ringingCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@1b
    move-result v3

    #@1c
    if-nez v3, :cond_0

    #@1e
    .line 791
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@21
    move-result v3

    #@22
    .line 790
    if-nez v3, :cond_0

    #@24
    .line 792
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@27
    move-result v3

    #@28
    .line 790
    :goto_0
    return v3

    #@29
    :cond_0
    const/4 v3, 0x1

    #@2a
    goto :goto_0
.end method

.method isManualNetSelAllowed()Z
    .locals 5

    #@0
    .prologue
    .line 1810
    sget v0, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    #@2
    .line 1811
    .local v0, "nwMode":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    #@5
    move-result v1

    #@6
    .line 1813
    .local v1, "subId":I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@b
    move-result-object v2

    #@c
    .line 1814
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v4, "preferred_network_mode"

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    .line 1813
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@23
    move-result v0

    #@24
    .line 1816
    const-string/jumbo v2, "GSMPhone"

    #@27
    new-instance v3, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v4, "isManualNetSelAllowed in mode = "

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 1821
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isManualSelProhibitedInGlobalMode()Z

    #@41
    move-result v2

    #@42
    if-eqz v2, :cond_1

    #@44
    .line 1822
    const/16 v2, 0xa

    #@46
    if-eq v0, v2, :cond_0

    #@48
    .line 1823
    const/4 v2, 0x7

    #@49
    if-ne v0, v2, :cond_1

    #@4b
    .line 1824
    :cond_0
    const-string/jumbo v2, "GSMPhone"

    #@4e
    new-instance v3, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v4, "Manual selection not supported in mode = "

    #@56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v3

    #@5e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v3

    #@62
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    .line 1825
    const/4 v2, 0x0

    #@66
    return v2

    #@67
    .line 1827
    :cond_1
    const-string/jumbo v2, "GSMPhone"

    #@6a
    new-instance v3, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v4, "Manual selection is supported in mode = "

    #@72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v3

    #@76
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@79
    move-result-object v3

    #@7a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v3

    #@7e
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@81
    .line 1837
    const/4 v2, 0x1

    #@82
    return v2
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2000
    const-string/jumbo v0, "GSMPhone"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "[GSMPhone] "

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
    .line 1999
    return-void
.end method

.method public notifyCallForwardingIndicator()V
    .locals 1

    #@0
    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@2
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V

    #@5
    .line 466
    return-void
.end method

.method notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    #@0
    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    #@5
    .line 443
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@7
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    #@a
    move-result v1

    #@b
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getPreciseDisconnectCause()I

    #@e
    move-result v2

    #@f
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDisconnectCause(II)V

    #@12
    .line 440
    return-void
.end method

.method public notifyEcbmTimerReset(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "flag"    # Ljava/lang/Boolean;

    #@0
    .prologue
    .line 1962
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    #@5
    .line 1961
    return-void
.end method

.method notifyLocationChanged()V
    .locals 1

    #@0
    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@2
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCellLocation(Lcom/android/internal/telephony/Phone;)V

    #@5
    .line 460
    return-void
.end method

.method public notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    #@0
    .prologue
    .line 436
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    #@3
    .line 435
    return-void
.end method

.method notifyPhoneStateChanged()V
    .locals 1

    #@0
    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@2
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPhoneState(Lcom/android/internal/telephony/Phone;)V

    #@5
    .line 421
    return-void
.end method

.method notifyPreciseCallStateChanged()V
    .locals 0

    #@0
    .prologue
    .line 432
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyPreciseCallStateChangedP()V

    #@3
    .line 430
    return-void
.end method

.method notifyServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    #@0
    .prologue
    .line 456
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V

    #@3
    .line 455
    return-void
.end method

.method notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V
    .locals 1
    .param p1, "code"    # Lcom/android/internal/telephony/Phone$SuppService;

    #@0
    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    #@5
    .line 450
    return-void
.end method

.method notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    #@0
    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    #@5
    .line 446
    return-void
.end method

.method onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V
    .locals 3
    .param p1, "mmi"    # Lcom/android/internal/telephony/gsm/GsmMmiCode;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1347
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isUssdRequest()Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isSsInfo()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 1348
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    #@17
    .line 1349
    new-instance v1, Landroid/os/AsyncResult;

    #@19
    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@1c
    .line 1348
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@1f
    .line 1341
    :cond_1
    return-void
.end method

.method protected onUpdateIccAvailability()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1645
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 1646
    return-void

    #@6
    .line 1650
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@8
    iget v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    #@a
    const/4 v5, 0x3

    #@b
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@e
    move-result-object v2

    #@f
    .line 1651
    .local v2, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v1, 0x0

    #@10
    .line 1653
    .local v1, "newIsimUiccRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    if-eqz v2, :cond_1

    #@12
    .line 1654
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    #@15
    move-result-object v1

    #@16
    .end local v1    # "newIsimUiccRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    check-cast v1, Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    #@18
    .line 1655
    .local v1, "newIsimUiccRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    const-string/jumbo v3, "New ISIM application found"

    #@1b
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    #@1e
    .line 1657
    .end local v1    # "newIsimUiccRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    :cond_1
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    #@20
    .line 1659
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@23
    move-result-object v2

    #@24
    .line 1661
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    #@26
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@2c
    .line 1662
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eq v0, v2, :cond_4

    #@2e
    .line 1663
    if-eqz v0, :cond_3

    #@30
    .line 1664
    const-string/jumbo v3, "Removing stale icc objects."

    #@33
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    #@36
    .line 1665
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@38
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@3b
    move-result-object v3

    #@3c
    if-eqz v3, :cond_2

    #@3e
    .line 1666
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->unregisterForSimRecordEvents()V

    #@41
    .line 1667
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    #@43
    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    #@46
    .line 1669
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@48
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@4b
    .line 1670
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    #@4d
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@50
    .line 1672
    :cond_3
    if-eqz v2, :cond_4

    #@52
    .line 1673
    const-string/jumbo v3, "New Uicc application found"

    #@55
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    #@58
    .line 1674
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    #@5a
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@5d
    .line 1675
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@5f
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@66
    .line 1676
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->registerForSimRecordEvents()V

    #@69
    .line 1677
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    #@6b
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@6d
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@70
    move-result-object v3

    #@71
    check-cast v3, Lcom/android/internal/telephony/uicc/IccRecords;

    #@73
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    #@76
    .line 1644
    :cond_4
    return-void
.end method

.method public registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1942
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@4
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    #@7
    .line 1941
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1974
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1973
    return-void
.end method

.method public registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 494
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 483
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    #@3
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@6
    .line 484
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    #@8
    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    #@b
    move-result v0

    #@c
    if-ne v0, v2, :cond_0

    #@e
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@10
    const/4 v1, 0x0

    #@11
    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setSuppServiceNotifications(ZLandroid/os/Message;)V

    #@14
    .line 482
    :cond_0
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->rejectCall()V

    #@5
    .line 516
    return-void
.end method

.method public removeReferences()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 245
    const-string/jumbo v0, "GSMPhone"

    #@4
    const-string/jumbo v1, "removeReferences"

    #@7
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 246
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    #@c
    .line 247
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    #@e
    .line 248
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    #@10
    .line 249
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@12
    .line 250
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #@14
    .line 252
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->removeReferences()V

    #@17
    .line 244
    return-void
.end method

.method public saveClirSetting(I)V
    .locals 4
    .param p1, "commandInterfaceCLIRMode"    # I

    #@0
    .prologue
    .line 1722
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@3
    move-result-object v2

    #@4
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@7
    move-result-object v1

    #@8
    .line 1723
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@b
    move-result-object v0

    #@c
    .line 1724
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "clir_key"

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    #@1b
    move-result v3

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    #@27
    .line 1727
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    #@2a
    move-result v2

    #@2b
    if-nez v2, :cond_0

    #@2d
    .line 1728
    const-string/jumbo v2, "GSMPhone"

    #@30
    const-string/jumbo v3, "failed to commit CLIR preference"

    #@33
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 1720
    :cond_0
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;)V
    .locals 2
    .param p1, "dtmfString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 946
    const-string/jumbo v0, "GSMPhone"

    #@3
    const-string/jumbo v1, "[GSMPhone] sendBurstDtmf() is a CDMA method"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 945
    return-void
.end method

.method public sendDtmf(C)V
    .locals 3
    .param p1, "c"    # C

    #@0
    .prologue
    .line 917
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_1

    #@6
    .line 918
    const-string/jumbo v0, "GSMPhone"

    #@9
    .line 919
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "sendDtmf called with invalid character \'"

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, "\'"

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    .line 918
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 916
    :cond_0
    :goto_0
    return-void

    #@28
    .line 921
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@2a
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@2c
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    #@2e
    if-ne v0, v1, :cond_0

    #@30
    .line 922
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@32
    const/4 v1, 0x0

    #@33
    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    #@36
    goto :goto_0
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 4
    .param p1, "ussdMessge"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 908
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    #@3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@9
    invoke-static {p1, p0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    #@c
    move-result-object v0

    #@d
    .line 909
    .local v0, "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@12
    .line 910
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    #@14
    new-instance v2, Landroid/os/AsyncResult;

    #@16
    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@19
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@1c
    .line 911
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sendUssd(Ljava/lang/String;)V

    #@1f
    .line 907
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 9
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1195
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@4
    .line 1196
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v0, :cond_0

    #@6
    .line 1197
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    move v1, p1

    #@11
    move v2, p2

    #@12
    move-object v3, p3

    #@13
    move v4, p4

    #@14
    move-object v5, p5

    #@15
    .line 1198
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    #@18
    .line 1200
    return-void

    #@19
    .line 1203
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFAction(I)Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_1

    #@1f
    .line 1204
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFReason(I)Z

    #@22
    move-result v1

    #@23
    .line 1203
    if-eqz v1, :cond_1

    #@25
    .line 1207
    if-nez p2, :cond_3

    #@27
    .line 1208
    new-instance v8, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;

    #@29
    invoke-direct {v8, p3, p5}, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;-><init>(Ljava/lang/String;Landroid/os/Message;)V

    #@2c
    .line 1210
    .local v8, "cfu":Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isCfEnable(I)Z

    #@2f
    move-result v1

    #@30
    if-eqz v1, :cond_2

    #@32
    move v1, v4

    #@33
    .line 1209
    :goto_0
    const/16 v3, 0xc

    #@35
    invoke-virtual {p0, v3, v1, v2, v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@38
    move-result-object v7

    #@39
    .line 1214
    .end local v8    # "cfu":Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;
    .local v7, "resp":Landroid/os/Message;
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@3b
    move v2, p1

    #@3c
    move v3, p2

    #@3d
    move-object v5, p3

    #@3e
    move v6, p4

    #@3f
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    #@42
    .line 1194
    .end local v7    # "resp":Landroid/os/Message;
    :cond_1
    return-void

    #@43
    .restart local v8    # "cfu":Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;
    :cond_2
    move v1, v2

    #@44
    .line 1210
    goto :goto_0

    #@45
    .line 1212
    .end local v8    # "cfu":Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;
    :cond_3
    move-object v7, p5

    #@46
    .restart local v7    # "resp":Landroid/os/Message;
    goto :goto_1
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1251
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2
    .line 1252
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v0, :cond_0

    #@4
    .line 1253
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_0

    #@e
    .line 1254
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallWaiting(ZLandroid/os/Message;)V

    #@11
    .line 1255
    return-void

    #@12
    .line 1258
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@14
    const/4 v2, 0x1

    #@15
    invoke-interface {v1, p1, v2, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    #@18
    .line 1250
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 2
    .param p1, "configValuesArray"    # [I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1798
    const-string/jumbo v0, "GSMPhone"

    #@3
    const-string/jumbo v1, "[GSMPhone] setCellBroadcastSmsConfig() is obsolete; use SmsManager"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1799
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    #@c
    .line 1797
    return-void
.end method

.method public setDataEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 1332
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDataEnabled(Z)V

    #@5
    .line 1331
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 1322
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDataOnRoamingEnabled(Z)V

    #@5
    .line 1321
    return-void
.end method

.method public setInternalDataEnabled(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "onCompleteMsg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1951
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@4
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInternalDataEnabled(ZLandroid/os/Message;)Z

    #@7
    .line 1950
    return-void
.end method

.method public setInternalDataEnabledFlag(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 1957
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@4
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInternalDataEnabledFlag(Z)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 2
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1103
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@8
    .line 1104
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    #@a
    .line 1105
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@d
    .line 1106
    const/4 v1, 0x1

    #@e
    return v1

    #@f
    .line 1108
    :cond_0
    const/4 v1, 0x0

    #@10
    return v1
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "muted"    # Z

    #@0
    .prologue
    .line 1287
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    #@5
    .line 1286
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1275
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPostDialHandler:Landroid/os/Registrant;

    #@7
    .line 1274
    return-void
.end method

.method public setOperatorBrandOverride(Ljava/lang/String;)Z
    .locals 6
    .param p1, "brand"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1904
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 1905
    return v5

    #@6
    .line 1908
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@8
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    #@b
    move-result v4

    #@c
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    #@f
    move-result-object v0

    #@10
    .line 1909
    .local v0, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-nez v0, :cond_1

    #@12
    .line 1910
    return v5

    #@13
    .line 1913
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->setOperatorBrandOverride(Ljava/lang/String;)Z

    #@16
    move-result v2

    #@17
    .line 1916
    .local v2, "status":Z
    if-eqz v2, :cond_3

    #@19
    .line 1917
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@1b
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    #@21
    .line 1918
    .local v1, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_2

    #@23
    .line 1919
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    #@25
    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@28
    move-result-object v3

    #@29
    .line 1920
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    #@2c
    move-result v4

    #@2d
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    .line 1919
    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    #@34
    .line 1922
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #@36
    if-eqz v3, :cond_3

    #@38
    .line 1923
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #@3a
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    #@3d
    .line 1926
    .end local v1    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_3
    return v2
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 3
    .param p1, "commandInterfaceCLIRMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1231
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    .line 1232
    const/16 v1, 0x12

    #@4
    const/4 v2, 0x0

    #@5
    invoke-virtual {p0, v1, p1, v2, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@8
    move-result-object v1

    #@9
    .line 1231
    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    #@c
    .line 1230
    return-void
.end method

.method protected setProperties()V
    .locals 3

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    #@9
    move-result v1

    #@a
    const/4 v2, 0x1

    #@b
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setPhoneType(II)V

    #@e
    .line 213
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 1
    .param p1, "power"    # Z

    #@0
    .prologue
    .line 952
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setRadioPower(Z)V

    #@5
    .line 951
    return-void
.end method

.method public setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 477
    iget v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    #@2
    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    #@5
    .line 476
    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1280
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1281
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setUiTTYMode(ILandroid/os/Message;)V

    #@9
    .line 1279
    :cond_0
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "voiceMailNumber"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1118
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    #@3
    .line 1119
    const/16 v2, 0x14

    #@5
    invoke-virtual {p0, v2, v3, v3, p3}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@8
    move-result-object v1

    #@9
    .line 1120
    .local v1, "resp":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@b
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@11
    .line 1121
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    #@13
    .line 1122
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    #@15
    invoke-virtual {v0, p1, v2, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@18
    .line 1115
    :cond_0
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 2
    .param p1, "line"    # I
    .param p2, "countWaiting"    # I

    #@0
    .prologue
    .line 1991
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@8
    .line 1992
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    #@a
    .line 1993
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceMessageWaiting(II)V

    #@d
    .line 1990
    :goto_0
    return-void

    #@e
    .line 1995
    :cond_0
    const-string/jumbo v1, "SIM Records not found, MWI not updated"

    #@11
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    #@14
    goto :goto_0
.end method

.method public startDtmf(C)V
    .locals 3
    .param p1, "c"    # C

    #@0
    .prologue
    .line 930
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 931
    const-string/jumbo v0, "GSMPhone"

    #@9
    .line 932
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "startDtmf called with invalid character \'"

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, "\'"

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    .line 931
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 929
    :goto_0
    return-void

    #@28
    .line 934
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2a
    const/4 v1, 0x0

    #@2b
    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->startDtmf(CLandroid/os/Message;)V

    #@2e
    goto :goto_0
.end method

.method public stopDtmf()V
    .locals 2

    #@0
    .prologue
    .line 941
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->stopDtmf(Landroid/os/Message;)V

    #@6
    .line 940
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V

    #@5
    .line 522
    return-void
.end method

.method protected syncClirSetting()V
    .locals 4

    #@0
    .prologue
    .line 1418
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@3
    move-result-object v2

    #@4
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@7
    move-result-object v1

    #@8
    .line 1419
    .local v1, "sp":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "clir_key"

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    #@17
    move-result v3

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    const/4 v3, -0x1

    #@21
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    #@24
    move-result v0

    #@25
    .line 1420
    .local v0, "clirSetting":I
    if-ltz v0, :cond_0

    #@27
    .line 1421
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@29
    const/4 v3, 0x0

    #@2a
    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    #@2d
    .line 1417
    :cond_0
    return-void
.end method

.method public unregisterForAllDataDisconnected(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1947
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@4
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    #@7
    .line 1946
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1979
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 1978
    return-void
.end method

.method public unregisterForSimRecordsLoaded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 499
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 489
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    #@3
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@6
    .line 490
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    #@8
    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@10
    const/4 v1, 0x0

    #@11
    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setSuppServiceNotifications(ZLandroid/os/Message;)V

    #@14
    .line 488
    :cond_0
    return-void
.end method

.method public updateCurrentCarrierInProvider()Z
    .locals 8

    #@0
    .prologue
    .line 1696
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    #@3
    move-result v6

    #@4
    int-to-long v0, v6

    #@5
    .line 1697
    .local v0, "currentDds":J
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getOperatorNumeric()Ljava/lang/String;

    #@8
    move-result-object v4

    #@9
    .line 1699
    .local v4, "operatorNumeric":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v7, "updateCurrentCarrierInProvider: mSubId = "

    #@11
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v6

    #@15
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    #@18
    move-result v7

    #@19
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v6

    #@1d
    .line 1700
    const-string/jumbo v7, " currentDds = "

    #@20
    .line 1699
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v6

    #@24
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@27
    move-result-object v6

    #@28
    .line 1700
    const-string/jumbo v7, " operatorNumeric = "

    #@2b
    .line 1699
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v6

    #@2f
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v6

    #@33
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v6

    #@37
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    #@3a
    .line 1702
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3d
    move-result v6

    #@3e
    if-nez v6, :cond_0

    #@40
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    #@43
    move-result v6

    #@44
    int-to-long v6, v6

    #@45
    cmp-long v6, v6, v0

    #@47
    if-nez v6, :cond_0

    #@49
    .line 1704
    :try_start_0
    sget-object v6, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    #@4b
    const-string/jumbo v7, "current"

    #@4e
    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@51
    move-result-object v5

    #@52
    .line 1705
    .local v5, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    #@54
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    #@57
    .line 1706
    .local v3, "map":Landroid/content/ContentValues;
    const-string/jumbo v6, "numeric"

    #@5a
    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@5d
    .line 1707
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    #@5f
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@62
    move-result-object v6

    #@63
    invoke-virtual {v6, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    #@66
    .line 1708
    const/4 v6, 0x1

    #@67
    return v6

    #@68
    .line 1709
    .end local v3    # "map":Landroid/content/ContentValues;
    .end local v5    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    #@69
    .line 1710
    .local v2, "e":Landroid/database/SQLException;
    const-string/jumbo v6, "GSMPhone"

    #@6c
    const-string/jumbo v7, "Can\'t store current operator"

    #@6f
    invoke-static {v6, v7, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@72
    .line 1713
    .end local v2    # "e":Landroid/database/SQLException;
    :cond_0
    const/4 v6, 0x0

    #@73
    return v6
.end method

.method public updateDataConnectionTracker()V
    .locals 1

    #@0
    .prologue
    .line 1161
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@4
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->update()V

    #@7
    .line 1160
    return-void
.end method

.method public updateServiceLocation()V
    .locals 1

    #@0
    .prologue
    .line 1302
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->enableSingleLocationUpdate()V

    #@5
    .line 1301
    return-void
.end method
