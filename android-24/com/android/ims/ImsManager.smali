.class public Lcom/android/ims/ImsManager;
.super Ljava/lang/Object;
.source "ImsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;,
        Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;
    }
.end annotation


# static fields
.field public static final ACTION_IMS_INCOMING_CALL:Ljava/lang/String; = "com.android.ims.IMS_INCOMING_CALL"

.field public static final ACTION_IMS_REGISTRATION_ERROR:Ljava/lang/String; = "com.android.ims.REGISTRATION_ERROR"

.field public static final ACTION_IMS_SERVICE_DOWN:Ljava/lang/String; = "com.android.ims.IMS_SERVICE_DOWN"

.field public static final ACTION_IMS_SERVICE_UP:Ljava/lang/String; = "com.android.ims.IMS_SERVICE_UP"

.field private static final DBG:Z = true

.field public static final EXTRA_CALL_ID:Ljava/lang/String; = "android:imsCallID"

.field public static final EXTRA_IS_UNKNOWN_CALL:Ljava/lang/String; = "android:isUnknown"

.field public static final EXTRA_PHONE_ID:Ljava/lang/String; = "android:phone_id"

.field public static final EXTRA_SERVICE_ID:Ljava/lang/String; = "android:imsServiceId"

.field public static final EXTRA_USSD:Ljava/lang/String; = "android:ussd"

.field private static final IMS_SERVICE:Ljava/lang/String; = "ims"

.field public static final INCOMING_CALL_RESULT_CODE:I = 0x65

.field public static final PROPERTY_DBG_VOLTE_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.volte_avail_ovr"

.field public static final PROPERTY_DBG_VOLTE_AVAIL_OVERRIDE_DEFAULT:I = 0x0

.field public static final PROPERTY_DBG_VT_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.vt_avail_ovr"

.field public static final PROPERTY_DBG_VT_AVAIL_OVERRIDE_DEFAULT:I = 0x0

.field public static final PROPERTY_DBG_WFC_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.wfc_avail_ovr"

.field public static final PROPERTY_DBG_WFC_AVAIL_OVERRIDE_DEFAULT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ImsManager"

.field private static sImsManagerInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/ims/ImsManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConfig:Lcom/android/ims/ImsConfig;

.field private mConfigUpdated:Z

.field private mContext:Landroid/content/Context;

.field private mDeathRecipient:Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;

.field private mEcbm:Lcom/android/ims/ImsEcbm;

.field private mImsConfigListener:Lcom/android/ims/ImsConfigListener;

.field private mImsService:Lcom/android/ims/internal/IImsService;

.field private mMultiEndpoint:Lcom/android/ims/ImsMultiEndpoint;

.field private mPhoneId:I

.field private mUt:Lcom/android/ims/ImsUt;


# direct methods
.method static synthetic -get0(Lcom/android/ims/ImsManager;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/ims/ImsManager;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/ims/ImsManager;Lcom/android/ims/ImsConfig;)Lcom/android/ims/ImsConfig;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/ims/ImsManager;->mConfig:Lcom/android/ims/ImsConfig;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/ims/ImsManager;Lcom/android/ims/ImsEcbm;)Lcom/android/ims/ImsEcbm;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Lcom/android/ims/ImsManager;Lcom/android/ims/internal/IImsService;)Lcom/android/ims/internal/IImsService;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Lcom/android/ims/ImsManager;Lcom/android/ims/ImsMultiEndpoint;)Lcom/android/ims/ImsMultiEndpoint;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/ims/ImsManager;->mMultiEndpoint:Lcom/android/ims/ImsMultiEndpoint;

    #@2
    return-object p1
.end method

.method static synthetic -set4(Lcom/android/ims/ImsManager;Lcom/android/ims/ImsUt;)Lcom/android/ims/ImsUt;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Ljava/lang/String;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 162
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 161
    sput-object v0, Lcom/android/ims/ImsManager;->sImsManagerInstances:Ljava/util/HashMap;

    #@7
    .line 58
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 166
    iput-object v1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@6
    .line 167
    new-instance v0, Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;

    #@8
    invoke-direct {v0, p0, v1}, Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;-><init>(Lcom/android/ims/ImsManager;Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;)V

    #@b
    iput-object v0, p0, Lcom/android/ims/ImsManager;->mDeathRecipient:Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;

    #@d
    .line 169
    iput-object v1, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;

    #@f
    .line 171
    iput-object v1, p0, Lcom/android/ims/ImsManager;->mConfig:Lcom/android/ims/ImsConfig;

    #@11
    .line 172
    const/4 v0, 0x0

    #@12
    iput-boolean v0, p0, Lcom/android/ims/ImsManager;->mConfigUpdated:Z

    #@14
    .line 177
    iput-object v1, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;

    #@16
    .line 179
    iput-object v1, p0, Lcom/android/ims/ImsManager;->mMultiEndpoint:Lcom/android/ims/ImsMultiEndpoint;

    #@18
    .line 671
    iput-object p1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@1a
    .line 672
    iput p2, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    #@1c
    .line 673
    const/4 v0, 0x1

    #@1d
    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->createImsService(Z)V

    #@20
    .line 670
    return-void
.end method

.method private checkAndThrowExceptionIfServiceUnavailable()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 1097
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1098
    const/4 v0, 0x1

    #@5
    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->createImsService(Z)V

    #@8
    .line 1100
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@a
    if-nez v0, :cond_0

    #@c
    .line 1101
    new-instance v0, Lcom/android/ims/ImsException;

    #@e
    const-string/jumbo v1, "Service is unavailable"

    #@11
    .line 1102
    const/16 v2, 0x6a

    #@13
    .line 1101
    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@16
    throw v0

    #@17
    .line 1096
    :cond_0
    return-void
.end method

.method private createCallSession(ILcom/android/ims/ImsCallProfile;)Lcom/android/ims/internal/ImsCallSession;
    .locals 5
    .param p1, "serviceId"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1147
    :try_start_0
    new-instance v1, Lcom/android/ims/internal/ImsCallSession;

    #@3
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@5
    const/4 v3, 0x0

    #@6
    invoke-interface {v2, p1, p2, v3}, Lcom/android/ims/internal/IImsService;->createCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;

    #@9
    move-result-object v2

    #@a
    invoke-direct {v1, v2}, Lcom/android/ims/internal/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    return-object v1

    #@e
    .line 1148
    :catch_0
    move-exception v0

    #@f
    .line 1149
    .local v0, "e":Landroid/os/RemoteException;
    return-object v4
.end method

