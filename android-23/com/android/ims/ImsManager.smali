.class public Lcom/android/ims/ImsManager;
.super Ljava/lang/Object;
.source "ImsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;,
        Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;
    }
.end annotation


# static fields
.field public static final ACTION_IMS_INCOMING_CALL:Ljava/lang/String; = "com.android.ims.IMS_INCOMING_CALL"

.field public static final ACTION_IMS_REGISTRATION_ERROR:Ljava/lang/String; = "com.android.ims.REGISTRATION_ERROR"

.field public static final ACTION_IMS_SERVICE_DOWN:Ljava/lang/String; = "com.android.ims.IMS_SERVICE_DOWN"

.field public static final ACTION_IMS_SERVICE_UP:Ljava/lang/String; = "com.android.ims.IMS_SERVICE_UP"

.field private static final DBG:Z = true

.field public static final EXTRA_CALL_ID:Ljava/lang/String; = "android:imsCallID"

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

.field private mContext:Landroid/content/Context;

.field private mDeathRecipient:Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;

.field private mEcbm:Lcom/android/ims/ImsEcbm;

.field private mImsService:Lcom/android/ims/internal/IImsService;

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

.method static synthetic -set3(Lcom/android/ims/ImsManager;Lcom/android/ims/ImsUt;)Lcom/android/ims/ImsUt;
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
    .line 147
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 146
    sput-object v0, Lcom/android/ims/ImsManager;->sImsManagerInstances:Ljava/util/HashMap;

    #@7
    .line 55
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
    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 151
    iput-object v1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@6
    .line 152
    new-instance v0, Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;

    #@8
    invoke-direct {v0, p0, v1}, Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;-><init>(Lcom/android/ims/ImsManager;Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;)V

    #@b
    iput-object v0, p0, Lcom/android/ims/ImsManager;->mDeathRecipient:Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;

    #@d
    .line 154
    iput-object v1, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;

    #@f
    .line 156
    iput-object v1, p0, Lcom/android/ims/ImsManager;->mConfig:Lcom/android/ims/ImsConfig;

    #@11
    .line 159
    iput-object v1, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;

    #@13
    .line 431
    iput-object p1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@15
    .line 432
    iput p2, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    #@17
    .line 433
    const/4 v0, 0x1

    #@18
    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->createImsService(Z)V

    #@1b
    .line 430
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
    .line 830
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 831
    const/4 v0, 0x1

    #@5
    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->createImsService(Z)V

    #@8
    .line 833
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@a
    if-nez v0, :cond_0

    #@c
    .line 834
    new-instance v0, Lcom/android/ims/ImsException;

    #@e
    const-string/jumbo v1, "Service is unavailable"

    #@11
    .line 835
    const/16 v2, 0x6a

    #@13
    .line 834
    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@16
    throw v0

    #@17
    .line 829
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
    .line 880
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
    .line 881
    :catch_0
    move-exception v0

    #@f
    .line 882
    .local v0, "e":Landroid/os/RemoteException;
    return-object v4
.end method

