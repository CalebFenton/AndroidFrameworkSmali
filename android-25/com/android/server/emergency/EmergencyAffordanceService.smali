.class public Lcom/android/server/emergency/EmergencyAffordanceService;
.super Lcom/android/server/SystemService;
.source "EmergencyAffordanceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/emergency/EmergencyAffordanceService$1;,
        Lcom/android/server/emergency/EmergencyAffordanceService$2;,
        Lcom/android/server/emergency/EmergencyAffordanceService$3;,
        Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;
    }
.end annotation


# static fields
.field private static final CELL_INFO_STATE_CHANGED:I = 0x2

.field private static final EMERGENCY_SIM_INSERTED_SETTING:Ljava/lang/String; = "emergency_sim_inserted_before"

.field private static final INITIALIZE_STATE:I = 0x1

.field private static final NUM_SCANS_UNTIL_ABORT:I = 0x4

.field private static final SUBSCRIPTION_CHANGED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EmergencyAffordanceService"


# instance fields
.field private mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mEmergencyAffordanceNeeded:Z

.field private final mEmergencyCallMccNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

.field private final mLock:Ljava/lang/Object;

.field private mNetworkNeedsEmergencyAffordance:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mScansCompleted:I

.field private mSimNeedsEmergencyAffordance:Z

.field private mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/emergency/EmergencyAffordanceService;)Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/emergency/EmergencyAffordanceService;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateCellInfo()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/emergency/EmergencyAffordanceService;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateSimSubscriptionInfo()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/emergency/EmergencyAffordanceService;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->isEmergencyAffordanceNeeded()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/emergency/EmergencyAffordanceService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleInitializeState()V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/emergency/EmergencyAffordanceService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->requestCellScan()V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/emergency/EmergencyAffordanceService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->startScanning()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 68
    new-instance v2, Ljava/lang/Object;

    #@5
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mLock:Ljava/lang/Object;

    #@a
    .line 75
    new-instance v2, Lcom/android/server/emergency/EmergencyAffordanceService$1;

    #@c
    invoke-direct {v2, p0}, Lcom/android/server/emergency/EmergencyAffordanceService$1;-><init>(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    #@f
    iput-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    #@11
    .line 90
    new-instance v2, Lcom/android/server/emergency/EmergencyAffordanceService$2;

    #@13
    invoke-direct {v2, p0}, Lcom/android/server/emergency/EmergencyAffordanceService$2;-><init>(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    #@16
    iput-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    #@18
    .line 108
    new-instance v2, Lcom/android/server/emergency/EmergencyAffordanceService$3;

    #@1a
    invoke-direct {v2, p0}, Lcom/android/server/emergency/EmergencyAffordanceService$3;-><init>(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    #@1d
    .line 107
    iput-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    #@1f
    .line 117
    iput-object p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    #@21
    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@24
    move-result-object v2

    #@25
    .line 119
    const v3, 0x107004a

    #@28
    .line 118
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    #@2b
    move-result-object v1

    #@2c
    .line 120
    .local v1, "numbers":[I
    new-instance v2, Ljava/util/ArrayList;

    #@2e
    array-length v3, v1

    #@2f
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@32
    iput-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallMccNumbers:Ljava/util/ArrayList;

    #@34
    .line 121
    const/4 v0, 0x0

    #@35
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@36
    if-ge v0, v2, :cond_0

    #@38
    .line 122
    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallMccNumbers:Ljava/util/ArrayList;

    #@3a
    aget v3, v1, v0

    #@3c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@43
    .line 121
    add-int/lit8 v0, v0, 0x1

    #@45
    goto :goto_0

    #@46
    .line 115
    :cond_0
    return-void
.end method

.method private handleInitializeState()V
    .locals 1

    #@0
    .prologue
    .line 201
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateSimSubscriptionInfo()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 202
    return-void

    #@7
    .line 204
    :cond_0
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateCellInfo()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 205
    return-void

    #@e
    .line 207
    :cond_1
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V

    #@11
    .line 200
    return-void
.end method

.method private handleUpdateCellInfo()Z
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 262
    iget-object v5, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@4
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    #@7
    move-result-object v2

    #@8
    .line 263
    .local v2, "cellInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-nez v2, :cond_0

    #@a
    .line 264
    return v6

    #@b
    .line 266
    :cond_0
    const/4 v4, 0x0

    #@c
    .line 267
    .local v4, "stopScanningAfterScan":Z
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    .local v1, "cellInfo$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v5

    #@14
    if-eqz v5, :cond_6

    #@16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/telephony/CellInfo;

    #@1c
    .line 268
    .local v0, "cellInfo":Landroid/telephony/CellInfo;
    const/4 v3, 0x0

    #@1d
    .line 269
    .local v3, "mcc":I
    instance-of v5, v0, Landroid/telephony/CellInfoGsm;

    #@1f
    if-eqz v5, :cond_3

    #@21
    .line 270
    check-cast v0, Landroid/telephony/CellInfoGsm;

    #@23
    .end local v0    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v0}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    #@2a
    move-result v3

    #@2b
    .line 276
    :cond_2
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/server/emergency/EmergencyAffordanceService;->mccRequiresEmergencyAffordance(I)Z

    #@2e
    move-result v5

    #@2f
    if-eqz v5, :cond_5

    #@31
    .line 277
    invoke-direct {p0, v7}, Lcom/android/server/emergency/EmergencyAffordanceService;->setNetworkNeedsEmergencyAffordance(Z)V

    #@34
    .line 278
    return v7

    #@35
    .line 271
    .restart local v0    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_3
    instance-of v5, v0, Landroid/telephony/CellInfoLte;

    #@37
    if-eqz v5, :cond_4

    #@39
    .line 272
    check-cast v0, Landroid/telephony/CellInfoLte;

    #@3b
    .end local v0    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getMcc()I

    #@42
    move-result v3

    #@43
    goto :goto_1

    #@44
    .line 273
    .restart local v0    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_4
    instance-of v5, v0, Landroid/telephony/CellInfoWcdma;

    #@46
    if-eqz v5, :cond_2

    #@48
    .line 274
    check-cast v0, Landroid/telephony/CellInfoWcdma;

    #@4a
    .end local v0    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v0}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    #@4d
    move-result-object v5

    #@4e
    invoke-virtual {v5}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    #@51
    move-result v3

    #@52
    goto :goto_1

    #@53
    .line 279
    :cond_5
    if-eqz v3, :cond_1

    #@55
    const v5, 0x7fffffff

    #@58
    if-eq v3, v5, :cond_1

    #@5a
    .line 281
    const/4 v4, 0x1

    #@5b
    goto :goto_0

    #@5c
    .line 284
    .end local v3    # "mcc":I
    :cond_6
    if-eqz v4, :cond_7

    #@5e
    .line 285
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->stopScanning()V

    #@61
    .line 289
    :goto_2
    invoke-direct {p0, v6}, Lcom/android/server/emergency/EmergencyAffordanceService;->setNetworkNeedsEmergencyAffordance(Z)V

    #@64
    .line 290
    return v6

    #@65
    .line 287
    :cond_7
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->onCellScanFinishedUnsuccessful()V

    #@68
    goto :goto_2
.end method

.method private handleUpdateSimSubscriptionInfo()Z
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x3

    #@1
    const/4 v9, 0x0

    #@2
    .line 211
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->simNeededAffordanceBefore()Z

    #@5
    move-result v4

    #@6
    .line 212
    .local v4, "neededBefore":Z
    move v5, v4

    #@7
    .line 214
    .local v5, "neededNow":Z
    iget-object v7, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    #@9
    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    #@c
    move-result-object v0

    #@d
    .line 215
    .local v0, "activeSubscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v0, :cond_0

    #@f
    .line 216
    return v4

    #@10
    .line 218
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v2

    #@14
    .end local v5    # "neededNow":Z
    .local v2, "info$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v7

    #@18
    if-eqz v7, :cond_2

    #@1a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Landroid/telephony/SubscriptionInfo;

    #@20
    .line 219
    .local v1, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    #@23
    move-result v3

    #@24
    .line 220
    .local v3, "mcc":I
    invoke-direct {p0, v3}, Lcom/android/server/emergency/EmergencyAffordanceService;->mccRequiresEmergencyAffordance(I)Z

    #@27
    move-result v7

    #@28
    if-eqz v7, :cond_4

    #@2a
    .line 221
    const/4 v5, 0x1

    #@2b
    .line 242
    .end local v1    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v3    # "mcc":I
    :cond_2
    :goto_1
    if-eq v5, v4, :cond_3

    #@2d
    .line 243
    invoke-direct {p0, v5}, Lcom/android/server/emergency/EmergencyAffordanceService;->setSimNeedsEmergencyAffordance(Z)V

    #@30
    .line 245
    :cond_3
    return v5

    #@31
    .line 223
    .restart local v1    # "info":Landroid/telephony/SubscriptionInfo;
    .restart local v3    # "mcc":I
    :cond_4
    if-eqz v3, :cond_5

    #@33
    const v7, 0x7fffffff

    #@36
    if-eq v3, v7, :cond_5

    #@38
    .line 225
    const/4 v5, 0x0

    #@39
    .line 227
    :cond_5
    iget-object v7, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@3b
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    #@3e
    move-result v8

    #@3f
    invoke-virtual {v7, v8}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    #@42
    move-result-object v6

    #@43
    .line 228
    .local v6, "simOperator":Ljava/lang/String;
    const/4 v3, 0x0

    #@44
    .line 229
    if-eqz v6, :cond_6

    #@46
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@49
    move-result v7

    #@4a
    if-lt v7, v10, :cond_6

    #@4c
    .line 230
    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4f
    move-result-object v7

    #@50
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@53
    move-result v3

    #@54
    .line 232
    :cond_6
    if-eqz v3, :cond_1

    #@56
    .line 233
    invoke-direct {p0, v3}, Lcom/android/server/emergency/EmergencyAffordanceService;->mccRequiresEmergencyAffordance(I)Z

    #@59
    move-result v7

    #@5a
    if-eqz v7, :cond_7

    #@5c
    .line 234
    const/4 v5, 0x1

    #@5d
    .line 235
    .local v5, "neededNow":Z
    goto :goto_1

    #@5e
    .line 238
    .end local v5    # "neededNow":Z
    :cond_7
    const/4 v5, 0x0

    #@5f
    .restart local v5    # "neededNow":Z
    goto :goto_0
.end method

.method private isEmergencyAffordanceNeeded()Z
    .locals 2

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 148
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyAffordanceNeeded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 147
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method private mccRequiresEmergencyAffordance(I)Z
    .locals 2
    .param p1, "mcc"    # I

    #@0
    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallMccNumbers:Ljava/util/ArrayList;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method private onCellScanFinishedUnsuccessful()V
    .locals 3

    #@0
    .prologue
    .line 301
    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 302
    :try_start_0
    iget v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mScansCompleted:I

    #@5
    add-int/lit8 v0, v0, 0x1

    #@7
    iput v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mScansCompleted:I

    #@9
    .line 303
    iget v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mScansCompleted:I

    #@b
    const/4 v2, 0x4

    #@c
    if-lt v0, v2, :cond_0

    #@e
    .line 304
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->stopScanning()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit v1

    #@12
    .line 300
    return-void

    #@13
    .line 301
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method private requestCellScan()V
    .locals 2

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-virtual {v0, v1}, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->obtainMessage(I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@a
    .line 103
    return-void
.end method

.method private setNetworkNeedsEmergencyAffordance(Z)V
    .locals 2
    .param p1, "needsAffordance"    # Z

    #@0
    .prologue
    .line 294
    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 295
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mNetworkNeedsEmergencyAffordance:Z

    #@5
    .line 296
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 293
    return-void

    #@a
    .line 294
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method private setSimNeedsEmergencyAffordance(Z)V
    .locals 3
    .param p1, "simNeedsEmergencyAffordance"    # Z

    #@0
    .prologue
    .line 249
    iput-boolean p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSimNeedsEmergencyAffordance:Z

    #@2
    .line 250
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v1

    #@8
    .line 251
    const-string/jumbo v2, "emergency_sim_inserted_before"

    #@b
    .line 252
    if-eqz p1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    .line 250
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@11
    .line 253
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V

    #@14
    .line 248
    return-void

    #@15
    .line 252
    :cond_0
    const/4 v0, 0x0

    #@16
    goto :goto_0
.end method

.method private simNeededAffordanceBefore()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 257
    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v1

    #@7
    .line 258
    const-string/jumbo v2, "emergency_sim_inserted_before"

    #@a
    .line 257
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    :cond_0
    return v0
.end method

.method private startScanning()V
    .locals 3

    #@0
    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@2
    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    #@4
    const/16 v2, 0x410

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    #@9
    .line 172
    return-void
.end method

.method private stopScanning()V
    .locals 4

    #@0
    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@5
    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    #@7
    const/4 v3, 0x0

    #@8
    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    #@b
    .line 142
    const/4 v0, 0x0

    #@c
    iput v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mScansCompleted:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v1

    #@f
    .line 139
    return-void

    #@10
    .line 140
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method private updateEmergencyAffordanceNeeded()V
    .locals 5

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 127
    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 128
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSimNeedsEmergencyAffordance:Z

    #@6
    if-nez v1, :cond_1

    #@8
    .line 129
    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mNetworkNeedsEmergencyAffordance:Z

    #@a
    .line 128
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyAffordanceNeeded:Z

    #@c
    .line 130
    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    #@e
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@11
    move-result-object v1

    #@12
    .line 131
    const-string/jumbo v3, "emergency_affordance_needed"

    #@15
    .line 132
    iget-boolean v4, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyAffordanceNeeded:Z

    #@17
    if-eqz v4, :cond_2

    #@19
    .line 130
    :goto_1
    invoke-static {v1, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@1c
    .line 133
    iget-boolean v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyAffordanceNeeded:Z

    #@1e
    if-eqz v0, :cond_0

    #@20
    .line 134
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->stopScanning()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    :cond_0
    monitor-exit v2

    #@24
    .line 126
    return-void

    #@25
    :cond_1
    move v1, v0

    #@26
    .line 128
    goto :goto_0

    #@27
    .line 132
    :cond_2
    const/4 v0, 0x0

    #@28
    goto :goto_1

    #@29
    .line 127
    :catchall_0
    move-exception v0

    #@2a
    monitor-exit v2

    #@2b
    throw v0
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 4
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 158
    const/16 v2, 0x258

    #@2
    if-ne p1, v2, :cond_0

    #@4
    .line 159
    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    #@6
    const-class v3, Landroid/telephony/TelephonyManager;

    #@8
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Landroid/telephony/TelephonyManager;

    #@e
    iput-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@10
    .line 160
    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    #@12
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    #@15
    move-result-object v2

    #@16
    iput-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    #@18
    .line 161
    new-instance v1, Landroid/os/HandlerThread;

    #@1a
    const-string/jumbo v2, "EmergencyAffordanceService"

    #@1d
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@20
    .line 162
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    #@23
    .line 163
    new-instance v2, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    #@25
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@28
    move-result-object v3

    #@29
    invoke-direct {v2, p0, v3}, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;-><init>(Lcom/android/server/emergency/EmergencyAffordanceService;Landroid/os/Looper;)V

    #@2c
    iput-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    #@2e
    .line 164
    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    #@30
    const/4 v3, 0x1

    #@31
    invoke-virtual {v2, v3}, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->obtainMessage(I)Landroid/os/Message;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@38
    .line 165
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->startScanning()V

    #@3b
    .line 166
    new-instance v0, Landroid/content/IntentFilter;

    #@3d
    const-string/jumbo v2, "android.intent.action.AIRPLANE_MODE"

    #@40
    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@43
    .line 167
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    #@45
    iget-object v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    #@47
    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@4a
    .line 168
    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    #@4c
    iget-object v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    #@4e
    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    #@51
    .line 157
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "thread":Landroid/os/HandlerThread;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    #@0
    .prologue
    .line 153
    return-void
.end method