.method private createImsService(Z)V
    .locals 5
    .param p1, "checkService"    # Z

    #@0
    .prologue
    .line 1116
    if-eqz p1, :cond_0

    #@2
    .line 1117
    iget v3, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    #@4
    invoke-static {v3}, Lcom/android/ims/ImsManager;->getImsServiceName(I)Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    #@b
    move-result-object v1

    #@c
    .line 1119
    .local v1, "binder":Landroid/os/IBinder;
    if-nez v1, :cond_0

    #@e
    .line 1120
    return-void

    #@f
    .line 1124
    .end local v1    # "binder":Landroid/os/IBinder;
    :cond_0
    iget v3, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    #@11
    invoke-static {v3}, Lcom/android/ims/ImsManager;->getImsServiceName(I)Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@18
    move-result-object v0

    #@19
    .line 1126
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    #@1b
    .line 1128
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsManager;->mDeathRecipient:Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;

    #@1d
    const/4 v4, 0x0

    #@1e
    invoke-interface {v0, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 1133
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/android/ims/internal/IImsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    #@24
    move-result-object v3

    #@25
    iput-object v3, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@27
    .line 1115
    return-void

    #@28
    .line 1129
    :catch_0
    move-exception v2

    #@29
    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private createRegistrationListenerProxy(ILcom/android/ims/ImsConnectionStateListener;)Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;
    .locals 1
    .param p1, "serviceClass"    # I
    .param p2, "listener"    # Lcom/android/ims/ImsConnectionStateListener;

    #@0
    .prologue
    .line 1156
    new-instance v0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;-><init>(Lcom/android/ims/ImsManager;ILcom/android/ims/ImsConnectionStateListener;)V

    #@5
    .line 1157
    .local v0, "proxy":Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;
    return-object v0
.end method

.method public static factoryReset(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 1454
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 1455
    const-string/jumbo v3, "volte_vt_enabled"

    #@9
    .line 1454
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@c
    .line 1459
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@f
    move-result-object v3

    #@10
    .line 1460
    const-string/jumbo v4, "wfc_ims_enabled"

    #@13
    .line 1462
    const-string/jumbo v0, "carrier_default_wfc_ims_enabled_bool"

    #@16
    .line 1461
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_1

    #@1c
    move v0, v1

    #@1d
    .line 1459
    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@20
    .line 1466
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@23
    move-result-object v0

    #@24
    .line 1467
    const-string/jumbo v3, "wfc_ims_mode"

    #@27
    .line 1469
    const-string/jumbo v4, "carrier_default_wfc_ims_mode_int"

    #@2a
    .line 1468
    invoke-static {p0, v4}, Lcom/android/ims/ImsManager;->getIntCarrierConfig(Landroid/content/Context;Ljava/lang/String;)I

    #@2d
    move-result v4

    #@2e
    .line 1466
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@31
    .line 1472
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@34
    move-result-object v0

    #@35
    .line 1473
    const-string/jumbo v3, "wfc_ims_roaming_enabled"

    #@38
    .line 1475
    const-string/jumbo v4, "carrier_default_wfc_ims_roaming_enabled_bool"

    #@3b
    .line 1474
    invoke-static {p0, v4}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@3e
    move-result v4

    #@3f
    if-eqz v4, :cond_0

    #@41
    move v2, v1

    #@42
    .line 1472
    :cond_0
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@45
    .line 1479
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@48
    move-result-object v0

    #@49
    .line 1480
    const-string/jumbo v2, "vt_ims_enabled"

    #@4c
    .line 1479
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@4f
    .line 1485
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    #@52
    move-result v0

    #@53
    .line 1484
    invoke-static {p0, v0, v1}, Lcom/android/ims/ImsManager;->updateImsServiceConfig(Landroid/content/Context;IZ)V

    #@56
    .line 1452
    return-void

    #@57
    :cond_1
    move v0, v2

    #@58
    .line 1463
    goto :goto_0
.end method

.method private static getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1029
    const-string/jumbo v2, "carrier_config"

    #@3
    .line 1028
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Landroid/telephony/CarrierConfigManager;

    #@9
    .line 1030
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v0, 0x0

    #@a
    .line 1031
    .local v0, "b":Landroid/os/PersistableBundle;
    if-eqz v1, :cond_0

    #@c
    .line 1032
    invoke-virtual {v1}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    #@f
    move-result-object v0

    #@10
    .line 1034
    .end local v0    # "b":Landroid/os/PersistableBundle;
    :cond_0
    if-eqz v0, :cond_1

    #@12
    .line 1035
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    #@15
    move-result v2

    #@16
    return v2

    #@17
    .line 1038
    :cond_1
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    #@1e
    move-result v2

    #@1f
    return v2
.end method

.method private static getCallId(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "incomingCallIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1071
    if-nez p0, :cond_0

    #@3
    .line 1072
    return-object v0

    #@4
    .line 1075
    :cond_0
    const-string/jumbo v0, "android:imsCallID"

    #@7
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method private static getImsServiceName(I)Ljava/lang/String;
    .locals 1
    .param p0, "phoneId"    # I

    #@0
    .prologue
    .line 1109
    const-string/jumbo v0, "ims"

    #@3
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    #@0
    .prologue
    .line 189
    sget-object v2, Lcom/android/ims/ImsManager;->sImsManagerInstances:Ljava/util/HashMap;

    #@2
    monitor-enter v2

    #@3
    .line 190
    :try_start_0
    sget-object v1, Lcom/android/ims/ImsManager;->sImsManagerInstances:Ljava/util/HashMap;

    #@5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 191
    sget-object v1, Lcom/android/ims/ImsManager;->sImsManagerInstances:Ljava/util/HashMap;

    #@11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Lcom/android/ims/ImsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit v2

    #@1c
    return-object v1

    #@1d
    .line 193
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/ims/ImsManager;

    #@1f
    invoke-direct {v0, p0, p1}, Lcom/android/ims/ImsManager;-><init>(Landroid/content/Context;I)V

    #@22
    .line 194
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    sget-object v1, Lcom/android/ims/ImsManager;->sImsManagerInstances:Ljava/util/HashMap;

    #@24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    monitor-exit v2

    #@2c
    .line 196
    return-object v0

    #@2d
    .line 189
    .end local v0    # "mgr":Lcom/android/ims/ImsManager;
    :catchall_0
    move-exception v1

    #@2e
    monitor-exit v2

    #@2f
    throw v1
.end method

.method private static getIntCarrierConfig(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1051
    const-string/jumbo v2, "carrier_config"

    #@3
    .line 1050
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Landroid/telephony/CarrierConfigManager;

    #@9
    .line 1052
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v0, 0x0

    #@a
    .line 1053
    .local v0, "b":Landroid/os/PersistableBundle;
    if-eqz v1, :cond_0

    #@c
    .line 1054
    invoke-virtual {v1}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    #@f
    move-result-object v0

    #@10
    .line 1056
    .end local v0    # "b":Landroid/os/PersistableBundle;
    :cond_0
    if-eqz v0, :cond_1

    #@12
    .line 1057
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    #@15
    move-result v2

    #@16
    return v2

    #@17
    .line 1060
    :cond_1
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, p1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    #@1e
    move-result v2

    #@1f
    return v2
.end method

.method private static getServiceId(Landroid/content/Intent;)I
    .locals 2
    .param p0, "incomingCallIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 1085
    if-nez p0, :cond_0

    #@3
    .line 1086
    return v1

    #@4
    .line 1089
    :cond_0
    const-string/jumbo v0, "android:imsServiceId"

    #@7
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public static getWfcMode(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 413
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v1

    #@4
    .line 414
    const-string/jumbo v2, "wfc_ims_mode"

    #@7
    .line 415
    const-string/jumbo v3, "carrier_default_wfc_ims_mode_int"

    #@a
    .line 414
    invoke-static {p0, v3}, Lcom/android/ims/ImsManager;->getIntCarrierConfig(Landroid/content/Context;Ljava/lang/String;)I

    #@d
    move-result v3

    #@e
    .line 413
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@11
    move-result v0

    #@12
    .line 416
    .local v0, "setting":I
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "getWfcMode - setting="

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-static {v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    #@29
    .line 417
    return v0
.end method

.method public static isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 207
    const-string/jumbo v2, "editable_enhanced_4g_lte_bool"

    #@4
    .line 206
    invoke-static {p0, v2}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 208
    return v1

    #@b
    .line 211
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@e
    move-result-object v2

    #@f
    .line 212
    const-string/jumbo v3, "volte_vt_enabled"

    #@12
    .line 210
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@15
    move-result v0

    #@16
    .line 213
    .local v0, "enabled":I
    if-ne v0, v1, :cond_1

    #@18
    :goto_0
    return v1

    #@19
    :cond_1
    const/4 v1, 0x0

    #@1a
    goto :goto_0
.end method

.method private static isGbaValid(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 524
    const-string/jumbo v3, "carrier_ims_gba_required_bool"

    #@4
    .line 523
    invoke-static {p0, v3}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_3

    #@a
    .line 525
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@d
    move-result-object v2

    #@e
    .line 526
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getIsimIst()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 527
    .local v0, "efIst":Ljava/lang/String;
    if-nez v0, :cond_0

    #@14
    .line 528
    const-string/jumbo v3, "ISF is NULL"

    #@17
    invoke-static {v3}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    #@1a
    .line 529
    return v4

    #@1b
    .line 531
    :cond_0
    if-eqz v0, :cond_2

    #@1d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@20
    move-result v3

    #@21
    if-le v3, v4, :cond_2

    #@23
    .line 532
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    #@26
    move-result v3

    #@27
    int-to-byte v3, v3

    #@28
    and-int/lit8 v3, v3, 0x2

    #@2a
    if-eqz v3, :cond_1

    #@2c
    const/4 v1, 0x1

    #@2d
    .line 533
    .local v1, "result":Z
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v4, "GBA capable="

    #@35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    const-string/jumbo v4, ", ISF="

    #@40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    invoke-static {v3}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    #@4f
    .line 534
    return v1

    #@50
    .line 532
    .end local v1    # "result":Z
    :cond_1
    const/4 v1, 0x0

    #@51
    .restart local v1    # "result":Z
    goto :goto_0

    #@52
    .line 531
    .end local v1    # "result":Z
    :cond_2
    const/4 v1, 0x0

    #@53
    .restart local v1    # "result":Z
    goto :goto_0

    #@54
    .line 536
    .end local v0    # "efIst":Ljava/lang/String;
    .end local v1    # "result":Z
    .end local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_3
    return v4
.end method

.method private isImsTurnOffAllowed()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1186
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@4
    .line 1187
    const-string/jumbo v3, "carrier_allow_turnoff_ims_bool"

    #@7
    .line 1186
    invoke-static {v2, v3}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 1188
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@f
    invoke-static {v2}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 1189
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@17
    invoke-static {v2}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_0

    #@1d
    move v0, v1

    #@1e
    .line 1186
    :cond_0
    :goto_0
    return v0

    #@1f
    :cond_1
    move v0, v1

    #@20
    goto :goto_0
.end method

.method public static isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 244
    const-string/jumbo v2, "carrier_volte_tty_supported_bool"

    #@5
    .line 243
    invoke-static {p0, v2}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 245
    return v0

    #@c
    .line 248
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@f
    move-result-object v2

    #@10
    .line 249
    const-string/jumbo v3, "preferred_tty_mode"

    #@13
    .line 248
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@16
    move-result v2

    #@17
    if-nez v2, :cond_1

    #@19
    :goto_0
    return v0

    #@1a
    :cond_1
    move v0, v1

    #@1b
    goto :goto_0
.end method

.method public static isVolteEnabledByPlatform(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 257
    const-string/jumbo v1, "persist.dbg.volte_avail_ovr"

    #@5
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@8
    move-result v1

    #@9
    if-ne v1, v2, :cond_0

    #@b
    .line 259
    return v2

    #@c
    .line 262
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@f
    move-result-object v1

    #@10
    .line 263
    const v2, 0x112008a

    #@13
    .line 262
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 265
    const-string/jumbo v1, "carrier_volte_available_bool"

    #@1c
    .line 264
    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@1f
    move-result v1

    #@20
    .line 262
    if-eqz v1, :cond_1

    #@22
    .line 266
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isGbaValid(Landroid/content/Context;)Z

    #@25
    move-result v0

    #@26
    .line 262
    :cond_1
    return v0
.end method

.method public static isVolteProvisionedOnDevice(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 273
    const/4 v2, 0x1

    #@1
    .line 275
    .local v2, "isProvisioned":Z
    const-string/jumbo v4, "carrier_volte_provisioning_required_bool"

    #@4
    .line 274
    invoke-static {p0, v4}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_0

    #@a
    .line 276
    const/4 v2, 0x0

    #@b
    .line 278
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    #@e
    move-result v4

    #@f
    .line 277
    invoke-static {p0, v4}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    #@12
    move-result-object v3

    #@13
    .line 279
    .local v3, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v3, :cond_0

    #@15
    .line 281
    :try_start_0
    invoke-virtual {v3}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    #@18
    move-result-object v0

    #@19
    .line 282
    .local v0, "config":Lcom/android/ims/ImsConfig;
    if-eqz v0, :cond_0

    #@1b
    .line 283
    invoke-virtual {v0}, Lcom/android/ims/ImsConfig;->getVolteProvisioned()Z
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    move-result v2

    #@1f
    .line 291
    .end local v0    # "config":Lcom/android/ims/ImsConfig;
    .end local v2    # "isProvisioned":Z
    .end local v3    # "mgr":Lcom/android/ims/ImsManager;
    :cond_0
    :goto_0
    return v2

    #@20
    .line 285
    .restart local v2    # "isProvisioned":Z
    .restart local v3    # "mgr":Lcom/android/ims/ImsManager;
    :catch_0
    move-exception v1

    #@21
    .local v1, "ie":Lcom/android/ims/ImsException;
    goto :goto_0
.end method

.method public static isVtEnabledByPlatform(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 301
    const-string/jumbo v1, "persist.dbg.vt_avail_ovr"

    #@5
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@8
    move-result v1

    #@9
    if-ne v1, v2, :cond_0

    #@b
    .line 303
    return v2

    #@c
    .line 307
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@f
    move-result-object v1

    #@10
    .line 308
    const v2, 0x112008e

    #@13
    .line 307
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 310
    const-string/jumbo v1, "carrier_vt_available_bool"

    #@1c
    .line 309
    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@1f
    move-result v1

    #@20
    .line 307
    if-eqz v1, :cond_1

    #@22
    .line 311
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isGbaValid(Landroid/content/Context;)Z

    #@25
    move-result v0

    #@26
    .line 306
    :cond_1
    return v0
.end method

.method public static isVtEnabledByUser(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 318
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@4
    move-result-object v2

    #@5
    .line 319
    const-string/jumbo v3, "vt_ims_enabled"

    #@8
    .line 318
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@b
    move-result v0

    #@c
    .line 321
    .local v0, "enabled":I
    if-ne v0, v1, :cond_0

    #@e
    :goto_0
    return v1

    #@f
    :cond_0
    const/4 v1, 0x0

    #@10
    goto :goto_0
.end method

.method public static isWfcEnabledByPlatform(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 503
    const-string/jumbo v1, "persist.dbg.wfc_avail_ovr"

    #@5
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@8
    move-result v1

    #@9
    if-ne v1, v2, :cond_0

    #@b
    .line 505
    return v2

    #@c
    .line 509
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@f
    move-result-object v1

    #@10
    .line 510
    const v2, 0x1120090

    #@13
    .line 509
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 512
    const-string/jumbo v1, "carrier_wfc_ims_available_bool"

    #@1c
    .line 511
    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@1f
    move-result v1

    #@20
    .line 509
    if-eqz v1, :cond_1

    #@22
    .line 513
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isGbaValid(Landroid/content/Context;)Z

    #@25
    move-result v0

    #@26
    .line 508
    :cond_1
    return v0
.end method

.method public static isWfcEnabledByUser(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 362
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v4

    #@6
    .line 363
    const-string/jumbo v5, "wfc_ims_enabled"

    #@9
    .line 365
    const-string/jumbo v1, "carrier_default_wfc_ims_enabled_bool"

    #@c
    .line 364
    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    move v1, v2

    #@13
    .line 362
    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@16
    move-result v0

    #@17
    .line 367
    .local v0, "enabled":I
    if-ne v0, v2, :cond_1

    #@19
    :goto_1
    return v2

    #@1a
    .end local v0    # "enabled":I
    :cond_0
    move v1, v3

    #@1b
    .line 366
    goto :goto_0

    #@1c
    .restart local v0    # "enabled":I
    :cond_1
    move v2, v3

    #@1d
    .line 367
    goto :goto_1
.end method

.method public static isWfcRoamingEnabledByUser(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 455
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v4

    #@6
    .line 456
    const-string/jumbo v5, "wfc_ims_roaming_enabled"

    #@9
    .line 458
    const-string/jumbo v1, "carrier_default_wfc_ims_roaming_enabled_bool"

    #@c
    .line 457
    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    move v1, v2

    #@13
    .line 455
    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@16
    move-result v0

    #@17
    .line 460
    .local v0, "enabled":I
    if-ne v0, v2, :cond_1

    #@19
    :goto_1
    return v2

    #@1a
    .end local v0    # "enabled":I
    :cond_0
    move v1, v3

    #@1b
    .line 459
    goto :goto_0

    #@1c
    .restart local v0    # "enabled":I
    :cond_1
    move v2, v3

    #@1d
    .line 460
    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1161
    const-string/jumbo v0, "ImsManager"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 1160
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1165
    const-string/jumbo v0, "ImsManager"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 1164
    return-void
.end method

.method private static loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1169
    const-string/jumbo v0, "ImsManager"

    #@3
    invoke-static {v0, p0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6
    .line 1168
    return-void
.end method

.method private setAdvanced4GMode(Z)V
    .locals 9
    .param p1, "turnOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1193
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@5
    .line 1196
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    #@8
    move-result-object v0

    #@9
    .line 1197
    .local v0, "config":Lcom/android/ims/ImsConfig;
    if-eqz v0, :cond_0

    #@b
    if-nez p1, :cond_2

    #@d
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isImsTurnOffAllowed()Z
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result v5

    #@11
    if-eqz v5, :cond_2

    #@13
    .line 1212
    .end local v0    # "config":Lcom/android/ims/ImsConfig;
    :cond_0
    :goto_0
    if-eqz p1, :cond_6

    #@15
    .line 1213
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->turnOnIms()V

    #@18
    .line 1192
    :cond_1
    :goto_1
    return-void

    #@19
    .line 1199
    .restart local v0    # "config":Lcom/android/ims/ImsConfig;
    :cond_2
    if-eqz p1, :cond_3

    #@1b
    move v5, v3

    #@1c
    :goto_2
    :try_start_1
    iget-object v6, p0, Lcom/android/ims/ImsManager;->mImsConfigListener:Lcom/android/ims/ImsConfigListener;

    #@1e
    .line 1198
    const/4 v7, 0x0

    #@1f
    .line 1199
    const/16 v8, 0xd

    #@21
    .line 1198
    invoke-virtual {v0, v7, v8, v5, v6}, Lcom/android/ims/ImsConfig;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    #@24
    .line 1201
    iget-object v5, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@26
    invoke-static {v5}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform(Landroid/content/Context;)Z

    #@29
    move-result v5

    #@2a
    if-eqz v5, :cond_0

    #@2c
    .line 1202
    if-eqz p1, :cond_4

    #@2e
    iget-object v5, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@30
    invoke-static {v5}, Lcom/android/ims/ImsManager;->isVtEnabledByUser(Landroid/content/Context;)Z

    #@33
    move-result v2

    #@34
    .line 1205
    :goto_3
    if-eqz v2, :cond_5

    #@36
    .line 1206
    :goto_4
    iget-object v4, p0, Lcom/android/ims/ImsManager;->mImsConfigListener:Lcom/android/ims/ImsConfigListener;

    #@38
    .line 1203
    const/4 v5, 0x1

    #@39
    .line 1204
    const/16 v6, 0xd

    #@3b
    .line 1203
    invoke-virtual {v0, v5, v6, v3, v4}, Lcom/android/ims/ImsConfig;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_0

    #@3e
    goto :goto_0

    #@3f
    .line 1209
    .end local v0    # "config":Lcom/android/ims/ImsConfig;
    :catch_0
    move-exception v1

    #@40
    .line 1210
    .local v1, "e":Lcom/android/ims/ImsException;
    new-instance v3, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v4, "setAdvanced4GMode() : "

    #@48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    invoke-static {v3}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    #@57
    goto :goto_0

    #@58
    .end local v1    # "e":Lcom/android/ims/ImsException;
    .restart local v0    # "config":Lcom/android/ims/ImsConfig;
    :cond_3
    move v5, v4

    #@59
    .line 1199
    goto :goto_2

    #@5a
    .line 1202
    :cond_4
    const/4 v2, 0x0

    #@5b
    .local v2, "enableViLte":Z
    goto :goto_3

    #@5c
    .end local v2    # "enableViLte":Z
    :cond_5
    move v3, v4

    #@5d
    .line 1205
    goto :goto_4

    #@5e
    .line 1214
    .end local v0    # "config":Lcom/android/ims/ImsConfig;
    :cond_6
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isImsTurnOffAllowed()Z

    #@61
    move-result v3

    #@62
    if-eqz v3, :cond_1

    #@64
    .line 1215
    const-string/jumbo v3, "setAdvanced4GMode() : imsServiceAllowTurnOff -> turnOffIms"

    #@67
    invoke-static {v3}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    #@6a
    .line 1216
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->turnOffIms()V

    #@6d
    goto :goto_1
.end method

.method public static setEnhanced4gLteModeSetting(Landroid/content/Context;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 220
    if-eqz p1, :cond_1

    #@2
    const/4 v2, 0x1

    #@3
    .line 222
    .local v2, "value":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v3

    #@7
    .line 223
    const-string/jumbo v4, "volte_vt_enabled"

    #@a
    .line 221
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@d
    .line 225
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    .line 227
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    #@16
    move-result v3

    #@17
    .line 226
    invoke-static {p0, v3}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    #@1a
    move-result-object v1

    #@1b
    .line 228
    .local v1, "imsManager":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_0

    #@1d
    .line 230
    :try_start_0
    invoke-direct {v1, p1}, Lcom/android/ims/ImsManager;->setAdvanced4GMode(Z)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 219
    .end local v1    # "imsManager":Lcom/android/ims/ImsManager;
    :cond_0
    :goto_1
    return-void

    #@21
    .line 220
    .end local v2    # "value":I
    :cond_1
    const/4 v2, 0x0

    #@22
    .restart local v2    # "value":I
    goto :goto_0

    #@23
    .line 231
    .restart local v1    # "imsManager":Lcom/android/ims/ImsManager;
    :catch_0
    move-exception v0

    #@24
    .local v0, "ie":Lcom/android/ims/ImsException;
    goto :goto_1
.end method

.method public static setVtSetting(Landroid/content/Context;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 328
    if-eqz p1, :cond_1

    #@3
    const/4 v3, 0x1

    #@4
    .line 329
    .local v3, "value":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v5

    #@8
    .line 330
    const-string/jumbo v6, "vt_ims_enabled"

    #@b
    .line 329
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@e
    .line 333
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    #@11
    move-result v5

    #@12
    .line 332
    invoke-static {p0, v5}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    #@15
    move-result-object v2

    #@16
    .line 334
    .local v2, "imsManager":Lcom/android/ims/ImsManager;
    if-eqz v2, :cond_0

    #@18
    .line 336
    :try_start_0
    invoke-virtual {v2}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    #@1b
    move-result-object v0

    #@1c
    .line 339
    .local v0, "config":Lcom/android/ims/ImsConfig;
    if-eqz p1, :cond_2

    #@1e
    .line 341
    :goto_1
    iget-object v5, v2, Lcom/android/ims/ImsManager;->mImsConfigListener:Lcom/android/ims/ImsConfigListener;

    #@20
    .line 337
    const/4 v6, 0x1

    #@21
    .line 338
    const/16 v7, 0xd

    #@23
    .line 337
    invoke-virtual {v0, v6, v7, v4, v5}, Lcom/android/ims/ImsConfig;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    #@26
    .line 343
    if-eqz p1, :cond_3

    #@28
    .line 344
    invoke-direct {v2}, Lcom/android/ims/ImsManager;->turnOnIms()V

    #@2b
    .line 327
    .end local v0    # "config":Lcom/android/ims/ImsConfig;
    :cond_0
    :goto_2
    return-void

    #@2c
    .line 328
    .end local v2    # "imsManager":Lcom/android/ims/ImsManager;
    .end local v3    # "value":I
    :cond_1
    const/4 v3, 0x0

    #@2d
    .restart local v3    # "value":I
    goto :goto_0

    #@2e
    .line 340
    .restart local v0    # "config":Lcom/android/ims/ImsConfig;
    .restart local v2    # "imsManager":Lcom/android/ims/ImsManager;
    :cond_2
    const/4 v4, 0x0

    #@2f
    goto :goto_1

    #@30
    .line 346
    :cond_3
    const-string/jumbo v4, "carrier_allow_turnoff_ims_bool"

    #@33
    .line 345
    invoke-static {p0, v4}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@36
    move-result v4

    #@37
    if-eqz v4, :cond_0

    #@39
    .line 347
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    #@3c
    move-result v4

    #@3d
    if-eqz v4, :cond_4

    #@3f
    .line 348
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    #@42
    move-result v4

    #@43
    if-nez v4, :cond_0

    #@45
    .line 349
    :cond_4
    const-string/jumbo v4, "setVtSetting() : imsServiceAllowTurnOff -> turnOffIms"

    #@48
    invoke-static {v4}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    #@4b
    .line 350
    invoke-direct {v2}, Lcom/android/ims/ImsManager;->turnOffIms()V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@4e
    goto :goto_2

    #@4f
    .line 352
    .end local v0    # "config":Lcom/android/ims/ImsConfig;
    :catch_0
    move-exception v1

    #@50
    .line 353
    .local v1, "e":Lcom/android/ims/ImsException;
    new-instance v4, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v5, "setVtSetting(): "

    #@58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v4

    #@64
    invoke-static {v4}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    #@67
    goto :goto_2
.end method

.method public static setWfcMode(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wfcMode"    # I

    #@0
    .prologue
    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "setWfcMode - setting="

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
    invoke-static {v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    #@17
    .line 425
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1a
    move-result-object v0

    #@1b
    .line 426
    const-string/jumbo v1, "wfc_ims_mode"

    #@1e
    .line 425
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@21
    .line 428
    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->setWfcModeInternal(Landroid/content/Context;I)V

    #@24
    .line 423
    return-void
.end method

.method private static setWfcModeInternal(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wfcMode"    # I

    #@0
    .prologue
    .line 433
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    #@3
    move-result v3

    #@4
    .line 432
    invoke-static {p0, v3}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    #@7
    move-result-object v0

    #@8
    .line 434
    .local v0, "imsManager":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    #@a
    .line 435
    move v2, p1

    #@b
    .line 436
    .local v2, "value":I
    new-instance v1, Ljava/lang/Thread;

    #@d
    new-instance v3, Lcom/android/ims/ImsManager$1;

    #@f
    invoke-direct {v3, v0, p1}, Lcom/android/ims/ImsManager$1;-><init>(Lcom/android/ims/ImsManager;I)V

    #@12
    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@15
    .line 447
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    #@18
    .line 431
    .end local v1    # "thread":Ljava/lang/Thread;
    .end local v2    # "value":I
    :cond_0
    return-void
.end method

.method public static setWfcRoamingSetting(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 467
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v1

    #@4
    .line 468
    const-string/jumbo v2, "wfc_ims_roaming_enabled"

    #@7
    .line 469
    if-eqz p1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    .line 467
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@d
    .line 472
    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->setWfcRoamingSettingInternal(Landroid/content/Context;Z)V

    #@10
    .line 466
    return-void

    #@11
    .line 470
    :cond_0
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method private static setWfcRoamingSettingInternal(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 477
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    #@3
    move-result v3

    #@4
    .line 476
    invoke-static {p0, v3}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    #@7
    move-result-object v0

    #@8
    .line 478
    .local v0, "imsManager":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    #@a
    .line 479
    if-eqz p1, :cond_1

    #@c
    .line 480
    const/4 v2, 0x1

    #@d
    .line 482
    .local v2, "value":I
    :goto_0
    new-instance v1, Ljava/lang/Thread;

    #@f
    new-instance v3, Lcom/android/ims/ImsManager$2;

    #@11
    invoke-direct {v3, v0, v2}, Lcom/android/ims/ImsManager$2;-><init>(Lcom/android/ims/ImsManager;I)V

    #@14
    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@17
    .line 493
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    #@1a
    .line 475
    .end local v1    # "thread":Ljava/lang/Thread;
    .end local v2    # "value":I
    :cond_0
    return-void

    #@1b
    .line 481
    :cond_1
    const/4 v2, 0x0

    #@1c
    .restart local v2    # "value":I
    goto :goto_0
.end method

.method public static setWfcSetting(Landroid/content/Context;Z)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 374
    if-eqz p1, :cond_3

    #@3
    const/4 v3, 0x1

    #@4
    .line 375
    .local v3, "value":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v5

    #@8
    .line 376
    const-string/jumbo v6, "wfc_ims_enabled"

    #@b
    .line 375
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@e
    .line 379
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    #@11
    move-result v5

    #@12
    .line 378
    invoke-static {p0, v5}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    #@15
    move-result-object v2

    #@16
    .line 380
    .local v2, "imsManager":Lcom/android/ims/ImsManager;
    if-eqz v2, :cond_2

    #@18
    .line 382
    :try_start_0
    invoke-virtual {v2}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    #@1b
    move-result-object v0

    #@1c
    .line 385
    .local v0, "config":Lcom/android/ims/ImsConfig;
    if-eqz p1, :cond_4

    #@1e
    move v5, v4

    #@1f
    .line 387
    :goto_1
    iget-object v6, v2, Lcom/android/ims/ImsManager;->mImsConfigListener:Lcom/android/ims/ImsConfigListener;

    #@21
    .line 383
    const/4 v7, 0x2

    #@22
    .line 384
    const/16 v8, 0x12

    #@24
    .line 383
    invoke-virtual {v0, v7, v8, v5, v6}, Lcom/android/ims/ImsConfig;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    #@27
    .line 389
    if-eqz p1, :cond_5

    #@29
    .line 390
    invoke-direct {v2}, Lcom/android/ims/ImsManager;->turnOnIms()V

    #@2c
    .line 400
    :cond_0
    :goto_2
    if-eqz p1, :cond_1

    #@2e
    .line 401
    invoke-static {p0}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    #@31
    move-result v4

    #@32
    .line 400
    :cond_1
    invoke-static {p0, v4}, Lcom/android/ims/ImsManager;->setWfcModeInternal(Landroid/content/Context;I)V

    #@35
    .line 373
    .end local v0    # "config":Lcom/android/ims/ImsConfig;
    :cond_2
    :goto_3
    return-void

    #@36
    .line 374
    .end local v2    # "imsManager":Lcom/android/ims/ImsManager;
    .end local v3    # "value":I
    :cond_3
    const/4 v3, 0x0

    #@37
    .restart local v3    # "value":I
    goto :goto_0

    #@38
    .line 386
    .restart local v0    # "config":Lcom/android/ims/ImsConfig;
    .restart local v2    # "imsManager":Lcom/android/ims/ImsManager;
    :cond_4
    const/4 v5, 0x0

    #@39
    goto :goto_1

    #@3a
    .line 392
    :cond_5
    const-string/jumbo v5, "carrier_allow_turnoff_ims_bool"

    #@3d
    .line 391
    invoke-static {p0, v5}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@40
    move-result v5

    #@41
    if-eqz v5, :cond_0

    #@43
    .line 393
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    #@46
    move-result v5

    #@47
    if-eqz v5, :cond_6

    #@49
    .line 394
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    #@4c
    move-result v5

    #@4d
    if-nez v5, :cond_0

    #@4f
    .line 395
    :cond_6
    const-string/jumbo v5, "setWfcSetting() : imsServiceAllowTurnOff -> turnOffIms"

    #@52
    invoke-static {v5}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    #@55
    .line 396
    invoke-direct {v2}, Lcom/android/ims/ImsManager;->turnOffIms()V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@58
    goto :goto_2

    #@59
    .line 403
    .end local v0    # "config":Lcom/android/ims/ImsConfig;
    :catch_0
    move-exception v1

    #@5a
    .line 404
    .local v1, "e":Lcom/android/ims/ImsException;
    new-instance v4, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v5, "setWfcSetting(): "

    #@62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v4

    #@66
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v4

    #@6a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v4

    #@6e
    invoke-static {v4}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    #@71
    goto :goto_3
.end method

.method private turnOffIms()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 1225
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@3
    .line 1228
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@5
    iget v2, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    #@7
    invoke-interface {v1, v2}, Lcom/android/ims/internal/IImsService;->turnOffIms(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 1224
    return-void

    #@b
    .line 1229
    :catch_0
    move-exception v0

    #@c
    .line 1230
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    #@e
    const-string/jumbo v2, "turnOffIms() "

    #@11
    const/16 v3, 0x6a

    #@13
    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@16
    throw v1
.end method

.method private turnOnIms()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 1176
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@3
    .line 1179
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@5
    iget v2, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    #@7
    invoke-interface {v1, v2}, Lcom/android/ims/internal/IImsService;->turnOnIms(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 1175
    return-void

    #@b
    .line 1180
    :catch_0
    move-exception v0

    #@c
    .line 1181
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    #@e
    const-string/jumbo v2, "turnOnIms() "

    #@11
    const/16 v3, 0x6a

    #@13
    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@16
    throw v1
.end method

.method public static updateImsServiceConfig(Landroid/content/Context;IZ)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "force"    # Z

    #@0
    .prologue
    .line 547
    if-nez p2, :cond_0

    #@2
    .line 548
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    #@9
    move-result v3

    #@a
    const/4 v4, 0x5

    #@b
    if-eq v3, v4, :cond_0

    #@d
    .line 549
    const-string/jumbo v3, "updateImsServiceConfig: SIM not ready"

    #@10
    invoke-static {v3}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    #@13
    .line 551
    return-void

    #@14
    .line 555
    :cond_0
    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    #@17
    move-result-object v1

    #@18
    .line 556
    .local v1, "imsManager":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_2

    #@1a
    iget-boolean v3, v1, Lcom/android/ims/ImsManager;->mConfigUpdated:Z

    #@1c
    if-eqz v3, :cond_1

    #@1e
    if-eqz p2, :cond_2

    #@20
    .line 558
    :cond_1
    :try_start_0
    invoke-direct {v1}, Lcom/android/ims/ImsManager;->updateVolteFeatureValue()Z

    #@23
    move-result v2

    #@24
    .line 559
    .local v2, "isImsUsed":Z
    invoke-direct {v1}, Lcom/android/ims/ImsManager;->updateVideoCallFeatureValue()Z

    #@27
    move-result v3

    #@28
    or-int/2addr v2, v3

    #@29
    .line 560
    invoke-direct {v1}, Lcom/android/ims/ImsManager;->updateWfcFeatureAndProvisionedValues()Z

    #@2c
    move-result v3

    #@2d
    or-int/2addr v2, v3

    #@2e
    .line 562
    if-nez v2, :cond_3

    #@30
    .line 563
    const-string/jumbo v3, "carrier_allow_turnoff_ims_bool"

    #@33
    .line 562
    invoke-static {p0, v3}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@36
    move-result v3

    #@37
    if-eqz v3, :cond_3

    #@39
    .line 571
    invoke-direct {v1}, Lcom/android/ims/ImsManager;->turnOffIms()V

    #@3c
    .line 574
    :goto_0
    const/4 v3, 0x1

    #@3d
    iput-boolean v3, v1, Lcom/android/ims/ImsManager;->mConfigUpdated:Z

    #@3f
    .line 546
    .end local v2    # "isImsUsed":Z
    :cond_2
    :goto_1
    return-void

    #@40
    .line 568
    .restart local v2    # "isImsUsed":Z
    :cond_3
    invoke-direct {v1}, Lcom/android/ims/ImsManager;->turnOnIms()V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@43
    goto :goto_0

    #@44
    .line 575
    .end local v2    # "isImsUsed":Z
    :catch_0
    move-exception v0

    #@45
    .line 576
    .local v0, "e":Lcom/android/ims/ImsException;
    new-instance v3, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v4, "updateImsServiceConfig: "

    #@4d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v3

    #@55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v3

    #@59
    invoke-static {v3}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    #@5c
    .line 577
    const/4 v3, 0x0

    #@5d
    iput-boolean v3, v1, Lcom/android/ims/ImsManager;->mConfigUpdated:Z

    #@5f
    goto :goto_1
.end method

.method private updateVideoCallFeatureValue()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 614
    iget-object v4, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@3
    invoke-static {v4}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform(Landroid/content/Context;)Z

    #@6
    move-result v0

    #@7
    .line 615
    .local v0, "available":Z
    iget-object v4, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@9
    invoke-static {v4}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_0

    #@f
    .line 616
    iget-object v4, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@11
    invoke-static {v4}, Lcom/android/ims/ImsManager;->isVtEnabledByUser(Landroid/content/Context;)Z

    #@14
    move-result v1

    #@15
    .line 617
    :goto_0
    iget-object v4, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@17
    invoke-static {v4}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    #@1a
    move-result v3

    #@1b
    .line 618
    .local v3, "isNonTty":Z
    if-eqz v0, :cond_1

    #@1d
    if-eqz v1, :cond_1

    #@1f
    move v2, v3

    #@20
    .line 620
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v6, "updateVideoCallFeatureValue: available = "

    #@28
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    .line 621
    const-string/jumbo v6, ", enabled = "

    #@33
    .line 620
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    .line 622
    const-string/jumbo v6, ", nonTTY = "

    #@3e
    .line 620
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v4

    #@4a
    invoke-static {v4}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    #@4d
    .line 624
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    #@50
    move-result-object v6

    #@51
    .line 627
    if-eqz v2, :cond_2

    #@53
    move v4, v5

    #@54
    .line 630
    :goto_2
    iget-object v7, p0, Lcom/android/ims/ImsManager;->mImsConfigListener:Lcom/android/ims/ImsConfigListener;

    #@56
    .line 626
    const/16 v8, 0xd

    #@58
    .line 624
    invoke-virtual {v6, v5, v8, v4, v7}, Lcom/android/ims/ImsConfig;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    #@5b
    .line 632
    return v2

    #@5c
    .line 615
    .end local v3    # "isNonTty":Z
    :cond_0
    const/4 v1, 0x0

    #@5d
    .local v1, "enabled":Z
    goto :goto_0

    #@5e
    .line 618
    .end local v1    # "enabled":Z
    .restart local v3    # "isNonTty":Z
    :cond_1
    const/4 v2, 0x0

    #@5f
    .local v2, "isFeatureOn":Z
    goto :goto_1

    #@60
    .line 629
    .end local v2    # "isFeatureOn":Z
    :cond_2
    const/4 v4, 0x0

    #@61
    goto :goto_2
.end method

.method private updateVolteFeatureValue()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 588
    iget-object v4, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@3
    invoke-static {v4}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    #@6
    move-result v0

    #@7
    .line 589
    .local v0, "available":Z
    iget-object v4, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@9
    invoke-static {v4}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    #@c
    move-result v1

    #@d
    .line 590
    .local v1, "enabled":Z
    iget-object v4, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@f
    invoke-static {v4}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    #@12
    move-result v3

    #@13
    .line 591
    .local v3, "isNonTty":Z
    if-eqz v0, :cond_0

    #@15
    if-eqz v1, :cond_0

    #@17
    move v2, v3

    #@18
    .line 593
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v6, "updateVolteFeatureValue: available = "

    #@20
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    .line 594
    const-string/jumbo v6, ", enabled = "

    #@2b
    .line 593
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    .line 595
    const-string/jumbo v6, ", nonTTY = "

    #@36
    .line 593
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    invoke-static {v4}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    #@45
    .line 597
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    #@48
    move-result-object v6

    #@49
    .line 600
    if-eqz v2, :cond_1

    #@4b
    .line 601
    const/4 v4, 0x1

    #@4c
    .line 603
    :goto_1
    iget-object v7, p0, Lcom/android/ims/ImsManager;->mImsConfigListener:Lcom/android/ims/ImsConfigListener;

    #@4e
    .line 599
    const/16 v8, 0xd

    #@50
    .line 597
    invoke-virtual {v6, v5, v8, v4, v7}, Lcom/android/ims/ImsConfig;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    #@53
    .line 605
    return v2

    #@54
    .line 591
    :cond_0
    const/4 v2, 0x0

    #@55
    .local v2, "isFeatureOn":Z
    goto :goto_0

    #@56
    .end local v2    # "isFeatureOn":Z
    :cond_1
    move v4, v5

    #@57
    .line 602
    goto :goto_1
.end method

.method private updateWfcFeatureAndProvisionedValues()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 641
    iget-object v5, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v5}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    #@5
    move-result v0

    #@6
    .line 642
    .local v0, "available":Z
    iget-object v5, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@8
    invoke-static {v5}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    #@b
    move-result v1

    #@c
    .line 643
    .local v1, "enabled":Z
    iget-object v5, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@e
    invoke-static {v5}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    #@11
    move-result v3

    #@12
    .line 644
    .local v3, "mode":I
    iget-object v5, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@14
    invoke-static {v5}, Lcom/android/ims/ImsManager;->isWfcRoamingEnabledByUser(Landroid/content/Context;)Z

    #@17
    move-result v4

    #@18
    .line 645
    .local v4, "roaming":Z
    if-eqz v0, :cond_1

    #@1a
    move v2, v1

    #@1b
    .line 647
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v6, "updateWfcFeatureAndProvisionedValues: available = "

    #@23
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v5

    #@2b
    .line 648
    const-string/jumbo v6, ", enabled = "

    #@2e
    .line 647
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@35
    move-result-object v5

    #@36
    .line 649
    const-string/jumbo v6, ", mode = "

    #@39
    .line 647
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v5

    #@41
    .line 650
    const-string/jumbo v6, ", roaming = "

    #@44
    .line 647
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    invoke-static {v5}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    #@53
    .line 652
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    #@56
    move-result-object v6

    #@57
    .line 655
    if-eqz v2, :cond_2

    #@59
    .line 656
    const/4 v5, 0x1

    #@5a
    .line 658
    :goto_1
    iget-object v7, p0, Lcom/android/ims/ImsManager;->mImsConfigListener:Lcom/android/ims/ImsConfigListener;

    #@5c
    .line 653
    const/4 v8, 0x2

    #@5d
    .line 654
    const/16 v9, 0x12

    #@5f
    .line 652
    invoke-virtual {v6, v8, v9, v5, v7}, Lcom/android/ims/ImsConfig;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    #@62
    .line 660
    if-nez v2, :cond_0

    #@64
    .line 661
    const/4 v3, 0x1

    #@65
    .line 662
    const/4 v4, 0x0

    #@66
    .line 664
    .end local v4    # "roaming":Z
    :cond_0
    iget-object v5, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@68
    invoke-static {v5, v3}, Lcom/android/ims/ImsManager;->setWfcModeInternal(Landroid/content/Context;I)V

    #@6b
    .line 665
    iget-object v5, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@6d
    invoke-static {v5, v4}, Lcom/android/ims/ImsManager;->setWfcRoamingSettingInternal(Landroid/content/Context;Z)V

    #@70
    .line 667
    return v2

    #@71
    .line 645
    .restart local v4    # "roaming":Z
    :cond_1
    const/4 v2, 0x0

    #@72
    .local v2, "isFeatureOn":Z
    goto :goto_0

    #@73
    .line 657
    .end local v2    # "isFeatureOn":Z
    :cond_2
    const/4 v5, 0x0

    #@74
    goto :goto_1
.end method


# virtual methods
.method public close(I)V
    .locals 5
    .param p1, "serviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 759
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@4
    .line 762
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@6
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsService;->close(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 767
    iput-object v4, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;

    #@b
    .line 768
    iput-object v4, p0, Lcom/android/ims/ImsManager;->mConfig:Lcom/android/ims/ImsConfig;

    #@d
    .line 769
    iput-object v4, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;

    #@f
    .line 770
    iput-object v4, p0, Lcom/android/ims/ImsManager;->mMultiEndpoint:Lcom/android/ims/ImsMultiEndpoint;

    #@11
    .line 758
    return-void

    #@12
    .line 763
    :catch_0
    move-exception v0

    #@13
    .line 764
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v1, Lcom/android/ims/ImsException;

    #@15
    const-string/jumbo v2, "close()"

    #@18
    .line 765
    const/16 v3, 0x6a

    #@1a
    .line 764
    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@1d
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    .line 766
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@1f
    .line 767
    iput-object v4, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;

    #@21
    .line 768
    iput-object v4, p0, Lcom/android/ims/ImsManager;->mConfig:Lcom/android/ims/ImsConfig;

    #@23
    .line 769
    iput-object v4, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;

    #@25
    .line 770
    iput-object v4, p0, Lcom/android/ims/ImsManager;->mMultiEndpoint:Lcom/android/ims/ImsMultiEndpoint;

    #@27
    .line 766
    throw v1
.end method

.method public createCallProfile(III)Lcom/android/ims/ImsCallProfile;
    .locals 4
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 874
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@3
    .line 877
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@5
    invoke-interface {v1, p1, p2, p3}, Lcom/android/ims/internal/IImsService;->createCallProfile(III)Lcom/android/ims/ImsCallProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v1

    #@9
    return-object v1

    #@a
    .line 878
    :catch_0
    move-exception v0

    #@b
    .line 879
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    #@d
    const-string/jumbo v2, "createCallProfile()"

    #@10
    .line 880
    const/16 v3, 0x6a

    #@12
    .line 879
    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@15
    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1489
    const-string/jumbo v0, "ImsManager:"

    #@3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 1490
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v1, "  mPhoneId = "

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget v1, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1f
    .line 1491
    new-instance v0, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v1, "  mConfigUpdated = "

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    iget-boolean v1, p0, Lcom/android/ims/ImsManager;->mConfigUpdated:Z

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@38
    .line 1492
    new-instance v0, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v1, "  mImsService = "

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@51
    .line 1494
    new-instance v0, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v1, "  isGbaValid = "

    #@59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v0

    #@5d
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@5f
    invoke-static {v1}, Lcom/android/ims/ImsManager;->isGbaValid(Landroid/content/Context;)Z

    #@62
    move-result v1

    #@63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v0

    #@6b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6e
    .line 1495
    new-instance v0, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    const-string/jumbo v1, "  isImsTurnOffAllowed = "

    #@76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v0

    #@7a
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isImsTurnOffAllowed()Z

    #@7d
    move-result v1

    #@7e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@81
    move-result-object v0

    #@82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v0

    #@86
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@89
    .line 1496
    new-instance v0, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    const-string/jumbo v1, "  isNonTtyOrTtyOnVolteEnabled = "

    #@91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v0

    #@95
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@97
    invoke-static {v1}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    #@9a
    move-result v1

    #@9b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v0

    #@9f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a2
    move-result-object v0

    #@a3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a6
    .line 1498
    new-instance v0, Ljava/lang/StringBuilder;

    #@a8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@ab
    const-string/jumbo v1, "  isVolteEnabledByPlatform = "

    #@ae
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v0

    #@b2
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@b4
    invoke-static {v1}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    #@b7
    move-result v1

    #@b8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v0

    #@bc
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v0

    #@c0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c3
    .line 1499
    new-instance v0, Ljava/lang/StringBuilder;

    #@c5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c8
    const-string/jumbo v1, "  isVolteProvisionedOnDevice = "

    #@cb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v0

    #@cf
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@d1
    invoke-static {v1}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice(Landroid/content/Context;)Z

    #@d4
    move-result v1

    #@d5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v0

    #@d9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dc
    move-result-object v0

    #@dd
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e0
    .line 1500
    new-instance v0, Ljava/lang/StringBuilder;

    #@e2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e5
    const-string/jumbo v1, "  isEnhanced4gLteModeSettingEnabledByUser = "

    #@e8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v0

    #@ec
    .line 1501
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@ee
    invoke-static {v1}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    #@f1
    move-result v1

    #@f2
    .line 1500
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v0

    #@f6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f9
    move-result-object v0

    #@fa
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@fd
    .line 1502
    new-instance v0, Ljava/lang/StringBuilder;

    #@ff
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@102
    const-string/jumbo v1, "  isVtEnabledByPlatform = "

    #@105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    move-result-object v0

    #@109
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@10b
    invoke-static {v1}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform(Landroid/content/Context;)Z

    #@10e
    move-result v1

    #@10f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@112
    move-result-object v0

    #@113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@116
    move-result-object v0

    #@117
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11a
    .line 1503
    new-instance v0, Ljava/lang/StringBuilder;

    #@11c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11f
    const-string/jumbo v1, "  isVtEnabledByUser = "

    #@122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v0

    #@126
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@128
    invoke-static {v1}, Lcom/android/ims/ImsManager;->isVtEnabledByUser(Landroid/content/Context;)Z

    #@12b
    move-result v1

    #@12c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v0

    #@130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@133
    move-result-object v0

    #@134
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@137
    .line 1505
    new-instance v0, Ljava/lang/StringBuilder;

    #@139
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@13c
    const-string/jumbo v1, "  isWfcEnabledByPlatform = "

    #@13f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@142
    move-result-object v0

    #@143
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@145
    invoke-static {v1}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    #@148
    move-result v1

    #@149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v0

    #@14d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@150
    move-result-object v0

    #@151
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@154
    .line 1506
    new-instance v0, Ljava/lang/StringBuilder;

    #@156
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@159
    const-string/jumbo v1, "  isWfcEnabledByUser = "

    #@15c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15f
    move-result-object v0

    #@160
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@162
    invoke-static {v1}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    #@165
    move-result v1

    #@166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@169
    move-result-object v0

    #@16a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16d
    move-result-object v0

    #@16e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@171
    .line 1507
    new-instance v0, Ljava/lang/StringBuilder;

    #@173
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@176
    const-string/jumbo v1, "  getWfcMode = "

    #@179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17c
    move-result-object v0

    #@17d
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@17f
    invoke-static {v1}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    #@182
    move-result v1

    #@183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@186
    move-result-object v0

    #@187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18a
    move-result-object v0

    #@18b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@18e
    .line 1508
    new-instance v0, Ljava/lang/StringBuilder;

    #@190
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@193
    const-string/jumbo v1, "  isWfcRoamingEnabledByUser = "

    #@196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@199
    move-result-object v0

    #@19a
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@19c
    invoke-static {v1}, Lcom/android/ims/ImsManager;->isWfcRoamingEnabledByUser(Landroid/content/Context;)Z

    #@19f
    move-result v1

    #@1a0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1a3
    move-result-object v0

    #@1a4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a7
    move-result-object v0

    #@1a8
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ab
    .line 1510
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@1ae
    .line 1488
    return-void
.end method

.method public getConfigInterface()Lcom/android/ims/ImsConfig;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 982
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mConfig:Lcom/android/ims/ImsConfig;

    #@2
    if-nez v2, :cond_1

    #@4
    .line 983
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@7
    .line 986
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@9
    iget v3, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    #@b
    invoke-interface {v2, v3}, Lcom/android/ims/internal/IImsService;->getConfigInterface(I)Lcom/android/ims/internal/IImsConfig;

    #@e
    move-result-object v0

    #@f
    .line 987
    .local v0, "config":Lcom/android/ims/internal/IImsConfig;
    if-nez v0, :cond_0

    #@11
    .line 988
    new-instance v2, Lcom/android/ims/ImsException;

    #@13
    const-string/jumbo v3, "getConfigInterface()"

    #@16
    .line 989
    const/16 v4, 0x83

    #@18
    .line 988
    invoke-direct {v2, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@1b
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 992
    .end local v0    # "config":Lcom/android/ims/internal/IImsConfig;
    :catch_0
    move-exception v1

    #@1d
    .line 993
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    #@1f
    const-string/jumbo v3, "getConfigInterface()"

    #@22
    .line 994
    const/16 v4, 0x6a

    #@24
    .line 993
    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@27
    throw v2

    #@28
    .line 991
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "config":Lcom/android/ims/internal/IImsConfig;
    :cond_0
    :try_start_1
    new-instance v2, Lcom/android/ims/ImsConfig;

    #@2a
    iget-object v3, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@2c
    invoke-direct {v2, v0, v3}, Lcom/android/ims/ImsConfig;-><init>(Lcom/android/ims/internal/IImsConfig;Landroid/content/Context;)V

    #@2f
    iput-object v2, p0, Lcom/android/ims/ImsManager;->mConfig:Lcom/android/ims/ImsConfig;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@31
    .line 997
    .end local v0    # "config":Lcom/android/ims/internal/IImsConfig;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v3, "getConfigInterface(), mConfig= "

    #@39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    iget-object v3, p0, Lcom/android/ims/ImsManager;->mConfig:Lcom/android/ims/ImsConfig;

    #@3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    invoke-static {v2}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    #@4a
    .line 998
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mConfig:Lcom/android/ims/ImsConfig;

    #@4c
    return-object v2
.end method

.method public getEcbmInterface(I)Lcom/android/ims/ImsEcbm;
    .locals 5
    .param p1, "serviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 1400
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;

    #@2
    if-nez v2, :cond_1

    #@4
    .line 1401
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@7
    .line 1404
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@9
    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsService;->getEcbmInterface(I)Lcom/android/ims/internal/IImsEcbm;

    #@c
    move-result-object v1

    #@d
    .line 1406
    .local v1, "iEcbm":Lcom/android/ims/internal/IImsEcbm;
    if-nez v1, :cond_0

    #@f
    .line 1407
    new-instance v2, Lcom/android/ims/ImsException;

    #@11
    const-string/jumbo v3, "getEcbmInterface()"

    #@14
    .line 1408
    const/16 v4, 0x385

    #@16
    .line 1407
    invoke-direct {v2, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@19
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 1411
    .end local v1    # "iEcbm":Lcom/android/ims/internal/IImsEcbm;
    :catch_0
    move-exception v0

    #@1b
    .line 1412
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    #@1d
    const-string/jumbo v3, "getEcbmInterface()"

    #@20
    .line 1413
    const/16 v4, 0x6a

    #@22
    .line 1412
    invoke-direct {v2, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@25
    throw v2

    #@26
    .line 1410
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "iEcbm":Lcom/android/ims/internal/IImsEcbm;
    :cond_0
    :try_start_1
    new-instance v2, Lcom/android/ims/ImsEcbm;

    #@28
    invoke-direct {v2, v1}, Lcom/android/ims/ImsEcbm;-><init>(Lcom/android/ims/internal/IImsEcbm;)V

    #@2b
    iput-object v2, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@2d
    .line 1416
    .end local v1    # "iEcbm":Lcom/android/ims/internal/IImsEcbm;
    :cond_1
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;

    #@2f
    return-object v2
.end method

.method public getMultiEndpointInterface(I)Lcom/android/ims/ImsMultiEndpoint;
    .locals 5
    .param p1, "serviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 1427
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mMultiEndpoint:Lcom/android/ims/ImsMultiEndpoint;

    #@2
    if-nez v2, :cond_1

    #@4
    .line 1428
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@7
    .line 1431
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@9
    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsService;->getMultiEndpointInterface(I)Lcom/android/ims/internal/IImsMultiEndpoint;

    #@c
    move-result-object v1

    #@d
    .line 1434
    .local v1, "iImsMultiEndpoint":Lcom/android/ims/internal/IImsMultiEndpoint;
    if-nez v1, :cond_0

    #@f
    .line 1435
    new-instance v2, Lcom/android/ims/ImsException;

    #@11
    const-string/jumbo v3, "getMultiEndpointInterface()"

    #@14
    .line 1436
    const/16 v4, 0x386

    #@16
    .line 1435
    invoke-direct {v2, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@19
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 1439
    .end local v1    # "iImsMultiEndpoint":Lcom/android/ims/internal/IImsMultiEndpoint;
    :catch_0
    move-exception v0

    #@1b
    .line 1440
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    #@1d
    const-string/jumbo v3, "getMultiEndpointInterface()"

    #@20
    .line 1441
    const/16 v4, 0x6a

    #@22
    .line 1440
    invoke-direct {v2, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@25
    throw v2

    #@26
    .line 1438
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "iImsMultiEndpoint":Lcom/android/ims/internal/IImsMultiEndpoint;
    :cond_0
    :try_start_1
    new-instance v2, Lcom/android/ims/ImsMultiEndpoint;

    #@28
    invoke-direct {v2, v1}, Lcom/android/ims/ImsMultiEndpoint;-><init>(Lcom/android/ims/internal/IImsMultiEndpoint;)V

    #@2b
    iput-object v2, p0, Lcom/android/ims/ImsManager;->mMultiEndpoint:Lcom/android/ims/ImsMultiEndpoint;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@2d
    .line 1444
    .end local v1    # "iImsMultiEndpoint":Lcom/android/ims/internal/IImsMultiEndpoint;
    :cond_1
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mMultiEndpoint:Lcom/android/ims/ImsMultiEndpoint;

    #@2f
    return-object v2
.end method

.method public getSupplementaryServiceConfiguration(I)Lcom/android/ims/ImsUtInterface;
    .locals 5
    .param p1, "serviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 784
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;

    #@2
    if-nez v2, :cond_1

    #@4
    .line 785
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@7
    .line 788
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@9
    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsService;->getUtInterface(I)Lcom/android/ims/internal/IImsUt;

    #@c
    move-result-object v1

    #@d
    .line 790
    .local v1, "iUt":Lcom/android/ims/internal/IImsUt;
    if-nez v1, :cond_0

    #@f
    .line 791
    new-instance v2, Lcom/android/ims/ImsException;

    #@11
    const-string/jumbo v3, "getSupplementaryServiceConfiguration()"

    #@14
    .line 792
    const/16 v4, 0x321

    #@16
    .line 791
    invoke-direct {v2, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@19
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 796
    .end local v1    # "iUt":Lcom/android/ims/internal/IImsUt;
    :catch_0
    move-exception v0

    #@1b
    .line 797
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    #@1d
    const-string/jumbo v3, "getSupplementaryServiceConfiguration()"

    #@20
    .line 798
    const/16 v4, 0x6a

    #@22
    .line 797
    invoke-direct {v2, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@25
    throw v2

    #@26
    .line 795
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "iUt":Lcom/android/ims/internal/IImsUt;
    :cond_0
    :try_start_1
    new-instance v2, Lcom/android/ims/ImsUt;

    #@28
    invoke-direct {v2, v1}, Lcom/android/ims/ImsUt;-><init>(Lcom/android/ims/internal/IImsUt;)V

    #@2b
    iput-object v2, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@2d
    .line 802
    .end local v1    # "iUt":Lcom/android/ims/internal/IImsUt;
    :cond_1
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;

    #@2f
    return-object v2
.end method

.method public isConnected(III)Z
    .locals 4
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 824
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@3
    .line 827
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@5
    invoke-interface {v1, p1, p2, p3}, Lcom/android/ims/internal/IImsService;->isConnected(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result v1

    #@9
    return v1

    #@a
    .line 828
    :catch_0
    move-exception v0

    #@b
    .line 829
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    #@d
    const-string/jumbo v2, "isServiceConnected()"

    #@10
    .line 830
    const/16 v3, 0x6a

    #@12
    .line 829
    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@15
    throw v1
.end method

.method public isOpened(I)Z
    .locals 4
    .param p1, "serviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 842
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@3
    .line 845
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@5
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsService;->isOpened(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result v1

    #@9
    return v1

    #@a
    .line 846
    :catch_0
    move-exception v0

    #@b
    .line 847
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    #@d
    const-string/jumbo v2, "isOpened()"

    #@10
    .line 848
    const/16 v3, 0x6a

    #@12
    .line 847
    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@15
    throw v1
.end method

.method public isServiceAvailable()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 680
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 681
    return v2

    #@6
    .line 684
    :cond_0
    iget v1, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    #@8
    invoke-static {v1}, Lcom/android/ims/ImsManager;->getImsServiceName(I)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    #@f
    move-result-object v0

    #@10
    .line 685
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    #@12
    .line 686
    return v2

    #@13
    .line 689
    :cond_1
    const/4 v1, 0x0

    #@14
    return v1
.end method

.method public makeCall(ILcom/android/ims/ImsCallProfile;[Ljava/lang/String;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;
    .locals 4
    .param p1, "serviceId"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;
    .param p3, "callees"    # [Ljava/lang/String;
    .param p4, "listener"    # Lcom/android/ims/ImsCall$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 898
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "makeCall :: serviceId="

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    .line 899
    const-string/jumbo v3, ", profile="

    #@13
    .line 898
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    .line 899
    const-string/jumbo v3, ", callees="

    #@1e
    .line 898
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-static {v2}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    #@2d
    .line 902
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@30
    .line 904
    new-instance v0, Lcom/android/ims/ImsCall;

    #@32
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@34
    invoke-direct {v0, v2, p2}, Lcom/android/ims/ImsCall;-><init>(Landroid/content/Context;Lcom/android/ims/ImsCallProfile;)V

    #@37
    .line 906
    .local v0, "call":Lcom/android/ims/ImsCall;
    invoke-virtual {v0, p4}, Lcom/android/ims/ImsCall;->setListener(Lcom/android/ims/ImsCall$Listener;)V

    #@3a
    .line 907
    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsManager;->createCallSession(ILcom/android/ims/ImsCallProfile;)Lcom/android/ims/internal/ImsCallSession;

    #@3d
    move-result-object v1

    #@3e
    .line 909
    .local v1, "session":Lcom/android/ims/internal/ImsCallSession;
    if-eqz p3, :cond_0

    #@40
    array-length v2, p3

    #@41
    const/4 v3, 0x1

    #@42
    if-ne v2, v3, :cond_0

    #@44
    .line 910
    const/4 v2, 0x0

    #@45
    aget-object v2, p3, v2

    #@47
    invoke-virtual {v0, v1, v2}, Lcom/android/ims/ImsCall;->start(Lcom/android/ims/internal/ImsCallSession;Ljava/lang/String;)V

    #@4a
    .line 915
    :goto_0
    return-object v0

    #@4b
    .line 912
    :cond_0
    invoke-virtual {v0, v1, p3}, Lcom/android/ims/ImsCall;->start(Lcom/android/ims/internal/ImsCallSession;[Ljava/lang/String;)V

    #@4e
    goto :goto_0
.end method

.method public open(ILandroid/app/PendingIntent;Lcom/android/ims/ImsConnectionStateListener;)I
    .locals 5
    .param p1, "serviceClass"    # I
    .param p2, "incomingCallPendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "listener"    # Lcom/android/ims/ImsConnectionStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 721
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@3
    .line 723
    if-nez p2, :cond_0

    #@5
    .line 724
    new-instance v2, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v3, "incomingCallPendingIntent can\'t be null"

    #@a
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2

    #@e
    .line 727
    :cond_0
    if-nez p3, :cond_1

    #@10
    .line 728
    new-instance v2, Ljava/lang/NullPointerException;

    #@12
    const-string/jumbo v3, "listener can\'t be null"

    #@15
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@18
    throw v2

    #@19
    .line 731
    :cond_1
    const/4 v1, 0x0

    #@1a
    .line 734
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@1c
    iget v3, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    #@1e
    .line 735
    invoke-direct {p0, p1, p3}, Lcom/android/ims/ImsManager;->createRegistrationListenerProxy(ILcom/android/ims/ImsConnectionStateListener;)Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;

    #@21
    move-result-object v4

    #@22
    .line 734
    invoke-interface {v2, v3, p1, p2, v4}, Lcom/android/ims/internal/IImsService;->open(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    move-result v1

    #@26
    .line 741
    if-gtz v1, :cond_2

    #@28
    .line 745
    new-instance v2, Lcom/android/ims/ImsException;

    #@2a
    const-string/jumbo v3, "open()"

    #@2d
    mul-int/lit8 v4, v1, -0x1

    #@2f
    invoke-direct {v2, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@32
    throw v2

    #@33
    .line 736
    :catch_0
    move-exception v0

    #@34
    .line 737
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    #@36
    const-string/jumbo v3, "open()"

    #@39
    .line 738
    const/16 v4, 0x6a

    #@3b
    .line 737
    invoke-direct {v2, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@3e
    throw v2

    #@3f
    .line 748
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    return v1
.end method

.method public setImsConfigListener(Lcom/android/ims/ImsConfigListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/ims/ImsConfigListener;

    #@0
    .prologue
    .line 693
    iput-object p1, p0, Lcom/android/ims/ImsManager;->mImsConfigListener:Lcom/android/ims/ImsConfigListener;

    #@2
    .line 692
    return-void
.end method

.method public setUiTTYMode(Landroid/content/Context;IILandroid/os/Message;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # I
    .param p3, "uiTtyMode"    # I
    .param p4, "onComplete"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1004
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@4
    .line 1007
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@6
    invoke-interface {v2, p2, p3, p4}, Lcom/android/ims/internal/IImsService;->setUiTTYMode(IILandroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1014
    const-string/jumbo v2, "carrier_volte_tty_supported_bool"

    #@c
    .line 1013
    invoke-static {p1, v2}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_1

    #@12
    .line 1015
    if-nez p3, :cond_0

    #@14
    .line 1016
    invoke-static {p1}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    #@17
    move-result v1

    #@18
    .line 1015
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->setAdvanced4GMode(Z)V

    #@1b
    .line 1002
    :cond_1
    return-void

    #@1c
    .line 1008
    :catch_0
    move-exception v0

    #@1d
    .line 1009
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    #@1f
    const-string/jumbo v2, "setTTYMode()"

    #@22
    .line 1010
    const/16 v3, 0x6a

    #@24
    .line 1009
    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@27
    throw v1
.end method

.method public takeCall(ILandroid/content/Intent;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;
    .locals 8
    .param p1, "serviceId"    # I
    .param p2, "incomingCallIntent"    # Landroid/content/Intent;
    .param p3, "listener"    # Lcom/android/ims/ImsCall$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v7, 0x65

    #@2
    .line 930
    new-instance v5, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v6, "takeCall :: serviceId="

    #@a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v5

    #@e
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v5

    #@12
    .line 931
    const-string/jumbo v6, ", incomingCall="

    #@15
    .line 930
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v5

    #@19
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v5

    #@21
    invoke-static {v5}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    #@24
    .line 934
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@27
    .line 936
    if-nez p2, :cond_0

    #@29
    .line 937
    new-instance v5, Lcom/android/ims/ImsException;

    #@2b
    const-string/jumbo v6, "Can\'t retrieve session with null intent"

    #@2e
    invoke-direct {v5, v6, v7}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@31
    throw v5

    #@32
    .line 941
    :cond_0
    invoke-static {p2}, Lcom/android/ims/ImsManager;->getServiceId(Landroid/content/Intent;)I

    #@35
    move-result v2

    #@36
    .line 943
    .local v2, "incomingServiceId":I
    if-eq p1, v2, :cond_1

    #@38
    .line 944
    new-instance v5, Lcom/android/ims/ImsException;

    #@3a
    const-string/jumbo v6, "Service id is mismatched in the incoming call intent"

    #@3d
    invoke-direct {v5, v6, v7}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@40
    throw v5

    #@41
    .line 948
    :cond_1
    invoke-static {p2}, Lcom/android/ims/ImsManager;->getCallId(Landroid/content/Intent;)Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    .line 950
    .local v1, "callId":Ljava/lang/String;
    if-nez v1, :cond_2

    #@47
    .line 951
    new-instance v5, Lcom/android/ims/ImsException;

    #@49
    const-string/jumbo v6, "Call ID missing in the incoming call intent"

    #@4c
    invoke-direct {v5, v6, v7}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@4f
    throw v5

    #@50
    .line 956
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@52
    invoke-interface {v5, p1, v1}, Lcom/android/ims/internal/IImsService;->getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    #@55
    move-result-object v3

    #@56
    .line 958
    .local v3, "session":Lcom/android/ims/internal/IImsCallSession;
    if-nez v3, :cond_3

    #@58
    .line 959
    new-instance v5, Lcom/android/ims/ImsException;

    #@5a
    const-string/jumbo v6, "No pending session for the call"

    #@5d
    .line 960
    const/16 v7, 0x6b

    #@5f
    .line 959
    invoke-direct {v5, v6, v7}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@62
    throw v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@63
    .line 969
    .end local v3    # "session":Lcom/android/ims/internal/IImsCallSession;
    :catch_0
    move-exception v4

    #@64
    .line 970
    .local v4, "t":Ljava/lang/Throwable;
    new-instance v5, Lcom/android/ims/ImsException;

    #@66
    const-string/jumbo v6, "takeCall()"

    #@69
    const/4 v7, 0x0

    #@6a
    invoke-direct {v5, v6, v4, v7}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@6d
    throw v5

    #@6e
    .line 963
    .end local v4    # "t":Ljava/lang/Throwable;
    .restart local v3    # "session":Lcom/android/ims/internal/IImsCallSession;
    :cond_3
    :try_start_1
    new-instance v0, Lcom/android/ims/ImsCall;

    #@70
    iget-object v5, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@72
    invoke-interface {v3}, Lcom/android/ims/internal/IImsCallSession;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    #@75
    move-result-object v6

    #@76
    invoke-direct {v0, v5, v6}, Lcom/android/ims/ImsCall;-><init>(Landroid/content/Context;Lcom/android/ims/ImsCallProfile;)V

    #@79
    .line 965
    .local v0, "call":Lcom/android/ims/ImsCall;
    new-instance v5, Lcom/android/ims/internal/ImsCallSession;

    #@7b
    invoke-direct {v5, v3}, Lcom/android/ims/internal/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    #@7e
    invoke-virtual {v0, v5}, Lcom/android/ims/ImsCall;->attachSession(Lcom/android/ims/internal/ImsCallSession;)V

    #@81
    .line 966
    invoke-virtual {v0, p3}, Lcom/android/ims/ImsCall;->setListener(Lcom/android/ims/ImsCall$Listener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@84
    .line 968
    return-object v0
.end method