.method private createImsService(Z)V
    .locals 5
    .param p1, "checkService"    # Z

    #@0
    .prologue
    .line 849
    if-eqz p1, :cond_0

    #@2
    .line 850
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
    .line 852
    .local v1, "binder":Landroid/os/IBinder;
    if-nez v1, :cond_0

    #@e
    .line 853
    return-void

    #@f
    .line 857
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
    .line 859
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    #@1b
    .line 861
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsManager;->mDeathRecipient:Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;

    #@1d
    const/4 v4, 0x0

    #@1e
    invoke-interface {v0, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 866
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/android/ims/internal/IImsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    #@24
    move-result-object v3

    #@25
    iput-object v3, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@27
    .line 848
    return-void

    #@28
    .line 862
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
    .line 889
    new-instance v0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;-><init>(Lcom/android/ims/ImsManager;ILcom/android/ims/ImsConnectionStateListener;)V

    #@5
    .line 890
    .local v0, "proxy":Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;
    return-object v0
.end method

.method private static getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 784
    const-string/jumbo v2, "carrier_config"

    #@3
    .line 783
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Landroid/telephony/CarrierConfigManager;

    #@9
    .line 785
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v0, 0x0

    #@a
    .line 786
    .local v0, "b":Landroid/os/PersistableBundle;
    if-eqz v1, :cond_0

    #@c
    .line 787
    invoke-virtual {v1}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    #@f
    move-result-object v0

    #@10
    .line 789
    .end local v0    # "b":Landroid/os/PersistableBundle;
    :cond_0
    if-eqz v0, :cond_1

    #@12
    .line 790
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    #@15
    move-result v2

    #@16
    return v2

    #@17
    .line 793
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
    .line 804
    if-nez p0, :cond_0

    #@3
    .line 805
    return-object v0

    #@4
    .line 808
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
    .line 842
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
    .line 169
    sget-object v2, Lcom/android/ims/ImsManager;->sImsManagerInstances:Ljava/util/HashMap;

    #@2
    monitor-enter v2

    #@3
    .line 170
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
    .line 171
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
    .line 173
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/ims/ImsManager;

    #@1f
    invoke-direct {v0, p0, p1}, Lcom/android/ims/ImsManager;-><init>(Landroid/content/Context;I)V

    #@22
    .line 174
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
    .line 176
    return-object v0

    #@2d
    .line 169
    .end local v0    # "mgr":Lcom/android/ims/ImsManager;
    :catchall_0
    move-exception v1

    #@2e
    monitor-exit v2

    #@2f
    throw v1
.end method

.method private static getServiceId(Landroid/content/Intent;)I
    .locals 2
    .param p0, "incomingCallIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 818
    if-nez p0, :cond_0

    #@3
    .line 819
    return v1

    #@4
    .line 822
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
    .line 338
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v1

    #@4
    .line 339
    const-string/jumbo v2, "wfc_ims_mode"

    #@7
    .line 340
    const/4 v3, 0x2

    #@8
    .line 338
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@b
    move-result v0

    #@c
    .line 341
    .local v0, "setting":I
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "getWfcMode - setting="

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-static {v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    #@23
    .line 342
    return v0
.end method

.method public static isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@4
    move-result-object v2

    #@5
    .line 186
    const-string/jumbo v3, "volte_vt_enabled"

    #@8
    .line 184
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@b
    move-result v0

    #@c
    .line 187
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

.method private isImsTurnOffAllowed()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 919
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@4
    .line 920
    const-string/jumbo v3, "carrier_allow_turnoff_ims_bool"

    #@7
    .line 919
    invoke-static {v2, v3}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 921
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@f
    invoke-static {v2}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 922
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
    .line 919
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
    .line 218
    const-string/jumbo v2, "carrier_volte_tty_supported_bool"

    #@5
    .line 217
    invoke-static {p0, v2}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 219
    return v0

    #@c
    .line 222
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@f
    move-result-object v2

    #@10
    .line 223
    const-string/jumbo v3, "preferred_tty_mode"

    #@13
    .line 222
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
    .line 231
    const-string/jumbo v1, "persist.dbg.volte_avail_ovr"

    #@5
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@8
    move-result v1

    #@9
    if-ne v1, v2, :cond_0

    #@b
    .line 233
    return v2

    #@c
    .line 236
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@f
    move-result-object v1

    #@10
    .line 237
    const v2, 0x1120084

    #@13
    .line 236
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 239
    const-string/jumbo v0, "carrier_volte_available_bool"

    #@1c
    .line 238
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@1f
    move-result v0

    #@20
    .line 236
    :cond_1
    return v0
.end method

.method public static isVolteProvisionedOnDevice(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 246
    const/4 v2, 0x1

    #@1
    .line 248
    .local v2, "isProvisioned":Z
    const-string/jumbo v4, "carrier_volte_provisioning_required_bool"

    #@4
    .line 247
    invoke-static {p0, v4}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_0

    #@a
    .line 249
    const/4 v2, 0x0

    #@b
    .line 251
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    #@e
    move-result v4

    #@f
    .line 250
    invoke-static {p0, v4}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    #@12
    move-result-object v3

    #@13
    .line 252
    .local v3, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v3, :cond_0

    #@15
    .line 254
    :try_start_0
    invoke-virtual {v3}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    #@18
    move-result-object v0

    #@19
    .line 255
    .local v0, "config":Lcom/android/ims/ImsConfig;
    if-eqz v0, :cond_0

    #@1b
    .line 256
    invoke-virtual {v0}, Lcom/android/ims/ImsConfig;->getVolteProvisioned()Z
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    move-result v2

    #@1f
    .line 264
    .end local v0    # "config":Lcom/android/ims/ImsConfig;
    .end local v2    # "isProvisioned":Z
    .end local v3    # "mgr":Lcom/android/ims/ImsManager;
    :cond_0
    :goto_0
    return v2

    #@20
    .line 258
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
    .line 274
    const-string/jumbo v1, "persist.dbg.vt_avail_ovr"

    #@5
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@8
    move-result v1

    #@9
    if-ne v1, v2, :cond_0

    #@b
    .line 276
    return v2

    #@c
    .line 280
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@f
    move-result-object v1

    #@10
    .line 281
    const v2, 0x1120088

    #@13
    .line 280
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 283
    const-string/jumbo v0, "carrier_vt_available_bool"

    #@1c
    .line 282
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@1f
    move-result v0

    #@20
    .line 279
    :cond_1
    return v0
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
    .line 418
    const-string/jumbo v1, "persist.dbg.wfc_avail_ovr"

    #@5
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@8
    move-result v1

    #@9
    if-ne v1, v2, :cond_0

    #@b
    .line 420
    return v2

    #@c
    .line 424
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@f
    move-result-object v1

    #@10
    .line 425
    const v2, 0x112008a

    #@13
    .line 424
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 427
    const-string/jumbo v0, "carrier_wfc_ims_available_bool"

    #@1c
    .line 426
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@1f
    move-result v0

    #@20
    .line 423
    :cond_1
    return v0
.end method

.method public static isWfcEnabledByUser(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 290
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v3

    #@6
    .line 291
    const-string/jumbo v4, "wfc_ims_enabled"

    #@9
    .line 290
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@c
    move-result v0

    #@d
    .line 293
    .local v0, "enabled":I
    if-ne v0, v1, :cond_0

    #@f
    :goto_0
    return v1

    #@10
    :cond_0
    move v1, v2

    #@11
    goto :goto_0
.end method

.method public static isWfcRoamingEnabledByUser(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 379
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v3

    #@6
    .line 380
    const-string/jumbo v4, "wfc_ims_roaming_enabled"

    #@9
    .line 379
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@c
    move-result v0

    #@d
    .line 382
    .local v0, "enabled":I
    if-ne v0, v1, :cond_0

    #@f
    :goto_0
    return v1

    #@10
    :cond_0
    move v1, v2

    #@11
    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 894
    const-string/jumbo v0, "ImsManager"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 893
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 898
    const-string/jumbo v0, "ImsManager"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 897
    return-void
.end method

.method private static loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 902
    const-string/jumbo v0, "ImsManager"

    #@3
    invoke-static {v0, p0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6
    .line 901
    return-void
.end method

.method private setAdvanced4GMode(Z)V
    .locals 8
    .param p1, "turnOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 926
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@5
    .line 929
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    #@8
    move-result-object v0

    #@9
    .line 930
    .local v0, "config":Lcom/android/ims/ImsConfig;
    if-eqz v0, :cond_0

    #@b
    if-nez p1, :cond_2

    #@d
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isImsTurnOffAllowed()Z
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_2

    #@13
    .line 945
    .end local v0    # "config":Lcom/android/ims/ImsConfig;
    :cond_0
    :goto_0
    if-eqz p1, :cond_5

    #@15
    .line 946
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->turnOnIms()V

    #@18
    .line 925
    :cond_1
    :goto_1
    return-void

    #@19
    .line 932
    .restart local v0    # "config":Lcom/android/ims/ImsConfig;
    :cond_2
    if-eqz p1, :cond_3

    #@1b
    move v4, v2

    #@1c
    .line 931
    :goto_2
    const/4 v5, 0x0

    #@1d
    .line 932
    const/16 v6, 0xd

    #@1f
    const/4 v7, 0x0

    #@20
    .line 931
    :try_start_1
    invoke-virtual {v0, v5, v6, v4, v7}, Lcom/android/ims/ImsConfig;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    #@23
    .line 933
    iget-object v4, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@25
    invoke-static {v4}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform(Landroid/content/Context;)Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_0

    #@2b
    .line 939
    if-eqz p1, :cond_4

    #@2d
    .line 938
    :goto_3
    const/4 v3, 0x1

    #@2e
    .line 939
    const/16 v4, 0xd

    #@30
    const/4 v5, 0x0

    #@31
    .line 938
    invoke-virtual {v0, v3, v4, v2, v5}, Lcom/android/ims/ImsConfig;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_0

    #@34
    goto :goto_0

    #@35
    .line 942
    .end local v0    # "config":Lcom/android/ims/ImsConfig;
    :catch_0
    move-exception v1

    #@36
    .line 943
    .local v1, "e":Lcom/android/ims/ImsException;
    new-instance v2, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v3, "setAdvanced4GMode() : "

    #@3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    invoke-static {v2}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    #@4d
    goto :goto_0

    #@4e
    .end local v1    # "e":Lcom/android/ims/ImsException;
    .restart local v0    # "config":Lcom/android/ims/ImsConfig;
    :cond_3
    move v4, v3

    #@4f
    .line 932
    goto :goto_2

    #@50
    :cond_4
    move v2, v3

    #@51
    .line 939
    goto :goto_3

    #@52
    .line 947
    .end local v0    # "config":Lcom/android/ims/ImsConfig;
    :cond_5
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isImsTurnOffAllowed()Z

    #@55
    move-result v2

    #@56
    if-eqz v2, :cond_1

    #@58
    .line 948
    const-string/jumbo v2, "setAdvanced4GMode() : imsServiceAllowTurnOff -> turnOffIms"

    #@5b
    invoke-static {v2}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    #@5e
    .line 949
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->turnOffIms()V

    #@61
    goto :goto_1
.end method

.method public static setEnhanced4gLteModeSetting(Landroid/content/Context;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 194
    if-eqz p1, :cond_1

    #@2
    const/4 v2, 0x1

    #@3
    .line 196
    .local v2, "value":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v3

    #@7
    .line 197
    const-string/jumbo v4, "volte_vt_enabled"

    #@a
    .line 195
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@d
    .line 199
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    .line 201
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    #@16
    move-result v3

    #@17
    .line 200
    invoke-static {p0, v3}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    #@1a
    move-result-object v1

    #@1b
    .line 202
    .local v1, "imsManager":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_0

    #@1d
    .line 204
    :try_start_0
    invoke-direct {v1, p1}, Lcom/android/ims/ImsManager;->setAdvanced4GMode(Z)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 193
    .end local v1    # "imsManager":Lcom/android/ims/ImsManager;
    :cond_0
    :goto_1
    return-void

    #@21
    .line 194
    .end local v2    # "value":I
    :cond_1
    const/4 v2, 0x0

    #@22
    .restart local v2    # "value":I
    goto :goto_0

    #@23
    .line 205
    .restart local v1    # "imsManager":Lcom/android/ims/ImsManager;
    :catch_0
    move-exception v0

    #@24
    .local v0, "ie":Lcom/android/ims/ImsException;
    goto :goto_1
.end method

.method public static setWfcMode(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wfcMode"    # I

    #@0
    .prologue
    .line 349
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
    .line 350
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1a
    move-result-object v0

    #@1b
    .line 351
    const-string/jumbo v1, "wfc_ims_mode"

    #@1e
    .line 350
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@21
    .line 353
    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->setWfcModeInternal(Landroid/content/Context;I)V

    #@24
    .line 348
    return-void
.end method

.method private static setWfcModeInternal(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wfcMode"    # I

    #@0
    .prologue
    .line 358
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    #@3
    move-result v2

    #@4
    .line 357
    invoke-static {p0, v2}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    #@7
    move-result-object v0

    #@8
    .line 359
    .local v0, "imsManager":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    #@a
    .line 360
    move v1, p1

    #@b
    .line 361
    .local v1, "value":I
    invoke-static {}, Landroid/app/QueuedWork;->singleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    #@e
    move-result-object v2

    #@f
    new-instance v3, Lcom/android/ims/ImsManager$1;

    #@11
    invoke-direct {v3, v0, v1}, Lcom/android/ims/ImsManager$1;-><init>(Lcom/android/ims/ImsManager;I)V

    #@14
    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    #@17
    .line 356
    .end local v1    # "value":I
    :cond_0
    return-void
.end method

.method public static setWfcRoamingSetting(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 389
    if-eqz p1, :cond_1

    #@2
    .line 390
    const/4 v1, 0x1

    #@3
    .line 392
    .local v1, "value":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v2

    #@7
    .line 393
    const-string/jumbo v3, "wfc_ims_roaming_enabled"

    #@a
    .line 392
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@d
    .line 396
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    #@10
    move-result v2

    #@11
    .line 395
    invoke-static {p0, v2}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    #@14
    move-result-object v0

    #@15
    .line 397
    .local v0, "imsManager":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    #@17
    .line 398
    invoke-static {}, Landroid/app/QueuedWork;->singleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    #@1a
    move-result-object v2

    #@1b
    new-instance v3, Lcom/android/ims/ImsManager$2;

    #@1d
    invoke-direct {v3, v0, v1}, Lcom/android/ims/ImsManager$2;-><init>(Lcom/android/ims/ImsManager;I)V

    #@20
    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    #@23
    .line 388
    :cond_0
    return-void

    #@24
    .line 391
    .end local v0    # "imsManager":Lcom/android/ims/ImsManager;
    .end local v1    # "value":I
    :cond_1
    const/4 v1, 0x0

    #@25
    .restart local v1    # "value":I
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
    .line 300
    if-eqz p1, :cond_3

    #@3
    const/4 v3, 0x1

    #@4
    .line 301
    .local v3, "value":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v5

    #@8
    .line 302
    const-string/jumbo v6, "wfc_ims_enabled"

    #@b
    .line 301
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@e
    .line 305
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    #@11
    move-result v5

    #@12
    .line 304
    invoke-static {p0, v5}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    #@15
    move-result-object v2

    #@16
    .line 306
    .local v2, "imsManager":Lcom/android/ims/ImsManager;
    if-eqz v2, :cond_2

    #@18
    .line 308
    :try_start_0
    invoke-virtual {v2}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    #@1b
    move-result-object v0

    #@1c
    .line 311
    .local v0, "config":Lcom/android/ims/ImsConfig;
    if-eqz p1, :cond_4

    #@1e
    move v5, v4

    #@1f
    .line 309
    :goto_1
    const/4 v6, 0x2

    #@20
    .line 310
    const/16 v7, 0x12

    #@22
    .line 312
    const/4 v8, 0x0

    #@23
    .line 309
    invoke-virtual {v0, v6, v7, v5, v8}, Lcom/android/ims/ImsConfig;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    #@26
    .line 314
    if-eqz p1, :cond_5

    #@28
    .line 315
    invoke-direct {v2}, Lcom/android/ims/ImsManager;->turnOnIms()V

    #@2b
    .line 325
    :cond_0
    :goto_2
    if-eqz p1, :cond_1

    #@2d
    .line 326
    invoke-static {p0}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    #@30
    move-result v4

    #@31
    .line 325
    :cond_1
    invoke-static {p0, v4}, Lcom/android/ims/ImsManager;->setWfcModeInternal(Landroid/content/Context;I)V

    #@34
    .line 299
    .end local v0    # "config":Lcom/android/ims/ImsConfig;
    :cond_2
    :goto_3
    return-void

    #@35
    .line 300
    .end local v2    # "imsManager":Lcom/android/ims/ImsManager;
    .end local v3    # "value":I
    :cond_3
    const/4 v3, 0x0

    #@36
    .restart local v3    # "value":I
    goto :goto_0

    #@37
    .line 312
    .restart local v0    # "config":Lcom/android/ims/ImsConfig;
    .restart local v2    # "imsManager":Lcom/android/ims/ImsManager;
    :cond_4
    const/4 v5, 0x0

    #@38
    goto :goto_1

    #@39
    .line 317
    :cond_5
    const-string/jumbo v5, "carrier_allow_turnoff_ims_bool"

    #@3c
    .line 316
    invoke-static {p0, v5}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@3f
    move-result v5

    #@40
    if-eqz v5, :cond_0

    #@42
    .line 318
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    #@45
    move-result v5

    #@46
    if-eqz v5, :cond_6

    #@48
    .line 319
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    #@4b
    move-result v5

    #@4c
    if-nez v5, :cond_0

    #@4e
    .line 320
    :cond_6
    const-string/jumbo v5, "setWfcSetting() : imsServiceAllowTurnOff -> turnOffIms"

    #@51
    invoke-static {v5}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    #@54
    .line 321
    invoke-direct {v2}, Lcom/android/ims/ImsManager;->turnOffIms()V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@57
    goto :goto_2

    #@58
    .line 328
    .end local v0    # "config":Lcom/android/ims/ImsConfig;
    :catch_0
    move-exception v1

    #@59
    .line 329
    .local v1, "e":Lcom/android/ims/ImsException;
    new-instance v4, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v5, "setWfcSetting(): "

    #@61
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v4

    #@65
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v4

    #@69
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v4

    #@6d
    invoke-static {v4}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    #@70
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
    .line 958
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@3
    .line 961
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@5
    iget v2, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    #@7
    invoke-interface {v1, v2}, Lcom/android/ims/internal/IImsService;->turnOffIms(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 957
    return-void

    #@b
    .line 962
    :catch_0
    move-exception v0

    #@c
    .line 963
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
    .line 909
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@3
    .line 912
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@5
    iget v2, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    #@7
    invoke-interface {v1, v2}, Lcom/android/ims/internal/IImsService;->turnOnIms(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 908
    return-void

    #@b
    .line 913
    :catch_0
    move-exception v0

    #@c
    .line 914
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
    .line 515
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@4
    .line 518
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@6
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsService;->close(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 523
    iput-object v4, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;

    #@b
    .line 524
    iput-object v4, p0, Lcom/android/ims/ImsManager;->mConfig:Lcom/android/ims/ImsConfig;

    #@d
    .line 525
    iput-object v4, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;

    #@f
    .line 514
    return-void

    #@10
    .line 519
    :catch_0
    move-exception v0

    #@11
    .line 520
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v1, Lcom/android/ims/ImsException;

    #@13
    const-string/jumbo v2, "close()"

    #@16
    .line 521
    const/16 v3, 0x6a

    #@18
    .line 520
    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@1b
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    .line 522
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@1d
    .line 523
    iput-object v4, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;

    #@1f
    .line 524
    iput-object v4, p0, Lcom/android/ims/ImsManager;->mConfig:Lcom/android/ims/ImsConfig;

    #@21
    .line 525
    iput-object v4, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;

    #@23
    .line 522
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
    .line 629
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@3
    .line 632
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
    .line 633
    :catch_0
    move-exception v0

    #@b
    .line 634
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    #@d
    const-string/jumbo v2, "createCallProfile()"

    #@10
    .line 635
    const/16 v3, 0x6a

    #@12
    .line 634
    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@15
    throw v1
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
    .line 737
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mConfig:Lcom/android/ims/ImsConfig;

    #@2
    if-nez v2, :cond_1

    #@4
    .line 738
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@7
    .line 741
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@9
    iget v3, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    #@b
    invoke-interface {v2, v3}, Lcom/android/ims/internal/IImsService;->getConfigInterface(I)Lcom/android/ims/internal/IImsConfig;

    #@e
    move-result-object v0

    #@f
    .line 742
    .local v0, "config":Lcom/android/ims/internal/IImsConfig;
    if-nez v0, :cond_0

    #@11
    .line 743
    new-instance v2, Lcom/android/ims/ImsException;

    #@13
    const-string/jumbo v3, "getConfigInterface()"

    #@16
    .line 744
    const/16 v4, 0x83

    #@18
    .line 743
    invoke-direct {v2, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@1b
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 747
    .end local v0    # "config":Lcom/android/ims/internal/IImsConfig;
    :catch_0
    move-exception v1

    #@1d
    .line 748
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    #@1f
    const-string/jumbo v3, "getConfigInterface()"

    #@22
    .line 749
    const/16 v4, 0x6a

    #@24
    .line 748
    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@27
    throw v2

    #@28
    .line 746
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
    .line 752
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
    .line 753
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
    .line 1088
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;

    #@2
    if-nez v2, :cond_1

    #@4
    .line 1089
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@7
    .line 1092
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@9
    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsService;->getEcbmInterface(I)Lcom/android/ims/internal/IImsEcbm;

    #@c
    move-result-object v1

    #@d
    .line 1094
    .local v1, "iEcbm":Lcom/android/ims/internal/IImsEcbm;
    if-nez v1, :cond_0

    #@f
    .line 1095
    new-instance v2, Lcom/android/ims/ImsException;

    #@11
    const-string/jumbo v3, "getEcbmInterface()"

    #@14
    .line 1096
    const/16 v4, 0x385

    #@16
    .line 1095
    invoke-direct {v2, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@19
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 1099
    .end local v1    # "iEcbm":Lcom/android/ims/internal/IImsEcbm;
    :catch_0
    move-exception v0

    #@1b
    .line 1100
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    #@1d
    const-string/jumbo v3, "getEcbmInterface()"

    #@20
    .line 1101
    const/16 v4, 0x6a

    #@22
    .line 1100
    invoke-direct {v2, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@25
    throw v2

    #@26
    .line 1098
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
    .line 1104
    .end local v1    # "iEcbm":Lcom/android/ims/internal/IImsEcbm;
    :cond_1
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;

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
    .line 539
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;

    #@2
    if-nez v2, :cond_1

    #@4
    .line 540
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@7
    .line 543
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@9
    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsService;->getUtInterface(I)Lcom/android/ims/internal/IImsUt;

    #@c
    move-result-object v1

    #@d
    .line 545
    .local v1, "iUt":Lcom/android/ims/internal/IImsUt;
    if-nez v1, :cond_0

    #@f
    .line 546
    new-instance v2, Lcom/android/ims/ImsException;

    #@11
    const-string/jumbo v3, "getSupplementaryServiceConfiguration()"

    #@14
    .line 547
    const/16 v4, 0x321

    #@16
    .line 546
    invoke-direct {v2, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@19
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 551
    .end local v1    # "iUt":Lcom/android/ims/internal/IImsUt;
    :catch_0
    move-exception v0

    #@1b
    .line 552
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    #@1d
    const-string/jumbo v3, "getSupplementaryServiceConfiguration()"

    #@20
    .line 553
    const/16 v4, 0x6a

    #@22
    .line 552
    invoke-direct {v2, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@25
    throw v2

    #@26
    .line 550
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
    .line 557
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
    .line 579
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@3
    .line 582
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
    .line 583
    :catch_0
    move-exception v0

    #@b
    .line 584
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    #@d
    const-string/jumbo v2, "isServiceConnected()"

    #@10
    .line 585
    const/16 v3, 0x6a

    #@12
    .line 584
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
    .line 597
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@3
    .line 600
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
    .line 601
    :catch_0
    move-exception v0

    #@b
    .line 602
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    #@d
    const-string/jumbo v2, "isOpened()"

    #@10
    .line 603
    const/16 v3, 0x6a

    #@12
    .line 602
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
    .line 440
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 441
    return v2

    #@6
    .line 444
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
    .line 445
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    #@12
    .line 446
    return v2

    #@13
    .line 449
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
    .line 653
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
    .line 654
    const-string/jumbo v3, ", profile="

    #@13
    .line 653
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    .line 654
    const-string/jumbo v3, ", callees="

    #@1e
    .line 653
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
    .line 657
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@30
    .line 659
    new-instance v0, Lcom/android/ims/ImsCall;

    #@32
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    #@34
    invoke-direct {v0, v2, p2}, Lcom/android/ims/ImsCall;-><init>(Landroid/content/Context;Lcom/android/ims/ImsCallProfile;)V

    #@37
    .line 661
    .local v0, "call":Lcom/android/ims/ImsCall;
    invoke-virtual {v0, p4}, Lcom/android/ims/ImsCall;->setListener(Lcom/android/ims/ImsCall$Listener;)V

    #@3a
    .line 662
    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsManager;->createCallSession(ILcom/android/ims/ImsCallProfile;)Lcom/android/ims/internal/ImsCallSession;

    #@3d
    move-result-object v1

    #@3e
    .line 664
    .local v1, "session":Lcom/android/ims/internal/ImsCallSession;
    if-eqz p3, :cond_0

    #@40
    array-length v2, p3

    #@41
    const/4 v3, 0x1

    #@42
    if-ne v2, v3, :cond_0

    #@44
    .line 665
    const/4 v2, 0x0

    #@45
    aget-object v2, p3, v2

    #@47
    invoke-virtual {v0, v1, v2}, Lcom/android/ims/ImsCall;->start(Lcom/android/ims/internal/ImsCallSession;Ljava/lang/String;)V

    #@4a
    .line 670
    :goto_0
    return-object v0

    #@4b
    .line 667
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
    .line 477
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@3
    .line 479
    if-nez p2, :cond_0

    #@5
    .line 480
    new-instance v2, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v3, "incomingCallPendingIntent can\'t be null"

    #@a
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2

    #@e
    .line 483
    :cond_0
    if-nez p3, :cond_1

    #@10
    .line 484
    new-instance v2, Ljava/lang/NullPointerException;

    #@12
    const-string/jumbo v3, "listener can\'t be null"

    #@15
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@18
    throw v2

    #@19
    .line 487
    :cond_1
    const/4 v1, 0x0

    #@1a
    .line 490
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@1c
    iget v3, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    #@1e
    .line 491
    invoke-direct {p0, p1, p3}, Lcom/android/ims/ImsManager;->createRegistrationListenerProxy(ILcom/android/ims/ImsConnectionStateListener;)Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;

    #@21
    move-result-object v4

    #@22
    .line 490
    invoke-interface {v2, v3, p1, p2, v4}, Lcom/android/ims/internal/IImsService;->open(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    move-result v1

    #@26
    .line 497
    if-gtz v1, :cond_2

    #@28
    .line 501
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
    .line 492
    :catch_0
    move-exception v0

    #@34
    .line 493
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    #@36
    const-string/jumbo v3, "open()"

    #@39
    .line 494
    const/16 v4, 0x6a

    #@3b
    .line 493
    invoke-direct {v2, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@3e
    throw v2

    #@3f
    .line 504
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    return v1
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
    .line 759
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@4
    .line 762
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@6
    invoke-interface {v2, p2, p3, p4}, Lcom/android/ims/internal/IImsService;->setUiTTYMode(IILandroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 769
    const-string/jumbo v2, "carrier_volte_tty_supported_bool"

    #@c
    .line 768
    invoke-static {p1, v2}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_1

    #@12
    .line 770
    if-nez p3, :cond_0

    #@14
    .line 771
    invoke-static {p1}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    #@17
    move-result v1

    #@18
    .line 770
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->setAdvanced4GMode(Z)V

    #@1b
    .line 757
    :cond_1
    return-void

    #@1c
    .line 763
    :catch_0
    move-exception v0

    #@1d
    .line 764
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    #@1f
    const-string/jumbo v2, "setTTYMode()"

    #@22
    .line 765
    const/16 v3, 0x6a

    #@24
    .line 764
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
    .line 685
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
    .line 686
    const-string/jumbo v6, ", incomingCall="

    #@15
    .line 685
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
    .line 689
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    #@27
    .line 691
    if-nez p2, :cond_0

    #@29
    .line 692
    new-instance v5, Lcom/android/ims/ImsException;

    #@2b
    const-string/jumbo v6, "Can\'t retrieve session with null intent"

    #@2e
    invoke-direct {v5, v6, v7}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@31
    throw v5

    #@32
    .line 696
    :cond_0
    invoke-static {p2}, Lcom/android/ims/ImsManager;->getServiceId(Landroid/content/Intent;)I

    #@35
    move-result v2

    #@36
    .line 698
    .local v2, "incomingServiceId":I
    if-eq p1, v2, :cond_1

    #@38
    .line 699
    new-instance v5, Lcom/android/ims/ImsException;

    #@3a
    const-string/jumbo v6, "Service id is mismatched in the incoming call intent"

    #@3d
    invoke-direct {v5, v6, v7}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@40
    throw v5

    #@41
    .line 703
    :cond_1
    invoke-static {p2}, Lcom/android/ims/ImsManager;->getCallId(Landroid/content/Intent;)Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    .line 705
    .local v1, "callId":Ljava/lang/String;
    if-nez v1, :cond_2

    #@47
    .line 706
    new-instance v5, Lcom/android/ims/ImsException;

    #@49
    const-string/jumbo v6, "Call ID missing in the incoming call intent"

    #@4c
    invoke-direct {v5, v6, v7}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@4f
    throw v5

    #@50
    .line 711
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    #@52
    invoke-interface {v5, p1, v1}, Lcom/android/ims/internal/IImsService;->getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    #@55
    move-result-object v3

    #@56
    .line 713
    .local v3, "session":Lcom/android/ims/internal/IImsCallSession;
    if-nez v3, :cond_3

    #@58
    .line 714
    new-instance v5, Lcom/android/ims/ImsException;

    #@5a
    const-string/jumbo v6, "No pending session for the call"

    #@5d
    .line 715
    const/16 v7, 0x6b

    #@5f
    .line 714
    invoke-direct {v5, v6, v7}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@62
    throw v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@63
    .line 724
    .end local v3    # "session":Lcom/android/ims/internal/IImsCallSession;
    :catch_0
    move-exception v4

    #@64
    .line 725
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
    .line 718
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
    .line 720
    .local v0, "call":Lcom/android/ims/ImsCall;
    new-instance v5, Lcom/android/ims/internal/ImsCallSession;

    #@7b
    invoke-direct {v5, v3}, Lcom/android/ims/internal/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    #@7e
    invoke-virtual {v0, v5}, Lcom/android/ims/ImsCall;->attachSession(Lcom/android/ims/internal/ImsCallSession;)V

    #@81
    .line 721
    invoke-virtual {v0, p3}, Lcom/android/ims/ImsCall;->setListener(Lcom/android/ims/ImsCall$Listener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@84
    .line 723
    return-object v0
.end method
