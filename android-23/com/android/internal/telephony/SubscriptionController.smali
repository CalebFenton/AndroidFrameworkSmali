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

.field protected static sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

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

.field private final mAppOps:Landroid/app/AppOpsManager;

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
    .line 123
    const/4 v0, 0x0

    #@1
    sput-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    #@3
    .line 133
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@8
    .line 132
    sput-object v0, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    #@a
    .line 134
    const/4 v0, -0x1

    #@b
    sput v0, Lcom/android/internal/telephony/SubscriptionController;->mDefaultFallbackSubId:I

    #@d
    .line 135
    const v0, 0x7fffffff

    #@10
    sput v0, Lcom/android/internal/telephony/SubscriptionController;->mDefaultPhoneId:I

    #@12
    .line 75
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    #@0
    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/internal/telephony/ISub$Stub;-><init>()V

    #@3
    .line 80
    new-instance v0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    #@5
    const/16 v1, 0x1f4

    #@7
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;-><init>(I)V

    #@a
    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    #@c
    .line 120
    new-instance v0, Ljava/lang/Object;

    #@e
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLock:Ljava/lang/Object;

    #@13
    .line 171
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@15
    .line 172
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mCM:Lcom/android/internal/telephony/CallManager;

    #@1b
    .line 173
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@1d
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@23
    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@25
    const-class v1, Landroid/app/AppOpsManager;

    #@27
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Landroid/app/AppOpsManager;

    #@2d
    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mAppOps:Landroid/app/AppOpsManager;

    #@2f
    .line 176
    const-string/jumbo v0, "isub"

    #@32
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@35
    move-result-object v0

    #@36
    if-nez v0, :cond_0

    #@38
    .line 177
    const-string/jumbo v0, "isub"

    #@3b
    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@3e
    .line 180
    :cond_0
    const-string/jumbo v0, "[SubscriptionController] init by Context"

    #@41
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@44
    .line 170
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/internal/telephony/ISub$Stub;-><init>()V

    #@3
    .line 80
    new-instance v0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    #@5
    const/16 v1, 0x1f4

    #@7
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;-><init>(I)V

    #@a
    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    #@c
    .line 120
    new-instance v0, Ljava/lang/Object;

    #@e
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLock:Ljava/lang/Object;

    #@13
    .line 188
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@19
    .line 189
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mCM:Lcom/android/internal/telephony/CallManager;

    #@1f
    .line 190
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
    .line 192
    const-string/jumbo v0, "isub"

    #@2e
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@31
    move-result-object v0

    #@32
    if-nez v0, :cond_0

    #@34
    .line 193
    const-string/jumbo v0, "isub"

    #@37
    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@3a
    .line 196
    :cond_0
    const-string/jumbo v0, "[SubscriptionController] init by Phone"

    #@3d
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@40
    .line 187
    return-void
.end method

.method private broadcastDefaultDataSubIdChanged(I)V
    .locals 3
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 1460
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
    .line 1461
    new-instance v0, Landroid/content/Intent;

    #@19
    const-string/jumbo v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    #@1c
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1f
    .line 1462
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    #@21
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@24
    .line 1463
    const-string/jumbo v1, "subscription"

    #@27
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@2a
    .line 1464
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@2c
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@2e
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@31
    .line 1458
    return-void
.end method

.method private broadcastDefaultSmsSubIdChanged(I)V
    .locals 3
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 1345
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
    .line 1346
    new-instance v0, Landroid/content/Intent;

    #@19
    const-string/jumbo v1, "android.intent.action.ACTION_DEFAULT_SMS_SUBSCRIPTION_CHANGED"

    #@1c
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1f
    .line 1347
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    #@21
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@24
    .line 1348
    const-string/jumbo v1, "subscription"

    #@27
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@2a
    .line 1349
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@2c
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@2e
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@31
    .line 1343
    return-void
.end method

.method private broadcastDefaultVoiceSubIdChanged(I)V
    .locals 3
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 1376
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
    .line 1377
    new-instance v0, Landroid/content/Intent;

    #@19
    const-string/jumbo v1, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    #@1c
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1f
    .line 1378
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    #@21
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@24
    .line 1379
    const-string/jumbo v1, "subscription"

    #@27
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@2a
    .line 1380
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@2c
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@2e
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@31
    .line 1374
    return-void
.end method

