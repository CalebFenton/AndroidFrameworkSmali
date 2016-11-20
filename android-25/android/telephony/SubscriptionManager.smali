.class public Landroid/telephony/SubscriptionManager;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    }
.end annotation


# static fields
.field public static final CARRIER_NAME:Ljava/lang/String; = "carrier_name"

.field public static final CB_ALERT_REMINDER_INTERVAL:Ljava/lang/String; = "alert_reminder_interval"

.field public static final CB_ALERT_SOUND_DURATION:Ljava/lang/String; = "alert_sound_duration"

.field public static final CB_ALERT_SPEECH:Ljava/lang/String; = "enable_alert_speech"

.field public static final CB_ALERT_VIBRATE:Ljava/lang/String; = "enable_alert_vibrate"

.field public static final CB_AMBER_ALERT:Ljava/lang/String; = "enable_cmas_amber_alerts"

.field public static final CB_CHANNEL_50_ALERT:Ljava/lang/String; = "enable_channel_50_alerts"

.field public static final CB_CMAS_TEST_ALERT:Ljava/lang/String; = "enable_cmas_test_alerts"

.field public static final CB_EMERGENCY_ALERT:Ljava/lang/String; = "enable_emergency_alerts"

.field public static final CB_ETWS_TEST_ALERT:Ljava/lang/String; = "enable_etws_test_alerts"

.field public static final CB_EXTREME_THREAT_ALERT:Ljava/lang/String; = "enable_cmas_extreme_threat_alerts"

.field public static final CB_OPT_OUT_DIALOG:Ljava/lang/String; = "show_cmas_opt_out_dialog"

.field public static final CB_SEVERE_THREAT_ALERT:Ljava/lang/String; = "enable_cmas_severe_threat_alerts"

.field public static final COLOR:Ljava/lang/String; = "color"

.field public static final COLOR_1:I = 0x0

.field public static final COLOR_2:I = 0x1

.field public static final COLOR_3:I = 0x2

.field public static final COLOR_4:I = 0x3

.field public static final COLOR_DEFAULT:I = 0x0

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"

.field public static final DATA_ROAMING_DEFAULT:I = 0x0

.field public static final DATA_ROAMING_DISABLE:I = 0x0

.field public static final DATA_ROAMING_ENABLE:I = 0x1

.field private static final DBG:Z = false

.field public static final DEFAULT_NAME_RES:I = 0x104000e

.field public static final DEFAULT_PHONE_INDEX:I = 0x7fffffff

.field public static final DEFAULT_SIM_SLOT_INDEX:I = 0x7fffffff

.field public static final DEFAULT_SUBSCRIPTION_ID:I = 0x7fffffff

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final DISPLAY_NUMBER_DEFAULT:I = 0x1

.field public static final DISPLAY_NUMBER_FIRST:I = 0x1

.field public static final DISPLAY_NUMBER_FORMAT:Ljava/lang/String; = "display_number_format"

.field public static final DISPLAY_NUMBER_LAST:I = 0x2

.field public static final DISPLAY_NUMBER_NONE:I = 0x0

.field public static final DUMMY_SUBSCRIPTION_ID_BASE:I = -0x2

.field public static final ICC_ID:Ljava/lang/String; = "icc_id"

.field public static final INVALID_PHONE_INDEX:I = -0x1

.field public static final INVALID_SIM_SLOT_INDEX:I = -0x1

.field public static final INVALID_SUBSCRIPTION_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SubscriptionManager"

.field public static final MAX_SUBSCRIPTION_ID_VALUE:I = 0x7ffffffe

.field public static final MCC:Ljava/lang/String; = "mcc"

.field public static final MIN_SUBSCRIPTION_ID_VALUE:I = 0x0

.field public static final MNC:Ljava/lang/String; = "mnc"

.field public static final NAME_SOURCE:Ljava/lang/String; = "name_source"

.field public static final NAME_SOURCE_DEFAULT_SOURCE:I = 0x0

.field public static final NAME_SOURCE_SIM_SOURCE:I = 0x1

.field public static final NAME_SOURCE_UNDEFINDED:I = -0x1

.field public static final NAME_SOURCE_USER_INPUT:I = 0x2

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final SIM_NOT_INSERTED:I = -0x1

.field public static final SIM_PROVISIONED:I = 0x0

.field public static final SIM_PROVISIONING_STATUS:Ljava/lang/String; = "sim_provisioning_status"

