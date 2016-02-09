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
    .line 96
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
    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 388
    iput-object p1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    #@5
    .line 386
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 401
    const-string/jumbo v0, "telephony_subscription_service"

    #@3
    .line 400
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
    .line 1264
    invoke-static {p0, p1, p3}, Landroid/telephony/SubscriptionManager;->getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 1265
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@7
    .line 1267
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
    .line 1268
    :catch_0
    move-exception v0

    #@11
    .line 1269
    .local v0, "err":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "getBooleanSubscriptionProperty NumberFormat exception"

    #@14
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    #@17
    .line 1272
    .end local v0    # "err":Ljava/lang/NumberFormatException;
    :cond_1
    return p2
.end method

.method public static getDefaultDataSubId()I
    .locals 4

    #@0
    .prologue
    .line 1009
    const/4 v2, -0x1

    #@1
    .line 1012
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
    .line 1013
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@e
    .line 1014
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getDefaultDataSubId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result v2

    #@12
    .line 1021
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v2

    #@13
    .line 1016
    :catch_0
    move-exception v0

    #@14
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static getDefaultSmsSubId()I
    .locals 4

    #@0
    .prologue
    .line 969
    const/4 v2, -0x1

    #@1
    .line 972
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
    .line 973
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@e
    .line 974
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getDefaultSmsSubId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result v2

    #@12
    .line 981
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v2

    #@13
    .line 976
    :catch_0
    move-exception v0

    #@14
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static getDefaultSubId()I
    .locals 4

    #@0
    .prologue
    .line 907
    const/4 v2, -0x1

    #@1
    .line 910
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
    .line 911
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@e
    .line 912
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getDefaultSubId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result v2

    #@12
    .line 919
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v2

    #@13
    .line 914
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
    .line 959
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static getDefaultVoiceSubId()I
    .locals 4

    #@0
    .prologue
    .line 924
    const/4 v2, -0x1

    #@1
    .line 927
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
    .line 928
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@e
    .line 929
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getDefaultVoiceSubId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result v2

    #@12
    .line 936
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v2

    #@13
    .line 931
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
    .line 1285
    invoke-static {p0, p1, p3}, Landroid/telephony/SubscriptionManager;->getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 1286
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@6
    .line 1288
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v2

    #@a
    return v2

    #@b
    .line 1289
    :catch_0
    move-exception v0

    #@c
    .line 1290
    .local v0, "err":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "getBooleanSubscriptionProperty NumberFormat exception"

    #@f
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    #@12
    .line 1293
    .end local v0    # "err":Ljava/lang/NumberFormatException;
    :cond_0
    return p2
.end method

