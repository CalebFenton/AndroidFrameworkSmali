.class public Lcom/android/internal/telephony/cdma/CDMAPhone;
.super Lcom/android/internal/telephony/PhoneBase;
.source "CDMAPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CDMAPhone$1;
    }
.end annotation


# static fields
.field private static synthetic -com_android_internal_telephony_DctConstants$ActivitySwitchesValues:[I = null

.field private static synthetic -com_android_internal_telephony_DctConstants$StateSwitchesValues:[I = null

.field static final CANCEL_ECM_TIMER:I = 0x1

.field private static final DBG:Z = true

.field private static final DEFAULT_ECM_EXIT_TIMER_VALUE:I = 0x493e0

.field private static final INVALID_SYSTEM_SELECTION_CODE:I = -0x1

.field private static final IS683A_FEATURE_CODE:Ljava/lang/String; = "*228"

.field private static final IS683A_FEATURE_CODE_NUM_DIGITS:I = 0x4

.field private static final IS683A_SYS_SEL_CODE_NUM_DIGITS:I = 0x2

.field private static final IS683A_SYS_SEL_CODE_OFFSET:I = 0x4

.field private static final IS683_CONST_1900MHZ_A_BLOCK:I = 0x2

.field private static final IS683_CONST_1900MHZ_B_BLOCK:I = 0x3

.field private static final IS683_CONST_1900MHZ_C_BLOCK:I = 0x4

.field private static final IS683_CONST_1900MHZ_D_BLOCK:I = 0x5

.field private static final IS683_CONST_1900MHZ_E_BLOCK:I = 0x6

.field private static final IS683_CONST_1900MHZ_F_BLOCK:I = 0x7

.field private static final IS683_CONST_800MHZ_A_BAND:I = 0x0

.field private static final IS683_CONST_800MHZ_B_BAND:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "CDMAPhone"

.field static PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String; = null

.field static final RESTART_ECM_TIMER:I = 0x0

.field private static final VDBG:Z = false

.field private static final VM_NUMBER_CDMA:Ljava/lang/String; = "vm_number_key_cdma"

.field private static pOtaSpNumSchema:Ljava/util/regex/Pattern;


# instance fields
.field mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

.field protected mCarrierOtaSpNumSchema:Ljava/lang/String;

.field mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field mCdmaSubscriptionSource:I

.field private mEcmExitRespRegistrant:Landroid/os/Registrant;

.field private final mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

.field private final mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

.field mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

.field private mEsn:Ljava/lang/String;

.field private mExitEcmRunnable:Ljava/lang/Runnable;

.field protected mImei:Ljava/lang/String;

.field protected mImeiSv:Ljava/lang/String;

.field protected mIsPhoneInEcmState:Z

.field private mMeid:Ljava/lang/String;

.field mPendingMmis:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/CdmaMmiCode;",
            ">;"
        }
    .end annotation
.end field

.field mPostDialHandler:Landroid/os/Registrant;

.field mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

.field mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

.field mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

.field private mVmNumber:Ljava/lang/String;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method private static synthetic -getcom_android_internal_telephony_DctConstants$ActivitySwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->-com_android_internal_telephony_DctConstants$ActivitySwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->-com_android_internal_telephony_DctConstants$ActivitySwitchesValues:[I

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
    sput-object v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->-com_android_internal_telephony_DctConstants$ActivitySwitchesValues:[I

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
    sget-object v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->-com_android_internal_telephony_DctConstants$StateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->-com_android_internal_telephony_DctConstants$StateSwitchesValues:[I

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
    sput-object v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->-com_android_internal_telephony_DctConstants$StateSwitchesValues:[I

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

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 143
    const-string/jumbo v0, "ro.cdma.home.operator.numeric"

    #@3
    sput-object v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    #@5
    .line 1573
    const-string/jumbo v0, "[,\\s]+"

    #@8
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@b
    move-result-object v0

    #@c
    sput-object v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->pOtaSpNumSchema:Ljava/util/regex/Pattern;

    #@e
    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "phoneId"    # I

    #@0
    .prologue
    .line 147
    const-string/jumbo v1, "CDMA"

    #@3
    const/4 v5, 0x0

    #@4
    move-object v0, p0

    #@5
    move-object v2, p3

    #@6
    move-object v3, p1

    #@7
    move-object v4, p2

    #@8
    move v6, p4

    #@9
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/PhoneBase;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;ZI)V

    #@c
    .line 98
    const/4 v0, 0x0

    #@d
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mVmNumber:Ljava/lang/String;

    #@f
    .line 107
    new-instance v0, Ljava/util/ArrayList;

    #@11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@14
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPendingMmis:Ljava/util/ArrayList;

    #@16
    .line 110
    const/4 v0, -0x1

    #@17
    .line 109
    iput v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCdmaSubscriptionSource:I

    #@19
    .line 116
    new-instance v0, Landroid/os/RegistrantList;

    #@1b
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@1e
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    #@20
    .line 119
    new-instance v0, Landroid/os/RegistrantList;

    #@22
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@25
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    #@27
    .line 134
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone$1;

    #@29
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone$1;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    #@2c
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    #@2e
    .line 148
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->initSstIcc()V

    #@31
    .line 149
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->init(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)V

    #@34
    .line 146
    return-void
.end method

.method private static checkOtaSpNumBasedOnSysSelCode(I[Ljava/lang/String;)Z
    .locals 8
    .param p0, "sysSelCodeInt"    # I
    .param p1, "sch"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1547
    const/4 v2, 0x0

    #@1
    .line 1550
    .local v2, "isOtaSpNum":Z
    const/4 v6, 0x1

    #@2
    :try_start_0
    aget-object v6, p1, v6

    #@4
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7
    move-result v5

    #@8
    .line 1551
    .local v5, "selRc":I
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_2

    #@b
    .line 1552
    add-int/lit8 v6, v1, 0x2

    #@d
    aget-object v6, p1, v6

    #@f
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@12
    move-result v6

    #@13
    if-nez v6, :cond_0

    #@15
    add-int/lit8 v6, v1, 0x3

    #@17
    aget-object v6, p1, v6

    #@19
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1c
    move-result v6

    #@1d
    if-eqz v6, :cond_1

    #@1f
    .line 1551
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 1553
    :cond_1
    add-int/lit8 v6, v1, 0x2

    #@24
    aget-object v6, p1, v6

    #@26
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@29
    move-result v4

    #@2a
    .line 1554
    .local v4, "selMin":I
    add-int/lit8 v6, v1, 0x3

    #@2c
    aget-object v6, p1, v6

    #@2e
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@31
    move-result v3

    #@32
    .line 1557
    .local v3, "selMax":I
    if-lt p0, v4, :cond_0

    #@34
    if-gt p0, v3, :cond_0

    #@36
    .line 1558
    const/4 v2, 0x1

    #@37
    .line 1568
    .end local v1    # "i":I
    .end local v3    # "selMax":I
    .end local v4    # "selMin":I
    .end local v5    # "selRc":I
    :cond_2
    :goto_1
    return v2

    #@38
    .line 1563
    :catch_0
    move-exception v0

    #@39
    .line 1566
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-string/jumbo v6, "CDMAPhone"

    #@3c
    const-string/jumbo v7, "checkOtaSpNumBasedOnSysSelCode, error"

    #@3f
    invoke-static {v6, v7, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@42
    goto :goto_1
.end method

.method private static extractSelCodeFromOtaSpNum(Ljava/lang/String;)I
    .locals 6
    .param p0, "dialStr"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x6

    #@1
    const/4 v4, 0x4

    #@2
    const/4 v3, 0x0

    #@3
    .line 1523
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    .line 1524
    .local v0, "dialStrLen":I
    const/4 v1, -0x1

    #@8
    .line 1526
    .local v1, "sysSelCodeInt":I
    const-string/jumbo v2, "*228"

    #@b
    invoke-virtual {p0, v3, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 1528
    if-lt v0, v5, :cond_0

    #@13
    .line 1533
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    .line 1532
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1a
    move-result v1

    #@1b
    .line 1536
    :cond_0
    const-string/jumbo v2, "CDMAPhone"

    #@1e
    new-instance v3, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v4, "extractSelCodeFromOtaSpNum "

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 1537
    return v1
.end method

.method private handleCdmaSubscriptionSource(I)V
    .locals 1
    .param p1, "newSubscriptionSource"    # I

    #@0
    .prologue
    .line 1382
    iget v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCdmaSubscriptionSource:I

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 1383
    iput p1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCdmaSubscriptionSource:I

    #@6
    .line 1384
    const/4 v0, 0x1

    #@7
    if-ne p1, v0, :cond_0

    #@9
    .line 1386
    const/16 v0, 0x17

    #@b
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(I)Landroid/os/Message;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->sendMessage(Landroid/os/Message;)Z

    #@12
    .line 1381
    :cond_0
    return-void
.end method

.method private handleEnterEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1105
    const-string/jumbo v2, "CDMAPhone"

    #@3
    new-instance v3, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v4, "handleEnterEmergencyCallbackMode,mIsPhoneInEcmState= "

    #@b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v3

    #@f
    .line 1106
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    #@11
    .line 1105
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 1109
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    #@1e
    if-nez v2, :cond_0

    #@20
    .line 1110
    const/4 v2, 0x1

    #@21
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    #@23
    .line 1112
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->sendEmergencyCallbackModeChange()V

    #@26
    .line 1113
    const-string/jumbo v2, "ril.cdma.inecmmode"

    #@29
    const-string/jumbo v3, "true"

    #@2c
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@2f
    .line 1118
    const-string/jumbo v2, "ro.cdma.ecmexittimer"

    #@32
    const-wide/32 v4, 0x493e0

    #@35
    .line 1117
    invoke-static {v2, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    #@38
    move-result-wide v0

    #@39
    .line 1119
    .local v0, "delayInMillis":J
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    #@3b
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    #@3e
    .line 1121
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@40
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@43
    .line 1103
    .end local v0    # "delayInMillis":J
    :cond_0
    return-void
.end method

.method private handleExitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1126
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3
    check-cast v0, Landroid/os/AsyncResult;

    #@5
    .line 1128
    .local v0, "ar":Landroid/os/AsyncResult;
    const-string/jumbo v1, "CDMAPhone"

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "handleExitEmergencyCallbackMode,ar.exception , mIsPhoneInEcmState "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    .line 1129
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@16
    .line 1128
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    .line 1129
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    #@1c
    .line 1128
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 1132
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    #@29
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    #@2c
    .line 1134
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    #@2e
    if-eqz v1, :cond_0

    #@30
    .line 1135
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    #@32
    invoke-virtual {v1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@35
    .line 1138
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@37
    if-nez v1, :cond_2

    #@39
    .line 1139
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    #@3b
    if-eqz v1, :cond_1

    #@3d
    .line 1140
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    #@3f
    .line 1141
    const-string/jumbo v1, "ril.cdma.inecmmode"

    #@42
    const-string/jumbo v2, "false"

    #@45
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@48
    .line 1144
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->sendEmergencyCallbackModeChange()V

    #@4b
    .line 1146
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@4d
    const/4 v2, 0x1

    #@4e
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setInternalDataEnabled(Z)Z

    #@51
    .line 1147
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyEmergencyCallRegistrants(Z)V

    #@54
    .line 1125
    :cond_2
    return-void
.end method

.method private isCarrierOtaSpNum(Ljava/lang/String;)Z
    .locals 11
    .param p1, "dialStr"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v10, -0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 1594
    const/4 v2, 0x0

    #@3
    .line 1595
    .local v2, "isOtaSpNum":Z
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->extractSelCodeFromOtaSpNum(Ljava/lang/String;)I

    #@6
    move-result v5

    #@7
    .line 1596
    .local v5, "sysSelCodeInt":I
    if-ne v5, v10, :cond_0

    #@9
    .line 1597
    return v2

    #@a
    .line 1600
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    #@c
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@f
    move-result v6

    #@10
    if-nez v6, :cond_6

    #@12
    .line 1601
    sget-object v6, Lcom/android/internal/telephony/cdma/CDMAPhone;->pOtaSpNumSchema:Ljava/util/regex/Pattern;

    #@14
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    #@16
    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@19
    move-result-object v3

    #@1a
    .line 1603
    .local v3, "m":Ljava/util/regex/Matcher;
    const-string/jumbo v6, "CDMAPhone"

    #@1d
    new-instance v7, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v8, "isCarrierOtaSpNum,schema"

    #@25
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v7

    #@29
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    #@2b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v7

    #@2f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v7

    #@33
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 1606
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    #@39
    move-result v6

    #@3a
    if-eqz v6, :cond_5

    #@3c
    .line 1607
    sget-object v6, Lcom/android/internal/telephony/cdma/CDMAPhone;->pOtaSpNumSchema:Ljava/util/regex/Pattern;

    #@3e
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    #@40
    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    .line 1609
    .local v4, "sch":[Ljava/lang/String;
    aget-object v6, v4, v9

    #@46
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@49
    move-result v6

    #@4a
    if-nez v6, :cond_2

    #@4c
    aget-object v6, v4, v9

    #@4e
    const-string/jumbo v7, "SELC"

    #@51
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v6

    #@55
    if-eqz v6, :cond_2

    #@57
    .line 1610
    if-eq v5, v10, :cond_1

    #@59
    .line 1611
    invoke-static {v5, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->checkOtaSpNumBasedOnSysSelCode(I[Ljava/lang/String;)Z

    #@5c
    move-result v2

    #@5d
    .line 1639
    .end local v2    # "isOtaSpNum":Z
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "sch":[Ljava/lang/String;
    :goto_0
    return v2

    #@5e
    .line 1614
    .restart local v2    # "isOtaSpNum":Z
    .restart local v3    # "m":Ljava/util/regex/Matcher;
    .restart local v4    # "sch":[Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, "CDMAPhone"

    #@61
    const-string/jumbo v7, "isCarrierOtaSpNum,sysSelCodeInt is invalid"

    #@64
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@67
    goto :goto_0

    #@68
    .line 1617
    :cond_2
    aget-object v6, v4, v9

    #@6a
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6d
    move-result v6

    #@6e
    if-nez v6, :cond_4

    #@70
    aget-object v6, v4, v9

    #@72
    const-string/jumbo v7, "FC"

    #@75
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@78
    move-result v6

    #@79
    if-eqz v6, :cond_4

    #@7b
    .line 1618
    const/4 v6, 0x1

    #@7c
    aget-object v6, v4, v6

    #@7e
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@81
    move-result v1

    #@82
    .line 1619
    .local v1, "fcLen":I
    const/4 v6, 0x2

    #@83
    aget-object v0, v4, v6

    #@85
    .line 1620
    .local v0, "fc":Ljava/lang/String;
    invoke-virtual {p1, v9, v0, v9, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@88
    move-result v6

    #@89
    if-eqz v6, :cond_3

    #@8b
    .line 1621
    const/4 v2, 0x1

    #@8c
    goto :goto_0

    #@8d
    .line 1623
    :cond_3
    const-string/jumbo v6, "CDMAPhone"

    #@90
    const-string/jumbo v7, "isCarrierOtaSpNum,not otasp number"

    #@93
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@96
    goto :goto_0

    #@97
    .line 1627
    .end local v0    # "fc":Ljava/lang/String;
    .end local v1    # "fcLen":I
    :cond_4
    const-string/jumbo v6, "CDMAPhone"

    #@9a
    new-instance v7, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@9f
    const-string/jumbo v8, "isCarrierOtaSpNum,ota schema not supported"

    #@a2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v7

    #@a6
    aget-object v8, v4, v9

    #@a8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v7

    #@ac
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v7

    #@b0
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@b3
    goto :goto_0

    #@b4
    .line 1632
    .end local v4    # "sch":[Ljava/lang/String;
    :cond_5
    const-string/jumbo v6, "CDMAPhone"

    #@b7
    new-instance v7, Ljava/lang/StringBuilder;

    #@b9
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@bc
    const-string/jumbo v8, "isCarrierOtaSpNum,ota schema pattern not right"

    #@bf
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v7

    #@c3
    .line 1633
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    #@c5
    .line 1632
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v7

    #@c9
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cc
    move-result-object v7

    #@cd
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d0
    goto :goto_0

    #@d1
    .line 1637
    .end local v3    # "m":Ljava/util/regex/Matcher;
    :cond_6
    const-string/jumbo v6, "CDMAPhone"

    #@d4
    const-string/jumbo v7, "isCarrierOtaSpNum,ota schema pattern empty"

    #@d7
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@da
    goto :goto_0
.end method

.method private static isIs683OtaSpDialStr(Ljava/lang/String;)Z
    .locals 4
    .param p0, "dialStr"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1493
    const/4 v1, 0x0

    #@1
    .line 1494
    .local v1, "isOtaspDialString":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v0

    #@5
    .line 1496
    .local v0, "dialStrLen":I
    const/4 v3, 0x4

    #@6
    if-ne v0, v3, :cond_1

    #@8
    .line 1497
    const-string/jumbo v3, "*228"

    #@b
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 1498
    const/4 v1, 0x1

    #@12
    .line 1517
    :cond_0
    :goto_0
    return v1

    #@13
    .line 1501
    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->extractSelCodeFromOtaSpNum(Ljava/lang/String;)I

    #@16
    move-result v2

    #@17
    .line 1502
    .local v2, "sysSelCodeInt":I
    packed-switch v2, :pswitch_data_0

    #@1a
    goto :goto_0

    #@1b
    .line 1511
    :pswitch_0
    const/4 v1, 0x1

    #@1c
    .line 1512
    goto :goto_0

    #@1d
    .line 1502
    nop

    #@1e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private storeVoiceMailNumber(Ljava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1693
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    #@3
    move-result-object v2

    #@4
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@7
    move-result-object v1

    #@8
    .line 1694
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@b
    move-result-object v0

    #@c
    .line 1695
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "vm_number_key_cdma"

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

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
    .line 1696
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    #@2a
    .line 1691
    return-void
.end method

.method private updateVoiceMail()V
    .locals 1

    #@0
    .prologue
    .line 979
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getStoredVoiceMessageCount()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setVoiceMessageCount(I)V

    #@7
    .line 978
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
    .line 523
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2
    .line 524
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
    .line 525
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->acceptCall(I)V

    #@11
    .line 522
    :goto_0
    return-void

    #@12
    .line 527
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@14
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->acceptCall()V

    #@17
    goto :goto_0
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 2
    .param p1, "activate"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1442
    const-string/jumbo v0, "CDMAPhone"

    #@3
    const-string/jumbo v1, "[CDMAPhone] activateCellBroadcastSms() is obsolete; use SmsManager"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1443
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    #@c
    .line 1441
    return-void
.end method

.method public canConference()Z
    .locals 2

    #@0
    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@6
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->canConference()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 646
    const/4 v0, 0x1

    #@d
    return v0

    #@e
    .line 648
    :cond_0
    const-string/jumbo v0, "CDMAPhone"

    #@11
    const-string/jumbo v1, "canConference: not possible in CDMA"

    #@14
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    .line 649
    const/4 v0, 0x0

    #@18
    return v0
.end method

.method public canTransfer()Z
    .locals 2

    #@0
    .prologue
    .line 318
    const-string/jumbo v0, "CDMAPhone"

    #@3
    const-string/jumbo v1, "canTransfer: not possible in CDMA"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 319
    const/4 v0, 0x0

    #@a
    return v0
.end method

.method public clearDisconnected()V
    .locals 1

    #@0
    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->clearDisconnected()V

    #@5
    .line 372
    return-void
.end method

.method public conference()V
    .locals 2

    #@0
    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@6
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->canConference()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 353
    const-string/jumbo v0, "conference() - delegated to IMS phone"

    #@f
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    #@12
    .line 354
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@14
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->conference()V

    #@17
    .line 355
    return-void

    #@18
    .line 358
    :cond_0
    const-string/jumbo v0, "CDMAPhone"

    #@1b
    const-string/jumbo v1, "conference: not possible in CDMA"

    #@1e
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 351
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
    .line 410
    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 10
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
    const/4 v9, 0x0

    #@1
    .line 426
    if-eqz p2, :cond_0

    #@3
    .line 427
    new-instance v6, Lcom/android/internal/telephony/CallStateException;

    #@5
    const-string/jumbo v7, "Sending UUS information NOT supported in CDMA!"

    #@8
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@b
    throw v6

    #@c
    .line 430
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    #@f
    move-result v4

    #@10
    .line 431
    .local v4, "isEmergency":Z
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@12
    .line 433
    .local v2, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isImsUseEnabled()Z

    #@15
    move-result v6

    #@16
    if-eqz v6, :cond_4

    #@18
    .line 434
    if-eqz v2, :cond_4

    #@1a
    .line 435
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVolteEnabled()Z

    #@1d
    move-result v6

    #@1e
    if-nez v6, :cond_1

    #@20
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVowifiEnabled()Z

    #@23
    move-result v6

    #@24
    .line 433
    if-eqz v6, :cond_4

    #@26
    .line 436
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    #@29
    move-result-object v6

    #@2a
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    #@2d
    move-result v6

    #@2e
    if-nez v6, :cond_3

    #@30
    const/4 v3, 0x1

    #@31
    .line 438
    .local v3, "imsUseEnabled":Z
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mContext:Landroid/content/Context;

    #@33
    invoke-static {v6}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    #@36
    move-result v6

    #@37
    if-eqz v6, :cond_6

    #@39
    .line 439
    if-eqz v2, :cond_6

    #@3b
    .line 438
    if-eqz v4, :cond_6

    #@3d
    .line 441
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mContext:Landroid/content/Context;

    #@3f
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@42
    move-result-object v6

    #@43
    .line 442
    const v7, 0x1120082

    #@46
    .line 441
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@49
    move-result v6

    #@4a
    .line 438
    if-eqz v6, :cond_6

    #@4c
    .line 443
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mContext:Landroid/content/Context;

    #@4e
    invoke-static {v6}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    #@51
    move-result v6

    #@52
    .line 438
    if-eqz v6, :cond_6

    #@54
    .line 444
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    #@57
    move-result-object v6

    #@58
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    #@5b
    move-result v6

    #@5c
    const/4 v7, 0x3

    #@5d
    if-eq v6, v7, :cond_5

    #@5f
    const/4 v5, 0x1

    #@60
    .line 447
    .local v5, "useImsForEmergency":Z
    :goto_1
    const-string/jumbo v7, "CDMAPhone"

    #@63
    new-instance v6, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v8, "imsUseEnabled="

    #@6b
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v6

    #@6f
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@72
    move-result-object v6

    #@73
    .line 448
    const-string/jumbo v8, ", useImsForEmergency="

    #@76
    .line 447
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v6

    #@7a
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v6

    #@7e
    .line 449
    const-string/jumbo v8, ", imsPhone="

    #@81
    .line 447
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v6

    #@85
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v6

    #@89
    .line 450
    const-string/jumbo v8, ", imsPhone.isVolteEnabled()="

    #@8c
    .line 447
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v8

    #@90
    .line 451
    if-eqz v2, :cond_7

    #@92
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVolteEnabled()Z

    #@95
    move-result v6

    #@96
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@99
    move-result-object v6

    #@9a
    .line 447
    :goto_2
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v6

    #@9e
    .line 452
    const-string/jumbo v8, ", imsPhone.isVowifiEnabled()="

    #@a1
    .line 447
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v8

    #@a5
    .line 453
    if-eqz v2, :cond_8

    #@a7
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVowifiEnabled()Z

    #@aa
    move-result v6

    #@ab
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@ae
    move-result-object v6

    #@af
    .line 447
    :goto_3
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v6

    #@b3
    .line 454
    const-string/jumbo v8, ", imsPhone.getServiceState().getState()="

    #@b6
    .line 447
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v8

    #@ba
    .line 455
    if-eqz v2, :cond_9

    #@bc
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    #@bf
    move-result-object v6

    #@c0
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    #@c3
    move-result v6

    #@c4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c7
    move-result-object v6

    #@c8
    .line 447
    :goto_4
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v6

    #@cc
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cf
    move-result-object v6

    #@d0
    invoke-static {v7, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d3
    .line 458
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@d5
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mContext:Landroid/content/Context;

    #@d7
    invoke-static {v6, v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->checkWfcWifiOnlyModeBeforeDial(Lcom/android/internal/telephony/imsphone/ImsPhone;Landroid/content/Context;)V

    #@da
    .line 460
    if-nez v3, :cond_2

    #@dc
    if-eqz v5, :cond_a

    #@de
    .line 462
    :cond_2
    :try_start_0
    const-string/jumbo v6, "CDMAPhone"

    #@e1
    const-string/jumbo v7, "Trying IMS PS call"

    #@e4
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@e7
    .line 463
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@ea
    move-result-object v6

    #@eb
    return-object v6

    #@ec
    .line 436
    .end local v3    # "imsUseEnabled":Z
    .end local v5    # "useImsForEmergency":Z
    :cond_3
    const/4 v3, 0x0

    #@ed
    .restart local v3    # "imsUseEnabled":Z
    goto/16 :goto_0

    #@ef
    .line 433
    .end local v3    # "imsUseEnabled":Z
    :cond_4
    const/4 v3, 0x0

    #@f0
    .restart local v3    # "imsUseEnabled":Z
    goto/16 :goto_0

    #@f2
    .line 444
    :cond_5
    const/4 v5, 0x0

    #@f3
    .restart local v5    # "useImsForEmergency":Z
    goto/16 :goto_1

    #@f5
    .line 438
    .end local v5    # "useImsForEmergency":Z
    :cond_6
    const/4 v5, 0x0

    #@f6
    .restart local v5    # "useImsForEmergency":Z
    goto/16 :goto_1

    #@f8
    .line 451
    :cond_7
    const-string/jumbo v6, "N/A"

    #@fb
    goto :goto_2

    #@fc
    .line 453
    :cond_8
    const-string/jumbo v6, "N/A"

    #@ff
    goto :goto_3

    #@100
    .line 455
    :cond_9
    const-string/jumbo v6, "N/A"

    #@103
    goto :goto_4

    #@104
    .line 464
    :catch_0
    move-exception v1

    #@105
    .line 465
    .local v1, "e":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v6, "CDMAPhone"

    #@108
    new-instance v7, Ljava/lang/StringBuilder;

    #@10a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@10d
    const-string/jumbo v8, "IMS PS call exception "

    #@110
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@113
    move-result-object v7

    #@114
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v7

    #@118
    .line 466
    const-string/jumbo v8, "imsUseEnabled ="

    #@11b
    .line 465
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v7

    #@11f
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@122
    move-result-object v7

    #@123
    .line 466
    const-string/jumbo v8, ", imsPhone ="

    #@126
    .line 465
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v7

    #@12a
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v7

    #@12e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@131
    move-result-object v7

    #@132
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@135
    .line 467
    const-string/jumbo v6, "cs_fallback"

    #@138
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    #@13b
    move-result-object v7

    #@13c
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13f
    move-result v6

    #@140
    if-nez v6, :cond_a

    #@142
    .line 468
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    #@144
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    #@147
    move-result-object v6

    #@148
    invoke-direct {v0, v6}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@14b
    .line 469
    .local v0, "ce":Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@14e
    move-result-object v6

    #@14f
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/CallStateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    #@152
    .line 470
    throw v0

    #@153
    .line 475
    .end local v0    # "ce":Lcom/android/internal/telephony/CallStateException;
    .end local v1    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_a
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@155
    if-eqz v6, :cond_b

    #@157
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@159
    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@15b
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    #@15e
    move-result v6

    #@15f
    const/4 v7, 0x1

    #@160
    if-ne v6, v7, :cond_b

    #@162
    .line 476
    if-eqz v4, :cond_c

    #@164
    .line 479
    :cond_b
    const-string/jumbo v6, "CDMAPhone"

    #@167
    const-string/jumbo v7, "Trying (non-IMS) CS call"

    #@16a
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@16d
    .line 480
    invoke-virtual {p0, p1, v9, p3, p4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    #@170
    move-result-object v6

    #@171
    return-object v6

    #@172
    .line 477
    :cond_c
    new-instance v6, Lcom/android/internal/telephony/CallStateException;

    #@174
    const-string/jumbo v7, "cannot dial in current state"

    #@177
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@17a
    throw v6
.end method

.method protected dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 2
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
    .line 419
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 420
    .local v0, "newDialString":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@6
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    #@9
    move-result-object v1

    #@a
    return-object v1
.end method

.method public disableLocationUpdates()V
    .locals 1

    #@0
    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->disableLocationUpdates()V

    #@5
    .line 902
    return-void
.end method

.method public dispose()V
    .locals 2

    #@0
    .prologue
    .line 221
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 222
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->dispose()V

    #@6
    .line 223
    const-string/jumbo v0, "dispose"

    #@9
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    #@c
    .line 226
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unregisterForRuimRecordEvents()V

    #@f
    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@11
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    #@14
    .line 228
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@16
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    #@19
    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1b
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    #@1e
    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@20
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForNetworkAttached(Landroid/os/Handler;)V

    #@23
    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@25
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSuppServiceNotification(Landroid/os/Handler;)V

    #@28
    .line 232
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2a
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForExitEmergencyCallbackMode(Landroid/os/Handler;)V

    #@2d
    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    #@2f
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    #@32
    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPendingMmis:Ljava/util/ArrayList;

    #@34
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@37
    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@39
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->dispose()V

    #@3c
    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@3e
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dispose()V

    #@41
    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@43
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->dispose()V

    #@46
    .line 241
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@48
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    #@4b
    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    #@4d
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->dispose()V

    #@50
    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    #@52
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->dispose()V

    #@55
    .line 244
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    #@57
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/EriManager;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5a
    monitor-exit v1

    #@5b
    .line 220
    return-void

    #@5c
    .line 221
    :catchall_0
    move-exception v0

    #@5d
    monitor-exit v1

    #@5e
    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1820
    const-string/jumbo v0, "CDMAPhone extends:"

    #@3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 1821
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@9
    .line 1822
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v1, " mVmNumber="

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mVmNumber:Ljava/lang/String;

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22
    .line 1823
    new-instance v0, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v1, " mCT="

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

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
    .line 1824
    new-instance v0, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v1, " mSST="

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

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
    .line 1825
    new-instance v0, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v1, " mCdmaSSM="

    #@5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

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
    .line 1826
    new-instance v0, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v1, " mPendingMmis="

    #@75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v0

    #@79
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPendingMmis:Ljava/util/ArrayList;

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
    .line 1827
    new-instance v0, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v1, " mRuimPhoneBookInterfaceManager="

    #@8e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v0

    #@92
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    #@94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v0

    #@98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v0

    #@9c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9f
    .line 1828
    new-instance v0, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    const-string/jumbo v1, " mCdmaSubscriptionSource="

    #@a7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v0

    #@ab
    iget v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCdmaSubscriptionSource:I

    #@ad
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v0

    #@b1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v0

    #@b5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b8
    .line 1829
    new-instance v0, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    const-string/jumbo v1, " mSubInfo="

    #@c0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v0

    #@c4
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    #@c6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v0

    #@ca
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cd
    move-result-object v0

    #@ce
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d1
    .line 1830
    new-instance v0, Ljava/lang/StringBuilder;

    #@d3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d6
    const-string/jumbo v1, " mEriManager="

    #@d9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v0

    #@dd
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    #@df
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v0

    #@e3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e6
    move-result-object v0

    #@e7
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ea
    .line 1831
    new-instance v0, Ljava/lang/StringBuilder;

    #@ec
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@ef
    const-string/jumbo v1, " mWakeLock="

    #@f2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v0

    #@f6
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@f8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v0

    #@fc
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ff
    move-result-object v0

    #@100
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@103
    .line 1832
    new-instance v0, Ljava/lang/StringBuilder;

    #@105
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@108
    const-string/jumbo v1, " mIsPhoneInEcmState="

    #@10b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v0

    #@10f
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    #@111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@114
    move-result-object v0

    #@115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@118
    move-result-object v0

    #@119
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11c
    .line 1837
    new-instance v0, Ljava/lang/StringBuilder;

    #@11e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@121
    const-string/jumbo v1, " mCarrierOtaSpNumSchema="

    #@124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@127
    move-result-object v0

    #@128
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    #@12a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v0

    #@12e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@131
    move-result-object v0

    #@132
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@135
    .line 1838
    new-instance v0, Ljava/lang/StringBuilder;

    #@137
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@13a
    const-string/jumbo v1, " getCdmaEriIconIndex()="

    #@13d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140
    move-result-object v0

    #@141
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCdmaEriIconIndex()I

    #@144
    move-result v1

    #@145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@148
    move-result-object v0

    #@149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14c
    move-result-object v0

    #@14d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@150
    .line 1839
    new-instance v0, Ljava/lang/StringBuilder;

    #@152
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@155
    const-string/jumbo v1, " getCdmaEriIconMode()="

    #@158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15b
    move-result-object v0

    #@15c
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCdmaEriIconMode()I

    #@15f
    move-result v1

    #@160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@163
    move-result-object v0

    #@164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@167
    move-result-object v0

    #@168
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@16b
    .line 1840
    new-instance v0, Ljava/lang/StringBuilder;

    #@16d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@170
    const-string/jumbo v1, " getCdmaEriText()="

    #@173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@176
    move-result-object v0

    #@177
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCdmaEriText()Ljava/lang/String;

    #@17a
    move-result-object v1

    #@17b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17e
    move-result-object v0

    #@17f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@182
    move-result-object v0

    #@183
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@186
    .line 1841
    new-instance v0, Ljava/lang/StringBuilder;

    #@188
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@18b
    const-string/jumbo v1, " isMinInfoReady()="

    #@18e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@191
    move-result-object v0

    #@192
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isMinInfoReady()Z

    #@195
    move-result v1

    #@196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@199
    move-result-object v0

    #@19a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19d
    move-result-object v0

    #@19e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1a1
    .line 1842
    new-instance v0, Ljava/lang/StringBuilder;

    #@1a3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1a6
    const-string/jumbo v1, " isCspPlmnEnabled()="

    #@1a9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ac
    move-result-object v0

    #@1ad
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isCspPlmnEnabled()Z

    #@1b0
    move-result v1

    #@1b1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1b4
    move-result-object v0

    #@1b5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b8
    move-result-object v0

    #@1b9
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1bc
    .line 1819
    return-void
.end method

.method public enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredVoicePrivacy(ZLandroid/os/Message;)V

    #@5
    .line 362
    return-void
.end method

.method public enableLocationUpdates()V
    .locals 1

    #@0
    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->enableLocationUpdates()V

    #@5
    .line 897
    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 2

    #@0
    .prologue
    .line 1096
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1097
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@a
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@d
    .line 1100
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@f
    const/16 v1, 0x1a

    #@11
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(I)Landroid/os/Message;

    #@14
    move-result-object v1

    #@15
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    #@18
    .line 1095
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 2

    #@0
    .prologue
    .line 1026
    const-string/jumbo v0, "CDMAPhone"

    #@3
    const-string/jumbo v1, "explicitCallTransfer: not possible in CDMA"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1025
    return-void
.end method

.method protected finalize()V
    .locals 2

    #@0
    .prologue
    .line 263
    const-string/jumbo v0, "CDMAPhone"

    #@3
    const-string/jumbo v1, "CDMAPhone finalized"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 264
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@b
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 265
    const-string/jumbo v0, "CDMAPhone"

    #@14
    const-string/jumbo v1, "UNEXPECTED; mWakeLock is held when finalizing."

    #@17
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 266
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@1c
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@1f
    .line 262
    :cond_0
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 888
    const-string/jumbo v0, "CDMAPhone"

    #@3
    const-string/jumbo v1, "getAvailableNetworks: not possible in CDMA"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 887
    return-void
.end method

.method public bridge synthetic getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    #@0
    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getBackgroundCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/cdma/CdmaCall;
    .locals 1

    #@0
    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@2
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@4
    return-object v0
.end method

.method public getCallForwardingIndicator()Z
    .locals 2

    #@0
    .prologue
    .line 1020
    const-string/jumbo v0, "CDMAPhone"

    #@3
    const-string/jumbo v1, "getCallForwardingIndicator: not possible in CDMA"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1021
    const/4 v0, 0x0

    #@a
    return v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 2
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 999
    const-string/jumbo v0, "CDMAPhone"

    #@3
    const-string/jumbo v1, "getCallForwardingOption: not possible in CDMA"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 998
    return-void
.end method

.method public getCallTracker()Lcom/android/internal/telephony/CallTracker;
    .locals 1

    #@0
    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@2
    return-object v0
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 2
    .param p1, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    #@6
    .line 574
    return-void
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    #@0
    .prologue
    .line 1665
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    #@0
    .prologue
    .line 1675
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1683
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    #@7
    move-result v1

    #@8
    .line 1684
    .local v1, "roamInd":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaDefaultRoamingIndicator()I

    #@f
    move-result v0

    #@10
    .line 1685
    .local v0, "defRoamInd":I
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    #@12
    invoke-virtual {v2, v1, v0}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriText(II)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    return-object v2
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCdmaMin()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getPrlVersion()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1453
    const-string/jumbo v0, "CDMAPhone"

    #@3
    const-string/jumbo v1, "[CDMAPhone] getCellBroadcastSmsConfig() is obsolete; use SmsManager"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1454
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    #@c
    .line 1452
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 8

    #@0
    .prologue
    const v2, 0x7fffffff

    #@3
    const/4 v4, 0x0

    #@4
    .line 654
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@6
    iget-object v6, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    #@8
    .line 656
    .local v6, "loc":Landroid/telephony/cdma/CdmaCellLocation;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@f
    move-result-object v1

    #@10
    .line 657
    const-string/jumbo v3, "location_mode"

    #@13
    .line 656
    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@16
    move-result v7

    #@17
    .line 658
    .local v7, "mode":I
    if-nez v7, :cond_0

    #@19
    .line 660
    new-instance v0, Landroid/telephony/cdma/CdmaCellLocation;

    #@1b
    invoke-direct {v0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    #@1e
    .line 661
    .local v0, "privateLoc":Landroid/telephony/cdma/CdmaCellLocation;
    invoke-virtual {v6}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    #@21
    move-result v1

    #@22
    .line 664
    invoke-virtual {v6}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    #@25
    move-result v4

    #@26
    invoke-virtual {v6}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    #@29
    move-result v5

    #@2a
    move v3, v2

    #@2b
    .line 661
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V

    #@2e
    .line 665
    move-object v6, v0

    #@2f
    .line 667
    .end local v0    # "privateLoc":Landroid/telephony/cdma/CdmaCellLocation;
    :cond_0
    return-object v6
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 3

    #@0
    .prologue
    .line 378
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    #@2
    .line 380
    .local v0, "ret":Lcom/android/internal/telephony/Phone$DataActivityState;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@4
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCurrentDataConnectionState()I

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 382
    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhone;->-getcom_android_internal_telephony_DctConstants$ActivitySwitchesValues()[I

    #@d
    move-result-object v1

    #@e
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

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
    .line 400
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    #@1f
    .line 404
    :cond_0
    :goto_0
    return-object v0

    #@20
    .line 384
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAIN:Lcom/android/internal/telephony/Phone$DataActivityState;

    #@22
    goto :goto_0

    #@23
    .line 388
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    #@25
    goto :goto_0

    #@26
    .line 392
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    #@28
    goto :goto_0

    #@29
    .line 396
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DORMANT:Lcom/android/internal/telephony/Phone$DataActivityState;

    #@2b
    goto :goto_0

    #@2c
    .line 382
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
    .line 908
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    #@5
    .line 907
    return-void
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 795
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@2
    .line 797
    .local v0, "ret":Lcom/android/internal/telephony/PhoneConstants$DataState;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 801
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@8
    .line 834
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "getDataConnectionState apnType="

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, " ret="

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    #@2a
    .line 835
    return-object v0

    #@2b
    .line 802
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@2d
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCurrentDataConnectionState()I

    #@30
    move-result v1

    #@31
    if-eqz v1, :cond_1

    #@33
    .line 805
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@35
    goto :goto_0

    #@36
    .line 806
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@38
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeEnabled(Ljava/lang/String;)Z

    #@3b
    move-result v1

    #@3c
    if-eqz v1, :cond_2

    #@3e
    .line 807
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@40
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeActive(Ljava/lang/String;)Z

    #@43
    move-result v1

    #@44
    if-nez v1, :cond_3

    #@46
    .line 808
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@48
    goto :goto_0

    #@49
    .line 810
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhone;->-getcom_android_internal_telephony_DctConstants$StateSwitchesValues()[I

    #@4c
    move-result-object v1

    #@4d
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@4f
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@56
    move-result v2

    #@57
    aget v1, v1, v2

    #@59
    packed-switch v1, :pswitch_data_0

    #@5c
    goto :goto_0

    #@5d
    .line 819
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@5f
    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@61
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@63
    if-eq v1, v2, :cond_4

    #@65
    .line 820
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@67
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    #@6a
    move-result v1

    #@6b
    if-eqz v1, :cond_5

    #@6d
    .line 823
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@6f
    goto :goto_0

    #@70
    .line 814
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@72
    goto :goto_0

    #@73
    .line 821
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@75
    goto :goto_0

    #@76
    .line 829
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@78
    goto :goto_0

    #@79
    .line 810
    nop

    #@7a
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
    .line 923
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

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
    .line 913
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataOnRoamingEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 606
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getMeid()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 607
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@6
    const-string/jumbo v1, "^0*$"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 608
    :cond_0
    const-string/jumbo v1, "CDMAPhone"

    #@12
    const-string/jumbo v2, "getDeviceId(): MEID is not initialized use ESN"

    #@15
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 609
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getEsn()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 611
    :cond_1
    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 616
    const-string/jumbo v0, "CDMAPhone"

    #@3
    const-string/jumbo v1, "getDeviceSvn(): return 0"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 617
    const-string/jumbo v0, "0"

    #@c
    return-object v0
.end method

.method public getEnhancedVoicePrivacy(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredVoicePrivacy(Landroid/os/Message;)V

    #@5
    .line 367
    return-void
.end method

.method public getEsn()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEsn:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public bridge synthetic getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    #@0
    .prologue
    .line 671
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getForegroundCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/cdma/CdmaCall;
    .locals 1

    #@0
    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@2
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@4
    return-object v0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 627
    const-string/jumbo v0, "CDMAPhone"

    #@3
    const-string/jumbo v1, "GID1 is not available in CDMA"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 628
    const/4 v0, 0x0

    #@a
    return-object v0
.end method

.method public getGroupIdLevel2()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 633
    const-string/jumbo v0, "CDMAPhone"

    #@3
    const-string/jumbo v1, "GID2 is not available in CDMA"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 634
    const/4 v0, 0x0

    #@a
    return-object v0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    #@0
    .prologue
    .line 1404
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    #@2
    return-object v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 545
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@9
    .line 546
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v0, :cond_0

    #@b
    .line 548
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@d
    iget v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPhoneId:I

    #@f
    const/4 v4, 0x1

    #@10
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    #@13
    move-result-object v0

    #@14
    .line 550
    :cond_0
    if-eqz v0, :cond_1

    #@16
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    :cond_1
    return-object v1
.end method

.method public getImei()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 639
    const-string/jumbo v0, "CDMAPhone"

    #@3
    const-string/jumbo v1, "getImei() called for CDMAPhone"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 640
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImei:Ljava/lang/String;

    #@b
    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1031
    const-string/jumbo v0, "CDMAPhone"

    #@3
    const-string/jumbo v1, "getLine1AlphaTag: not possible in CDMA"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1032
    const/4 v0, 0x0

    #@a
    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getMdnNumber()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mMeid:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMute()Z
    .locals 1

    #@0
    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->getMute()Z

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
    .line 596
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@9
    .line 597
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    const-string/jumbo v2, "CDMAPhone"

    #@c
    const/4 v3, 0x2

    #@d
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 598
    const-string/jumbo v2, "CDMAPhone"

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
    .line 600
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
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 785
    if-eqz p1, :cond_0

    #@2
    .line 786
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@4
    .line 787
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    #@6
    .line 786
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@9
    .line 788
    .local v0, "ce":Lcom/android/internal/telephony/CommandException;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@c
    move-result-object v1

    #@d
    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@f
    .line 789
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    #@12
    .line 776
    .end local v0    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_0
    return-void
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 2
    .param p1, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1014
    const-string/jumbo v0, "CDMAPhone"

    #@3
    const-string/jumbo v1, "getOutgoingCallerIdDisplay: not possible in CDMA"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1013
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
    .line 486
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPendingMmis:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    #@0
    .prologue
    .line 1396
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    #@2
    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    #@0
    .prologue
    .line 313
    const/4 v0, 0x2

    #@1
    return v0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 2

    #@0
    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2
    .line 325
    .local v0, "imPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@4
    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@6
    if-eqz v1, :cond_0

    #@8
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@a
    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@c
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->isRinging()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 326
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@14
    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@16
    return-object v1

    #@17
    .line 327
    :cond_0
    if-eqz v0, :cond_1

    #@19
    .line 328
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@1c
    move-result-object v1

    #@1d
    return-object v1

    #@1e
    .line 330
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@20
    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@22
    return-object v1
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 2

    #@0
    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@6
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@8
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_2

    #@e
    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@10
    if-eqz v0, :cond_2

    #@12
    .line 275
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@14
    if-nez v0, :cond_1

    #@16
    new-instance v0, Landroid/telephony/ServiceState;

    #@18
    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    #@1b
    .line 276
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@1d
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    #@20
    move-result-object v1

    #@21
    .line 274
    invoke-static {v0, v1}, Landroid/telephony/ServiceState;->mergeServiceStates(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    #@24
    move-result-object v0

    #@25
    return-object v0

    #@26
    .line 275
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@28
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@2a
    goto :goto_0

    #@2b
    .line 280
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@2d
    if-eqz v0, :cond_3

    #@2f
    .line 281
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@31
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@33
    return-object v0

    #@34
    .line 284
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
    .line 308
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@2
    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 2

    #@0
    .prologue
    .line 296
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 297
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@6
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    #@9
    move-result-object v0

    #@a
    .line 298
    .local v0, "imsState":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@c
    if-eq v0, v1, :cond_0

    #@e
    .line 299
    return-object v0

    #@f
    .line 303
    .end local v0    # "imsState":Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@11
    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@13
    return-object v1
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getImsi()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1431
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/PhoneBase;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3

    #@0
    .prologue
    .line 1340
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@2
    iget v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPhoneId:I

    #@4
    const/4 v2, 0x2

    #@5
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 985
    const-string/jumbo v0, ""

    #@3
    .line 989
    .local v0, "ret":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_1

    #@b
    .line 990
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mContext:Landroid/content/Context;

    #@d
    .line 991
    const v2, 0x1040004

    #@10
    .line 990
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@13
    move-result-object v1

    #@14
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    return-object v1

    #@19
    .line 994
    :cond_1
    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    const/4 v7, 0x0

    #@3
    .line 941
    const/4 v3, 0x0

    #@4
    .line 942
    .local v3, "number":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    #@7
    move-result-object v5

    #@8
    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@b
    move-result-object v4

    #@c
    .line 943
    .local v4, "sp":Landroid/content/SharedPreferences;
    new-instance v5, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v6, "vm_number_key_cdma"

    #@14
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    #@1b
    move-result v6

    #@1c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v5

    #@24
    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    .line 944
    .local v3, "number":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2b
    move-result v5

    #@2c
    if-eqz v5, :cond_2

    #@2e
    .line 945
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@35
    move-result-object v5

    #@36
    .line 946
    const v6, 0x107003e

    #@39
    .line 945
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    .line 947
    .local v2, "listArray":[Ljava/lang/String;
    if-eqz v2, :cond_2

    #@3f
    array-length v5, v2

    #@40
    if-lez v5, :cond_2

    #@42
    .line 948
    const/4 v1, 0x0

    #@43
    .local v1, "i":I
    :goto_0
    array-length v5, v2

    #@44
    if-ge v1, v5, :cond_2

    #@46
    .line 949
    aget-object v5, v2, v1

    #@48
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4b
    move-result v5

    #@4c
    if-nez v5, :cond_0

    #@4e
    .line 950
    aget-object v5, v2, v1

    #@50
    const-string/jumbo v6, ";"

    #@53
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@56
    move-result-object v0

    #@57
    .line 951
    .local v0, "defaultVMNumberArray":[Ljava/lang/String;
    if-eqz v0, :cond_0

    #@59
    array-length v5, v0

    #@5a
    if-lez v5, :cond_0

    #@5c
    .line 952
    array-length v5, v0

    #@5d
    if-ne v5, v8, :cond_1

    #@5f
    .line 953
    aget-object v3, v0, v7

    #@61
    .line 948
    .end local v0    # "defaultVMNumberArray":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@63
    goto :goto_0

    #@64
    .line 954
    .restart local v0    # "defaultVMNumberArray":[Ljava/lang/String;
    :cond_1
    array-length v5, v0

    #@65
    const/4 v6, 0x2

    #@66
    if-ne v5, v6, :cond_0

    #@68
    .line 955
    aget-object v5, v0, v8

    #@6a
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6d
    move-result v5

    #@6e
    if-nez v5, :cond_0

    #@70
    .line 956
    aget-object v5, v0, v8

    #@72
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getGroupIdLevel1()Ljava/lang/String;

    #@75
    move-result-object v6

    #@76
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@79
    move-result v5

    #@7a
    .line 954
    if-eqz v5, :cond_0

    #@7c
    .line 957
    aget-object v3, v0, v7

    #@7e
    .line 965
    .end local v0    # "defaultVMNumberArray":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "listArray":[Ljava/lang/String;
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@81
    move-result v5

    #@82
    if-eqz v5, :cond_3

    #@84
    .line 967
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    #@87
    move-result-object v5

    #@88
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@8b
    move-result-object v5

    #@8c
    const v6, 0x112005b

    #@8f
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@92
    move-result v5

    #@93
    if-eqz v5, :cond_4

    #@95
    .line 969
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getLine1Number()Ljava/lang/String;

    #@98
    move-result-object v3

    #@99
    .line 974
    :cond_3
    :goto_1
    return-object v3

    #@9a
    .line 971
    :cond_4
    const-string/jumbo v3, "*86"

    #@9d
    goto :goto_1
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 502
    const-string/jumbo v0, "CDMAPhone"

    #@3
    const-string/jumbo v1, "method handleInCallMmiCommands is NOT supported in CDMA!"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 503
    const/4 v0, 0x0

    #@a
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1205
    iget v4, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v4, :pswitch_data_0

    #@6
    .line 1213
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsTheCurrentActivePhone:Z

    #@8
    if-nez v4, :cond_0

    #@a
    .line 1214
    const-string/jumbo v4, "CDMAPhone"

    #@d
    new-instance v5, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v6, "Received message "

    #@15
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v5

    #@19
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v5

    #@1d
    .line 1215
    const-string/jumbo v6, "["

    #@20
    .line 1214
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v5

    #@24
    .line 1215
    iget v6, p1, Landroid/os/Message;->what:I

    #@26
    .line 1214
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v5

    #@2a
    .line 1215
    const-string/jumbo v6, "] while being destroyed. Ignoring."

    #@2d
    .line 1214
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v5

    #@31
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v5

    #@35
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 1216
    return-void

    #@39
    .line 1209
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->handleMessage(Landroid/os/Message;)V

    #@3c
    .line 1210
    return-void

    #@3d
    .line 1218
    :cond_0
    iget v4, p1, Landroid/os/Message;->what:I

    #@3f
    packed-switch v4, :pswitch_data_1

    #@42
    .line 1334
    :pswitch_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->handleMessage(Landroid/os/Message;)V

    #@45
    .line 1198
    :cond_1
    :goto_0
    return-void

    #@46
    .line 1220
    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@48
    const/4 v5, 0x6

    #@49
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(I)Landroid/os/Message;

    #@4c
    move-result-object v5

    #@4d
    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getBasebandVersion(Landroid/os/Message;)V

    #@50
    .line 1222
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@52
    const/16 v5, 0x15

    #@54
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(I)Landroid/os/Message;

    #@57
    move-result-object v5

    #@58
    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    #@5b
    .line 1223
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@5d
    const/16 v5, 0x23

    #@5f
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(I)Landroid/os/Message;

    #@62
    move-result-object v5

    #@63
    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioCapability(Landroid/os/Message;)V

    #@66
    .line 1224
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->startLceAfterRadioIsAvailable()V

    #@69
    goto :goto_0

    #@6a
    .line 1229
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@6c
    check-cast v0, Landroid/os/AsyncResult;

    #@6e
    .line 1231
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@70
    if-nez v4, :cond_1

    #@72
    .line 1235
    const-string/jumbo v4, "CDMAPhone"

    #@75
    new-instance v5, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v6, "Baseband version: "

    #@7d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v5

    #@81
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@83
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v5

    #@87
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v5

    #@8b
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@8e
    .line 1236
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mContext:Landroid/content/Context;

    #@90
    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@93
    move-result-object v5

    #@94
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    #@97
    move-result v6

    #@98
    .line 1237
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@9a
    check-cast v4, Ljava/lang/String;

    #@9c
    .line 1236
    invoke-virtual {v5, v6, v4}, Landroid/telephony/TelephonyManager;->setBasebandVersionForPhone(ILjava/lang/String;)V

    #@9f
    goto :goto_0

    #@a0
    .line 1242
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a2
    check-cast v0, Landroid/os/AsyncResult;

    #@a4
    .line 1244
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@a6
    if-nez v4, :cond_1

    #@a8
    .line 1247
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@aa
    check-cast v3, [Ljava/lang/String;

    #@ac
    .line 1248
    .local v3, "respId":[Ljava/lang/String;
    const/4 v4, 0x0

    #@ad
    aget-object v4, v3, v4

    #@af
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImei:Ljava/lang/String;

    #@b1
    .line 1249
    const/4 v4, 0x1

    #@b2
    aget-object v4, v3, v4

    #@b4
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImeiSv:Ljava/lang/String;

    #@b6
    .line 1250
    const/4 v4, 0x2

    #@b7
    aget-object v4, v3, v4

    #@b9
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEsn:Ljava/lang/String;

    #@bb
    .line 1251
    const/4 v4, 0x3

    #@bc
    aget-object v4, v3, v4

    #@be
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mMeid:Ljava/lang/String;

    #@c0
    goto :goto_0

    #@c1
    .line 1256
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "respId":[Ljava/lang/String;
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleEnterEmergencyCallbackMode(Landroid/os/Message;)V

    #@c4
    goto :goto_0

    #@c5
    .line 1261
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleExitEmergencyCallbackMode(Landroid/os/Message;)V

    #@c8
    goto/16 :goto_0

    #@ca
    .line 1266
    :pswitch_7
    const-string/jumbo v4, "CDMAPhone"

    #@cd
    const-string/jumbo v5, "Event EVENT_RUIM_RECORDS_LOADED Received"

    #@d0
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d3
    .line 1267
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateCurrentCarrierInProvider()Z

    #@d6
    .line 1269
    const-string/jumbo v4, "notifyMessageWaitingChanged"

    #@d9
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    #@dc
    .line 1270
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@de
    invoke-interface {v4, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V

    #@e1
    .line 1271
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateVoiceMail()V

    #@e4
    goto/16 :goto_0

    #@e6
    .line 1276
    :pswitch_8
    const-string/jumbo v4, "CDMAPhone"

    #@e9
    const-string/jumbo v5, "Event EVENT_RADIO_OFF_OR_NOT_AVAILABLE Received"

    #@ec
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ef
    .line 1277
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@f1
    .line 1278
    .local v1, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v1, :cond_1

    #@f3
    .line 1279
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    #@f6
    move-result-object v4

    #@f7
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->setStateOff()V

    #@fa
    goto/16 :goto_0

    #@fc
    .line 1285
    .end local v1    # "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    :pswitch_9
    const-string/jumbo v4, "CDMAPhone"

    #@ff
    const-string/jumbo v5, "Event EVENT_RADIO_ON Received"

    #@102
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@105
    .line 1286
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@107
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    #@10a
    move-result v4

    #@10b
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleCdmaSubscriptionSource(I)V

    #@10e
    .line 1289
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setPreferredNetworkTypeIfSimLoaded()V

    #@111
    goto/16 :goto_0

    #@113
    .line 1294
    :pswitch_a
    const-string/jumbo v4, "CDMAPhone"

    #@116
    const-string/jumbo v5, "EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED"

    #@119
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@11c
    .line 1295
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@11e
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    #@121
    move-result v4

    #@122
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleCdmaSubscriptionSource(I)V

    #@125
    goto/16 :goto_0

    #@127
    .line 1300
    :pswitch_b
    const-string/jumbo v4, "CDMAPhone"

    #@12a
    const-string/jumbo v5, "Event EVENT_SSN Received"

    #@12d
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@130
    goto/16 :goto_0

    #@132
    .line 1305
    :pswitch_c
    const-string/jumbo v4, "CDMAPhone"

    #@135
    const-string/jumbo v5, "Event EVENT_REGISTERED_TO_NETWORK Received"

    #@138
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@13b
    goto/16 :goto_0

    #@13d
    .line 1310
    :pswitch_d
    const-string/jumbo v4, "CDMAPhone"

    #@140
    const-string/jumbo v5, "Event EVENT_NV_READY Received"

    #@143
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@146
    .line 1311
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->prepareEri()V

    #@149
    .line 1313
    const-string/jumbo v4, "notifyMessageWaitingChanged"

    #@14c
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    #@14f
    .line 1314
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@151
    invoke-interface {v4, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V

    #@154
    .line 1315
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateVoiceMail()V

    #@157
    goto/16 :goto_0

    #@159
    .line 1320
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@15b
    check-cast v0, Landroid/os/AsyncResult;

    #@15d
    .line 1321
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const-class v4, Lcom/android/internal/telephony/uicc/IccException;

    #@15f
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@161
    invoke-virtual {v4, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@164
    move-result v4

    #@165
    if-eqz v4, :cond_2

    #@167
    .line 1322
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mVmNumber:Ljava/lang/String;

    #@169
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    #@16c
    .line 1323
    iput-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@16e
    .line 1325
    :cond_2
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@170
    check-cast v2, Landroid/os/Message;

    #@172
    .line 1326
    .local v2, "onComplete":Landroid/os/Message;
    if-eqz v2, :cond_1

    #@174
    .line 1327
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@176
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@178
    invoke-static {v2, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@17b
    .line 1328
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@17e
    goto/16 :goto_0

    #@180
    .line 1205
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
    .end packed-switch

    #@188
    .line 1218
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_b
        :pswitch_1
        :pswitch_1
        :pswitch_9
        :pswitch_3
        :pswitch_1
        :pswitch_8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_c
        :pswitch_e
        :pswitch_4
        :pswitch_7
        :pswitch_d
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 5
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 682
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    #@4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@a
    invoke-static {p1, p0, v1}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/cdma/CdmaMmiCode;

    #@d
    move-result-object v0

    #@e
    .line 684
    .local v0, "mmi":Lcom/android/internal/telephony/cdma/CdmaMmiCode;
    if-nez v0, :cond_0

    #@10
    .line 685
    const-string/jumbo v1, "CDMAPhone"

    #@13
    const-string/jumbo v2, "Mmi is NULL!"

    #@16
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 686
    return v4

    #@1a
    .line 687
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->isPinPukCommand()Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_1

    #@20
    .line 688
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPendingMmis:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@25
    .line 689
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    #@27
    new-instance v2, Landroid/os/AsyncResult;

    #@29
    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@2c
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@2f
    .line 690
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->processCode()V

    #@32
    .line 691
    const/4 v1, 0x1

    #@33
    return v1

    #@34
    .line 693
    :cond_1
    const-string/jumbo v1, "CDMAPhone"

    #@37
    const-string/jumbo v2, "Unrecognized mmi!"

    #@3a
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    .line 694
    return v4
.end method

.method handleTimerInEmergencyCallbackMode(I)V
    .locals 6
    .param p1, "action"    # I

    #@0
    .prologue
    .line 1161
    packed-switch p1, :pswitch_data_0

    #@3
    .line 1173
    const-string/jumbo v2, "CDMAPhone"

    #@6
    new-instance v3, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v4, "handleTimerInEmergencyCallbackMode, unsupported action "

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 1160
    :goto_0
    return-void

    #@1e
    .line 1163
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    #@20
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    #@23
    .line 1164
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    #@25
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@27
    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    #@2a
    goto :goto_0

    #@2b
    .line 1168
    :pswitch_1
    const-string/jumbo v2, "ro.cdma.ecmexittimer"

    #@2e
    const-wide/32 v4, 0x493e0

    #@31
    .line 1167
    invoke-static {v2, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    #@34
    move-result-wide v0

    #@35
    .line 1169
    .local v0, "delayInMillis":J
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    #@37
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    #@3a
    .line 1170
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    #@3c
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@3e
    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    #@41
    goto :goto_0

    #@42
    .line 1161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected init(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;

    #@0
    .prologue
    const/16 v10, 0x1a

    #@2
    const/4 v9, 0x2

    #@3
    const/4 v8, 0x1

    #@4
    const/4 v7, 0x0

    #@5
    .line 157
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@7
    invoke-interface {v5, v9}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    #@a
    .line 158
    new-instance v5, Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@c
    invoke-direct {v5, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    #@f
    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@11
    .line 159
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@13
    .line 160
    const/16 v6, 0x1b

    #@15
    .line 159
    invoke-static {p1, v5, p0, v6, v7}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@18
    move-result-object v5

    #@19
    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@1b
    .line 161
    new-instance v5, Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@1d
    invoke-direct {v5, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    #@20
    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@22
    .line 162
    new-instance v5, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    #@24
    invoke-direct {v5, p0}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    #@27
    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    #@29
    .line 163
    new-instance v5, Lcom/android/internal/telephony/PhoneSubInfo;

    #@2b
    invoke-direct {v5, p0}, Lcom/android/internal/telephony/PhoneSubInfo;-><init>(Lcom/android/internal/telephony/Phone;)V

    #@2e
    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    #@30
    .line 164
    new-instance v5, Lcom/android/internal/telephony/cdma/EriManager;

    #@32
    const/4 v6, 0x0

    #@33
    invoke-direct {v5, p0, p1, v6}, Lcom/android/internal/telephony/cdma/EriManager;-><init>(Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;I)V

    #@36
    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    #@38
    .line 166
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@3a
    invoke-interface {v5, p0, v8, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    #@3d
    .line 167
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@3f
    const/16 v6, 0x8

    #@41
    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    #@44
    .line 168
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@46
    const/4 v6, 0x5

    #@47
    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    #@4a
    .line 169
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@4c
    invoke-interface {v5, p0, v9, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    #@4f
    .line 170
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@51
    const/16 v6, 0x13

    #@53
    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    #@56
    .line 171
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@58
    const/16 v6, 0x19

    #@5a
    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5d
    .line 172
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@5f
    invoke-interface {v5, p0, v10, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    #@62
    .line 176
    const-string/jumbo v5, "power"

    #@65
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@68
    move-result-object v3

    #@69
    check-cast v3, Landroid/os/PowerManager;

    #@6b
    .line 177
    .local v3, "pm":Landroid/os/PowerManager;
    const-string/jumbo v5, "CDMAPhone"

    #@6e
    invoke-virtual {v3, v8, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@71
    move-result-object v5

    #@72
    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@74
    .line 179
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mContext:Landroid/content/Context;

    #@76
    invoke-static {v5}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@79
    move-result-object v4

    #@7a
    .line 181
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    #@7d
    move-result v5

    #@7e
    invoke-virtual {v4, v5, v9}, Landroid/telephony/TelephonyManager;->setPhoneType(II)V

    #@81
    .line 184
    const-string/jumbo v5, "ril.cdma.inecmmode"

    #@84
    const-string/jumbo v6, "false"

    #@87
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@8a
    move-result-object v0

    #@8b
    .line 185
    .local v0, "inEcm":Ljava/lang/String;
    const-string/jumbo v5, "true"

    #@8e
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@91
    move-result v5

    #@92
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    #@94
    .line 186
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    #@96
    if-eqz v5, :cond_0

    #@98
    .line 188
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@9a
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(I)Landroid/os/Message;

    #@9d
    move-result-object v6

    #@9e
    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    #@a1
    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    #@a4
    move-result v5

    #@a5
    const-string/jumbo v6, ""

    #@a8
    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->getOtaSpNumberSchemaForPhone(ILjava/lang/String;)Ljava/lang/String;

    #@ab
    move-result-object v5

    #@ac
    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    #@ae
    .line 195
    const-string/jumbo v5, "ro.cdma.home.operator.alpha"

    #@b1
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@b4
    move-result-object v1

    #@b5
    .line 196
    .local v1, "operatorAlpha":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    #@b7
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@ba
    move-result-object v2

    #@bb
    .line 197
    .local v2, "operatorNumeric":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    #@bd
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@c0
    const-string/jumbo v6, "init: operatorAlpha=\'"

    #@c3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v5

    #@c7
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v5

    #@cb
    .line 198
    const-string/jumbo v6, "\' operatorNumeric=\'"

    #@ce
    .line 197
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v5

    #@d2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v5

    #@d6
    .line 198
    const-string/jumbo v6, "\'"

    #@d9
    .line 197
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v5

    #@dd
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e0
    move-result-object v5

    #@e1
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    #@e4
    .line 199
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@e6
    iget v6, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPhoneId:I

    #@e8
    invoke-virtual {v5, v6, v8}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@eb
    move-result-object v5

    #@ec
    if-nez v5, :cond_3

    #@ee
    .line 200
    const-string/jumbo v5, "init: APP_FAM_3GPP == NULL"

    #@f1
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    #@f4
    .line 201
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@f7
    move-result v5

    #@f8
    if-nez v5, :cond_1

    #@fa
    .line 202
    new-instance v5, Ljava/lang/StringBuilder;

    #@fc
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@ff
    const-string/jumbo v6, "init: set \'gsm.sim.operator.alpha\' to operator=\'"

    #@102
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v5

    #@106
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v5

    #@10a
    const-string/jumbo v6, "\'"

    #@10d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v5

    #@111
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@114
    move-result-object v5

    #@115
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    #@118
    .line 203
    iget v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPhoneId:I

    #@11a
    invoke-virtual {v4, v5, v1}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    #@11d
    .line 205
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@120
    move-result v5

    #@121
    if-nez v5, :cond_2

    #@123
    .line 206
    new-instance v5, Ljava/lang/StringBuilder;

    #@125
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@128
    const-string/jumbo v6, "init: set \'gsm.sim.operator.numeric\' to operator=\'"

    #@12b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v5

    #@12f
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@132
    move-result-object v5

    #@133
    const-string/jumbo v6, "\'"

    #@136
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v5

    #@13a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13d
    move-result-object v5

    #@13e
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    #@141
    .line 207
    new-instance v5, Ljava/lang/StringBuilder;

    #@143
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@146
    const-string/jumbo v6, "update icc_operator_numeric="

    #@149
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v5

    #@14d
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@150
    move-result-object v5

    #@151
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@154
    move-result-object v5

    #@155
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    #@158
    .line 208
    iget v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPhoneId:I

    #@15a
    invoke-virtual {v4, v5, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    #@15d
    .line 210
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    #@160
    move-result-object v5

    #@161
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSubId()I

    #@164
    move-result v6

    #@165
    invoke-virtual {v5, v2, v6}, Lcom/android/internal/telephony/SubscriptionController;->setMccMnc(Ljava/lang/String;I)I

    #@168
    .line 212
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setIsoCountryProperty(Ljava/lang/String;)V

    #@16b
    .line 216
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateCurrentCarrierInProvider(Ljava/lang/String;)Z

    #@16e
    .line 156
    return-void
.end method

.method protected initSstIcc()V
    .locals 1

    #@0
    .prologue
    .line 153
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@2
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@7
    .line 152
    return-void
.end method

.method public isEriFileLoaded()Z
    .locals 1

    #@0
    .prologue
    .line 1776
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method isInCall()Z
    .locals 4

    #@0
    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getForegroundCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@7
    move-result-object v1

    #@8
    .line 508
    .local v1, "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getBackgroundCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@f
    move-result-object v0

    #@10
    .line 509
    .local v0, "backgroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@17
    move-result-object v2

    #@18
    .line 511
    .local v2, "ringingCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@1b
    move-result v3

    #@1c
    if-nez v3, :cond_0

    #@1e
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@21
    move-result v3

    #@22
    if-nez v3, :cond_0

    #@24
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@27
    move-result v3

    #@28
    :goto_0
    return v3

    #@29
    :cond_0
    const/4 v3, 0x1

    #@2a
    goto :goto_0
.end method

.method public isInEcm()Z
    .locals 1

    #@0
    .prologue
    .line 1082
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    #@2
    return v0
.end method

.method public isInEmergencyCall()Z
    .locals 1

    #@0
    .prologue
    .line 1077
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->isInEmergencyCall()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isMinInfoReady()Z
    .locals 1

    #@0
    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isMinInfoReady()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isOtaSpNumber(Ljava/lang/String;)Z
    .locals 5
    .param p1, "dialStr"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1651
    const/4 v1, 0x0

    #@1
    .line 1652
    .local v1, "isOtaSpNum":Z
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 1653
    .local v0, "dialableStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@7
    .line 1654
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isIs683OtaSpDialStr(Ljava/lang/String;)Z

    #@a
    move-result v1

    #@b
    .line 1655
    .local v1, "isOtaSpNum":Z
    if-nez v1, :cond_0

    #@d
    .line 1656
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isCarrierOtaSpNum(Ljava/lang/String;)Z

    #@10
    move-result v1

    #@11
    .line 1659
    .end local v1    # "isOtaSpNum":Z
    :cond_0
    const-string/jumbo v2, "CDMAPhone"

    #@14
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v4, "isOtaSpNumber "

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 1660
    return v1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1810
    const-string/jumbo v0, "CDMAPhone"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 1808
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 1815
    const-string/jumbo v0, "CDMAPhone"

    #@3
    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6
    .line 1813
    return-void
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 2

    #@0
    .prologue
    .line 1473
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getOtasp()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x3

    #@7
    if-eq v0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    #@0
    .prologue
    .line 1066
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    #@5
    .line 1068
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

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
    .line 1065
    return-void
.end method

.method public notifyEcbmTimerReset(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "flag"    # Ljava/lang/Boolean;

    #@0
    .prologue
    .line 1178
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    #@5
    .line 1177
    return-void
.end method

.method protected notifyEmergencyCallRegistrants(Z)V
    .locals 2
    .param p1, "started"    # Z

    #@0
    .prologue
    .line 1152
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEmergencyCallToggledRegistrants:Landroid/os/RegistrantList;

    #@2
    if-eqz p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    #@c
    .line 1151
    return-void

    #@d
    .line 1152
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method notifyLocationChanged()V
    .locals 1

    #@0
    .prologue
    .line 1058
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@2
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCellLocation(Lcom/android/internal/telephony/Phone;)V

    #@5
    .line 1057
    return-void
.end method

.method public notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    #@0
    .prologue
    .line 1062
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    #@3
    .line 1061
    return-void
.end method

.method notifyPhoneStateChanged()V
    .locals 1

    #@0
    .prologue
    .line 1040
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@2
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPhoneState(Lcom/android/internal/telephony/Phone;)V

    #@5
    .line 1039
    return-void
.end method

.method notifyPreciseCallStateChanged()V
    .locals 0

    #@0
    .prologue
    .line 1050
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyPreciseCallStateChangedP()V

    #@3
    .line 1048
    return-void
.end method

.method notifyServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    #@0
    .prologue
    .line 1054
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V

    #@3
    .line 1053
    return-void
.end method

.method notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1, "connection"    # Lcom/android/internal/telephony/Connection;

    #@0
    .prologue
    .line 1072
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    #@5
    .line 1071
    return-void
.end method

.method onMMIDone(Lcom/android/internal/telephony/cdma/CdmaMmiCode;)V
    .locals 3
    .param p1, "mmi"    # Lcom/android/internal/telephony/cdma/CdmaMmiCode;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 708
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPendingMmis:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 709
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    #@b
    new-instance v1, Landroid/os/AsyncResult;

    #@d
    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@10
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@13
    .line 703
    :cond_0
    return-void
.end method

.method protected onUpdateIccAvailability()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1345
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 1346
    return-void

    #@6
    .line 1349
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@9
    move-result-object v1

    #@a
    .line 1351
    .local v1, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-nez v1, :cond_1

    #@c
    .line 1352
    const-string/jumbo v2, "can\'t find 3GPP2 application; trying APP_FAM_3GPP"

    #@f
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    #@12
    .line 1354
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@14
    iget v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPhoneId:I

    #@16
    const/4 v4, 0x1

    #@17
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@1a
    move-result-object v1

    #@1b
    .line 1357
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    #@1d
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@23
    .line 1358
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eq v0, v1, :cond_4

    #@25
    .line 1359
    if-eqz v0, :cond_3

    #@27
    .line 1360
    const-string/jumbo v2, "Removing stale icc objects."

    #@2a
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    #@2d
    .line 1361
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@2f
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@32
    move-result-object v2

    #@33
    if-eqz v2, :cond_2

    #@35
    .line 1362
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unregisterForRuimRecordEvents()V

    #@38
    .line 1364
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@3a
    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@3d
    .line 1365
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    #@3f
    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@42
    .line 1367
    :cond_3
    if-eqz v1, :cond_4

    #@44
    .line 1368
    const-string/jumbo v2, "New Uicc application found"

    #@47
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    #@4a
    .line 1369
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    #@4c
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@4f
    .line 1370
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@51
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    #@54
    move-result-object v3

    #@55
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@58
    .line 1371
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->registerForRuimRecordEvents()V

    #@5b
    .line 1344
    :cond_4
    return-void
.end method

.method public prepareEri()V
    .locals 2

    #@0
    .prologue
    .line 1763
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1764
    const-string/jumbo v0, "CDMAPhone"

    #@7
    const-string/jumbo v1, "PrepareEri: Trying to access stale objects"

    #@a
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 1765
    return-void

    #@e
    .line 1767
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    #@10
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFile()V

    #@13
    .line 1768
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    #@15
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded()Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 1770
    const-string/jumbo v0, "ERI read, notify registrants"

    #@1e
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    #@21
    .line 1771
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    #@23
    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@26
    .line 1762
    :cond_1
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 765
    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 735
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1189
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1188
    return-void
.end method

.method public registerForEriFileLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1408
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1409
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 1407
    return-void
.end method

.method protected registerForRuimRecordEvents()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1780
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@9
    .line 1781
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v0, :cond_0

    #@b
    .line 1782
    return-void

    #@c
    .line 1784
    :cond_0
    const/16 v1, 0x16

    #@e
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    #@11
    .line 1779
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 746
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 745
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 492
    const-string/jumbo v0, "CDMAPhone"

    #@3
    const-string/jumbo v1, "method registerForSuppServiceNotification is NOT supported in CDMA!"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 491
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
    .line 534
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->rejectCall()V

    #@5
    .line 533
    return-void
.end method

.method public removeReferences()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 250
    const-string/jumbo v0, "removeReferences"

    #@4
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    #@7
    .line 251
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    #@9
    .line 252
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    #@b
    .line 253
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@d
    .line 254
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@f
    .line 255
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    #@11
    .line 256
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    #@13
    .line 258
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->removeReferences()V

    #@16
    .line 249
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 5
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 872
    const/4 v0, 0x1

    #@1
    .line 873
    .local v0, "check":Z
    const/4 v1, 0x0

    #@2
    .local v1, "itr":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v2

    #@6
    if-ge v1, v2, :cond_0

    #@8
    .line 874
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v2

    #@c
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_2

    #@12
    .line 875
    const-string/jumbo v2, "CDMAPhone"

    #@15
    .line 876
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v4, "sendDtmf called with invalid character \'"

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@24
    move-result v4

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    const-string/jumbo v4, "\'"

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    .line 875
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 877
    const/4 v0, 0x0

    #@38
    .line 881
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@3a
    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@3c
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    #@3e
    if-ne v2, v3, :cond_1

    #@40
    if-eqz v0, :cond_1

    #@42
    .line 882
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@44
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    #@47
    .line 871
    :cond_1
    return-void

    #@48
    .line 873
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@4a
    goto :goto_0
.end method

.method public sendDtmf(C)V
    .locals 3
    .param p1, "c"    # C

    #@0
    .prologue
    .line 845
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_1

    #@6
    .line 846
    const-string/jumbo v0, "CDMAPhone"

    #@9
    .line 847
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
    .line 846
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 844
    :cond_0
    :goto_0
    return-void

    #@28
    .line 849
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@2a
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@2c
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    #@2e
    if-ne v0, v1, :cond_0

    #@30
    .line 850
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@32
    const/4 v1, 0x0

    #@33
    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    #@36
    goto :goto_0
.end method

.method sendEmergencyCallbackModeChange()V
    .locals 3

    #@0
    .prologue
    .line 1087
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 1088
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "phoneinECMState"

    #@b
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    #@d
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@10
    .line 1089
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    #@13
    move-result v1

    #@14
    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    #@17
    .line 1090
    const/4 v1, 0x0

    #@18
    const/4 v2, -0x1

    #@19
    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    #@1c
    .line 1091
    const-string/jumbo v1, "CDMAPhone"

    #@1f
    const-string/jumbo v2, "sendEmergencyCallbackModeChange"

    #@22
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 1085
    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 2
    .param p1, "ussdMessge"    # Ljava/lang/String;

    #@0
    .prologue
    .line 840
    const-string/jumbo v0, "CDMAPhone"

    #@3
    const-string/jumbo v1, "sendUssdResponse: not possible in CDMA"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 839
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1008
    const-string/jumbo v0, "CDMAPhone"

    #@3
    const-string/jumbo v1, "setCallForwardingOption: not possible in CDMA"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1007
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 721
    const-string/jumbo v0, "CDMAPhone"

    #@3
    const-string/jumbo v1, "method setCallWaiting is NOT supported in CDMA!"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 720
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 2
    .param p1, "configValuesArray"    # [I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1464
    const-string/jumbo v0, "CDMAPhone"

    #@3
    const-string/jumbo v1, "[CDMAPhone] setCellBroadcastSmsConfig() is obsolete; use SmsManager"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1465
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    #@c
    .line 1463
    return-void
.end method

.method public setDataEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 918
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDataEnabled(Z)V

    #@5
    .line 917
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDataOnRoamingEnabled(Z)V

    #@5
    .line 730
    return-void
.end method

.method protected setIsoCountryProperty(Ljava/lang/String;)V
    .locals 6
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1704
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@5
    move-result-object v3

    #@6
    .line 1705
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_0

    #@c
    .line 1706
    const-string/jumbo v4, "setIsoCountryProperty: clear \'gsm.sim.operator.iso-country\'"

    #@f
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    #@12
    .line 1707
    iget v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPhoneId:I

    #@14
    const-string/jumbo v5, ""

    #@17
    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    #@1a
    .line 1703
    :goto_0
    return-void

    #@1b
    .line 1709
    :cond_0
    const-string/jumbo v2, ""

    #@1e
    .line 1712
    .local v2, "iso":Ljava/lang/String;
    const/4 v4, 0x0

    #@1f
    const/4 v5, 0x3

    #@20
    :try_start_0
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    .line 1711
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@27
    move-result v4

    #@28
    invoke-static {v4}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    move-result-object v2

    #@2c
    .line 1719
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v5, "setIsoCountryProperty: set \'gsm.sim.operator.iso-country\' to iso="

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    #@43
    .line 1720
    iget v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPhoneId:I

    #@45
    invoke-virtual {v3, v4, v2}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    #@48
    goto :goto_0

    #@49
    .line 1715
    :catch_0
    move-exception v1

    #@4a
    .line 1716
    .local v1, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    const-string/jumbo v4, "setIsoCountryProperty: countryCodeForMcc error"

    #@4d
    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    #@50
    goto :goto_1

    #@51
    .line 1713
    .end local v1    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_1
    move-exception v0

    #@52
    .line 1714
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-string/jumbo v4, "setIsoCountryProperty: countryCodeForMcc error"

    #@55
    invoke-virtual {p0, v4, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    #@58
    goto :goto_1
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 2
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 715
    const-string/jumbo v0, "CDMAPhone"

    #@3
    const-string/jumbo v1, "setLine1Number: not possible in CDMA"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 716
    const/4 v0, 0x0

    #@a
    return v0
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "muted"    # Z

    #@0
    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->setMute(Z)V

    #@5
    .line 341
    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 756
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    #@7
    .line 755
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 677
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPostDialHandler:Landroid/os/Registrant;

    #@7
    .line 676
    return-void
.end method

.method public setOperatorBrandOverride(Ljava/lang/String;)Z
    .locals 6
    .param p1, "brand"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1847
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 1848
    return v5

    #@6
    .line 1851
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@8
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    #@b
    move-result v4

    #@c
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    #@f
    move-result-object v0

    #@10
    .line 1852
    .local v0, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-nez v0, :cond_1

    #@12
    .line 1853
    return v5

    #@13
    .line 1856
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->setOperatorBrandOverride(Ljava/lang/String;)Z

    #@16
    move-result v2

    #@17
    .line 1859
    .local v2, "status":Z
    if-eqz v2, :cond_3

    #@19
    .line 1860
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@1b
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    #@21
    .line 1861
    .local v1, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_2

    #@23
    .line 1862
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mContext:Landroid/content/Context;

    #@25
    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@28
    move-result-object v3

    #@29
    .line 1863
    iget v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPhoneId:I

    #@2b
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    .line 1862
    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    #@32
    .line 1865
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@34
    if-eqz v3, :cond_3

    #@36
    .line 1866
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@38
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    #@3b
    .line 1869
    .end local v1    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_3
    return v2
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 2
    .param p1, "commandInterfaceCLIRMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 893
    const-string/jumbo v0, "CDMAPhone"

    #@3
    const-string/jumbo v1, "setOutgoingCallerIdDisplay: not possible in CDMA"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 892
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 1
    .param p1, "power"    # Z

    #@0
    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setRadioPower(Z)V

    #@5
    .line 580
    return-void
.end method

.method public setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1422
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    .line 1421
    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 336
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setUiTTYMode(ILandroid/os/Message;)V

    #@9
    .line 334
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
    .line 931
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mVmNumber:Ljava/lang/String;

    #@3
    .line 932
    const/16 v2, 0x14

    #@5
    invoke-virtual {p0, v2, v3, v3, p3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@8
    move-result-object v1

    #@9
    .line 933
    .local v1, "resp":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@b
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@11
    .line 934
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    #@13
    .line 935
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mVmNumber:Ljava/lang/String;

    #@15
    invoke-virtual {v0, p1, v2, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@18
    .line 929
    :cond_0
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 0
    .param p1, "line"    # I
    .param p2, "countWaiting"    # I

    #@0
    .prologue
    .line 1805
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setVoiceMessageCount(I)V

    #@3
    .line 1804
    return-void
.end method

.method public startDtmf(C)V
    .locals 3
    .param p1, "c"    # C

    #@0
    .prologue
    .line 857
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 858
    const-string/jumbo v0, "CDMAPhone"

    #@9
    .line 859
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
    .line 858
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 856
    :goto_0
    return-void

    #@28
    .line 861
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

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
    .line 867
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->stopDtmf(Landroid/os/Message;)V

    #@6
    .line 866
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
    .line 540
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->switchWaitingOrHoldingAndActive()V

    #@5
    .line 539
    return-void
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->unregisterForCallWaiting(Landroid/os/Handler;)V

    #@5
    .line 770
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    #@5
    .line 740
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1194
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 1193
    return-void
.end method

.method public unregisterForEriFileLoaded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1413
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 1412
    return-void
.end method

.method protected unregisterForRuimRecordEvents()V
    .locals 2

    #@0
    .prologue
    .line 1788
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@8
    .line 1789
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v0, :cond_0

    #@a
    .line 1790
    return-void

    #@b
    .line 1792
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    #@e
    .line 1787
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 751
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    #@5
    .line 750
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 517
    const-string/jumbo v0, "CDMAPhone"

    #@3
    const-string/jumbo v1, "method unregisterForSuppServiceNotification is NOT supported in CDMA!"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 516
    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 761
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    #@2
    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    #@5
    .line 760
    return-void
.end method

.method updateCurrentCarrierInProvider()Z
    .locals 1

    #@0
    .prologue
    .line 1759
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method updateCurrentCarrierInProvider(Ljava/lang/String;)Z
    .locals 6
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1731
    const-string/jumbo v3, "CDMAPhone: updateCurrentCarrierInProvider called"

    #@4
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    #@7
    .line 1732
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result v3

    #@b
    if-nez v3, :cond_0

    #@d
    .line 1734
    :try_start_0
    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    #@f
    const-string/jumbo v4, "current"

    #@12
    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@15
    move-result-object v2

    #@16
    .line 1735
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    #@18
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    #@1b
    .line 1736
    .local v1, "map":Landroid/content/ContentValues;
    const-string/jumbo v3, "numeric"

    #@1e
    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@21
    .line 1737
    new-instance v3, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v4, "updateCurrentCarrierInProvider from system: numeric="

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    #@38
    .line 1738
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v3, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@43
    .line 1741
    new-instance v3, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v4, "update mccmnc="

    #@4b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    #@5a
    .line 1742
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mContext:Landroid/content/Context;

    #@5c
    const/4 v4, 0x0

    #@5d
    invoke-static {v3, p1, v4}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    #@60
    .line 1744
    const/4 v3, 0x1

    #@61
    return v3

    #@62
    .line 1745
    .end local v1    # "map":Landroid/content/ContentValues;
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    #@63
    .line 1746
    .local v0, "e":Landroid/database/SQLException;
    const-string/jumbo v3, "CDMAPhone"

    #@66
    const-string/jumbo v4, "Can\'t store current operator"

    #@69
    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6c
    .line 1749
    .end local v0    # "e":Landroid/database/SQLException;
    :cond_0
    return v5
.end method

.method public updateServiceLocation()V
    .locals 1

    #@0
    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->enableSingleLocationUpdate()V

    #@5
    .line 725
    return-void
.end method