.field public static final SIM_SLOT_INDEX:Ljava/lang/String; = "sim_id"

.field public static final SUB_DEFAULT_CHANGED_ACTION:Ljava/lang/String; = "android.intent.action.SUB_DEFAULT_CHANGED"

.field public static final UNIQUE_KEY_SUBSCRIPTION_ID:Ljava/lang/String; = "_id"

.field private static final VDBG:Z


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 95
    const-string/jumbo v0, "content://telephony/siminfo"

    #@3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    #@9
    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 397
    iput-object p1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    #@5
    .line 395
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 410
    const-string/jumbo v0, "telephony_subscription_service"

    #@3
    .line 409
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/telephony/SubscriptionManager;

    #@9
    return-object v0
.end method

.method public static getBooleanSubscriptionProperty(ILjava/lang/String;ZLandroid/content/Context;)Z
    .locals 4
    .param p0, "subId"    # I
    .param p1, "propKey"    # Ljava/lang/String;
    .param p2, "defValue"    # Z
    .param p3, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1311
    invoke-static {p0, p1, p3}, Landroid/telephony/SubscriptionManager;->getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 1312
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@7
    .line 1314
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result v3

    #@b
    if-ne v3, v2, :cond_0

    #@d
    :goto_0
    return v2

    #@e
    :cond_0
    const/4 v2, 0x0

    #@f
    goto :goto_0

    #@10
    .line 1315
    :catch_0
    move-exception v0

    #@11
    .line 1316
    .local v0, "err":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "getBooleanSubscriptionProperty NumberFormat exception"

    #@14
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    #@17
    .line 1319
    .end local v0    # "err":Ljava/lang/NumberFormatException;
    :cond_1
    return p2
.end method

.method public static getDefaultDataSubscriptionId()I
    .locals 4

    #@0
    .prologue
    .line 1049
    const/4 v2, -0x1

    #@1
    .line 1052
    .local v2, "subId":I
    :try_start_0
    const-string/jumbo v3, "isub"

    #@4
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v3

    #@8
    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    #@b
    move-result-object v1

    #@c
    .line 1053
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@e
    .line 1054
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getDefaultDataSubId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result v2

    #@12
    .line 1061
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v2

    #@13
    .line 1056
    :catch_0
    move-exception v0

    #@14
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static getDefaultSmsSubscriptionId()I
    .locals 4

    #@0
    .prologue
    .line 996
    const/4 v2, -0x1

    #@1
    .line 999
    .local v2, "subId":I
    :try_start_0
    const-string/jumbo v3, "isub"

    #@4
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v3

    #@8
    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    #@b
    move-result-object v1

    #@c
    .line 1000
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@e
    .line 1001
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getDefaultSmsSubId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result v2

    #@12
    .line 1008
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v2

    #@13
    .line 1003
    :catch_0
    move-exception v0

    #@14
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static getDefaultSubscriptionId()I
    .locals 4

    #@0
    .prologue
    .line 920
    const/4 v2, -0x1

    #@1
    .line 923
    .local v2, "subId":I
    :try_start_0
    const-string/jumbo v3, "isub"

    #@4
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v3

    #@8
    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    #@b
    move-result-object v1

    #@c
    .line 924
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@e
    .line 925
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getDefaultSubId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result v2

    #@12
    .line 932
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v2

    #@13
    .line 927
    :catch_0
    move-exception v0

    #@14
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static getDefaultVoicePhoneId()I
    .locals 1

    #@0
    .prologue
    .line 985
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static getDefaultVoiceSubscriptionId()I
    .locals 4

    #@0
    .prologue
    .line 943
    const/4 v2, -0x1

    #@1
    .line 946
    .local v2, "subId":I
    :try_start_0
    const-string/jumbo v3, "isub"

    #@4
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v3

    #@8
    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    #@b
    move-result-object v1

    #@c
    .line 947
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@e
    .line 948
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getDefaultVoiceSubId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result v2

    #@12
    .line 955
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v2

    #@13
    .line 950
    :catch_0
    move-exception v0

    #@14
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I
    .locals 3
    .param p0, "subId"    # I
    .param p1, "propKey"    # Ljava/lang/String;
    .param p2, "defValue"    # I
    .param p3, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1332
    invoke-static {p0, p1, p3}, Landroid/telephony/SubscriptionManager;->getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 1333
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@6
    .line 1335
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v2

    #@a
    return v2

    #@b
    .line 1336
    :catch_0
    move-exception v0

    #@c
    .line 1337
    .local v0, "err":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "getBooleanSubscriptionProperty NumberFormat exception"

    #@f
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    #@12
    .line 1340
    .end local v0    # "err":Ljava/lang/NumberFormatException;
    :cond_0
    return p2
