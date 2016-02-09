.class public Lcom/android/internal/telephony/SubscriptionInfoUpdater;
.super Landroid/os/Handler;
.source "SubscriptionInfoUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;,
        Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;
    }
.end annotation


# static fields
.field public static final CURR_SUBID:Ljava/lang/String; = "curr_subid"

.field private static final EVENT_GET_NETWORK_SELECTION_MODE_DONE:I = 0x2

.field private static final EVENT_SIM_ABSENT:I = 0x4

.field private static final EVENT_SIM_IO_ERROR:I = 0x6

.field private static final EVENT_SIM_LOADED:I = 0x3

.field private static final EVENT_SIM_LOCKED:I = 0x5

.field private static final EVENT_SIM_LOCKED_QUERY_ICCID_DONE:I = 0x1

.field private static final EVENT_SIM_UNKNOWN:I = 0x7

.field private static final ICCID_STRING_FOR_NO_SIM:Ljava/lang/String; = ""

.field private static final LOG_TAG:Ljava/lang/String; = "SubscriptionInfoUpdater"

.field private static final PROJECT_SIM_NUM:I

.field public static final SIM_CHANGED:I = -0x1

.field public static final SIM_NEW:I = -0x2

.field public static final SIM_NOT_CHANGE:I = 0x0

.field public static final SIM_NOT_INSERT:I = -0x63

.field public static final SIM_REPOSITION:I = -0x3

.field public static final STATUS_NO_SIM_INSERTED:I = 0x0

.field public static final STATUS_SIM1_INSERTED:I = 0x1

.field public static final STATUS_SIM2_INSERTED:I = 0x2

.field public static final STATUS_SIM3_INSERTED:I = 0x4

.field public static final STATUS_SIM4_INSERTED:I = 0x8

.field private static mContext:Landroid/content/Context;

