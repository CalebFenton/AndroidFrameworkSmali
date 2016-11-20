.class public Lcom/android/ims/ImsManager;
.super Ljava/lang/Object;
.source "ImsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsManager$AsyncUpdateProvisionedValues;,
        Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;,
        Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;
    }
.end annotation


# static fields
.field public static final ACTION_IMS_INCOMING_CALL:Ljava/lang/String; = "com.android.ims.IMS_INCOMING_CALL"

.field public static final ACTION_IMS_REGISTRATION_ERROR:Ljava/lang/String; = "com.android.ims.REGISTRATION_ERROR"

.field public static final ACTION_IMS_SERVICE_DOWN:Ljava/lang/String; = "com.android.ims.IMS_SERVICE_DOWN"

.field public static final ACTION_IMS_SERVICE_UP:Ljava/lang/String; = "com.android.ims.IMS_SERVICE_UP"

.field private static final DATA_ENABLED_PROP:Ljava/lang/String; = "net.lte.ims.data.enabled"

.field private static final DBG:Z = true

.field public static final EXTRA_CALL_ID:Ljava/lang/String; = "android:imsCallID"

.field public static final EXTRA_IS_UNKNOWN_CALL:Ljava/lang/String; = "android:isUnknown"

.field public static final EXTRA_PHONE_ID:Ljava/lang/String; = "android:phone_id"

.field public static final EXTRA_SERVICE_ID:Ljava/lang/String; = "android:imsServiceId"

.field public static final EXTRA_USSD:Ljava/lang/String; = "android:ussd"

.field public static final FALSE:Ljava/lang/String; = "false"

.field private static final IMS_SERVICE:Ljava/lang/String; = "ims"

.field public static final INCOMING_CALL_RESULT_CODE:I = 0x65

.field public static final PROPERTY_DBG_ALLOW_IMS_OFF_OVERRIDE:Ljava/lang/String; = "persist.dbg.allow_ims_off"

.field public static final PROPERTY_DBG_ALLOW_IMS_OFF_OVERRIDE_DEFAULT:I = 0x0

.field public static final PROPERTY_DBG_VOLTE_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.volte_avail_ovr"

.field public static final PROPERTY_DBG_VOLTE_AVAIL_OVERRIDE_DEFAULT:I = 0x0

.field public static final PROPERTY_DBG_VT_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.vt_avail_ovr"

.field public static final PROPERTY_DBG_VT_AVAIL_OVERRIDE_DEFAULT:I = 0x0

.field public static final PROPERTY_DBG_WFC_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.wfc_avail_ovr"

.field public static final PROPERTY_DBG_WFC_AVAIL_OVERRIDE_DEFAULT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ImsManager"

.field public static final TRUE:Ljava/lang/String; = "true"

.field private static final VOLTE_PROVISIONED_PROP:Ljava/lang/String; = "net.lte.ims.volte.provisioned"

.field private static final VT_PROVISIONED_PROP:Ljava/lang/String; = "net.lte.ims.vt.provisioned"

.field private static final WFC_PROVISIONED_PROP:Ljava/lang/String; = "net.lte.ims.wfc.provisioned"

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

.method static synthetic -wrap0(Lcom/android/ims/ImsManager;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isVolteProvisioned()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/ims/ImsManager;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isVtProvisioned()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Lcom/android/ims/ImsManager;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isWfcProvisioned()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Ljava/lang/String;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/ims/ImsManager;Z)V
    .locals 0
    .param p1, "provisioned"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->setVolteProvisionedProperty(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/ims/ImsManager;Z)V
    .locals 0
    .param p1, "provisioned"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->setVtProvisionedProperty(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/ims/ImsManager;Z)V
    .locals 0
    .param p1, "provisioned"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->setWfcProvisionedProperty(Z)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 164
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 163
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
    .line 853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 168
    iput-object v1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@6
    .line 169
    new-instance v0, Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;

    #@8
    invoke-direct {v0, p0, v1}, Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;-><init>(Lcom/android/ims/ImsManager;Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;)V

    #@b
    iput-object v0, p0, Lcom/android/ims/ImsManager;->mDeathRecipient:Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;

    #@d
    .line 171
    iput-object v1, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;

    #@f
    .line 173
    iput-object v1, p0, Lcom/android/ims/ImsManager;->mConfig:Lcom/android/ims/ImsConfig;

    #@11
    .line 174
    const/4 v0, 0x0

    #@12
    iput-boolean v0, p0, Lcom/android/ims/ImsManager;->mConfigUpdated:Z

    #@14
    .line 179
    iput-object v1, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;

    #@16
    .line 181
    iput-object v1, p0, Lcom/android/ims/ImsManager;->mMultiEndpoint:Lcom/android/ims/ImsMultiEndpoint;

    #@18
    .line 854
    iput-object p1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@1a
    .line 855
    iput p2, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    #@1c
    .line 856
    const/4 v0, 0x1

    #@1d
    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->createImsService(Z)V

    #@20
    .line 853
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
    .line 1306
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1307
    const/4 v0, 0x1

    #@5
    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->createImsService(Z)V

    #@8
    .line 1309
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@a
    if-nez v0, :cond_0

    #@c
    .line 1310
    new-instance v0, Lcom/android/ims/ImsException;

    #@e
    const-string/jumbo v1, "Service is unavailable"

    #@11
    .line 1311
    const/16 v2, 0x6a

    #@13
    .line 1310
    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@16
    throw v0

    #@17
    .line 1305
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
    .line 1356
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
    .line 1357
    :catch_0
    move-exception v0

    #@f
    .line 1358
    .local v0, "e":Landroid/os/RemoteException;
    return-object v4
.end method