.end method

.method public static getPhoneId(I)I
    .locals 4
    .param p0, "subId"    # I

    #@0
    .prologue
    .line 883
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 887
    const/4 v3, -0x1

    #@7
    return v3

    #@8
    .line 890
    :cond_0
    const/4 v2, -0x1

    #@9
    .line 893
    .local v2, "result":I
    :try_start_0
    const-string/jumbo v3, "isub"

    #@c
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@f
    move-result-object v3

    #@10
    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    #@13
    move-result-object v1

    #@14
    .line 894
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1

    #@16
    .line 895
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ISub;->getPhoneId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result v2

    #@1a
    .line 902
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1
    :goto_0
    return v2

    #@1b
    .line 897
    :catch_0
    move-exception v0

    #@1c
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 1352
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    #@3
    move-result-object v5

    #@4
    invoke-virtual {v5, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    #@7
    move-result-object v4

    #@8
    .line 1354
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@b
    move-result-object v5

    #@c
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@f
    move-result-object v0

    #@10
    .line 1355
    .local v0, "config":Landroid/content/res/Configuration;
    new-instance v2, Landroid/content/res/Configuration;

    #@12
    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    #@15
    .line 1356
    .local v2, "newConfig":Landroid/content/res/Configuration;
    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    #@18
    .line 1357
    if-eqz v4, :cond_0

    #@1a
    .line 1358
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    #@1d
    move-result v5

    #@1e
    iput v5, v2, Landroid/content/res/Configuration;->mcc:I

    #@20
    .line 1359
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    #@23
    move-result v5

    #@24
    iput v5, v2, Landroid/content/res/Configuration;->mnc:I

    #@26
    .line 1360
    iget v5, v2, Landroid/content/res/Configuration;->mnc:I

    #@28
    if-nez v5, :cond_0

    #@2a
    const v5, 0xffff

    #@2d
    iput v5, v2, Landroid/content/res/Configuration;->mnc:I

    #@2f
    .line 1362
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@36
    move-result-object v1

    #@37
    .line 1363
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    new-instance v3, Landroid/util/DisplayMetrics;

    #@39
    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    #@3c
    .line 1364
    .local v3, "newMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v3, v1}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    #@3f
    .line 1365
    new-instance v5, Landroid/content/res/Resources;

    #@41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@44
    move-result-object v6

    #@45
    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    #@48
    move-result-object v6

    #@49
    invoke-direct {v5, v6, v3, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    #@4c
    return-object v5
.end method

.method public static getSimStateForSlotIdx(I)I
    .locals 4
    .param p0, "slotIdx"    # I

    #@0
    .prologue
    .line 1248
    const/4 v2, 0x0

    #@1
    .line 1251
    .local v2, "simState":I
    :try_start_0
    const-string/jumbo v3, "isub"

    #@4
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v3

    #@8
    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    #@b
    move-result-object v1

    #@c
    .line 1252
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@e
    .line 1253
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ISub;->getSimStateForSlotIdx(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result v2

    #@12
    .line 1258
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v2

    #@13
    .line 1255
    :catch_0
    move-exception v0

    #@14
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static getSlotId(I)I
    .locals 4
    .param p0, "subId"    # I

    #@0
    .prologue
    .line 839
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 845
    :cond_0
    const/4 v2, -0x1

    #@7
    .line 848
    .local v2, "result":I
    :try_start_0
    const-string/jumbo v3, "isub"

    #@a
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@d
    move-result-object v3

    #@e
    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    #@11
    move-result-object v1

    #@12
    .line 849
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1

    #@14
    .line 850
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ISub;->getSlotId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result v2

    #@18
    .line 856
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1
    :goto_0
    return v2

    #@19
    .line 852
    :catch_0
    move-exception v0

    #@1a
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static getSubId(I)[I
    .locals 5
    .param p0, "slotId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 862
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    #@4
    move-result v3

    #@5
    if-nez v3, :cond_0

    #@7
    .line 863
    const-string/jumbo v3, "[getSubId]- fail"

    #@a
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    #@d
    .line 864
    return-object v4

    #@e
    .line 867
    :cond_0
    const/4 v2, 0x0

    #@f
    .line 870
    .local v2, "subId":[I
    :try_start_0
    const-string/jumbo v3, "isub"

    #@12
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@15
    move-result-object v3

    #@16
    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    #@19
    move-result-object v1

    #@1a
    .line 871
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1

    #@1c
    .line 872
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ISub;->getSubId(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    move-result-object v2

    #@20
    .line 878
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    .end local v2    # "subId":[I
    :cond_1
    :goto_0
    return-object v2

    #@21
    .line 874
    .restart local v2    # "subId":[I
    :catch_0
    move-exception v0

    #@22
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private static getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "subId"    # I
    .param p1, "propKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1288
    const/4 v2, 0x0

    #@1
    .line 1290
    .local v2, "resultValue":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, "isub"

    #@4
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v3

    #@8
    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    #@b
    move-result-object v1

    #@c
    .line 1291
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@e
    .line 1293
    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    .line 1292
    invoke-interface {v1, p0, p1, v3}, Lcom/android/internal/telephony/ISub;->getSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result-object v2

    #@16
    .line 1298
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    .end local v2    # "resultValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    #@17
    .line 1295
    .restart local v2    # "resultValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@18
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static isUsableSubIdValue(I)Z
    .locals 2
    .param p0, "subId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1154
    if-ltz p0, :cond_0

    #@3
    const v1, 0x7ffffffe

    #@6
    if-gt p0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :cond_0
    return v0
.end method

.method public static isValidPhoneId(I)Z
    .locals 2
    .param p0, "phoneId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1164
    if-ltz p0, :cond_0

    #@3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    #@a
    move-result v1

    #@b
    if-ge p0, v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public static isValidSlotId(I)Z
    .locals 2
    .param p0, "slotId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1159
    if-ltz p0, :cond_0

    #@3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    #@a
    move-result v1

    #@b
    if-ge p0, v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public static isValidSubscriptionId(I)Z
    .locals 1
    .param p0, "subId"    # I

    #@0
    .prologue
    .line 1145
    const/4 v0, -0x1

    #@1
    if-le p0, v0, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    :goto_0
    return v0

    #@5
    :cond_0
    const/4 v0, 0x0

    #@6
    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 907
    const-string/jumbo v0, "SubscriptionManager"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 906
    return-void
.end method

.method public static putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1169
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    #@4
    move-result-object v0

    #@5
    .line 1170
    .local v0, "subIds":[I
    if-eqz v0, :cond_0

    #@7
    array-length v1, v0

    #@8
    if-lez v1, :cond_0

    #@a
    .line 1171
    aget v1, v0, v2

    #@c
    invoke-static {p0, p1, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V

    #@f
    .line 1168
    :goto_0
    return-void

    #@10
    .line 1173
    :cond_0
    const-string/jumbo v1, "putPhoneIdAndSubIdExtra: no valid subs"

    #@13
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    #@16
    goto :goto_0
.end method

.method public static putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I

    #@0
    .prologue
    .line 1180
    const-string/jumbo v0, "subscription"

    #@3
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@6
    .line 1181
    const-string/jumbo v0, "phone"

    #@9
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@c
    .line 1184
    const-string/jumbo v0, "slot"

    #@f
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@12
    .line 1178
    return-void
.end method

.method public static setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "subId"    # I
    .param p1, "propKey"    # Ljava/lang/String;
    .param p2, "propValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1270
    :try_start_0
    const-string/jumbo v2, "isub"

    #@3
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v2

    #@7
    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    #@a
    move-result-object v1

    #@b
    .line 1271
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@d
    .line 1272
    invoke-interface {v1, p0, p1, p2}, Lcom/android/internal/telephony/ISub;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 1268
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    #@11
    .line 1274
    :catch_0
    move-exception v0

    #@12
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method public addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    #@0
    .prologue
    .line 422
    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    #@2
    if-eqz v3, :cond_1

    #@4
    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 431
    .local v1, "pkgForDebug":Ljava/lang/String;
    :goto_0
    :try_start_0
    const-string/jumbo v3, "telephony.registry"

    #@d
    .line 430
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@10
    move-result-object v3

    #@11
    invoke-static {v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    #@14
    move-result-object v2

    #@15
    .line 432
    .local v2, "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    if-eqz v2, :cond_0

    #@17
    .line 433
    iget-object v3, p1, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->callback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    #@19
    invoke-interface {v2, v1, v3}, Lcom/android/internal/telephony/ITelephonyRegistry;->addOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 421
    .end local v2    # "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    :cond_0
    :goto_1
    return-void

    #@1d
    .line 422
    .end local v1    # "pkgForDebug":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "<unknown>"

    #@20
    .restart local v1    # "pkgForDebug":Ljava/lang/String;
    goto :goto_0

    #@21
    .line 435
    :catch_0
    move-exception v0

    #@22
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public addSubscriptionInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 4
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 680
    if-nez p1, :cond_0

    #@3
    .line 681
    const-string/jumbo v2, "[addSubscriptionInfoRecord]- null iccId"

    #@6
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    #@9
    .line 683
    :cond_0
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_1

    #@f
    .line 684
    const-string/jumbo v2, "[addSubscriptionInfoRecord]- invalid slotId"

    #@12
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    #@15
    .line 688
    :cond_1
    :try_start_0
    const-string/jumbo v2, "isub"

    #@18
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@1b
    move-result-object v2

    #@1c
    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    #@1f
    move-result-object v1

    #@20
    .line 689
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_2

    #@22
    .line 691
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISub;->addSubInfoRecord(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 698
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_2
    :goto_0
    return-object v3

    #@26
    .line 693
    :catch_0
    move-exception v0

    #@27
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public allDefaultsSelected()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1111
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    #@4
    move-result v0

    #@5
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 1112
    return v1

    #@c
    .line 1114
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    #@f
    move-result v0

    #@10
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_1

    #@16
    .line 1115
    return v1

    #@17
    .line 1117
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    #@1a
    move-result v0

    #@1b
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@1e
    move-result v0

    #@1f
    if-nez v0, :cond_2

    #@21
    .line 1118
    return v1

    #@22
    .line 1120
    :cond_2
    const/4 v0, 0x1

    #@23
    return v0
.end method

.method public clearDefaultsForInactiveSubIds()V
    .locals 3

    #@0
    .prologue
    .line 1131
    :try_start_0
    const-string/jumbo v2, "isub"

    #@3
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v2

    #@7
    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    #@a
    move-result-object v1

    #@b
    .line 1132
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@d
    .line 1133
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->clearDefaultsForInactiveSubIds()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 1128
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    #@11
    .line 1135
    :catch_0
    move-exception v0

    #@12
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public clearSubscriptionInfo()V
    .locals 3

    #@0
    .prologue
    .line 1097
    :try_start_0
    const-string/jumbo v2, "isub"

    #@3
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v2

    #@7
    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    #@a
    move-result-object v1

    #@b
    .line 1098
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@d
    .line 1099
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->clearSubInfo()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 1105
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    #@11
    .line 1101
    :catch_0
    move-exception v0

    #@12
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getActiveSubscriptionIdList()[I
    .locals 4

    #@0
    .prologue
    .line 1193
    const/4 v2, 0x0

    #@1
    .line 1196
    .local v2, "subId":[I
    :try_start_0
    const-string/jumbo v3, "isub"

    #@4
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v3

    #@8
    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    #@b
    move-result-object v1

    #@c
    .line 1197
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@e
    .line 1198
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getActiveSubIdList()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v2

    #@12
    .line 1204
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    .end local v2    # "subId":[I
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    #@14
    .line 1205
    const/4 v3, 0x0

    #@15
    new-array v2, v3, [I

    #@17
    .line 1208
    :cond_1
    return-object v2

    #@18
    .line 1200
    .restart local v2    # "subId":[I
    :catch_0
    move-exception v0

    #@19
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 5
    .param p1, "subId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 474
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@4
    move-result v3

    #@5
    if-nez v3, :cond_0

    #@7
    .line 478
    return-object v4

    #@8
    .line 481
    :cond_0
    const/4 v2, 0x0

    #@9
    .line 484
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    :try_start_0
    const-string/jumbo v3, "isub"

    #@c
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@f
    move-result-object v3

    #@10
    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    #@13
    move-result-object v1

    #@14
    .line 485
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1

    #@16
    .line 486
    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    #@18
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-interface {v1, p1, v3}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfo(ILjava/lang/String;)Landroid/telephony/SubscriptionInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    move-result-object v2

    #@20
    .line 492
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_1
    :goto_0
    return-object v2

    #@21
    .line 488
    .restart local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :catch_0
    move-exception v0

    #@22
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getActiveSubscriptionInfoCount()I
    .locals 4

    #@0
    .prologue
    .line 637
    const/4 v2, 0x0

    #@1
    .line 640
    .local v2, "result":I
    :try_start_0
    const-string/jumbo v3, "isub"

    #@4
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v3

    #@8
    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    #@b
    move-result-object v1

    #@c
    .line 641
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@e
    .line 642
    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    #@10
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ISub;->getActiveSubInfoCount(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result v2

    #@18
    .line 648
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v2

    #@19
    .line 644
    :catch_0
    move-exception v0

    #@1a
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getActiveSubscriptionInfoCountMax()I
    .locals 4

    #@0
    .prologue
    .line 657
    const/4 v2, 0x0

    #@1
    .line 660
    .local v2, "result":I
    :try_start_0
    const-string/jumbo v3, "isub"

    #@4
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v3

    #@8
    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    #@b
    move-result-object v1

    #@c
    .line 661
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@e
    .line 662
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getActiveSubInfoCountMax()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result v2

    #@12
    .line 668
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v2

    #@13
    .line 664
    :catch_0
    move-exception v0

    #@14
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getActiveSubscriptionInfoForIccIndex(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .locals 5
    .param p1, "iccId"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 504
    if-nez p1, :cond_0

    #@3
    .line 505
    const-string/jumbo v3, "[getActiveSubscriptionInfoForIccIndex]- null iccid"

    #@6
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    #@9
    .line 506
    return-object v4

    #@a
    .line 509
    :cond_0
    const/4 v2, 0x0

    #@b
    .line 512
    .local v2, "result":Landroid/telephony/SubscriptionInfo;
    :try_start_0
    const-string/jumbo v3, "isub"

    #@e
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@11
    move-result-object v3

    #@12
    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    #@15
    move-result-object v1

    #@16
    .line 513
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1

    #@18
    .line 514
    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    #@1a
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-interface {v1, p1, v3}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoForIccId(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    move-result-object v2

    #@22
    .line 520
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    .end local v2    # "result":Landroid/telephony/SubscriptionInfo;
    :cond_1
    :goto_0
    return-object v2

    #@23
    .line 516
    .restart local v2    # "result":Landroid/telephony/SubscriptionInfo;
    :catch_0
    move-exception v0

    #@24
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;
    .locals 5
    .param p1, "slotIdx"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 530
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    #@4
    move-result v3

    #@5
    if-nez v3, :cond_0

    #@7
    .line 531
    const-string/jumbo v3, "[getActiveSubscriptionInfoForSimSlotIndex]- invalid slotIdx"

    #@a
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    #@d
    .line 532
    return-object v4

    #@e
    .line 535
    :cond_0
    const/4 v2, 0x0

    #@f
    .line 538
    .local v2, "result":Landroid/telephony/SubscriptionInfo;
    :try_start_0
    const-string/jumbo v3, "isub"

    #@12
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@15
    move-result-object v3

    #@16
    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    #@19
    move-result-object v1

    #@1a
    .line 539
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1

    #@1c
    .line 541
    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    #@1e
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    .line 540
    invoke-interface {v1, p1, v3}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoForSimSlotIndex(ILjava/lang/String;)Landroid/telephony/SubscriptionInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    move-result-object v2

    #@26
    .line 547
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    .end local v2    # "result":Landroid/telephony/SubscriptionInfo;
    :cond_1
    :goto_0
    return-object v2

    #@27
    .line 543
    .restart local v2    # "result":Landroid/telephony/SubscriptionInfo;
    :catch_0
    move-exception v0

    #@28
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getActiveSubscriptionInfoList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 596
    const/4 v2, 0x0

    #@1
    .line 599
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_0
    const-string/jumbo v3, "isub"

    #@4
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v3

    #@8
    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    #@b
    move-result-object v1

    #@c
    .line 600
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@e
    .line 601
    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    #@10
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result-object v2

    #@18
    .line 606
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_0
    :goto_0
    return-object v2

    #@19
    .line 603
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catch_0
    move-exception v0

    #@1a
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getAllSubscriptionInfoCount()I
    .locals 4

    #@0
    .prologue
    .line 617
    const/4 v2, 0x0

    #@1
    .line 620
    .local v2, "result":I
    :try_start_0
    const-string/jumbo v3, "isub"

    #@4
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v3

    #@8
    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    #@b
    move-result-object v1

    #@c
    .line 621
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@e
    .line 622
    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    #@10
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ISub;->getAllSubInfoCount(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result v2

    #@18
    .line 628
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v2

    #@19
    .line 624
    :catch_0
    move-exception v0

    #@1a
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getAllSubscriptionInfoList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 558
    const/4 v2, 0x0

    #@1
    .line 561
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_0
    const-string/jumbo v3, "isub"

    #@4
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v3

    #@8
    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    #@b
    move-result-object v1

    #@c
    .line 562
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@e
    .line 563
    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    #@10
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ISub;->getAllSubInfoList(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result-object v2

    #@18
    .line 569
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    #@1a
    .line 570
    new-instance v2, Ljava/util/ArrayList;

    #@1c
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@1f
    .line 572
    :cond_1
    return-object v2

    #@20
    .line 565
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catch_0
    move-exception v0

    #@21
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getDefaultDataPhoneId()I
    .locals 1

    #@0
    .prologue
    .line 1091
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .locals 1

    #@0
    .prologue
    .line 1086
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getDefaultSmsPhoneId()I
    .locals 1

    #@0
    .prologue
    .line 1038
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getDefaultSmsSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .locals 1

    #@0
    .prologue
    .line 1033
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getDefaultVoiceSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .locals 1

    #@0
    .prologue
    .line 980
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public isActiveSubId(I)Z
    .locals 3
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 1375
    :try_start_0
    const-string/jumbo v2, "isub"

    #@3
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v2

    #@7
    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    #@a
    move-result-object v1

    #@b
    .line 1376
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@d
    .line 1377
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ISub;->isActiveSubId(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result v2

    #@11
    return v2

    #@12
    .line 1379
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v0

    #@13
    .line 1381
    :cond_0
    const/4 v2, 0x0

    #@14
    return v2
.end method

.method public isNetworkRoaming(I)Z
    .locals 2
    .param p1, "subId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1222
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    #@4
    move-result v0

    #@5
    .line 1223
    .local v0, "phoneId":I
    if-gez v0, :cond_0

    #@7
    .line 1225
    return v1

    #@8
    .line 1227
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    #@f
    move-result v1

    #@10
    return v1
.end method

.method public removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    #@0
    .prologue
    .line 448
    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    #@2
    if-eqz v3, :cond_1

    #@4
    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 457
    .local v1, "pkgForDebug":Ljava/lang/String;
    :goto_0
    :try_start_0
    const-string/jumbo v3, "telephony.registry"

    #@d
    .line 456
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@10
    move-result-object v3

    #@11
    invoke-static {v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    #@14
    move-result-object v2

    #@15
    .line 458
    .local v2, "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    if-eqz v2, :cond_0

    #@17
    .line 459
    iget-object v3, p1, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->callback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    #@19
    invoke-interface {v2, v1, v3}, Lcom/android/internal/telephony/ITelephonyRegistry;->removeOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 447
    .end local v2    # "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    :cond_0
    :goto_1
    return-void

    #@1d
    .line 448
    .end local v1    # "pkgForDebug":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "<unknown>"

    #@20
    .restart local v1    # "pkgForDebug":Ljava/lang/String;
    goto :goto_0

    #@21
    .line 461
    :catch_0
    move-exception v0

    #@22
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public setDataRoaming(II)I
    .locals 4
    .param p1, "roaming"    # I
    .param p2, "subId"    # I

    #@0
    .prologue
    .line 813
    if-ltz p1, :cond_1

    #@2
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_1

    #@8
    .line 818
    const/4 v2, 0x0

    #@9
    .line 821
    .local v2, "result":I
    :try_start_0
    const-string/jumbo v3, "isub"

    #@c
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@f
    move-result-object v3

    #@10
    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    #@13
    move-result-object v1

    #@14
    .line 822
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@16
    .line 823
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISub;->setDataRoaming(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result v2

    #@1a
    .line 829
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v2

    #@1b
    .line 814
    .end local v2    # "result":I
    :cond_1
    const-string/jumbo v3, "[setDataRoaming]- fail"

    #@1e
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    #@21
    .line 815
    const/4 v3, -0x1

    #@22
    return v3

    #@23
    .line 825
    .restart local v2    # "result":I
    :catch_0
    move-exception v0

    #@24
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setDefaultDataSubId(I)V
    .locals 3
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 1068
    :try_start_0
    const-string/jumbo v2, "isub"

    #@3
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v2

    #@7
    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    #@a
    move-result-object v1

    #@b
    .line 1069
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@d
    .line 1070
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ISub;->setDefaultDataSubId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 1065
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    #@11
    .line 1072
    :catch_0
    move-exception v0

    #@12
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setDefaultSmsSubId(I)V
    .locals 3
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 1015
    :try_start_0
    const-string/jumbo v2, "isub"

    #@3
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v2

    #@7
    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    #@a
    move-result-object v1

    #@b
    .line 1016
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@d
    .line 1017
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ISub;->setDefaultSmsSubId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 1012
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    #@11
    .line 1019
    :catch_0
    move-exception v0

    #@12
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setDefaultVoiceSubId(I)V
    .locals 3
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 962
    :try_start_0
    const-string/jumbo v2, "isub"

    #@3
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v2

    #@7
    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    #@a
    move-result-object v1

    #@b
    .line 963
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@d
    .line 964
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ISub;->setDefaultVoiceSubId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 959
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    #@11
    .line 966
    :catch_0
    move-exception v0

    #@12
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setDisplayName(Ljava/lang/String;I)I
    .locals 2
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "subId"    # I

    #@0
    .prologue
    .line 739
    const-wide/16 v0, -0x1

    #@2
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;IJ)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setDisplayName(Ljava/lang/String;IJ)I
    .locals 5
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "nameSource"    # J

    #@0
    .prologue
    .line 756
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 757
    const-string/jumbo v3, "[setDisplayName]- fail"

    #@9
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    #@c
    .line 758
    const/4 v3, -0x1

    #@d
    return v3

    #@e
    .line 761
    :cond_0
    const/4 v2, 0x0

    #@f
    .line 764
    .local v2, "result":I
    :try_start_0
    const-string/jumbo v3, "isub"

    #@12
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@15
    move-result-object v3

    #@16
    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    #@19
    move-result-object v1

    #@1a
    .line 765
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1

    #@1c
    .line 766
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/ISub;->setDisplayNameUsingSrc(Ljava/lang/String;IJ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    move-result v2

    #@20
    .line 772
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1
    :goto_0
    return v2

    #@21
    .line 768
    :catch_0
    move-exception v0

    #@22
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setDisplayNumber(Ljava/lang/String;I)I
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "subId"    # I

    #@0
    .prologue
    .line 784
    if-eqz p1, :cond_1

    #@2
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_1

    #@8
    .line 789
    const/4 v2, 0x0

    #@9
    .line 792
    .local v2, "result":I
    :try_start_0
    const-string/jumbo v3, "isub"

    #@c
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@f
    move-result-object v3

    #@10
    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    #@13
    move-result-object v1

    #@14
    .line 793
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@16
    .line 794
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISub;->setDisplayNumber(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result v2

    #@1a
    .line 800
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v2

    #@1b
    .line 785
    .end local v2    # "result":I
    :cond_1
    const-string/jumbo v3, "[setDisplayNumber]- fail"

    #@1e
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    #@21
    .line 786
    const/4 v3, -0x1

    #@22
    return v3

    #@23
    .line 796
    .restart local v2    # "result":I
    :catch_0
    move-exception v0

    #@24
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setIconTint(II)I
    .locals 4
    .param p1, "tint"    # I
    .param p2, "subId"    # I

    #@0
    .prologue
    .line 711
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 712
    const-string/jumbo v3, "[setIconTint]- fail"

    #@9
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    #@c
    .line 713
    const/4 v3, -0x1

    #@d
    return v3

    #@e
    .line 716
    :cond_0
    const/4 v2, 0x0

    #@f
    .line 719
    .local v2, "result":I
    :try_start_0
    const-string/jumbo v3, "isub"

    #@12
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@15
    move-result-object v3

    #@16
    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    #@19
    move-result-object v1

    #@1a
    .line 720
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1

    #@1c
    .line 721
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISub;->setIconTint(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    move-result v2

    #@20
    .line 727
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1
    :goto_0
    return v2

    #@21
    .line 723
    :catch_0
    move-exception v0

    #@22
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method