.method public static getPhoneId(I)I
    .locals 4
    .param p0, "subId"    # I

    #@0
    .prologue
    .line 873
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 877
    const/4 v3, -0x1

    #@7
    return v3

    #@8
    .line 880
    :cond_0
    const/4 v2, -0x1

    #@9
    .line 883
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
    .line 884
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1

    #@16
    .line 885
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ISub;->getPhoneId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result v2

    #@1a
    .line 892
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1
    :goto_0
    return v2

    #@1b
    .line 887
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
    .line 1305
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    #@3
    move-result-object v5

    #@4
    invoke-virtual {v5, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    #@7
    move-result-object v4

    #@8
    .line 1307
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@b
    move-result-object v5

    #@c
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@f
    move-result-object v0

    #@10
    .line 1308
    .local v0, "config":Landroid/content/res/Configuration;
    new-instance v2, Landroid/content/res/Configuration;

    #@12
    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    #@15
    .line 1309
    .local v2, "newConfig":Landroid/content/res/Configuration;
    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    #@18
    .line 1310
    if-eqz v4, :cond_0

    #@1a
    .line 1311
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    #@1d
    move-result v5

    #@1e
    iput v5, v2, Landroid/content/res/Configuration;->mcc:I

    #@20
    .line 1312
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    #@23
    move-result v5

    #@24
    iput v5, v2, Landroid/content/res/Configuration;->mnc:I

    #@26
    .line 1314
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@2d
    move-result-object v1

    #@2e
    .line 1315
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    new-instance v3, Landroid/util/DisplayMetrics;

    #@30
    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    #@33
    .line 1316
    .local v3, "newMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v3, v1}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    #@36
    .line 1317
    new-instance v5, Landroid/content/res/Resources;

    #@38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3b
    move-result-object v6

    #@3c
    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    #@3f
    move-result-object v6

    #@40
    invoke-direct {v5, v6, v3, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    #@43
    return-object v5
.end method

.method public static getSimStateForSlotIdx(I)I
    .locals 5
    .param p0, "slotIdx"    # I

    #@0
    .prologue
    .line 1201
    const/4 v2, 0x0

    #@1
    .line 1204
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
    .line 1205
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@e
    .line 1206
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ISub;->getSimStateForSlotIdx(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result v2

    #@12
    .line 1210
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v4, "getSimStateForSubscriber: simState="

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    const-string/jumbo v4, " slotIdx="

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    #@34
    .line 1211
    return v2

    #@35
    .line 1208
    :catch_0
    move-exception v0

    #@36
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static getSlotId(I)I
    .locals 4
    .param p0, "subId"    # I

    #@0
    .prologue
    .line 829
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 835
    :cond_0
    const/4 v2, -0x1

    #@7
    .line 838
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
    .line 839
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1

    #@14
    .line 840
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ISub;->getSlotId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result v2

    #@18
    .line 846
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1
    :goto_0
    return v2

    #@19
    .line 842
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
    .line 852
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    #@4
    move-result v3

    #@5
    if-nez v3, :cond_0

    #@7
    .line 853
    const-string/jumbo v3, "[getSubId]- fail"

    #@a
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    #@d
    .line 854
    return-object v4

    #@e
    .line 857
    :cond_0
    const/4 v2, 0x0

    #@f
    .line 860
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
    .line 861
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1

    #@1c
    .line 862
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ISub;->getSubId(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    move-result-object v2

    #@20
    .line 868
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    .end local v2    # "subId":[I
    :cond_1
    :goto_0
    return-object v2

    #@21
    .line 864
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
    .line 1241
    const/4 v2, 0x0

    #@1
    .line 1243
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
    .line 1244
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@e
    .line 1246
    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    .line 1245
    invoke-interface {v1, p0, p1, v3}, Lcom/android/internal/telephony/ISub;->getSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result-object v2

    #@16
    .line 1251
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    .end local v2    # "resultValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    #@17
    .line 1248
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
    .line 1107
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
    .line 1117
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
    .line 1112
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
    .line 1098
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
    .line 897
    const-string/jumbo v0, "SubscriptionManager"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 896
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
    .line 1122
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    #@4
    move-result-object v0

    #@5
    .line 1123
    .local v0, "subIds":[I
    if-eqz v0, :cond_0

    #@7
    array-length v1, v0

    #@8
    if-lez v1, :cond_0

    #@a
    .line 1124
    aget v1, v0, v2

    #@c
    invoke-static {p0, p1, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V

    #@f
    .line 1121
    :goto_0
    return-void

    #@10
    .line 1126
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
    .line 1133
    const-string/jumbo v0, "subscription"

    #@3
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@6
    .line 1134
    const-string/jumbo v0, "phone"

    #@9
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@c
    .line 1137
    const-string/jumbo v0, "slot"

    #@f
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@12
    .line 1131
    return-void
.end method

.method public static setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "subId"    # I
    .param p1, "propKey"    # Ljava/lang/String;
    .param p2, "propValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1223
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
    .line 1224
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@d
    .line 1225
    invoke-interface {v1, p0, p1, p2}, Lcom/android/internal/telephony/ISub;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 1221
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    #@11
    .line 1227
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
    .line 413
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
    .line 422
    .local v1, "pkgForDebug":Ljava/lang/String;
    :goto_0
    :try_start_0
    const-string/jumbo v3, "telephony.registry"

    #@d
    .line 421
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@10
    move-result-object v3

    #@11
    invoke-static {v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    #@14
    move-result-object v2

    #@15
    .line 423
    .local v2, "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    if-eqz v2, :cond_0

    #@17
    .line 424
    iget-object v3, p1, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->callback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    #@19
    invoke-interface {v2, v1, v3}, Lcom/android/internal/telephony/ITelephonyRegistry;->addOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 412
    .end local v2    # "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    :cond_0
    :goto_1
    return-void

    #@1d
    .line 413
    .end local v1    # "pkgForDebug":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "<unknown>"

    #@20
    .restart local v1    # "pkgForDebug":Ljava/lang/String;
    goto :goto_0

    #@21
    .line 426
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
    .line 670
    if-nez p1, :cond_0

    #@3
    .line 671
    const-string/jumbo v2, "[addSubscriptionInfoRecord]- null iccId"

    #@6
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    #@9
    .line 673
    :cond_0
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_1

    #@f
    .line 674
    const-string/jumbo v2, "[addSubscriptionInfoRecord]- invalid slotId"

    #@12
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    #@15
    .line 678
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
    .line 679
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_2

    #@22
    .line 681
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISub;->addSubInfoRecord(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 688
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_2
    :goto_0
    return-object v3

    #@26
    .line 683
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
    .line 1064
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    #@4
    move-result v0

    #@5
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 1065
    return v1

    #@c
    .line 1067
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    #@f
    move-result v0

    #@10
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_1

    #@16
    .line 1068
    return v1

    #@17
    .line 1070
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    #@1a
    move-result v0

    #@1b
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@1e
    move-result v0

    #@1f
    if-nez v0, :cond_2

    #@21
    .line 1071
    return v1

    #@22
    .line 1073
    :cond_2
    const/4 v0, 0x1

    #@23
    return v0
.end method

.method public clearDefaultsForInactiveSubIds()V
    .locals 3

    #@0
    .prologue
    .line 1084
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
    .line 1085
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@d
    .line 1086
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->clearDefaultsForInactiveSubIds()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 1081
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    #@11
    .line 1088
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
    .line 1050
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
    .line 1051
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@d
    .line 1052
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->clearSubInfo()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 1058
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    #@11
    .line 1054
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
    .line 1146
    const/4 v2, 0x0

    #@1
    .line 1149
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
    .line 1150
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@e
    .line 1151
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getActiveSubIdList()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v2

    #@12
    .line 1157
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    .end local v2    # "subId":[I
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    #@14
    .line 1158
    const/4 v3, 0x0

    #@15
    new-array v2, v3, [I

    #@17
    .line 1161
    :cond_1
    return-object v2

    #@18
    .line 1153
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
    .line 464
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@4
    move-result v3

    #@5
    if-nez v3, :cond_0

    #@7
    .line 468
    return-object v4

    #@8
    .line 471
    :cond_0
    const/4 v2, 0x0

    #@9
    .line 474
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
    .line 475
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1

    #@16
    .line 476
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
    .line 482
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_1
    :goto_0
    return-object v2

    #@21
    .line 478
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
    .line 627
    const/4 v2, 0x0

    #@1
    .line 630
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
    .line 631
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@e
    .line 632
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
    .line 638
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v2

    #@19
    .line 634
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
    .line 647
    const/4 v2, 0x0

    #@1
    .line 650
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
    .line 651
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@e
    .line 652
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getActiveSubInfoCountMax()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result v2

    #@12
    .line 658
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v2

    #@13
    .line 654
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
    .line 494
    if-nez p1, :cond_0

    #@3
    .line 495
    const-string/jumbo v3, "[getActiveSubscriptionInfoForIccIndex]- null iccid"

    #@6
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    #@9
    .line 496
    return-object v4

    #@a
    .line 499
    :cond_0
    const/4 v2, 0x0

    #@b
    .line 502
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
    .line 503
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1

    #@18
    .line 504
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
    .line 510
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    .end local v2    # "result":Landroid/telephony/SubscriptionInfo;
    :cond_1
    :goto_0
    return-object v2

    #@23
    .line 506
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
    .line 520
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    #@4
    move-result v3

    #@5
    if-nez v3, :cond_0

    #@7
    .line 521
    const-string/jumbo v3, "[getActiveSubscriptionInfoForSimSlotIndex]- invalid slotIdx"

    #@a
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    #@d
    .line 522
    return-object v4

    #@e
    .line 525
    :cond_0
    const/4 v2, 0x0

    #@f
    .line 528
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
    .line 529
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1

    #@1c
    .line 531
    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    #@1e
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    .line 530
    invoke-interface {v1, p1, v3}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoForSimSlotIndex(ILjava/lang/String;)Landroid/telephony/SubscriptionInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    move-result-object v2

    #@26
    .line 537
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    .end local v2    # "result":Landroid/telephony/SubscriptionInfo;
    :cond_1
    :goto_0
    return-object v2

    #@27
    .line 533
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
    .line 586
    const/4 v2, 0x0

    #@1
    .line 589
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
    .line 590
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@e
    .line 591
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
    .line 596
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_0
    :goto_0
    return-object v2

    #@19
    .line 593
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
    .line 607
    const/4 v2, 0x0

    #@1
    .line 610
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
    .line 611
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@e
    .line 612
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
    .line 618
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v2

    #@19
    .line 614
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
    .line 548
    const/4 v2, 0x0

    #@1
    .line 551
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
    .line 552
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@e
    .line 553
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
    .line 559
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    #@1a
    .line 560
    new-instance v2, Ljava/util/ArrayList;

    #@1c
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@1f
    .line 562
    :cond_1
    return-object v2

    #@20
    .line 555
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
    .line 1044
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

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
    .line 1039
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

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
    .line 1004
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

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
    .line 999
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

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
    .line 954
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

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
    .line 1327
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
    .line 1328
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@d
    .line 1329
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ISub;->isActiveSubId(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result v2

    #@11
    return v2

    #@12
    .line 1331
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v0

    #@13
    .line 1333
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
    .line 1175
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    #@4
    move-result v0

    #@5
    .line 1176
    .local v0, "phoneId":I
    if-gez v0, :cond_0

    #@7
    .line 1178
    return v1

    #@8
    .line 1180
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
    .line 439
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
    .line 448
    .local v1, "pkgForDebug":Ljava/lang/String;
    :goto_0
    :try_start_0
    const-string/jumbo v3, "telephony.registry"

    #@d
    .line 447
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@10
    move-result-object v3

    #@11
    invoke-static {v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    #@14
    move-result-object v2

    #@15
    .line 449
    .local v2, "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    if-eqz v2, :cond_0

    #@17
    .line 450
    iget-object v3, p1, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->callback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    #@19
    invoke-interface {v2, v1, v3}, Lcom/android/internal/telephony/ITelephonyRegistry;->removeOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 438
    .end local v2    # "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    :cond_0
    :goto_1
    return-void

    #@1d
    .line 439
    .end local v1    # "pkgForDebug":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "<unknown>"

    #@20
    .restart local v1    # "pkgForDebug":Ljava/lang/String;
    goto :goto_0

    #@21
    .line 452
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
    .line 803
    if-ltz p1, :cond_1

    #@2
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_1

    #@8
    .line 808
    const/4 v2, 0x0

    #@9
    .line 811
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
    .line 812
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@16
    .line 813
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISub;->setDataRoaming(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result v2

    #@1a
    .line 819
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v2

    #@1b
    .line 804
    .end local v2    # "result":I
    :cond_1
    const-string/jumbo v3, "[setDataRoaming]- fail"

    #@1e
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    #@21
    .line 805
    const/4 v3, -0x1

    #@22
    return v3

    #@23
    .line 815
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
    .line 1028
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
    .line 1029
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@d
    .line 1030
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ISub;->setDefaultDataSubId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 1025
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    #@11
    .line 1032
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
    .line 988
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
    .line 989
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@d
    .line 990
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ISub;->setDefaultSmsSubId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 985
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    #@11
    .line 992
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
    .line 943
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
    .line 944
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@d
    .line 945
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ISub;->setDefaultVoiceSubId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 940
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    #@11
    .line 947
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
    .line 729
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
    .line 746
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 747
    const-string/jumbo v3, "[setDisplayName]- fail"

    #@9
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    #@c
    .line 748
    const/4 v3, -0x1

    #@d
    return v3

    #@e
    .line 751
    :cond_0
    const/4 v2, 0x0

    #@f
    .line 754
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
    .line 755
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1

    #@1c
    .line 756
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/ISub;->setDisplayNameUsingSrc(Ljava/lang/String;IJ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    move-result v2

    #@20
    .line 762
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1
    :goto_0
    return v2

    #@21
    .line 758
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
    .line 774
    if-eqz p1, :cond_1

    #@2
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_1

    #@8
    .line 779
    const/4 v2, 0x0

    #@9
    .line 782
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
    .line 783
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    #@16
    .line 784
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISub;->setDisplayNumber(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result v2

    #@1a
    .line 790
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v2

    #@1b
    .line 775
    .end local v2    # "result":I
    :cond_1
    const-string/jumbo v3, "[setDisplayNumber]- fail"

    #@1e
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    #@21
    .line 776
    const/4 v3, -0x1

    #@22
    return v3

    #@23
    .line 786
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
    .line 701
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 702
    const-string/jumbo v3, "[setIconTint]- fail"

    #@9
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    #@c
    .line 703
    const/4 v3, -0x1

    #@d
    return v3

    #@e
    .line 706
    :cond_0
    const/4 v2, 0x0

    #@f
    .line 709
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
    .line 710
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1

    #@1c
    .line 711
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISub;->setIconTint(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    move-result v2

    #@20
    .line 717
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1
    :goto_0
    return v2

    #@21
    .line 713
    :catch_0
    move-exception v0

    #@22
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method