.method private broadcastSimInfoContentChanged()V
    .locals 2

    #@0
    .prologue
    .line 235
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 236
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@a
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    #@d
    .line 237
    new-instance v0, Landroid/content/Intent;

    #@f
    .end local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    #@12
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@15
    .line 238
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@17
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    #@1a
    .line 234
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
    .line 211
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@4
    .line 212
    const-string/jumbo v4, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    #@7
    .line 211
    invoke-virtual {v3, v4, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 215
    return v1

    #@b
    .line 216
    :catch_0
    move-exception v0

    #@c
    .line 217
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@e
    const-string/jumbo v4, "android.permission.READ_PHONE_STATE"

    #@11
    invoke-virtual {v3, v4, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 221
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
    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@2
    .line 227
    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    #@5
    .line 226
    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 225
    return-void
.end method

.method private getDummySubIds(I)[I
    .locals 4
    .param p1, "slotIdx"    # I

    #@0
    .prologue
    .line 1236
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubInfoCountMax()I

    #@3
    move-result v2

    #@4
    .line 1237
    .local v2, "numSubs":I
    if-lez v2, :cond_1

    #@6
    .line 1238
    new-array v0, v2, [I

    #@8
    .line 1239
    .local v0, "dummyValues":[I
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@b
    .line 1240
    rsub-int/lit8 v3, p1, -0x2

    #@d
    aput v3, v0, v1

    #@f
    .line 1239
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1246
    :cond_0
    return-object v0

    #@13
    .line 1248
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
    .line 162
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 164
    const-string/jumbo v0, "SubscriptionController"

    #@7
    const-string/jumbo v1, "getInstance null"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 167
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
    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v1, "selection:"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string/jumbo v1, " "

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@23
    .line 327
    const/4 v4, 0x0

    #@24
    .line 328
    .local v4, "selectionArgs":[Ljava/lang/String;
    if-eqz p2, :cond_0

    #@26
    .line 329
    const/4 v0, 0x1

    #@27
    new-array v4, v0, [Ljava/lang/String;

    #@29
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    const/4 v1, 0x0

    #@2e
    aput-object v0, v4, v1

    #@30
    .line 331
    :cond_0
    const/4 v8, 0x0

    #@31
    .line 332
    .local v8, "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@33
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@36
    move-result-object v0

    #@37
    sget-object v1, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    #@39
    move-object v3, p1

    #@3a
    move-object v5, v2

    #@3b
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@3e
    move-result-object v6

    #@3f
    .line 335
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    #@41
    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :goto_0
    move-object v9, v8

    #@42
    .line 336
    .local v9, "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    #@45
    move-result v0

    #@46
    if-eqz v0, :cond_6

    #@48
    .line 337
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoRecord(Landroid/database/Cursor;)Landroid/telephony/SubscriptionInfo;

    #@4b
    move-result-object v7

    #@4c
    .line 338
    .local v7, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v7, :cond_5

    #@4e
    .line 340
    if-nez v9, :cond_4

    #@50
    .line 342
    new-instance v8, Ljava/util/ArrayList;

    #@52
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@55
    .line 344
    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .local v8, "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :goto_1
    :try_start_1
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@58
    goto :goto_0

    #@59
    .line 350
    .end local v7    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v0

    #@5a
    .line 351
    :goto_2
    if-eqz v6, :cond_1

    #@5c
    .line 352
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@5f
    .line 350
    :cond_1
    throw v0

    #@60
    .line 348
    .local v8, "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :cond_2
    :try_start_2
    const-string/jumbo v0, "Query fail"

    #@63
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@66
    .line 351
    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :goto_3
    if-eqz v6, :cond_3

    #@68
    .line 352
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@6b
    .line 356
    :cond_3
    return-object v8

    #@6c
    .line 350
    .restart local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_1
    move-exception v0

    #@6d
    move-object v8, v9

    #@6e
    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .local v8, "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    goto :goto_2

    #@6f
    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v7    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .restart local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :cond_4
    move-object v8, v9

    #@70
    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    goto :goto_1

    #@71
    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :cond_5
    move-object v8, v9

    #@72
    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    goto :goto_0

    #@73
    .end local v7    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :cond_6
    move-object v8, v9

    #@74
    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    goto :goto_3
.end method

.method private getSubInfoRecord(Landroid/database/Cursor;)Landroid/telephony/SubscriptionInfo;
    .locals 17
    .param p1, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 262
    const-string/jumbo v1, "_id"

    #@3
    .line 261
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
    .line 264
    .local v2, "id":I
    const-string/jumbo v1, "icc_id"

    #@12
    .line 263
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
    .line 266
    .local v3, "iccId":Ljava/lang/String;
    const-string/jumbo v1, "sim_id"

    #@21
    .line 265
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
    .line 268
    .local v4, "simSlotIndex":I
    const-string/jumbo v1, "display_name"

    #@30
    .line 267
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
    .line 270
    .local v5, "displayName":Ljava/lang/String;
    const-string/jumbo v1, "carrier_name"

    #@3f
    .line 269
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
    .line 272
    .local v6, "carrierName":Ljava/lang/String;
    const-string/jumbo v1, "name_source"

    #@4e
    .line 271
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
    .line 274
    .local v7, "nameSource":I
    const-string/jumbo v1, "color"

    #@5d
    .line 273
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
    .line 276
    .local v8, "iconTint":I
    const-string/jumbo v1, "number"

    #@6c
    .line 275
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
    .line 278
    .local v9, "number":Ljava/lang/String;
    const-string/jumbo v1, "data_roaming"

    #@7b
    .line 277
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
    .line 280
    .local v10, "dataRoaming":I
    move-object/from16 v0, p0

    #@89
    iget-object v1, v0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@8b
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@8e
    move-result-object v1

    #@8f
    .line 281
    const v16, 0x108041f

    #@92
    .line 280
    move/from16 v0, v16

    #@94
    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    #@97
    move-result-object v11

    #@98
    .line 283
    .local v11, "iconBitmap":Landroid/graphics/Bitmap;
    const-string/jumbo v1, "mcc"

    #@9b
    .line 282
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
    .line 285
    .local v12, "mcc":I
    const-string/jumbo v1, "mnc"

    #@aa
    .line 284
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
    .line 287
    .local v13, "mnc":I
    move-object/from16 v0, p0

    #@b8
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubscriptionCountryIso(I)Ljava/lang/String;

    #@bb
    move-result-object v14

    #@bc
    .line 290
    .local v14, "countryIso":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    #@be
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c1
    const-string/jumbo v16, "[getSubInfoRecord] id:"

    #@c4
    move-object/from16 v0, v16

    #@c6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v1

    #@ca
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v1

    #@ce
    const-string/jumbo v16, " iccid:"

    #@d1
    move-object/from16 v0, v16

    #@d3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v1

    #@d7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v1

    #@db
    const-string/jumbo v16, " simSlotIndex:"

    #@de
    move-object/from16 v0, v16

    #@e0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v1

    #@e4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v1

    #@e8
    .line 291
    const-string/jumbo v16, " displayName:"

    #@eb
    .line 290
    move-object/from16 v0, v16

    #@ed
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v1

    #@f1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v1

    #@f5
    .line 291
    const-string/jumbo v16, " nameSource:"

    #@f8
    .line 290
    move-object/from16 v0, v16

    #@fa
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v1

    #@fe
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@101
    move-result-object v1

    #@102
    .line 292
    const-string/jumbo v16, " iconTint:"

    #@105
    .line 290
    move-object/from16 v0, v16

    #@107
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v1

    #@10b
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v1

    #@10f
    .line 292
    const-string/jumbo v16, " dataRoaming:"

    #@112
    .line 290
    move-object/from16 v0, v16

    #@114
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v1

    #@118
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v1

    #@11c
    .line 293
    const-string/jumbo v16, " mcc:"

    #@11f
    .line 290
    move-object/from16 v0, v16

    #@121
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v1

    #@125
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@128
    move-result-object v1

    #@129
    .line 293
    const-string/jumbo v16, " mnc:"

    #@12c
    .line 290
    move-object/from16 v0, v16

    #@12e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v1

    #@132
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@135
    move-result-object v1

    #@136
    .line 293
    const-string/jumbo v16, " countIso:"

    #@139
    .line 290
    move-object/from16 v0, v16

    #@13b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v1

    #@13f
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@142
    move-result-object v1

    #@143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@146
    move-result-object v1

    #@147
    move-object/from16 v0, p0

    #@149
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@14c
    .line 297
    move-object/from16 v0, p0

    #@14e
    iget-object v1, v0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@150
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    #@153
    move-result-object v15

    #@154
    .line 298
    .local v15, "line1Number":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@157
    move-result v1

    #@158
    if-nez v1, :cond_0

    #@15a
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15d
    move-result v1

    #@15e
    if-eqz v1, :cond_1

    #@160
    .line 301
    :cond_0
    :goto_0
    new-instance v1, Landroid/telephony/SubscriptionInfo;

    #@162
    invoke-direct/range {v1 .. v14}, Landroid/telephony/SubscriptionInfo;-><init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;IILjava/lang/String;)V

    #@165
    return-object v1

    #@166
    .line 299
    :cond_1
    move-object v9, v15

    #@167
    goto :goto_0
.end method

.method private getSubscriptionCountryIso(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 312
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    #@3
    move-result v0

    #@4
    .line 313
    .local v0, "phoneId":I
    if-gez v0, :cond_0

    #@6
    .line 314
    const-string/jumbo v1, ""

    #@9
    return-object v1

    #@a
    .line 316
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
    .line 365
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 366
    .local v0, "availableSubInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@9
    move-result-object v4

    #@a
    const v5, 0x107000a

    #@d
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    #@10
    move-result-object v4

    #@11
    iput-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->colorArr:[I

    #@13
    .line 367
    const/4 v1, 0x0

    #@14
    .line 369
    .local v1, "colorIdx":I
    if-eqz v0, :cond_4

    #@16
    .line 370
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
    .line 372
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
    .line 373
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
    .line 377
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@36
    move-result v4

    #@37
    if-ne v3, v4, :cond_2

    #@39
    .line 378
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->colorArr:[I

    #@3b
    aget v4, v4, v2

    #@3d
    return v4

    #@3e
    .line 372
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@40
    goto :goto_1

    #@41
    .line 370
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@43
    goto :goto_0

    #@44
    .line 381
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
    .line 383
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
    .line 151
    const-class v1, Lcom/android/internal/telephony/SubscriptionController;

    #@2
    monitor-enter v1

    #@3
    .line 152
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 153
    new-instance v0, Lcom/android/internal/telephony/SubscriptionController;

    #@9
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SubscriptionController;-><init>(Landroid/content/Context;)V

    #@c
    sput-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    #@e
    .line 157
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 155
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
    .line 151
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
    .line 140
    const-class v1, Lcom/android/internal/telephony/SubscriptionController;

    #@2
    monitor-enter v1

    #@3
    .line 141
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 142
    new-instance v0, Lcom/android/internal/telephony/SubscriptionController;

    #@9
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SubscriptionController;-><init>(Lcom/android/internal/telephony/Phone;)V

    #@c
    sput-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    #@e
    .line 146
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 144
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
    .line 140
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
    .line 184
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
    .line 1298
    const-string/jumbo v0, "SubscriptionController"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 1297
    return-void
.end method

.method private logdl(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1289
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@3
    .line 1290
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->log(Ljava/lang/String;)V

    #@8
    .line 1288
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1307
    const-string/jumbo v0, "SubscriptionController"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 1306
    return-void
.end method

.method private logel(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1302
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V

    #@3
    .line 1303
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->log(Ljava/lang/String;)V

    #@8
    .line 1301
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1285
    const-string/jumbo v0, "SubscriptionController"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 1284
    return-void
.end method

.method private logvl(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1280
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logv(Ljava/lang/String;)V

    #@3
    .line 1281
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->log(Ljava/lang/String;)V

    #@8
    .line 1279
    return-void
.end method

.method private static printStackTrace(Ljava/lang/String;)V
    .locals 7
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1791
    new-instance v1, Ljava/lang/RuntimeException;

    #@2
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    #@5
    .line 1792
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
    .line 1793
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@1f
    move-result-object v2

    #@20
    .line 1794
    .local v2, "st":[Ljava/lang/StackTraceElement;
    const/4 v0, 0x1

    #@21
    .line 1795
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
    .line 1796
    .local v3, "ste":Ljava/lang/StackTraceElement;
    if-eqz v0, :cond_0

    #@29
    .line 1797
    const/4 v0, 0x0

    #@2a
    .line 1795
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 1799
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    #@30
    move-result-object v6

    #@31
    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionController;->slogd(Ljava/lang/String;)V

    #@34
    goto :goto_1

    #@35
    .line 1790
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
    .line 877
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
    .line 879
    const-string/jumbo v4, "setCarrierText"

    #@25
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    #@28
    .line 882
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@2b
    move-result-wide v0

    #@2c
    .line 884
    .local v0, "identity":J
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    #@2e
    const/4 v4, 0x1

    #@2f
    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    #@32
    .line 885
    .local v3, "value":Landroid/content/ContentValues;
    const-string/jumbo v4, "carrier_name"

    #@35
    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@38
    .line 887
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@3a
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3d
    move-result-object v4

    #@3e
    sget-object v5, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    #@40
    .line 888
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
    .line 889
    int-to-long v8, p2

    #@4d
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@50
    move-result-object v7

    #@51
    .line 888
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v6

    #@55
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v6

    #@59
    .line 889
    const/4 v7, 0x0

    #@5a
    .line 887
    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@5d
    move-result v2

    #@5e
    .line 890
    .local v2, "result":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@61
    .line 894
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@64
    .line 892
    return v2

    #@65
    .line 893
    .end local v2    # "result":I
    .end local v3    # "value":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    #@66
    .line 894
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@69
    .line 893
    throw v4
.end method

.method private setDefaultFallbackSubId(I)V
    .locals 6
    .param p1, "subId"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1472
    const v3, 0x7fffffff

    #@4
    if-ne p1, v3, :cond_0

    #@6
    .line 1473
    new-instance v3, Ljava/lang/RuntimeException;

    #@8
    const-string/jumbo v4, "setDefaultSubId called with DEFAULT_SUB_ID"

    #@b
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 1475
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
    .line 1476
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_2

    #@2c
    .line 1477
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    #@2f
    move-result v2

    #@30
    .line 1478
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
    .line 1479
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
    .line 1480
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
    .line 1481
    sput p1, Lcom/android/internal/telephony/SubscriptionController;->mDefaultFallbackSubId:I

    #@5c
    .line 1483
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@5e
    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    #@61
    move-result-object v0

    #@62
    .line 1484
    .local v0, "defaultMccMnc":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@64
    invoke-static {v3, v0, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    #@67
    .line 1487
    new-instance v1, Landroid/content/Intent;

    #@69
    const-string/jumbo v3, "android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    #@6c
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@6f
    .line 1488
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    #@71
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@74
    .line 1489
    invoke-static {v1, v2, p1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V

    #@77
    .line 1491
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
    .line 1492
    const-string/jumbo v4, " subId="

    #@8a
    .line 1491
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
    .line 1494
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@9b
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@9d
    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@a0
    .line 1471
    .end local v0    # "defaultMccMnc":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "phoneId":I
    :cond_2
    :goto_0
    return-void

    #@a1
    .line 1497
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
    .line 1498
    const-string/jumbo v4, " subId="

    #@b4
    .line 1497
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
    .line 1532
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
    .line 1533
    if-nez p1, :cond_0

    #@1b
    .line 1534
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
    .line 1535
    return v6

    #@33
    .line 1537
    :cond_0
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@36
    move-result v3

    #@37
    if-nez v3, :cond_1

    #@39
    .line 1539
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
    .line 1540
    return v5

    #@51
    .line 1542
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
    .line 1543
    .local v1, "record":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    #@64
    move-result v0

    #@65
    .line 1544
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
    .line 1545
    if-ne v0, p2, :cond_2

    #@7e
    .line 1546
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
    .line 1547
    return v5

    #@96
    .line 1550
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
    .line 1551
    return v6
.end method

.method private static slogd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1294
    const-string/jumbo v0, "SubscriptionController"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 1293
    return-void
.end method

.method private updateAllDataConnectionTrackers()V
    .locals 4

    #@0
    .prologue
    .line 1450
    sget-object v2, Lcom/android/internal/telephony/SubscriptionController;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@2
    array-length v0, v2

    #@3
    .line 1451
    .local v0, "len":I
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "[updateAllDataConnectionTrackers] sProxyPhones.length="

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
    .line 1452
    const/4 v1, 0x0

    #@1b
    .local v1, "phoneId":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@1d
    .line 1453
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
    .line 1454
    sget-object v2, Lcom/android/internal/telephony/SubscriptionController;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@36
    aget-object v2, v2, v1

    #@38
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->updateDataConnectionTracker()V

    #@3b
    .line 1452
    add-int/lit8 v1, v1, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 1448
    :cond_0
    return-void
.end method

.method private validateSubId(I)V
    .locals 2
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 1622
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
    .line 1623
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@1a
    move-result v0

    #@1b
    if-nez v0, :cond_0

    #@1d
    .line 1624
    new-instance v0, Ljava/lang/RuntimeException;

    #@1f
    const-string/jumbo v1, "Invalid sub id passed as parameter"

    #@22
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 1625
    :cond_0
    const v0, 0x7fffffff

    #@29
    if-ne p1, v0, :cond_1

    #@2b
    .line 1626
    new-instance v0, Ljava/lang/RuntimeException;

    #@2d
    const-string/jumbo v1, "Default sub id passed as parameter"

    #@30
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 1621
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
    .line 668
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
    move-object/from16 v0, p1

    #@e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    const-string/jumbo v4, " slotId:"

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    move/from16 v0, p2

    #@1b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    move-object/from16 v0, p0

    #@25
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@28
    .line 670
    const-string/jumbo v3, "addSubInfoRecord"

    #@2b
    move-object/from16 v0, p0

    #@2d
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    #@30
    .line 673
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@33
    move-result-wide v12

    #@34
    .line 675
    .local v12, "identity":J
    if-nez p1, :cond_0

    #@36
    .line 676
    :try_start_0
    const-string/jumbo v3, "[addSubInfoRecord]- null iccId"

    #@39
    move-object/from16 v0, p0

    #@3b
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@3e
    .line 677
    const/4 v3, -0x1

    #@3f
    .line 819
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@42
    .line 677
    return v3

    #@43
    .line 680
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    #@45
    iget-object v3, v0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@47
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@4a
    move-result-object v2

    #@4b
    .line 681
    .local v2, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    #@4d
    .line 682
    const/4 v4, 0x3

    #@4e
    new-array v4, v4, [Ljava/lang/String;

    #@50
    const-string/jumbo v5, "_id"

    #@53
    const/4 v6, 0x0

    #@54
    aput-object v5, v4, v6

    #@56
    .line 683
    const-string/jumbo v5, "sim_id"

    #@59
    const/4 v6, 0x1

    #@5a
    aput-object v5, v4, v6

    #@5c
    const-string/jumbo v5, "name_source"

    #@5f
    const/4 v6, 0x2

    #@60
    aput-object v5, v4, v6

    #@62
    .line 684
    const-string/jumbo v5, "icc_id=?"

    #@65
    const/4 v6, 0x1

    #@66
    new-array v6, v6, [Ljava/lang/String;

    #@68
    const/4 v7, 0x0

    #@69
    aput-object p1, v6, v7

    #@6b
    const/4 v7, 0x0

    #@6c
    .line 681
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@6f
    move-result-object v10

    #@70
    .line 686
    .local v10, "cursor":Landroid/database/Cursor;
    move-object/from16 v0, p0

    #@72
    iget-object v3, v0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@74
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@77
    move-result-object v3

    #@78
    move-object/from16 v0, p0

    #@7a
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->getUnusedColor(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@7d
    move-result v8

    #@7e
    .line 687
    .local v8, "color":I
    const/16 v17, 0x0

    #@80
    .line 689
    .local v17, "setDisplayName":Z
    if-eqz v10, :cond_a

    #@82
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    #@85
    move-result v3

    #@86
    if-eqz v3, :cond_a

    #@88
    .line 700
    const/4 v3, 0x0

    #@89
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    #@8c
    move-result v19

    #@8d
    .line 701
    .local v19, "subId":I
    const/4 v3, 0x1

    #@8e
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    #@91
    move-result v16

    #@92
    .line 702
    .local v16, "oldSimInfoId":I
    const/4 v3, 0x2

    #@93
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    #@96
    move-result v14

    #@97
    .line 703
    .local v14, "nameSource":I
    new-instance v23, Landroid/content/ContentValues;

    #@99
    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    #@9c
    .line 705
    .local v23, "value":Landroid/content/ContentValues;
    move/from16 v0, p2

    #@9e
    move/from16 v1, v16

    #@a0
    if-eq v0, v1, :cond_1

    #@a2
    .line 706
    const-string/jumbo v3, "sim_id"

    #@a5
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a8
    move-result-object v4

    #@a9
    move-object/from16 v0, v23

    #@ab
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@ae
    .line 709
    :cond_1
    const/4 v3, 0x2

    #@af
    if-eq v14, v3, :cond_2

    #@b1
    .line 710
    const/16 v17, 0x1

    #@b3
    .line 713
    :cond_2
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentValues;->size()I

    #@b6
    move-result v3

    #@b7
    if-lez v3, :cond_3

    #@b9
    .line 714
    sget-object v3, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    #@bb
    .line 715
    new-instance v4, Ljava/lang/StringBuilder;

    #@bd
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c0
    const-string/jumbo v5, "_id="

    #@c3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v4

    #@c7
    .line 716
    move/from16 v0, v19

    #@c9
    int-to-long v6, v0

    #@ca
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@cd
    move-result-object v5

    #@ce
    .line 715
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v4

    #@d2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d5
    move-result-object v4

    #@d6
    .line 716
    const/4 v5, 0x0

    #@d7
    .line 714
    move-object/from16 v0, v23

    #@d9
    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@dc
    .line 719
    :cond_3
    const-string/jumbo v3, "[addSubInfoRecord] Record already exists"

    #@df
    move-object/from16 v0, p0

    #@e1
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@e4
    .line 722
    .end local v14    # "nameSource":I
    .end local v16    # "oldSimInfoId":I
    .end local v19    # "subId":I
    :goto_0
    if-eqz v10, :cond_4

    #@e6
    .line 723
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    #@e9
    .line 727
    :cond_4
    sget-object v3, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    #@eb
    .line 728
    const-string/jumbo v5, "sim_id=?"

    #@ee
    .line 729
    const/4 v4, 0x1

    #@ef
    new-array v6, v4, [Ljava/lang/String;

    #@f1
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@f4
    move-result-object v4

    #@f5
    const/4 v7, 0x0

    #@f6
    aput-object v4, v6, v7

    #@f8
    .line 727
    const/4 v4, 0x0

    #@f9
    .line 729
    const/4 v7, 0x0

    #@fa
    .line 727
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@fd
    move-result-object v10

    #@fe
    .line 731
    if-eqz v10, :cond_7

    #@100
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    #@103
    move-result v3

    #@104
    if-eqz v3, :cond_7

    #@106
    .line 734
    :cond_5
    const-string/jumbo v3, "_id"

    #@109
    .line 733
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@10c
    move-result v3

    #@10d
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    #@110
    move-result v19

    #@111
    .line 737
    .restart local v19    # "subId":I
    sget-object v3, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    #@113
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@116
    move-result-object v4

    #@117
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11a
    move-result-object v9

    #@11b
    check-cast v9, Ljava/lang/Integer;

    #@11d
    .line 738
    .local v9, "currentSubId":Ljava/lang/Integer;
    if-eqz v9, :cond_c

    #@11f
    .line 739
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    #@122
    move-result v3

    #@123
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@126
    move-result v3

    #@127
    if-eqz v3, :cond_c

    #@129
    .line 772
    const-string/jumbo v3, "[addSubInfoRecord] currentSubId != null && currentSubId is valid, IGNORE"

    #@12c
    move-object/from16 v0, p0

    #@12e
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@131
    .line 776
    :cond_6
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@133
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@136
    const-string/jumbo v4, "[addSubInfoRecord] hashmap("

    #@139
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v3

    #@13d
    move/from16 v0, p2

    #@13f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@142
    move-result-object v3

    #@143
    const-string/jumbo v4, ","

    #@146
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v3

    #@14a
    move/from16 v0, v19

    #@14c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v3

    #@150
    const-string/jumbo v4, ")"

    #@153
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@156
    move-result-object v3

    #@157
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15a
    move-result-object v3

    #@15b
    move-object/from16 v0, p0

    #@15d
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@160
    .line 777
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@163
    move-result v3

    #@164
    if-nez v3, :cond_5

    #@166
    .line 780
    .end local v9    # "currentSubId":Ljava/lang/Integer;
    .end local v19    # "subId":I
    :cond_7
    if-eqz v10, :cond_8

    #@168
    .line 781
    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    #@16b
    .line 786
    :cond_8
    move-object/from16 v0, p0

    #@16d
    move/from16 v1, p2

    #@16f
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    #@172
    move-result-object v21

    #@173
    .line 787
    .local v21, "subIds":[I
    if-eqz v21, :cond_9

    #@175
    move-object/from16 v0, v21

    #@177
    array-length v3, v0

    #@178
    if-nez v3, :cond_10

    #@17a
    .line 789
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    #@17c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17f
    const-string/jumbo v4, "[addSubInfoRecord]- getSubId failed subIds == null || length == 0 subIds="

    #@182
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@185
    move-result-object v3

    #@186
    move-object/from16 v0, v21

    #@188
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18b
    move-result-object v3

    #@18c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18f
    move-result-object v3

    #@190
    move-object/from16 v0, p0

    #@192
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@195
    .line 792
    const/4 v3, -0x1

    #@196
    .line 819
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@199
    .line 792
    return v3

    #@19a
    .line 690
    .end local v21    # "subIds":[I
    .end local v23    # "value":Landroid/content/ContentValues;
    :cond_a
    const/16 v17, 0x1

    #@19c
    .line 691
    :try_start_6
    new-instance v23, Landroid/content/ContentValues;

    #@19e
    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    #@1a1
    .line 692
    .restart local v23    # "value":Landroid/content/ContentValues;
    const-string/jumbo v3, "icc_id"

    #@1a4
    move-object/from16 v0, v23

    #@1a6
    move-object/from16 v1, p1

    #@1a8
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@1ab
    .line 694
    const-string/jumbo v3, "color"

    #@1ae
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b1
    move-result-object v4

    #@1b2
    move-object/from16 v0, v23

    #@1b4
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@1b7
    .line 695
    const-string/jumbo v3, "sim_id"

    #@1ba
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1bd
    move-result-object v4

    #@1be
    move-object/from16 v0, v23

    #@1c0
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@1c3
    .line 696
    const-string/jumbo v3, "carrier_name"

    #@1c6
    const-string/jumbo v4, ""

    #@1c9
    move-object/from16 v0, v23

    #@1cb
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@1ce
    .line 697
    sget-object v3, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    #@1d0
    move-object/from16 v0, v23

    #@1d2
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@1d5
    move-result-object v22

    #@1d6
    .line 698
    .local v22, "uri":Landroid/net/Uri;
    new-instance v3, Ljava/lang/StringBuilder;

    #@1d8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1db
    const-string/jumbo v4, "[addSubInfoRecord] New record created: "

    #@1de
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e1
    move-result-object v3

    #@1e2
    move-object/from16 v0, v22

    #@1e4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e7
    move-result-object v3

    #@1e8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1eb
    move-result-object v3

    #@1ec
    move-object/from16 v0, p0

    #@1ee
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@1f1
    goto/16 :goto_0

    #@1f3
    .line 721
    .end local v22    # "uri":Landroid/net/Uri;
    .end local v23    # "value":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    #@1f4
    .line 722
    if-eqz v10, :cond_b

    #@1f6
    .line 723
    :try_start_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    #@1f9
    .line 721
    :cond_b
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@1fa
    .line 818
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v8    # "color":I
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v17    # "setDisplayName":Z
    :catchall_1
    move-exception v3

    #@1fb
    .line 819
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1fe
    .line 818
    throw v3

    #@1ff
    .line 746
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

    #@201
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@204
    move-result-object v4

    #@205
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@208
    move-result-object v5

    #@209
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20c
    .line 747
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubInfoCountMax()I

    #@20f
    move-result v20

    #@210
    .line 748
    .local v20, "subIdCountMax":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    #@213
    move-result v11

    #@214
    .line 750
    .local v11, "defaultSubId":I
    new-instance v3, Ljava/lang/StringBuilder;

    #@216
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@219
    const-string/jumbo v4, "[addSubInfoRecord] sSlotIdxToSubId.size="

    #@21c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21f
    move-result-object v3

    #@220
    .line 751
    sget-object v4, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    #@222
    invoke-interface {v4}, Ljava/util/Map;->size()I

    #@225
    move-result v4

    #@226
    .line 750
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@229
    move-result-object v3

    #@22a
    .line 752
    const-string/jumbo v4, " slotId="

    #@22d
    .line 750
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@230
    move-result-object v3

    #@231
    move/from16 v0, p2

    #@233
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@236
    move-result-object v3

    #@237
    .line 752
    const-string/jumbo v4, " subId="

    #@23a
    .line 750
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23d
    move-result-object v3

    #@23e
    move/from16 v0, v19

    #@240
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@243
    move-result-object v3

    #@244
    .line 753
    const-string/jumbo v4, " defaultSubId="

    #@247
    .line 750
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24a
    move-result-object v3

    #@24b
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24e
    move-result-object v3

    #@24f
    .line 753
    const-string/jumbo v4, " simCount="

    #@252
    .line 750
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@255
    move-result-object v3

    #@256
    move/from16 v0, v20

    #@258
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25b
    move-result-object v3

    #@25c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25f
    move-result-object v3

    #@260
    move-object/from16 v0, p0

    #@262
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@265
    .line 757
    invoke-static {v11}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@268
    move-result v3

    #@269
    if-eqz v3, :cond_d

    #@26b
    .line 758
    const/4 v3, 0x1

    #@26c
    move/from16 v0, v20

    #@26e
    if-ne v0, v3, :cond_e

    #@270
    .line 759
    :cond_d
    move-object/from16 v0, p0

    #@272
    move/from16 v1, v19

    #@274
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultFallbackSubId(I)V

    #@277
    .line 762
    :cond_e
    const/4 v3, 0x1

    #@278
    move/from16 v0, v20

    #@27a
    if-ne v0, v3, :cond_6

    #@27c
    .line 764
    new-instance v3, Ljava/lang/StringBuilder;

    #@27e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@281
    const-string/jumbo v4, "[addSubInfoRecord] one sim set defaults to subId="

    #@284
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@287
    move-result-object v3

    #@288
    move/from16 v0, v19

    #@28a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28d
    move-result-object v3

    #@28e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@291
    move-result-object v3

    #@292
    move-object/from16 v0, p0

    #@294
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@297
    .line 766
    move-object/from16 v0, p0

    #@299
    move/from16 v1, v19

    #@29b
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    #@29e
    .line 767
    move-object/from16 v0, p0

    #@2a0
    move/from16 v1, v19

    #@2a2
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultSmsSubId(I)V

    #@2a5
    .line 768
    move-object/from16 v0, p0

    #@2a7
    move/from16 v1, v19

    #@2a9
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    #@2ac
    goto/16 :goto_1

    #@2ae
    .line 779
    .end local v9    # "currentSubId":Ljava/lang/Integer;
    .end local v11    # "defaultSubId":I
    .end local v19    # "subId":I
    .end local v20    # "subIdCountMax":I
    :catchall_2
    move-exception v3

    #@2af
    .line 780
    if-eqz v10, :cond_f

    #@2b1
    .line 781
    :try_start_9
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    #@2b4
    .line 779
    :cond_f
    throw v3

    #@2b5
    .line 794
    .restart local v21    # "subIds":[I
    :cond_10
    if-eqz v17, :cond_11

    #@2b7
    .line 795
    move-object/from16 v0, p0

    #@2b9
    iget-object v3, v0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@2bb
    const/4 v4, 0x0

    #@2bc
    aget v4, v21, v4

    #@2be
    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    #@2c1
    move-result-object v18

    #@2c2
    .line 798
    .local v18, "simCarrierName":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2c5
    move-result v3

    #@2c6
    if-nez v3, :cond_12

    #@2c8
    .line 799
    move-object/from16 v15, v18

    #@2ca
    .line 804
    .local v15, "nameToSet":Ljava/lang/String;
    :goto_2
    new-instance v23, Landroid/content/ContentValues;

    #@2cc
    .end local v23    # "value":Landroid/content/ContentValues;
    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    #@2cf
    .line 805
    .restart local v23    # "value":Landroid/content/ContentValues;
    const-string/jumbo v3, "display_name"

    #@2d2
    move-object/from16 v0, v23

    #@2d4
    invoke-virtual {v0, v3, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@2d7
    .line 806
    sget-object v3, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    #@2d9
    .line 807
    new-instance v4, Ljava/lang/StringBuilder;

    #@2db
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2de
    const-string/jumbo v5, "_id="

    #@2e1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e4
    move-result-object v4

    #@2e5
    .line 808
    const/4 v5, 0x0

    #@2e6
    aget v5, v21, v5

    #@2e8
    int-to-long v6, v5

    #@2e9
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@2ec
    move-result-object v5

    #@2ed
    .line 807
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f0
    move-result-object v4

    #@2f1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f4
    move-result-object v4

    #@2f5
    .line 808
    const/4 v5, 0x0

    #@2f6
    .line 806
    move-object/from16 v0, v23

    #@2f8
    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@2fb
    .line 810
    new-instance v3, Ljava/lang/StringBuilder;

    #@2fd
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@300
    const-string/jumbo v4, "[addSubInfoRecord] sim name = "

    #@303
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@306
    move-result-object v3

    #@307
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30a
    move-result-object v3

    #@30b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30e
    move-result-object v3

    #@30f
    move-object/from16 v0, p0

    #@311
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@314
    .line 814
    .end local v15    # "nameToSet":Ljava/lang/String;
    .end local v18    # "simCarrierName":Ljava/lang/String;
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionController;->updateAllDataConnectionTrackers()V

    #@317
    .line 816
    new-instance v3, Ljava/lang/StringBuilder;

    #@319
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@31c
    const-string/jumbo v4, "[addSubInfoRecord]- info size="

    #@31f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@322
    move-result-object v3

    #@323
    sget-object v4, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    #@325
    invoke-interface {v4}, Ljava/util/Map;->size()I

    #@328
    move-result v4

    #@329
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32c
    move-result-object v3

    #@32d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@330
    move-result-object v3

    #@331
    move-object/from16 v0, p0

    #@333
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@336
    .line 819
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@339
    .line 821
    const/4 v3, 0x0

    #@33a
    return v3

    #@33b
    .line 801
    .restart local v18    # "simCarrierName":Ljava/lang/String;
    :cond_12
    :try_start_a
    new-instance v3, Ljava/lang/StringBuilder;

    #@33d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@340
    const-string/jumbo v4, "CARD "

    #@343
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@346
    move-result-object v3

    #@347
    add-int/lit8 v4, p2, 0x1

    #@349
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@34c
    move-result-object v4

    #@34d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@350
    move-result-object v3

    #@351
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@354
    move-result-object v15

    #@355
    .restart local v15    # "nameToSet":Ljava/lang/String;
    goto/16 :goto_2
.end method

.method public clearDefaultsForInactiveSubIds()V
    .locals 5

    #@0
    .prologue
    .line 1506
    const-string/jumbo v3, "clearDefaultsForInactiveSubIds"

    #@3
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    #@6
    .line 1509
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@9
    move-result-wide v0

    #@a
    .line 1512
    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    .line 1511
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    #@13
    move-result-object v2

    #@14
    .line 1513
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
    .line 1514
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
    .line 1515
    const-string/jumbo v3, "[clearDefaultsForInactiveSubIds] clearing default data sub id"

    #@38
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@3b
    .line 1516
    const/4 v3, -0x1

    #@3c
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    #@3f
    .line 1518
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
    .line 1519
    const-string/jumbo v3, "[clearDefaultsForInactiveSubIds] clearing default sms sub id"

    #@4c
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@4f
    .line 1520
    const/4 v3, -0x1

    #@50
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultSmsSubId(I)V

    #@53
    .line 1522
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
    .line 1523
    const-string/jumbo v3, "[clearDefaultsForInactiveSubIds] clearing default voice sub id"

    #@60
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@63
    .line 1524
    const/4 v3, -0x1

    #@64
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@67
    .line 1527
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@6a
    .line 1505
    return-void

    #@6b
    .line 1526
    .end local v2    # "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v3

    #@6c
    .line 1527
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@6f
    .line 1526
    throw v3
.end method

.method public clearSubInfo()I
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1257
    const-string/jumbo v3, "clearSubInfo"

    #@4
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    #@7
    .line 1260
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@a
    move-result-wide v0

    #@b
    .line 1262
    .local v0, "identity":J
    :try_start_0
    const-string/jumbo v3, "[clearSubInfo]+"

    #@e
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@11
    .line 1264
    sget-object v3, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    #@13
    invoke-interface {v3}, Ljava/util/Map;->size()I

    #@16
    move-result v2

    #@17
    .line 1266
    .local v2, "size":I
    if-nez v2, :cond_0

    #@19
    .line 1267
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v4, "[clearSubInfo]- no simInfo size="

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 1275
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@33
    .line 1268
    return v5

    #@34
    .line 1271
    :cond_0
    :try_start_1
    sget-object v3, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    #@36
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    #@39
    .line 1272
    new-instance v3, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v4, "[clearSubInfo]- clear size="

    #@41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@50
    .line 1275
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@53
    .line 1273
    return v2

    #@54
    .line 1274
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    #@55
    .line 1275
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@58
    .line 1274
    throw v3
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1806
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v7, "android.permission.DUMP"

    #@5
    .line 1807
    const-string/jumbo v8, "Requires DUMP"

    #@8
    .line 1806
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1808
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e
    move-result-wide v4

    #@f
    .line 1810
    .local v4, "token":J
    :try_start_0
    const-string/jumbo v6, "SubscriptionController:"

    #@12
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@15
    .line 1811
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
    .line 1812
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
    .line 1813
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
    .line 1814
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
    .line 1816
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
    .line 1817
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@8f
    .line 1816
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
    .line 1818
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
    .line 1819
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
    .line 1820
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@cb
    .line 1819
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
    .line 1821
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@e1
    .line 1823
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
    .line 1824
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
    .line 1858
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    #@123
    .line 1859
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@126
    .line 1858
    throw v6

    #@127
    .line 1826
    .restart local v2    # "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@12a
    .line 1827
    const-string/jumbo v6, "++++++++++++++++++++++++++++++++"

    #@12d
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@130
    .line 1830
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@132
    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@135
    move-result-object v6

    #@136
    .line 1829
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    #@139
    move-result-object v3

    #@13a
    .line 1831
    .local v3, "sirl":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_1

    #@13c
    .line 1832
    const-string/jumbo v6, " ActiveSubInfoList:"

    #@13f
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@142
    .line 1833
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
    .line 1834
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
    .line 1837
    .end local v0    # "entry":Landroid/telephony/SubscriptionInfo;
    :cond_1
    const-string/jumbo v6, " ActiveSubInfoList: is null"

    #@171
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@174
    .line 1839
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@177
    .line 1840
    const-string/jumbo v6, "++++++++++++++++++++++++++++++++"

    #@17a
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17d
    .line 1842
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
    .line 1843
    if-eqz v3, :cond_3

    #@189
    .line 1844
    const-string/jumbo v6, " AllSubInfoList:"

    #@18c
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@18f
    .line 1845
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
    .line 1846
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
    .line 1849
    .end local v0    # "entry":Landroid/telephony/SubscriptionInfo;
    :cond_3
    const-string/jumbo v6, " AllSubInfoList: is null"

    #@1be
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c1
    .line 1851
    :cond_4
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@1c4
    .line 1852
    const-string/jumbo v6, "++++++++++++++++++++++++++++++++"

    #@1c7
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ca
    .line 1854
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionController;->mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    #@1cc
    invoke-virtual {v6, p1, p2, p3}, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@1cf
    .line 1855
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@1d2
    .line 1856
    const-string/jumbo v6, "++++++++++++++++++++++++++++++++"

    #@1d5
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d8
    .line 1857
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1db
    .line 1859
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1de
    .line 1805
    return-void
.end method

.method public getActiveSubIdList()[I
    .locals 8

    #@0
    .prologue
    .line 1639
    sget-object v6, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    #@2
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@5
    move-result-object v3

    #@6
    .line 1640
    .local v3, "simInfoSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v7, "[getActiveSubIdList] simInfoSet="

    #@e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v6

    #@12
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v6

    #@16
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v6

    #@1a
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@1d
    .line 1642
    invoke-interface {v3}, Ljava/util/Set;->size()I

    #@20
    move-result v6

    #@21
    new-array v5, v6, [I

    #@23
    .line 1643
    .local v5, "subIdArr":[I
    const/4 v2, 0x0

    #@24
    .line 1644
    .local v2, "i":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v1

    #@28
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v6

    #@2c
    if-eqz v6, :cond_0

    #@2e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Ljava/util/Map$Entry;

    #@34
    .line 1645
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@37
    move-result-object v6

    #@38
    check-cast v6, Ljava/lang/Integer;

    #@3a
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@3d
    move-result v4

    #@3e
    .line 1646
    .local v4, "sub":I
    aput v4, v5, v2

    #@40
    .line 1647
    add-int/lit8 v2, v2, 0x1

    #@42
    goto :goto_0

    #@43
    .line 1650
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v4    # "sub":I
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v7, "[getActiveSubIdList] X subIdArr.length="

    #@4b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v6

    #@4f
    array-length v7, v5

    #@50
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v6

    #@54
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v6

    #@58
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@5b
    .line 1651
    return-object v5
.end method

.method public getActiveSubInfoCount(Ljava/lang/String;)I
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 592
    const-string/jumbo v3, "[getActiveSubInfoCount]+"

    #@4
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@7
    .line 594
    const-string/jumbo v3, "getActiveSubInfoCount"

    #@a
    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/SubscriptionController;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@d
    move-result v3

    #@e
    if-nez v3, :cond_0

    #@10
    .line 595
    return v4

    #@11
    .line 599
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v0

    #@15
    .line 602
    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@17
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    .line 601
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    #@1e
    move-result-object v2

    #@1f
    .line 603
    .local v2, "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v2, :cond_1

    #@21
    .line 604
    const-string/jumbo v3, "[getActiveSubInfoCount] records null"

    #@24
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 610
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2a
    .line 605
    return v4

    #@2b
    .line 607
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
    .line 608
    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@49
    move-result v3

    #@4a
    .line 610
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4d
    .line 608
    return v3

    #@4e
    .line 609
    .end local v2    # "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v3

    #@4f
    .line 610
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@52
    .line 609
    throw v3
.end method

.method public getActiveSubInfoCountMax()I
    .locals 1

    #@0
    .prologue
    .line 657
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
    .line 394
    const-string/jumbo v5, "getActiveSubscriptionInfo"

    #@4
    invoke-direct {p0, p2, v5}, Lcom/android/internal/telephony/SubscriptionController;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@7
    move-result v5

    #@8
    if-nez v5, :cond_0

    #@a
    .line 395
    return-object v7

    #@b
    .line 399
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e
    move-result-wide v0

    #@f
    .line 402
    .local v0, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@11
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@14
    move-result-object v5

    #@15
    .line 401
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    #@18
    move-result-object v4

    #@19
    .line 403
    .local v4, "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v4, :cond_2

    #@1b
    .line 404
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
    .line 405
    .local v2, "si":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    #@2e
    move-result v5

    #@2f
    if-ne v5, p1, :cond_1

    #@31
    .line 407
    new-instance v5, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v6, "[getActiveSubInfoForSubscriber]+ subId="

    #@39
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v5

    #@41
    .line 408
    const-string/jumbo v6, " subInfo="

    #@44
    .line 407
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
    .line 418
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@56
    .line 409
    return-object v2

    #@57
    .line 414
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
    .line 415
    const-string/jumbo v6, " subList="

    #@6a
    .line 414
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v5

    #@6e
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v5

    #@72
    .line 415
    const-string/jumbo v6, " subInfo=null"

    #@75
    .line 414
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
    .line 418
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@83
    .line 421
    return-object v7

    #@84
    .line 417
    .end local v4    # "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v5

    #@85
    .line 418
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@88
    .line 417
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
    .line 432
    const-string/jumbo v5, "getActiveSubscriptionInfoForIccId"

    #@4
    invoke-direct {p0, p2, v5}, Lcom/android/internal/telephony/SubscriptionController;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@7
    move-result v5

    #@8
    if-nez v5, :cond_0

    #@a
    .line 433
    return-object v7

    #@b
    .line 437
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e
    move-result-wide v0

    #@f
    .line 440
    .local v0, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@11
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@14
    move-result-object v5

    #@15
    .line 439
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    #@18
    move-result-object v4

    #@19
    .line 441
    .local v4, "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v4, :cond_2

    #@1b
    .line 442
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
    .line 443
    .local v2, "si":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    if-ne v5, p1, :cond_1

    #@31
    .line 445
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
    .line 455
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@56
    .line 446
    return-object v2

    #@57
    .line 451
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
    .line 452
    const-string/jumbo v6, " subList="

    #@6a
    .line 451
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v5

    #@6e
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v5

    #@72
    .line 452
    const-string/jumbo v6, " subInfo=null"

    #@75
    .line 451
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
    .line 455
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@83
    .line 458
    return-object v7

    #@84
    .line 454
    .end local v4    # "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v5

    #@85
    .line 455
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@88
    .line 454
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
    .line 470
    const-string/jumbo v5, "getActiveSubscriptionInfoForSimSlotIndex"

    #@4
    invoke-direct {p0, p2, v5}, Lcom/android/internal/telephony/SubscriptionController;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@7
    move-result v5

    #@8
    if-nez v5, :cond_0

    #@a
    .line 471
    return-object v7

    #@b
    .line 475
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e
    move-result-wide v0

    #@f
    .line 478
    .local v0, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@11
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@14
    move-result-object v5

    #@15
    .line 477
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    #@18
    move-result-object v4

    #@19
    .line 479
    .local v4, "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v4, :cond_3

    #@1b
    .line 480
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
    .line 481
    .local v2, "si":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    #@2e
    move-result v5

    #@2f
    if-ne v5, p1, :cond_1

    #@31
    .line 483
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
    .line 484
    const-string/jumbo v6, " subId="

    #@44
    .line 483
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
    .line 499
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@56
    .line 486
    return-object v2

    #@57
    .line 490
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
    .line 491
    const-string/jumbo v6, " subId=null"

    #@6a
    .line 490
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
    .line 499
    .end local v3    # "si$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@78
    .line 502
    return-object v7

    #@79
    .line 495
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
    .line 498
    .end local v4    # "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v5

    #@81
    .line 499
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@84
    .line 498
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
    .line 542
    const-string/jumbo v3, "[getActiveSubInfoList]+"

    #@4
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@7
    .line 544
    const-string/jumbo v3, "getActiveSubscriptionInfoList"

    #@a
    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/SubscriptionController;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@d
    move-result v3

    #@e
    if-nez v3, :cond_0

    #@10
    .line 545
    return-object v4

    #@11
    .line 549
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v0

    #@15
    .line 551
    .local v0, "identity":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->isSubInfoReady()Z

    #@18
    move-result v3

    #@19
    if-nez v3, :cond_1

    #@1b
    .line 552
    const-string/jumbo v3, "[getActiveSubInfoList] Sub Controller not ready"

    #@1e
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 581
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@24
    .line 553
    return-object v4

    #@25
    .line 557
    :cond_1
    :try_start_1
    const-string/jumbo v3, "sim_id>=0"

    #@28
    const/4 v4, 0x0

    #@29
    .line 556
    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    #@2c
    move-result-object v2

    #@2d
    .line 559
    .local v2, "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v2, :cond_2

    #@2f
    .line 561
    new-instance v3, Lcom/android/internal/telephony/SubscriptionController$1;

    #@31
    invoke-direct {v3, p0}, Lcom/android/internal/telephony/SubscriptionController$1;-><init>(Lcom/android/internal/telephony/SubscriptionController;)V

    #@34
    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@37
    .line 574
    new-instance v3, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v4, "[getActiveSubInfoList]- "

    #@3f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@46
    move-result v4

    #@47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    const-string/jumbo v4, " infos return"

    #@4e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v3

    #@56
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@59
    .line 581
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5c
    .line 579
    return-object v2

    #@5d
    .line 576
    :cond_2
    :try_start_2
    const-string/jumbo v3, "[getActiveSubInfoList]- no info return"

    #@60
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@63
    goto :goto_0

    #@64
    .line 580
    .end local v2    # "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v3

    #@65
    .line 581
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@68
    .line 580
    throw v3
.end method

.method public getAllSubInfoCount(Ljava/lang/String;)I
    .locals 11
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 621
    const-string/jumbo v0, "[getAllSubInfoCount]+"

    #@4
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@7
    .line 623
    const-string/jumbo v0, "getAllSubInfoCount"

    #@a
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SubscriptionController;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_0

    #@10
    .line 624
    return v10

    #@11
    .line 628
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v8

    #@15
    .line 630
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
    .line 631
    const/4 v2, 0x0

    #@1e
    const/4 v3, 0x0

    #@1f
    const/4 v4, 0x0

    #@20
    const/4 v5, 0x0

    #@21
    .line 630
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@24
    move-result-object v7

    #@25
    .line 633
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    #@27
    .line 634
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    #@2a
    move-result v6

    #@2b
    .line 635
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
    .line 639
    if-eqz v7, :cond_1

    #@4b
    .line 640
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@4e
    .line 647
    :cond_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@51
    .line 636
    return v6

    #@52
    .line 639
    .end local v6    # "count":I
    :cond_2
    if-eqz v7, :cond_3

    #@54
    .line 640
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@57
    .line 643
    :cond_3
    const-string/jumbo v0, "[getAllSubInfoCount]- no SUB in DB"

    #@5a
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@5d
    .line 647
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@60
    .line 645
    return v10

    #@61
    .line 638
    :catchall_0
    move-exception v0

    #@62
    .line 639
    if-eqz v7, :cond_4

    #@64
    .line 640
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@67
    .line 638
    :cond_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@68
    .line 646
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    #@69
    .line 647
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@6c
    .line 646
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
    .line 513
    const-string/jumbo v3, "[getAllSubInfoList]+"

    #@4
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@7
    .line 515
    const-string/jumbo v3, "getAllSubInfoList"

    #@a
    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/SubscriptionController;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@d
    move-result v3

    #@e
    if-nez v3, :cond_0

    #@10
    .line 516
    return-object v4

    #@11
    .line 520
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v0

    #@15
    .line 522
    .local v0, "identity":J
    const/4 v2, 0x0

    #@16
    .line 523
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
    .line 524
    .local v2, "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v2, :cond_1

    #@1e
    .line 525
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
    .line 531
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@43
    .line 529
    return-object v2

    #@44
    .line 527
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
    .line 530
    .end local v2    # "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v3

    #@4c
    .line 531
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4f
    .line 530
    throw v3
.end method

.method public getDefaultDataSubId()I
    .locals 4

    #@0
    .prologue
    .line 1394
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v1

    #@6
    .line 1395
    const-string/jumbo v2, "multi_sim_data_call"

    #@9
    .line 1396
    const/4 v3, -0x1

    #@a
    .line 1394
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@d
    move-result v0

    #@e
    .line 1398
    .local v0, "subId":I
    return v0
.end method

.method public getDefaultSmsSubId()I
    .locals 4

    #@0
    .prologue
    .line 1354
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v1

    #@6
    .line 1355
    const-string/jumbo v2, "multi_sim_sms"

    #@9
    .line 1356
    const/4 v3, -0x1

    #@a
    .line 1354
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@d
    move-result v0

    #@e
    .line 1358
    .local v0, "subId":I
    return v0
.end method

.method public getDefaultSubId()I
    .locals 4

    #@0
    .prologue
    .line 1313
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v2

    #@6
    .line 1314
    const v3, 0x1120053

    #@9
    .line 1313
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@c
    move-result v0

    #@d
    .line 1315
    .local v0, "isVoiceCapable":Z
    if-eqz v0, :cond_1

    #@f
    .line 1316
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()I

    #@12
    move-result v1

    #@13
    .line 1322
    .local v1, "subId":I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    #@16
    move-result v2

    #@17
    if-nez v2, :cond_0

    #@19
    .line 1323
    sget v1, Lcom/android/internal/telephony/SubscriptionController;->mDefaultFallbackSubId:I

    #@1b
    .line 1327
    :cond_0
    return v1

    #@1c
    .line 1319
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
    .line 1385
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v1

    #@6
    .line 1386
    const-string/jumbo v2, "multi_sim_voice_call"

    #@9
    .line 1387
    const/4 v3, -0x1

    #@a
    .line 1385
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@d
    move-result v0

    #@e
    .line 1389
    .local v0, "subId":I
    return v0
.end method

.method public getPhoneId(I)I
    .locals 8
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 1192
    const v6, 0x7fffffff

    #@3
    if-ne p1, v6, :cond_0

    #@5
    .line 1193
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    #@8
    move-result p1

    #@9
    .line 1194
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
    .line 1197
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@23
    move-result v6

    #@24
    if-nez v6, :cond_1

    #@26
    .line 1199
    const-string/jumbo v6, "[getPhoneId]- invalid subId return=-1"

    #@29
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@2c
    .line 1202
    const/4 v6, -0x1

    #@2d
    return v6

    #@2e
    .line 1205
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    #@30
    invoke-interface {v6}, Ljava/util/Map;->size()I

    #@33
    move-result v4

    #@34
    .line 1206
    .local v4, "size":I
    if-nez v4, :cond_2

    #@36
    .line 1207
    sget v2, Lcom/android/internal/telephony/SubscriptionController;->mDefaultPhoneId:I

    #@38
    .line 1208
    .local v2, "phoneId":I
    new-instance v6, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v7, "[getPhoneId]- no sims, returning default phoneId="

    #@40
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v6

    #@44
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v6

    #@48
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v6

    #@4c
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@4f
    .line 1209
    return v2

    #@50
    .line 1213
    .end local v2    # "phoneId":I
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    #@52
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@55
    move-result-object v6

    #@56
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@59
    move-result-object v1

    #@5a
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@5d
    move-result v6

    #@5e
    if-eqz v6, :cond_4

    #@60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@63
    move-result-object v0

    #@64
    check-cast v0, Ljava/util/Map$Entry;

    #@66
    .line 1214
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@69
    move-result-object v6

    #@6a
    check-cast v6, Ljava/lang/Integer;

    #@6c
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@6f
    move-result v3

    #@70
    .line 1215
    .local v3, "sim":I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@73
    move-result-object v6

    #@74
    check-cast v6, Ljava/lang/Integer;

    #@76
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@79
    move-result v5

    #@7a
    .line 1217
    .local v5, "sub":I
    if-ne p1, v5, :cond_3

    #@7c
    .line 1219
    return v3

    #@7d
    .line 1223
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v3    # "sim":I
    .end local v5    # "sub":I
    :cond_4
    sget v2, Lcom/android/internal/telephony/SubscriptionController;->mDefaultPhoneId:I

    #@7f
    .line 1225
    .restart local v2    # "phoneId":I
    new-instance v6, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v7, "[getPhoneId]- subId="

    #@87
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v6

    #@8b
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v6

    #@8f
    const-string/jumbo v7, " not found return default phoneId="

    #@92
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v6

    #@96
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@99
    move-result-object v6

    #@9a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v6

    #@9e
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@a1
    .line 1227
    return v2
.end method

.method public getSimStateForSlotIdx(I)I
    .locals 6
    .param p1, "slotIdx"    # I

    #@0
    .prologue
    .line 1671
    if-gez p1, :cond_0

    #@2
    .line 1672
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    #@4
    .line 1673
    .local v3, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    const-string/jumbo v0, "invalid slotIdx"

    #@7
    .line 1690
    .local v0, "err":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v5, "getSimStateForSlotIdx: "

    #@f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    const-string/jumbo v5, " simState="

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    .line 1691
    const-string/jumbo v5, " ordinal="

    #@25
    .line 1690
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    .line 1691
    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    #@2c
    move-result v5

    #@2d
    .line 1690
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@38
    .line 1692
    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    #@3b
    move-result v4

    #@3c
    return v4

    #@3d
    .line 1675
    .end local v0    # "err":Ljava/lang/String;
    .end local v3    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    #@40
    move-result-object v2

    #@41
    .line 1676
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v2, :cond_1

    #@43
    .line 1677
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    #@45
    .line 1678
    .restart local v3    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    const-string/jumbo v0, "phone == null"

    #@48
    .restart local v0    # "err":Ljava/lang/String;
    goto :goto_0

    #@49
    .line 1680
    .end local v0    # "err":Ljava/lang/String;
    .end local v3    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_1
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    #@4c
    move-result-object v1

    #@4d
    .line 1681
    .local v1, "icc":Lcom/android/internal/telephony/IccCard;
    if-nez v1, :cond_2

    #@4f
    .line 1682
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    #@51
    .line 1683
    .restart local v3    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    const-string/jumbo v0, "icc == null"

    #@54
    .restart local v0    # "err":Ljava/lang/String;
    goto :goto_0

    #@55
    .line 1685
    .end local v0    # "err":Ljava/lang/String;
    .end local v3    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_2
    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    #@58
    move-result-object v3

    #@59
    .line 1686
    .restart local v3    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    const-string/jumbo v0, ""

    #@5c
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
    .line 1096
    const v5, 0x7fffffff

    #@4
    if-ne p1, v5, :cond_0

    #@6
    .line 1097
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    #@9
    move-result p1

    #@a
    .line 1099
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@d
    move-result v5

    #@e
    if-nez v5, :cond_1

    #@10
    .line 1100
    const-string/jumbo v5, "[getSlotId]- subId invalid"

    #@13
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@16
    .line 1101
    return v6

    #@17
    .line 1104
    :cond_1
    sget-object v5, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    #@19
    invoke-interface {v5}, Ljava/util/Map;->size()I

    #@1c
    move-result v3

    #@1d
    .line 1106
    .local v3, "size":I
    if-nez v3, :cond_2

    #@1f
    .line 1108
    const-string/jumbo v5, "[getSlotId]- size == 0, return SIM_NOT_INSERTED instead"

    #@22
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@25
    .line 1109
    return v6

    #@26
    .line 1112
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
    .line 1113
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
    .line 1114
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
    .line 1116
    .local v4, "sub":I
    if-ne p1, v4, :cond_3

    #@52
    .line 1119
    return v2

    #@53
    .line 1123
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v2    # "sim":I
    .end local v4    # "sub":I
    :cond_4
    const-string/jumbo v5, "[getSlotId]- return fail"

    #@56
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@59
    .line 1124
    return v6
.end method

.method public getSubId(I)[I
    .locals 11
    .param p1, "slotIdx"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1141
    const v9, 0x7fffffff

    #@3
    if-ne p1, v9, :cond_0

    #@5
    .line 1142
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    #@8
    move-result v9

    #@9
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/SubscriptionController;->getSlotId(I)I

    #@c
    move-result p1

    #@d
    .line 1143
    new-instance v9, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v10, "[getSubId] map default slotIdx="

    #@15
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v9

    #@19
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v9

    #@1d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v9

    #@21
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@24
    .line 1147
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    #@27
    move-result v9

    #@28
    if-nez v9, :cond_1

    #@2a
    .line 1148
    new-instance v9, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v10, "[getSubId]- invalid slotIdx="

    #@32
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v9

    #@36
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v9

    #@3a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v9

    #@3e
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@41
    .line 1149
    const/4 v9, 0x0

    #@42
    return-object v9

    #@43
    .line 1153
    :cond_1
    sget-object v9, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    #@45
    invoke-interface {v9}, Ljava/util/Map;->size()I

    #@48
    move-result v4

    #@49
    .line 1154
    .local v4, "size":I
    if-nez v4, :cond_2

    #@4b
    .line 1156
    new-instance v9, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v10, "[getSubId]- sSlotIdxToSubId.size == 0, return DummySubIds slotIdx="

    #@53
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v9

    #@57
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v9

    #@5b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v9

    #@5f
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@62
    .line 1159
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getDummySubIds(I)[I

    #@65
    move-result-object v9

    #@66
    return-object v9

    #@67
    .line 1163
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    #@69
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@6c
    .line 1164
    .local v8, "subIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v9, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    #@6e
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@71
    move-result-object v9

    #@72
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@75
    move-result-object v1

    #@76
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@79
    move-result v9

    #@7a
    if-eqz v9, :cond_4

    #@7c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7f
    move-result-object v0

    #@80
    check-cast v0, Ljava/util/Map$Entry;

    #@82
    .line 1165
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@85
    move-result-object v9

    #@86
    check-cast v9, Ljava/lang/Integer;

    #@88
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    #@8b
    move-result v5

    #@8c
    .line 1166
    .local v5, "slot":I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@8f
    move-result-object v9

    #@90
    check-cast v9, Ljava/lang/Integer;

    #@92
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    #@95
    move-result v6

    #@96
    .line 1167
    .local v6, "sub":I
    if-ne p1, v5, :cond_3

    #@98
    .line 1168
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9b
    move-result-object v9

    #@9c
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9f
    goto :goto_0

    #@a0
    .line 1173
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v5    # "slot":I
    .end local v6    # "sub":I
    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@a3
    move-result v3

    #@a4
    .line 1174
    .local v3, "numSubIds":I
    if-lez v3, :cond_6

    #@a6
    .line 1175
    new-array v7, v3, [I

    #@a8
    .line 1176
    .local v7, "subIdArr":[I
    const/4 v2, 0x0

    #@a9
    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_5

    #@ab
    .line 1177
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@ae
    move-result-object v9

    #@af
    check-cast v9, Ljava/lang/Integer;

    #@b1
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    #@b4
    move-result v9

    #@b5
    aput v9, v7, v2

    #@b7
    .line 1176
    add-int/lit8 v2, v2, 0x1

    #@b9
    goto :goto_1

    #@ba
    .line 1180
    :cond_5
    return-object v7

    #@bb
    .line 1182
    .end local v2    # "i":I
    .end local v7    # "subIdArr":[I
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    #@bd
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@c0
    const-string/jumbo v10, "[getSubId]- numSubIds == 0, return DummySubIds slotIdx="

    #@c3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v9

    #@c7
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v9

    #@cb
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ce
    move-result-object v9

    #@cf
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@d2
    .line 1183
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getDummySubIds(I)[I

    #@d5
    move-result-object v9

    #@d6
    return-object v9
.end method

.method public getSubIdUsingPhoneId(I)I
    .locals 3
    .param p1, "phoneId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1557
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    #@4
    move-result-object v0

    #@5
    .line 1558
    .local v0, "subIds":[I
    if-eqz v0, :cond_0

    #@7
    array-length v1, v0

    #@8
    if-nez v1, :cond_1

    #@a
    .line 1559
    :cond_0
    const/4 v1, -0x1

    #@b
    return v1

    #@c
    .line 1561
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
    .line 1565
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
    .line 1570
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
    .line 1572
    const-string/jumbo v0, "getSubInfoUsingSlotIdWithCheck"

    #@1b
    invoke-direct {p0, p3, v0}, Lcom/android/internal/telephony/SubscriptionController;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@1e
    move-result v0

    #@1f
    if-nez v0, :cond_0

    #@21
    .line 1573
    return-object v2

    #@22
    .line 1577
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@25
    move-result-wide v8

    #@26
    .line 1579
    .local v8, "identity":J
    const v0, 0x7fffffff

    #@29
    if-ne p1, v0, :cond_1

    #@2b
    .line 1580
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    #@2e
    move-result v0

    #@2f
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSlotId(I)I

    #@32
    move-result p1

    #@33
    .line 1582
    :cond_1
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    #@36
    move-result v0

    #@37
    if-nez v0, :cond_2

    #@39
    .line 1583
    const-string/jumbo v0, "[getSubInfoUsingSlotIdWithCheck]- invalid slotId"

    #@3c
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@3f
    .line 1617
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@42
    .line 1584
    return-object v2

    #@43
    .line 1587
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
    .line 1592
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@4d
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@50
    move-result-object v0

    #@51
    sget-object v1, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    #@53
    .line 1593
    const-string/jumbo v3, "sim_id=?"

    #@56
    .line 1594
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
    .line 1593
    const/4 v2, 0x0

    #@61
    .line 1594
    const/4 v5, 0x0

    #@62
    .line 1592
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@65
    move-result-object v6

    #@66
    .line 1595
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    #@67
    .line 1597
    .local v10, "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v6, :cond_7

    #@69
    .end local v10    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :goto_0
    move-object v11, v10

    #@6a
    .line 1598
    .local v11, "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    #@6d
    move-result v0

    #@6e
    if-eqz v0, :cond_6

    #@70
    .line 1599
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoRecord(Landroid/database/Cursor;)Landroid/telephony/SubscriptionInfo;

    #@73
    move-result-object v7

    #@74
    .line 1600
    .local v7, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v7, :cond_a

    #@76
    .line 1601
    if-nez v11, :cond_9

    #@78
    .line 1602
    new-instance v10, Ljava/util/ArrayList;

    #@7a
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@7d
    .line 1604
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
    .line 1608
    :catchall_0
    move-exception v0

    #@82
    .line 1609
    .end local v7    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :goto_2
    if-eqz v6, :cond_4

    #@84
    .line 1610
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@87
    .line 1608
    :cond_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@88
    .line 1616
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v10    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_1
    move-exception v0

    #@89
    .line 1617
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@8c
    .line 1616
    throw v0

    #@8d
    .line 1588
    :cond_5
    :try_start_5
    const-string/jumbo v0, "[getSubInfoUsingSlotIdWithCheck]- not ready"

    #@90
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@93
    .line 1617
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@96
    .line 1589
    return-object v2

    #@97
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :cond_6
    move-object v10, v11

    #@98
    .line 1609
    .end local v11    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :cond_7
    if-eqz v6, :cond_8

    #@9a
    .line 1610
    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@9d
    .line 1613
    :cond_8
    const-string/jumbo v0, "[getSubInfoUsingSlotId]- null info return"

    #@a0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@a3
    .line 1617
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@a6
    .line 1615
    return-object v10

    #@a7
    .line 1608
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
    .line 1743
    const-string/jumbo v1, "getSubInfoUsingSlotIdWithCheck"

    #@6
    invoke-direct {p0, p3, v1}, Lcom/android/internal/telephony/SubscriptionController;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 1744
    return-object v5

    #@d
    .line 1746
    :cond_0
    const/4 v7, 0x0

    #@e
    .line 1747
    .local v7, "resultValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@10
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@13
    move-result-object v0

    #@14
    .line 1748
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    #@16
    .line 1749
    new-array v2, v4, [Ljava/lang/String;

    #@18
    aput-object p2, v2, v10

    #@1a
    .line 1750
    const-string/jumbo v3, "_id=?"

    #@1d
    .line 1751
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
    .line 1748
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@38
    move-result-object v6

    #@39
    .line 1754
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_6

    #@3b
    .line 1755
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    #@3e
    move-result v1

    #@3f
    if-eqz v1, :cond_5

    #@41
    .line 1756
    const-string/jumbo v1, "enable_cmas_extreme_threat_alerts"

    #@44
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v1

    #@48
    if-eqz v1, :cond_3

    #@4a
    .line 1769
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
    .line 1782
    .end local v7    # "resultValue":Ljava/lang/String;
    :goto_0
    if-eqz v6, :cond_2

    #@65
    .line 1783
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@68
    .line 1786
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
    .line 1787
    return-object v7

    #@80
    .line 1756
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
    .line 1772
    const-string/jumbo v1, "Invalid column name"

    #@e6
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e9
    goto/16 :goto_0

    #@eb
    .line 1781
    :catchall_0
    move-exception v1

    #@ec
    .line 1782
    if-eqz v6, :cond_4

    #@ee
    .line 1783
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@f1
    .line 1781
    :cond_4
    throw v1

    #@f2
    .line 1776
    :cond_5
    :try_start_2
    const-string/jumbo v1, "Valid row not present in db"

    #@f5
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@f8
    goto/16 :goto_0

    #@fa
    .line 1779
    :cond_6
    const-string/jumbo v1, "Query failed"

    #@fd
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@100
    goto/16 :goto_0
.end method

.method public isActiveSubId(I)Z
    .locals 3
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 1656
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 1657
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
    .line 1660
    :goto_0
    return v0

    #@11
    .line 1656
    :cond_0
    const/4 v0, 0x0

    #@12
    .local v0, "retVal":Z
    goto :goto_0
.end method

.method public notifySubscriptionInfoChanged()V
    .locals 3

    #@0
    .prologue
    .line 243
    const-string/jumbo v2, "telephony.registry"

    #@3
    .line 242
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v2

    #@7
    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    #@a
    move-result-object v1

    #@b
    .line 245
    .local v1, "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    :try_start_0
    const-string/jumbo v2, "notifySubscriptionInfoChanged:"

    #@e
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@11
    .line 246
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifySubscriptionInfoChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 252
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->broadcastSimInfoContentChanged()V

    #@17
    .line 241
    return-void

    #@18
    .line 247
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
    .line 1037
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
    .line 1039
    const-string/jumbo v4, "setDataRoaming"

    #@25
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    #@28
    .line 1042
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@2b
    move-result-wide v0

    #@2c
    .line 1044
    .local v0, "identity":J
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->validateSubId(I)V

    #@2f
    .line 1045
    if-gez p1, :cond_0

    #@31
    .line 1046
    const-string/jumbo v4, "[setDataRoaming]- fail"

    #@34
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    .line 1047
    const/4 v4, -0x1

    #@38
    .line 1060
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3b
    .line 1047
    return v4

    #@3c
    .line 1049
    :cond_0
    :try_start_1
    new-instance v3, Landroid/content/ContentValues;

    #@3e
    const/4 v4, 0x1

    #@3f
    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    #@42
    .line 1050
    .local v3, "value":Landroid/content/ContentValues;
    const-string/jumbo v4, "data_roaming"

    #@45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@48
    move-result-object v5

    #@49
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@4c
    .line 1051
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
    .line 1053
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@6c
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6f
    move-result-object v4

    #@70
    sget-object v5, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    #@72
    .line 1054
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
    .line 1055
    int-to-long v8, p2

    #@7f
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@82
    move-result-object v7

    #@83
    .line 1054
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v6

    #@87
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v6

    #@8b
    .line 1055
    const/4 v7, 0x0

    #@8c
    .line 1053
    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@8f
    move-result v2

    #@90
    .line 1056
    .local v2, "result":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@93
    .line 1060
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@96
    .line 1058
    return v2

    #@97
    .line 1059
    .end local v2    # "result":I
    .end local v3    # "value":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    #@98
    .line 1060
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@9b
    .line 1059
    throw v4
.end method

.method public setDefaultDataSubId(I)V
    .locals 10
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 1403
    const-string/jumbo v8, "setDefaultDataSubId"

    #@3
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    #@6
    .line 1405
    const v8, 0x7fffffff

    #@9
    if-ne p1, v8, :cond_0

    #@b
    .line 1406
    new-instance v8, Ljava/lang/RuntimeException;

    #@d
    const-string/jumbo v9, "setDefaultDataSubId called with DEFAULT_SUB_ID"

    #@10
    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@13
    throw v8

    #@14
    .line 1408
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v9, "[setDefaultDataSubId] subId="

    #@1c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v8

    #@20
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v8

    #@24
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v8

    #@28
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@2b
    .line 1410
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    #@2e
    move-result-object v5

    #@2f
    .line 1411
    .local v5, "proxyController":Lcom/android/internal/telephony/ProxyController;
    sget-object v8, Lcom/android/internal/telephony/SubscriptionController;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@31
    array-length v2, v8

    #@32
    .line 1412
    .local v2, "len":I
    new-instance v8, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v9, "[setDefaultDataSubId] num phones="

    #@3a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v8

    #@3e
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v8

    #@42
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v8

    #@46
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@49
    .line 1414
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@4c
    move-result v8

    #@4d
    if-eqz v8, :cond_3

    #@4f
    .line 1416
    new-array v7, v2, [Landroid/telephony/RadioAccessFamily;

    #@51
    .line 1417
    .local v7, "rafs":[Landroid/telephony/RadioAccessFamily;
    const/4 v0, 0x0

    #@52
    .line 1418
    .local v0, "atLeastOneMatch":Z
    const/4 v4, 0x0

    #@53
    .local v4, "phoneId":I
    :goto_0
    if-ge v4, v2, :cond_2

    #@55
    .line 1419
    sget-object v8, Lcom/android/internal/telephony/SubscriptionController;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@57
    aget-object v3, v8, v4

    #@59
    .line 1421
    .local v3, "phone":Lcom/android/internal/telephony/PhoneProxy;
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getSubId()I

    #@5c
    move-result v1

    #@5d
    .line 1422
    .local v1, "id":I
    if-ne v1, p1, :cond_1

    #@5f
    .line 1424
    invoke-virtual {v5}, Lcom/android/internal/telephony/ProxyController;->getMaxRafSupported()I

    #@62
    move-result v6

    #@63
    .line 1425
    .local v6, "raf":I
    const/4 v0, 0x1

    #@64
    .line 1430
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v9, "[setDefaultDataSubId] phoneId="

    #@6c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v8

    #@70
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@73
    move-result-object v8

    #@74
    const-string/jumbo v9, " subId="

    #@77
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v8

    #@7b
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v8

    #@7f
    const-string/jumbo v9, " RAF="

    #@82
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v8

    #@86
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@89
    move-result-object v8

    #@8a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v8

    #@8e
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@91
    .line 1431
    new-instance v8, Landroid/telephony/RadioAccessFamily;

    #@93
    invoke-direct {v8, v4, v6}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    #@96
    aput-object v8, v7, v4

    #@98
    .line 1418
    add-int/lit8 v4, v4, 0x1

    #@9a
    goto :goto_0

    #@9b
    .line 1428
    .end local v6    # "raf":I
    :cond_1
    invoke-virtual {v5}, Lcom/android/internal/telephony/ProxyController;->getMinRafSupported()I

    #@9e
    move-result v6

    #@9f
    .restart local v6    # "raf":I
    goto :goto_1

    #@a0
    .line 1433
    .end local v1    # "id":I
    .end local v3    # "phone":Lcom/android/internal/telephony/PhoneProxy;
    .end local v6    # "raf":I
    :cond_2
    if-eqz v0, :cond_4

    #@a2
    .line 1434
    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    #@a5
    .line 1441
    .end local v0    # "atLeastOneMatch":Z
    .end local v4    # "phoneId":I
    .end local v7    # "rafs":[Landroid/telephony/RadioAccessFamily;
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->updateAllDataConnectionTrackers()V

    #@a8
    .line 1443
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@aa
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@ad
    move-result-object v8

    #@ae
    .line 1444
    const-string/jumbo v9, "multi_sim_data_call"

    #@b1
    .line 1443
    invoke-static {v8, v9, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@b4
    .line 1445
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->broadcastDefaultDataSubIdChanged(I)V

    #@b7
    .line 1402
    return-void

    #@b8
    .line 1436
    .restart local v0    # "atLeastOneMatch":Z
    .restart local v4    # "phoneId":I
    .restart local v7    # "rafs":[Landroid/telephony/RadioAccessFamily;
    :cond_4
    const-string/jumbo v8, "[setDefaultDataSubId] no valid subId\'s found - not updating."

    #@bb
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    #@be
    goto :goto_2
.end method

.method public setDefaultSmsSubId(I)V
    .locals 2
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 1332
    const-string/jumbo v0, "setDefaultSmsSubId"

    #@3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    #@6
    .line 1334
    const v0, 0x7fffffff

    #@9
    if-ne p1, v0, :cond_0

    #@b
    .line 1335
    new-instance v0, Ljava/lang/RuntimeException;

    #@d
    const-string/jumbo v1, "setDefaultSmsSubId called with DEFAULT_SUB_ID"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 1337
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
    .line 1338
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@2d
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@30
    move-result-object v0

    #@31
    .line 1339
    const-string/jumbo v1, "multi_sim_sms"

    #@34
    .line 1338
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@37
    .line 1340
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->broadcastDefaultSmsSubIdChanged(I)V

    #@3a
    .line 1331
    return-void
.end method

.method public setDefaultVoiceSubId(I)V
    .locals 2
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 1363
    const-string/jumbo v0, "setDefaultVoiceSubId"

    #@3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    #@6
    .line 1365
    const v0, 0x7fffffff

    #@9
    if-ne p1, v0, :cond_0

    #@b
    .line 1366
    new-instance v0, Ljava/lang/RuntimeException;

    #@d
    const-string/jumbo v1, "setDefaultVoiceSubId called with DEFAULT_SUB_ID"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 1368
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
    .line 1369
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@2d
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@30
    move-result-object v0

    #@31
    .line 1370
    const-string/jumbo v1, "multi_sim_voice_call"

    #@34
    .line 1369
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@37
    .line 1371
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->broadcastDefaultVoiceSubIdChanged(I)V

    #@3a
    .line 1362
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;I)I
    .locals 2
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "subId"    # I

    #@0
    .prologue
    .line 937
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
    .line 951
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
    .line 952
    const-string/jumbo v6, " nameSource:"

    #@1e
    .line 951
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
    .line 955
    const-string/jumbo v5, "setDisplayNameUsingSrc"

    #@30
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    #@33
    .line 958
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@36
    move-result-wide v0

    #@37
    .line 960
    .local v0, "identity":J
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->validateSubId(I)V

    #@3a
    .line 962
    if-nez p1, :cond_1

    #@3c
    .line 963
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@3e
    const v6, 0x104000e

    #@41
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    .line 967
    .local v2, "nameToSet":Ljava/lang/String;
    :goto_0
    new-instance v4, Landroid/content/ContentValues;

    #@47
    const/4 v5, 0x1

    #@48
    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    #@4b
    .line 968
    .local v4, "value":Landroid/content/ContentValues;
    const-string/jumbo v5, "display_name"

    #@4e
    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@51
    .line 969
    const-wide/16 v6, 0x0

    #@53
    cmp-long v5, p3, v6

    #@55
    if-ltz v5, :cond_0

    #@57
    .line 970
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
    .line 971
    const-string/jumbo v5, "name_source"

    #@71
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@74
    move-result-object v6

    #@75
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@78
    .line 973
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
    .line 975
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@98
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@9b
    move-result-object v5

    #@9c
    sget-object v6, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    #@9e
    .line 976
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
    .line 977
    int-to-long v8, p2

    #@ab
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@ae
    move-result-object v8

    #@af
    .line 976
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v7

    #@b3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v7

    #@b7
    .line 977
    const/4 v8, 0x0

    #@b8
    .line 975
    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@bb
    move-result v3

    #@bc
    .line 978
    .local v3, "result":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@bf
    .line 982
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@c2
    .line 980
    return v3

    #@c3
    .line 965
    .end local v2    # "nameToSet":Ljava/lang/String;
    .end local v3    # "result":I
    .end local v4    # "value":Landroid/content/ContentValues;
    :cond_1
    move-object v2, p1

    #@c4
    .restart local v2    # "nameToSet":Ljava/lang/String;
    goto :goto_0

    #@c5
    .line 981
    .end local v2    # "nameToSet":Ljava/lang/String;
    :catchall_0
    move-exception v5

    #@c6
    .line 982
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@c9
    .line 981
    throw v5
.end method

.method public setDisplayNumber(Ljava/lang/String;I)I
    .locals 10
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "subId"    # I

    #@0
    .prologue
    .line 994
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
    .line 996
    const-string/jumbo v5, "setDisplayNumber"

    #@1a
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    #@1d
    .line 999
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@20
    move-result-wide v0

    #@21
    .line 1001
    .local v0, "identity":J
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->validateSubId(I)V

    #@24
    .line 1003
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    #@27
    move-result v2

    #@28
    .line 1005
    .local v2, "phoneId":I
    if-eqz p1, :cond_0

    #@2a
    if-gez v2, :cond_1

    #@2c
    .line 1007
    :cond_0
    const-string/jumbo v5, "[setDispalyNumber]- fail"

    #@2f
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    .line 1008
    const/4 v5, -0x1

    #@33
    .line 1025
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@36
    .line 1008
    return v5

    #@37
    .line 1006
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
    .line 1010
    new-instance v4, Landroid/content/ContentValues;

    #@41
    const/4 v5, 0x1

    #@42
    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    #@45
    .line 1011
    .local v4, "value":Landroid/content/ContentValues;
    const-string/jumbo v5, "number"

    #@48
    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@4b
    .line 1017
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@4d
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@50
    move-result-object v5

    #@51
    sget-object v6, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    #@53
    .line 1018
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
    .line 1019
    int-to-long v8, p2

    #@60
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@63
    move-result-object v8

    #@64
    .line 1018
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v7

    #@68
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v7

    #@6c
    .line 1019
    const/4 v8, 0x0

    #@6d
    .line 1017
    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@70
    move-result v3

    #@71
    .line 1020
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
    .line 1021
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8b
    .line 1025
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@8e
    .line 1023
    return v3

    #@8f
    .line 1024
    .end local v2    # "phoneId":I
    .end local v3    # "result":I
    .end local v4    # "value":Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    #@90
    .line 1025
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@93
    .line 1024
    throw v5
.end method

.method public setIconTint(II)I
    .locals 10
    .param p1, "tint"    # I
    .param p2, "subId"    # I

    #@0
    .prologue
    .line 906
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
    .line 908
    const-string/jumbo v4, "setIconTint"

    #@25
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    #@28
    .line 911
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@2b
    move-result-wide v0

    #@2c
    .line 913
    .local v0, "identity":J
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->validateSubId(I)V

    #@2f
    .line 914
    new-instance v3, Landroid/content/ContentValues;

    #@31
    const/4 v4, 0x1

    #@32
    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    #@35
    .line 915
    .local v3, "value":Landroid/content/ContentValues;
    const-string/jumbo v4, "color"

    #@38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3b
    move-result-object v5

    #@3c
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@3f
    .line 916
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
    .line 918
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@5f
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@62
    move-result-object v4

    #@63
    sget-object v5, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    #@65
    .line 919
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
    .line 920
    int-to-long v8, p2

    #@72
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@75
    move-result-object v7

    #@76
    .line 919
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v6

    #@7a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v6

    #@7e
    .line 920
    const/4 v7, 0x0

    #@7f
    .line 918
    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@82
    move-result v2

    #@83
    .line 921
    .local v2, "result":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@86
    .line 925
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@89
    .line 923
    return v2

    #@8a
    .line 924
    .end local v2    # "result":I
    .end local v3    # "value":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    #@8b
    .line 925
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@8e
    .line 924
    throw v4
.end method

.method public setMccMnc(Ljava/lang/String;I)I
    .locals 10
    .param p1, "mccMnc"    # Ljava/lang/String;
    .param p2, "subId"    # I

    #@0
    .prologue
    .line 1071
    const/4 v1, 0x0

    #@1
    .line 1072
    .local v1, "mcc":I
    const/4 v2, 0x0

    #@2
    .line 1074
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
    .line 1075
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
    .line 1079
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
    .line 1080
    new-instance v4, Landroid/content/ContentValues;

    #@44
    const/4 v5, 0x2

    #@45
    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    #@48
    .line 1081
    .local v4, "value":Landroid/content/ContentValues;
    const-string/jumbo v5, "mcc"

    #@4b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4e
    move-result-object v6

    #@4f
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@52
    .line 1082
    const-string/jumbo v5, "mnc"

    #@55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@58
    move-result-object v6

    #@59
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@5c
    .line 1084
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@5e
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@61
    move-result-object v5

    #@62
    sget-object v6, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    #@64
    .line 1085
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
    .line 1084
    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@81
    move-result v3

    #@82
    .line 1086
    .local v3, "result":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V

    #@85
    .line 1088
    return v3

    #@86
    .line 1076
    .end local v3    # "result":I
    .end local v4    # "value":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    #@87
    .line 1077
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
    .line 834
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v5

    #@4
    .line 835
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    #@7
    move-result-object v3

    #@8
    .line 836
    .local v3, "subIds":[I
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@a
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@d
    move-result-object v4

    #@e
    .line 837
    sget-object v6, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    #@10
    invoke-virtual {v6}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@13
    move-result-object v6

    #@14
    const/4 v7, 0x0

    #@15
    .line 836
    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    #@18
    move-result-object v4

    #@19
    if-eqz v4, :cond_0

    #@1b
    .line 838
    if-nez v3, :cond_1

    #@1d
    .line 844
    :cond_0
    const-string/jumbo v4, "[setPlmnSpn] No valid subscription to store info"

    #@20
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@23
    .line 845
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    monitor-exit v5

    #@27
    .line 846
    return v8

    #@28
    .line 839
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
    .line 848
    const-string/jumbo v0, ""

    #@34
    .line 849
    .local v0, "carrierText":Ljava/lang/String;
    if-eqz p2, :cond_3

    #@36
    .line 850
    move-object v0, p3

    #@37
    .line 851
    if-eqz p4, :cond_2

    #@39
    .line 853
    invoke-static {p5, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3c
    move-result v4

    #@3d
    if-nez v4, :cond_2

    #@3f
    .line 854
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@41
    .line 855
    const v6, 0x10404e3

    #@44
    .line 854
    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@4b
    move-result-object v2

    #@4c
    .line 856
    .local v2, "separator":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 863
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
    .line 864
    aget v4, v3, v1

    #@67
    invoke-direct {p0, v0, v4}, Lcom/android/internal/telephony/SubscriptionController;->setCarrierText(Ljava/lang/String;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6a
    .line 863
    add-int/lit8 v1, v1, 0x1

    #@6c
    goto :goto_1

    #@6d
    .line 860
    .end local v1    # "i":I
    :cond_3
    if-eqz p4, :cond_2

    #@6f
    .line 861
    move-object v0, p5

    #@70
    goto :goto_0

    #@71
    .line 866
    .restart local v1    # "i":I
    :cond_4
    const/4 v4, 0x1

    #@72
    monitor-exit v5

    #@73
    return v4

    #@74
    .line 834
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
    .line 1704
    const-string/jumbo v4, "setSubscriptionProperty"

    #@3
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    #@6
    .line 1705
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@9
    move-result-wide v2

    #@a
    .line 1706
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@f
    move-result-object v0

    #@10
    .line 1707
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    #@12
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    #@15
    .line 1708
    .local v1, "value":Landroid/content/ContentValues;
    const-string/jumbo v4, "enable_cmas_extreme_threat_alerts"

    #@18
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_1

    #@1e
    .line 1721
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
    .line 1728
    :goto_0
    sget-object v4, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    #@2b
    .line 1729
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
    .line 1730
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3a
    move-result-object v6

    #@3b
    .line 1729
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    .line 1730
    const/4 v6, 0x0

    #@44
    .line 1728
    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@47
    .line 1731
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4a
    .line 1703
    return-void

    #@4b
    .line 1708
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
    .line 1724
    const-string/jumbo v4, "Invalid column name"

    #@b1
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    #@b4
    goto/16 :goto_0
.end method

.method public updatePhonesAvailability([Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 0
    .param p1, "phones"    # [Lcom/android/internal/telephony/PhoneProxy;

    #@0
    .prologue
    .line 1631
    sput-object p1, Lcom/android/internal/telephony/SubscriptionController;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@2
    .line 1630
    return-void
.end method