.method private createImsService(Z)V
    .locals 5
    .param p1, "checkService"    # Z

    #@0
    .prologue
    .line 1325
    if-eqz p1, :cond_0

    #@2
    .line 1326
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
    .line 1328
    .local v1, "binder":Landroid/os/IBinder;
    if-nez v1, :cond_0

    #@e
    .line 1329
    return-void

    #@f
    .line 1333
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
    .line 1335
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    #@1b
    .line 1337
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsManager;->mDeathRecipient:Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;

    #@1d
    const/4 v4, 0x0

    #@1e
    invoke-interface {v0, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 1342
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/android/ims/internal/IImsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    #@24
    move-result-object v3

    #@25
    iput-object v3, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@27
    .line 1324
    return-void

    #@28
    .line 1338
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
    .line 1365
    new-instance v0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;-><init>(Lcom/android/ims/ImsManager;ILcom/android/ims/ImsConnectionStateListener;)V

    #@5
    .line 1366
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
    .line 1675
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 1676
    const-string/jumbo v3, "volte_vt_enabled"

    #@9
    .line 1675
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@c
    .line 1680
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@f
    move-result-object v3

    #@10
    .line 1681
    const-string/jumbo v4, "wfc_ims_enabled"

    #@13
    .line 1683
    const-string/jumbo v0, "carrier_default_wfc_ims_enabled_bool"

    #@16
    .line 1682
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_1

    #@1c
    move v0, v1

    #@1d
    .line 1680
    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@20
    .line 1687
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@23
    move-result-object v0

    #@24
    .line 1688
    const-string/jumbo v3, "wfc_ims_mode"

    #@27
    .line 1690
    const-string/jumbo v4, "carrier_default_wfc_ims_mode_int"

    #@2a
    .line 1689
    invoke-static {p0, v4}, Lcom/android/ims/ImsManager;->getIntCarrierConfig(Landroid/content/Context;Ljava/lang/String;)I

    #@2d
    move-result v4

    #@2e
    .line 1687
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@31
    .line 1693
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@34
    move-result-object v0

    #@35
    .line 1694
    const-string/jumbo v3, "wfc_ims_roaming_enabled"

    #@38
    .line 1696
    const-string/jumbo v4, "carrier_default_wfc_ims_roaming_enabled_bool"

    #@3b
    .line 1695
    invoke-static {p0, v4}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@3e
    move-result v4

    #@3f
    if-eqz v4, :cond_0

    #@41
    move v2, v1

    #@42
    .line 1693
    :cond_0
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@45
    .line 1700
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@48
    move-result-object v0

    #@49
    .line 1701
    const-string/jumbo v2, "vt_ims_enabled"

    #@4c
    .line 1700
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@4f
    .line 1706
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    #@52
    move-result v0

    #@53
    .line 1705
    invoke-static {p0, v0, v1}, Lcom/android/ims/ImsManager;->updateImsServiceConfig(Landroid/content/Context;IZ)V

    #@56
    .line 1673
    return-void

    #@57
    :cond_1
    move v0, v2

    #@58
    .line 1684
    goto :goto_0
.end method

.method private static getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1238
    const-string/jumbo v2, "carrier_config"

    #@3
    .line 1237
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Landroid/telephony/CarrierConfigManager;

    #@9
    .line 1239
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v0, 0x0

    #@a
    .line 1240
    .local v0, "b":Landroid/os/PersistableBundle;
    if-eqz v1, :cond_0

    #@c
    .line 1241
    invoke-virtual {v1}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    #@f
    move-result-object v0

    #@10
    .line 1243
    .end local v0    # "b":Landroid/os/PersistableBundle;
    :cond_0
    if-eqz v0, :cond_1

    #@12
    .line 1244
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    #@15
    move-result v2

    #@16
    return v2

    #@17
    .line 1247
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
    .line 1280
    if-nez p0, :cond_0

    #@3
    .line 1281
    return-object v0

    #@4
    .line 1284
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
    .line 1318
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
    .line 202
    sget-object v2, Lcom/android/ims/ImsManager;->sImsManagerInstances:Ljava/util/HashMap;

    #@2
    monitor-enter v2

    #@3
    .line 203
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
    .line 204
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
    .line 206
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/ims/ImsManager;

    #@1f
    invoke-direct {v0, p0, p1}, Lcom/android/ims/ImsManager;-><init>(Landroid/content/Context;I)V

    #@22
    .line 207
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
    .line 209
    return-object v0

    #@2d
    .line 202
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
    .line 1260
    const-string/jumbo v2, "carrier_config"

    #@3
    .line 1259
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Landroid/telephony/CarrierConfigManager;

    #@9
    .line 1261
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v0, 0x0

    #@a
    .line 1262
    .local v0, "b":Landroid/os/PersistableBundle;
    if-eqz v1, :cond_0

    #@c
    .line 1263
    invoke-virtual {v1}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    #@f
    move-result-object v0

    #@10
    .line 1265
    .end local v0    # "b":Landroid/os/PersistableBundle;
    :cond_0
    if-eqz v0, :cond_1

    #@12
    .line 1266
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    #@15
    move-result v2

    #@16
    return v2

    #@17
    .line 1269
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
    .line 1294
    if-nez p0, :cond_0

    #@3
    .line 1295
    return v1

    #@4
    .line 1298
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
    .line 462
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v1

    #@4
    .line 463
    const-string/jumbo v2, "wfc_ims_mode"

    #@7
    .line 464
    const-string/jumbo v3, "carrier_default_wfc_ims_mode_int"

    #@a
    .line 463
    invoke-static {p0, v3}, Lcom/android/ims/ImsManager;->getIntCarrierConfig(Landroid/content/Context;Ljava/lang/String;)I

    #@d
    move-result v3

    #@e
    .line 462
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@11
    move-result v0

    #@12
    .line 465
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
    .line 466
    return v0
.end method

.method public static getWfcMode(Landroid/content/Context;Z)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "roaming"    # Z

    #@0
    .prologue
    .line 486
    const/4 v0, 0x0

    #@1
    .line 487
    .local v0, "setting":I
    if-nez p1, :cond_0

    #@3
    .line 488
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v1

    #@7
    .line 489
    const-string/jumbo v2, "wfc_ims_mode"

    #@a
    .line 490
    const-string/jumbo v3, "carrier_default_wfc_ims_mode_int"

    #@d
    .line 489
    invoke-static {p0, v3}, Lcom/android/ims/ImsManager;->getIntCarrierConfig(Landroid/content/Context;Ljava/lang/String;)I

    #@10
    move-result v3

    #@11
    .line 488
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@14
    move-result v0

    #@15
    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v2, "getWfcMode - setting="

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-static {v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    #@2c
    .line 499
    :goto_0
    return v0

    #@2d
    .line 493
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@30
    move-result-object v1

    #@31
    .line 494
    const-string/jumbo v2, "wfc_ims_roaming_mode"

    #@34
    .line 496
    const-string/jumbo v3, "carrier_default_wfc_ims_roaming_mode_int"

    #@37
    .line 495
    invoke-static {p0, v3}, Lcom/android/ims/ImsManager;->getIntCarrierConfig(Landroid/content/Context;Ljava/lang/String;)I

    #@3a
    move-result v3

    #@3b
    .line 493
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@3e
    move-result v0

    #@3f
    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v2, "getWfcMode (roaming) - setting="

    #@47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    invoke-static {v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    #@56
    goto :goto_0
.end method

.method private isDataEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 1710
    const-string/jumbo v0, "net.lte.ims.data.enabled"

    #@3
    const/4 v1, 0x1

    #@4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 220
    const-string/jumbo v2, "editable_enhanced_4g_lte_bool"

    #@4
    .line 219
    invoke-static {p0, v2}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 221
    return v1

    #@b
    .line 224
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@e
    move-result-object v2

    #@f
    .line 225
    const-string/jumbo v3, "volte_vt_enabled"

    #@12
    .line 223
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@15
    move-result v0

    #@16
    .line 226
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
    .line 618
    const-string/jumbo v3, "carrier_ims_gba_required_bool"

    #@4
    .line 617
    invoke-static {p0, v3}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_3

    #@a
    .line 619
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@d
    move-result-object v2

    #@e
    .line 620
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getIsimIst()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 621
    .local v0, "efIst":Ljava/lang/String;
    if-nez v0, :cond_0

    #@14
    .line 622
    const-string/jumbo v3, "ISF is NULL"

    #@17
    invoke-static {v3}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    #@1a
    .line 623
    return v4

    #@1b
    .line 625
    :cond_0
    if-eqz v0, :cond_2

    #@1d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@20
    move-result v3

    #@21
    if-le v3, v4, :cond_2

    #@23
    .line 626
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
    .line 627
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
    .line 628
    return v1

    #@50
    .line 626
    .end local v1    # "result":Z
    :cond_1
    const/4 v1, 0x0

    #@51
    .restart local v1    # "result":Z
    goto :goto_0

    #@52
    .line 625
    .end local v1    # "result":Z
    :cond_2
    const/4 v1, 0x0

    #@53
    .restart local v1    # "result":Z
    goto :goto_0

    #@54
    .line 630
    .end local v0    # "efIst":Ljava/lang/String;
    .end local v1    # "result":Z
    .end local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_3
    return v4
.end method

.method private isImsTurnOffAllowed()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1395
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@4
    invoke-static {v2}, Lcom/android/ims/ImsManager;->isTurnOffImsAllowedByPlatform(Landroid/content/Context;)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 1396
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@c
    invoke-static {v2}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 1397
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@14
    invoke-static {v2}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    move v0, v1

    #@1b
    .line 1395
    :cond_0
    :goto_0
    return v0

    #@1c
    :cond_1
    move v0, v1

    #@1d
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
    .line 257
    const-string/jumbo v2, "carrier_volte_tty_supported_bool"

    #@5
    .line 256
    invoke-static {p0, v2}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 258
    return v0

    #@c
    .line 261
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@f
    move-result-object v2

    #@10
    .line 262
    const-string/jumbo v3, "preferred_tty_mode"

    #@13
    .line 261
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

.method private static isTurnOffImsAllowedByPlatform(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 399
    const-string/jumbo v0, "persist.dbg.allow_ims_off"

    #@4
    .line 400
    const/4 v1, 0x0

    #@5
    .line 399
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@8
    move-result v0

    #@9
    if-ne v0, v2, :cond_0

    #@b
    .line 401
    return v2

    #@c
    .line 404
    :cond_0
    const-string/jumbo v0, "carrier_allow_turnoff_ims_bool"

    #@f
    .line 403
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    return v0
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
    .line 270
    const-string/jumbo v1, "persist.dbg.volte_avail_ovr"

    #@5
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@8
    move-result v1

    #@9
    if-ne v1, v2, :cond_0

    #@b
    .line 272
    return v2

    #@c
    .line 275
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@f
    move-result-object v1

    #@10
    .line 276
    const v2, 0x112008b

    #@13
    .line 275
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 278
    const-string/jumbo v1, "carrier_volte_available_bool"

    #@1c
    .line 277
    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@1f
    move-result v1

    #@20
    .line 275
    if-eqz v1, :cond_1

    #@22
    .line 279
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isGbaValid(Landroid/content/Context;)Z

    #@25
    move-result v0

    #@26
    .line 275
    :cond_1
    return v0
.end method

.method private isVolteProvisioned()Z
    .locals 2

    #@0
    .prologue
    .line 1723
    const-string/jumbo v0, "net.lte.ims.volte.provisioned"

    #@3
    const/4 v1, 0x1

    #@4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static isVolteProvisionedOnDevice(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 287
    const-string/jumbo v1, "carrier_volte_provisioning_required_bool"

    #@3
    .line 286
    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 289
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    #@c
    move-result v1

    #@d
    .line 288
    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    #@10
    move-result-object v0

    #@11
    .line 290
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    #@13
    .line 291
    invoke-direct {v0}, Lcom/android/ims/ImsManager;->isVolteProvisioned()Z

    #@16
    move-result v1

    #@17
    return v1

    #@18
    .line 295
    .end local v0    # "mgr":Lcom/android/ims/ImsManager;
    :cond_0
    const/4 v1, 0x1

    #@19
    return v1
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
    .line 337
    const-string/jumbo v1, "persist.dbg.vt_avail_ovr"

    #@5
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@8
    move-result v1

    #@9
    if-ne v1, v2, :cond_0

    #@b
    .line 339
    return v2

    #@c
    .line 343
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@f
    move-result-object v1

    #@10
    .line 344
    const v2, 0x112008f

    #@13
    .line 343
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 346
    const-string/jumbo v1, "carrier_vt_available_bool"

    #@1c
    .line 345
    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@1f
    move-result v1

    #@20
    .line 343
    if-eqz v1, :cond_1

    #@22
    .line 347
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isGbaValid(Landroid/content/Context;)Z

    #@25
    move-result v0

    #@26
    .line 342
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
    .line 354
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@4
    move-result-object v2

    #@5
    .line 355
    const-string/jumbo v3, "vt_ims_enabled"

    #@8
    .line 354
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@b
    move-result v0

    #@c
    .line 357
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

.method private isVtProvisioned()Z
    .locals 2

    #@0
    .prologue
    .line 1739
    const-string/jumbo v0, "net.lte.ims.vt.provisioned"

    #@3
    const/4 v1, 0x1

    #@4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static isVtProvisionedOnDevice(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 319
    const-string/jumbo v1, "carrier_volte_provisioning_required_bool"

    #@3
    .line 318
    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 321
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    #@c
    move-result v1

    #@d
    .line 320
    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    #@10
    move-result-object v0

    #@11
    .line 322
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    #@13
    .line 323
    invoke-direct {v0}, Lcom/android/ims/ImsManager;->isVtProvisioned()Z

    #@16
    move-result v1

    #@17
    return v1

    #@18
    .line 327
    .end local v0    # "mgr":Lcom/android/ims/ImsManager;
    :cond_0
    const/4 v1, 0x1

    #@19
    return v1
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
    .line 597
    const-string/jumbo v1, "persist.dbg.wfc_avail_ovr"

    #@5
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@8
    move-result v1

    #@9
    if-ne v1, v2, :cond_0

    #@b
    .line 599
    return v2

    #@c
    .line 603
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@f
    move-result-object v1

    #@10
    .line 604
    const v2, 0x1120092

    #@13
    .line 603
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 606
    const-string/jumbo v1, "carrier_wfc_ims_available_bool"

    #@1c
    .line 605
    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@1f
    move-result v1

    #@20
    .line 603
    if-eqz v1, :cond_1

    #@22
    .line 607
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isGbaValid(Landroid/content/Context;)Z

    #@25
    move-result v0

    #@26
    .line 602
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
    .line 411
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v4

    #@6
    .line 412
    const-string/jumbo v5, "wfc_ims_enabled"

    #@9
    .line 414
    const-string/jumbo v1, "carrier_default_wfc_ims_enabled_bool"

    #@c
    .line 413
    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    move v1, v2

    #@13
    .line 411
    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@16
    move-result v0

    #@17
    .line 416
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
    .line 415
    goto :goto_0

    #@1c
    .restart local v0    # "enabled":I
    :cond_1
    move v2, v3

    #@1d
    .line 416
    goto :goto_1
.end method

.method private isWfcProvisioned()Z
    .locals 2

    #@0
    .prologue
    .line 1731
    const-string/jumbo v0, "net.lte.ims.wfc.provisioned"

    #@3
    const/4 v1, 0x1

    #@4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static isWfcProvisionedOnDevice(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 303
    const-string/jumbo v1, "carrier_volte_provisioning_required_bool"

    #@3
    .line 302
    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 305
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    #@c
    move-result v1

    #@d
    .line 304
    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    #@10
    move-result-object v0

    #@11
    .line 306
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    #@13
    .line 307
    invoke-direct {v0}, Lcom/android/ims/ImsManager;->isWfcProvisioned()Z

    #@16
    move-result v1

    #@17
    return v1

    #@18
    .line 311
    .end local v0    # "mgr":Lcom/android/ims/ImsManager;
    :cond_0
    const/4 v1, 0x1

    #@19
    return v1
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
    .line 549
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v4

    #@6
    .line 550
    const-string/jumbo v5, "wfc_ims_roaming_enabled"

    #@9
    .line 552
    const-string/jumbo v1, "carrier_default_wfc_ims_roaming_enabled_bool"

    #@c
    .line 551
    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    move v1, v2

    #@13
    .line 549
    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@16
    move-result v0

    #@17
    .line 554
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
    .line 553
    goto :goto_0

    #@1c
    .restart local v0    # "enabled":I
    :cond_1
    move v2, v3

    #@1d
    .line 554
    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1370
    const-string/jumbo v0, "ImsManager"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 1369
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1374
    const-string/jumbo v0, "ImsManager"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 1373
    return-void
.end method

.method private static loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1378
    const-string/jumbo v0, "ImsManager"

    #@3
    invoke-static {v0, p0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6
    .line 1377
    return-void
.end method

.method public static onProvisionedValueChanged(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 643
    const-string/jumbo v1, "ImsManager"

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "onProvisionedValueChanged: item="

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    const-string/jumbo v3, " val="

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 645
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    #@28
    move-result v1

    #@29
    .line 644
    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    #@2c
    move-result-object v0

    #@2d
    .line 647
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    sparse-switch p1, :sswitch_data_0

    #@30
    .line 642
    :goto_0
    return-void

    #@31
    .line 649
    :sswitch_0
    const-string/jumbo v1, "1"

    #@34
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v1

    #@38
    invoke-direct {v0, v1}, Lcom/android/ims/ImsManager;->setVolteProvisionedProperty(Z)V

    #@3b
    .line 650
    const-string/jumbo v1, "ImsManager"

    #@3e
    new-instance v2, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v3, "isVoLteProvisioned = "

    #@46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    invoke-direct {v0}, Lcom/android/ims/ImsManager;->isVolteProvisioned()Z

    #@4d
    move-result v3

    #@4e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v2

    #@56
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@59
    goto :goto_0

    #@5a
    .line 654
    :sswitch_1
    const-string/jumbo v1, "1"

    #@5d
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@60
    move-result v1

    #@61
    invoke-direct {v0, v1}, Lcom/android/ims/ImsManager;->setWfcProvisionedProperty(Z)V

    #@64
    .line 655
    const-string/jumbo v1, "ImsManager"

    #@67
    new-instance v2, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v3, "isWfcProvisioned = "

    #@6f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v2

    #@73
    invoke-direct {v0}, Lcom/android/ims/ImsManager;->isWfcProvisioned()Z

    #@76
    move-result v3

    #@77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v2

    #@7b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v2

    #@7f
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@82
    goto :goto_0

    #@83
    .line 659
    :sswitch_2
    const-string/jumbo v1, "1"

    #@86
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@89
    move-result v1

    #@8a
    invoke-direct {v0, v1}, Lcom/android/ims/ImsManager;->setVtProvisionedProperty(Z)V

    #@8d
    .line 660
    const-string/jumbo v1, "ImsManager"

    #@90
    new-instance v2, Ljava/lang/StringBuilder;

    #@92
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@95
    const-string/jumbo v3, "isVtProvisioned = "

    #@98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v2

    #@9c
    invoke-direct {v0}, Lcom/android/ims/ImsManager;->isVtProvisioned()Z

    #@9f
    move-result v3

    #@a0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v2

    #@a4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v2

    #@a8
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ab
    goto :goto_0

    #@ac
    .line 647
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_2
        0x1c -> :sswitch_1
    .end sparse-switch
.end method

.method private setAdvanced4GMode(Z)V
    .locals 1
    .param p1, "turnOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 1423
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@3
    .line 1428
    if-eqz p1, :cond_0

    #@5
    .line 1429
    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->setLteFeatureValues(Z)V

    #@8
    .line 1430
    const-string/jumbo v0, "setAdvanced4GMode: turnOnIms"

    #@b
    invoke-static {v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    #@e
    .line 1431
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->turnOnIms()V

    #@11
    .line 1422
    :goto_0
    return-void

    #@12
    .line 1433
    :cond_0
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isImsTurnOffAllowed()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 1434
    const-string/jumbo v0, "setAdvanced4GMode: turnOffIms"

    #@1b
    invoke-static {v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    #@1e
    .line 1435
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->turnOffIms()V

    #@21
    .line 1437
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->setLteFeatureValues(Z)V

    #@24
    goto :goto_0
.end method

.method public static setEnhanced4gLteModeSetting(Landroid/content/Context;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 233
    if-eqz p1, :cond_1

    #@2
    const/4 v2, 0x1

    #@3
    .line 235
    .local v2, "value":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v3

    #@7
    .line 236
    const-string/jumbo v4, "volte_vt_enabled"

    #@a
    .line 234
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@d
    .line 238
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    .line 240
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    #@16
    move-result v3

    #@17
    .line 239
    invoke-static {p0, v3}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    #@1a
    move-result-object v1

    #@1b
    .line 241
    .local v1, "imsManager":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_0

    #@1d
    .line 243
    :try_start_0
    invoke-direct {v1, p1}, Lcom/android/ims/ImsManager;->setAdvanced4GMode(Z)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 232
    .end local v1    # "imsManager":Lcom/android/ims/ImsManager;
    :cond_0
    :goto_1
    return-void

    #@21
    .line 233
    .end local v2    # "value":I
    :cond_1
    const/4 v2, 0x0

    #@22
    .restart local v2    # "value":I
    goto :goto_0

    #@23
    .line 244
    .restart local v1    # "imsManager":Lcom/android/ims/ImsManager;
    :catch_0
    move-exception v0

    #@24
    .local v0, "ie":Lcom/android/ims/ImsException;
    goto :goto_1
.end method

.method private setLteFeatureValues(Z)V
    .locals 9
    .param p1, "turnOn"    # Z

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1401
    new-instance v5, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v6, "setLteFeatureValues: "

    #@a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v5

    #@e
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@11
    move-result-object v5

    #@12
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v5

    #@16
    invoke-static {v5}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    #@19
    .line 1403
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    #@1c
    move-result-object v0

    #@1d
    .line 1404
    .local v0, "config":Lcom/android/ims/ImsConfig;
    if-eqz v0, :cond_0

    #@1f
    .line 1406
    if-eqz p1, :cond_1

    #@21
    move v5, v3

    #@22
    :goto_0
    iget-object v6, p0, Lcom/android/ims/ImsManager;->mImsConfigListener:Lcom/android/ims/ImsConfigListener;

    #@24
    .line 1405
    const/4 v7, 0x0

    #@25
    .line 1406
    const/16 v8, 0xd

    #@27
    .line 1405
    invoke-virtual {v0, v7, v8, v5, v6}, Lcom/android/ims/ImsConfig;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    #@2a
    .line 1408
    iget-object v5, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@2c
    invoke-static {v5}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform(Landroid/content/Context;)Z

    #@2f
    move-result v5

    #@30
    if-eqz v5, :cond_0

    #@32
    .line 1409
    if-eqz p1, :cond_2

    #@34
    iget-object v5, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@36
    invoke-static {v5}, Lcom/android/ims/ImsManager;->isVtEnabledByUser(Landroid/content/Context;)Z

    #@39
    move-result v5

    #@3a
    if-eqz v5, :cond_2

    #@3c
    .line 1410
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isDataEnabled()Z

    #@3f
    move-result v2

    #@40
    .line 1413
    :goto_1
    if-eqz v2, :cond_3

    #@42
    .line 1414
    :goto_2
    iget-object v4, p0, Lcom/android/ims/ImsManager;->mImsConfigListener:Lcom/android/ims/ImsConfigListener;

    #@44
    .line 1411
    const/4 v5, 0x1

    #@45
    .line 1412
    const/16 v6, 0xd

    #@47
    .line 1411
    invoke-virtual {v0, v5, v6, v3, v4}, Lcom/android/ims/ImsConfig;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@4a
    .line 1400
    .end local v0    # "config":Lcom/android/ims/ImsConfig;
    :cond_0
    :goto_3
    return-void

    #@4b
    .restart local v0    # "config":Lcom/android/ims/ImsConfig;
    :cond_1
    move v5, v4

    #@4c
    .line 1406
    goto :goto_0

    #@4d
    .line 1409
    :cond_2
    const/4 v2, 0x0

    #@4e
    .local v2, "enableViLte":Z
    goto :goto_1

    #@4f
    .end local v2    # "enableViLte":Z
    :cond_3
    move v3, v4

    #@50
    .line 1413
    goto :goto_2

    #@51
    .line 1417
    .end local v0    # "config":Lcom/android/ims/ImsConfig;
    :catch_0
    move-exception v1

    #@52
    .line 1418
    .local v1, "e":Lcom/android/ims/ImsException;
    const-string/jumbo v3, "setLteFeatureValues: exception "

    #@55
    invoke-static {v3, v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@58
    goto :goto_3
.end method

.method private setVolteProvisionedProperty(Z)V
    .locals 2
    .param p1, "provisioned"    # Z

    #@0
    .prologue
    .line 1727
    const-string/jumbo v1, "net.lte.ims.volte.provisioned"

    #@3
    if-eqz p1, :cond_0

    #@5
    const-string/jumbo v0, "true"

    #@8
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1726
    return-void

    #@c
    .line 1727
    :cond_0
    const-string/jumbo v0, "false"

    #@f
    goto :goto_0
.end method

.method private setVtProvisionedProperty(Z)V
    .locals 2
    .param p1, "provisioned"    # Z

    #@0
    .prologue
    .line 1743
    const-string/jumbo v1, "net.lte.ims.vt.provisioned"

    #@3
    if-eqz p1, :cond_0

    #@5
    const-string/jumbo v0, "true"

    #@8
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1742
    return-void

    #@c
    .line 1743
    :cond_0
    const-string/jumbo v0, "false"

    #@f
    goto :goto_0
.end method

.method public static setVtSetting(Landroid/content/Context;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 364
    if-eqz p1, :cond_1

    #@3
    const/4 v3, 0x1

    #@4
    .line 365
    .local v3, "value":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v5

    #@8
    .line 366
    const-string/jumbo v6, "vt_ims_enabled"

    #@b
    .line 365
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@e
    .line 369
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    #@11
    move-result v5

    #@12
    .line 368
    invoke-static {p0, v5}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    #@15
    move-result-object v2

    #@16
    .line 370
    .local v2, "imsManager":Lcom/android/ims/ImsManager;
    if-eqz v2, :cond_0

    #@18
    .line 372
    :try_start_0
    invoke-virtual {v2}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    #@1b
    move-result-object v0

    #@1c
    .line 375
    .local v0, "config":Lcom/android/ims/ImsConfig;
    if-eqz p1, :cond_2

    #@1e
    .line 377
    :goto_1
    iget-object v5, v2, Lcom/android/ims/ImsManager;->mImsConfigListener:Lcom/android/ims/ImsConfigListener;

    #@20
    .line 373
    const/4 v6, 0x1

    #@21
    .line 374
    const/16 v7, 0xd

    #@23
    .line 373
    invoke-virtual {v0, v6, v7, v4, v5}, Lcom/android/ims/ImsConfig;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    #@26
    .line 379
    if-eqz p1, :cond_3

    #@28
    .line 380
    const-string/jumbo v4, "setVtSetting() : turnOnIms"

    #@2b
    invoke-static {v4}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    #@2e
    .line 381
    invoke-direct {v2}, Lcom/android/ims/ImsManager;->turnOnIms()V

    #@31
    .line 363
    .end local v0    # "config":Lcom/android/ims/ImsConfig;
    :cond_0
    :goto_2
    return-void

    #@32
    .line 364
    .end local v2    # "imsManager":Lcom/android/ims/ImsManager;
    .end local v3    # "value":I
    :cond_1
    const/4 v3, 0x0

    #@33
    .restart local v3    # "value":I
    goto :goto_0

    #@34
    .line 376
    .restart local v0    # "config":Lcom/android/ims/ImsConfig;
    .restart local v2    # "imsManager":Lcom/android/ims/ImsManager;
    :cond_2
    const/4 v4, 0x0

    #@35
    goto :goto_1

    #@36
    .line 382
    :cond_3
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isTurnOffImsAllowedByPlatform(Landroid/content/Context;)Z

    #@39
    move-result v4

    #@3a
    if-eqz v4, :cond_0

    #@3c
    .line 383
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    #@3f
    move-result v4

    #@40
    if-eqz v4, :cond_4

    #@42
    .line 384
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    #@45
    move-result v4

    #@46
    if-nez v4, :cond_0

    #@48
    .line 385
    :cond_4
    const-string/jumbo v4, "setVtSetting() : imsServiceAllowTurnOff -> turnOffIms"

    #@4b
    invoke-static {v4}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    #@4e
    .line 386
    invoke-direct {v2}, Lcom/android/ims/ImsManager;->turnOffIms()V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@51
    goto :goto_2

    #@52
    .line 388
    .end local v0    # "config":Lcom/android/ims/ImsConfig;
    :catch_0
    move-exception v1

    #@53
    .line 389
    .local v1, "e":Lcom/android/ims/ImsException;
    const-string/jumbo v4, "setVtSetting(): "

    #@56
    invoke-static {v4, v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@59
    goto :goto_2
.end method

.method public static setWfcMode(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wfcMode"    # I

    #@0
    .prologue
    .line 473
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
    .line 474
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1a
    move-result-object v0

    #@1b
    .line 475
    const-string/jumbo v1, "wfc_ims_mode"

    #@1e
    .line 474
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@21
    .line 477
    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->setWfcModeInternal(Landroid/content/Context;I)V

    #@24
    .line 472
    return-void
.end method

.method public static setWfcMode(Landroid/content/Context;IZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wfcMode"    # I
    .param p2, "roaming"    # Z

    #@0
    .prologue
    .line 508
    if-nez p2, :cond_1

    #@2
    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "setWfcMode - setting="

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-static {v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    #@19
    .line 510
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1c
    move-result-object v1

    #@1d
    .line 511
    const-string/jumbo v2, "wfc_ims_mode"

    #@20
    .line 510
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@23
    .line 519
    :goto_0
    const-string/jumbo v1, "phone"

    #@26
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    .line 518
    check-cast v0, Landroid/telephony/TelephonyManager;

    #@2c
    .line 520
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    #@2f
    move-result v1

    #@30
    if-ne p2, v1, :cond_0

    #@32
    .line 521
    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->setWfcModeInternal(Landroid/content/Context;I)V

    #@35
    .line 507
    :cond_0
    return-void

    #@36
    .line 513
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v2, "setWfcMode (roaming) - setting="

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    invoke-static {v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    #@4d
    .line 514
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@50
    move-result-object v1

    #@51
    .line 515
    const-string/jumbo v2, "wfc_ims_roaming_mode"

    #@54
    .line 514
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@57
    goto :goto_0
.end method

.method private static setWfcModeInternal(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wfcMode"    # I

    #@0
    .prologue
    .line 527
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    #@3
    move-result v3

    #@4
    .line 526
    invoke-static {p0, v3}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    #@7
    move-result-object v0

    #@8
    .line 528
    .local v0, "imsManager":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    #@a
    .line 529
    move v2, p1

    #@b
    .line 530
    .local v2, "value":I
    new-instance v1, Ljava/lang/Thread;

    #@d
    new-instance v3, Lcom/android/ims/ImsManager$1;

    #@f
    invoke-direct {v3, v0, p1}, Lcom/android/ims/ImsManager$1;-><init>(Lcom/android/ims/ImsManager;I)V

    #@12
    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@15
    .line 541
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    #@18
    .line 525
    .end local v1    # "thread":Ljava/lang/Thread;
    .end local v2    # "value":I
    :cond_0
    return-void
.end method

.method private setWfcProvisionedProperty(Z)V
    .locals 2
    .param p1, "provisioned"    # Z

    #@0
    .prologue
    .line 1735
    const-string/jumbo v1, "net.lte.ims.wfc.provisioned"

    #@3
    if-eqz p1, :cond_0

    #@5
    const-string/jumbo v0, "true"

    #@8
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1734
    return-void

    #@c
    .line 1735
    :cond_0
    const-string/jumbo v0, "false"

    #@f
    goto :goto_0
.end method

.method public static setWfcRoamingSetting(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 561
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v1

    #@4
    .line 562
    const-string/jumbo v2, "wfc_ims_roaming_enabled"

    #@7
    .line 563
    if-eqz p1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    .line 561
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@d
    .line 566
    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->setWfcRoamingSettingInternal(Landroid/content/Context;Z)V

    #@10
    .line 560
    return-void

    #@11
    .line 564
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
    .line 571
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    #@3
    move-result v3

    #@4
    .line 570
    invoke-static {p0, v3}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    #@7
    move-result-object v0

    #@8
    .line 572
    .local v0, "imsManager":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    #@a
    .line 573
    if-eqz p1, :cond_1

    #@c
    .line 574
    const/4 v2, 0x1

    #@d
    .line 576
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
    .line 587
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    #@1a
    .line 569
    .end local v1    # "thread":Ljava/lang/Thread;
    .end local v2    # "value":I
    :cond_0
    return-void

    #@1b
    .line 575
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
    .line 423
    if-eqz p1, :cond_3

    #@3
    const/4 v3, 0x1

    #@4
    .line 424
    .local v3, "value":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v5

    #@8
    .line 425
    const-string/jumbo v6, "wfc_ims_enabled"

    #@b
    .line 424
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@e
    .line 428
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    #@11
    move-result v5

    #@12
    .line 427
    invoke-static {p0, v5}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    #@15
    move-result-object v2

    #@16
    .line 429
    .local v2, "imsManager":Lcom/android/ims/ImsManager;
    if-eqz v2, :cond_2

    #@18
    .line 431
    :try_start_0
    invoke-virtual {v2}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    #@1b
    move-result-object v0

    #@1c
    .line 434
    .local v0, "config":Lcom/android/ims/ImsConfig;
    if-eqz p1, :cond_4

    #@1e
    move v5, v4

    #@1f
    .line 436
    :goto_1
    iget-object v6, v2, Lcom/android/ims/ImsManager;->mImsConfigListener:Lcom/android/ims/ImsConfigListener;

    #@21
    .line 432
    const/4 v7, 0x2

    #@22
    .line 433
    const/16 v8, 0x12

    #@24
    .line 432
    invoke-virtual {v0, v7, v8, v5, v6}, Lcom/android/ims/ImsConfig;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    #@27
    .line 438
    if-eqz p1, :cond_5

    #@29
    .line 439
    const-string/jumbo v5, "setWfcSetting() : turnOnIms"

    #@2c
    invoke-static {v5}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    #@2f
    .line 440
    invoke-direct {v2}, Lcom/android/ims/ImsManager;->turnOnIms()V

    #@32
    .line 449
    :cond_0
    :goto_2
    if-eqz p1, :cond_1

    #@34
    .line 450
    invoke-static {p0}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    #@37
    move-result v4

    #@38
    .line 449
    :cond_1
    invoke-static {p0, v4}, Lcom/android/ims/ImsManager;->setWfcModeInternal(Landroid/content/Context;I)V

    #@3b
    .line 422
    .end local v0    # "config":Lcom/android/ims/ImsConfig;
    :cond_2
    :goto_3
    return-void

    #@3c
    .line 423
    .end local v2    # "imsManager":Lcom/android/ims/ImsManager;
    .end local v3    # "value":I
    :cond_3
    const/4 v3, 0x0

    #@3d
    .restart local v3    # "value":I
    goto :goto_0

    #@3e
    .line 435
    .restart local v0    # "config":Lcom/android/ims/ImsConfig;
    .restart local v2    # "imsManager":Lcom/android/ims/ImsManager;
    :cond_4
    const/4 v5, 0x0

    #@3f
    goto :goto_1

    #@40
    .line 441
    :cond_5
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isTurnOffImsAllowedByPlatform(Landroid/content/Context;)Z

    #@43
    move-result v5

    #@44
    if-eqz v5, :cond_0

    #@46
    .line 442
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    #@49
    move-result v5

    #@4a
    if-eqz v5, :cond_6

    #@4c
    .line 443
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    #@4f
    move-result v5

    #@50
    if-nez v5, :cond_0

    #@52
    .line 444
    :cond_6
    const-string/jumbo v5, "setWfcSetting() : imsServiceAllowTurnOff -> turnOffIms"

    #@55
    invoke-static {v5}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    #@58
    .line 445
    invoke-direct {v2}, Lcom/android/ims/ImsManager;->turnOffIms()V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@5b
    goto :goto_2

    #@5c
    .line 452
    .end local v0    # "config":Lcom/android/ims/ImsConfig;
    :catch_0
    move-exception v1

    #@5d
    .line 453
    .local v1, "e":Lcom/android/ims/ImsException;
    const-string/jumbo v4, "setWfcSetting(): "

    #@60
    invoke-static {v4, v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@63
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
    .line 1446
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@3
    .line 1449
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@5
    iget v2, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    #@7
    invoke-interface {v1, v2}, Lcom/android/ims/internal/IImsService;->turnOffIms(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 1445
    return-void

    #@b
    .line 1450
    :catch_0
    move-exception v0

    #@c
    .line 1451
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
    .line 1385
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@3
    .line 1388
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@5
    iget v2, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    #@7
    invoke-interface {v1, v2}, Lcom/android/ims/internal/IImsService;->turnOnIms(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 1384
    return-void

    #@b
    .line 1389
    :catch_0
    move-exception v0

    #@c
    .line 1390
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
    .line 719
    if-nez p2, :cond_0

    #@2
    .line 720
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
    .line 721
    const-string/jumbo v3, "updateImsServiceConfig: SIM not ready"

    #@10
    invoke-static {v3}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    #@13
    .line 723
    return-void

    #@14
    .line 727
    :cond_0
    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    #@17
    move-result-object v1

    #@18
    .line 728
    .local v1, "imsManager":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_2

    #@1a
    iget-boolean v3, v1, Lcom/android/ims/ImsManager;->mConfigUpdated:Z

    #@1c
    if-eqz v3, :cond_1

    #@1e
    if-eqz p2, :cond_2

    #@20
    .line 730
    :cond_1
    :try_start_0
    invoke-direct {v1}, Lcom/android/ims/ImsManager;->updateProvisionedValues()V

    #@23
    .line 737
    invoke-direct {v1}, Lcom/android/ims/ImsManager;->updateVolteFeatureValue()Z

    #@26
    move-result v2

    #@27
    .line 738
    .local v2, "isImsUsed":Z
    invoke-direct {v1}, Lcom/android/ims/ImsManager;->updateWfcFeatureAndProvisionedValues()Z

    #@2a
    move-result v3

    #@2b
    or-int/2addr v2, v3

    #@2c
    .line 739
    invoke-direct {v1}, Lcom/android/ims/ImsManager;->updateVideoCallFeatureValue()Z

    #@2f
    move-result v3

    #@30
    or-int/2addr v2, v3

    #@31
    .line 741
    if-nez v2, :cond_3

    #@33
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isTurnOffImsAllowedByPlatform(Landroid/content/Context;)Z

    #@36
    move-result v3

    #@37
    if-eqz v3, :cond_3

    #@39
    .line 750
    const-string/jumbo v3, "updateImsServiceConfig: turnOffIms"

    #@3c
    invoke-static {v3}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    #@3f
    .line 751
    invoke-direct {v1}, Lcom/android/ims/ImsManager;->turnOffIms()V

    #@42
    .line 754
    :goto_0
    const/4 v3, 0x1

    #@43
    iput-boolean v3, v1, Lcom/android/ims/ImsManager;->mConfigUpdated:Z

    #@45
    .line 718
    .end local v2    # "isImsUsed":Z
    :cond_2
    :goto_1
    return-void

    #@46
    .line 746
    .restart local v2    # "isImsUsed":Z
    :cond_3
    const-string/jumbo v3, "updateImsServiceConfig: turnOnIms"

    #@49
    invoke-static {v3}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    #@4c
    .line 747
    invoke-direct {v1}, Lcom/android/ims/ImsManager;->turnOnIms()V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@4f
    goto :goto_0

    #@50
    .line 755
    .end local v2    # "isImsUsed":Z
    :catch_0
    move-exception v0

    #@51
    .line 756
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string/jumbo v3, "updateImsServiceConfig: "

    #@54
    invoke-static {v3, v0}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@57
    .line 757
    const/4 v3, 0x0

    #@58
    iput-boolean v3, v1, Lcom/android/ims/ImsManager;->mConfigUpdated:Z

    #@5a
    goto :goto_1
.end method

.method private updateProvisionedValues()V
    .locals 2

    #@0
    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@2
    .line 705
    const-string/jumbo v1, "carrier_volte_provisioning_required_bool"

    #@5
    .line 704
    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 707
    new-instance v0, Lcom/android/ims/ImsManager$AsyncUpdateProvisionedValues;

    #@d
    const/4 v1, 0x0

    #@e
    invoke-direct {v0, p0, v1}, Lcom/android/ims/ImsManager$AsyncUpdateProvisionedValues;-><init>(Lcom/android/ims/ImsManager;Lcom/android/ims/ImsManager$AsyncUpdateProvisionedValues;)V

    #@11
    const/4 v1, 0x0

    #@12
    new-array v1, v1, [Ljava/lang/Void;

    #@14
    invoke-virtual {v0, v1}, Lcom/android/ims/ImsManager$AsyncUpdateProvisionedValues;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    #@17
    .line 703
    :cond_0
    return-void
.end method

.method private updateVideoCallFeatureValue()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 794
    iget-object v5, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@3
    invoke-static {v5}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform(Landroid/content/Context;)Z

    #@6
    move-result v0

    #@7
    .line 795
    .local v0, "available":Z
    iget-object v5, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@9
    invoke-static {v5}, Lcom/android/ims/ImsManager;->isVtEnabledByUser(Landroid/content/Context;)Z

    #@c
    move-result v1

    #@d
    .line 796
    .local v1, "enabled":Z
    iget-object v5, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@f
    invoke-static {v5}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    #@12
    move-result v4

    #@13
    .line 797
    .local v4, "isNonTty":Z
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isDataEnabled()Z

    #@16
    move-result v2

    #@17
    .line 799
    .local v2, "isDataEnabled":Z
    if-eqz v0, :cond_0

    #@19
    if-eqz v1, :cond_0

    #@1b
    if-eqz v4, :cond_0

    #@1d
    move v3, v2

    #@1e
    .line 801
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v7, "updateVideoCallFeatureValue: available = "

    #@26
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    .line 802
    const-string/jumbo v7, ", enabled = "

    #@31
    .line 801
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v5

    #@35
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    .line 803
    const-string/jumbo v7, ", nonTTY = "

    #@3c
    .line 801
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v5

    #@40
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    .line 804
    const-string/jumbo v7, ", data enabled = "

    #@47
    .line 801
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v5

    #@4b
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v5

    #@4f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v5

    #@53
    invoke-static {v5}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    #@56
    .line 806
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    #@59
    move-result-object v7

    #@5a
    .line 809
    if-eqz v3, :cond_1

    #@5c
    move v5, v6

    #@5d
    .line 812
    :goto_1
    iget-object v8, p0, Lcom/android/ims/ImsManager;->mImsConfigListener:Lcom/android/ims/ImsConfigListener;

    #@5f
    .line 808
    const/16 v9, 0xd

    #@61
    .line 806
    invoke-virtual {v7, v6, v9, v5, v8}, Lcom/android/ims/ImsConfig;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    #@64
    .line 814
    return v3

    #@65
    .line 799
    :cond_0
    const/4 v3, 0x0

    #@66
    .local v3, "isFeatureOn":Z
    goto :goto_0

    #@67
    .line 811
    .end local v3    # "isFeatureOn":Z
    :cond_1
    const/4 v5, 0x0

    #@68
    goto :goto_1
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
    .line 768
    iget-object v4, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@3
    invoke-static {v4}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    #@6
    move-result v0

    #@7
    .line 769
    .local v0, "available":Z
    iget-object v4, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@9
    invoke-static {v4}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    #@c
    move-result v1

    #@d
    .line 770
    .local v1, "enabled":Z
    iget-object v4, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@f
    invoke-static {v4}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    #@12
    move-result v3

    #@13
    .line 771
    .local v3, "isNonTty":Z
    if-eqz v0, :cond_0

    #@15
    if-eqz v1, :cond_0

    #@17
    move v2, v3

    #@18
    .line 773
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
    .line 774
    const-string/jumbo v6, ", enabled = "

    #@2b
    .line 773
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    .line 775
    const-string/jumbo v6, ", nonTTY = "

    #@36
    .line 773
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
    .line 777
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    #@48
    move-result-object v6

    #@49
    .line 780
    if-eqz v2, :cond_1

    #@4b
    .line 781
    const/4 v4, 0x1

    #@4c
    .line 783
    :goto_1
    iget-object v7, p0, Lcom/android/ims/ImsManager;->mImsConfigListener:Lcom/android/ims/ImsConfigListener;

    #@4e
    .line 779
    const/16 v8, 0xd

    #@50
    .line 777
    invoke-virtual {v6, v5, v8, v4, v7}, Lcom/android/ims/ImsConfig;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    #@53
    .line 785
    return v2

    #@54
    .line 771
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
    .line 782
    goto :goto_1
.end method

.method private updateWfcFeatureAndProvisionedValues()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 823
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@3
    move-result-object v6

    #@4
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    #@7
    move-result v3

    #@8
    .line 824
    .local v3, "isNetworkRoaming":Z
    iget-object v6, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@a
    invoke-static {v6}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    #@d
    move-result v0

    #@e
    .line 825
    .local v0, "available":Z
    iget-object v6, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@10
    invoke-static {v6}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    #@13
    move-result v1

    #@14
    .line 826
    .local v1, "enabled":Z
    iget-object v6, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@16
    invoke-static {v6, v3}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;Z)I

    #@19
    move-result v4

    #@1a
    .line 827
    .local v4, "mode":I
    iget-object v6, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@1c
    invoke-static {v6}, Lcom/android/ims/ImsManager;->isWfcRoamingEnabledByUser(Landroid/content/Context;)Z

    #@1f
    move-result v5

    #@20
    .line 828
    .local v5, "roaming":Z
    if-eqz v0, :cond_1

    #@22
    move v2, v1

    #@23
    .line 830
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v7, "updateWfcFeatureAndProvisionedValues: available = "

    #@2b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v6

    #@2f
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@32
    move-result-object v6

    #@33
    .line 831
    const-string/jumbo v7, ", enabled = "

    #@36
    .line 830
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v6

    #@3a
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v6

    #@3e
    .line 832
    const-string/jumbo v7, ", mode = "

    #@41
    .line 830
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v6

    #@49
    .line 833
    const-string/jumbo v7, ", roaming = "

    #@4c
    .line 830
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v6

    #@50
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@53
    move-result-object v6

    #@54
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v6

    #@58
    invoke-static {v6}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    #@5b
    .line 835
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    #@5e
    move-result-object v7

    #@5f
    .line 838
    if-eqz v2, :cond_2

    #@61
    .line 839
    const/4 v6, 0x1

    #@62
    .line 841
    :goto_1
    iget-object v8, p0, Lcom/android/ims/ImsManager;->mImsConfigListener:Lcom/android/ims/ImsConfigListener;

    #@64
    .line 836
    const/4 v9, 0x2

    #@65
    .line 837
    const/16 v10, 0x12

    #@67
    .line 835
    invoke-virtual {v7, v9, v10, v6, v8}, Lcom/android/ims/ImsConfig;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    #@6a
    .line 843
    if-nez v2, :cond_0

    #@6c
    .line 844
    const/4 v4, 0x1

    #@6d
    .line 845
    const/4 v5, 0x0

    #@6e
    .line 847
    .end local v5    # "roaming":Z
    :cond_0
    iget-object v6, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@70
    invoke-static {v6, v4}, Lcom/android/ims/ImsManager;->setWfcModeInternal(Landroid/content/Context;I)V

    #@73
    .line 848
    iget-object v6, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@75
    invoke-static {v6, v5}, Lcom/android/ims/ImsManager;->setWfcRoamingSettingInternal(Landroid/content/Context;Z)V

    #@78
    .line 850
    return v2

    #@79
    .line 828
    .restart local v5    # "roaming":Z
    :cond_1
    const/4 v2, 0x0

    #@7a
    .local v2, "isFeatureOn":Z
    goto :goto_0

    #@7b
    .line 840
    .end local v2    # "isFeatureOn":Z
    :cond_2
    const/4 v6, 0x0

    #@7c
    goto :goto_1
.end method


# virtual methods
.method public addRegistrationListener(ILcom/android/ims/ImsConnectionStateListener;)V
    .locals 4
    .param p1, "serviceClass"    # I
    .param p2, "listener"    # Lcom/android/ims/ImsConnectionStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 945
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@3
    .line 947
    if-nez p2, :cond_0

    #@5
    .line 948
    new-instance v1, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v2, "listener can\'t be null"

    #@a
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 952
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@10
    iget v2, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    #@12
    .line 953
    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsManager;->createRegistrationListenerProxy(ILcom/android/ims/ImsConnectionStateListener;)Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;

    #@15
    move-result-object v3

    #@16
    .line 952
    invoke-interface {v1, v2, p1, v3}, Lcom/android/ims/internal/IImsService;->addRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 944
    return-void

    #@1a
    .line 954
    :catch_0
    move-exception v0

    #@1b
    .line 955
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    #@1d
    const-string/jumbo v2, "addRegistrationListener()"

    #@20
    .line 956
    const/16 v3, 0x6a

    #@22
    .line 955
    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@25
    throw v1
.end method

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
    .line 968
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@4
    .line 971
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@6
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsService;->close(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 976
    iput-object v4, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;

    #@b
    .line 977
    iput-object v4, p0, Lcom/android/ims/ImsManager;->mConfig:Lcom/android/ims/ImsConfig;

    #@d
    .line 978
    iput-object v4, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;

    #@f
    .line 979
    iput-object v4, p0, Lcom/android/ims/ImsManager;->mMultiEndpoint:Lcom/android/ims/ImsMultiEndpoint;

    #@11
    .line 967
    return-void

    #@12
    .line 972
    :catch_0
    move-exception v0

    #@13
    .line 973
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v1, Lcom/android/ims/ImsException;

    #@15
    const-string/jumbo v2, "close()"

    #@18
    .line 974
    const/16 v3, 0x6a

    #@1a
    .line 973
    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@1d
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    .line 975
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@1f
    .line 976
    iput-object v4, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;

    #@21
    .line 977
    iput-object v4, p0, Lcom/android/ims/ImsManager;->mConfig:Lcom/android/ims/ImsConfig;

    #@23
    .line 978
    iput-object v4, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;

    #@25
    .line 979
    iput-object v4, p0, Lcom/android/ims/ImsManager;->mMultiEndpoint:Lcom/android/ims/ImsMultiEndpoint;

    #@27
    .line 975
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
    .line 1083
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@3
    .line 1086
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
    .line 1087
    :catch_0
    move-exception v0

    #@b
    .line 1088
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    #@d
    const-string/jumbo v2, "createCallProfile()"

    #@10
    .line 1089
    const/16 v3, 0x6a

    #@12
    .line 1088
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
    .line 1747
    const-string/jumbo v0, "ImsManager:"

    #@3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 1748
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
    .line 1749
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
    .line 1750
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
    .line 1751
    new-instance v0, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v1, "  mDataEnabled = "

    #@59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v0

    #@5d
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isDataEnabled()Z

    #@60
    move-result v1

    #@61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@64
    move-result-object v0

    #@65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v0

    #@69
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6c
    .line 1753
    new-instance v0, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string/jumbo v1, "  isGbaValid = "

    #@74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v0

    #@78
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@7a
    invoke-static {v1}, Lcom/android/ims/ImsManager;->isGbaValid(Landroid/content/Context;)Z

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
    .line 1754
    new-instance v0, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    const-string/jumbo v1, "  isImsTurnOffAllowed = "

    #@91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v0

    #@95
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isImsTurnOffAllowed()Z

    #@98
    move-result v1

    #@99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v0

    #@9d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v0

    #@a1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a4
    .line 1755
    new-instance v0, Ljava/lang/StringBuilder;

    #@a6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a9
    const-string/jumbo v1, "  isNonTtyOrTtyOnVolteEnabled = "

    #@ac
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v0

    #@b0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@b2
    invoke-static {v1}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    #@b5
    move-result v1

    #@b6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v0

    #@ba
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v0

    #@be
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c1
    .line 1757
    new-instance v0, Ljava/lang/StringBuilder;

    #@c3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c6
    const-string/jumbo v1, "  isVolteEnabledByPlatform = "

    #@c9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v0

    #@cd
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@cf
    invoke-static {v1}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    #@d2
    move-result v1

    #@d3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v0

    #@d7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@da
    move-result-object v0

    #@db
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@de
    .line 1758
    new-instance v0, Ljava/lang/StringBuilder;

    #@e0
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e3
    const-string/jumbo v1, "  isVolteProvisionedOnDevice = "

    #@e6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v0

    #@ea
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@ec
    invoke-static {v1}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice(Landroid/content/Context;)Z

    #@ef
    move-result v1

    #@f0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v0

    #@f4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f7
    move-result-object v0

    #@f8
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@fb
    .line 1759
    new-instance v0, Ljava/lang/StringBuilder;

    #@fd
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@100
    const-string/jumbo v1, "  isEnhanced4gLteModeSettingEnabledByUser = "

    #@103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v0

    #@107
    .line 1760
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@109
    invoke-static {v1}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    #@10c
    move-result v1

    #@10d
    .line 1759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@110
    move-result-object v0

    #@111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@114
    move-result-object v0

    #@115
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@118
    .line 1761
    new-instance v0, Ljava/lang/StringBuilder;

    #@11a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11d
    const-string/jumbo v1, "  isVtEnabledByPlatform = "

    #@120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v0

    #@124
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@126
    invoke-static {v1}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform(Landroid/content/Context;)Z

    #@129
    move-result v1

    #@12a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v0

    #@12e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@131
    move-result-object v0

    #@132
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@135
    .line 1762
    new-instance v0, Ljava/lang/StringBuilder;

    #@137
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@13a
    const-string/jumbo v1, "  isVtEnabledByUser = "

    #@13d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140
    move-result-object v0

    #@141
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@143
    invoke-static {v1}, Lcom/android/ims/ImsManager;->isVtEnabledByUser(Landroid/content/Context;)Z

    #@146
    move-result v1

    #@147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v0

    #@14b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14e
    move-result-object v0

    #@14f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@152
    .line 1764
    new-instance v0, Ljava/lang/StringBuilder;

    #@154
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@157
    const-string/jumbo v1, "  isWfcEnabledByPlatform = "

    #@15a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15d
    move-result-object v0

    #@15e
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@160
    invoke-static {v1}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    #@163
    move-result v1

    #@164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@167
    move-result-object v0

    #@168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16b
    move-result-object v0

    #@16c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@16f
    .line 1765
    new-instance v0, Ljava/lang/StringBuilder;

    #@171
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@174
    const-string/jumbo v1, "  isWfcEnabledByUser = "

    #@177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v0

    #@17b
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@17d
    invoke-static {v1}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    #@180
    move-result v1

    #@181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@184
    move-result-object v0

    #@185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@188
    move-result-object v0

    #@189
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@18c
    .line 1766
    new-instance v0, Ljava/lang/StringBuilder;

    #@18e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@191
    const-string/jumbo v1, "  getWfcMode = "

    #@194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@197
    move-result-object v0

    #@198
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@19a
    invoke-static {v1}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    #@19d
    move-result v1

    #@19e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a1
    move-result-object v0

    #@1a2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a5
    move-result-object v0

    #@1a6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1a9
    .line 1767
    new-instance v0, Ljava/lang/StringBuilder;

    #@1ab
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1ae
    const-string/jumbo v1, "  isWfcRoamingEnabledByUser = "

    #@1b1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b4
    move-result-object v0

    #@1b5
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@1b7
    invoke-static {v1}, Lcom/android/ims/ImsManager;->isWfcRoamingEnabledByUser(Landroid/content/Context;)Z

    #@1ba
    move-result v1

    #@1bb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1be
    move-result-object v0

    #@1bf
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c2
    move-result-object v0

    #@1c3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c6
    .line 1769
    new-instance v0, Ljava/lang/StringBuilder;

    #@1c8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1cb
    const-string/jumbo v1, "  isVtProvisionedOnDevice = "

    #@1ce
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d1
    move-result-object v0

    #@1d2
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@1d4
    invoke-static {v1}, Lcom/android/ims/ImsManager;->isVtProvisionedOnDevice(Landroid/content/Context;)Z

    #@1d7
    move-result v1

    #@1d8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1db
    move-result-object v0

    #@1dc
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1df
    move-result-object v0

    #@1e0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e3
    .line 1770
    new-instance v0, Ljava/lang/StringBuilder;

    #@1e5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1e8
    const-string/jumbo v1, "  isWfcProvisionedOnDevice = "

    #@1eb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ee
    move-result-object v0

    #@1ef
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@1f1
    invoke-static {v1}, Lcom/android/ims/ImsManager;->isWfcProvisionedOnDevice(Landroid/content/Context;)Z

    #@1f4
    move-result v1

    #@1f5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1f8
    move-result-object v0

    #@1f9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fc
    move-result-object v0

    #@1fd
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@200
    .line 1771
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@203
    .line 1746
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
    .line 1191
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mConfig:Lcom/android/ims/ImsConfig;

    #@2
    if-nez v2, :cond_1

    #@4
    .line 1192
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@7
    .line 1195
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@9
    iget v3, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    #@b
    invoke-interface {v2, v3}, Lcom/android/ims/internal/IImsService;->getConfigInterface(I)Lcom/android/ims/internal/IImsConfig;

    #@e
    move-result-object v0

    #@f
    .line 1196
    .local v0, "config":Lcom/android/ims/internal/IImsConfig;
    if-nez v0, :cond_0

    #@11
    .line 1197
    new-instance v2, Lcom/android/ims/ImsException;

    #@13
    const-string/jumbo v3, "getConfigInterface()"

    #@16
    .line 1198
    const/16 v4, 0x83

    #@18
    .line 1197
    invoke-direct {v2, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@1b
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 1201
    .end local v0    # "config":Lcom/android/ims/internal/IImsConfig;
    :catch_0
    move-exception v1

    #@1d
    .line 1202
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    #@1f
    const-string/jumbo v3, "getConfigInterface()"

    #@22
    .line 1203
    const/16 v4, 0x6a

    #@24
    .line 1202
    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@27
    throw v2

    #@28
    .line 1200
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
    .line 1206
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
    .line 1207
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
    .line 1621
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;

    #@2
    if-nez v2, :cond_1

    #@4
    .line 1622
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@7
    .line 1625
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@9
    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsService;->getEcbmInterface(I)Lcom/android/ims/internal/IImsEcbm;

    #@c
    move-result-object v1

    #@d
    .line 1627
    .local v1, "iEcbm":Lcom/android/ims/internal/IImsEcbm;
    if-nez v1, :cond_0

    #@f
    .line 1628
    new-instance v2, Lcom/android/ims/ImsException;

    #@11
    const-string/jumbo v3, "getEcbmInterface()"

    #@14
    .line 1629
    const/16 v4, 0x385

    #@16
    .line 1628
    invoke-direct {v2, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@19
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 1632
    .end local v1    # "iEcbm":Lcom/android/ims/internal/IImsEcbm;
    :catch_0
    move-exception v0

    #@1b
    .line 1633
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    #@1d
    const-string/jumbo v3, "getEcbmInterface()"

    #@20
    .line 1634
    const/16 v4, 0x6a

    #@22
    .line 1633
    invoke-direct {v2, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@25
    throw v2

    #@26
    .line 1631
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
    .line 1637
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
    .line 1648
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mMultiEndpoint:Lcom/android/ims/ImsMultiEndpoint;

    #@2
    if-nez v2, :cond_1

    #@4
    .line 1649
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@7
    .line 1652
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@9
    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsService;->getMultiEndpointInterface(I)Lcom/android/ims/internal/IImsMultiEndpoint;

    #@c
    move-result-object v1

    #@d
    .line 1655
    .local v1, "iImsMultiEndpoint":Lcom/android/ims/internal/IImsMultiEndpoint;
    if-nez v1, :cond_0

    #@f
    .line 1656
    new-instance v2, Lcom/android/ims/ImsException;

    #@11
    const-string/jumbo v3, "getMultiEndpointInterface()"

    #@14
    .line 1657
    const/16 v4, 0x386

    #@16
    .line 1656
    invoke-direct {v2, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@19
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 1660
    .end local v1    # "iImsMultiEndpoint":Lcom/android/ims/internal/IImsMultiEndpoint;
    :catch_0
    move-exception v0

    #@1b
    .line 1661
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    #@1d
    const-string/jumbo v3, "getMultiEndpointInterface()"

    #@20
    .line 1662
    const/16 v4, 0x6a

    #@22
    .line 1661
    invoke-direct {v2, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@25
    throw v2

    #@26
    .line 1659
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
    .line 1665
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
    .line 993
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;

    #@2
    if-nez v2, :cond_1

    #@4
    .line 994
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@7
    .line 997
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@9
    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsService;->getUtInterface(I)Lcom/android/ims/internal/IImsUt;

    #@c
    move-result-object v1

    #@d
    .line 999
    .local v1, "iUt":Lcom/android/ims/internal/IImsUt;
    if-nez v1, :cond_0

    #@f
    .line 1000
    new-instance v2, Lcom/android/ims/ImsException;

    #@11
    const-string/jumbo v3, "getSupplementaryServiceConfiguration()"

    #@14
    .line 1001
    const/16 v4, 0x321

    #@16
    .line 1000
    invoke-direct {v2, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@19
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 1005
    .end local v1    # "iUt":Lcom/android/ims/internal/IImsUt;
    :catch_0
    move-exception v0

    #@1b
    .line 1006
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    #@1d
    const-string/jumbo v3, "getSupplementaryServiceConfiguration()"

    #@20
    .line 1007
    const/16 v4, 0x6a

    #@22
    .line 1006
    invoke-direct {v2, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@25
    throw v2

    #@26
    .line 1004
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
    .line 1011
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
    .line 1033
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@3
    .line 1036
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
    .line 1037
    :catch_0
    move-exception v0

    #@b
    .line 1038
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    #@d
    const-string/jumbo v2, "isServiceConnected()"

    #@10
    .line 1039
    const/16 v3, 0x6a

    #@12
    .line 1038
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
    .line 1051
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@3
    .line 1054
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
    .line 1055
    :catch_0
    move-exception v0

    #@b
    .line 1056
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    #@d
    const-string/jumbo v2, "isOpened()"

    #@10
    .line 1057
    const/16 v3, 0x6a

    #@12
    .line 1056
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
    .line 863
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 864
    return v2

    #@6
    .line 867
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
    .line 868
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    #@12
    .line 869
    return v2

    #@13
    .line 872
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
    .line 1107
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
    .line 1108
    const-string/jumbo v3, ", profile="

    #@13
    .line 1107
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {v2}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    #@22
    .line 1111
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@25
    .line 1113
    new-instance v0, Lcom/android/ims/ImsCall;

    #@27
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@29
    invoke-direct {v0, v2, p2}, Lcom/android/ims/ImsCall;-><init>(Landroid/content/Context;Lcom/android/ims/ImsCallProfile;)V

    #@2c
    .line 1115
    .local v0, "call":Lcom/android/ims/ImsCall;
    invoke-virtual {v0, p4}, Lcom/android/ims/ImsCall;->setListener(Lcom/android/ims/ImsCall$Listener;)V

    #@2f
    .line 1116
    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsManager;->createCallSession(ILcom/android/ims/ImsCallProfile;)Lcom/android/ims/internal/ImsCallSession;

    #@32
    move-result-object v1

    #@33
    .line 1118
    .local v1, "session":Lcom/android/ims/internal/ImsCallSession;
    if-eqz p3, :cond_0

    #@35
    array-length v2, p3

    #@36
    const/4 v3, 0x1

    #@37
    if-ne v2, v3, :cond_0

    #@39
    .line 1119
    const/4 v2, 0x0

    #@3a
    aget-object v2, p3, v2

    #@3c
    invoke-virtual {v0, v1, v2}, Lcom/android/ims/ImsCall;->start(Lcom/android/ims/internal/ImsCallSession;Ljava/lang/String;)V

    #@3f
    .line 1124
    :goto_0
    return-object v0

    #@40
    .line 1121
    :cond_0
    invoke-virtual {v0, v1, p3}, Lcom/android/ims/ImsCall;->start(Lcom/android/ims/internal/ImsCallSession;[Ljava/lang/String;)V

    #@43
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
    .line 904
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@3
    .line 906
    if-nez p2, :cond_0

    #@5
    .line 907
    new-instance v2, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v3, "incomingCallPendingIntent can\'t be null"

    #@a
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2

    #@e
    .line 910
    :cond_0
    if-nez p3, :cond_1

    #@10
    .line 911
    new-instance v2, Ljava/lang/NullPointerException;

    #@12
    const-string/jumbo v3, "listener can\'t be null"

    #@15
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@18
    throw v2

    #@19
    .line 914
    :cond_1
    const/4 v1, 0x0

    #@1a
    .line 917
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@1c
    iget v3, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    #@1e
    .line 918
    invoke-direct {p0, p1, p3}, Lcom/android/ims/ImsManager;->createRegistrationListenerProxy(ILcom/android/ims/ImsConnectionStateListener;)Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;

    #@21
    move-result-object v4

    #@22
    .line 917
    invoke-interface {v2, v3, p1, p2, v4}, Lcom/android/ims/internal/IImsService;->open(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    move-result v1

    #@26
    .line 924
    if-gtz v1, :cond_2

    #@28
    .line 928
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
    .line 919
    :catch_0
    move-exception v0

    #@34
    .line 920
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    #@36
    const-string/jumbo v3, "open()"

    #@39
    .line 921
    const/16 v4, 0x6a

    #@3b
    .line 920
    invoke-direct {v2, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@3e
    throw v2

    #@3f
    .line 931
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    return v1
.end method

.method public setDataEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 1718
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "setDataEnabled: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-static {v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    #@17
    .line 1719
    const-string/jumbo v1, "net.lte.ims.data.enabled"

    #@1a
    if-eqz p1, :cond_0

    #@1c
    const-string/jumbo v0, "true"

    #@1f
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@22
    .line 1717
    return-void

    #@23
    .line 1719
    :cond_0
    const-string/jumbo v0, "false"

    #@26
    goto :goto_0
.end method

.method public setImsConfigListener(Lcom/android/ims/ImsConfigListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/ims/ImsConfigListener;

    #@0
    .prologue
    .line 876
    iput-object p1, p0, Lcom/android/ims/ImsManager;->mImsConfigListener:Lcom/android/ims/ImsConfigListener;

    #@2
    .line 875
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
    .line 1213
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@4
    .line 1216
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@6
    invoke-interface {v2, p2, p3, p4}, Lcom/android/ims/internal/IImsService;->setUiTTYMode(IILandroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1223
    const-string/jumbo v2, "carrier_volte_tty_supported_bool"

    #@c
    .line 1222
    invoke-static {p1, v2}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_1

    #@12
    .line 1224
    if-nez p3, :cond_0

    #@14
    .line 1225
    invoke-static {p1}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    #@17
    move-result v1

    #@18
    .line 1224
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->setAdvanced4GMode(Z)V

    #@1b
    .line 1211
    :cond_1
    return-void

    #@1c
    .line 1217
    :catch_0
    move-exception v0

    #@1d
    .line 1218
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    #@1f
    const-string/jumbo v2, "setTTYMode()"

    #@22
    .line 1219
    const/16 v3, 0x6a

    #@24
    .line 1218
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
    .line 1139
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
    .line 1140
    const-string/jumbo v6, ", incomingCall="

    #@15
    .line 1139
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
    .line 1143
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@27
    .line 1145
    if-nez p2, :cond_0

    #@29
    .line 1146
    new-instance v5, Lcom/android/ims/ImsException;

    #@2b
    const-string/jumbo v6, "Can\'t retrieve session with null intent"

    #@2e
    invoke-direct {v5, v6, v7}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@31
    throw v5

    #@32
    .line 1150
    :cond_0
    invoke-static {p2}, Lcom/android/ims/ImsManager;->getServiceId(Landroid/content/Intent;)I

    #@35
    move-result v2

    #@36
    .line 1152
    .local v2, "incomingServiceId":I
    if-eq p1, v2, :cond_1

    #@38
    .line 1153
    new-instance v5, Lcom/android/ims/ImsException;

    #@3a
    const-string/jumbo v6, "Service id is mismatched in the incoming call intent"

    #@3d
    invoke-direct {v5, v6, v7}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@40
    throw v5

    #@41
    .line 1157
    :cond_1
    invoke-static {p2}, Lcom/android/ims/ImsManager;->getCallId(Landroid/content/Intent;)Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    .line 1159
    .local v1, "callId":Ljava/lang/String;
    if-nez v1, :cond_2

    #@47
    .line 1160
    new-instance v5, Lcom/android/ims/ImsException;

    #@49
    const-string/jumbo v6, "Call ID missing in the incoming call intent"

    #@4c
    invoke-direct {v5, v6, v7}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@4f
    throw v5

    #@50
    .line 1165
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@52
    invoke-interface {v5, p1, v1}, Lcom/android/ims/internal/IImsService;->getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    #@55
    move-result-object v3

    #@56
    .line 1167
    .local v3, "session":Lcom/android/ims/internal/IImsCallSession;
    if-nez v3, :cond_3

    #@58
    .line 1168
    new-instance v5, Lcom/android/ims/ImsException;

    #@5a
    const-string/jumbo v6, "No pending session for the call"

    #@5d
    .line 1169
    const/16 v7, 0x6b

    #@5f
    .line 1168
    invoke-direct {v5, v6, v7}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@62
    throw v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@63
    .line 1178
    .end local v3    # "session":Lcom/android/ims/internal/IImsCallSession;
    :catch_0
    move-exception v4

    #@64
    .line 1179
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
    .line 1172
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
    .line 1174
    .local v0, "call":Lcom/android/ims/ImsCall;
    new-instance v5, Lcom/android/ims/internal/ImsCallSession;

    #@7b
    invoke-direct {v5, v3}, Lcom/android/ims/internal/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    #@7e
    invoke-virtual {v0, v5}, Lcom/android/ims/ImsCall;->attachSession(Lcom/android/ims/internal/ImsCallSession;)V

    #@81
    .line 1175
    invoke-virtual {v0, p3}, Lcom/android/ims/ImsCall;->setListener(Lcom/android/ims/ImsCall$Listener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@84
    .line 1177
    return-object v0
.end method
