.class public Lcom/android/internal/telephony/SubscriptionController;
.super Lcom/android/internal/telephony/ISub$Stub;
.source "SubscriptionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "SubscriptionController"

.field static final MAX_LOCAL_LOG_LINES:I = 0x1f4

.field static final VDBG:Z

.field private static mDefaultFallbackSubId:I

.field private static mDefaultPhoneId:I

.field private static sInstance:Lcom/android/internal/telephony/SubscriptionController;

.field protected static sPhones:[Lcom/android/internal/telephony/Phone;

.field private static sSlotIdxToSubId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private colorArr:[I

.field private mAppOps:Landroid/app/AppOpsManager;

.field protected mCM:Lcom/android/internal/telephony/CallManager;

.field protected mContext:Landroid/content/Context;

.field private mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

.field protected final mLock:Ljava/lang/Object;

.field protected mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 122
    const/4 v0, 0x0

    #@1
    sput-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    #@3
    .line 132
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@8
    .line 131
    sput-object v0, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    #@a
    .line 133
    const/4 v0, -0x1

    #@b
    sput v0, Lcom/android/internal/telephony/SubscriptionController;->mDefaultFallbackSubId:I

    #@d
    .line 134
    const v0, 0x7fffffff

    #@10
    sput v0, Lcom/android/internal/telephony/SubscriptionController;->mDefaultPhoneId:I

    #@12
    .line 74
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    #@0
    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/internal/telephony/ISub$Stub;-><init>()V

    #@3
    .line 79
    new-instance v0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    #@5
    const/16 v1, 0x1f4

    #@7
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;-><init>(I)V

    #@a
    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    #@c
    .line 119
    new-instance v0, Ljava/lang/Object;

    #@e
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLock:Ljava/lang/Object;

    #@13
    .line 170
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->init(Landroid/content/Context;)V

    #@16
    .line 169
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 191
    invoke-direct {p0}, Lcom/android/internal/telephony/ISub$Stub;-><init>()V

    #@3
    .line 79
    new-instance v0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    #@5
    const/16 v1, 0x1f4

    #@7
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;-><init>(I)V

    #@a
    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    #@c
    .line 119
    new-instance v0, Ljava/lang/Object;

    #@e
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLock:Ljava/lang/Object;

    #@13
    .line 192
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@19
    .line 193
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mCM:Lcom/android/internal/telephony/CallManager;

    #@1f
    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@21
    const-class v1, Landroid/app/AppOpsManager;

    #@23
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Landroid/app/AppOpsManager;

    #@29
    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mAppOps:Landroid/app/AppOpsManager;

    #@2b
    .line 196
    const-string/jumbo v0, "isub"

    #@2e
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@31
    move-result-object v0

    #@32
    if-nez v0, :cond_0

    #@34
    .line 197
    const-string/jumbo v0, "isub"

    #@37
    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@3a
    .line 200
    :cond_0
    const-string/jumbo v0, "[SubscriptionController] init by Phone"

    #@3d
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@40
    .line 191
    return-void
.end method

.method private broadcastDefaultDataSubIdChanged(I)V
    .locals 3
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 1462
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "[broadcastDefaultDataSubIdChanged] subId="

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@17
    .line 1463
    new-instance v0, Landroid/content/Intent;

    #@19
    const-string/jumbo v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    #@1c
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1f
    .line 1464
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    #@21
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@24
    .line 1465
    const-string/jumbo v1, "subscription"

    #@27
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@2a
    .line 1466
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@2c
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@2e
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@31
    .line 1460
    return-void
.end method

.method private broadcastDefaultSmsSubIdChanged(I)V
    .locals 3
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 1348
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "[broadcastDefaultSmsSubIdChanged] subId="

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@17
    .line 1349
    new-instance v0, Landroid/content/Intent;

    #@19
    const-string/jumbo v1, "android.intent.action.ACTION_DEFAULT_SMS_SUBSCRIPTION_CHANGED"

    #@1c
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1f
    .line 1350
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    #@21
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@24
    .line 1351
    const-string/jumbo v1, "subscription"

    #@27
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@2a
    .line 1352
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@2c
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@2e
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@31
    .line 1346
    return-void
.end method

.method private broadcastDefaultVoiceSubIdChanged(I)V
    .locals 3
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 1379
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "[broadcastDefaultVoiceSubIdChanged] subId="

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@17
    .line 1380
    new-instance v0, Landroid/content/Intent;

    #@19
    const-string/jumbo v1, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    #@1c
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1f
    .line 1381
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    #@21
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@24
    .line 1382
    const-string/jumbo v1, "subscription"

    #@27
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@2a
    .line 1383
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@2c
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@2e
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@31
    .line 1377
    return-void
.end method

.method private broadcastSimInfoContentChanged()V
    .locals 2

    #@0
    .prologue
    .line 239
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 240
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@a
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    #@d
    .line 241
    new-instance v0, Landroid/content/Intent;

    #@f
    .end local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    #@12
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@15
    .line 242
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@17
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    #@1a
    .line 238
    return-void
.end method

.method private canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 215
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@4
    .line 216
    const-string/jumbo v4, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    #@7
    .line 215
    invoke-virtual {v3, v4, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 219
    return v1

    #@b
    .line 220
    :catch_0
    move-exception v0

    #@c
    .line 221
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@e
    const-string/jumbo v4, "android.permission.READ_PHONE_STATE"

    #@11
    invoke-virtual {v3, v4, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 225
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mAppOps:Landroid/app/AppOpsManager;

    #@16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@19
    move-result v4

    #@1a
    const/16 v5, 0x33

    #@1c
    invoke-virtual {v3, v5, v4, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@1f
    move-result v3

    #@20
    if-nez v3, :cond_0

    #@22
    :goto_0
    return v1

    #@23
    :cond_0
    move v1, v2

    #@24
    goto :goto_0
.end method

.method private enforceModifyPhoneState(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@2
    .line 231
    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    #@5
    .line 230
    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 229
    return-void
.end method

.method private getDummySubIds(I)[I
    .locals 4
    .param p1, "slotIdx"    # I

    #@0
    .prologue
    .line 1241
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubInfoCountMax()I

    #@3
    move-result v2

    #@4
    .line 1242
    .local v2, "numSubs":I
    if-lez v2, :cond_1

    #@6
    .line 1243
    new-array v0, v2, [I

    #@8
    .line 1244
    .local v0, "dummyValues":[I
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@b
    .line 1245
    rsub-int/lit8 v3, p1, -0x2

    #@d
    aput v3, v0, v1

    #@f
    .line 1244
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1251
    :cond_0
    return-object v0

    #@13
    .line 1253
    .end local v0    # "dummyValues":[I
    .end local v1    # "i":I
    :cond_1
    const/4 v3, 0x0

    #@14
    return-object v3
.end method

.method public static getInstance()Lcom/android/internal/telephony/SubscriptionController;
    .locals 2

    #@0
    .prologue
    .line 161
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 163
    const-string/jumbo v0, "SubscriptionController"

    #@7
    const-string/jumbo v1, "getInstance null"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 166
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    #@f
    return-object v0
.end method

.method private getSubInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;
    .locals 10
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "queryKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 332
    const/4 v4, 0x0

    #@2
    .line 333
    .local v4, "selectionArgs":[Ljava/lang/String;
    if-eqz p2, :cond_0

    #@4
    .line 334
    const/4 v0, 0x1

    #@5
    new-array v4, v0, [Ljava/lang/String;

    #@7
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    const/4 v1, 0x0

    #@c
    aput-object v0, v4, v1

    #@e
    .line 336
    :cond_0
    const/4 v8, 0x0

    #@f
    .line 337
    .local v8, "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@11
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@14
    move-result-object v0

    #@15
    sget-object v1, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    #@17
    move-object v3, p1

    #@18
    move-object v5, v2

    #@19
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@1c
    move-result-object v6

    #@1d
    .line 340
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    #@1f
    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :goto_0
    move-object v9, v8

    #@20
    .line 341
    .local v9, "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_6

    #@26
    .line 342
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoRecord(Landroid/database/Cursor;)Landroid/telephony/SubscriptionInfo;

    #@29
    move-result-object v7

    #@2a
    .line 343
    .local v7, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v7, :cond_5

    #@2c
    .line 345
    if-nez v9, :cond_4

    #@2e
    .line 347
    new-instance v8, Ljava/util/ArrayList;

    #@30
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@33
    .line 349
    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .local v8, "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :goto_1
    :try_start_1
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    goto :goto_0

    #@37
    .line 355
    .end local v7    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v0

    #@38
    .line 356
    :goto_2
    if-eqz v6, :cond_1

    #@3a
    .line 357
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@3d
    .line 355
    :cond_1
    throw v0

    #@3e
    .line 353
    .local v8, "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :cond_2
    :try_start_2
    const-string/jumbo v0, "Query fail"

    #@41
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@44
    .line 356
    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :goto_3
    if-eqz v6, :cond_3

    #@46
    .line 357
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@49
    .line 361
    :cond_3
    return-object v8

    #@4a
    .line 355
    .restart local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_1
    move-exception v0

    #@4b
    move-object v8, v9

    #@4c
    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .local v8, "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    goto :goto_2

    #@4d
    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v7    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .restart local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :cond_4
    move-object v8, v9

    #@4e
    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    goto :goto_1

    #@4f
    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :cond_5
    move-object v8, v9

    #@50
    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    goto :goto_0

    #@51
    .end local v7    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :cond_6
    move-object v8, v9

    #@52
    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    goto :goto_3
.end method

.method private getSubInfoRecord(Landroid/database/Cursor;)Landroid/telephony/SubscriptionInfo;
    .locals 17
    .param p1, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 266
    const-string/jumbo v1, "_id"

    #@3
    .line 265
    move-object/from16 v0, p1

    #@5
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@8
    move-result v1

    #@9
    move-object/from16 v0, p1

    #@b
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@e
    move-result v2

    #@f
    .line 268
    .local v2, "id":I
    const-string/jumbo v1, "icc_id"

    #@12
    .line 267
    move-object/from16 v0, p1

    #@14
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@17
    move-result v1

    #@18
    move-object/from16 v0, p1

    #@1a
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    .line 270
    .local v3, "iccId":Ljava/lang/String;
    const-string/jumbo v1, "sim_id"

    #@21
    .line 269
    move-object/from16 v0, p1

    #@23
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@26
    move-result v1

    #@27
    move-object/from16 v0, p1

    #@29
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@2c
    move-result v4

    #@2d
    .line 272
    .local v4, "simSlotIndex":I
    const-string/jumbo v1, "display_name"

    #@30
    .line 271
    move-object/from16 v0, p1

    #@32
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@35
    move-result v1

    #@36
    move-object/from16 v0, p1

    #@38
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@3b
    move-result-object v5

    #@3c
    .line 274
    .local v5, "displayName":Ljava/lang/String;
    const-string/jumbo v1, "carrier_name"

    #@3f
    .line 273
    move-object/from16 v0, p1

    #@41
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@44
    move-result v1

    #@45
    move-object/from16 v0, p1

    #@47
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@4a
    move-result-object v6

    #@4b
    .line 276
    .local v6, "carrierName":Ljava/lang/String;
    const-string/jumbo v1, "name_source"

    #@4e
    .line 275
    move-object/from16 v0, p1

    #@50
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@53
    move-result v1

    #@54
    move-object/from16 v0, p1

    #@56
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@59
    move-result v7

    #@5a
    .line 278
    .local v7, "nameSource":I
    const-string/jumbo v1, "color"

    #@5d
    .line 277
    move-object/from16 v0, p1

    #@5f
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@62
    move-result v1

    #@63
    move-object/from16 v0, p1

    #@65
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@68
    move-result v8

    #@69
    .line 280
    .local v8, "iconTint":I
    const-string/jumbo v1, "number"

    #@6c
    .line 279
    move-object/from16 v0, p1

    #@6e
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@71
    move-result v1

    #@72
    move-object/from16 v0, p1

    #@74
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@77
    move-result-object v9

    #@78
    .line 282
    .local v9, "number":Ljava/lang/String;
    const-string/jumbo v1, "data_roaming"

    #@7b
    .line 281
    move-object/from16 v0, p1

    #@7d
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@80
    move-result v1

    #@81
    move-object/from16 v0, p1

    #@83
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@86
    move-result v10

    #@87
    .line 284
    .local v10, "dataRoaming":I
    move-object/from16 v0, p0

    #@89
    iget-object v1, v0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@8b
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@8e
    move-result-object v1

    #@8f
    .line 285
    const v16, 0x1080439

    #@92
    .line 284
    move/from16 v0, v16

    #@94
    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    #@97
    move-result-object v11

    #@98
    .line 287
    .local v11, "iconBitmap":Landroid/graphics/Bitmap;
    const-string/jumbo v1, "mcc"

    #@9b
    .line 286
    move-object/from16 v0, p1

    #@9d
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@a0
    move-result v1

    #@a1
    move-object/from16 v0, p1

    #@a3
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@a6
    move-result v12

    #@a7
    .line 289
    .local v12, "mcc":I
    const-string/jumbo v1, "mnc"

    #@aa
    .line 288
    move-object/from16 v0, p1

    #@ac
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@af
    move-result v1

    #@b0
    move-object/from16 v0, p1

    #@b2
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@b5
    move-result v13

    #@b6
    .line 291
    .local v13, "mnc":I
    move-object/from16 v0, p0

    #@b8
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubscriptionCountryIso(I)Ljava/lang/String;

    #@bb
    move-result-object v14

    #@bc
    .line 302
    .local v14, "countryIso":Ljava/lang/String;
    move-object/from16 v0, p0

    #@be
    iget-object v1, v0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@c0
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    #@c3
    move-result-object v15

    #@c4
    .line 303
    .local v15, "line1Number":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@c7
    move-result v1

    #@c8
    if-nez v1, :cond_0

    #@ca
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cd
    move-result v1

    #@ce
    if-eqz v1, :cond_1

    #@d0
    .line 306
    :cond_0
    :goto_0
    new-instance v1, Landroid/telephony/SubscriptionInfo;

    #@d2
    invoke-direct/range {v1 .. v14}, Landroid/telephony/SubscriptionInfo;-><init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;IILjava/lang/String;)V

    #@d5
    return-object v1

    #@d6
    .line 304
    :cond_1
    move-object v9, v15

    #@d7
    goto :goto_0
.end method

.method private getSubscriptionCountryIso(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 317
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    #@3
    move-result v0

    #@4
    .line 318
    .local v0, "phoneId":I
    if-gez v0, :cond_0

    #@6
    .line 319
    const-string/jumbo v1, ""

    #@9
    return-object v1

    #@a
    .line 321
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@c
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method private getUnusedColor(Ljava/lang/String;)I
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 370
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 371
    .local v0, "availableSubInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@9
    move-result-object v4

    #@a
    const v5, 0x107000b

    #@d
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    #@10
    move-result-object v4

    #@11
    iput-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->colorArr:[I

    #@13
    .line 372
    const/4 v1, 0x0

    #@14
    .line 374
    .local v1, "colorIdx":I
    if-eqz v0, :cond_4

    #@16
    .line 375
    const/4 v2, 0x0

    #@17
    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->colorArr:[I

    #@19
    array-length v4, v4

    #@1a
    if-ge v2, v4, :cond_3

    #@1c
    .line 377
    const/4 v3, 0x0

    #@1d
    .local v3, "j":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@20
    move-result v4

    #@21
    if-ge v3, v4, :cond_0

    #@23
    .line 378
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->colorArr:[I

    #@25
    aget v5, v4, v2

    #@27
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v4

    #@2b
    check-cast v4, Landroid/telephony/SubscriptionInfo;

    #@2d
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    #@30
    move-result v4

    #@31
    if-ne v5, v4, :cond_1

    #@33
    .line 382
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@36
    move-result v4

    #@37
    if-ne v3, v4, :cond_2

    #@39
    .line 383
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->colorArr:[I

    #@3b
    aget v4, v4, v2

    #@3d
    return v4

    #@3e
    .line 377
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@40
    goto :goto_1

    #@41
    .line 375
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@43
    goto :goto_0

    #@44
    .line 386
    .end local v3    # "j":I
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@47
    move-result v4

    #@48
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController;->colorArr:[I

    #@4a
    array-length v5, v5

    #@4b
    rem-int v1, v4, v5

    #@4d
    .line 388
    .end local v2    # "i":I
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->colorArr:[I

    #@4f
    aget v4, v4, v1

    #@51
    return v4
.end method

.method public static init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionController;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    #@0
    .prologue
    .line 150
    const-class v1, Lcom/android/internal/telephony/SubscriptionController;

    #@2
    monitor-enter v1

    #@3
    .line 151
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 152
    new-instance v0, Lcom/android/internal/telephony/SubscriptionController;

    #@9
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SubscriptionController;-><init>(Landroid/content/Context;)V

    #@c
    sput-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    #@e
    .line 156
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 154
    :cond_0
    :try_start_1
    const-string/jumbo v0, "SubscriptionController"

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "init() called multiple times!  sInstance = "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    sget-object v3, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    .line 150
    :catchall_0
    move-exception v0

    #@30
    monitor-exit v1

    #@31
    throw v0
.end method

.method public static init(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/SubscriptionController;
    .locals 4
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 139
    const-class v1, Lcom/android/internal/telephony/SubscriptionController;

    #@2
    monitor-enter v1

    #@3
    .line 140
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 141
    new-instance v0, Lcom/android/internal/telephony/SubscriptionController;

    #@9
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SubscriptionController;-><init>(Lcom/android/internal/telephony/Phone;)V

    #@c
    sput-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    #@e
    .line 145
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 143
    :cond_0
    :try_start_1
    const-string/jumbo v0, "SubscriptionController"

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "init() called multiple times!  sInstance = "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    sget-object v3, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    .line 139
    :catchall_0
    move-exception v0

    #@30
    monitor-exit v1

    #@31
    throw v0
.end method

.method private isSubInfoReady()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 188
    sget-object v1, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    #@3
    invoke-interface {v1}, Ljava/util/Map;->size()I

    #@6
    move-result v1

    #@7
    if-lez v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1301
    const-string/jumbo v0, "SubscriptionController"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 1300
    return-void
.end method

.method private logdl(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1292
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@3
    .line 1293
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->log(Ljava/lang/String;)V

    #@8
    .line 1291
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1310
    const-string/jumbo v0, "SubscriptionController"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 1309
    return-void
.end method

.method private logel(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1305
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V

    #@3
    .line 1306
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->log(Ljava/lang/String;)V

    #@8
    .line 1304
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1288
    const-string/jumbo v0, "SubscriptionController"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 1287
    return-void
.end method

.method private logvl(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1283
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logv(Ljava/lang/String;)V

    #@3
    .line 1284
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->log(Ljava/lang/String;)V

    #@8
    .line 1282
    return-void
.end method

.method private static printStackTrace(Ljava/lang/String;)V
    .locals 7
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1797
    new-instance v1, Ljava/lang/RuntimeException;

    #@2
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    #@5
    .line 1798
    .local v1, "re":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v5, "StackTrace - "

    #@d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v4

    #@11
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v4

    #@15
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v4

    #@19
    invoke-static {v4}, Lcom/android/internal/telephony/SubscriptionController;->slogd(Ljava/lang/String;)V

    #@1c
    .line 1799
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@1f
    move-result-object v2

    #@20
    .line 1800
    .local v2, "st":[Ljava/lang/StackTraceElement;
    const/4 v0, 0x1

    #@21
    .line 1801
    .local v0, "first":Z
    const/4 v4, 0x0

    #@22
    array-length v5, v2

    #@23
    :goto_0
    if-ge v4, v5, :cond_1

    #@25
    aget-object v3, v2, v4

    #@27
    .line 1802
    .local v3, "ste":Ljava/lang/StackTraceElement;
    if-eqz v0, :cond_0

    #@29
    .line 1803
    const/4 v0, 0x0

    #@2a
    .line 1801
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 1805
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    #@30
    move-result-object v6

    #@31
    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionController;->slogd(Ljava/lang/String;)V

    #@34
    goto :goto_1

    #@35
    .line 1796
    .end local v3    # "ste":Ljava/lang/StackTraceElement;
    :cond_1
    return-void
.end method

.method private setCarrierText(Ljava/lang/String;I)I
    .locals 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "subId"    # I

    #@0
    .prologue
    .line 883
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v5, "[setCarrierText]+ text:"

    #@8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v4

    #@10
    const-string/jumbo v5, " subId:"

    #@13
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@22
    .line 885
    const-string/jumbo v4, "setCarrierText"

    #@25
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    #@28
    .line 888
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@2b
    move-result-wide v0

    #@2c
    .line 890
    .local v0, "identity":J
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    #@2e
    const/4 v4, 0x1

    #@2f
    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    #@32
    .line 891
    .local v3, "value":Landroid/content/ContentValues;
    const-string/jumbo v4, "carrier_name"

    #@35
    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@38
    .line 893
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@3a
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3d
    move-result-object v4

    #@3e
    sget-object v5, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    #@40
    .line 894
    new-instance v6, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v7, "_id="

    #@48
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v6

    #@4c
    .line 895
    int-to-long v8, p2

    #@4d
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@50
    move-result-object v7

    #@51
    .line 894
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v6

    #@55
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v6

    #@59
    .line 895
    const/4 v7, 0x0

    #@5a
    .line 893
    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@5d
    move-result v2

    #@5e
    .line 896
    .local v2, "result":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@61
    .line 900
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@64
    .line 898
    return v2

    #@65
    .line 899
    .end local v2    # "result":I
    .end local v3    # "value":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    #@66
    .line 900
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@69
    .line 899
    throw v4
.end method

.method private setDefaultFallbackSubId(I)V
    .locals 6
    .param p1, "subId"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1474
    const v3, 0x7fffffff

    #@4
    if-ne p1, v3, :cond_0

    #@6
    .line 1475
    new-instance v3, Ljava/lang/RuntimeException;

    #@8
    const-string/jumbo v4, "setDefaultSubId called with DEFAULT_SUB_ID"

    #@b
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 1477
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "[setDefaultFallbackSubId] subId="

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@26
    .line 1478
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_2

    #@2c
    .line 1479
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    #@2f
    move-result v2

    #@30
    .line 1480
    .local v2, "phoneId":I
    if-ltz v2, :cond_3

    #@32
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@34
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    #@37
    move-result v3

    #@38
    if-lt v2, v3, :cond_1

    #@3a
    .line 1481
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@3c
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCount()I

    #@3f
    move-result v3

    #@40
    const/4 v4, 0x1

    #@41
    if-ne v3, v4, :cond_3

    #@43
    .line 1482
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v4, "[setDefaultFallbackSubId] set mDefaultFallbackSubId="

    #@4b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v3

    #@57
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@5a
    .line 1483
    sput p1, Lcom/android/internal/telephony/SubscriptionController;->mDefaultFallbackSubId:I

    #@5c
    .line 1485
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@5e
    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    #@61
    move-result-object v0

    #@62
    .line 1486
    .local v0, "defaultMccMnc":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@64
    invoke-static {v3, v0, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    #@67
    .line 1489
    new-instance v1, Landroid/content/Intent;

    #@69
    const-string/jumbo v3, "android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    #@6c
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@6f
    .line 1490
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    #@71
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@74
    .line 1491
    invoke-static {v1, v2, p1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V

    #@77
    .line 1493
    new-instance v3, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v4, "[setDefaultFallbackSubId] broadcast default subId changed phoneId="

    #@7f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v3

    #@83
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@86
    move-result-object v3

    #@87
    .line 1494
    const-string/jumbo v4, " subId="

    #@8a
    .line 1493
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v3

    #@8e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@91
    move-result-object v3

    #@92
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v3

    #@96
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@99
    .line 1496
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@9b
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@9d
    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@a0
    .line 1473
    .end local v0    # "defaultMccMnc":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "phoneId":I
    :cond_2
    :goto_0
    return-void

    #@a1
    .line 1499
    .restart local v2    # "phoneId":I
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    #@a3
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a6
    const-string/jumbo v4, "[setDefaultFallbackSubId] not set invalid phoneId="

    #@a9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v3

    #@ad
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v3

    #@b1
    .line 1500
    const-string/jumbo v4, " subId="

    #@b4
    .line 1499
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v3

    #@b8
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v3

    #@bc
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v3

    #@c0
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@c3
    goto :goto_0
.end method

.method private shouldDefaultBeCleared(Ljava/util/List;I)Z
    .locals 7
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;I)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1534
    new-instance v3, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v4, "[shouldDefaultBeCleared: subId] "

    #@a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@19
    .line 1535
    if-nez p1, :cond_0

    #@1b
    .line 1536
    new-instance v3, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v4, "[shouldDefaultBeCleared] return true no records subId="

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@32
    .line 1537
    return v6

    #@33
    .line 1539
    :cond_0
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@36
    move-result v3

    #@37
    if-nez v3, :cond_1

    #@39
    .line 1541
    new-instance v3, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v4, "[shouldDefaultBeCleared] return false only one subId, subId="

    #@41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@50
    .line 1542
    return v5

    #@51
    .line 1544
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@54
    move-result-object v2

    #@55
    .local v2, "record$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@58
    move-result v3

    #@59
    if-eqz v3, :cond_3

    #@5b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5e
    move-result-object v1

    #@5f
    check-cast v1, Landroid/telephony/SubscriptionInfo;

    #@61
    .line 1545
    .local v1, "record":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    #@64
    move-result v0

    #@65
    .line 1546
    .local v0, "id":I
    new-instance v3, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v4, "[shouldDefaultBeCleared] Record.id: "

    #@6d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v3

    #@71
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@74
    move-result-object v3

    #@75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v3

    #@79
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@7c
    .line 1547
    if-ne v0, p2, :cond_2

    #@7e
    .line 1548
    new-instance v3, Ljava/lang/StringBuilder;

    #@80
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@83
    const-string/jumbo v4, "[shouldDefaultBeCleared] return false subId is active, subId="

    #@86
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v3

    #@8a
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v3

    #@8e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v3

    #@92
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@95
    .line 1549
    return v5

    #@96
    .line 1552
    .end local v0    # "id":I
    .end local v1    # "record":Landroid/telephony/SubscriptionInfo;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    const-string/jumbo v4, "[shouldDefaultBeCleared] return true not active subId="

    #@9e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v3

    #@a2
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v3

    #@a6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a9
    move-result-object v3

    #@aa
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@ad
    .line 1553
    return v6
.end method

.method private static slogd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1297
    const-string/jumbo v0, "SubscriptionController"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 1296
    return-void
.end method

.method private updateAllDataConnectionTrackers()V
    .locals 4

    #@0
    .prologue
    .line 1452
    sget-object v2, Lcom/android/internal/telephony/SubscriptionController;->sPhones:[Lcom/android/internal/telephony/Phone;

    #@2
    array-length v0, v2

    #@3
    .line 1453
    .local v0, "len":I
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "[updateAllDataConnectionTrackers] sPhones.length="

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@1a
    .line 1454
    const/4 v1, 0x0

    #@1b
    .local v1, "phoneId":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@1d
    .line 1455
    new-instance v2, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v3, "[updateAllDataConnectionTrackers] phoneId="

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@34
    .line 1456
    sget-object v2, Lcom/android/internal/telephony/SubscriptionController;->sPhones:[Lcom/android/internal/telephony/Phone;

    #@36
    aget-object v2, v2, v1

    #@38
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->updateDataConnectionTracker()V

    #@3b
    .line 1454
    add-int/lit8 v1, v1, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 1450
    :cond_0
    return-void
.end method

.method private validateSubId(I)V
    .locals 2
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 1624
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "validateSubId subId: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@17
    .line 1625
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@1a
    move-result v0

    #@1b
    if-nez v0, :cond_0

    #@1d
    .line 1626
    new-instance v0, Ljava/lang/RuntimeException;

    #@1f
    const-string/jumbo v1, "Invalid sub id passed as parameter"

    #@22
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 1627
    :cond_0
    const v0, 0x7fffffff

    #@29
    if-ne p1, v0, :cond_1

    #@2b
    .line 1628
    new-instance v0, Ljava/lang/RuntimeException;

    #@2d
    const-string/jumbo v1, "Default sub id passed as parameter"

    #@30
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 1623
    :cond_1
    return-void
.end method


# virtual methods
.method public addSubInfoRecord(Ljava/lang/String;I)I
    .locals 24
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    #@0
    .prologue
    .line 673
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v4, "[addSubInfoRecord]+ iccId:"

    #@8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v3

    #@c
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    .line 674
    const-string/jumbo v4, " slotId:"

    #@17
    .line 673
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    move/from16 v0, p2

    #@1d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    move-object/from16 v0, p0

    #@27
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@2a
    .line 676
    const-string/jumbo v3, "addSubInfoRecord"

    #@2d
    move-object/from16 v0, p0

    #@2f
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    #@32
    .line 679
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@35
    move-result-wide v12

    #@36
    .line 681
    .local v12, "identity":J
    if-nez p1, :cond_0

    #@38
    .line 682
    :try_start_0
    const-string/jumbo v3, "[addSubInfoRecord]- null iccId"

    #@3b
    move-object/from16 v0, p0

    #@3d
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@40
    .line 683
    const/4 v3, -0x1

    #@41
    .line 825
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@44
    .line 683
    return v3

    #@45
    .line 686
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    #@47
    iget-object v3, v0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@49
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@4c
    move-result-object v2

    #@4d
    .line 687
    .local v2, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    #@4f
    .line 688
    const/4 v4, 0x3

    #@50
    new-array v4, v4, [Ljava/lang/String;

    #@52
    const-string/jumbo v5, "_id"

    #@55
    const/4 v6, 0x0

    #@56
    aput-object v5, v4, v6

    #@58
    .line 689
    const-string/jumbo v5, "sim_id"

    #@5b
    const/4 v6, 0x1

    #@5c
    aput-object v5, v4, v6

    #@5e
    const-string/jumbo v5, "name_source"

    #@61
    const/4 v6, 0x2

    #@62
    aput-object v5, v4, v6

    #@64
    .line 690
    const-string/jumbo v5, "icc_id=?"

    #@67
    const/4 v6, 0x1

    #@68
    new-array v6, v6, [Ljava/lang/String;

    #@6a
    const/4 v7, 0x0

    #@6b
    aput-object p1, v6, v7

    #@6d
    const/4 v7, 0x0

    #@6e
    .line 687
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@71
    move-result-object v10

    #@72
    .line 692
    .local v10, "cursor":Landroid/database/Cursor;
    move-object/from16 v0, p0

    #@74
    iget-object v3, v0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@76
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@79
    move-result-object v3

    #@7a
    move-object/from16 v0, p0

    #@7c
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->getUnusedColor(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@7f
    move-result v8

    #@80
    .line 693
    .local v8, "color":I
    const/16 v17, 0x0

    #@82
    .line 695
    .local v17, "setDisplayName":Z
    if-eqz v10, :cond_a

    #@84
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    #@87
    move-result v3

    #@88
    if-eqz v3, :cond_a

    #@8a
    .line 706
    const/4 v3, 0x0

    #@8b
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    #@8e
    move-result v19

    #@8f
    .line 707
    .local v19, "subId":I
    const/4 v3, 0x1

    #@90
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    #@93
    move-result v16

    #@94
    .line 708
    .local v16, "oldSimInfoId":I
    const/4 v3, 0x2

    #@95
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    #@98
    move-result v14

    #@99
    .line 709
    .local v14, "nameSource":I
    new-instance v23, Landroid/content/ContentValues;

    #@9b
    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    #@9e
    .line 711
    .local v23, "value":Landroid/content/ContentValues;
    move/from16 v0, p2

    #@a0
    move/from16 v1, v16

    #@a2
    if-eq v0, v1, :cond_1

    #@a4
    .line 712
    const-string/jumbo v3, "sim_id"

    #@a7
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@aa
    move-result-object v4

    #@ab
    move-object/from16 v0, v23

    #@ad
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@b0
    .line 715
    :cond_1
    const/4 v3, 0x2

    #@b1
    if-eq v14, v3, :cond_2

    #@b3
    .line 716
    const/16 v17, 0x1

    #@b5
    .line 719
    :cond_2
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentValues;->size()I

    #@b8
    move-result v3

    #@b9
    if-lez v3, :cond_3

    #@bb
    .line 720
    sget-object v3, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    #@bd
    .line 721
    new-instance v4, Ljava/lang/StringBuilder;

    #@bf
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c2
    const-string/jumbo v5, "_id="

    #@c5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v4

    #@c9
    .line 722
    move/from16 v0, v19

    #@cb
    int-to-long v6, v0

    #@cc
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@cf
    move-result-object v5

    #@d0
    .line 721
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v4

    #@d4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d7
    move-result-object v4

    #@d8
    .line 722
    const/4 v5, 0x0

    #@d9
    .line 720
    move-object/from16 v0, v23

    #@db
    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@de
    .line 725
    :cond_3
    const-string/jumbo v3, "[addSubInfoRecord] Record already exists"

    #@e1
    move-object/from16 v0, p0

    #@e3
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@e6
    .line 728
    .end local v14    # "nameSource":I
    .end local v16    # "oldSimInfoId":I
    .end local v19    # "subId":I
    :goto_0
    if-eqz v10, :cond_4

    #@e8
    .line 729
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    #@eb
    .line 733
    :cond_4
    sget-object v3, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    #@ed
    .line 734
    const-string/jumbo v5, "sim_id=?"

    #@f0
    .line 735
    const/4 v4, 0x1

    #@f1
    new-array v6, v4, [Ljava/lang/String;

    #@f3
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@f6
    move-result-object v4

    #@f7
    const/4 v7, 0x0

    #@f8
    aput-object v4, v6, v7

    #@fa
    .line 733
    const/4 v4, 0x0

    #@fb
    .line 735
    const/4 v7, 0x0

    #@fc
    .line 733
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@ff
    move-result-object v10

    #@100
    .line 737
    if-eqz v10, :cond_7

    #@102
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    #@105
    move-result v3

    #@106
    if-eqz v3, :cond_7

    #@108
    .line 740
    :cond_5
    const-string/jumbo v3, "_id"

    #@10b
    .line 739
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@10e
    move-result v3

    #@10f
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    #@112
    move-result v19

    #@113
    .line 743
    .restart local v19    # "subId":I
    sget-object v3, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    #@115
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@118
    move-result-object v4

    #@119
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11c
    move-result-object v9

    #@11d
    check-cast v9, Ljava/lang/Integer;

    #@11f
    .line 744
    .local v9, "currentSubId":Ljava/lang/Integer;
    if-eqz v9, :cond_c

    #@121
    .line 745
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    #@124
    move-result v3

    #@125
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@128
    move-result v3

    #@129
    if-eqz v3, :cond_c

    #@12b
    .line 778
    const-string/jumbo v3, "[addSubInfoRecord] currentSubId != null && currentSubId is valid, IGNORE"

    #@12e
    move-object/from16 v0, p0

    #@130
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@133
    .line 782
    :cond_6
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@135
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@138
    const-string/jumbo v4, "[addSubInfoRecord] hashmap("

    #@13b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v3

    #@13f
    move/from16 v0, p2

    #@141
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@144
    move-result-object v3

    #@145
    const-string/jumbo v4, ","

    #@148
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v3

    #@14c
    move/from16 v0, v19

    #@14e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@151
    move-result-object v3

    #@152
    const-string/jumbo v4, ")"

    #@155
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158
    move-result-object v3

    #@159
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15c
    move-result-object v3

    #@15d
    move-object/from16 v0, p0

    #@15f
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@162
    .line 783
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@165
    move-result v3

    #@166
    if-nez v3, :cond_5

    #@168
    .line 786
    .end local v9    # "currentSubId":Ljava/lang/Integer;
    .end local v19    # "subId":I
    :cond_7
    if-eqz v10, :cond_8

    #@16a
    .line 787
    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    #@16d
    .line 792
    :cond_8
    move-object/from16 v0, p0

    #@16f
    move/from16 v1, p2

    #@171
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    #@174
    move-result-object v21

    #@175
    .line 793
    .local v21, "subIds":[I
    if-eqz v21, :cond_9

    #@177
    move-object/from16 v0, v21

    #@179
    array-length v3, v0

    #@17a
    if-nez v3, :cond_10

    #@17c
    .line 795
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    #@17e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@181
    const-string/jumbo v4, "[addSubInfoRecord]- getSubId failed subIds == null || length == 0 subIds="

    #@184
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@187
    move-result-object v3

    #@188
    move-object/from16 v0, v21

    #@18a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18d
    move-result-object v3

    #@18e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@191
    move-result-object v3

    #@192
    move-object/from16 v0, p0

    #@194
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@197
    .line 798
    const/4 v3, -0x1

    #@198
    .line 825
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@19b
    .line 798
    return v3

    #@19c
    .line 696
    .end local v21    # "subIds":[I
    .end local v23    # "value":Landroid/content/ContentValues;
    :cond_a
    const/16 v17, 0x1

    #@19e
    .line 697
    :try_start_6
    new-instance v23, Landroid/content/ContentValues;

    #@1a0
    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    #@1a3
    .line 698
    .restart local v23    # "value":Landroid/content/ContentValues;
    const-string/jumbo v3, "icc_id"

    #@1a6
    move-object/from16 v0, v23

    #@1a8
    move-object/from16 v1, p1

    #@1aa
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@1ad
    .line 700
    const-string/jumbo v3, "color"

    #@1b0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b3
    move-result-object v4

    #@1b4
    move-object/from16 v0, v23

    #@1b6
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@1b9
    .line 701
    const-string/jumbo v3, "sim_id"

    #@1bc
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1bf
    move-result-object v4

    #@1c0
    move-object/from16 v0, v23

    #@1c2
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@1c5
    .line 702
    const-string/jumbo v3, "carrier_name"

    #@1c8
    const-string/jumbo v4, ""

    #@1cb
    move-object/from16 v0, v23

    #@1cd
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@1d0
    .line 703
    sget-object v3, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    #@1d2
    move-object/from16 v0, v23

    #@1d4
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@1d7
    move-result-object v22

    #@1d8
    .line 704
    .local v22, "uri":Landroid/net/Uri;
    new-instance v3, Ljava/lang/StringBuilder;

    #@1da
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1dd
    const-string/jumbo v4, "[addSubInfoRecord] New record created: "

    #@1e0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e3
    move-result-object v3

    #@1e4
    move-object/from16 v0, v22

    #@1e6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e9
    move-result-object v3

    #@1ea
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ed
    move-result-object v3

    #@1ee
    move-object/from16 v0, p0

    #@1f0
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@1f3
    goto/16 :goto_0

    #@1f5
    .line 727
    .end local v22    # "uri":Landroid/net/Uri;
    .end local v23    # "value":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    #@1f6
    .line 728
    if-eqz v10, :cond_b

    #@1f8
    .line 729
    :try_start_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    #@1fb
    .line 727
    :cond_b
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@1fc
    .line 824
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v8    # "color":I
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v17    # "setDisplayName":Z
    :catchall_1
    move-exception v3

    #@1fd
    .line 825
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@200
    .line 824
    throw v3

    #@201
    .line 752
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v8    # "color":I
    .restart local v9    # "currentSubId":Ljava/lang/Integer;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v17    # "setDisplayName":Z
    .restart local v19    # "subId":I
    .restart local v23    # "value":Landroid/content/ContentValues;
    :cond_c
    :try_start_8
    sget-object v3, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    #@203
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@206
    move-result-object v4

    #@207
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20a
    move-result-object v5

    #@20b
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20e
    .line 753
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubInfoCountMax()I

    #@211
    move-result v20

    #@212
    .line 754
    .local v20, "subIdCountMax":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    #@215
    move-result v11

    #@216
    .line 756
    .local v11, "defaultSubId":I
    new-instance v3, Ljava/lang/StringBuilder;

    #@218
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@21b
    const-string/jumbo v4, "[addSubInfoRecord] sSlotIdxToSubId.size="

    #@21e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@221
    move-result-object v3

    #@222
    .line 757
    sget-object v4, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    #@224
    invoke-interface {v4}, Ljava/util/Map;->size()I

    #@227
    move-result v4

    #@228
    .line 756
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22b
    move-result-object v3

    #@22c
    .line 758
    const-string/jumbo v4, " slotId="

    #@22f
    .line 756
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@232
    move-result-object v3

    #@233
    move/from16 v0, p2

    #@235
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@238
    move-result-object v3

    #@239
    .line 758
    const-string/jumbo v4, " subId="

    #@23c
    .line 756
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23f
    move-result-object v3

    #@240
    move/from16 v0, v19

    #@242
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@245
    move-result-object v3

    #@246
    .line 759
    const-string/jumbo v4, " defaultSubId="

    #@249
    .line 756
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24c
    move-result-object v3

    #@24d
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@250
    move-result-object v3

    #@251
    .line 759
    const-string/jumbo v4, " simCount="

    #@254
    .line 756
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@257
    move-result-object v3

    #@258
    move/from16 v0, v20

    #@25a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25d
    move-result-object v3

    #@25e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@261
    move-result-object v3

    #@262
    move-object/from16 v0, p0

    #@264
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@267
    .line 763
    invoke-static {v11}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@26a
    move-result v3

    #@26b
    if-eqz v3, :cond_d

    #@26d
    .line 764
    const/4 v3, 0x1

    #@26e
    move/from16 v0, v20

    #@270
    if-ne v0, v3, :cond_e

    #@272
    .line 765
    :cond_d
    move-object/from16 v0, p0

    #@274
    move/from16 v1, v19

    #@276
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultFallbackSubId(I)V

    #@279
    .line 768
    :cond_e
    const/4 v3, 0x1

    #@27a
    move/from16 v0, v20

    #@27c
    if-ne v0, v3, :cond_6

    #@27e
    .line 770
    new-instance v3, Ljava/lang/StringBuilder;

    #@280
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@283
    const-string/jumbo v4, "[addSubInfoRecord] one sim set defaults to subId="

    #@286
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@289
    move-result-object v3

    #@28a
    move/from16 v0, v19

    #@28c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28f
    move-result-object v3

    #@290
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@293
    move-result-object v3

    #@294
    move-object/from16 v0, p0

    #@296
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@299
    .line 772
    move-object/from16 v0, p0

    #@29b
    move/from16 v1, v19

    #@29d
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    #@2a0
    .line 773
    move-object/from16 v0, p0

    #@2a2
    move/from16 v1, v19

    #@2a4
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultSmsSubId(I)V

    #@2a7
    .line 774
    move-object/from16 v0, p0

    #@2a9
    move/from16 v1, v19

    #@2ab
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    #@2ae
    goto/16 :goto_1

    #@2b0
    .line 785
    .end local v9    # "currentSubId":Ljava/lang/Integer;
    .end local v11    # "defaultSubId":I
    .end local v19    # "subId":I
    .end local v20    # "subIdCountMax":I
    :catchall_2
    move-exception v3

    #@2b1
    .line 786
    if-eqz v10, :cond_f

    #@2b3
    .line 787
    :try_start_9
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    #@2b6
    .line 785
    :cond_f
    throw v3

    #@2b7
    .line 800
    .restart local v21    # "subIds":[I
    :cond_10
    if-eqz v17, :cond_11

    #@2b9
    .line 801
    move-object/from16 v0, p0

    #@2bb
    iget-object v3, v0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@2bd
    const/4 v4, 0x0

    #@2be
    aget v4, v21, v4

    #@2c0
    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    #@2c3
    move-result-object v18

    #@2c4
    .line 804
    .local v18, "simCarrierName":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2c7
    move-result v3

    #@2c8
    if-nez v3, :cond_12

    #@2ca
    .line 805
    move-object/from16 v15, v18

    #@2cc
    .line 810
    .local v15, "nameToSet":Ljava/lang/String;
    :goto_2
    new-instance v23, Landroid/content/ContentValues;

    #@2ce
    .end local v23    # "value":Landroid/content/ContentValues;
    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    #@2d1
    .line 811
    .restart local v23    # "value":Landroid/content/ContentValues;
    const-string/jumbo v3, "display_name"

    #@2d4
    move-object/from16 v0, v23

    #@2d6
    invoke-virtual {v0, v3, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@2d9
    .line 812
    sget-object v3, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    #@2db
    .line 813
    new-instance v4, Ljava/lang/StringBuilder;

    #@2dd
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2e0
    const-string/jumbo v5, "_id="

    #@2e3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e6
    move-result-object v4

    #@2e7
    .line 814
    const/4 v5, 0x0

    #@2e8
    aget v5, v21, v5

    #@2ea
    int-to-long v6, v5

    #@2eb
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@2ee
    move-result-object v5

    #@2ef
    .line 813
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f2
    move-result-object v4

    #@2f3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f6
    move-result-object v4

    #@2f7
    .line 814
    const/4 v5, 0x0

    #@2f8
    .line 812
    move-object/from16 v0, v23

    #@2fa
    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@2fd
    .line 816
    new-instance v3, Ljava/lang/StringBuilder;

    #@2ff
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@302
    const-string/jumbo v4, "[addSubInfoRecord] sim name = "

    #@305
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@308
    move-result-object v3

    #@309
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30c
    move-result-object v3

    #@30d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@310
    move-result-object v3

    #@311
    move-object/from16 v0, p0

    #@313
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@316
    .line 820
    .end local v15    # "nameToSet":Ljava/lang/String;
    .end local v18    # "simCarrierName":Ljava/lang/String;
    :cond_11
    sget-object v3, Lcom/android/internal/telephony/SubscriptionController;->sPhones:[Lcom/android/internal/telephony/Phone;

    #@318
    aget-object v3, v3, p2

    #@31a
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->updateDataConnectionTracker()V

    #@31d
    .line 822
    new-instance v3, Ljava/lang/StringBuilder;

    #@31f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@322
    const-string/jumbo v4, "[addSubInfoRecord]- info size="

    #@325
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@328
    move-result-object v3

    #@329
    sget-object v4, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    #@32b
    invoke-interface {v4}, Ljava/util/Map;->size()I

    #@32e
    move-result v4

    #@32f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@332
    move-result-object v3

    #@333
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@336
    move-result-object v3

    #@337
    move-object/from16 v0, p0

    #@339
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@33c
    .line 825
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@33f
    .line 827
    const/4 v3, 0x0

    #@340
    return v3

    #@341
    .line 807
    .restart local v18    # "simCarrierName":Ljava/lang/String;
    :cond_12
    :try_start_a
    new-instance v3, Ljava/lang/StringBuilder;

    #@343
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@346
    const-string/jumbo v4, "CARD "

    #@349
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34c
    move-result-object v3

    #@34d
    add-int/lit8 v4, p2, 0x1

    #@34f
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@352
    move-result-object v4

    #@353
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@356
    move-result-object v3

    #@357
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@35a
    move-result-object v15

    #@35b
    .restart local v15    # "nameToSet":Ljava/lang/String;
    goto/16 :goto_2
.end method

.method public clearDefaultsForInactiveSubIds()V
    .locals 5

    #@0
    .prologue
    .line 1508
    const-string/jumbo v3, "clearDefaultsForInactiveSubIds"

    #@3
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    #@6
    .line 1511
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@9
    move-result-wide v0

    #@a
    .line 1514
    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    .line 1513
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    #@13
    move-result-object v2

    #@14
    .line 1515
    .local v2, "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v4, "[clearDefaultsForInactiveSubIds] records: "

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@2b
    .line 1516
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    #@2e
    move-result v3

    #@2f
    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->shouldDefaultBeCleared(Ljava/util/List;I)Z

    #@32
    move-result v3

    #@33
    if-eqz v3, :cond_0

    #@35
    .line 1517
    const-string/jumbo v3, "[clearDefaultsForInactiveSubIds] clearing default data sub id"

    #@38
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@3b
    .line 1518
    const/4 v3, -0x1

    #@3c
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    #@3f
    .line 1520
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSmsSubId()I

    #@42
    move-result v3

    #@43
    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->shouldDefaultBeCleared(Ljava/util/List;I)Z

    #@46
    move-result v3

    #@47
    if-eqz v3, :cond_1

    #@49
    .line 1521
    const-string/jumbo v3, "[clearDefaultsForInactiveSubIds] clearing default sms sub id"

    #@4c
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@4f
    .line 1522
    const/4 v3, -0x1

    #@50
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultSmsSubId(I)V

    #@53
    .line 1524
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()I

    #@56
    move-result v3

    #@57
    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->shouldDefaultBeCleared(Ljava/util/List;I)Z

    #@5a
    move-result v3

    #@5b
    if-eqz v3, :cond_2

    #@5d
    .line 1525
    const-string/jumbo v3, "[clearDefaultsForInactiveSubIds] clearing default voice sub id"

    #@60
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@63
    .line 1526
    const/4 v3, -0x1

    #@64
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@67
    .line 1529
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@6a
    .line 1507
    return-void

    #@6b
    .line 1528
    .end local v2    # "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v3

    #@6c
    .line 1529
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@6f
    .line 1528
    throw v3
.end method

.method public clearSubInfo()I
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1262
    const-string/jumbo v3, "clearSubInfo"

    #@4
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    #@7
    .line 1265
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@a
    move-result-wide v0

    #@b
    .line 1267
    .local v0, "identity":J
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    #@d
    invoke-interface {v3}, Ljava/util/Map;->size()I

    #@10
    move-result v2

    #@11
    .line 1269
    .local v2, "size":I
    if-nez v2, :cond_0

    #@13
    .line 1270
    new-instance v3, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v4, "[clearSubInfo]- no simInfo size="

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 1278
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2d
    .line 1271
    return v5

    #@2e
    .line 1274
    :cond_0
    :try_start_1
    sget-object v3, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    #@30
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    #@33
    .line 1275
    new-instance v3, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v4, "[clearSubInfo]- clear size="

    #@3b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v3

    #@47
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    .line 1278
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4d
    .line 1276
    return v2

    #@4e
    .line 1277
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    #@4f
    .line 1278
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@52
    .line 1277
    throw v3
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1812
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v7, "android.permission.DUMP"

    #@5
    .line 1813
    const-string/jumbo v8, "Requires DUMP"

    #@8
    .line 1812
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1814
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e
    move-result-wide v4

    #@f
    .line 1816
    .local v4, "token":J
    :try_start_0
    const-string/jumbo v6, "SubscriptionController:"

    #@12
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@15
    .line 1817
    new-instance v6, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v7, " defaultSubId="

    #@1d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v6

    #@21
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    #@24
    move-result v7

    #@25
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v6

    #@29
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v6

    #@2d
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@30
    .line 1818
    new-instance v6, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v7, " defaultDataSubId="

    #@38
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v6

    #@3c
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    #@3f
    move-result v7

    #@40
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v6

    #@44
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v6

    #@48
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4b
    .line 1819
    new-instance v6, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v7, " defaultVoiceSubId="

    #@53
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v6

    #@57
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()I

    #@5a
    move-result v7

    #@5b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v6

    #@5f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v6

    #@63
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@66
    .line 1820
    new-instance v6, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v7, " defaultSmsSubId="

    #@6e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v6

    #@72
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSmsSubId()I

    #@75
    move-result v7

    #@76
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@79
    move-result-object v6

    #@7a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v6

    #@7e
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@81
    .line 1822
    new-instance v6, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string/jumbo v7, " defaultDataPhoneId="

    #@89
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v6

    #@8d
    .line 1823
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@8f
    .line 1822
    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    #@92
    move-result-object v7

    #@93
    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    #@96
    move-result v7

    #@97
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v6

    #@9b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v6

    #@9f
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a2
    .line 1824
    new-instance v6, Ljava/lang/StringBuilder;

    #@a4
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@a7
    const-string/jumbo v7, " defaultVoicePhoneId="

    #@aa
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v6

    #@ae
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    #@b1
    move-result v7

    #@b2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v6

    #@b6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v6

    #@ba
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@bd
    .line 1825
    new-instance v6, Ljava/lang/StringBuilder;

    #@bf
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@c2
    const-string/jumbo v7, " defaultSmsPhoneId="

    #@c5
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v6

    #@c9
    .line 1826
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@cb
    .line 1825
    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    #@ce
    move-result-object v7

    #@cf
    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getDefaultSmsPhoneId()I

    #@d2
    move-result v7

    #@d3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v6

    #@d7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@da
    move-result-object v6

    #@db
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@de
    .line 1827
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@e1
    .line 1829
    sget-object v6, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    #@e3
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@e6
    move-result-object v6

    #@e7
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@ea
    move-result-object v2

    #@eb
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@ee
    move-result v6

    #@ef
    if-eqz v6, :cond_0

    #@f1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f4
    move-result-object v1

    #@f5
    check-cast v1, Ljava/util/Map$Entry;

    #@f7
    .line 1830
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    #@f9
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@fc
    const-string/jumbo v7, " sSlotIdxToSubId["

    #@ff
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v6

    #@103
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@106
    move-result-object v7

    #@107
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v6

    #@10b
    const-string/jumbo v7, "]: subId="

    #@10e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v6

    #@112
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@115
    move-result-object v7

    #@116
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v6

    #@11a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11d
    move-result-object v6

    #@11e
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@121
    goto :goto_0

    #@122
    .line 1864
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    #@123
    .line 1865
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@126
    .line 1864
    throw v6

    #@127
    .line 1832
    .restart local v2    # "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@12a
    .line 1833
    const-string/jumbo v6, "++++++++++++++++++++++++++++++++"

    #@12d
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@130
    .line 1836
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@132
    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@135
    move-result-object v6

    #@136
    .line 1835
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    #@139
    move-result-object v3

    #@13a
    .line 1837
    .local v3, "sirl":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_1

    #@13c
    .line 1838
    const-string/jumbo v6, " ActiveSubInfoList:"

    #@13f
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@142
    .line 1839
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@145
    move-result-object v2

    #@146
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@149
    move-result v6

    #@14a
    if-eqz v6, :cond_2

    #@14c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14f
    move-result-object v0

    #@150
    check-cast v0, Landroid/telephony/SubscriptionInfo;

    #@152
    .line 1840
    .local v0, "entry":Landroid/telephony/SubscriptionInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    #@154
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@157
    const-string/jumbo v7, "  "

    #@15a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15d
    move-result-object v6

    #@15e
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->toString()Ljava/lang/String;

    #@161
    move-result-object v7

    #@162
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@165
    move-result-object v6

    #@166
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@169
    move-result-object v6

    #@16a
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@16d
    goto :goto_1

    #@16e
    .line 1843
    .end local v0    # "entry":Landroid/telephony/SubscriptionInfo;
    :cond_1
    const-string/jumbo v6, " ActiveSubInfoList: is null"

    #@171
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@174
    .line 1845
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@177
    .line 1846
    const-string/jumbo v6, "++++++++++++++++++++++++++++++++"

    #@17a
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17d
    .line 1848
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@17f
    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@182
    move-result-object v6

    #@183
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->getAllSubInfoList(Ljava/lang/String;)Ljava/util/List;

    #@186
    move-result-object v3

    #@187
    .line 1849
    if-eqz v3, :cond_3

    #@189
    .line 1850
    const-string/jumbo v6, " AllSubInfoList:"

    #@18c
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@18f
    .line 1851
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@192
    move-result-object v2

    #@193
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@196
    move-result v6

    #@197
    if-eqz v6, :cond_4

    #@199
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19c
    move-result-object v0

    #@19d
    check-cast v0, Landroid/telephony/SubscriptionInfo;

    #@19f
    .line 1852
    .restart local v0    # "entry":Landroid/telephony/SubscriptionInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    #@1a1
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1a4
    const-string/jumbo v7, "  "

    #@1a7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1aa
    move-result-object v6

    #@1ab
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->toString()Ljava/lang/String;

    #@1ae
    move-result-object v7

    #@1af
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b2
    move-result-object v6

    #@1b3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b6
    move-result-object v6

    #@1b7
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ba
    goto :goto_2

    #@1bb
    .line 1855
    .end local v0    # "entry":Landroid/telephony/SubscriptionInfo;
    :cond_3
    const-string/jumbo v6, " AllSubInfoList: is null"

    #@1be
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c1
    .line 1857
    :cond_4
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@1c4
    .line 1858
    const-string/jumbo v6, "++++++++++++++++++++++++++++++++"

    #@1c7
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ca
    .line 1860
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionController;->mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    #@1cc
    invoke-virtual {v6, p1, p2, p3}, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@1cf
    .line 1861
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@1d2
    .line 1862
    const-string/jumbo v6, "++++++++++++++++++++++++++++++++"

    #@1d5
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d8
    .line 1863
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1db
    .line 1865
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1de
    .line 1811
    return-void
.end method

.method public getActiveSubIdList()[I
    .locals 7

    #@0
    .prologue
    .line 1641
    sget-object v6, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    #@2
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@5
    move-result-object v3

    #@6
    .line 1643
    .local v3, "simInfoSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    #@9
    move-result v6

    #@a
    new-array v5, v6, [I

    #@c
    .line 1644
    .local v5, "subIdArr":[I
    const/4 v2, 0x0

    #@d
    .line 1645
    .local v2, "i":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v6

    #@15
    if-eqz v6, :cond_0

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Ljava/util/Map$Entry;

    #@1d
    .line 1646
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@20
    move-result-object v6

    #@21
    check-cast v6, Ljava/lang/Integer;

    #@23
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@26
    move-result v4

    #@27
    .line 1647
    .local v4, "sub":I
    aput v4, v5, v2

    #@29
    .line 1648
    add-int/lit8 v2, v2, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 1655
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v4    # "sub":I
    :cond_0
    return-object v5
.end method

.method public getActiveSubInfoCount(Ljava/lang/String;)I
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 597
    const-string/jumbo v3, "[getActiveSubInfoCount]+"

    #@4
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@7
    .line 599
    const-string/jumbo v3, "getActiveSubInfoCount"

    #@a
    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/SubscriptionController;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@d
    move-result v3

    #@e
    if-nez v3, :cond_0

    #@10
    .line 600
    return v4

    #@11
    .line 604
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v0

    #@15
    .line 607
    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@17
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    .line 606
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    #@1e
    move-result-object v2

    #@1f
    .line 608
    .local v2, "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v2, :cond_1

    #@21
    .line 609
    const-string/jumbo v3, "[getActiveSubInfoCount] records null"

    #@24
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 615
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2a
    .line 610
    return v4

    #@2b
    .line 612
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v4, "[getActiveSubInfoCount]- count: "

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@3a
    move-result v4

    #@3b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@46
    .line 613
    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@49
    move-result v3

    #@4a
    .line 615
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4d
    .line 613
    return v3

    #@4e
    .line 614
    .end local v2    # "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v3

    #@4f
    .line 615
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@52
    .line 614
    throw v3
.end method

.method public getActiveSubInfoCountMax()I
    .locals 1

    #@0
    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getActiveSubscriptionInfo(ILjava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .locals 8
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 399
    const-string/jumbo v5, "getActiveSubscriptionInfo"

    #@4
    invoke-direct {p0, p2, v5}, Lcom/android/internal/telephony/SubscriptionController;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@7
    move-result v5

    #@8
    if-nez v5, :cond_0

    #@a
    .line 400
    return-object v7

    #@b
    .line 404
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e
    move-result-wide v0

    #@f
    .line 407
    .local v0, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@11
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@14
    move-result-object v5

    #@15
    .line 406
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    #@18
    move-result-object v4

    #@19
    .line 408
    .local v4, "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v4, :cond_2

    #@1b
    .line 409
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v3

    #@1f
    .local v3, "si$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_2

    #@25
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    check-cast v2, Landroid/telephony/SubscriptionInfo;

    #@2b
    .line 410
    .local v2, "si":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    #@2e
    move-result v5

    #@2f
    if-ne v5, p1, :cond_1

    #@31
    .line 412
    new-instance v5, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v6, "[getActiveSubscriptionInfo]+ subId="

    #@39
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v5

    #@41
    const-string/jumbo v6, " subInfo="

    #@44
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@53
    .line 424
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@56
    .line 415
    return-object v2

    #@57
    .line 420
    .end local v2    # "si":Landroid/telephony/SubscriptionInfo;
    .end local v3    # "si$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v6, "[getActiveSubInfoForSubscriber]- subId="

    #@5f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v5

    #@63
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@66
    move-result-object v5

    #@67
    .line 421
    const-string/jumbo v6, " subList="

    #@6a
    .line 420
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v5

    #@6e
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v5

    #@72
    .line 421
    const-string/jumbo v6, " subInfo=null"

    #@75
    .line 420
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v5

    #@79
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v5

    #@7d
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@80
    .line 424
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@83
    .line 427
    return-object v7

    #@84
    .line 423
    .end local v4    # "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v5

    #@85
    .line 424
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@88
    .line 423
    throw v5
.end method

.method public getActiveSubscriptionInfoForIccId(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .locals 8
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 438
    const-string/jumbo v5, "getActiveSubscriptionInfoForIccId"

    #@4
    invoke-direct {p0, p2, v5}, Lcom/android/internal/telephony/SubscriptionController;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@7
    move-result v5

    #@8
    if-nez v5, :cond_0

    #@a
    .line 439
    return-object v7

    #@b
    .line 443
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e
    move-result-wide v0

    #@f
    .line 446
    .local v0, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@11
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@14
    move-result-object v5

    #@15
    .line 445
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    #@18
    move-result-object v4

    #@19
    .line 447
    .local v4, "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v4, :cond_2

    #@1b
    .line 448
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v3

    #@1f
    .local v3, "si$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_2

    #@25
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    check-cast v2, Landroid/telephony/SubscriptionInfo;

    #@2b
    .line 449
    .local v2, "si":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    if-ne v5, p1, :cond_1

    #@31
    .line 451
    new-instance v5, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v6, "[getActiveSubInfoUsingIccId]+ iccId="

    #@39
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v5

    #@41
    const-string/jumbo v6, " subInfo="

    #@44
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@53
    .line 461
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@56
    .line 452
    return-object v2

    #@57
    .line 457
    .end local v2    # "si":Landroid/telephony/SubscriptionInfo;
    .end local v3    # "si$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v6, "[getActiveSubInfoUsingIccId]+ iccId="

    #@5f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v5

    #@63
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v5

    #@67
    .line 458
    const-string/jumbo v6, " subList="

    #@6a
    .line 457
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v5

    #@6e
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v5

    #@72
    .line 458
    const-string/jumbo v6, " subInfo=null"

    #@75
    .line 457
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v5

    #@79
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v5

    #@7d
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@80
    .line 461
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@83
    .line 464
    return-object v7

    #@84
    .line 460
    .end local v4    # "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v5

    #@85
    .line 461
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@88
    .line 460
    throw v5
.end method

.method public getActiveSubscriptionInfoForSimSlotIndex(ILjava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .locals 8
    .param p1, "slotIdx"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 476
    const-string/jumbo v5, "getActiveSubscriptionInfoForSimSlotIndex"

    #@4
    invoke-direct {p0, p2, v5}, Lcom/android/internal/telephony/SubscriptionController;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@7
    move-result v5

    #@8
    if-nez v5, :cond_0

    #@a
    .line 477
    return-object v7

    #@b
    .line 481
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e
    move-result-wide v0

    #@f
    .line 484
    .local v0, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@11
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@14
    move-result-object v5

    #@15
    .line 483
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    #@18
    move-result-object v4

    #@19
    .line 485
    .local v4, "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v4, :cond_3

    #@1b
    .line 486
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v3

    #@1f
    .local v3, "si$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_2

    #@25
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    check-cast v2, Landroid/telephony/SubscriptionInfo;

    #@2b
    .line 487
    .local v2, "si":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    #@2e
    move-result v5

    #@2f
    if-ne v5, p1, :cond_1

    #@31
    .line 489
    new-instance v5, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v6, "[getActiveSubscriptionInfoForSimSlotIndex]+ slotIdx="

    #@39
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v5

    #@41
    .line 490
    const-string/jumbo v6, " subId="

    #@44
    .line 489
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@53
    .line 505
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@56
    .line 492
    return-object v2

    #@57
    .line 496
    .end local v2    # "si":Landroid/telephony/SubscriptionInfo;
    :cond_2
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v6, "[getActiveSubscriptionInfoForSimSlotIndex]+ slotIdx="

    #@5f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v5

    #@63
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@66
    move-result-object v5

    #@67
    .line 497
    const-string/jumbo v6, " subId=null"

    #@6a
    .line 496
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v5

    #@6e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v5

    #@72
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@75
    .line 505
    .end local v3    # "si$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@78
    .line 508
    return-object v7

    #@79
    .line 501
    :cond_3
    :try_start_2
    const-string/jumbo v5, "[getActiveSubscriptionInfoForSimSlotIndex]+ subList=null"

    #@7c
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7f
    goto :goto_0

    #@80
    .line 504
    .end local v4    # "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v5

    #@81
    .line 505
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@84
    .line 504
    throw v5
.end method

.method public getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 549
    const-string/jumbo v3, "getActiveSubscriptionInfoList"

    #@4
    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/SubscriptionController;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@7
    move-result v3

    #@8
    if-nez v3, :cond_0

    #@a
    .line 550
    return-object v4

    #@b
    .line 554
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e
    move-result-wide v0

    #@f
    .line 556
    .local v0, "identity":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->isSubInfoReady()Z

    #@12
    move-result v3

    #@13
    if-nez v3, :cond_1

    #@15
    .line 557
    const-string/jumbo v3, "[getActiveSubInfoList] Sub Controller not ready"

    #@18
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 586
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1e
    .line 558
    return-object v4

    #@1f
    .line 562
    :cond_1
    :try_start_1
    const-string/jumbo v3, "sim_id>=0"

    #@22
    const/4 v4, 0x0

    #@23
    .line 561
    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    #@26
    move-result-object v2

    #@27
    .line 564
    .local v2, "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v2, :cond_2

    #@29
    .line 566
    new-instance v3, Lcom/android/internal/telephony/SubscriptionController$1;

    #@2b
    invoke-direct {v3, p0}, Lcom/android/internal/telephony/SubscriptionController$1;-><init>(Lcom/android/internal/telephony/SubscriptionController;)V

    #@2e
    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    .line 586
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@34
    .line 584
    return-object v2

    #@35
    .line 581
    :cond_2
    :try_start_2
    const-string/jumbo v3, "[getActiveSubInfoList]- no info return"

    #@38
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .line 585
    .end local v2    # "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v3

    #@3d
    .line 586
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@40
    .line 585
    throw v3
.end method

.method public getAllSubInfoCount(Ljava/lang/String;)I
    .locals 11
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 626
    const-string/jumbo v0, "[getAllSubInfoCount]+"

    #@4
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@7
    .line 628
    const-string/jumbo v0, "getAllSubInfoCount"

    #@a
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SubscriptionController;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_0

    #@10
    .line 629
    return v10

    #@11
    .line 633
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v8

    #@15
    .line 635
    .local v8, "identity":J
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@17
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1a
    move-result-object v0

    #@1b
    sget-object v1, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    #@1d
    .line 636
    const/4 v2, 0x0

    #@1e
    const/4 v3, 0x0

    #@1f
    const/4 v4, 0x0

    #@20
    const/4 v5, 0x0

    #@21
    .line 635
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@24
    move-result-object v7

    #@25
    .line 638
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    #@27
    .line 639
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    #@2a
    move-result v6

    #@2b
    .line 640
    .local v6, "count":I
    new-instance v0, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v1, "[getAllSubInfoCount]- "

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    const-string/jumbo v1, " SUB(s) in DB"

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v0

    #@42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@49
    .line 644
    if-eqz v7, :cond_1

    #@4b
    .line 645
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@4e
    .line 652
    :cond_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@51
    .line 641
    return v6

    #@52
    .line 644
    .end local v6    # "count":I
    :cond_2
    if-eqz v7, :cond_3

    #@54
    .line 645
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@57
    .line 648
    :cond_3
    const-string/jumbo v0, "[getAllSubInfoCount]- no SUB in DB"

    #@5a
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@5d
    .line 652
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@60
    .line 650
    return v10

    #@61
    .line 643
    :catchall_0
    move-exception v0

    #@62
    .line 644
    if-eqz v7, :cond_4

    #@64
    .line 645
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@67
    .line 643
    :cond_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@68
    .line 651
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    #@69
    .line 652
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@6c
    .line 651
    throw v0
.end method

.method public getAllSubInfoList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 519
    const-string/jumbo v3, "[getAllSubInfoList]+"

    #@4
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@7
    .line 521
    const-string/jumbo v3, "getAllSubInfoList"

    #@a
    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/SubscriptionController;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@d
    move-result v3

    #@e
    if-nez v3, :cond_0

    #@10
    .line 522
    return-object v4

    #@11
    .line 526
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v0

    #@15
    .line 528
    .local v0, "identity":J
    const/4 v2, 0x0

    #@16
    .line 529
    .local v2, "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v3, 0x0

    #@17
    const/4 v4, 0x0

    #@18
    :try_start_0
    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    #@1b
    move-result-object v2

    #@1c
    .line 530
    .local v2, "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v2, :cond_1

    #@1e
    .line 531
    new-instance v3, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v4, "[getAllSubInfoList]- "

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@2d
    move-result v4

    #@2e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    const-string/jumbo v4, " infos return"

    #@35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    .line 537
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@43
    .line 535
    return-object v2

    #@44
    .line 533
    :cond_1
    :try_start_1
    const-string/jumbo v3, "[getAllSubInfoList]- no info return"

    #@47
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    goto :goto_0

    #@4b
    .line 536
    .end local v2    # "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v3

    #@4c
    .line 537
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4f
    .line 536
    throw v3
.end method

.method public getDefaultDataSubId()I
    .locals 4

    #@0
    .prologue
    .line 1397
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v1

    #@6
    .line 1398
    const-string/jumbo v2, "multi_sim_data_call"

    #@9
    .line 1399
    const/4 v3, -0x1

    #@a
    .line 1397
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@d
    move-result v0

    #@e
    .line 1401
    .local v0, "subId":I
    return v0
.end method

.method public getDefaultSmsSubId()I
    .locals 4

    #@0
    .prologue
    .line 1357
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v1

    #@6
    .line 1358
    const-string/jumbo v2, "multi_sim_sms"

    #@9
    .line 1359
    const/4 v3, -0x1

    #@a
    .line 1357
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@d
    move-result v0

    #@e
    .line 1361
    .local v0, "subId":I
    return v0
.end method

.method public getDefaultSubId()I
    .locals 4

    #@0
    .prologue
    .line 1316
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v2

    #@6
    .line 1317
    const v3, 0x112005a

    #@9
    .line 1316
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@c
    move-result v0

    #@d
    .line 1318
    .local v0, "isVoiceCapable":Z
    if-eqz v0, :cond_1

    #@f
    .line 1319
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()I

    #@12
    move-result v1

    #@13
    .line 1325
    .local v1, "subId":I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    #@16
    move-result v2

    #@17
    if-nez v2, :cond_0

    #@19
    .line 1326
    sget v1, Lcom/android/internal/telephony/SubscriptionController;->mDefaultFallbackSubId:I

    #@1b
    .line 1330
    :cond_0
    return v1

    #@1c
    .line 1322
    .end local v1    # "subId":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    #@1f
    move-result v1

    #@20
    .restart local v1    # "subId":I
    goto :goto_0
.end method

.method public getDefaultVoiceSubId()I
    .locals 4

    #@0
    .prologue
    .line 1388
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v1

    #@6
    .line 1389
    const-string/jumbo v2, "multi_sim_voice_call"

    #@9
    .line 1390
    const/4 v3, -0x1

    #@a
    .line 1388
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@d
    move-result v0

    #@e
    .line 1392
    .local v0, "subId":I
    return v0
.end method

.method public getPhoneId(I)I
    .locals 8
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 1197
    const v6, 0x7fffffff

    #@3
    if-ne p1, v6, :cond_0

    #@5
    .line 1198
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    #@8
    move-result p1

    #@9
    .line 1199
    new-instance v6, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v7, "[getPhoneId] asked for default subId="

    #@11
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v6

    #@15
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v6

    #@19
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v6

    #@1d
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@20
    .line 1202
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@23
    move-result v6

    #@24
    if-nez v6, :cond_1

    #@26
    .line 1207
    const/4 v6, -0x1

    #@27
    return v6

    #@28
    .line 1210
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    #@2a
    invoke-interface {v6}, Ljava/util/Map;->size()I

    #@2d
    move-result v4

    #@2e
    .line 1211
    .local v4, "size":I
    if-nez v4, :cond_2

    #@30
    .line 1212
    sget v2, Lcom/android/internal/telephony/SubscriptionController;->mDefaultPhoneId:I

    #@32
    .line 1213
    .local v2, "phoneId":I
    new-instance v6, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v7, "[getPhoneId]- no sims, returning default phoneId="

    #@3a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v6

    #@3e
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v6

    #@42
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v6

    #@46
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@49
    .line 1214
    return v2

    #@4a
    .line 1218
    .end local v2    # "phoneId":I
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    #@4c
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@4f
    move-result-object v6

    #@50
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@53
    move-result-object v1

    #@54
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@57
    move-result v6

    #@58
    if-eqz v6, :cond_4

    #@5a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5d
    move-result-object v0

    #@5e
    check-cast v0, Ljava/util/Map$Entry;

    #@60
    .line 1219
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@63
    move-result-object v6

    #@64
    check-cast v6, Ljava/lang/Integer;

    #@66
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@69
    move-result v3

    #@6a
    .line 1220
    .local v3, "sim":I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@6d
    move-result-object v6

    #@6e
    check-cast v6, Ljava/lang/Integer;

    #@70
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@73
    move-result v5

    #@74
    .line 1222
    .local v5, "sub":I
    if-ne p1, v5, :cond_3

    #@76
    .line 1224
    return v3

    #@77
    .line 1228
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v3    # "sim":I
    .end local v5    # "sub":I
    :cond_4
    sget v2, Lcom/android/internal/telephony/SubscriptionController;->mDefaultPhoneId:I

    #@79
    .line 1230
    .restart local v2    # "phoneId":I
    new-instance v6, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    const-string/jumbo v7, "[getPhoneId]- subId="

    #@81
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v6

    #@85
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@88
    move-result-object v6

    #@89
    const-string/jumbo v7, " not found return default phoneId="

    #@8c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v6

    #@90
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@93
    move-result-object v6

    #@94
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v6

    #@98
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@9b
    .line 1232
    return v2
.end method

.method public getSimStateForSlotIdx(I)I
    .locals 5
    .param p1, "slotIdx"    # I

    #@0
    .prologue
    .line 1675
    if-gez p1, :cond_0

    #@2
    .line 1676
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    #@4
    .line 1677
    .local v3, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    const-string/jumbo v0, "invalid slotIdx"

    #@7
    .line 1698
    .local v0, "err":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    #@a
    move-result v4

    #@b
    return v4

    #@c
    .line 1679
    .end local v0    # "err":Ljava/lang/String;
    .end local v3    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    #@f
    move-result-object v2

    #@10
    .line 1680
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v2, :cond_1

    #@12
    .line 1681
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    #@14
    .line 1682
    .restart local v3    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    const-string/jumbo v0, "phone == null"

    #@17
    .restart local v0    # "err":Ljava/lang/String;
    goto :goto_0

    #@18
    .line 1684
    .end local v0    # "err":Ljava/lang/String;
    .end local v3    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    #@1b
    move-result-object v1

    #@1c
    .line 1685
    .local v1, "icc":Lcom/android/internal/telephony/IccCard;
    if-nez v1, :cond_2

    #@1e
    .line 1686
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    #@20
    .line 1687
    .restart local v3    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    const-string/jumbo v0, "icc == null"

    #@23
    .restart local v0    # "err":Ljava/lang/String;
    goto :goto_0

    #@24
    .line 1689
    .end local v0    # "err":Ljava/lang/String;
    .end local v3    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_2
    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    #@27
    move-result-object v3

    #@28
    .line 1690
    .restart local v3    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    const-string/jumbo v0, ""

    #@2b
    .restart local v0    # "err":Ljava/lang/String;
    goto :goto_0
.end method

.method public getSlotId(I)I
    .locals 7
    .param p1, "subId"    # I

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    .line 1101
    const v5, 0x7fffffff

    #@4
    if-ne p1, v5, :cond_0

    #@6
    .line 1102
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    #@9
    move-result p1

    #@a
    .line 1104
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@d
    move-result v5

    #@e
    if-nez v5, :cond_1

    #@10
    .line 1105
    const-string/jumbo v5, "[getSlotId]- subId invalid"

    #@13
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@16
    .line 1106
    return v6

    #@17
    .line 1109
    :cond_1
    sget-object v5, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    #@19
    invoke-interface {v5}, Ljava/util/Map;->size()I

    #@1c
    move-result v3

    #@1d
    .line 1111
    .local v3, "size":I
    if-nez v3, :cond_2

    #@1f
    .line 1113
    const-string/jumbo v5, "[getSlotId]- size == 0, return SIM_NOT_INSERTED instead"

    #@22
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@25
    .line 1114
    return v6

    #@26
    .line 1117
    :cond_2
    sget-object v5, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    #@28
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@2b
    move-result-object v5

    #@2c
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2f
    move-result-object v1

    #@30
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@33
    move-result v5

    #@34
    if-eqz v5, :cond_4

    #@36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@39
    move-result-object v0

    #@3a
    check-cast v0, Ljava/util/Map$Entry;

    #@3c
    .line 1118
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@3f
    move-result-object v5

    #@40
    check-cast v5, Ljava/lang/Integer;

    #@42
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@45
    move-result v2

    #@46
    .line 1119
    .local v2, "sim":I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@49
    move-result-object v5

    #@4a
    check-cast v5, Ljava/lang/Integer;

    #@4c
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@4f
    move-result v4

    #@50
    .line 1121
    .local v4, "sub":I
    if-ne p1, v4, :cond_3

    #@52
    .line 1124
    return v2

    #@53
    .line 1128
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v2    # "sim":I
    .end local v4    # "sub":I
    :cond_4
    const-string/jumbo v5, "[getSlotId]- return fail"

    #@56
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@59
    .line 1129
    return v6
.end method

.method public getSubId(I)[I
    .locals 11
    .param p1, "slotIdx"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1146
    const v9, 0x7fffffff

    #@3
    if-ne p1, v9, :cond_0

    #@5
    .line 1147
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    #@8
    move-result v9

    #@9
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/SubscriptionController;->getSlotId(I)I

    #@c
    move-result p1

    #@d
    .line 1152
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    #@10
    move-result v9

    #@11
    if-nez v9, :cond_1

    #@13
    .line 1153
    new-instance v9, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v10, "[getSubId]- invalid slotIdx="

    #@1b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v9

    #@1f
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v9

    #@23
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v9

    #@27
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@2a
    .line 1154
    const/4 v9, 0x0

    #@2b
    return-object v9

    #@2c
    .line 1158
    :cond_1
    sget-object v9, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    #@2e
    invoke-interface {v9}, Ljava/util/Map;->size()I

    #@31
    move-result v4

    #@32
    .line 1159
    .local v4, "size":I
    if-nez v4, :cond_2

    #@34
    .line 1164
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getDummySubIds(I)[I

    #@37
    move-result-object v9

    #@38
    return-object v9

    #@39
    .line 1168
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    #@3b
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@3e
    .line 1169
    .local v8, "subIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v9, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    #@40
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@43
    move-result-object v9

    #@44
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@47
    move-result-object v1

    #@48
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@4b
    move-result v9

    #@4c
    if-eqz v9, :cond_4

    #@4e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@51
    move-result-object v0

    #@52
    check-cast v0, Ljava/util/Map$Entry;

    #@54
    .line 1170
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@57
    move-result-object v9

    #@58
    check-cast v9, Ljava/lang/Integer;

    #@5a
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    #@5d
    move-result v5

    #@5e
    .line 1171
    .local v5, "slot":I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@61
    move-result-object v9

    #@62
    check-cast v9, Ljava/lang/Integer;

    #@64
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    #@67
    move-result v6

    #@68
    .line 1172
    .local v6, "sub":I
    if-ne p1, v5, :cond_3

    #@6a
    .line 1173
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6d
    move-result-object v9

    #@6e
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@71
    goto :goto_0

    #@72
    .line 1178
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v5    # "slot":I
    .end local v6    # "sub":I
    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@75
    move-result v3

    #@76
    .line 1179
    .local v3, "numSubIds":I
    if-lez v3, :cond_6

    #@78
    .line 1180
    new-array v7, v3, [I

    #@7a
    .line 1181
    .local v7, "subIdArr":[I
    const/4 v2, 0x0

    #@7b
    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_5

    #@7d
    .line 1182
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@80
    move-result-object v9

    #@81
    check-cast v9, Ljava/lang/Integer;

    #@83
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    #@86
    move-result v9

    #@87
    aput v9, v7, v2

    #@89
    .line 1181
    add-int/lit8 v2, v2, 0x1

    #@8b
    goto :goto_1

    #@8c
    .line 1185
    :cond_5
    return-object v7

    #@8d
    .line 1187
    .end local v2    # "i":I
    .end local v7    # "subIdArr":[I
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    const-string/jumbo v10, "[getSubId]- numSubIds == 0, return DummySubIds slotIdx="

    #@95
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v9

    #@99
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v9

    #@9d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v9

    #@a1
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@a4
    .line 1188
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getDummySubIds(I)[I

    #@a7
    move-result-object v9

    #@a8
    return-object v9
.end method

.method public getSubIdUsingPhoneId(I)I
    .locals 3
    .param p1, "phoneId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1559
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    #@4
    move-result-object v0

    #@5
    .line 1560
    .local v0, "subIds":[I
    if-eqz v0, :cond_0

    #@7
    array-length v1, v0

    #@8
    if-nez v1, :cond_1

    #@a
    .line 1561
    :cond_0
    const/4 v1, -0x1

    #@b
    return v1

    #@c
    .line 1563
    :cond_1
    aget v1, v0, v2

    #@e
    return v1
.end method

.method public getSubIdUsingSlotId(I)[I
    .locals 1
    .param p1, "slotId"    # I

    #@0
    .prologue
    .line 1567
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getSubInfoUsingSlotIdWithCheck(IZLjava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1, "slotId"    # I
    .param p2, "needCheck"    # Z
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1572
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v1, "[getSubInfoUsingSlotIdWithCheck]+ slotId:"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@18
    .line 1574
    const-string/jumbo v0, "getSubInfoUsingSlotIdWithCheck"

    #@1b
    invoke-direct {p0, p3, v0}, Lcom/android/internal/telephony/SubscriptionController;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@1e
    move-result v0

    #@1f
    if-nez v0, :cond_0

    #@21
    .line 1575
    return-object v2

    #@22
    .line 1579
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@25
    move-result-wide v8

    #@26
    .line 1581
    .local v8, "identity":J
    const v0, 0x7fffffff

    #@29
    if-ne p1, v0, :cond_1

    #@2b
    .line 1582
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    #@2e
    move-result v0

    #@2f
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSlotId(I)I

    #@32
    move-result p1

    #@33
    .line 1584
    :cond_1
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    #@36
    move-result v0

    #@37
    if-nez v0, :cond_2

    #@39
    .line 1585
    const-string/jumbo v0, "[getSubInfoUsingSlotIdWithCheck]- invalid slotId"

    #@3c
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@3f
    .line 1619
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@42
    .line 1586
    return-object v2

    #@43
    .line 1589
    :cond_2
    if-eqz p2, :cond_3

    #@45
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->isSubInfoReady()Z

    #@48
    move-result v0

    #@49
    if-eqz v0, :cond_5

    #@4b
    .line 1594
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@4d
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@50
    move-result-object v0

    #@51
    sget-object v1, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    #@53
    .line 1595
    const-string/jumbo v3, "sim_id=?"

    #@56
    .line 1596
    const/4 v2, 0x1

    #@57
    new-array v4, v2, [Ljava/lang/String;

    #@59
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@5c
    move-result-object v2

    #@5d
    const/4 v5, 0x0

    #@5e
    aput-object v2, v4, v5

    #@60
    .line 1595
    const/4 v2, 0x0

    #@61
    .line 1596
    const/4 v5, 0x0

    #@62
    .line 1594
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@65
    move-result-object v6

    #@66
    .line 1597
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    #@67
    .line 1599
    .local v10, "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v6, :cond_7

    #@69
    .end local v10    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :goto_0
    move-object v11, v10

    #@6a
    .line 1600
    .local v11, "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    #@6d
    move-result v0

    #@6e
    if-eqz v0, :cond_6

    #@70
    .line 1601
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoRecord(Landroid/database/Cursor;)Landroid/telephony/SubscriptionInfo;

    #@73
    move-result-object v7

    #@74
    .line 1602
    .local v7, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v7, :cond_a

    #@76
    .line 1603
    if-nez v11, :cond_9

    #@78
    .line 1604
    new-instance v10, Ljava/util/ArrayList;

    #@7a
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@7d
    .line 1606
    .end local v11    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .local v10, "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :goto_1
    :try_start_3
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@80
    goto :goto_0

    #@81
    .line 1610
    :catchall_0
    move-exception v0

    #@82
    .line 1611
    .end local v7    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :goto_2
    if-eqz v6, :cond_4

    #@84
    .line 1612
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@87
    .line 1610
    :cond_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@88
    .line 1618
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v10    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_1
    move-exception v0

    #@89
    .line 1619
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@8c
    .line 1618
    throw v0

    #@8d
    .line 1590
    :cond_5
    :try_start_5
    const-string/jumbo v0, "[getSubInfoUsingSlotIdWithCheck]- not ready"

    #@90
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@93
    .line 1619
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@96
    .line 1591
    return-object v2

    #@97
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :cond_6
    move-object v10, v11

    #@98
    .line 1611
    .end local v11    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :cond_7
    if-eqz v6, :cond_8

    #@9a
    .line 1612
    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@9d
    .line 1615
    :cond_8
    const-string/jumbo v0, "[getSubInfoUsingSlotId]- null info return"

    #@a0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@a3
    .line 1619
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@a6
    .line 1617
    return-object v10

    #@a7
    .line 1610
    .restart local v11    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_2
    move-exception v0

    #@a8
    move-object v10, v11

    #@a9
    .end local v11    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v10    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    goto :goto_2

    #@aa
    .end local v10    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v7    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .restart local v11    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :cond_9
    move-object v10, v11

    #@ab
    .end local v11    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v10    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    goto :goto_1

    #@ac
    .end local v10    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v11    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :cond_a
    move-object v10, v11

    #@ad
    .end local v11    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v10    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    goto :goto_0
.end method

.method public getSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "subId"    # I
    .param p2, "propKey"    # Ljava/lang/String;
    .param p3, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    .line 1749
    const-string/jumbo v1, "getSubInfoUsingSlotIdWithCheck"

    #@6
    invoke-direct {p0, p3, v1}, Lcom/android/internal/telephony/SubscriptionController;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 1750
    return-object v5

    #@d
    .line 1752
    :cond_0
    const/4 v7, 0x0

    #@e
    .line 1753
    .local v7, "resultValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@10
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@13
    move-result-object v0

    #@14
    .line 1754
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    #@16
    .line 1755
    new-array v2, v4, [Ljava/lang/String;

    #@18
    aput-object p2, v2, v10

    #@1a
    .line 1756
    const-string/jumbo v3, "_id=?"

    #@1d
    .line 1757
    new-array v4, v4, [Ljava/lang/String;

    #@1f
    new-instance v8, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v8

    #@28
    const-string/jumbo v9, ""

    #@2b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v8

    #@2f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v8

    #@33
    aput-object v8, v4, v10

    #@35
    .line 1754
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@38
    move-result-object v6

    #@39
    .line 1760
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_6

    #@3b
    .line 1761
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    #@3e
    move-result v1

    #@3f
    if-eqz v1, :cond_5

    #@41
    .line 1762
    const-string/jumbo v1, "enable_cmas_extreme_threat_alerts"

    #@44
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v1

    #@48
    if-eqz v1, :cond_3

    #@4a
    .line 1775
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const/4 v2, 0x0

    #@50
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    #@53
    move-result v2

    #@54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@57
    move-result-object v1

    #@58
    const-string/jumbo v2, ""

    #@5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@62
    move-result-object v7

    #@63
    .line 1788
    .end local v7    # "resultValue":Ljava/lang/String;
    :goto_0
    if-eqz v6, :cond_2

    #@65
    .line 1789
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@68
    .line 1792
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v2, "getSubscriptionProperty Query value = "

    #@70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v1

    #@74
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v1

    #@78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v1

    #@7c
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@7f
    .line 1793
    return-object v7

    #@80
    .line 1762
    .restart local v7    # "resultValue":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string/jumbo v1, "enable_cmas_severe_threat_alerts"

    #@83
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@86
    move-result v1

    #@87
    if-nez v1, :cond_1

    #@89
    const-string/jumbo v1, "enable_cmas_amber_alerts"

    #@8c
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8f
    move-result v1

    #@90
    if-nez v1, :cond_1

    #@92
    const-string/jumbo v1, "enable_emergency_alerts"

    #@95
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@98
    move-result v1

    #@99
    if-nez v1, :cond_1

    #@9b
    const-string/jumbo v1, "alert_sound_duration"

    #@9e
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a1
    move-result v1

    #@a2
    if-nez v1, :cond_1

    #@a4
    const-string/jumbo v1, "alert_reminder_interval"

    #@a7
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@aa
    move-result v1

    #@ab
    if-nez v1, :cond_1

    #@ad
    const-string/jumbo v1, "enable_alert_vibrate"

    #@b0
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b3
    move-result v1

    #@b4
    if-nez v1, :cond_1

    #@b6
    const-string/jumbo v1, "enable_alert_speech"

    #@b9
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bc
    move-result v1

    #@bd
    if-nez v1, :cond_1

    #@bf
    const-string/jumbo v1, "enable_etws_test_alerts"

    #@c2
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c5
    move-result v1

    #@c6
    if-nez v1, :cond_1

    #@c8
    const-string/jumbo v1, "enable_channel_50_alerts"

    #@cb
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ce
    move-result v1

    #@cf
    if-nez v1, :cond_1

    #@d1
    const-string/jumbo v1, "enable_cmas_test_alerts"

    #@d4
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d7
    move-result v1

    #@d8
    if-nez v1, :cond_1

    #@da
    const-string/jumbo v1, "show_cmas_opt_out_dialog"

    #@dd
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e0
    move-result v1

    #@e1
    if-nez v1, :cond_1

    #@e3
    .line 1778
    const-string/jumbo v1, "Invalid column name"

    #@e6
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e9
    goto/16 :goto_0

    #@eb
    .line 1787
    :catchall_0
    move-exception v1

    #@ec
    .line 1788
    if-eqz v6, :cond_4

    #@ee
    .line 1789
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@f1
    .line 1787
    :cond_4
    throw v1

    #@f2
    .line 1782
    :cond_5
    :try_start_2
    const-string/jumbo v1, "Valid row not present in db"

    #@f5
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@f8
    goto/16 :goto_0

    #@fa
    .line 1785
    :cond_6
    const-string/jumbo v1, "Query failed"

    #@fd
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@100
    goto/16 :goto_0
.end method

.method protected init(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    #@0
    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@2
    .line 175
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mCM:Lcom/android/internal/telephony/CallManager;

    #@8
    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@a
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@10
    .line 178
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@12
    const-string/jumbo v1, "appops"

    #@15
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/app/AppOpsManager;

    #@1b
    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mAppOps:Landroid/app/AppOpsManager;

    #@1d
    .line 180
    const-string/jumbo v0, "isub"

    #@20
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@23
    move-result-object v0

    #@24
    if-nez v0, :cond_0

    #@26
    .line 181
    const-string/jumbo v0, "isub"

    #@29
    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@2c
    .line 184
    :cond_0
    const-string/jumbo v0, "[SubscriptionController] init by Context"

    #@2f
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@32
    .line 173
    return-void
.end method

.method public isActiveSubId(I)Z
    .locals 3
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 1660
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 1661
    sget-object v1, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    #@8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v2

    #@c
    invoke-interface {v1, v2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    .line 1664
    .local v0, "retVal":Z
    :goto_0
    return v0

    #@11
    .line 1660
    .end local v0    # "retVal":Z
    :cond_0
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method public notifySubscriptionInfoChanged()V
    .locals 3

    #@0
    .prologue
    .line 247
    const-string/jumbo v2, "telephony.registry"

    #@3
    .line 246
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v2

    #@7
    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    #@a
    move-result-object v1

    #@b
    .line 249
    .local v1, "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    :try_start_0
    const-string/jumbo v2, "notifySubscriptionInfoChanged:"

    #@e
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@11
    .line 250
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifySubscriptionInfoChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 256
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->broadcastSimInfoContentChanged()V

    #@17
    .line 245
    return-void

    #@18
    .line 251
    :catch_0
    move-exception v0

    #@19
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setDataRoaming(II)I
    .locals 10
    .param p1, "roaming"    # I
    .param p2, "subId"    # I

    #@0
    .prologue
    .line 1043
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v5, "[setDataRoaming]+ roaming:"

    #@8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v4

    #@10
    const-string/jumbo v5, " subId:"

    #@13
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@22
    .line 1045
    const-string/jumbo v4, "setDataRoaming"

    #@25
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    #@28
    .line 1048
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@2b
    move-result-wide v0

    #@2c
    .line 1050
    .local v0, "identity":J
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->validateSubId(I)V

    #@2f
    .line 1051
    if-gez p1, :cond_0

    #@31
    .line 1052
    const-string/jumbo v4, "[setDataRoaming]- fail"

    #@34
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    .line 1053
    const/4 v4, -0x1

    #@38
    .line 1066
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3b
    .line 1053
    return v4

    #@3c
    .line 1055
    :cond_0
    :try_start_1
    new-instance v3, Landroid/content/ContentValues;

    #@3e
    const/4 v4, 0x1

    #@3f
    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    #@42
    .line 1056
    .local v3, "value":Landroid/content/ContentValues;
    const-string/jumbo v4, "data_roaming"

    #@45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@48
    move-result-object v5

    #@49
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@4c
    .line 1057
    new-instance v4, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v5, "[setDataRoaming]- roaming:"

    #@54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v4

    #@58
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    const-string/jumbo v5, " set"

    #@5f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v4

    #@67
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@6a
    .line 1059
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@6c
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6f
    move-result-object v4

    #@70
    sget-object v5, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    #@72
    .line 1060
    new-instance v6, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    const-string/jumbo v7, "_id="

    #@7a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v6

    #@7e
    .line 1061
    int-to-long v8, p2

    #@7f
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@82
    move-result-object v7

    #@83
    .line 1060
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v6

    #@87
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v6

    #@8b
    .line 1061
    const/4 v7, 0x0

    #@8c
    .line 1059
    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@8f
    move-result v2

    #@90
    .line 1062
    .local v2, "result":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@93
    .line 1066
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@96
    .line 1064
    return v2

    #@97
    .line 1065
    .end local v2    # "result":I
    .end local v3    # "value":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    #@98
    .line 1066
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@9b
    .line 1065
    throw v4
.end method

.method public setDefaultDataSubId(I)V
    .locals 10
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 1406
    const-string/jumbo v8, "setDefaultDataSubId"

    #@3
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    #@6
    .line 1408
    const v8, 0x7fffffff

    #@9
    if-ne p1, v8, :cond_0

    #@b
    .line 1409
    new-instance v8, Ljava/lang/RuntimeException;

    #@d
    const-string/jumbo v9, "setDefaultDataSubId called with DEFAULT_SUB_ID"

    #@10
    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@13
    throw v8

    #@14
    .line 1412
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    #@17
    move-result-object v5

    #@18
    .line 1413
    .local v5, "proxyController":Lcom/android/internal/telephony/ProxyController;
    sget-object v8, Lcom/android/internal/telephony/SubscriptionController;->sPhones:[Lcom/android/internal/telephony/Phone;

    #@1a
    array-length v2, v8

    #@1b
    .line 1414
    .local v2, "len":I
    new-instance v8, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v9, "[setDefaultDataSubId] num phones="

    #@23
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v8

    #@27
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v8

    #@2b
    const-string/jumbo v9, ", subId="

    #@2e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v8

    #@32
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v8

    #@36
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v8

    #@3a
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@3d
    .line 1416
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@40
    move-result v8

    #@41
    if-eqz v8, :cond_3

    #@43
    .line 1418
    new-array v7, v2, [Landroid/telephony/RadioAccessFamily;

    #@45
    .line 1419
    .local v7, "rafs":[Landroid/telephony/RadioAccessFamily;
    const/4 v0, 0x0

    #@46
    .line 1420
    .local v0, "atLeastOneMatch":Z
    const/4 v4, 0x0

    #@47
    .local v4, "phoneId":I
    :goto_0
    if-ge v4, v2, :cond_2

    #@49
    .line 1421
    sget-object v8, Lcom/android/internal/telephony/SubscriptionController;->sPhones:[Lcom/android/internal/telephony/Phone;

    #@4b
    aget-object v3, v8, v4

    #@4d
    .line 1423
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@50
    move-result v1

    #@51
    .line 1424
    .local v1, "id":I
    if-ne v1, p1, :cond_1

    #@53
    .line 1426
    invoke-virtual {v5}, Lcom/android/internal/telephony/ProxyController;->getMaxRafSupported()I

    #@56
    move-result v6

    #@57
    .line 1427
    .local v6, "raf":I
    const/4 v0, 0x1

    #@58
    .line 1432
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v9, "[setDefaultDataSubId] phoneId="

    #@60
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v8

    #@64
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@67
    move-result-object v8

    #@68
    const-string/jumbo v9, " subId="

    #@6b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v8

    #@6f
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@72
    move-result-object v8

    #@73
    const-string/jumbo v9, " RAF="

    #@76
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v8

    #@7a
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v8

    #@7e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v8

    #@82
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@85
    .line 1433
    new-instance v8, Landroid/telephony/RadioAccessFamily;

    #@87
    invoke-direct {v8, v4, v6}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    #@8a
    aput-object v8, v7, v4

    #@8c
    .line 1420
    add-int/lit8 v4, v4, 0x1

    #@8e
    goto :goto_0

    #@8f
    .line 1430
    .end local v6    # "raf":I
    :cond_1
    invoke-virtual {v5}, Lcom/android/internal/telephony/ProxyController;->getMinRafSupported()I

    #@92
    move-result v6

    #@93
    .restart local v6    # "raf":I
    goto :goto_1

    #@94
    .line 1435
    .end local v1    # "id":I
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v6    # "raf":I
    :cond_2
    if-eqz v0, :cond_4

    #@96
    .line 1436
    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    #@99
    .line 1443
    .end local v0    # "atLeastOneMatch":Z
    .end local v4    # "phoneId":I
    .end local v7    # "rafs":[Landroid/telephony/RadioAccessFamily;
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->updateAllDataConnectionTrackers()V

    #@9c
    .line 1445
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@9e
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@a1
    move-result-object v8

    #@a2
    .line 1446
    const-string/jumbo v9, "multi_sim_data_call"

    #@a5
    .line 1445
    invoke-static {v8, v9, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@a8
    .line 1447
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->broadcastDefaultDataSubIdChanged(I)V

    #@ab
    .line 1405
    return-void

    #@ac
    .line 1438
    .restart local v0    # "atLeastOneMatch":Z
    .restart local v4    # "phoneId":I
    .restart local v7    # "rafs":[Landroid/telephony/RadioAccessFamily;
    :cond_4
    const-string/jumbo v8, "[setDefaultDataSubId] no valid subId\'s found - not updating."

    #@af
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@b2
    goto :goto_2
.end method

.method public setDefaultSmsSubId(I)V
    .locals 2
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 1335
    const-string/jumbo v0, "setDefaultSmsSubId"

    #@3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    #@6
    .line 1337
    const v0, 0x7fffffff

    #@9
    if-ne p1, v0, :cond_0

    #@b
    .line 1338
    new-instance v0, Ljava/lang/RuntimeException;

    #@d
    const-string/jumbo v1, "setDefaultSmsSubId called with DEFAULT_SUB_ID"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 1340
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v1, "[setDefaultSmsSubId] subId="

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@2b
    .line 1341
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@2d
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@30
    move-result-object v0

    #@31
    .line 1342
    const-string/jumbo v1, "multi_sim_sms"

    #@34
    .line 1341
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@37
    .line 1343
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->broadcastDefaultSmsSubIdChanged(I)V

    #@3a
    .line 1334
    return-void
.end method

.method public setDefaultVoiceSubId(I)V
    .locals 2
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 1366
    const-string/jumbo v0, "setDefaultVoiceSubId"

    #@3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    #@6
    .line 1368
    const v0, 0x7fffffff

    #@9
    if-ne p1, v0, :cond_0

    #@b
    .line 1369
    new-instance v0, Ljava/lang/RuntimeException;

    #@d
    const-string/jumbo v1, "setDefaultVoiceSubId called with DEFAULT_SUB_ID"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 1371
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v1, "[setDefaultVoiceSubId] subId="

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@2b
    .line 1372
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@2d
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@30
    move-result-object v0

    #@31
    .line 1373
    const-string/jumbo v1, "multi_sim_voice_call"

    #@34
    .line 1372
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@37
    .line 1374
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->broadcastDefaultVoiceSubIdChanged(I)V

    #@3a
    .line 1365
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;I)I
    .locals 2
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "subId"    # I

    #@0
    .prologue
    .line 943
    const-wide/16 v0, -0x1

    #@2
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDisplayNameUsingSrc(Ljava/lang/String;IJ)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setDisplayNameUsingSrc(Ljava/lang/String;IJ)I
    .locals 11
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "nameSource"    # J

    #@0
    .prologue
    .line 957
    new-instance v5, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v6, "[setDisplayName]+  displayName:"

    #@8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v5

    #@c
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v5

    #@10
    const-string/jumbo v6, " subId:"

    #@13
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v5

    #@17
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v5

    #@1b
    .line 958
    const-string/jumbo v6, " nameSource:"

    #@1e
    .line 957
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@25
    move-result-object v5

    #@26
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v5

    #@2a
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@2d
    .line 961
    const-string/jumbo v5, "setDisplayNameUsingSrc"

    #@30
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    #@33
    .line 964
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@36
    move-result-wide v0

    #@37
    .line 966
    .local v0, "identity":J
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->validateSubId(I)V

    #@3a
    .line 968
    if-nez p1, :cond_1

    #@3c
    .line 969
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@3e
    const v6, 0x104000e

    #@41
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    .line 973
    .local v2, "nameToSet":Ljava/lang/String;
    :goto_0
    new-instance v4, Landroid/content/ContentValues;

    #@47
    const/4 v5, 0x1

    #@48
    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    #@4b
    .line 974
    .local v4, "value":Landroid/content/ContentValues;
    const-string/jumbo v5, "display_name"

    #@4e
    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@51
    .line 975
    const-wide/16 v6, 0x0

    #@53
    cmp-long v5, p3, v6

    #@55
    if-ltz v5, :cond_0

    #@57
    .line 976
    new-instance v5, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v6, "Set nameSource="

    #@5f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v5

    #@63
    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@66
    move-result-object v5

    #@67
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v5

    #@6b
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@6e
    .line 977
    const-string/jumbo v5, "name_source"

    #@71
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@74
    move-result-object v6

    #@75
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@78
    .line 979
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v6, "[setDisplayName]- mDisplayName:"

    #@80
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v5

    #@84
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v5

    #@88
    const-string/jumbo v6, " set"

    #@8b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v5

    #@8f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v5

    #@93
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@96
    .line 981
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@98
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@9b
    move-result-object v5

    #@9c
    sget-object v6, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    #@9e
    .line 982
    new-instance v7, Ljava/lang/StringBuilder;

    #@a0
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@a3
    const-string/jumbo v8, "_id="

    #@a6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v7

    #@aa
    .line 983
    int-to-long v8, p2

    #@ab
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@ae
    move-result-object v8

    #@af
    .line 982
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v7

    #@b3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v7

    #@b7
    .line 983
    const/4 v8, 0x0

    #@b8
    .line 981
    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@bb
    move-result v3

    #@bc
    .line 984
    .local v3, "result":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@bf
    .line 988
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@c2
    .line 986
    return v3

    #@c3
    .line 971
    .end local v2    # "nameToSet":Ljava/lang/String;
    .end local v3    # "result":I
    .end local v4    # "value":Landroid/content/ContentValues;
    :cond_1
    move-object v2, p1

    #@c4
    .restart local v2    # "nameToSet":Ljava/lang/String;
    goto :goto_0

    #@c5
    .line 987
    .end local v2    # "nameToSet":Ljava/lang/String;
    :catchall_0
    move-exception v5

    #@c6
    .line 988
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@c9
    .line 987
    throw v5
.end method

.method public setDisplayNumber(Ljava/lang/String;I)I
    .locals 10
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "subId"    # I

    #@0
    .prologue
    .line 1000
    new-instance v5, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v6, "[setDisplayNumber]+ subId:"

    #@8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v5

    #@c
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v5

    #@10
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v5

    #@14
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@17
    .line 1002
    const-string/jumbo v5, "setDisplayNumber"

    #@1a
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    #@1d
    .line 1005
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@20
    move-result-wide v0

    #@21
    .line 1007
    .local v0, "identity":J
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->validateSubId(I)V

    #@24
    .line 1009
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    #@27
    move-result v2

    #@28
    .line 1011
    .local v2, "phoneId":I
    if-eqz p1, :cond_0

    #@2a
    if-gez v2, :cond_1

    #@2c
    .line 1013
    :cond_0
    const-string/jumbo v5, "[setDispalyNumber]- fail"

    #@2f
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    .line 1014
    const/4 v5, -0x1

    #@33
    .line 1031
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@36
    .line 1014
    return v5

    #@37
    .line 1012
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@39
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    #@3c
    move-result v5

    #@3d
    if-ge v2, v5, :cond_0

    #@3f
    .line 1016
    new-instance v4, Landroid/content/ContentValues;

    #@41
    const/4 v5, 0x1

    #@42
    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    #@45
    .line 1017
    .local v4, "value":Landroid/content/ContentValues;
    const-string/jumbo v5, "number"

    #@48
    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@4b
    .line 1023
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@4d
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@50
    move-result-object v5

    #@51
    sget-object v6, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    #@53
    .line 1024
    new-instance v7, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v8, "_id="

    #@5b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v7

    #@5f
    .line 1025
    int-to-long v8, p2

    #@60
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@63
    move-result-object v8

    #@64
    .line 1024
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v7

    #@68
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v7

    #@6c
    .line 1025
    const/4 v8, 0x0

    #@6d
    .line 1023
    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@70
    move-result v3

    #@71
    .line 1026
    .local v3, "result":I
    new-instance v5, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v6, "[setDisplayNumber]- update result :"

    #@79
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v5

    #@7d
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@80
    move-result-object v5

    #@81
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v5

    #@85
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@88
    .line 1027
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8b
    .line 1031
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@8e
    .line 1029
    return v3

    #@8f
    .line 1030
    .end local v2    # "phoneId":I
    .end local v3    # "result":I
    .end local v4    # "value":Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    #@90
    .line 1031
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@93
    .line 1030
    throw v5
.end method

.method public setIconTint(II)I
    .locals 10
    .param p1, "tint"    # I
    .param p2, "subId"    # I

    #@0
    .prologue
    .line 912
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v5, "[setIconTint]+ tint:"

    #@8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v4

    #@10
    const-string/jumbo v5, " subId:"

    #@13
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@22
    .line 914
    const-string/jumbo v4, "setIconTint"

    #@25
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    #@28
    .line 917
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@2b
    move-result-wide v0

    #@2c
    .line 919
    .local v0, "identity":J
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->validateSubId(I)V

    #@2f
    .line 920
    new-instance v3, Landroid/content/ContentValues;

    #@31
    const/4 v4, 0x1

    #@32
    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    #@35
    .line 921
    .local v3, "value":Landroid/content/ContentValues;
    const-string/jumbo v4, "color"

    #@38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3b
    move-result-object v5

    #@3c
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@3f
    .line 922
    new-instance v4, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v5, "[setIconTint]- tint:"

    #@47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    const-string/jumbo v5, " set"

    #@52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v4

    #@5a
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@5d
    .line 924
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@5f
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@62
    move-result-object v4

    #@63
    sget-object v5, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    #@65
    .line 925
    new-instance v6, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v7, "_id="

    #@6d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v6

    #@71
    .line 926
    int-to-long v8, p2

    #@72
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@75
    move-result-object v7

    #@76
    .line 925
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v6

    #@7a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v6

    #@7e
    .line 926
    const/4 v7, 0x0

    #@7f
    .line 924
    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@82
    move-result v2

    #@83
    .line 927
    .local v2, "result":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@86
    .line 931
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@89
    .line 929
    return v2

    #@8a
    .line 930
    .end local v2    # "result":I
    .end local v3    # "value":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    #@8b
    .line 931
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@8e
    .line 930
    throw v4
.end method

.method public setMccMnc(Ljava/lang/String;I)I
    .locals 10
    .param p1, "mccMnc"    # Ljava/lang/String;
    .param p2, "subId"    # I

    #@0
    .prologue
    .line 1077
    const/4 v1, 0x0

    #@1
    .line 1078
    .local v1, "mcc":I
    const/4 v2, 0x0

    #@2
    .line 1080
    .local v2, "mnc":I
    const/4 v5, 0x0

    #@3
    const/4 v6, 0x3

    #@4
    :try_start_0
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@7
    move-result-object v5

    #@8
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@b
    move-result v1

    #@c
    .line 1081
    const/4 v5, 0x3

    #@d
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@10
    move-result-object v5

    #@11
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result v2

    #@15
    .line 1085
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v6, "[setMccMnc]+ mcc/mnc:"

    #@1d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v5

    #@25
    const-string/jumbo v6, "/"

    #@28
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v5

    #@2c
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v5

    #@30
    const-string/jumbo v6, " subId:"

    #@33
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v5

    #@3f
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@42
    .line 1086
    new-instance v4, Landroid/content/ContentValues;

    #@44
    const/4 v5, 0x2

    #@45
    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    #@48
    .line 1087
    .local v4, "value":Landroid/content/ContentValues;
    const-string/jumbo v5, "mcc"

    #@4b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4e
    move-result-object v6

    #@4f
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@52
    .line 1088
    const-string/jumbo v5, "mnc"

    #@55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@58
    move-result-object v6

    #@59
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@5c
    .line 1090
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@5e
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@61
    move-result-object v5

    #@62
    sget-object v6, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    #@64
    .line 1091
    new-instance v7, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v8, "_id="

    #@6c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v7

    #@70
    int-to-long v8, p2

    #@71
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@74
    move-result-object v8

    #@75
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v7

    #@79
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v7

    #@7d
    const/4 v8, 0x0

    #@7e
    .line 1090
    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@81
    move-result v3

    #@82
    .line 1092
    .local v3, "result":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V

    #@85
    .line 1094
    return v3

    #@86
    .line 1082
    .end local v3    # "result":I
    .end local v4    # "value":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    #@87
    .line 1083
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    const-string/jumbo v6, "[setMccMnc] - couldn\'t parse mcc/mnc: "

    #@8f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v5

    #@93
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v5

    #@97
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v5

    #@9b
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V

    #@9e
    goto/16 :goto_0
.end method

.method public setPlmnSpn(IZLjava/lang/String;ZLjava/lang/String;)Z
    .locals 9
    .param p1, "slotId"    # I
    .param p2, "showPlmn"    # Z
    .param p3, "plmn"    # Ljava/lang/String;
    .param p4, "showSpn"    # Z
    .param p5, "spn"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 840
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v5

    #@4
    .line 841
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    #@7
    move-result-object v3

    #@8
    .line 842
    .local v3, "subIds":[I
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@a
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@d
    move-result-object v4

    #@e
    .line 843
    sget-object v6, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    #@10
    invoke-virtual {v6}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@13
    move-result-object v6

    #@14
    const/4 v7, 0x0

    #@15
    .line 842
    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    #@18
    move-result-object v4

    #@19
    if-eqz v4, :cond_0

    #@1b
    .line 844
    if-nez v3, :cond_1

    #@1d
    .line 850
    :cond_0
    const-string/jumbo v4, "[setPlmnSpn] No valid subscription to store info"

    #@20
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@23
    .line 851
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    monitor-exit v5

    #@27
    .line 852
    return v8

    #@28
    .line 845
    :cond_1
    const/4 v4, 0x0

    #@29
    :try_start_1
    aget v4, v3, v4

    #@2b
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@2e
    move-result v4

    #@2f
    if-eqz v4, :cond_0

    #@31
    .line 854
    const-string/jumbo v0, ""

    #@34
    .line 855
    .local v0, "carrierText":Ljava/lang/String;
    if-eqz p2, :cond_3

    #@36
    .line 856
    move-object v0, p3

    #@37
    .line 857
    if-eqz p4, :cond_2

    #@39
    .line 859
    invoke-static {p5, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3c
    move-result v4

    #@3d
    if-nez v4, :cond_2

    #@3f
    .line 860
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@41
    .line 861
    const v6, 0x104052c

    #@44
    .line 860
    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@4b
    move-result-object v2

    #@4c
    .line 862
    .local v2, "separator":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v4

    #@55
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v4

    #@59
    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v4

    #@5d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v0

    #@61
    .line 869
    .end local v2    # "separator":Ljava/lang/String;
    :cond_2
    :goto_0
    const/4 v1, 0x0

    #@62
    .local v1, "i":I
    :goto_1
    array-length v4, v3

    #@63
    if-ge v1, v4, :cond_4

    #@65
    .line 870
    aget v4, v3, v1

    #@67
    invoke-direct {p0, v0, v4}, Lcom/android/internal/telephony/SubscriptionController;->setCarrierText(Ljava/lang/String;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6a
    .line 869
    add-int/lit8 v1, v1, 0x1

    #@6c
    goto :goto_1

    #@6d
    .line 866
    .end local v1    # "i":I
    :cond_3
    if-eqz p4, :cond_2

    #@6f
    .line 867
    move-object v0, p5

    #@70
    goto :goto_0

    #@71
    .line 872
    .restart local v1    # "i":I
    :cond_4
    const/4 v4, 0x1

    #@72
    monitor-exit v5

    #@73
    return v4

    #@74
    .line 840
    .end local v0    # "carrierText":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v3    # "subIds":[I
    :catchall_0
    move-exception v4

    #@75
    monitor-exit v5

    #@76
    throw v4
.end method

.method public setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "propKey"    # Ljava/lang/String;
    .param p3, "propValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1710
    const-string/jumbo v4, "setSubscriptionProperty"

    #@3
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    #@6
    .line 1711
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@9
    move-result-wide v2

    #@a
    .line 1712
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@f
    move-result-object v0

    #@10
    .line 1713
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    #@12
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    #@15
    .line 1714
    .local v1, "value":Landroid/content/ContentValues;
    const-string/jumbo v4, "enable_cmas_extreme_threat_alerts"

    #@18
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_1

    #@1e
    .line 1727
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@21
    move-result v4

    #@22
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v1, p2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@29
    .line 1734
    :goto_0
    sget-object v4, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    #@2b
    .line 1735
    new-instance v5, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v6, "_id="

    #@33
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    .line 1736
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3a
    move-result-object v6

    #@3b
    .line 1735
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    .line 1736
    const/4 v6, 0x0

    #@44
    .line 1734
    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@47
    .line 1737
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4a
    .line 1709
    return-void

    #@4b
    .line 1714
    :cond_1
    const-string/jumbo v4, "enable_cmas_severe_threat_alerts"

    #@4e
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@51
    move-result v4

    #@52
    if-nez v4, :cond_0

    #@54
    const-string/jumbo v4, "enable_cmas_amber_alerts"

    #@57
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5a
    move-result v4

    #@5b
    if-nez v4, :cond_0

    #@5d
    const-string/jumbo v4, "enable_emergency_alerts"

    #@60
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@63
    move-result v4

    #@64
    if-nez v4, :cond_0

    #@66
    const-string/jumbo v4, "alert_sound_duration"

    #@69
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6c
    move-result v4

    #@6d
    if-nez v4, :cond_0

    #@6f
    const-string/jumbo v4, "alert_reminder_interval"

    #@72
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@75
    move-result v4

    #@76
    if-nez v4, :cond_0

    #@78
    const-string/jumbo v4, "enable_alert_vibrate"

    #@7b
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result v4

    #@7f
    if-nez v4, :cond_0

    #@81
    const-string/jumbo v4, "enable_alert_speech"

    #@84
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@87
    move-result v4

    #@88
    if-nez v4, :cond_0

    #@8a
    const-string/jumbo v4, "enable_etws_test_alerts"

    #@8d
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@90
    move-result v4

    #@91
    if-nez v4, :cond_0

    #@93
    const-string/jumbo v4, "enable_channel_50_alerts"

    #@96
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@99
    move-result v4

    #@9a
    if-nez v4, :cond_0

    #@9c
    const-string/jumbo v4, "enable_cmas_test_alerts"

    #@9f
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a2
    move-result v4

    #@a3
    if-nez v4, :cond_0

    #@a5
    const-string/jumbo v4, "show_cmas_opt_out_dialog"

    #@a8
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ab
    move-result v4

    #@ac
    if-nez v4, :cond_0

    #@ae
    .line 1730
    const-string/jumbo v4, "Invalid column name"

    #@b1
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@b4
    goto/16 :goto_0
.end method

.method public updatePhonesAvailability([Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .param p1, "phones"    # [Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 1633
    sput-object p1, Lcom/android/internal/telephony/SubscriptionController;->sPhones:[Lcom/android/internal/telephony/Phone;

    #@2
    .line 1632
    return-void
.end method