.field private static mIccId:[Ljava/lang/String;

.field private static mInsertSimState:[I

.field private static mPhone:[Lcom/android/internal/telephony/Phone;


# instance fields
.field private mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

.field private mCurrentlyActiveUserId:I

.field private mPackageManager:Landroid/content/pm/IPackageManager;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final sReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0()Landroid/content/Context;
    .locals 1

    #@0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Landroid/content/pm/IPackageManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPackageManager:Landroid/content/pm/IPackageManager;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 62
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    #@7
    move-result v0

    #@8
    sput v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    #@a
    .line 100
    const/4 v0, 0x0

    #@b
    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    #@d
    .line 101
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    #@f
    new-array v0, v0, [Ljava/lang/String;

    #@11
    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    #@13
    .line 102
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    #@15
    new-array v0, v0, [I

    #@17
    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    #@19
    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneProxy"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    #@0
    .prologue
    .line 109
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@3
    .line 103
    const/4 v1, 0x0

    #@4
    iput-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    #@6
    .line 167
    new-instance v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;

    #@8
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    #@b
    iput-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sReceiver:Landroid/content/BroadcastReceiver;

    #@d
    .line 110
    const-string/jumbo v1, "Constructor invoked"

    #@10
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    #@13
    .line 112
    sput-object p1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    #@15
    .line 113
    sput-object p2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    #@17
    .line 114
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    #@19
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    #@1c
    move-result-object v1

    #@1d
    iput-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    #@1f
    .line 115
    const-string/jumbo v1, "package"

    #@22
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@25
    move-result-object v1

    #@26
    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    #@29
    move-result-object v1

    #@2a
    iput-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPackageManager:Landroid/content/pm/IPackageManager;

    #@2c
    .line 117
    new-instance v0, Landroid/content/IntentFilter;

    #@2e
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    #@31
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@34
    .line 118
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.internal_sim_state_changed"

    #@37
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@3a
    .line 119
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    #@3c
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sReceiver:Landroid/content/BroadcastReceiver;

    #@3e
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@41
    .line 121
    new-instance v1, Lcom/android/internal/telephony/CarrierServiceBindHelper;

    #@43
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    #@45
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CarrierServiceBindHelper;-><init>(Landroid/content/Context;)V

    #@48
    iput-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    #@4a
    .line 122
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->initializeCarrierApps()V

    #@4d
    .line 109
    return-void
.end method

.method private broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "state"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 637
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 643
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@d
    .line 644
    const-string/jumbo v1, "phoneName"

    #@10
    const-string/jumbo v2, "Phone"

    #@13
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@16
    .line 645
    const-string/jumbo v1, "ss"

    #@19
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1c
    .line 646
    const-string/jumbo v1, "reason"

    #@1f
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@22
    .line 647
    invoke-static {v0, p1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    #@25
    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v2, "Broadcasting intent ACTION_SIM_STATE_CHANGED LOADED reason "

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    .line 649
    const/4 v2, 0x0

    #@32
    .line 648
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    .line 650
    const-string/jumbo v2, " for mCardIndex : "

    #@39
    .line 648
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    #@48
    .line 651
    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    #@4b
    .line 652
    const/4 v2, -0x1

    #@4c
    .line 651
    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    #@4f
    .line 636
    return-void
.end method

.method private handleSimAbsent(I)V
    .locals 2
    .param p1, "slotId"    # I

    #@0
    .prologue
    .line 468
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    #@2
    aget-object v0, v0, p1

    #@4
    if-eqz v0, :cond_0

    #@6
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    #@8
    aget-object v0, v0, p1

    #@a
    const-string/jumbo v1, ""

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_2

    #@13
    .line 471
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    #@15
    const-string/jumbo v1, ""

    #@18
    aput-object v1, v0, p1

    #@1a
    .line 472
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_1

    #@20
    .line 473
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    #@23
    .line 475
    :cond_1
    const-string/jumbo v0, "ABSENT"

    #@26
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    #@29
    .line 467
    return-void

    #@2a
    .line 469
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v1, "SIM"

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    add-int/lit8 v1, p1, 0x1

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    const-string/jumbo v1, " hot plug out"

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    #@4a
    goto :goto_0
.end method

.method private handleSimLoaded(I)V
    .locals 24
    .param p1, "slotId"    # I

    #@0
    .prologue
    .line 357
    new-instance v20, Ljava/lang/StringBuilder;

    #@2
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v21, "handleSimStateLoadedInternal: slotId: "

    #@8
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v20

    #@c
    move-object/from16 v0, v20

    #@e
    move/from16 v1, p1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v20

    #@14
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v20

    #@18
    move-object/from16 v0, p0

    #@1a
    move-object/from16 v1, v20

    #@1c
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    #@1f
    .line 362
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    #@21
    aget-object v20, v20, p1

    #@23
    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    #@26
    move-result-object v20

    #@27
    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    #@2a
    move-result-object v12

    #@2b
    .line 363
    .local v12, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v12, :cond_0

    #@2d
    .line 364
    const-string/jumbo v20, "onRecieve: IccRecords null"

    #@30
    move-object/from16 v0, p0

    #@32
    move-object/from16 v1, v20

    #@34
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    #@37
    .line 365
    return-void

    #@38
    .line 367
    :cond_0
    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    #@3b
    move-result-object v20

    #@3c
    if-nez v20, :cond_1

    #@3e
    .line 368
    const-string/jumbo v20, "onRecieve: IccID null"

    #@41
    move-object/from16 v0, p0

    #@43
    move-object/from16 v1, v20

    #@45
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    #@48
    .line 369
    return-void

    #@49
    .line 371
    :cond_1
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    #@4b
    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    #@4e
    move-result-object v21

    #@4f
    aput-object v21, v20, p1

    #@51
    .line 373
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    #@54
    move-result v20

    #@55
    if-eqz v20, :cond_2

    #@57
    .line 374
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    #@5a
    .line 377
    :cond_2
    const v16, 0x7fffffff

    #@5d
    .line 378
    .local v16, "subId":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    #@60
    move-result-object v20

    #@61
    move-object/from16 v0, v20

    #@63
    move/from16 v1, p1

    #@65
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    #@68
    move-result-object v17

    #@69
    .line 379
    .local v17, "subIds":[I
    if-eqz v17, :cond_3

    #@6b
    .line 380
    const/16 v20, 0x0

    #@6d
    aget v16, v17, v20

    #@6f
    .line 383
    :cond_3
    invoke-static/range {v16 .. v16}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@72
    move-result v20

    #@73
    if-eqz v20, :cond_a

    #@75
    .line 384
    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    #@78
    move-result-object v11

    #@79
    .line 385
    .local v11, "operator":Ljava/lang/String;
    if-eqz v11, :cond_8

    #@7b
    .line 386
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    #@7e
    move-result-object v20

    #@7f
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    #@82
    move-result v20

    #@83
    move/from16 v0, v16

    #@85
    move/from16 v1, v20

    #@87
    if-ne v0, v1, :cond_4

    #@89
    .line 387
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    #@8b
    const/16 v21, 0x0

    #@8d
    move-object/from16 v0, v20

    #@8f
    move/from16 v1, v21

    #@91
    invoke-static {v0, v11, v1}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    #@94
    .line 389
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    #@97
    move-result-object v20

    #@98
    move-object/from16 v0, v20

    #@9a
    move/from16 v1, v16

    #@9c
    invoke-virtual {v0, v11, v1}, Lcom/android/internal/telephony/SubscriptionController;->setMccMnc(Ljava/lang/String;I)I

    #@9f
    .line 393
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@a2
    move-result-object v19

    #@a3
    .line 394
    .local v19, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, v19

    #@a5
    move/from16 v1, v16

    #@a7
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    #@aa
    move-result-object v6

    #@ab
    .line 395
    .local v6, "msisdn":Ljava/lang/String;
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    #@ad
    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@b0
    move-result-object v4

    #@b1
    .line 397
    .local v4, "contentResolver":Landroid/content/ContentResolver;
    if-eqz v6, :cond_5

    #@b3
    .line 398
    new-instance v10, Landroid/content/ContentValues;

    #@b5
    const/16 v20, 0x1

    #@b7
    move/from16 v0, v20

    #@b9
    invoke-direct {v10, v0}, Landroid/content/ContentValues;-><init>(I)V

    #@bc
    .line 399
    .local v10, "number":Landroid/content/ContentValues;
    const-string/jumbo v20, "number"

    #@bf
    move-object/from16 v0, v20

    #@c1
    invoke-virtual {v10, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@c4
    .line 400
    sget-object v20, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    #@c6
    .line 401
    new-instance v21, Ljava/lang/StringBuilder;

    #@c8
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@cb
    const-string/jumbo v22, "_id="

    #@ce
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v21

    #@d2
    .line 402
    move/from16 v0, v16

    #@d4
    int-to-long v0, v0

    #@d5
    move-wide/from16 v22, v0

    #@d7
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@da
    move-result-object v22

    #@db
    .line 401
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v21

    #@df
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e2
    move-result-object v21

    #@e3
    .line 402
    const/16 v22, 0x0

    #@e5
    .line 400
    move-object/from16 v0, v20

    #@e7
    move-object/from16 v1, v21

    #@e9
    move-object/from16 v2, v22

    #@eb
    invoke-virtual {v4, v0, v10, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@ee
    .line 405
    .end local v10    # "number":Landroid/content/ContentValues;
    :cond_5
    move-object/from16 v0, p0

    #@f0
    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    #@f2
    move-object/from16 v20, v0

    #@f4
    move-object/from16 v0, v20

    #@f6
    move/from16 v1, v16

    #@f8
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    #@fb
    move-result-object v18

    #@fc
    .line 407
    .local v18, "subInfo":Landroid/telephony/SubscriptionInfo;
    move-object/from16 v0, v19

    #@fe
    move/from16 v1, v16

    #@100
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    #@103
    move-result-object v13

    #@104
    .line 408
    .local v13, "simCarrierName":Ljava/lang/String;
    new-instance v7, Landroid/content/ContentValues;

    #@106
    const/16 v20, 0x1

    #@108
    move/from16 v0, v20

    #@10a
    invoke-direct {v7, v0}, Landroid/content/ContentValues;-><init>(I)V

    #@10d
    .line 410
    .local v7, "name":Landroid/content/ContentValues;
    if-eqz v18, :cond_6

    #@10f
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    #@112
    move-result v20

    #@113
    .line 411
    const/16 v21, 0x2

    #@115
    .line 410
    move/from16 v0, v20

    #@117
    move/from16 v1, v21

    #@119
    if-eq v0, v1, :cond_6

    #@11b
    .line 412
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@11e
    move-result v20

    #@11f
    if-nez v20, :cond_9

    #@121
    .line 413
    move-object v8, v13

    #@122
    .line 417
    .local v8, "nameToSet":Ljava/lang/String;
    :goto_1
    const-string/jumbo v20, "display_name"

    #@125
    move-object/from16 v0, v20

    #@127
    invoke-virtual {v7, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@12a
    .line 418
    new-instance v20, Ljava/lang/StringBuilder;

    #@12c
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@12f
    const-string/jumbo v21, "sim name = "

    #@132
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    move-result-object v20

    #@136
    move-object/from16 v0, v20

    #@138
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v20

    #@13c
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13f
    move-result-object v20

    #@140
    move-object/from16 v0, p0

    #@142
    move-object/from16 v1, v20

    #@144
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    #@147
    .line 419
    sget-object v20, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    #@149
    .line 420
    new-instance v21, Ljava/lang/StringBuilder;

    #@14b
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@14e
    const-string/jumbo v22, "_id="

    #@151
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@154
    move-result-object v21

    #@155
    .line 421
    move/from16 v0, v16

    #@157
    int-to-long v0, v0

    #@158
    move-wide/from16 v22, v0

    #@15a
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@15d
    move-result-object v22

    #@15e
    .line 420
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@161
    move-result-object v21

    #@162
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@165
    move-result-object v21

    #@166
    .line 421
    const/16 v22, 0x0

    #@168
    .line 419
    move-object/from16 v0, v20

    #@16a
    move-object/from16 v1, v21

    #@16c
    move-object/from16 v2, v22

    #@16e
    invoke-virtual {v4, v0, v7, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@171
    .line 427
    .end local v8    # "nameToSet":Ljava/lang/String;
    :cond_6
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    #@173
    invoke-static/range {v20 .. v20}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@176
    move-result-object v14

    #@177
    .line 428
    .local v14, "sp":Landroid/content/SharedPreferences;
    new-instance v20, Ljava/lang/StringBuilder;

    #@179
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@17c
    const-string/jumbo v21, "curr_subid"

    #@17f
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@182
    move-result-object v20

    #@183
    move-object/from16 v0, v20

    #@185
    move/from16 v1, p1

    #@187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18a
    move-result-object v20

    #@18b
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18e
    move-result-object v20

    #@18f
    const/16 v21, -0x1

    #@191
    move-object/from16 v0, v20

    #@193
    move/from16 v1, v21

    #@195
    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    #@198
    move-result v15

    #@199
    .line 430
    .local v15, "storedSubId":I
    move/from16 v0, v16

    #@19b
    if-eq v15, v0, :cond_7

    #@19d
    .line 431
    sget v9, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    #@19f
    .line 434
    .local v9, "networkType":I
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    #@1a1
    aget-object v20, v20, p1

    #@1a3
    const/16 v21, 0x0

    #@1a5
    move-object/from16 v0, v20

    #@1a7
    move-object/from16 v1, v21

    #@1a9
    invoke-interface {v0, v9, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    #@1ac
    .line 435
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    #@1ae
    aget-object v20, v20, p1

    #@1b0
    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@1b3
    move-result-object v20

    #@1b4
    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1b7
    move-result-object v20

    #@1b8
    .line 436
    new-instance v21, Ljava/lang/StringBuilder;

    #@1ba
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@1bd
    const-string/jumbo v22, "preferred_network_mode"

    #@1c0
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c3
    move-result-object v21

    #@1c4
    move-object/from16 v0, v21

    #@1c6
    move/from16 v1, v16

    #@1c8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1cb
    move-result-object v21

    #@1cc
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1cf
    move-result-object v21

    #@1d0
    .line 435
    move-object/from16 v0, v20

    #@1d2
    move-object/from16 v1, v21

    #@1d4
    invoke-static {v0, v1, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@1d7
    .line 440
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    #@1d9
    aget-object v20, v20, p1

    #@1db
    .line 441
    new-instance v21, Ljava/lang/Integer;

    #@1dd
    move-object/from16 v0, v21

    #@1df
    move/from16 v1, p1

    #@1e1
    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    #@1e4
    const/16 v22, 0x2

    #@1e6
    move-object/from16 v0, p0

    #@1e8
    move/from16 v1, v22

    #@1ea
    move-object/from16 v2, v21

    #@1ec
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1ef
    move-result-object v21

    #@1f0
    .line 440
    invoke-interface/range {v20 .. v21}, Lcom/android/internal/telephony/Phone;->getNetworkSelectionMode(Landroid/os/Message;)V

    #@1f3
    .line 444
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@1f6
    move-result-object v5

    #@1f7
    .line 445
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v20, Ljava/lang/StringBuilder;

    #@1f9
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@1fc
    const-string/jumbo v21, "curr_subid"

    #@1ff
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@202
    move-result-object v20

    #@203
    move-object/from16 v0, v20

    #@205
    move/from16 v1, p1

    #@207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20a
    move-result-object v20

    #@20b
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20e
    move-result-object v20

    #@20f
    move-object/from16 v0, v20

    #@211
    move/from16 v1, v16

    #@213
    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    #@216
    .line 446
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    #@219
    .line 453
    .end local v4    # "contentResolver":Landroid/content/ContentResolver;
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "msisdn":Ljava/lang/String;
    .end local v7    # "name":Landroid/content/ContentValues;
    .end local v9    # "networkType":I
    .end local v11    # "operator":Ljava/lang/String;
    .end local v13    # "simCarrierName":Ljava/lang/String;
    .end local v14    # "sp":Landroid/content/SharedPreferences;
    .end local v15    # "storedSubId":I
    .end local v18    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v19    # "tm":Landroid/telephony/TelephonyManager;
    :cond_7
    :goto_2
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    #@21b
    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@21e
    move-result-object v20

    #@21f
    .line 454
    move-object/from16 v0, p0

    #@221
    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPackageManager:Landroid/content/pm/IPackageManager;

    #@223
    move-object/from16 v21, v0

    #@225
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@228
    move-result-object v22

    #@229
    move-object/from16 v0, p0

    #@22b
    iget v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    #@22d
    move/from16 v23, v0

    #@22f
    .line 453
    invoke-static/range {v20 .. v23}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;I)V

    #@232
    .line 456
    const-string/jumbo v20, "LOADED"

    #@235
    const/16 v21, 0x0

    #@237
    move-object/from16 v0, p0

    #@239
    move/from16 v1, p1

    #@23b
    move-object/from16 v2, v20

    #@23d
    move-object/from16 v3, v21

    #@23f
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    #@242
    .line 457
    const-string/jumbo v20, "LOADED"

    #@245
    move-object/from16 v0, p0

    #@247
    move/from16 v1, p1

    #@249
    move-object/from16 v2, v20

    #@24b
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    #@24e
    .line 356
    return-void

    #@24f
    .line 391
    .restart local v11    # "operator":Ljava/lang/String;
    :cond_8
    const-string/jumbo v20, "EVENT_RECORDS_LOADED Operator name is null"

    #@252
    move-object/from16 v0, p0

    #@254
    move-object/from16 v1, v20

    #@256
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    #@259
    goto/16 :goto_0

    #@25b
    .line 415
    .restart local v4    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v6    # "msisdn":Ljava/lang/String;
    .restart local v7    # "name":Landroid/content/ContentValues;
    .restart local v13    # "simCarrierName":Ljava/lang/String;
    .restart local v18    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .restart local v19    # "tm":Landroid/telephony/TelephonyManager;
    :cond_9
    new-instance v20, Ljava/lang/StringBuilder;

    #@25d
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@260
    const-string/jumbo v21, "CARD "

    #@263
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@266
    move-result-object v20

    #@267
    add-int/lit8 v21, p1, 0x1

    #@269
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@26c
    move-result-object v21

    #@26d
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@270
    move-result-object v20

    #@271
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@274
    move-result-object v8

    #@275
    .restart local v8    # "nameToSet":Ljava/lang/String;
    goto/16 :goto_1

    #@277
    .line 449
    .end local v4    # "contentResolver":Landroid/content/ContentResolver;
    .end local v6    # "msisdn":Ljava/lang/String;
    .end local v7    # "name":Landroid/content/ContentValues;
    .end local v8    # "nameToSet":Ljava/lang/String;
    .end local v11    # "operator":Ljava/lang/String;
    .end local v13    # "simCarrierName":Ljava/lang/String;
    .end local v18    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v19    # "tm":Landroid/telephony/TelephonyManager;
    :cond_a
    const-string/jumbo v20, "Invalid subId, could not update ContentResolver"

    #@27a
    move-object/from16 v0, p0

    #@27c
    move-object/from16 v1, v20

    #@27e
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    #@281
    goto :goto_2
.end method

.method private handleSimLocked(ILjava/lang/String;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 330
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    #@3
    aget-object v2, v2, p1

    #@5
    if-eqz v2, :cond_0

    #@7
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    #@9
    aget-object v2, v2, p1

    #@b
    const-string/jumbo v3, ""

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v3, "SIM"

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    add-int/lit8 v3, p1, 0x1

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    const-string/jumbo v3, " hot plug in"

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    #@34
    .line 332
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    #@36
    aput-object v4, v2, p1

    #@38
    .line 336
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    #@3a
    aget-object v2, v2, p1

    #@3c
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    #@3f
    move-result-object v2

    #@40
    if-nez v2, :cond_1

    #@42
    const/4 v0, 0x0

    #@43
    .line 339
    :goto_0
    if-eqz v0, :cond_3

    #@45
    .line 340
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    #@47
    aget-object v1, v2, p1

    #@49
    .line 341
    .local v1, "iccId":Ljava/lang/String;
    if-nez v1, :cond_2

    #@4b
    .line 342
    const-string/jumbo v2, "Querying IccId"

    #@4e
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    #@51
    .line 345
    new-instance v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    #@53
    invoke-direct {v2, p2, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;-><init>(Ljava/lang/String;I)V

    #@56
    .line 344
    const/4 v3, 0x1

    #@57
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@5a
    move-result-object v2

    #@5b
    .line 343
    const/16 v3, 0x2fe2

    #@5d
    invoke-virtual {v0, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@60
    .line 329
    .end local v1    # "iccId":Ljava/lang/String;
    :goto_1
    return-void

    #@61
    .line 337
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    #@63
    aget-object v2, v2, p1

    #@65
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    #@68
    move-result-object v2

    #@69
    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@6c
    move-result-object v0

    #@6d
    .local v0, "fileHandler":Lcom/android/internal/telephony/uicc/IccFileHandler;
    goto :goto_0

    #@6e
    .line 347
    .end local v0    # "fileHandler":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .restart local v1    # "iccId":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    const-string/jumbo v3, "NOT Querying IccId its already set sIccid["

    #@76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v2

    #@7a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v2

    #@7e
    const-string/jumbo v3, "]="

    #@81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v2

    #@85
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v2

    #@89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v2

    #@8d
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    #@90
    .line 348
    const-string/jumbo v2, "LOCKED"

    #@93
    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    #@96
    .line 349
    const-string/jumbo v2, "LOCKED"

    #@99
    invoke-direct {p0, p1, v2, p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    #@9c
    goto :goto_1

    #@9d
    .line 352
    .end local v1    # "iccId":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    const-string/jumbo v3, "sFh["

    #@a5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v2

    #@a9
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v2

    #@ad
    const-string/jumbo v3, "] is null, ignore"

    #@b0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v2

    #@b4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b7
    move-result-object v2

    #@b8
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    #@bb
    goto :goto_1
.end method

.method private initializeCarrierApps()V
    .locals 5

    #@0
    .prologue
    .line 130
    const/4 v1, 0x0

    #@1
    iput v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    #@3
    .line 132
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@6
    move-result-object v1

    #@7
    .line 133
    new-instance v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;

    #@9
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    #@c
    .line 132
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    #@f
    .line 159
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@12
    move-result-object v1

    #@13
    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    #@16
    move-result-object v1

    #@17
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    #@19
    iput v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 163
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    #@1d
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .line 164
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPackageManager:Landroid/content/pm/IPackageManager;

    #@23
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@26
    move-result-object v3

    #@27
    iget v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    #@29
    .line 163
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;I)V

    #@2c
    .line 125
    return-void

    #@2d
    .line 160
    :catch_0
    move-exception v0

    #@2e
    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v2, "Couldn\'t get current user ID; guessing it\'s 0: "

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    #@49
    goto :goto_0
.end method

.method private isAllIccIdQueryDone()Z
    .locals 3

    #@0
    .prologue
    .line 215
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    #@3
    if-ge v0, v1, :cond_1

    #@5
    .line 216
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    #@7
    aget-object v1, v1, v0

    #@9
    if-nez v1, :cond_0

    #@b
    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Wait for SIM"

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    add-int/lit8 v2, v0, 0x1

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    const-string/jumbo v2, " IccId"

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    #@2b
    .line 218
    const/4 v1, 0x0

    #@2c
    return v1

    #@2d
    .line 215
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 221
    :cond_1
    const-string/jumbo v1, "All IccIds query complete"

    #@33
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    #@36
    .line 223
    const/4 v1, 0x1

    #@37
    return v1
.end method

.method private isNewSim(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "oldIccId"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 624
    const/4 v1, 0x1

    #@1
    .line 625
    .local v1, "newSim":Z
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    #@4
    if-ge v0, v2, :cond_0

    #@6
    .line 626
    aget-object v2, p2, v0

    #@8
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 627
    const/4 v1, 0x0

    #@f
    .line 631
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "newSim = "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    #@26
    .line 633
    return v1

    #@27
    .line 625
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 661
    const-string/jumbo v0, "SubscriptionInfoUpdater"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 660
    return-void
.end method

.method private updateCarrierServices(ILjava/lang/String;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "simState"    # Ljava/lang/String;

    #@0
    .prologue
    .line 462
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "carrier_config"

    #@5
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    .line 461
    check-cast v0, Landroid/telephony/CarrierConfigManager;

    #@b
    .line 463
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v0, p1, p2}, Landroid/telephony/CarrierConfigManager;->updateConfigForPhoneId(ILjava/lang/String;)V

    #@e
    .line 464
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    #@10
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->updateForPhoneId(ILjava/lang/String;)V

    #@13
    .line 460
    return-void
.end method

.method private declared-synchronized updateSubscriptionInfoByIccId()V
    .locals 21

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 483
    :try_start_0
    const-string/jumbo v18, "updateSubscriptionInfoByIccId:+ Start"

    #@4
    move-object/from16 v0, p0

    #@6
    move-object/from16 v1, v18

    #@8
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    #@b
    .line 485
    move-object/from16 v0, p0

    #@d
    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    #@f
    move-object/from16 v18, v0

    #@11
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SubscriptionManager;->clearSubscriptionInfo()V

    #@14
    .line 487
    const/4 v5, 0x0

    #@15
    .local v5, "i":I
    :goto_0
    sget v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    #@17
    move/from16 v0, v18

    #@19
    if-ge v5, v0, :cond_0

    #@1b
    .line 488
    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    #@1d
    const/16 v19, 0x0

    #@1f
    aput v19, v18, v5

    #@21
    .line 487
    add-int/lit8 v5, v5, 0x1

    #@23
    goto :goto_0

    #@24
    .line 491
    :cond_0
    sget v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    #@26
    .line 492
    .local v7, "insertedSimCount":I
    const/4 v5, 0x0

    #@27
    :goto_1
    sget v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    #@29
    move/from16 v0, v18

    #@2b
    if-ge v5, v0, :cond_2

    #@2d
    .line 493
    const-string/jumbo v18, ""

    #@30
    sget-object v19, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    #@32
    aget-object v19, v19, v5

    #@34
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v18

    #@38
    if-eqz v18, :cond_1

    #@3a
    .line 494
    add-int/lit8 v7, v7, -0x1

    #@3c
    .line 495
    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    #@3e
    const/16 v19, -0x63

    #@40
    aput v19, v18, v5

    #@42
    .line 492
    :cond_1
    add-int/lit8 v5, v5, 0x1

    #@44
    goto :goto_1

    #@45
    .line 498
    :cond_2
    new-instance v18, Ljava/lang/StringBuilder;

    #@47
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v19, "insertedSimCount = "

    #@4d
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v18

    #@51
    move-object/from16 v0, v18

    #@53
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v18

    #@57
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v18

    #@5b
    move-object/from16 v0, p0

    #@5d
    move-object/from16 v1, v18

    #@5f
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    #@62
    .line 500
    const/4 v6, 0x0

    #@63
    .line 501
    .local v6, "index":I
    const/4 v5, 0x0

    #@64
    :goto_2
    sget v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    #@66
    move/from16 v0, v18

    #@68
    if-ge v5, v0, :cond_6

    #@6a
    .line 502
    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    #@6c
    aget v18, v18, v5

    #@6e
    const/16 v19, -0x63

    #@70
    move/from16 v0, v18

    #@72
    move/from16 v1, v19

    #@74
    if-ne v0, v1, :cond_4

    #@76
    .line 501
    :cond_3
    add-int/lit8 v5, v5, 0x1

    #@78
    goto :goto_2

    #@79
    .line 505
    :cond_4
    const/4 v6, 0x2

    #@7a
    .line 506
    add-int/lit8 v8, v5, 0x1

    #@7c
    .local v8, "j":I
    :goto_3
    sget v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    #@7e
    move/from16 v0, v18

    #@80
    if-ge v8, v0, :cond_3

    #@82
    .line 507
    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    #@84
    aget v18, v18, v8

    #@86
    if-nez v18, :cond_5

    #@88
    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    #@8a
    aget-object v18, v18, v5

    #@8c
    sget-object v19, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    #@8e
    aget-object v19, v19, v8

    #@90
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@93
    move-result v18

    #@94
    if-eqz v18, :cond_5

    #@96
    .line 508
    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    #@98
    const/16 v19, 0x1

    #@9a
    aput v19, v18, v5

    #@9c
    .line 509
    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    #@9e
    aput v6, v18, v8

    #@a0
    .line 510
    add-int/lit8 v6, v6, 0x1

    #@a2
    .line 506
    :cond_5
    add-int/lit8 v8, v8, 0x1

    #@a4
    goto :goto_3

    #@a5
    .line 515
    .end local v8    # "j":I
    :cond_6
    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    #@a7
    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@aa
    move-result-object v4

    #@ab
    .line 516
    .local v4, "contentResolver":Landroid/content/ContentResolver;
    sget v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    #@ad
    move/from16 v0, v18

    #@af
    new-array v13, v0, [Ljava/lang/String;

    #@b1
    .line 517
    .local v13, "oldIccId":[Ljava/lang/String;
    const/4 v5, 0x0

    #@b2
    :goto_4
    sget v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    #@b4
    move/from16 v0, v18

    #@b6
    if-ge v5, v0, :cond_c

    #@b8
    .line 518
    const/16 v18, 0x0

    #@ba
    aput-object v18, v13, v5

    #@bc
    .line 520
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    #@bf
    move-result-object v18

    #@c0
    .line 521
    sget-object v19, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    #@c2
    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@c5
    move-result-object v19

    #@c6
    .line 520
    const/16 v20, 0x0

    #@c8
    move-object/from16 v0, v18

    #@ca
    move/from16 v1, v20

    #@cc
    move-object/from16 v2, v19

    #@ce
    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoUsingSlotIdWithCheck(IZLjava/lang/String;)Ljava/util/List;

    #@d1
    move-result-object v14

    #@d2
    .line 522
    .local v14, "oldSubInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v14, :cond_a

    #@d4
    .line 523
    const/16 v18, 0x0

    #@d6
    move/from16 v0, v18

    #@d8
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@db
    move-result-object v18

    #@dc
    check-cast v18, Landroid/telephony/SubscriptionInfo;

    #@de
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    #@e1
    move-result-object v18

    #@e2
    aput-object v18, v13, v5

    #@e4
    .line 524
    new-instance v18, Ljava/lang/StringBuilder;

    #@e6
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@e9
    const-string/jumbo v19, "updateSubscriptionInfoByIccId: oldSubId = "

    #@ec
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v19

    #@f0
    .line 525
    const/16 v18, 0x0

    #@f2
    move/from16 v0, v18

    #@f4
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f7
    move-result-object v18

    #@f8
    check-cast v18, Landroid/telephony/SubscriptionInfo;

    #@fa
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    #@fd
    move-result v18

    #@fe
    .line 524
    move-object/from16 v0, v19

    #@100
    move/from16 v1, v18

    #@102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@105
    move-result-object v18

    #@106
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@109
    move-result-object v18

    #@10a
    move-object/from16 v0, p0

    #@10c
    move-object/from16 v1, v18

    #@10e
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    #@111
    .line 526
    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    #@113
    aget v18, v18, v5

    #@115
    if-nez v18, :cond_7

    #@117
    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    #@119
    aget-object v18, v18, v5

    #@11b
    aget-object v19, v13, v5

    #@11d
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@120
    move-result v18

    #@121
    if-eqz v18, :cond_9

    #@123
    .line 529
    :cond_7
    :goto_5
    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    #@125
    aget v18, v18, v5

    #@127
    if-eqz v18, :cond_8

    #@129
    .line 530
    new-instance v17, Landroid/content/ContentValues;

    #@12b
    const/16 v18, 0x1

    #@12d
    invoke-direct/range {v17 .. v18}, Landroid/content/ContentValues;-><init>(I)V

    #@130
    .line 531
    .local v17, "value":Landroid/content/ContentValues;
    const-string/jumbo v18, "sim_id"

    #@133
    .line 532
    const/16 v19, -0x1

    #@135
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@138
    move-result-object v19

    #@139
    .line 531
    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@13c
    .line 533
    sget-object v19, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    #@13e
    .line 534
    new-instance v18, Ljava/lang/StringBuilder;

    #@140
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@143
    const-string/jumbo v20, "_id="

    #@146
    move-object/from16 v0, v18

    #@148
    move-object/from16 v1, v20

    #@14a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v20

    #@14e
    .line 535
    const/16 v18, 0x0

    #@150
    move/from16 v0, v18

    #@152
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@155
    move-result-object v18

    #@156
    check-cast v18, Landroid/telephony/SubscriptionInfo;

    #@158
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    #@15b
    move-result v18

    #@15c
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@15f
    move-result-object v18

    #@160
    .line 534
    move-object/from16 v0, v20

    #@162
    move-object/from16 v1, v18

    #@164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v18

    #@168
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16b
    move-result-object v18

    #@16c
    .line 535
    const/16 v20, 0x0

    #@16e
    .line 533
    move-object/from16 v0, v19

    #@170
    move-object/from16 v1, v17

    #@172
    move-object/from16 v2, v18

    #@174
    move-object/from16 v3, v20

    #@176
    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@179
    .line 517
    .end local v17    # "value":Landroid/content/ContentValues;
    :cond_8
    :goto_6
    add-int/lit8 v5, v5, 0x1

    #@17b
    goto/16 :goto_4

    #@17d
    .line 527
    :cond_9
    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    #@17f
    const/16 v19, -0x1

    #@181
    aput v19, v18, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@183
    goto :goto_5

    #@184
    .end local v4    # "contentResolver":Landroid/content/ContentResolver;
    .end local v5    # "i":I
    .end local v6    # "index":I
    .end local v7    # "insertedSimCount":I
    .end local v13    # "oldIccId":[Ljava/lang/String;
    .end local v14    # "oldSubInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v18

    #@185
    monitor-exit p0

    #@186
    throw v18

    #@187
    .line 538
    .restart local v4    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v5    # "i":I
    .restart local v6    # "index":I
    .restart local v7    # "insertedSimCount":I
    .restart local v13    # "oldIccId":[Ljava/lang/String;
    .restart local v14    # "oldSubInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_a
    :try_start_1
    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    #@189
    aget v18, v18, v5

    #@18b
    if-nez v18, :cond_b

    #@18d
    .line 540
    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    #@18f
    const/16 v19, -0x1

    #@191
    aput v19, v18, v5

    #@193
    .line 542
    :cond_b
    const-string/jumbo v18, ""

    #@196
    aput-object v18, v13, v5

    #@198
    .line 543
    new-instance v18, Ljava/lang/StringBuilder;

    #@19a
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@19d
    const-string/jumbo v19, "updateSubscriptionInfoByIccId: No SIM in slot "

    #@1a0
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a3
    move-result-object v18

    #@1a4
    move-object/from16 v0, v18

    #@1a6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a9
    move-result-object v18

    #@1aa
    const-string/jumbo v19, " last time"

    #@1ad
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b0
    move-result-object v18

    #@1b1
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b4
    move-result-object v18

    #@1b5
    move-object/from16 v0, p0

    #@1b7
    move-object/from16 v1, v18

    #@1b9
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    #@1bc
    goto :goto_6

    #@1bd
    .line 547
    .end local v14    # "oldSubInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_c
    const/4 v5, 0x0

    #@1be
    :goto_7
    sget v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    #@1c0
    move/from16 v0, v18

    #@1c2
    if-ge v5, v0, :cond_d

    #@1c4
    .line 548
    new-instance v18, Ljava/lang/StringBuilder;

    #@1c6
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@1c9
    const-string/jumbo v19, "updateSubscriptionInfoByIccId: oldIccId["

    #@1cc
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cf
    move-result-object v18

    #@1d0
    move-object/from16 v0, v18

    #@1d2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d5
    move-result-object v18

    #@1d6
    const-string/jumbo v19, "] = "

    #@1d9
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dc
    move-result-object v18

    #@1dd
    aget-object v19, v13, v5

    #@1df
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e2
    move-result-object v18

    #@1e3
    .line 549
    const-string/jumbo v19, ", sIccId["

    #@1e6
    .line 548
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e9
    move-result-object v18

    #@1ea
    move-object/from16 v0, v18

    #@1ec
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1ef
    move-result-object v18

    #@1f0
    .line 549
    const-string/jumbo v19, "] = "

    #@1f3
    .line 548
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f6
    move-result-object v18

    #@1f7
    .line 549
    sget-object v19, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    #@1f9
    aget-object v19, v19, v5

    #@1fb
    .line 548
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fe
    move-result-object v18

    #@1ff
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@202
    move-result-object v18

    #@203
    move-object/from16 v0, p0

    #@205
    move-object/from16 v1, v18

    #@207
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    #@20a
    .line 547
    add-int/lit8 v5, v5, 0x1

    #@20c
    goto :goto_7

    #@20d
    .line 553
    :cond_d
    const/4 v10, 0x0

    #@20e
    .line 554
    .local v10, "nNewCardCount":I
    const/4 v11, 0x0

    #@20f
    .line 555
    .local v11, "nNewSimStatus":I
    const/4 v5, 0x0

    #@210
    :goto_8
    sget v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    #@212
    move/from16 v0, v18

    #@214
    if-ge v5, v0, :cond_11

    #@216
    .line 556
    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    #@218
    aget v18, v18, v5

    #@21a
    const/16 v19, -0x63

    #@21c
    move/from16 v0, v18

    #@21e
    move/from16 v1, v19

    #@220
    if-ne v0, v1, :cond_f

    #@222
    .line 557
    new-instance v18, Ljava/lang/StringBuilder;

    #@224
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@227
    const-string/jumbo v19, "updateSubscriptionInfoByIccId: No SIM inserted in slot "

    #@22a
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22d
    move-result-object v18

    #@22e
    move-object/from16 v0, v18

    #@230
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@233
    move-result-object v18

    #@234
    const-string/jumbo v19, " this time"

    #@237
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23a
    move-result-object v18

    #@23b
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23e
    move-result-object v18

    #@23f
    move-object/from16 v0, p0

    #@241
    move-object/from16 v1, v18

    #@243
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    #@246
    .line 555
    :cond_e
    :goto_9
    add-int/lit8 v5, v5, 0x1

    #@248
    goto :goto_8

    #@249
    .line 559
    :cond_f
    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    #@24b
    aget v18, v18, v5

    #@24d
    if-lez v18, :cond_10

    #@24f
    .line 562
    move-object/from16 v0, p0

    #@251
    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    #@253
    move-object/from16 v18, v0

    #@255
    new-instance v19, Ljava/lang/StringBuilder;

    #@257
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@25a
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    #@25c
    aget-object v20, v20, v5

    #@25e
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@261
    move-result-object v19

    #@262
    .line 563
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    #@264
    aget v20, v20, v5

    #@266
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@269
    move-result-object v20

    #@26a
    .line 562
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26d
    move-result-object v19

    #@26e
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@271
    move-result-object v19

    #@272
    move-object/from16 v0, v18

    #@274
    move-object/from16 v1, v19

    #@276
    invoke-virtual {v0, v1, v5}, Landroid/telephony/SubscriptionManager;->addSubscriptionInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;

    #@279
    .line 564
    new-instance v18, Ljava/lang/StringBuilder;

    #@27b
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@27e
    const-string/jumbo v19, "SUB"

    #@281
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@284
    move-result-object v18

    #@285
    add-int/lit8 v19, v5, 0x1

    #@287
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28a
    move-result-object v18

    #@28b
    const-string/jumbo v19, " has invalid IccId"

    #@28e
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@291
    move-result-object v18

    #@292
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@295
    move-result-object v18

    #@296
    move-object/from16 v0, p0

    #@298
    move-object/from16 v1, v18

    #@29a
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    #@29d
    .line 568
    :goto_a
    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    #@29f
    aget-object v18, v18, v5

    #@2a1
    move-object/from16 v0, p0

    #@2a3
    move-object/from16 v1, v18

    #@2a5
    invoke-direct {v0, v1, v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isNewSim(Ljava/lang/String;[Ljava/lang/String;)Z

    #@2a8
    move-result v18

    #@2a9
    if-eqz v18, :cond_e

    #@2ab
    .line 569
    add-int/lit8 v10, v10, 0x1

    #@2ad
    .line 570
    packed-switch v5, :pswitch_data_0

    #@2b0
    .line 585
    :goto_b
    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    #@2b2
    const/16 v19, -0x2

    #@2b4
    aput v19, v18, v5

    #@2b6
    goto :goto_9

    #@2b7
    .line 566
    :cond_10
    move-object/from16 v0, p0

    #@2b9
    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    #@2bb
    move-object/from16 v18, v0

    #@2bd
    sget-object v19, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    #@2bf
    aget-object v19, v19, v5

    #@2c1
    move-object/from16 v0, v18

    #@2c3
    move-object/from16 v1, v19

    #@2c5
    invoke-virtual {v0, v1, v5}, Landroid/telephony/SubscriptionManager;->addSubscriptionInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;

    #@2c8
    goto :goto_a

    #@2c9
    .line 572
    :pswitch_0
    or-int/lit8 v11, v11, 0x1

    #@2cb
    .line 573
    goto :goto_b

    #@2cc
    .line 575
    :pswitch_1
    or-int/lit8 v11, v11, 0x2

    #@2ce
    .line 576
    goto :goto_b

    #@2cf
    .line 578
    :pswitch_2
    or-int/lit8 v11, v11, 0x4

    #@2d1
    .line 579
    goto :goto_b

    #@2d2
    .line 590
    :cond_11
    const/4 v5, 0x0

    #@2d3
    :goto_c
    sget v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    #@2d5
    move/from16 v0, v18

    #@2d7
    if-ge v5, v0, :cond_13

    #@2d9
    .line 591
    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    #@2db
    aget v18, v18, v5

    #@2dd
    const/16 v19, -0x1

    #@2df
    move/from16 v0, v18

    #@2e1
    move/from16 v1, v19

    #@2e3
    if-ne v0, v1, :cond_12

    #@2e5
    .line 592
    sget-object v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    #@2e7
    const/16 v19, -0x3

    #@2e9
    aput v19, v18, v5

    #@2eb
    .line 594
    :cond_12
    new-instance v18, Ljava/lang/StringBuilder;

    #@2ed
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@2f0
    const-string/jumbo v19, "updateSubscriptionInfoByIccId: sInsertSimState["

    #@2f3
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f6
    move-result-object v18

    #@2f7
    move-object/from16 v0, v18

    #@2f9
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2fc
    move-result-object v18

    #@2fd
    const-string/jumbo v19, "] = "

    #@300
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@303
    move-result-object v18

    #@304
    .line 595
    sget-object v19, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    #@306
    aget v19, v19, v5

    #@308
    .line 594
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30b
    move-result-object v18

    #@30c
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30f
    move-result-object v18

    #@310
    move-object/from16 v0, p0

    #@312
    move-object/from16 v1, v18

    #@314
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    #@317
    .line 590
    add-int/lit8 v5, v5, 0x1

    #@319
    goto :goto_c

    #@31a
    .line 598
    :cond_13
    move-object/from16 v0, p0

    #@31c
    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    #@31e
    move-object/from16 v18, v0

    #@320
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    #@323
    move-result-object v15

    #@324
    .line 599
    .local v15, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v15, :cond_15

    #@326
    const/4 v12, 0x0

    #@327
    .line 600
    .local v12, "nSubCount":I
    :goto_d
    new-instance v18, Ljava/lang/StringBuilder;

    #@329
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@32c
    const-string/jumbo v19, "updateSubscriptionInfoByIccId: nSubCount = "

    #@32f
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@332
    move-result-object v18

    #@333
    move-object/from16 v0, v18

    #@335
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@338
    move-result-object v18

    #@339
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33c
    move-result-object v18

    #@33d
    move-object/from16 v0, p0

    #@33f
    move-object/from16 v1, v18

    #@341
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    #@344
    .line 601
    const/4 v5, 0x0

    #@345
    :goto_e
    if-ge v5, v12, :cond_16

    #@347
    .line 602
    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@34a
    move-result-object v16

    #@34b
    check-cast v16, Landroid/telephony/SubscriptionInfo;

    #@34d
    .line 604
    .local v16, "temp":Landroid/telephony/SubscriptionInfo;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@350
    move-result-object v18

    #@351
    .line 605
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    #@354
    move-result v19

    #@355
    .line 604
    invoke-virtual/range {v18 .. v19}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    #@358
    move-result-object v9

    #@359
    .line 607
    .local v9, "msisdn":Ljava/lang/String;
    if-eqz v9, :cond_14

    #@35b
    .line 608
    new-instance v17, Landroid/content/ContentValues;

    #@35d
    const/16 v18, 0x1

    #@35f
    invoke-direct/range {v17 .. v18}, Landroid/content/ContentValues;-><init>(I)V

    #@362
    .line 609
    .restart local v17    # "value":Landroid/content/ContentValues;
    const-string/jumbo v18, "number"

    #@365
    move-object/from16 v0, v17

    #@367
    move-object/from16 v1, v18

    #@369
    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@36c
    .line 610
    sget-object v18, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    #@36e
    .line 611
    new-instance v19, Ljava/lang/StringBuilder;

    #@370
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@373
    const-string/jumbo v20, "_id="

    #@376
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@379
    move-result-object v19

    #@37a
    .line 612
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    #@37d
    move-result v20

    #@37e
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@381
    move-result-object v20

    #@382
    .line 611
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@385
    move-result-object v19

    #@386
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@389
    move-result-object v19

    #@38a
    .line 612
    const/16 v20, 0x0

    #@38c
    .line 610
    move-object/from16 v0, v18

    #@38e
    move-object/from16 v1, v17

    #@390
    move-object/from16 v2, v19

    #@392
    move-object/from16 v3, v20

    #@394
    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@397
    .line 601
    .end local v17    # "value":Landroid/content/ContentValues;
    :cond_14
    add-int/lit8 v5, v5, 0x1

    #@399
    goto :goto_e

    #@39a
    .line 599
    .end local v9    # "msisdn":Ljava/lang/String;
    .end local v12    # "nSubCount":I
    .end local v16    # "temp":Landroid/telephony/SubscriptionInfo;
    :cond_15
    invoke-interface {v15}, Ljava/util/List;->size()I

    #@39d
    move-result v12

    #@39e
    .restart local v12    # "nSubCount":I
    goto :goto_d

    #@39f
    .line 617
    :cond_16
    move-object/from16 v0, p0

    #@3a1
    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    #@3a3
    move-object/from16 v18, v0

    #@3a5
    move-object/from16 v0, p0

    #@3a7
    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    #@3a9
    move-object/from16 v19, v0

    #@3ab
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    #@3ae
    move-result v19

    #@3af
    invoke-virtual/range {v18 .. v19}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    #@3b2
    .line 619
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    #@3b5
    move-result-object v18

    #@3b6
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V

    #@3b9
    .line 620
    const-string/jumbo v18, "updateSubscriptionInfoByIccId:- SsubscriptionInfo update complete"

    #@3bc
    move-object/from16 v0, p0

    #@3be
    move-object/from16 v1, v18

    #@3c0
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c3
    monitor-exit p0

    #@3c4
    .line 482
    return-void

    #@3c5
    .line 570
    nop

    #@3c6
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public dispose()V
    .locals 2

    #@0
    .prologue
    .line 656
    const-string/jumbo v0, "[dispose]"

    #@3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    #@6
    .line 657
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    #@8
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sReceiver:Landroid/content/BroadcastReceiver;

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@d
    .line 655
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 665
    const-string/jumbo v0, "SubscriptionInfoUpdater:"

    #@3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 666
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    #@8
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@b
    .line 664
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 250
    iget v6, p1, Landroid/os/Message;->what:I

    #@4
    packed-switch v6, :pswitch_data_0

    #@7
    .line 315
    new-instance v6, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v7, "Unknown msg:"

    #@f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v6

    #@13
    iget v7, p1, Landroid/os/Message;->what:I

    #@15
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v6

    #@19
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v6

    #@1d
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    #@20
    .line 249
    :cond_0
    :goto_0
    return-void

    #@21
    .line 252
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@23
    check-cast v0, Landroid/os/AsyncResult;

    #@25
    .line 253
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@27
    check-cast v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    #@29
    .line 254
    .local v5, "uObj":Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;
    iget v3, v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->slotId:I

    #@2b
    .line 255
    .local v3, "slotId":I
    new-instance v6, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v7, "handleMessage : <EVENT_SIM_LOCKED_QUERY_ICCID_DONE> SIM"

    #@33
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v6

    #@37
    add-int/lit8 v7, v3, 0x1

    #@39
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v6

    #@3d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v6

    #@41
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    #@44
    .line 256
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@46
    if-nez v6, :cond_3

    #@48
    .line 257
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@4a
    if-eqz v6, :cond_2

    #@4c
    .line 258
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@4e
    check-cast v1, [B

    #@50
    .line 259
    .local v1, "data":[B
    sget-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    #@52
    array-length v7, v1

    #@53
    invoke-static {v1, v9, v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    #@56
    move-result-object v7

    #@57
    aput-object v7, v6, v3

    #@59
    .line 268
    .end local v1    # "data":[B
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v7, "sIccId["

    #@61
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v6

    #@65
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@68
    move-result-object v6

    #@69
    const-string/jumbo v7, "] = "

    #@6c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v6

    #@70
    sget-object v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    #@72
    aget-object v7, v7, v3

    #@74
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v6

    #@78
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v6

    #@7c
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    #@7f
    .line 269
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    #@82
    move-result v6

    #@83
    if-eqz v6, :cond_1

    #@85
    .line 270
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    #@88
    .line 272
    :cond_1
    const-string/jumbo v6, "LOCKED"

    #@8b
    .line 273
    iget-object v7, v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->reason:Ljava/lang/String;

    #@8d
    .line 272
    invoke-direct {p0, v3, v6, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    #@90
    .line 274
    const-string/jumbo v6, ""

    #@93
    sget-object v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    #@95
    aget-object v7, v7, v3

    #@97
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9a
    move-result v6

    #@9b
    if-nez v6, :cond_0

    #@9d
    .line 275
    const-string/jumbo v6, "LOCKED"

    #@a0
    invoke-direct {p0, v3, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    #@a3
    goto/16 :goto_0

    #@a5
    .line 261
    :cond_2
    const-string/jumbo v6, "Null ar"

    #@a8
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    #@ab
    .line 262
    sget-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    #@ad
    const-string/jumbo v7, ""

    #@b0
    aput-object v7, v6, v3

    #@b2
    goto :goto_1

    #@b3
    .line 265
    :cond_3
    sget-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    #@b5
    const-string/jumbo v7, ""

    #@b8
    aput-object v7, v6, v3

    #@ba
    .line 266
    new-instance v6, Ljava/lang/StringBuilder;

    #@bc
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@bf
    const-string/jumbo v7, "Query IccId fail: "

    #@c2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v6

    #@c6
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@c8
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v6

    #@cc
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cf
    move-result-object v6

    #@d0
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    #@d3
    goto :goto_1

    #@d4
    .line 281
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "slotId":I
    .end local v5    # "uObj":Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d6
    check-cast v0, Landroid/os/AsyncResult;

    #@d8
    .line 282
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@da
    check-cast v4, Ljava/lang/Integer;

    #@dc
    .line 283
    .local v4, "slotId":Ljava/lang/Integer;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@de
    if-nez v6, :cond_4

    #@e0
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@e2
    if-eqz v6, :cond_4

    #@e4
    .line 284
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@e6
    check-cast v2, [I

    #@e8
    .line 285
    .local v2, "modes":[I
    aget v6, v2, v9

    #@ea
    const/4 v7, 0x1

    #@eb
    if-ne v6, v7, :cond_0

    #@ed
    .line 286
    sget-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    #@ef
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@f2
    move-result v7

    #@f3
    aget-object v6, v6, v7

    #@f5
    invoke-interface {v6, v8}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    #@f8
    goto/16 :goto_0

    #@fa
    .line 289
    .end local v2    # "modes":[I
    :cond_4
    const-string/jumbo v6, "EVENT_GET_NETWORK_SELECTION_MODE_DONE: error getting network mode."

    #@fd
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    #@100
    goto/16 :goto_0

    #@102
    .line 295
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "slotId":Ljava/lang/Integer;
    :pswitch_2
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@104
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimLoaded(I)V

    #@107
    goto/16 :goto_0

    #@109
    .line 299
    :pswitch_3
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@10b
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimAbsent(I)V

    #@10e
    goto/16 :goto_0

    #@110
    .line 303
    :pswitch_4
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@112
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@114
    check-cast v6, Ljava/lang/String;

    #@116
    invoke-direct {p0, v7, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimLocked(ILjava/lang/String;)V

    #@119
    goto/16 :goto_0

    #@11b
    .line 307
    :pswitch_5
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@11d
    const-string/jumbo v7, "UNKNOWN"

    #@120
    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    #@123
    goto/16 :goto_0

    #@125
    .line 311
    :pswitch_6
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@127
    const-string/jumbo v7, "CARD_IO_ERROR"

    #@12a
    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    #@12d
    goto/16 :goto_0

    #@12f
    .line 250
    nop

    #@130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public setDisplayNameForNewSub(Ljava/lang/String;II)V
    .locals 8
    .param p1, "newSubName"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "newNameSource"    # I

    #@0
    .prologue
    .line 227
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    #@2
    invoke-virtual {v3, p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    #@5
    move-result-object v2

    #@6
    .line 228
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_3

    #@8
    .line 230
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    #@b
    move-result v0

    #@c
    .line 231
    .local v0, "oldNameSource":I
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    #@f
    move-result-object v1

    #@10
    .line 232
    .local v1, "oldSubName":Ljava/lang/CharSequence;
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "[setDisplayNameForNewSub] subId = "

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    #@1f
    move-result v4

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    .line 233
    const-string/jumbo v4, ", oldSimName = "

    #@27
    .line 232
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    .line 233
    const-string/jumbo v4, ", oldNameSource = "

    #@32
    .line 232
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    .line 234
    const-string/jumbo v4, ", newSubName = "

    #@3d
    .line 232
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    .line 234
    const-string/jumbo v4, ", newNameSource = "

    #@48
    .line 232
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    #@57
    .line 235
    if-eqz v1, :cond_0

    #@59
    .line 236
    if-nez v0, :cond_2

    #@5b
    .line 237
    if-eqz p1, :cond_2

    #@5d
    .line 240
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    #@5f
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    #@62
    move-result v4

    #@63
    .line 241
    int-to-long v6, p3

    #@64
    .line 240
    invoke-virtual {v3, p1, v4, v6, v7}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;IJ)I

    #@67
    .line 226
    .end local v0    # "oldNameSource":I
    .end local v1    # "oldSubName":Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    return-void

    #@68
    .line 238
    .restart local v0    # "oldNameSource":I
    .restart local v1    # "oldSubName":Ljava/lang/CharSequence;
    :cond_2
    const/4 v3, 0x1

    #@69
    if-ne v0, v3, :cond_1

    #@6b
    if-eqz p1, :cond_1

    #@6d
    .line 239
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@70
    move-result v3

    #@71
    if-eqz v3, :cond_0

    #@73
    goto :goto_0

    #@74
    .line 244
    .end local v0    # "oldNameSource":I
    .end local v1    # "oldSubName":Ljava/lang/CharSequence;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v4, "SUB"

    #@7c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v3

    #@80
    add-int/lit8 v4, p2, 0x1

    #@82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@85
    move-result-object v3

    #@86
    const-string/jumbo v4, " SubInfo not created yet"

    #@89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v3

    #@8d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v3

    #@91
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    #@94
    goto :goto_0
.end method
