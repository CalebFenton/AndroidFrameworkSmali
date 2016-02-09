.class public final Lcom/android/internal/telephony/dataconnection/DcTracker;
.super Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;,
        Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;,
        Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;
    }
.end annotation


# static fields
.field private static synthetic -com_android_internal_telephony_DctConstants$StateSwitchesValues:[I = null

.field static final APN_ID:Ljava/lang/String; = "apn_id"

.field private static final POLL_PDP_MILLIS:I = 0x1388

.field static final PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

.field private static final PROVISIONING_SPINNER_TIMEOUT_MILLIS:I = 0x1d4c0

.field private static final PUPPET_MASTER_RADIO_STRESS_TEST:Ljava/lang/String; = "gsm.defaultpdpcontext.active"


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field private mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

.field private mApnObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

.field private mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mCanSetPreferApn:Z

.field private mDeregistrationAlarmState:Z

.field private mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field protected mDisconnectPendingCount:I

.field private mImsDeregistrationDelayIntent:Landroid/app/PendingIntent;

.field public mImsRegistrationState:Z

.field private final mProvisionActionName:Ljava/lang/String;

.field private mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mProvisioningSpinner:Landroid/app/ProgressDialog;

.field private mReregisterOnReconnectFailure:Z

.field private mWaitCleanUpApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/app/ProgressDialog;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    #@2
    return-object v0
.end method

.method private static synthetic -getcom_android_internal_telephony_DctConstants$StateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->-com_android_internal_telephony_DctConstants$StateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->-com_android_internal_telephony_DctConstants$StateSwitchesValues:[I

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
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->-com_android_internal_telephony_DctConstants$StateSwitchesValues:[I

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

.method static synthetic -set0(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)V
    .locals 0
    .param p1, "on"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setRadio(Z)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 132
    const-string/jumbo v0, "content://telephony/carriers/preferapn_no_update/subId/"

    #@3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    .line 131
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    #@9
    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 8
    .param p1, "p"    # Lcom/android/internal/telephony/PhoneBase;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 153
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    #@5
    .line 91
    const-string/jumbo v3, "DCT"

    #@8
    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->LOG_TAG:Ljava/lang/String;

    #@a
    .line 97
    new-instance v3, Ljava/util/ArrayList;

    #@c
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    #@11
    .line 99
    new-instance v3, Landroid/os/RegistrantList;

    #@13
    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    #@16
    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    #@18
    .line 101
    iput v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@1a
    .line 119
    iput-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReregisterOnReconnectFailure:Z

    #@1c
    .line 135
    iput-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    #@1e
    .line 137
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@20
    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@23
    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@25
    .line 146
    iput-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mImsRegistrationState:Z

    #@27
    .line 147
    iput-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mWaitCleanUpApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@29
    .line 148
    iput-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDeregistrationAlarmState:Z

    #@2b
    .line 149
    iput-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mImsDeregistrationDelayIntent:Landroid/app/PendingIntent;

    #@2d
    .line 154
    const-string/jumbo v3, "GsmDCT.constructor"

    #@30
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@33
    .line 156
    iput-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionTracker:Landroid/os/Handler;

    #@35
    .line 157
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->update()V

    #@38
    .line 158
    new-instance v3, Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

    #@3a
    invoke-direct {v3, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    #@3d
    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

    #@3f
    .line 159
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@46
    move-result-object v3

    #@47
    .line 160
    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    #@49
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

    #@4b
    const/4 v6, 0x1

    #@4c
    .line 159
    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@4f
    .line 162
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->initApnContexts()V

    #@52
    .line 164
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@54
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@57
    move-result-object v3

    #@58
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5b
    move-result-object v1

    #@5c
    .local v1, "apnContext$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@5f
    move-result v3

    #@60
    if-eqz v3, :cond_0

    #@62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@65
    move-result-object v0

    #@66
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@68
    .line 166
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    new-instance v2, Landroid/content/IntentFilter;

    #@6a
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    #@6d
    .line 167
    .local v2, "filter":Landroid/content/IntentFilter;
    new-instance v3, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v4, "com.android.internal.telephony.data-reconnect."

    #@75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v3

    #@79
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@7c
    move-result-object v4

    #@7d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v3

    #@81
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v3

    #@85
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@88
    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const-string/jumbo v4, "com.android.internal.telephony.data-restart-trysetup."

    #@90
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v3

    #@94
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@97
    move-result-object v4

    #@98
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v3

    #@9c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v3

    #@a0
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@a3
    .line 169
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@a5
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@a8
    move-result-object v3

    #@a9
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@ab
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@ad
    invoke-virtual {v3, v4, v2, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@b0
    goto :goto_0

    #@b1
    .line 173
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->initEmergencyApnSetting()V

    #@b4
    .line 174
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addEmergencyApnSetting()V

    #@b7
    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    #@b9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@bc
    const-string/jumbo v4, "com.android.internal.telephony.PROVISION"

    #@bf
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v3

    #@c3
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    #@c6
    move-result v4

    #@c7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v3

    #@cb
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ce
    move-result-object v3

    #@cf
    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionActionName:Ljava/lang/String;

    #@d1
    .line 152
    return-void
.end method

.method private addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "networkConfig"    # Landroid/net/NetworkConfig;

    #@0
    .prologue
    .line 404
    new-instance v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@2
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@4
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@7
    move-result-object v1

    #@8
    const-string/jumbo v3, "DCT"

    #@b
    move-object v2, p1

    #@c
    move-object v4, p2

    #@d
    move-object v5, p0

    #@e
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/NetworkConfig;Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    #@11
    .line 406
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@13
    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 407
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPrioritySortedApnContexts:Ljava/util/PriorityQueue;

    #@18
    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    #@1b
    .line 408
    return-object v0
.end method

.method private addEmergencyApnSetting()V
    .locals 5

    #@0
    .prologue
    .line 2999
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmergencyApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 3000
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@6
    if-nez v3, :cond_1

    #@8
    .line 3001
    new-instance v3, Ljava/util/ArrayList;

    #@a
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@d
    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@f
    .line 2998
    :cond_0
    :goto_0
    return-void

    #@10
    .line 3003
    :cond_1
    const/4 v2, 0x0

    #@11
    .line 3004
    .local v2, "hasEmergencyApn":Z
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@13
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v1

    #@17
    .local v1, "apn$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_3

    #@1d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@23
    .line 3005
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    #@25
    const-string/jumbo v4, "emergency"

    #@28
    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_2

    #@2e
    .line 3006
    const/4 v2, 0x1

    #@2f
    .line 3011
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_3
    if-nez v2, :cond_4

    #@31
    .line 3012
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@33
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmergencyApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@35
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@38
    goto :goto_0

    #@39
    .line 3014
    :cond_4
    const-string/jumbo v3, "addEmergencyApnSetting - E-APN setting is already present"

    #@3c
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@3f
    goto :goto_0
.end method

.method private apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 2515
    .local p1, "apns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 2516
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v2

    #@a
    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@c
    .line 2517
    const/16 v3, 0x5b

    #@e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@11
    move-result-object v4

    #@12
    .line 2518
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@18
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    .line 2517
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    .line 2519
    const/16 v4, 0x5d

    #@22
    .line 2517
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@25
    .line 2516
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_0

    #@28
    .line 2521
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    return-object v3
.end method

.method private apnTypeSameAny(Lcom/android/internal/telephony/dataconnection/ApnSetting;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Z
    .locals 4
    .param p1, "first"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .param p2, "second"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@0
    .prologue
    .line 2324
    const/4 v0, 0x0

    #@1
    .local v0, "index1":I
    :goto_0
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    #@3
    array-length v2, v2

    #@4
    if-ge v0, v2, :cond_3

    #@6
    .line 2325
    const/4 v1, 0x0

    #@7
    .local v1, "index2":I
    :goto_1
    iget-object v2, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    #@9
    array-length v2, v2

    #@a
    if-ge v1, v2, :cond_2

    #@c
    .line 2326
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    #@e
    aget-object v2, v2, v0

    #@10
    const-string/jumbo v3, "*"

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    if-nez v2, :cond_0

    #@19
    .line 2327
    iget-object v2, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    #@1b
    aget-object v2, v2, v1

    #@1d
    const-string/jumbo v3, "*"

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v2

    #@24
    .line 2326
    if-nez v2, :cond_0

    #@26
    .line 2328
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    #@28
    aget-object v2, v2, v0

    #@2a
    iget-object v3, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    #@2c
    aget-object v3, v3, v1

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v2

    #@32
    .line 2326
    if-eqz v2, :cond_1

    #@34
    .line 2330
    :cond_0
    const/4 v2, 0x1

    #@35
    return v2

    #@36
    .line 2325
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@38
    goto :goto_1

    #@39
    .line 2324
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 2336
    .end local v1    # "index2":I
    :cond_3
    const/4 v2, 0x0

    #@3d
    return v2
.end method

.method private apnsSimilar(Lcom/android/internal/telephony/dataconnection/ApnSetting;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Z
    .locals 2
    .param p1, "first"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .param p2, "second"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@0
    .prologue
    .line 2341
    const-string/jumbo v0, "dun"

    #@3
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 2342
    const-string/jumbo v0, "dun"

    #@c
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_0

    #@12
    .line 2343
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@14
    iget-object v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@16
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@19
    move-result v0

    #@1a
    .line 2341
    if-eqz v0, :cond_0

    #@1c
    .line 2344
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnTypeSameAny(Lcom/android/internal/telephony/dataconnection/ApnSetting;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_1

    #@22
    .line 2341
    :cond_0
    const/4 v0, 0x0

    #@23
    :goto_0
    return v0

    #@24
    .line 2345
    :cond_1
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    #@26
    iget-object v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    #@28
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    #@2b
    move-result v0

    #@2c
    .line 2341
    if-eqz v0, :cond_0

    #@2e
    .line 2346
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    #@30
    iget-object v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    #@32
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    #@35
    move-result v0

    #@36
    .line 2341
    if-eqz v0, :cond_0

    #@38
    .line 2347
    iget-boolean v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    #@3a
    iget-boolean v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    #@3c
    if-ne v0, v1, :cond_0

    #@3e
    .line 2348
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    #@40
    iget v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    #@42
    if-ne v0, v1, :cond_0

    #@44
    .line 2349
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    #@46
    iget v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    #@48
    if-ne v0, v1, :cond_0

    #@4a
    .line 2350
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    #@4c
    iget-object v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    #@4e
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@51
    move-result v0

    #@52
    .line 2341
    if-eqz v0, :cond_0

    #@54
    .line 2351
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    #@56
    iget-object v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    #@58
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5b
    move-result v0

    #@5c
    .line 2341
    if-eqz v0, :cond_0

    #@5e
    .line 2352
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    #@60
    iget-object v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    #@62
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    #@65
    move-result v0

    #@66
    .line 2341
    if-eqz v0, :cond_0

    #@68
    .line 2353
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    #@6a
    iget-object v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    #@6c
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    #@6f
    move-result v0

    #@70
    .line 2341
    if-eqz v0, :cond_0

    #@72
    .line 2354
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    #@74
    iget-object v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    #@76
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    #@79
    move-result v0

    #@7a
    goto :goto_0
.end method

.method private applyNewState(Lcom/android/internal/telephony/dataconnection/ApnContext;ZZ)V
    .locals 6
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "enabled"    # Z
    .param p3, "met"    # Z

    #@0
    .prologue
    .line 1535
    const/4 v0, 0x0

    #@1
    .line 1536
    .local v0, "cleanup":Z
    const/4 v3, 0x0

    #@2
    .line 1537
    .local v3, "trySetup":Z
    new-instance v4, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v5, "applyNewState("

    #@a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v4

    #@e
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@11
    move-result-object v5

    #@12
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v4

    #@16
    const-string/jumbo v5, ", "

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    .line 1538
    const-string/jumbo v5, "("

    #@24
    .line 1537
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    .line 1538
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    #@2b
    move-result v5

    #@2c
    .line 1537
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    .line 1538
    const-string/jumbo v5, "), "

    #@33
    .line 1537
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    .line 1538
    const-string/jumbo v5, "("

    #@3e
    .line 1537
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    .line 1539
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDependencyMet()Z

    #@45
    move-result v5

    #@46
    .line 1537
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    .line 1539
    const-string/jumbo v5, "))"

    #@4d
    .line 1537
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    .line 1540
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@58
    .line 1541
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@5b
    .line 1543
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    #@5e
    move-result v4

    #@5f
    if-eqz v4, :cond_6

    #@61
    .line 1544
    const/4 v0, 0x1

    #@62
    .line 1545
    if-eqz p2, :cond_3

    #@64
    if-eqz p3, :cond_3

    #@66
    .line 1546
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@69
    move-result-object v1

    #@6a
    .line 1547
    .local v1, "state":Lcom/android/internal/telephony/DctConstants$State;
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-getcom_android_internal_telephony_DctConstants$StateSwitchesValues()[I

    #@6d
    move-result-object v4

    #@6e
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@71
    move-result v5

    #@72
    aget v4, v4, v5

    #@74
    packed-switch v4, :pswitch_data_0

    #@77
    .line 1599
    .end local v1    # "state":Lcom/android/internal/telephony/DctConstants$State;
    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setEnabled(Z)V

    #@7a
    .line 1600
    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDependencyMet(Z)V

    #@7d
    .line 1601
    if-eqz v0, :cond_1

    #@7f
    const/4 v4, 0x1

    #@80
    invoke-virtual {p0, v4, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@83
    .line 1602
    :cond_1
    if-eqz v3, :cond_2

    #@85
    .line 1603
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->resetErrorCodeRetries()V

    #@88
    .line 1604
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    #@8b
    .line 1534
    :cond_2
    return-void

    #@8c
    .line 1553
    .restart local v1    # "state":Lcom/android/internal/telephony/DctConstants$State;
    :pswitch_0
    const-string/jumbo v4, "applyNewState: \'ready\' so return"

    #@8f
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@92
    .line 1554
    new-instance v4, Ljava/lang/StringBuilder;

    #@94
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@97
    const-string/jumbo v5, "applyNewState state="

    #@9a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v4

    #@9e
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v4

    #@a2
    const-string/jumbo v5, ", so return"

    #@a5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v4

    #@a9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v4

    #@ad
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@b0
    .line 1555
    return-void

    #@b1
    .line 1562
    :pswitch_1
    const/4 v3, 0x1

    #@b2
    .line 1563
    const-string/jumbo v4, "dataEnabled"

    #@b5
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@b8
    goto :goto_0

    #@b9
    .line 1567
    .end local v1    # "state":Lcom/android/internal/telephony/DctConstants$State;
    :cond_3
    if-eqz p3, :cond_5

    #@bb
    .line 1568
    const-string/jumbo v4, "dataDisabled"

    #@be
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@c1
    .line 1578
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@c4
    move-result-object v4

    #@c5
    const-string/jumbo v5, "dun"

    #@c8
    if-ne v4, v5, :cond_4

    #@ca
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->teardownForDun()Z

    #@cd
    move-result v4

    #@ce
    if-eqz v4, :cond_4

    #@d0
    .line 1579
    const/4 v0, 0x1

    #@d1
    goto :goto_0

    #@d2
    .line 1581
    :cond_4
    const/4 v0, 0x0

    #@d3
    goto :goto_0

    #@d4
    .line 1584
    :cond_5
    const-string/jumbo v4, "dependencyUnmet"

    #@d7
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@da
    goto :goto_0

    #@db
    .line 1587
    :cond_6
    if-eqz p2, :cond_0

    #@dd
    if-eqz p3, :cond_0

    #@df
    .line 1588
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    #@e2
    move-result v4

    #@e3
    if-eqz v4, :cond_8

    #@e5
    .line 1589
    const-string/jumbo v4, "dependencyMet"

    #@e8
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@eb
    .line 1593
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@ee
    move-result-object v4

    #@ef
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@f1
    if-ne v4, v5, :cond_7

    #@f3
    .line 1594
    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@f5
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@f8
    .line 1596
    :cond_7
    const/4 v3, 0x1

    #@f9
    goto/16 :goto_0

    #@fb
    .line 1591
    :cond_8
    const-string/jumbo v4, "dataEnabled"

    #@fe
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@101
    goto :goto_1

    #@102
    .line 1547
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private buildWaitingApns(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 12
    .param p1, "requestedApnType"    # Ljava/lang/String;
    .param p2, "radioTech"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, -0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 2428
    new-instance v8, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v9, "buildWaitingApns: E requestedApnType="

    #@a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v8

    #@e
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v8

    #@12
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v8

    #@16
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@19
    .line 2429
    new-instance v2, Ljava/util/ArrayList;

    #@1b
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@1e
    .line 2431
    .local v2, "apnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    const-string/jumbo v8, "dun"

    #@21
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v8

    #@25
    if-eqz v8, :cond_0

    #@27
    .line 2432
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->fetchDunApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@2a
    move-result-object v3

    #@2b
    .line 2433
    .local v3, "dun":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v3, :cond_0

    #@2d
    .line 2434
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@30
    .line 2435
    new-instance v8, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v9, "buildWaitingApns: X added APN_TYPE_DUN apnList="

    #@38
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v8

    #@3c
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v8

    #@40
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v8

    #@44
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@47
    .line 2436
    return-object v2

    #@48
    .line 2440
    .end local v3    # "dun":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_0
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@4a
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@4d
    move-result-object v6

    #@4e
    check-cast v6, Lcom/android/internal/telephony/uicc/IccRecords;

    #@50
    .line 2441
    .local v6, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v6, :cond_2

    #@52
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    #@55
    move-result-object v5

    #@56
    .line 2448
    .local v5, "operator":Ljava/lang/String;
    :goto_0
    const/4 v7, 0x1

    #@57
    .line 2450
    .local v7, "usePreferred":Z
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@59
    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@5c
    move-result-object v8

    #@5d
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@60
    move-result-object v8

    #@61
    const v9, 0x1120075

    #@64
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@67
    move-result v8

    #@68
    if-eqz v8, :cond_3

    #@6a
    const/4 v7, 0x0

    #@6b
    .line 2456
    :goto_1
    if-eqz v7, :cond_1

    #@6d
    .line 2457
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getPreferredApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@70
    move-result-object v8

    #@71
    iput-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@73
    .line 2460
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v9, "buildWaitingApns: usePreferred="

    #@7b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v8

    #@7f
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@82
    move-result-object v8

    #@83
    .line 2461
    const-string/jumbo v9, " canSetPreferApn="

    #@86
    .line 2460
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v8

    #@8a
    .line 2461
    iget-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    #@8c
    .line 2460
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v8

    #@90
    .line 2462
    const-string/jumbo v9, " mPreferredApn="

    #@93
    .line 2460
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v8

    #@97
    .line 2462
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@99
    .line 2460
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v8

    #@9d
    .line 2463
    const-string/jumbo v9, " operator="

    #@a0
    .line 2460
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v8

    #@a4
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v8

    #@a8
    .line 2463
    const-string/jumbo v9, " radioTech="

    #@ab
    .line 2460
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v8

    #@af
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v8

    #@b3
    .line 2464
    const-string/jumbo v9, " IccRecords r="

    #@b6
    .line 2460
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v8

    #@ba
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v8

    #@be
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v8

    #@c2
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@c5
    .line 2467
    if-eqz v7, :cond_5

    #@c7
    iget-boolean v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    #@c9
    if-eqz v8, :cond_5

    #@cb
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@cd
    if-eqz v8, :cond_5

    #@cf
    .line 2468
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@d1
    invoke-virtual {v8, p1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    #@d4
    move-result v8

    #@d5
    .line 2467
    if-eqz v8, :cond_5

    #@d7
    .line 2470
    new-instance v8, Ljava/lang/StringBuilder;

    #@d9
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@dc
    const-string/jumbo v9, "buildWaitingApns: Preferred APN:"

    #@df
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v8

    #@e3
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v8

    #@e7
    const-string/jumbo v9, ":"

    #@ea
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v8

    #@ee
    .line 2471
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@f0
    iget-object v9, v9, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    #@f2
    .line 2470
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v8

    #@f6
    .line 2471
    const-string/jumbo v9, ":"

    #@f9
    .line 2470
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v8

    #@fd
    .line 2471
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@ff
    .line 2470
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v8

    #@103
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@106
    move-result-object v8

    #@107
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@10a
    .line 2473
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@10c
    iget-object v8, v8, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    #@10e
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@111
    move-result v8

    #@112
    if-eqz v8, :cond_6

    #@114
    .line 2474
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@116
    iget v8, v8, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    #@118
    invoke-static {v8, p2}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    #@11b
    move-result v8

    #@11c
    if-eqz v8, :cond_4

    #@11e
    .line 2475
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@120
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@123
    .line 2476
    new-instance v8, Ljava/lang/StringBuilder;

    #@125
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@128
    const-string/jumbo v9, "buildWaitingApns: X added preferred apnList="

    #@12b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v8

    #@12f
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@132
    move-result-object v8

    #@133
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@136
    move-result-object v8

    #@137
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@13a
    .line 2477
    return-object v2

    #@13b
    .line 2441
    .end local v5    # "operator":Ljava/lang/String;
    .end local v7    # "usePreferred":Z
    :cond_2
    const-string/jumbo v5, ""

    #@13e
    .restart local v5    # "operator":Ljava/lang/String;
    goto/16 :goto_0

    #@140
    .line 2450
    .restart local v7    # "usePreferred":Z
    :cond_3
    const/4 v7, 0x1

    #@141
    goto/16 :goto_1

    #@143
    .line 2452
    :catch_0
    move-exception v4

    #@144
    .line 2453
    .local v4, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v8, "buildWaitingApns: usePreferred NotFoundException set to true"

    #@147
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@14a
    .line 2454
    const/4 v7, 0x1

    #@14b
    goto/16 :goto_1

    #@14d
    .line 2479
    .end local v4    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_4
    const-string/jumbo v8, "buildWaitingApns: no preferred APN"

    #@150
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@153
    .line 2480
    invoke-direct {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setPreferredApn(I)V

    #@156
    .line 2481
    iput-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@158
    .line 2489
    :cond_5
    :goto_2
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@15a
    if-eqz v8, :cond_9

    #@15c
    .line 2490
    new-instance v8, Ljava/lang/StringBuilder;

    #@15e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@161
    const-string/jumbo v9, "buildWaitingApns: mAllApnSettings="

    #@164
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v8

    #@168
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@16a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v8

    #@16e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@171
    move-result-object v8

    #@172
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@175
    .line 2491
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@177
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17a
    move-result-object v1

    #@17b
    .local v1, "apn$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@17e
    move-result v8

    #@17f
    if-eqz v8, :cond_a

    #@181
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@184
    move-result-object v0

    #@185
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@187
    .line 2492
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    #@18a
    move-result v8

    #@18b
    if-eqz v8, :cond_8

    #@18d
    .line 2493
    iget v8, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    #@18f
    invoke-static {v8, p2}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    #@192
    move-result v8

    #@193
    if-eqz v8, :cond_7

    #@195
    .line 2494
    new-instance v8, Ljava/lang/StringBuilder;

    #@197
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@19a
    const-string/jumbo v9, "buildWaitingApns: adding apn="

    #@19d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a0
    move-result-object v8

    #@1a1
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v8

    #@1a5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a8
    move-result-object v8

    #@1a9
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1ac
    .line 2495
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1af
    goto :goto_3

    #@1b0
    .line 2484
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v1    # "apn$iterator":Ljava/util/Iterator;
    :cond_6
    const-string/jumbo v8, "buildWaitingApns: no preferred APN"

    #@1b3
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1b6
    .line 2485
    invoke-direct {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setPreferredApn(I)V

    #@1b9
    .line 2486
    iput-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@1bb
    goto :goto_2

    #@1bc
    .line 2498
    .restart local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .restart local v1    # "apn$iterator":Ljava/util/Iterator;
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    #@1be
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@1c1
    const-string/jumbo v9, "buildWaitingApns: bearerBitmask:"

    #@1c4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c7
    move-result-object v8

    #@1c8
    iget v9, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    #@1ca
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1cd
    move-result-object v8

    #@1ce
    const-string/jumbo v9, " does "

    #@1d1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d4
    move-result-object v8

    #@1d5
    .line 2499
    const-string/jumbo v9, "not include radioTech:"

    #@1d8
    .line 2498
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1db
    move-result-object v8

    #@1dc
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1df
    move-result-object v8

    #@1e0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e3
    move-result-object v8

    #@1e4
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1e7
    goto :goto_3

    #@1e8
    .line 2503
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    #@1ea
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@1ed
    const-string/jumbo v9, "buildWaitingApns: couldn\'t handle requesedApnType="

    #@1f0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f3
    move-result-object v8

    #@1f4
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f7
    move-result-object v8

    #@1f8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fb
    move-result-object v8

    #@1fc
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1ff
    goto/16 :goto_3

    #@201
    .line 2508
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v1    # "apn$iterator":Ljava/util/Iterator;
    :cond_9
    const-string/jumbo v8, "mAllApnSettings is null!"

    #@204
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@207
    .line 2510
    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    #@209
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@20c
    const-string/jumbo v9, "buildWaitingApns: X apnList="

    #@20f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@212
    move-result-object v8

    #@213
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@216
    move-result-object v8

    #@217
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21a
    move-result-object v8

    #@21b
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@21e
    .line 2511
    return-object v2
.end method

.method private cancelReconnectAlarm(Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 5
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1103
    if-nez p1, :cond_0

    #@3
    return-void

    #@4
    .line 1105
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReconnectIntent()Landroid/app/PendingIntent;

    #@7
    move-result-object v1

    #@8
    .line 1107
    .local v1, "intent":Landroid/app/PendingIntent;
    if-eqz v1, :cond_1

    #@a
    .line 1109
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@c
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@f
    move-result-object v2

    #@10
    const-string/jumbo v3, "alarm"

    #@13
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/app/AlarmManager;

    #@19
    .line 1110
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@1c
    .line 1111
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReconnectIntent(Landroid/app/PendingIntent;)V

    #@1f
    .line 1102
    .end local v0    # "am":Landroid/app/AlarmManager;
    :cond_1
    return-void
.end method

.method private checkForCompatibleConnectedApnContext(Lcom/android/internal/telephony/dataconnection/ApnContext;)Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .locals 11
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 1609
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 1610
    .local v1, "apnType":Ljava/lang/String;
    const/4 v5, 0x0

    #@6
    .line 1612
    .local v5, "dunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const-string/jumbo v8, "dun"

    #@9
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v8

    #@d
    if-eqz v8, :cond_0

    #@f
    .line 1613
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->fetchDunApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@12
    move-result-object v5

    #@13
    .line 1616
    .end local v5    # "dunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v9, "checkForCompatibleConnectedApnContext: apnContext="

    #@1b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v8

    #@1f
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v8

    #@23
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v8

    #@27
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@2a
    .line 1619
    const/4 v7, 0x0

    #@2b
    .line 1620
    .local v7, "potentialDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    const/4 v6, 0x0

    #@2c
    .line 1621
    .local v6, "potentialApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@2e
    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@31
    move-result-object v8

    #@32
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@35
    move-result-object v3

    #@36
    .end local v6    # "potentialApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v7    # "potentialDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .local v3, "curApnCtx$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@39
    move-result v8

    #@3a
    if-eqz v8, :cond_3

    #@3c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3f
    move-result-object v2

    #@40
    check-cast v2, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@42
    .line 1622
    .local v2, "curApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@45
    move-result-object v4

    #@46
    .line 1623
    .local v4, "curDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-eqz v4, :cond_1

    #@48
    .line 1624
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@4b
    move-result-object v0

    #@4c
    .line 1625
    .local v0, "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    new-instance v8, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v9, "apnSetting: "

    #@54
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v8

    #@58
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v8

    #@5c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v8

    #@60
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@63
    .line 1626
    if-eqz v5, :cond_2

    #@65
    .line 1627
    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->equals(Ljava/lang/Object;)Z

    #@68
    move-result v8

    #@69
    if-eqz v8, :cond_1

    #@6b
    .line 1628
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-getcom_android_internal_telephony_DctConstants$StateSwitchesValues()[I

    #@6e
    move-result-object v8

    #@6f
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@72
    move-result-object v9

    #@73
    invoke-virtual {v9}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@76
    move-result v9

    #@77
    aget v8, v8, v9

    #@79
    packed-switch v8, :pswitch_data_0

    #@7c
    :pswitch_0
    goto :goto_0

    #@7d
    .line 1631
    :pswitch_1
    new-instance v8, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string/jumbo v9, "checkForCompatibleConnectedApnContext: found dun conn="

    #@85
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v8

    #@89
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v8

    #@8d
    .line 1633
    const-string/jumbo v9, " curApnCtx="

    #@90
    .line 1631
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v8

    #@94
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v8

    #@98
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v8

    #@9c
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@9f
    .line 1635
    return-object v4

    #@a0
    .line 1638
    :pswitch_2
    move-object v7, v4

    #@a1
    .line 1639
    .local v7, "potentialDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    move-object v6, v2

    #@a2
    .local v6, "potentialApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    goto :goto_0

    #@a3
    .line 1645
    .end local v6    # "potentialApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v7    # "potentialDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_2
    if-eqz v0, :cond_1

    #@a5
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    #@a8
    move-result v8

    #@a9
    if-eqz v8, :cond_1

    #@ab
    .line 1646
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-getcom_android_internal_telephony_DctConstants$StateSwitchesValues()[I

    #@ae
    move-result-object v8

    #@af
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@b2
    move-result-object v9

    #@b3
    invoke-virtual {v9}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@b6
    move-result v9

    #@b7
    aget v8, v8, v9

    #@b9
    packed-switch v8, :pswitch_data_1

    #@bc
    :pswitch_3
    goto/16 :goto_0

    #@be
    .line 1649
    :pswitch_4
    new-instance v8, Ljava/lang/StringBuilder;

    #@c0
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@c3
    const-string/jumbo v9, "checkForCompatibleConnectedApnContext: found canHandle conn="

    #@c6
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v8

    #@ca
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v8

    #@ce
    .line 1651
    const-string/jumbo v9, " curApnCtx="

    #@d1
    .line 1649
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v8

    #@d5
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v8

    #@d9
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dc
    move-result-object v8

    #@dd
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@e0
    .line 1653
    return-object v4

    #@e1
    .line 1656
    :pswitch_5
    move-object v7, v4

    #@e2
    .line 1657
    .restart local v7    # "potentialDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    move-object v6, v2

    #@e3
    .restart local v6    # "potentialApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    goto/16 :goto_0

    #@e5
    .line 1669
    .end local v0    # "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v2    # "curApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v4    # "curDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .end local v6    # "potentialApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v7    # "potentialDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_3
    if-eqz v7, :cond_4

    #@e7
    .line 1671
    new-instance v8, Ljava/lang/StringBuilder;

    #@e9
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@ec
    const-string/jumbo v9, "checkForCompatibleConnectedApnContext: found potential conn="

    #@ef
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v8

    #@f3
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v8

    #@f7
    .line 1672
    const-string/jumbo v9, " curApnCtx="

    #@fa
    .line 1671
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v8

    #@fe
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v8

    #@102
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@105
    move-result-object v8

    #@106
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@109
    .line 1674
    return-object v7

    #@10a
    .line 1677
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    #@10c
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@10f
    const-string/jumbo v9, "checkForCompatibleConnectedApnContext: NO conn apnContext="

    #@112
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v8

    #@116
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v8

    #@11a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11d
    move-result-object v8

    #@11e
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@121
    .line 1678
    return-object v10

    #@122
    .line 1628
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    #@132
    .line 1646
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private cleanUpConnectionsOnUpdatedApns(Z)V
    .locals 9
    .param p1, "tearDown"    # Z

    #@0
    .prologue
    .line 3021
    new-instance v7, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v8, "cleanUpConnectionsOnUpdatedApns: tearDown="

    #@8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v7

    #@c
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@f
    move-result-object v7

    #@10
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v7

    #@14
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@17
    .line 3022
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    #@1c
    move-result v7

    #@1d
    if-eqz v7, :cond_3

    #@1f
    .line 3023
    const-string/jumbo v7, "apnChanged"

    #@22
    invoke-virtual {p0, p1, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    #@25
    .line 3056
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isConnected()Z

    #@28
    move-result v7

    #@29
    if-nez v7, :cond_1

    #@2b
    .line 3057
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    #@2e
    .line 3058
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    #@31
    .line 3061
    :cond_1
    const-string/jumbo v7, "default"

    #@34
    iput-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRequestedApnType:Ljava/lang/String;

    #@36
    .line 3063
    new-instance v7, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v8, "mDisconnectPendingCount = "

    #@3e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v7

    #@42
    iget v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@44
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v7

    #@48
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v7

    #@4c
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@4f
    .line 3064
    if-eqz p1, :cond_2

    #@51
    iget v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@53
    if-nez v7, :cond_2

    #@55
    .line 3065
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataDisconnectComplete()V

    #@58
    .line 3066
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyAllDataDisconnected()V

    #@5b
    .line 3020
    :cond_2
    return-void

    #@5c
    .line 3025
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@5e
    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@61
    move-result-object v7

    #@62
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@65
    move-result-object v1

    #@66
    .local v1, "apnContext$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@69
    move-result v7

    #@6a
    if-eqz v7, :cond_0

    #@6c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6f
    move-result-object v0

    #@70
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@72
    .line 3028
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    const/4 v2, 0x1

    #@73
    .line 3029
    .local v2, "cleanUpApn":Z
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    #@76
    move-result-object v3

    #@77
    .line 3031
    .local v3, "currentWaitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    if-eqz v3, :cond_5

    #@79
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    #@7c
    move-result v7

    #@7d
    if-eqz v7, :cond_6

    #@7f
    .line 3049
    :cond_5
    :goto_1
    if-eqz v2, :cond_4

    #@81
    .line 3050
    const-string/jumbo v7, "apnChanged"

    #@84
    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@87
    .line 3051
    const/4 v7, 0x1

    #@88
    invoke-virtual {p0, v7, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@8b
    goto :goto_0

    #@8c
    .line 3032
    :cond_6
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@8e
    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    #@91
    move-result-object v7

    #@92
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@95
    move-result v5

    #@96
    .line 3034
    .local v5, "radioTech":I
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@99
    move-result-object v7

    #@9a
    .line 3033
    invoke-direct {p0, v7, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->buildWaitingApns(Ljava/lang/String;I)Ljava/util/ArrayList;

    #@9d
    move-result-object v6

    #@9e
    .line 3036
    .local v6, "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@a1
    move-result v7

    #@a2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@a5
    move-result v8

    #@a6
    if-ne v7, v8, :cond_5

    #@a8
    .line 3037
    const/4 v2, 0x0

    #@a9
    .line 3038
    const/4 v4, 0x0

    #@aa
    .local v4, "i":I
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@ad
    move-result v7

    #@ae
    if-ge v4, v7, :cond_5

    #@b0
    .line 3039
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b3
    move-result-object v7

    #@b4
    check-cast v7, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@b6
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b9
    move-result-object v8

    #@ba
    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->equals(Ljava/lang/Object;)Z

    #@bd
    move-result v7

    #@be
    if-nez v7, :cond_7

    #@c0
    .line 3041
    const/4 v2, 0x1

    #@c1
    .line 3042
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setWaitingApns(Ljava/util/ArrayList;)V

    #@c4
    goto :goto_1

    #@c5
    .line 3038
    :cond_7
    add-int/lit8 v4, v4, 0x1

    #@c7
    goto :goto_2
.end method

.method private createAllApnList()V
    .locals 9

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2237
    new-instance v0, Ljava/util/ArrayList;

    #@3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@6
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@8
    .line 2238
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@a
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@d
    move-result-object v8

    #@e
    check-cast v8, Lcom/android/internal/telephony/uicc/IccRecords;

    #@10
    .line 2239
    .local v8, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v8, :cond_2

    #@12
    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    #@15
    move-result-object v7

    #@16
    .line 2240
    .local v7, "operator":Ljava/lang/String;
    :goto_0
    if-eqz v7, :cond_1

    #@18
    .line 2241
    new-instance v0, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v1, "numeric = \'"

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    const-string/jumbo v1, "\'"

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    .line 2242
    .local v3, "selection":Ljava/lang/String;
    const-string/jumbo v5, "_id"

    #@36
    .line 2246
    .local v5, "orderBy":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v1, "createAllApnList: selection="

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v0

    #@42
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@4d
    .line 2248
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@4f
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@52
    move-result-object v0

    #@53
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@56
    move-result-object v0

    #@57
    .line 2249
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    #@59
    move-object v4, v2

    #@5a
    .line 2248
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@5d
    move-result-object v6

    #@5e
    .line 2251
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    #@60
    .line 2252
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    #@63
    move-result v0

    #@64
    if-lez v0, :cond_0

    #@66
    .line 2253
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    #@69
    move-result-object v0

    #@6a
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@6c
    .line 2255
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@6f
    .line 2259
    .end local v3    # "selection":Ljava/lang/String;
    .end local v5    # "orderBy":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addEmergencyApnSetting()V

    #@72
    .line 2261
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->dedupeApnSettings()V

    #@75
    .line 2263
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@77
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@7a
    move-result v0

    #@7b
    if-eqz v0, :cond_3

    #@7d
    .line 2264
    new-instance v0, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string/jumbo v1, "createAllApnList: No APN found for carrier: "

    #@85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v0

    #@89
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v0

    #@8d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v0

    #@91
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@94
    .line 2265
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@96
    .line 2276
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    const-string/jumbo v1, "createAllApnList: X mAllApnSettings="

    #@9e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v0

    #@a2
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@a4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v0

    #@a8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v0

    #@ac
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@af
    .line 2278
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setDataProfilesAsNeeded()V

    #@b2
    .line 2236
    return-void

    #@b3
    .line 2239
    .end local v7    # "operator":Ljava/lang/String;
    :cond_2
    const-string/jumbo v7, ""

    #@b6
    .restart local v7    # "operator":Ljava/lang/String;
    goto/16 :goto_0

    #@b8
    .line 2269
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getPreferredApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@bb
    move-result-object v0

    #@bc
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@be
    .line 2270
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@c0
    if-eqz v0, :cond_4

    #@c2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@c4
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    #@c6
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c9
    move-result v0

    #@ca
    if-eqz v0, :cond_5

    #@cc
    .line 2274
    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@ce
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d1
    const-string/jumbo v1, "createAllApnList: mPreferredApn="

    #@d4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v0

    #@d8
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@da
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v0

    #@de
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e1
    move-result-object v0

    #@e2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@e5
    goto :goto_1

    #@e6
    .line 2271
    :cond_5
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@e8
    .line 2272
    const/4 v0, -0x1

    #@e9
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setPreferredApn(I)V

    #@ec
    goto :goto_2
.end method

.method private createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1181
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1182
    .local v1, "mnoApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 1183
    .local v2, "mvnoApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@c
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Lcom/android/internal/telephony/uicc/IccRecords;

    #@12
    .line 1185
    .local v3, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    #@15
    move-result v5

    #@16
    if-eqz v5, :cond_2

    #@18
    .line 1187
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->makeApnSetting(Landroid/database/Cursor;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@1b
    move-result-object v0

    #@1c
    .line 1188
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-nez v0, :cond_3

    #@1e
    .line 1199
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    #@21
    move-result v5

    #@22
    if-nez v5, :cond_0

    #@24
    .line 1202
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@27
    move-result v5

    #@28
    if-eqz v5, :cond_5

    #@2a
    move-object v4, v1

    #@2b
    .line 1203
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v6, "createApnList: X result="

    #@33
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@42
    .line 1204
    return-object v4

    #@43
    .line 1192
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    .restart local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->hasMvnoParams()Z

    #@46
    move-result v5

    #@47
    if-eqz v5, :cond_4

    #@49
    .line 1193
    if-eqz v3, :cond_1

    #@4b
    iget-object v5, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    #@4d
    iget-object v6, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    #@4f
    invoke-static {v3, v5, v6}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z

    #@52
    move-result v5

    #@53
    if-eqz v5, :cond_1

    #@55
    .line 1194
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@58
    goto :goto_0

    #@59
    .line 1197
    :cond_4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5c
    goto :goto_0

    #@5d
    .line 1202
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_5
    move-object v4, v2

    #@5e
    .restart local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    goto :goto_1
.end method

.method private createDataConnection()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .locals 7

    #@0
    .prologue
    .line 2393
    const-string/jumbo v4, "createDataConnection E"

    #@3
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 2395
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    #@8
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    #@b
    move-result v2

    #@c
    .line 2396
    .local v2, "id":I
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@e
    .line 2397
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    #@10
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    #@12
    .line 2396
    invoke-static {v4, v2, p0, v5, v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;->makeDataConnection(Lcom/android/internal/telephony/PhoneBase;ILcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@15
    move-result-object v0

    #@16
    .line 2398
    .local v0, "conn":Lcom/android/internal/telephony/dataconnection/DataConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    #@18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v5

    #@1c
    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    .line 2399
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@21
    const-string/jumbo v4, "DCT"

    #@24
    invoke-direct {v1, v0, v4}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V

    #@27
    .line 2400
    .local v1, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@29
    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    #@30
    move-result-object v5

    #@31
    invoke-virtual {v1, v4, p0, v5}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->fullyConnectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I

    #@34
    move-result v3

    #@35
    .line 2401
    .local v3, "status":I
    if-nez v3, :cond_0

    #@37
    .line 2402
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    #@39
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getDataConnectionIdSync()I

    #@3c
    move-result v5

    #@3d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    .line 2407
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v5, "createDataConnection() X id="

    #@4c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    const-string/jumbo v5, " dc="

    #@57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v4

    #@5b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@66
    .line 2408
    return-object v1

    #@67
    .line 2404
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v5, "createDataConnection: Could not connect to dcac="

    #@6f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v4

    #@73
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v4

    #@77
    const-string/jumbo v5, " status="

    #@7a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v4

    #@7e
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@81
    move-result-object v4

    #@82
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v4

    #@86
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@89
    goto :goto_0
.end method

.method private dataConnectionNotInUse(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)Z
    .locals 4
    .param p1, "dcac"    # Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@0
    .prologue
    .line 1208
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "dataConnectionNotInUse: check if dcac is inuse dcac="

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@17
    .line 1209
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@19
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@1c
    move-result-object v2

    #@1d
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v1

    #@21
    .local v1, "apnContext$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_1

    #@27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@2d
    .line 1210
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@30
    move-result-object v2

    #@31
    if-ne v2, p1, :cond_0

    #@33
    .line 1211
    new-instance v2, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v3, "dataConnectionNotInUse: in use by apnContext="

    #@3b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@4a
    .line 1212
    const/4 v2, 0x0

    #@4b
    return v2

    #@4c
    .line 1218
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_1
    const-string/jumbo v2, "dataConnectionNotInUse: tearDownAll"

    #@4f
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@52
    .line 1219
    const-string/jumbo v2, "No connection"

    #@55
    const/4 v3, 0x0

    #@56
    invoke-virtual {p1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->tearDownAll(Ljava/lang/String;Landroid/os/Message;)V

    #@59
    .line 1220
    const-string/jumbo v2, "dataConnectionNotInUse: not in use return true"

    #@5c
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@5f
    .line 1221
    const/4 v2, 0x1

    #@60
    return v2
.end method

.method private dedupeApnSettings()V
    .locals 7

    #@0
    .prologue
    .line 2282
    new-instance v4, Ljava/util/ArrayList;

    #@2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 2286
    .local v4, "resultApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    const/4 v1, 0x0

    #@6
    .line 2287
    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v6

    #@c
    add-int/lit8 v6, v6, -0x1

    #@e
    if-ge v1, v6, :cond_2

    #@10
    .line 2288
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@18
    .line 2289
    .local v0, "first":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const/4 v5, 0x0

    #@19
    .line 2290
    .local v5, "second":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    add-int/lit8 v2, v1, 0x1

    #@1b
    .line 2291
    .end local v5    # "second":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .local v2, "j":I
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@20
    move-result v6

    #@21
    if-ge v2, v6, :cond_1

    #@23
    .line 2292
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v5

    #@29
    check-cast v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@2b
    .line 2293
    .local v5, "second":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    invoke-direct {p0, v0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnsSimilar(Lcom/android/internal/telephony/dataconnection/ApnSetting;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Z

    #@2e
    move-result v6

    #@2f
    if-eqz v6, :cond_0

    #@31
    .line 2294
    invoke-direct {p0, v0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->mergeApns(Lcom/android/internal/telephony/dataconnection/ApnSetting;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@34
    move-result-object v3

    #@35
    .line 2295
    .local v3, "newApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v6, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@3a
    .line 2296
    move-object v0, v3

    #@3b
    .line 2297
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@3d
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@40
    goto :goto_1

    #@41
    .line 2299
    .end local v3    # "newApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@43
    goto :goto_1

    #@44
    .line 2302
    .end local v5    # "second":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@46
    goto :goto_0

    #@47
    .line 2281
    .end local v0    # "first":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v2    # "j":I
    :cond_2
    return-void
.end method

.method private destroyDataConnections()V
    .locals 1

    #@0
    .prologue
    .line 2412
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2413
    const-string/jumbo v0, "destroyDataConnections: clear mDataConnectionList"

    #@7
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@a
    .line 2414
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    #@c
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@f
    .line 2411
    :goto_0
    return-void

    #@10
    .line 2416
    :cond_0
    const-string/jumbo v0, "destroyDataConnections: mDataConnecitonList is empty, ignore"

    #@13
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@16
    goto :goto_0
.end method

.method private findDataConnectionAcByCid(I)Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .locals 3
    .param p1, "cid"    # I

    #@0
    .prologue
    .line 1354
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "dcac$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@16
    .line 1355
    .local v0, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getCidSync()I

    #@19
    move-result v2

    #@1a
    if-ne v2, p1, :cond_0

    #@1c
    .line 1356
    return-object v0

    #@1d
    .line 1359
    .end local v0    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_1
    const/4 v2, 0x0

    #@1e
    return-object v2
.end method

.method private findFreeDataConnection()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .locals 4

    #@0
    .prologue
    .line 1225
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "dcac$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@16
    .line 1226
    .local v0, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->isInactiveSync()Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->dataConnectionNotInUse(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_0

    #@22
    .line 1228
    new-instance v2, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v3, "findFreeDataConnection: found free DataConnection= dcac="

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@39
    .line 1231
    return-object v0

    #@3a
    .line 1234
    .end local v0    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_1
    const-string/jumbo v2, "findFreeDataConnection: NO free DataConnection"

    #@3d
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@40
    .line 1235
    const/4 v2, 0x0

    #@41
    return-object v2
.end method

.method private getApnDelay()I
    .locals 2

    #@0
    .prologue
    .line 2001
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mFailFast:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2002
    const-string/jumbo v0, "persist.radio.apn_ff_delay"

    #@7
    .line 2003
    const/16 v1, 0xbb8

    #@9
    .line 2002
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@c
    move-result v0

    #@d
    return v0

    #@e
    .line 2005
    :cond_0
    const-string/jumbo v0, "persist.radio.apn_delay"

    #@11
    const/16 v1, 0x4e20

    #@13
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@16
    move-result v0

    #@17
    return v0
.end method

.method private getCellLocationId()I
    .locals 3

    #@0
    .prologue
    .line 2729
    const/4 v0, -0x1

    #@1
    .line 2730
    .local v0, "cid":I
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@3
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    #@6
    move-result-object v1

    #@7
    .line 2732
    .local v1, "loc":Landroid/telephony/CellLocation;
    if-eqz v1, :cond_0

    #@9
    .line 2733
    instance-of v2, v1, Landroid/telephony/gsm/GsmCellLocation;

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 2734
    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    #@f
    .end local v1    # "loc":Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    #@12
    move-result v0

    #@13
    .line 2739
    :cond_0
    :goto_0
    return v0

    #@14
    .line 2735
    .restart local v1    # "loc":Landroid/telephony/CellLocation;
    :cond_1
    instance-of v2, v1, Landroid/telephony/cdma/CdmaCellLocation;

    #@16
    if-eqz v2, :cond_0

    #@18
    .line 2736
    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    #@1a
    .end local v1    # "loc":Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    #@1d
    move-result v0

    #@1e
    goto :goto_0
.end method

.method private getPreferredApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 2545
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_2

    #@f
    .line 2546
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "getPreferredApn: mAllApnSettings is "

    #@17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@1d
    if-nez v0, :cond_1

    #@1f
    const-string/jumbo v0, "null"

    #@22
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@2d
    .line 2547
    return-object v3

    #@2e
    .line 2546
    :cond_1
    const-string/jumbo v0, "empty"

    #@31
    goto :goto_0

    #@32
    .line 2550
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@34
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    #@37
    move-result v0

    #@38
    int-to-long v4, v0

    #@39
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@3c
    move-result-object v10

    #@3d
    .line 2551
    .local v10, "subId":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    #@3f
    invoke-static {v0, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@42
    move-result-object v1

    #@43
    .line 2552
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@45
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@48
    move-result-object v0

    #@49
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@4c
    move-result-object v0

    #@4d
    .line 2553
    const/4 v2, 0x3

    #@4e
    new-array v2, v2, [Ljava/lang/String;

    #@50
    const-string/jumbo v4, "_id"

    #@53
    aput-object v4, v2, v11

    #@55
    const-string/jumbo v4, "name"

    #@58
    aput-object v4, v2, v12

    #@5a
    const-string/jumbo v4, "apn"

    #@5d
    const/4 v5, 0x2

    #@5e
    aput-object v4, v2, v5

    #@60
    .line 2554
    const-string/jumbo v5, "name ASC"

    #@63
    move-object v4, v3

    #@64
    .line 2552
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@67
    move-result-object v6

    #@68
    .line 2556
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    #@6a
    .line 2557
    iput-boolean v12, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    #@6c
    .line 2561
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string/jumbo v2, "getPreferredApn: mRequestedApnType="

    #@74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v0

    #@78
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRequestedApnType:Ljava/lang/String;

    #@7a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v0

    #@7e
    const-string/jumbo v2, " cursor="

    #@81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v0

    #@85
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v0

    #@89
    .line 2562
    const-string/jumbo v2, " cursor.count="

    #@8c
    .line 2561
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v2

    #@90
    .line 2562
    if-eqz v6, :cond_5

    #@92
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    #@95
    move-result v0

    #@96
    .line 2561
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@99
    move-result-object v0

    #@9a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v0

    #@9e
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@a1
    .line 2564
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    #@a3
    if-eqz v0, :cond_6

    #@a5
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    #@a8
    move-result v0

    #@a9
    if-lez v0, :cond_6

    #@ab
    .line 2566
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    #@ae
    .line 2567
    const-string/jumbo v0, "_id"

    #@b1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@b4
    move-result v0

    #@b5
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    #@b8
    move-result v9

    #@b9
    .line 2568
    .local v9, "pos":I
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@bb
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@be
    move-result-object v8

    #@bf
    .local v8, "p$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@c2
    move-result v0

    #@c3
    if-eqz v0, :cond_6

    #@c5
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@c8
    move-result-object v7

    #@c9
    check-cast v7, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@cb
    .line 2569
    .local v7, "p":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    new-instance v0, Ljava/lang/StringBuilder;

    #@cd
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d0
    const-string/jumbo v2, "getPreferredApn: apnSetting="

    #@d3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v0

    #@d7
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v0

    #@db
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@de
    move-result-object v0

    #@df
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@e2
    .line 2570
    iget v0, v7, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    #@e4
    if-ne v0, v9, :cond_3

    #@e6
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRequestedApnType:Ljava/lang/String;

    #@e8
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    #@eb
    move-result v0

    #@ec
    if-eqz v0, :cond_3

    #@ee
    .line 2571
    new-instance v0, Ljava/lang/StringBuilder;

    #@f0
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f3
    const-string/jumbo v2, "getPreferredApn: X found apnSetting"

    #@f6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v0

    #@fa
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v0

    #@fe
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@101
    move-result-object v0

    #@102
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@105
    .line 2572
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@108
    .line 2573
    return-object v7

    #@109
    .line 2559
    .end local v7    # "p":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v8    # "p$iterator":Ljava/util/Iterator;
    .end local v9    # "pos":I
    :cond_4
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    #@10b
    goto/16 :goto_1

    #@10d
    :cond_5
    move v0, v11

    #@10e
    .line 2562
    goto :goto_2

    #@10f
    .line 2578
    :cond_6
    if-eqz v6, :cond_7

    #@111
    .line 2579
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@114
    .line 2582
    :cond_7
    const-string/jumbo v0, "getPreferredApn: X not found"

    #@117
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@11a
    .line 2583
    return-object v3
.end method

.method private getUiccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 2
    .param p1, "appFamily"    # I

    #@0
    .prologue
    .line 2743
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@2
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@4
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    #@7
    move-result v1

    #@8
    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method private initEmergencyApnSetting()V
    .locals 7

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2981
    const-string/jumbo v3, "type=\"emergency\""

    #@4
    .line 2982
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@6
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@d
    move-result-object v0

    #@e
    .line 2983
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    #@10
    move-object v4, v2

    #@11
    move-object v5, v2

    #@12
    .line 2982
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@15
    move-result-object v6

    #@16
    .line 2985
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    #@18
    .line 2986
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    #@1b
    move-result v0

    #@1c
    if-lez v0, :cond_0

    #@1e
    .line 2987
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_0

    #@24
    .line 2988
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->makeApnSetting(Landroid/database/Cursor;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmergencyApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@2a
    .line 2991
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@2d
    .line 2976
    :cond_1
    return-void
.end method

.method private isDataAllowed(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 3
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 657
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    const-string/jumbo v2, "default"

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_0

    #@e
    .line 658
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, "ia"

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v1

    #@19
    .line 657
    if-eqz v1, :cond_1

    #@1b
    .line 659
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@1d
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@24
    move-result v1

    #@25
    .line 660
    const/16 v2, 0x12

    #@27
    .line 659
    if-ne v1, v2, :cond_1

    #@29
    .line 661
    const-string/jumbo v1, "Default data call activation not allowed in iwlan."

    #@2c
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@2f
    .line 662
    return v0

    #@30
    .line 664
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    #@33
    move-result v1

    #@34
    if-eqz v1, :cond_2

    #@36
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowed()Z

    #@39
    move-result v0

    #@3a
    :cond_2
    return v0
.end method

.method private isHigherPriorityApnContextActive(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 5
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1376
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPrioritySortedApnContexts:Ljava/util/PriorityQueue;

    #@3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v1

    #@7
    .local v1, "otherContext$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_2

    #@d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@13
    .line 1377
    .local v0, "otherContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_1

    #@21
    return v4

    #@22
    .line 1378
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_0

    #@28
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@2b
    move-result-object v2

    #@2c
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@2e
    if-eq v2, v3, :cond_0

    #@30
    .line 1379
    const/4 v2, 0x1

    #@31
    return v2

    #@32
    .line 1382
    .end local v0    # "otherContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_2
    return v4
.end method

.method private isOnlySingleDcAllowed(I)Z
    .locals 5
    .param p1, "rilRadioTech"    # I

    #@0
    .prologue
    .line 1392
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@9
    move-result-object v3

    #@a
    .line 1393
    const v4, 0x1070030

    #@d
    .line 1392
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    #@10
    move-result-object v2

    #@11
    .line 1394
    .local v2, "singleDcRats":[I
    const/4 v1, 0x0

    #@12
    .line 1395
    .local v1, "onlySingleDcAllowed":Z
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@14
    if-eqz v3, :cond_0

    #@16
    .line 1396
    const-string/jumbo v3, "persist.telephony.test.singleDc"

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@1d
    move-result v3

    #@1e
    .line 1395
    if-eqz v3, :cond_0

    #@20
    .line 1397
    const/4 v1, 0x1

    #@21
    .line 1399
    :cond_0
    if-eqz v2, :cond_2

    #@23
    .line 1400
    const/4 v0, 0x0

    #@24
    .local v0, "i":I
    :goto_0
    array-length v3, v2

    #@25
    if-ge v0, v3, :cond_2

    #@27
    if-nez v1, :cond_2

    #@29
    .line 1401
    aget v3, v2, v0

    #@2b
    if-ne p1, v3, :cond_1

    #@2d
    const/4 v1, 0x1

    #@2e
    .line 1400
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_0

    #@31
    .line 1405
    .end local v0    # "i":I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v4, "isOnlySingleDcAllowed("

    #@39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    const-string/jumbo v4, "): "

    #@44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@53
    .line 1406
    return v1
.end method

.method private makeApnSetting(Landroid/database/Cursor;)Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 29
    .param p1, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 1139
    const-string/jumbo v3, "type"

    #@3
    move-object/from16 v0, p1

    #@5
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@8
    move-result v3

    #@9
    move-object/from16 v0, p1

    #@b
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    .line 1138
    move-object/from16 v0, p0

    #@11
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->parseTypes(Ljava/lang/String;)[Ljava/lang/String;

    #@14
    move-result-object v15

    #@15
    .line 1140
    .local v15, "types":[Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@17
    .line 1141
    const-string/jumbo v3, "_id"

    #@1a
    move-object/from16 v0, p1

    #@1c
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@1f
    move-result v3

    #@20
    move-object/from16 v0, p1

    #@22
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    #@25
    move-result v3

    #@26
    .line 1142
    const-string/jumbo v4, "numeric"

    #@29
    move-object/from16 v0, p1

    #@2b
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@2e
    move-result v4

    #@2f
    move-object/from16 v0, p1

    #@31
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    .line 1143
    const-string/jumbo v5, "name"

    #@38
    move-object/from16 v0, p1

    #@3a
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@3d
    move-result v5

    #@3e
    move-object/from16 v0, p1

    #@40
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@43
    move-result-object v5

    #@44
    .line 1144
    const-string/jumbo v6, "apn"

    #@47
    move-object/from16 v0, p1

    #@49
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@4c
    move-result v6

    #@4d
    move-object/from16 v0, p1

    #@4f
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@52
    move-result-object v6

    #@53
    .line 1147
    const-string/jumbo v7, "proxy"

    #@56
    move-object/from16 v0, p1

    #@58
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@5b
    move-result v7

    #@5c
    .line 1146
    move-object/from16 v0, p1

    #@5e
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@61
    move-result-object v7

    #@62
    .line 1145
    invoke-static {v7}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    #@65
    move-result-object v7

    #@66
    .line 1148
    const-string/jumbo v8, "port"

    #@69
    move-object/from16 v0, p1

    #@6b
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@6e
    move-result v8

    #@6f
    move-object/from16 v0, p1

    #@71
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@74
    move-result-object v8

    #@75
    .line 1151
    const-string/jumbo v9, "mmsc"

    #@78
    move-object/from16 v0, p1

    #@7a
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@7d
    move-result v9

    #@7e
    .line 1150
    move-object/from16 v0, p1

    #@80
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@83
    move-result-object v9

    #@84
    .line 1149
    invoke-static {v9}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    #@87
    move-result-object v9

    #@88
    .line 1154
    const-string/jumbo v10, "mmsproxy"

    #@8b
    move-object/from16 v0, p1

    #@8d
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@90
    move-result v10

    #@91
    .line 1153
    move-object/from16 v0, p1

    #@93
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@96
    move-result-object v10

    #@97
    .line 1152
    invoke-static {v10}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    #@9a
    move-result-object v10

    #@9b
    .line 1155
    const-string/jumbo v11, "mmsport"

    #@9e
    move-object/from16 v0, p1

    #@a0
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@a3
    move-result v11

    #@a4
    move-object/from16 v0, p1

    #@a6
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@a9
    move-result-object v11

    #@aa
    .line 1156
    const-string/jumbo v12, "user"

    #@ad
    move-object/from16 v0, p1

    #@af
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@b2
    move-result v12

    #@b3
    move-object/from16 v0, p1

    #@b5
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@b8
    move-result-object v12

    #@b9
    .line 1157
    const-string/jumbo v13, "password"

    #@bc
    move-object/from16 v0, p1

    #@be
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@c1
    move-result v13

    #@c2
    move-object/from16 v0, p1

    #@c4
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@c7
    move-result-object v13

    #@c8
    .line 1158
    const-string/jumbo v14, "authtype"

    #@cb
    move-object/from16 v0, p1

    #@cd
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@d0
    move-result v14

    #@d1
    move-object/from16 v0, p1

    #@d3
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    #@d6
    move-result v14

    #@d7
    .line 1160
    const-string/jumbo v16, "protocol"

    #@da
    move-object/from16 v0, p1

    #@dc
    move-object/from16 v1, v16

    #@de
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@e1
    move-result v16

    #@e2
    move-object/from16 v0, p1

    #@e4
    move/from16 v1, v16

    #@e6
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@e9
    move-result-object v16

    #@ea
    .line 1162
    const-string/jumbo v17, "roaming_protocol"

    #@ed
    .line 1161
    move-object/from16 v0, p1

    #@ef
    move-object/from16 v1, v17

    #@f1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@f4
    move-result v17

    #@f5
    move-object/from16 v0, p1

    #@f7
    move/from16 v1, v17

    #@f9
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@fc
    move-result-object v17

    #@fd
    .line 1164
    const-string/jumbo v18, "carrier_enabled"

    #@100
    .line 1163
    move-object/from16 v0, p1

    #@102
    move-object/from16 v1, v18

    #@104
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@107
    move-result v18

    #@108
    move-object/from16 v0, p1

    #@10a
    move/from16 v1, v18

    #@10c
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@10f
    move-result v18

    #@110
    .line 1164
    const/16 v19, 0x1

    #@112
    .line 1163
    move/from16 v0, v18

    #@114
    move/from16 v1, v19

    #@116
    if-ne v0, v1, :cond_0

    #@118
    const/16 v18, 0x1

    #@11a
    .line 1165
    :goto_0
    const-string/jumbo v19, "bearer"

    #@11d
    move-object/from16 v0, p1

    #@11f
    move-object/from16 v1, v19

    #@121
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@124
    move-result v19

    #@125
    move-object/from16 v0, p1

    #@127
    move/from16 v1, v19

    #@129
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@12c
    move-result v19

    #@12d
    .line 1166
    const-string/jumbo v20, "bearer_bitmask"

    #@130
    move-object/from16 v0, p1

    #@132
    move-object/from16 v1, v20

    #@134
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@137
    move-result v20

    #@138
    move-object/from16 v0, p1

    #@13a
    move/from16 v1, v20

    #@13c
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@13f
    move-result v20

    #@140
    .line 1167
    const-string/jumbo v21, "profile_id"

    #@143
    move-object/from16 v0, p1

    #@145
    move-object/from16 v1, v21

    #@147
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@14a
    move-result v21

    #@14b
    move-object/from16 v0, p1

    #@14d
    move/from16 v1, v21

    #@14f
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@152
    move-result v21

    #@153
    .line 1169
    const-string/jumbo v22, "modem_cognitive"

    #@156
    .line 1168
    move-object/from16 v0, p1

    #@158
    move-object/from16 v1, v22

    #@15a
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@15d
    move-result v22

    #@15e
    move-object/from16 v0, p1

    #@160
    move/from16 v1, v22

    #@162
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@165
    move-result v22

    #@166
    .line 1169
    const/16 v23, 0x1

    #@168
    .line 1168
    move/from16 v0, v22

    #@16a
    move/from16 v1, v23

    #@16c
    if-ne v0, v1, :cond_1

    #@16e
    const/16 v22, 0x1

    #@170
    .line 1170
    :goto_1
    const-string/jumbo v23, "max_conns"

    #@173
    move-object/from16 v0, p1

    #@175
    move-object/from16 v1, v23

    #@177
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@17a
    move-result v23

    #@17b
    move-object/from16 v0, p1

    #@17d
    move/from16 v1, v23

    #@17f
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@182
    move-result v23

    #@183
    .line 1172
    const-string/jumbo v24, "wait_time"

    #@186
    .line 1171
    move-object/from16 v0, p1

    #@188
    move-object/from16 v1, v24

    #@18a
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@18d
    move-result v24

    #@18e
    move-object/from16 v0, p1

    #@190
    move/from16 v1, v24

    #@192
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@195
    move-result v24

    #@196
    .line 1173
    const-string/jumbo v25, "max_conns_time"

    #@199
    move-object/from16 v0, p1

    #@19b
    move-object/from16 v1, v25

    #@19d
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@1a0
    move-result v25

    #@1a1
    move-object/from16 v0, p1

    #@1a3
    move/from16 v1, v25

    #@1a5
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@1a8
    move-result v25

    #@1a9
    .line 1174
    const-string/jumbo v26, "mtu"

    #@1ac
    move-object/from16 v0, p1

    #@1ae
    move-object/from16 v1, v26

    #@1b0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@1b3
    move-result v26

    #@1b4
    move-object/from16 v0, p1

    #@1b6
    move/from16 v1, v26

    #@1b8
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@1bb
    move-result v26

    #@1bc
    .line 1175
    const-string/jumbo v27, "mvno_type"

    #@1bf
    move-object/from16 v0, p1

    #@1c1
    move-object/from16 v1, v27

    #@1c3
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@1c6
    move-result v27

    #@1c7
    move-object/from16 v0, p1

    #@1c9
    move/from16 v1, v27

    #@1cb
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@1ce
    move-result-object v27

    #@1cf
    .line 1176
    const-string/jumbo v28, "mvno_match_data"

    #@1d2
    move-object/from16 v0, p1

    #@1d4
    move-object/from16 v1, v28

    #@1d6
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@1d9
    move-result v28

    #@1da
    move-object/from16 v0, p1

    #@1dc
    move/from16 v1, v28

    #@1de
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@1e1
    move-result-object v28

    #@1e2
    .line 1140
    invoke-direct/range {v2 .. v28}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZIIIILjava/lang/String;Ljava/lang/String;)V

    #@1e5
    .line 1177
    .local v2, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    return-object v2

    #@1e6
    .line 1163
    .end local v2    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_0
    const/16 v18, 0x0

    #@1e8
    goto/16 :goto_0

    #@1ea
    .line 1168
    :cond_1
    const/16 v22, 0x0

    #@1ec
    goto :goto_1
.end method

.method private mergeApns(Lcom/android/internal/telephony/dataconnection/ApnSetting;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 30
    .param p1, "dest"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .param p2, "src"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@0
    .prologue
    .line 2365
    move-object/from16 v0, p1

    #@2
    iget v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    #@4
    .line 2366
    .local v2, "id":I
    new-instance v28, Ljava/util/ArrayList;

    #@6
    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 2367
    .local v28, "resultTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    #@b
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    #@d
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@10
    move-result-object v1

    #@11
    move-object/from16 v0, v28

    #@13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@16
    .line 2368
    move-object/from16 v0, p2

    #@18
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    #@1a
    const/4 v1, 0x0

    #@1b
    array-length v4, v3

    #@1c
    :goto_0
    if-ge v1, v4, :cond_2

    #@1e
    aget-object v29, v3, v1

    #@20
    .line 2369
    .local v29, "srcType":Ljava/lang/String;
    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@23
    move-result v5

    #@24
    if-nez v5, :cond_0

    #@26
    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@29
    .line 2370
    :cond_0
    const-string/jumbo v5, "default"

    #@2c
    move-object/from16 v0, v29

    #@2e
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v5

    #@32
    if-eqz v5, :cond_1

    #@34
    move-object/from16 v0, p2

    #@36
    iget v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    #@38
    .line 2368
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 2372
    .end local v29    # "srcType":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p1

    #@3d
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    #@3f
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@42
    move-result v1

    #@43
    if-eqz v1, :cond_4

    #@45
    move-object/from16 v0, p2

    #@47
    iget-object v8, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    #@49
    .line 2373
    .local v8, "mmsc":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p1

    #@4b
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    #@4d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@50
    move-result v1

    #@51
    if-eqz v1, :cond_5

    #@53
    move-object/from16 v0, p2

    #@55
    iget-object v9, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    #@57
    .line 2374
    .local v9, "mmsProxy":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p1

    #@59
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    #@5b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5e
    move-result v1

    #@5f
    if-eqz v1, :cond_6

    #@61
    move-object/from16 v0, p2

    #@63
    iget-object v10, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    #@65
    .line 2375
    .local v10, "mmsPort":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p1

    #@67
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    #@69
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6c
    move-result v1

    #@6d
    if-eqz v1, :cond_7

    #@6f
    move-object/from16 v0, p2

    #@71
    iget-object v6, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    #@73
    .line 2376
    .local v6, "proxy":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p1

    #@75
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    #@77
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7a
    move-result v1

    #@7b
    if-eqz v1, :cond_8

    #@7d
    move-object/from16 v0, p2

    #@7f
    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    #@81
    .line 2377
    .local v7, "port":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p2

    #@83
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    #@85
    const-string/jumbo v3, "IPV4V6"

    #@88
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8b
    move-result v1

    #@8c
    if-eqz v1, :cond_9

    #@8e
    move-object/from16 v0, p2

    #@90
    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    #@92
    .line 2378
    .local v15, "protocol":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p2

    #@94
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    #@96
    const-string/jumbo v3, "IPV4V6"

    #@99
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9c
    move-result v1

    #@9d
    if-eqz v1, :cond_a

    #@9f
    move-object/from16 v0, p2

    #@a1
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    #@a3
    move-object/from16 v16, v0

    #@a5
    .line 2380
    .local v16, "roamingProtocol":Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p1

    #@a7
    iget v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    #@a9
    if-eqz v1, :cond_3

    #@ab
    move-object/from16 v0, p2

    #@ad
    iget v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    #@af
    if-nez v1, :cond_b

    #@b1
    .line 2381
    :cond_3
    const/16 v19, 0x0

    #@b3
    .line 2383
    .local v19, "bearerBitmask":I
    :goto_8
    new-instance v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@b5
    move-object/from16 v0, p1

    #@b7
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    #@b9
    move-object/from16 v0, p1

    #@bb
    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    #@bd
    move-object/from16 v0, p1

    #@bf
    iget-object v5, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@c1
    .line 2384
    move-object/from16 v0, p1

    #@c3
    iget-object v11, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    #@c5
    move-object/from16 v0, p1

    #@c7
    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    #@c9
    .line 2385
    move-object/from16 v0, p1

    #@cb
    iget v13, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    #@cd
    const/4 v14, 0x0

    #@ce
    new-array v14, v14, [Ljava/lang/String;

    #@d0
    move-object/from16 v0, v28

    #@d2
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@d5
    move-result-object v14

    #@d6
    check-cast v14, [Ljava/lang/String;

    #@d8
    .line 2386
    move-object/from16 v0, p1

    #@da
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    #@dc
    move/from16 v17, v0

    #@de
    move-object/from16 v0, p1

    #@e0
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    #@e2
    move/from16 v20, v0

    #@e4
    .line 2387
    move-object/from16 v0, p1

    #@e6
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    #@e8
    move/from16 v18, v0

    #@ea
    if-nez v18, :cond_c

    #@ec
    move-object/from16 v0, p2

    #@ee
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    #@f0
    move/from16 v21, v0

    #@f2
    :goto_9
    move-object/from16 v0, p1

    #@f4
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    #@f6
    move/from16 v22, v0

    #@f8
    move-object/from16 v0, p1

    #@fa
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    #@fc
    move/from16 v23, v0

    #@fe
    .line 2388
    move-object/from16 v0, p1

    #@100
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    #@102
    move/from16 v24, v0

    #@104
    move-object/from16 v0, p1

    #@106
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    #@108
    move/from16 v25, v0

    #@10a
    move-object/from16 v0, p1

    #@10c
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    #@10e
    move-object/from16 v26, v0

    #@110
    move-object/from16 v0, p1

    #@112
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    #@114
    move-object/from16 v27, v0

    #@116
    .line 2386
    const/16 v18, 0x0

    #@118
    .line 2383
    invoke-direct/range {v1 .. v27}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZIIIILjava/lang/String;Ljava/lang/String;)V

    #@11b
    return-object v1

    #@11c
    .line 2372
    .end local v6    # "proxy":Ljava/lang/String;
    .end local v7    # "port":Ljava/lang/String;
    .end local v8    # "mmsc":Ljava/lang/String;
    .end local v9    # "mmsProxy":Ljava/lang/String;
    .end local v10    # "mmsPort":Ljava/lang/String;
    .end local v15    # "protocol":Ljava/lang/String;
    .end local v16    # "roamingProtocol":Ljava/lang/String;
    .end local v19    # "bearerBitmask":I
    :cond_4
    move-object/from16 v0, p1

    #@11e
    iget-object v8, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    #@120
    .restart local v8    # "mmsc":Ljava/lang/String;
    goto/16 :goto_1

    #@122
    .line 2373
    :cond_5
    move-object/from16 v0, p1

    #@124
    iget-object v9, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    #@126
    .restart local v9    # "mmsProxy":Ljava/lang/String;
    goto/16 :goto_2

    #@128
    .line 2374
    :cond_6
    move-object/from16 v0, p1

    #@12a
    iget-object v10, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    #@12c
    .restart local v10    # "mmsPort":Ljava/lang/String;
    goto/16 :goto_3

    #@12e
    .line 2375
    :cond_7
    move-object/from16 v0, p1

    #@130
    iget-object v6, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    #@132
    .restart local v6    # "proxy":Ljava/lang/String;
    goto/16 :goto_4

    #@134
    .line 2376
    :cond_8
    move-object/from16 v0, p1

    #@136
    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    #@138
    .restart local v7    # "port":Ljava/lang/String;
    goto/16 :goto_5

    #@13a
    .line 2377
    :cond_9
    move-object/from16 v0, p1

    #@13c
    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    #@13e
    .restart local v15    # "protocol":Ljava/lang/String;
    goto/16 :goto_6

    #@140
    .line 2379
    :cond_a
    move-object/from16 v0, p1

    #@142
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    #@144
    move-object/from16 v16, v0

    #@146
    .restart local v16    # "roamingProtocol":Ljava/lang/String;
    goto/16 :goto_7

    #@148
    .line 2381
    :cond_b
    move-object/from16 v0, p1

    #@14a
    iget v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    #@14c
    move-object/from16 v0, p2

    #@14e
    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    #@150
    or-int v19, v1, v3

    #@152
    .restart local v19    # "bearerBitmask":I
    goto/16 :goto_8

    #@154
    .line 2387
    :cond_c
    const/16 v21, 0x1

    #@156
    goto :goto_9
.end method

.method private notifyNoData(Lcom/android/internal/telephony/dataconnection/DcFailCause;Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 3
    .param p1, "lastFailCauseCode"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@0
    .prologue
    .line 1486
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "notifyNoData: type="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1b
    .line 1487
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isPermanentFail(Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_0

    #@21
    .line 1488
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    const-string/jumbo v1, "default"

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_1

    #@2e
    .line 1485
    :cond_0
    :goto_0
    return-void

    #@2f
    .line 1489
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@31
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    #@3c
    goto :goto_0
.end method

.method private onApnChanged()V
    .locals 4

    #@0
    .prologue
    .line 1327
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    #@3
    move-result-object v1

    #@4
    .line 1328
    .local v1, "overallState":Lcom/android/internal/telephony/DctConstants$State;
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@6
    if-eq v1, v2, :cond_2

    #@8
    .line 1329
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@a
    if-ne v1, v2, :cond_3

    #@c
    const/4 v0, 0x1

    #@d
    .line 1331
    .local v0, "isDisconnected":Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@f
    instance-of v2, v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 1333
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@15
    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    #@17
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateCurrentCarrierInProvider()Z

    #@1a
    .line 1338
    :cond_0
    const-string/jumbo v2, "onApnChanged: createAllApnList and cleanUpAllConnections"

    #@1d
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@20
    .line 1339
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createAllApnList()V

    #@23
    .line 1340
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInitialAttachApn()V

    #@26
    .line 1341
    if-eqz v0, :cond_4

    #@28
    const/4 v2, 0x0

    #@29
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnectionsOnUpdatedApns(Z)V

    #@2c
    .line 1344
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2e
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    #@31
    move-result v2

    #@32
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    #@35
    move-result v3

    #@36
    if-ne v2, v3, :cond_1

    #@38
    .line 1345
    const-string/jumbo v2, "apnChanged"

    #@3b
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    #@3e
    .line 1326
    :cond_1
    return-void

    #@3f
    .line 1328
    .end local v0    # "isDisconnected":Z
    :cond_2
    const/4 v0, 0x1

    #@40
    .restart local v0    # "isDisconnected":Z
    goto :goto_0

    #@41
    .line 1329
    .end local v0    # "isDisconnected":Z
    :cond_3
    const/4 v0, 0x0

    #@42
    .restart local v0    # "isDisconnected":Z
    goto :goto_0

    #@43
    .line 1341
    :cond_4
    const/4 v2, 0x1

    #@44
    goto :goto_1
.end method

.method private onDataConnectionAttached()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 686
    const-string/jumbo v0, "onDataConnectionAttached"

    #@4
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@7
    .line 687
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@9
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@c
    .line 688
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    #@f
    move-result-object v0

    #@10
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    #@12
    if-ne v0, v1, :cond_1

    #@14
    .line 689
    const-string/jumbo v0, "onDataConnectionAttached: start polling notify attached"

    #@17
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1a
    .line 690
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startNetStatPoll()V

    #@1d
    .line 691
    const/4 v0, 0x0

    #@1e
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    #@21
    .line 692
    const-string/jumbo v0, "dataAttached"

    #@24
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    #@27
    .line 697
    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreationConfig:Z

    #@29
    if-eqz v0, :cond_0

    #@2b
    .line 698
    iput-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreation:Z

    #@2d
    .line 700
    :cond_0
    const-string/jumbo v0, "dataAttached"

    #@30
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    #@33
    .line 685
    return-void

    #@34
    .line 695
    :cond_1
    const-string/jumbo v0, "dataAttached"

    #@37
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    #@3a
    goto :goto_0
.end method

.method private onRecordsLoaded()V
    .locals 2

    #@0
    .prologue
    .line 1494
    const-string/jumbo v0, "onRecordsLoaded: createAllApnList"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 1495
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@f
    move-result-object v0

    #@10
    .line 1496
    const v1, 0x112008e

    #@13
    .line 1495
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@16
    move-result v0

    #@17
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreationConfig:Z

    #@19
    .line 1498
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createAllApnList()V

    #@1c
    .line 1499
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInitialAttachApn()V

    #@1f
    .line 1500
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@21
    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@23
    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_0

    #@2d
    .line 1501
    const-string/jumbo v0, "onRecordsLoaded: notifying data availability"

    #@30
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@33
    .line 1502
    const-string/jumbo v0, "simLoaded"

    #@36
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    #@39
    .line 1504
    :cond_0
    const-string/jumbo v0, "simLoaded"

    #@3c
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    #@3f
    .line 1493
    return-void
.end method

.method private onSimNotReady()V
    .locals 2

    #@0
    .prologue
    .line 1508
    const-string/jumbo v0, "onSimNotReady"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 1510
    const-string/jumbo v0, "simNotReady"

    #@9
    const/4 v1, 0x1

    #@a
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    #@d
    .line 1511
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@10
    .line 1512
    const/4 v0, 0x0

    #@11
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreationConfig:Z

    #@13
    .line 1507
    return-void
.end method

.method private parseTypes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "types"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1122
    if-eqz p1, :cond_0

    #@2
    const-string/jumbo v1, ""

    #@5
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 1123
    :cond_0
    const/4 v1, 0x1

    #@c
    new-array v0, v1, [Ljava/lang/String;

    #@e
    .line 1124
    .local v0, "result":[Ljava/lang/String;
    const-string/jumbo v1, "*"

    #@11
    const/4 v2, 0x0

    #@12
    aput-object v1, v0, v2

    #@14
    .line 1128
    :goto_0
    return-object v0

    #@15
    .line 1126
    .end local v0    # "result":[Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, ","

    #@18
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .restart local v0    # "result":[Ljava/lang/String;
    goto :goto_0
.end method

.method private retryAfterDisconnected(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 3
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@0
    .prologue
    .line 1434
    const/4 v1, 0x1

    #@1
    .line 1435
    .local v1, "retry":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 1437
    .local v0, "reason":Ljava/lang/String;
    const-string/jumbo v2, "radioTurnedOff"

    #@8
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v2

    #@c
    if-nez v2, :cond_0

    #@e
    .line 1438
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@10
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@17
    move-result v2

    #@18
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isOnlySingleDcAllowed(I)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_1

    #@1e
    .line 1439
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isHigherPriorityApnContextActive(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    #@21
    move-result v2

    #@22
    .line 1437
    if-eqz v2, :cond_1

    #@24
    .line 1440
    :cond_0
    const/4 v1, 0x0

    #@25
    .line 1442
    :cond_1
    return v1
.end method

.method private setPreferredApn(I)V
    .locals 7
    .param p1, "pos"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2525
    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    #@3
    if-nez v4, :cond_0

    #@5
    .line 2526
    const-string/jumbo v4, "setPreferredApn: X !canSEtPreferApn"

    #@8
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@b
    .line 2527
    return-void

    #@c
    .line 2530
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@e
    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    #@11
    move-result v4

    #@12
    int-to-long v4, v4

    #@13
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    .line 2531
    .local v1, "subId":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    #@19
    invoke-static {v4, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@1c
    move-result-object v2

    #@1d
    .line 2532
    .local v2, "uri":Landroid/net/Uri;
    const-string/jumbo v4, "setPreferredApn: delete"

    #@20
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@23
    .line 2533
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@25
    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@2c
    move-result-object v0

    #@2d
    .line 2534
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, v2, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    #@30
    .line 2536
    if-ltz p1, :cond_1

    #@32
    .line 2537
    const-string/jumbo v4, "setPreferredApn: insert"

    #@35
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@38
    .line 2538
    new-instance v3, Landroid/content/ContentValues;

    #@3a
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    #@3d
    .line 2539
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "apn_id"

    #@40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@47
    .line 2540
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@4a
    .line 2524
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_1
    return-void
.end method

.method private setRadio(Z)V
    .locals 3
    .param p1, "on"    # Z

    #@0
    .prologue
    .line 298
    const-string/jumbo v2, "phone"

    #@3
    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v2

    #@7
    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    #@a
    move-result-object v1

    #@b
    .line 300
    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 297
    :goto_0
    return-void

    #@f
    .line 301
    :catch_0
    move-exception v0

    #@10
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private setupData(Lcom/android/internal/telephony/dataconnection/ApnContext;I)Z
    .locals 10
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "radioTech"    # I

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1239
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "setupData: apnContext="

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@19
    .line 1240
    const-string/jumbo v1, "setupData"

    #@1c
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@1f
    .line 1242
    const/4 v0, 0x0

    #@20
    .line 1244
    .local v0, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getNextWaitingApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@23
    move-result-object v7

    #@24
    .line 1245
    .local v7, "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-nez v7, :cond_0

    #@26
    .line 1246
    const-string/jumbo v1, "setupData: return for no apn found!"

    #@29
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@2c
    .line 1247
    return v4

    #@2d
    .line 1250
    :cond_0
    iget v3, v7, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    #@2f
    .line 1251
    .local v3, "profileId":I
    if-nez v3, :cond_1

    #@31
    .line 1252
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getApnProfileID(Ljava/lang/String;)I

    #@38
    move-result v3

    #@39
    .line 1259
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    const-string/jumbo v2, "dun"

    #@40
    if-ne v1, v2, :cond_2

    #@42
    .line 1260
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->teardownForDun()Z

    #@45
    move-result v1

    #@46
    if-nez v1, :cond_3

    #@48
    .line 1261
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->checkForCompatibleConnectedApnContext(Lcom/android/internal/telephony/dataconnection/ApnContext;)Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@4b
    move-result-object v0

    #@4c
    .line 1262
    .local v0, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-eqz v0, :cond_3

    #@4e
    .line 1264
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getApnSettingSync()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@51
    move-result-object v8

    #@52
    .line 1265
    .local v8, "dcacApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v8, :cond_3

    #@54
    .line 1267
    move-object v7, v8

    #@55
    .line 1271
    .end local v0    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .end local v8    # "dcacApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_3
    if-nez v0, :cond_8

    #@57
    .line 1272
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isOnlySingleDcAllowed(I)Z

    #@5a
    move-result v1

    #@5b
    if-eqz v1, :cond_6

    #@5d
    .line 1273
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isHigherPriorityApnContextActive(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    #@60
    move-result v1

    #@61
    if-eqz v1, :cond_4

    #@63
    .line 1275
    const-string/jumbo v1, "setupData: Higher priority ApnContext active.  Ignoring call"

    #@66
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@69
    .line 1277
    return v4

    #@6a
    .line 1283
    :cond_4
    const-string/jumbo v1, "SinglePdnArbitration"

    #@6d
    invoke-virtual {p0, v9, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    #@70
    move-result v1

    #@71
    if-eqz v1, :cond_5

    #@73
    .line 1287
    const-string/jumbo v1, "setupData: Some calls are disconnecting first.  Wait and retry"

    #@76
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@79
    .line 1288
    return v4

    #@7a
    .line 1292
    :cond_5
    const-string/jumbo v1, "setupData: Single pdp. Continue setting up data call."

    #@7d
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@80
    .line 1295
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->findFreeDataConnection()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@83
    move-result-object v0

    #@84
    .line 1297
    .restart local v0    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-nez v0, :cond_7

    #@86
    .line 1298
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createDataConnection()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@89
    move-result-object v0

    #@8a
    .line 1301
    :cond_7
    if-nez v0, :cond_8

    #@8c
    .line 1302
    const-string/jumbo v1, "setupData: No free DataConnection and couldn\'t create one, WEIRD"

    #@8f
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@92
    .line 1303
    return v4

    #@93
    .line 1306
    .end local v0    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    const-string/jumbo v2, "setupData: dcac="

    #@9b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v1

    #@9f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v1

    #@a3
    const-string/jumbo v2, " apnSetting="

    #@a6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v1

    #@aa
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v1

    #@ae
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b1
    move-result-object v1

    #@b2
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@b5
    .line 1308
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    #@b8
    .line 1309
    invoke-virtual {p1, v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setApnSetting(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V

    #@bb
    .line 1310
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    #@bd
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@c0
    .line 1311
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@c2
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@c5
    move-result-object v2

    #@c6
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@c9
    move-result-object v4

    #@ca
    invoke-virtual {v1, v2, v4}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    #@cd
    .line 1313
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage()Landroid/os/Message;

    #@d0
    move-result-object v6

    #@d1
    .line 1314
    .local v6, "msg":Landroid/os/Message;
    const v1, 0x42000

    #@d4
    iput v1, v6, Landroid/os/Message;->what:I

    #@d6
    .line 1315
    iput-object p1, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d8
    .line 1316
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getInitialMaxRetry()I

    #@db
    move-result v2

    #@dc
    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreation:Z

    #@de
    move-object v1, p1

    #@df
    move v4, p2

    #@e0
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->bringUp(Lcom/android/internal/telephony/dataconnection/ApnContext;IIIZLandroid/os/Message;)V

    #@e3
    .line 1319
    const-string/jumbo v1, "setupData: initing!"

    #@e6
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@e9
    .line 1320
    return v9
.end method

.method private setupDataOnConnectableApns(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 789
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    #@2
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    #@5
    .line 788
    return-void
.end method

.method private setupDataOnConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V
    .locals 7
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "retryFailures"    # Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    #@0
    .prologue
    .line 793
    new-instance v5, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v6, "setupDataOnConnectableApns: "

    #@8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v5

    #@c
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v5

    #@10
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v5

    #@14
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@17
    .line 795
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPrioritySortedApnContexts:Ljava/util/PriorityQueue;

    #@19
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v1

    #@1d
    .local v1, "apnContext$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_6

    #@23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@29
    .line 796
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    const/4 v4, 0x0

    #@2a
    .line 798
    .local v4, "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v6, "setupDataOnConnectableApns: apnContext "

    #@32
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v5

    #@3a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@41
    .line 799
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@44
    move-result-object v5

    #@45
    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@47
    if-eq v5, v6, :cond_1

    #@49
    .line 800
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@4c
    move-result-object v5

    #@4d
    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    #@4f
    if-ne v5, v6, :cond_2

    #@51
    .line 801
    :cond_1
    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    #@53
    if-ne p2, v5, :cond_3

    #@55
    .line 802
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->releaseDataConnection(Ljava/lang/String;)V

    #@58
    .line 820
    .end local v4    # "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectable()Z

    #@5b
    move-result v5

    #@5c
    if-eqz v5, :cond_0

    #@5e
    .line 821
    const-string/jumbo v5, "setupDataOnConnectableApns: isConnectable() call trySetupData"

    #@61
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@64
    .line 822
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@67
    .line 823
    invoke-direct {p0, v0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/util/ArrayList;)Z

    #@6a
    goto :goto_0

    #@6b
    .line 803
    .restart local v4    # "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConcurrentVoiceAndDataAllowed()Z

    #@6e
    move-result v5

    #@6f
    if-nez v5, :cond_4

    #@71
    .line 804
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@73
    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@76
    move-result-object v5

    #@77
    invoke-virtual {v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    #@7a
    move-result v5

    #@7b
    .line 803
    if-eqz v5, :cond_4

    #@7d
    .line 806
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->releaseDataConnection(Ljava/lang/String;)V

    #@80
    goto :goto_1

    #@81
    .line 809
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@83
    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    #@86
    move-result-object v5

    #@87
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@8a
    move-result v3

    #@8b
    .line 810
    .local v3, "radioTech":I
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getOriginalWaitingApns()Ljava/util/ArrayList;

    #@8e
    move-result-object v2

    #@8f
    .line 811
    .local v2, "originalApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    if-eqz v2, :cond_2

    #@91
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@94
    move-result v5

    #@95
    if-nez v5, :cond_2

    #@97
    .line 812
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@9a
    move-result-object v5

    #@9b
    invoke-direct {p0, v5, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->buildWaitingApns(Ljava/lang/String;I)Ljava/util/ArrayList;

    #@9e
    move-result-object v4

    #@9f
    .line 813
    .local v4, "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@a2
    move-result v5

    #@a3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@a6
    move-result v6

    #@a7
    if-ne v5, v6, :cond_5

    #@a9
    .line 814
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    #@ac
    move-result v5

    #@ad
    if-nez v5, :cond_2

    #@af
    .line 815
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->releaseDataConnection(Ljava/lang/String;)V

    #@b2
    goto :goto_1

    #@b3
    .line 792
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v2    # "originalApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    .end local v3    # "radioTech":I
    .end local v4    # "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    :cond_6
    return-void
.end method

.method private startAlarmForReconnect(ILcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 10
    .param p1, "delay"    # I
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@0
    .prologue
    .line 1446
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 1448
    .local v1, "apnType":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    #@6
    new-instance v4, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v5, "com.android.internal.telephony.data-reconnect."

    #@e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1d
    .line 1449
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "reconnect_alarm_extra_reason"

    #@20
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@27
    .line 1450
    const-string/jumbo v4, "reconnect_alarm_extra_type"

    #@2a
    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@2d
    .line 1453
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    #@30
    move-result v3

    #@31
    .line 1454
    .local v3, "subId":I
    const-string/jumbo v4, "subscription"

    #@34
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@37
    .line 1457
    new-instance v4, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v5, "startAlarmForReconnect: delay="

    #@3f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    const-string/jumbo v5, " action="

    #@4a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v4

    #@4e
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@51
    move-result-object v5

    #@52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    .line 1458
    const-string/jumbo v5, " apn="

    #@59
    .line 1457
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v4

    #@5d
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v4

    #@65
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@68
    .line 1461
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@6a
    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@6d
    move-result-object v4

    #@6e
    const/4 v5, 0x0

    #@6f
    .line 1462
    const/high16 v6, 0x8000000

    #@71
    .line 1461
    invoke-static {v4, v5, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@74
    move-result-object v0

    #@75
    .line 1463
    .local v0, "alarmIntent":Landroid/app/PendingIntent;
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReconnectIntent(Landroid/app/PendingIntent;)V

    #@78
    .line 1464
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAlarmManager:Landroid/app/AlarmManager;

    #@7a
    .line 1465
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7d
    move-result-wide v6

    #@7e
    int-to-long v8, p1

    #@7f
    add-long/2addr v6, v8

    #@80
    .line 1464
    const/4 v5, 0x2

    #@81
    invoke-virtual {v4, v5, v6, v7, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    #@84
    .line 1445
    return-void
.end method

.method private startAlarmForRestartTrySetup(ILcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 8
    .param p1, "delay"    # I
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@0
    .prologue
    .line 1469
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 1470
    .local v1, "apnType":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    #@6
    new-instance v3, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v4, "com.android.internal.telephony.data-restart-trysetup."

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1d
    .line 1471
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "restart_trysetup_alarm_extra_type"

    #@20
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@23
    .line 1474
    new-instance v3, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v4, "startAlarmForRestartTrySetup: delay="

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    const-string/jumbo v4, " action="

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    .line 1475
    const-string/jumbo v4, " apn="

    #@45
    .line 1474
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@54
    .line 1477
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@56
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@59
    move-result-object v3

    #@5a
    const/4 v4, 0x0

    #@5b
    .line 1478
    const/high16 v5, 0x8000000

    #@5d
    .line 1477
    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@60
    move-result-object v0

    #@61
    .line 1479
    .local v0, "alarmIntent":Landroid/app/PendingIntent;
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReconnectIntent(Landroid/app/PendingIntent;)V

    #@64
    .line 1480
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAlarmManager:Landroid/app/AlarmManager;

    #@66
    .line 1481
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@69
    move-result-wide v4

    #@6a
    int-to-long v6, p1

    #@6b
    add-long/2addr v4, v6

    #@6c
    .line 1480
    const/4 v6, 0x2

    #@6d
    invoke-virtual {v3, v6, v4, v5, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    #@70
    .line 1468
    return-void
.end method

.method private teardownForDun()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1091
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@3
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@a
    move-result v0

    #@b
    .line 1092
    .local v0, "rilRat":I
    invoke-static {v0}, Landroid/telephony/ServiceState;->isCdma(I)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    return v1

    #@12
    .line 1094
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->fetchDunApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@15
    move-result-object v2

    #@16
    if-eqz v2, :cond_1

    #@18
    :goto_0
    return v1

    #@19
    :cond_1
    const/4 v1, 0x0

    #@1a
    goto :goto_0
.end method

.method private trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 1
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@0
    .prologue
    .line 829
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/util/ArrayList;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method private trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/util/ArrayList;)Z
    .locals 11
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/dataconnection/ApnContext;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    const/4 v10, 0x0

    #@1
    .line 834
    new-instance v7, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v8, "trySetupData for type:"

    #@9
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v7

    #@d
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@10
    move-result-object v8

    #@11
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v7

    #@15
    .line 835
    const-string/jumbo v8, " due to "

    #@18
    .line 834
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v7

    #@1c
    .line 835
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@1f
    move-result-object v8

    #@20
    .line 834
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v7

    #@24
    .line 835
    const-string/jumbo v8, " apnContext="

    #@27
    .line 834
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v7

    #@2b
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v7

    #@2f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v7

    #@33
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@36
    .line 836
    new-instance v7, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v8, "trySetupData with mIsPsRestricted="

    #@3e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v7

    #@42
    iget-boolean v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    #@44
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@47
    move-result-object v7

    #@48
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v7

    #@4c
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@4f
    .line 838
    new-instance v7, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v8, "trySetupData due to "

    #@57
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v7

    #@5b
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@5e
    move-result-object v8

    #@5f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v7

    #@63
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v7

    #@67
    invoke-virtual {p1, v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@6a
    .line 840
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@6c
    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    #@6f
    move-result-object v7

    #@70
    if-eqz v7, :cond_0

    #@72
    .line 843
    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    #@74
    invoke-virtual {p1, v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@77
    .line 844
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@79
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@7c
    move-result-object v8

    #@7d
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@80
    move-result-object v9

    #@81
    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    #@84
    .line 846
    const-string/jumbo v7, "trySetupData: X We\'re on the simulator; assuming connected retValue=true"

    #@87
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@8a
    .line 847
    const/4 v7, 0x1

    #@8b
    return v7

    #@8c
    .line 852
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@8f
    move-result-object v7

    #@90
    const-string/jumbo v8, "emergency"

    #@93
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@96
    move-result v2

    #@97
    .line 853
    .local v2, "isEmergencyApn":Z
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@99
    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@9c
    move-result-object v5

    #@9d
    .line 854
    .local v5, "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    invoke-virtual {v5}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    #@a0
    move-result v1

    #@a1
    .line 856
    .local v1, "desiredPowerState":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@a4
    move-result-object v7

    #@a5
    const-string/jumbo v8, "ims"

    #@a8
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ab
    move-result v7

    #@ac
    if-eqz v7, :cond_6

    #@ae
    const/4 v0, 0x0

    #@af
    .line 858
    .local v0, "checkUserDataEnabled":Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectable()Z

    #@b2
    move-result v7

    #@b3
    if-eqz v7, :cond_1

    #@b5
    if-nez v2, :cond_7

    #@b7
    .line 859
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowed(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    #@ba
    move-result v7

    #@bb
    if-eqz v7, :cond_1

    #@bd
    .line 860
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getAnyDataEnabled(Z)Z

    #@c0
    move-result v7

    #@c1
    .line 859
    if-eqz v7, :cond_1

    #@c3
    .line 860
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isEmergency()Z

    #@c6
    move-result v7

    #@c7
    if-eqz v7, :cond_7

    #@c9
    .line 899
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@cc
    move-result-object v7

    #@cd
    const-string/jumbo v8, "default"

    #@d0
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d3
    move-result v7

    #@d4
    if-nez v7, :cond_2

    #@d6
    .line 900
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectable()Z

    #@d9
    move-result v7

    #@da
    .line 899
    if-eqz v7, :cond_2

    #@dc
    .line 901
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@de
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@e1
    move-result-object v8

    #@e2
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@e5
    move-result-object v9

    #@e6
    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    #@e9
    .line 903
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@ec
    move-result-object v7

    #@ed
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    #@f0
    .line 904
    const-string/jumbo v6, "trySetupData: X apnContext not \'ready\' retValue=false"

    #@f3
    .line 905
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@f6
    .line 907
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@f9
    .line 908
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectable()Z

    #@fc
    move-result v7

    #@fd
    if-nez v7, :cond_3

    #@ff
    const-string/jumbo v7, "apnContext.isConnectable = false"

    #@102
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@105
    .line 909
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowed(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    #@108
    move-result v7

    #@109
    if-nez v7, :cond_4

    #@10b
    const-string/jumbo v7, "isDataAllowed = false"

    #@10e
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@111
    .line 910
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getAnyDataEnabled(Z)Z

    #@114
    move-result v7

    #@115
    if-nez v7, :cond_5

    #@117
    .line 911
    new-instance v7, Ljava/lang/StringBuilder;

    #@119
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@11c
    const-string/jumbo v8, "getAnyDataEnabled("

    #@11f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v7

    #@123
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@126
    move-result-object v7

    #@127
    const-string/jumbo v8, ") = false"

    #@12a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v7

    #@12e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@131
    move-result-object v7

    #@132
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@135
    .line 914
    :cond_5
    return v10

    #@136
    .line 856
    .end local v0    # "checkUserDataEnabled":Z
    .end local v6    # "str":Ljava/lang/String;
    :cond_6
    const/4 v0, 0x1

    #@137
    .restart local v0    # "checkUserDataEnabled":Z
    goto/16 :goto_0

    #@139
    .line 861
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@13c
    move-result-object v7

    #@13d
    sget-object v8, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@13f
    if-ne v7, v8, :cond_8

    #@141
    .line 862
    const-string/jumbo v6, "trySetupData: make a FAILED ApnContext IDLE so its reusable"

    #@144
    .line 863
    .restart local v6    # "str":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@147
    .line 864
    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@14a
    .line 865
    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@14c
    invoke-virtual {p1, v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@14f
    .line 867
    .end local v6    # "str":Ljava/lang/String;
    :cond_8
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@151
    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    #@154
    move-result-object v7

    #@155
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@158
    move-result v3

    #@159
    .line 868
    .local v3, "radioTech":I
    invoke-virtual {v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    #@15c
    move-result v7

    #@15d
    invoke-virtual {p1, v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setConcurrentVoiceAndDataAllowed(Z)V

    #@160
    .line 869
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@163
    move-result-object v7

    #@164
    sget-object v8, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@166
    if-ne v7, v8, :cond_b

    #@168
    .line 870
    if-nez p2, :cond_9

    #@16a
    .line 871
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@16d
    move-result-object v7

    #@16e
    invoke-direct {p0, v7, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->buildWaitingApns(Ljava/lang/String;I)Ljava/util/ArrayList;

    #@171
    move-result-object p2

    #@172
    .line 873
    :cond_9
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    #@175
    move-result v7

    #@176
    if-eqz v7, :cond_a

    #@178
    .line 874
    sget-object v7, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@17a
    invoke-direct {p0, v7, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyNoData(Lcom/android/internal/telephony/dataconnection/DcFailCause;Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@17d
    .line 875
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@180
    move-result-object v7

    #@181
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    #@184
    .line 876
    const-string/jumbo v6, "trySetupData: X No APN found retValue=false"

    #@187
    .line 877
    .restart local v6    # "str":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@18a
    .line 878
    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@18d
    .line 879
    return v10

    #@18e
    .line 881
    .end local v6    # "str":Ljava/lang/String;
    :cond_a
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setWaitingApns(Ljava/util/ArrayList;)V

    #@191
    .line 883
    new-instance v7, Ljava/lang/StringBuilder;

    #@193
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@196
    const-string/jumbo v8, "trySetupData: Create from mAllApnSettings : "

    #@199
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19c
    move-result-object v7

    #@19d
    .line 884
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@19f
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    #@1a2
    move-result-object v8

    #@1a3
    .line 883
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a6
    move-result-object v7

    #@1a7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1aa
    move-result-object v7

    #@1ab
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1ae
    .line 890
    :cond_b
    new-instance v7, Ljava/lang/StringBuilder;

    #@1b0
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1b3
    const-string/jumbo v8, "trySetupData: call setupData, waitingApns : "

    #@1b6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b9
    move-result-object v7

    #@1ba
    .line 891
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    #@1bd
    move-result-object v8

    #@1be
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    #@1c1
    move-result-object v8

    #@1c2
    .line 890
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c5
    move-result-object v7

    #@1c6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c9
    move-result-object v7

    #@1ca
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1cd
    .line 893
    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupData(Lcom/android/internal/telephony/dataconnection/ApnContext;I)Z

    #@1d0
    move-result v4

    #@1d1
    .line 894
    .local v4, "retValue":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@1d4
    move-result-object v7

    #@1d5
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    #@1d8
    .line 896
    new-instance v7, Ljava/lang/StringBuilder;

    #@1da
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1dd
    const-string/jumbo v8, "trySetupData: X retValue="

    #@1e0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e3
    move-result-object v7

    #@1e4
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1e7
    move-result-object v7

    #@1e8
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1eb
    move-result-object v7

    #@1ec
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1ef
    .line 897
    return v4
.end method

.method private xorEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "first"    # Ljava/lang/String;
    .param p2, "second"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2359
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 2360
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v0

    #@a
    .line 2359
    if-nez v0, :cond_0

    #@c
    .line 2361
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@f
    move-result v0

    #@10
    .line 2359
    :goto_0
    return v0

    #@11
    :cond_0
    const/4 v0, 0x1

    #@12
    goto :goto_0
.end method


# virtual methods
.method public cleanUpAllConnections(Ljava/lang/String;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2792
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;Landroid/os/Message;)V

    #@4
    .line 2791
    return-void
.end method

.method public cleanUpAllConnections(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/String;
    .param p2, "disconnectAllCompleteMsg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2800
    const-string/jumbo v1, "cleanUpAllConnections"

    #@3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 2801
    if-eqz p2, :cond_0

    #@8
    .line 2802
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d
    .line 2805
    :cond_0
    const v1, 0x4201d

    #@10
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    #@13
    move-result-object v0

    #@14
    .line 2806
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@16
    .line 2807
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    #@19
    .line 2799
    return-void
.end method

.method protected cleanUpAllConnections(ZLjava/lang/String;)Z
    .locals 6
    .param p1, "tearDown"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 948
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v5, "cleanUpAllConnections: tearDown="

    #@8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@f
    move-result-object v4

    #@10
    const-string/jumbo v5, " reason="

    #@13
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@22
    .line 949
    const/4 v2, 0x0

    #@23
    .line 950
    .local v2, "didDisconnect":Z
    const/4 v3, 0x0

    #@24
    .line 952
    .local v3, "specificdisable":Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@27
    move-result v4

    #@28
    if-nez v4, :cond_0

    #@2a
    .line 953
    const-string/jumbo v4, "specificDisabled"

    #@2d
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v3

    #@31
    .line 956
    .end local v3    # "specificdisable":Z
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@33
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@36
    move-result-object v4

    #@37
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3a
    move-result-object v1

    #@3b
    .local v1, "apnContext$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@3e
    move-result v4

    #@3f
    if-eqz v4, :cond_4

    #@41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@44
    move-result-object v0

    #@45
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@47
    .line 957
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    #@4a
    move-result v4

    #@4b
    if-nez v4, :cond_2

    #@4d
    const/4 v2, 0x1

    #@4e
    .line 958
    :cond_2
    if-eqz v3, :cond_3

    #@50
    .line 959
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@53
    move-result-object v4

    #@54
    const-string/jumbo v5, "ims"

    #@57
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5a
    move-result v4

    #@5b
    if-nez v4, :cond_1

    #@5d
    .line 960
    new-instance v4, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v5, "ApnConextType: "

    #@65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v4

    #@69
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@6c
    move-result-object v5

    #@6d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v4

    #@71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v4

    #@75
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@78
    .line 961
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@7b
    .line 962
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@7e
    goto :goto_0

    #@7f
    .line 966
    :cond_3
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@82
    .line 967
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@85
    goto :goto_0

    #@86
    .line 971
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    #@89
    .line 972
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    #@8c
    .line 975
    const-string/jumbo v4, "default"

    #@8f
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRequestedApnType:Ljava/lang/String;

    #@91
    .line 977
    new-instance v4, Ljava/lang/StringBuilder;

    #@93
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@96
    const-string/jumbo v5, "cleanUpConnection: mDisconnectPendingCount = "

    #@99
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v4

    #@9d
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@9f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v4

    #@a3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v4

    #@a7
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@aa
    .line 978
    if-eqz p1, :cond_5

    #@ac
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@ae
    if-nez v4, :cond_5

    #@b0
    .line 979
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataDisconnectComplete()V

    #@b3
    .line 980
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyAllDataDisconnected()V

    #@b6
    .line 983
    :cond_5
    return v2
.end method

.method protected cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 8
    .param p1, "tearDown"    # Z
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1003
    if-nez p2, :cond_0

    #@3
    .line 1004
    const-string/jumbo v4, "cleanUpConnection: apn context is null"

    #@6
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@9
    .line 1005
    return-void

    #@a
    .line 1008
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@d
    move-result-object v0

    #@e
    .line 1009
    .local v0, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    new-instance v4, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v5, "cleanUpConnection: tearDown="

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    const-string/jumbo v5, " reason="

    #@21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    .line 1010
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    .line 1009
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    .line 1011
    .local v3, "str":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    const-string/jumbo v5, " apnContext="

    #@3d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@4c
    .line 1012
    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@4f
    .line 1013
    if-eqz p1, :cond_9

    #@51
    .line 1014
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    #@54
    move-result v4

    #@55
    if-eqz v4, :cond_4

    #@57
    .line 1017
    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@59
    invoke-virtual {p2, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@5c
    .line 1018
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    #@5f
    move-result v4

    #@60
    if-nez v4, :cond_2

    #@62
    .line 1019
    if-eqz v0, :cond_1

    #@64
    .line 1020
    const-string/jumbo v3, "cleanUpConnection: teardown, disconnectd, !ready"

    #@67
    .line 1021
    new-instance v4, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v4

    #@70
    const-string/jumbo v5, " apnContext="

    #@73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v4

    #@77
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v4

    #@7b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v4

    #@7f
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@82
    .line 1022
    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@85
    .line 1023
    const-string/jumbo v4, ""

    #@88
    invoke-virtual {v0, p2, v4, v7}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->tearDown(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V

    #@8b
    .line 1025
    :cond_1
    invoke-virtual {p2, v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    #@8e
    .line 1078
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    #@90
    .line 1079
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cancelReconnectAlarm(Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@93
    .line 1081
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    const-string/jumbo v5, "cleanUpConnection: X tearDown="

    #@9b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v4

    #@9f
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v4

    #@a3
    const-string/jumbo v5, " reason="

    #@a6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v4

    #@aa
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@ad
    move-result-object v5

    #@ae
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v4

    #@b2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b5
    move-result-object v3

    #@b6
    .line 1082
    new-instance v4, Ljava/lang/StringBuilder;

    #@b8
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@bb
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v4

    #@bf
    const-string/jumbo v5, " apnContext="

    #@c2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v4

    #@c6
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v4

    #@ca
    const-string/jumbo v5, " dcac="

    #@cd
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v4

    #@d1
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@d4
    move-result-object v5

    #@d5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v4

    #@d9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dc
    move-result-object v4

    #@dd
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@e0
    .line 1083
    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@e3
    .line 1001
    return-void

    #@e4
    .line 1029
    :cond_4
    if-eqz v0, :cond_8

    #@e6
    .line 1030
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@e9
    move-result-object v4

    #@ea
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    #@ec
    if-eq v4, v5, :cond_2

    #@ee
    .line 1031
    const/4 v1, 0x0

    #@ef
    .line 1032
    .local v1, "disconnectAll":Z
    const-string/jumbo v4, "dun"

    #@f2
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@f5
    move-result-object v5

    #@f6
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f9
    move-result v4

    #@fa
    if-eqz v4, :cond_5

    #@fc
    .line 1035
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->teardownForDun()Z

    #@ff
    move-result v4

    #@100
    if-eqz v4, :cond_5

    #@102
    .line 1037
    const-string/jumbo v4, "cleanUpConnection: disconnectAll DUN connection"

    #@105
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@108
    .line 1043
    const/4 v1, 0x1

    #@109
    .line 1046
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    #@10b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10e
    const-string/jumbo v5, "cleanUpConnection: tearing down"

    #@111
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v5

    #@115
    if-eqz v1, :cond_6

    #@117
    const-string/jumbo v4, " all"

    #@11a
    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v4

    #@11e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@121
    move-result-object v3

    #@122
    .line 1047
    new-instance v4, Ljava/lang/StringBuilder;

    #@124
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@127
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v4

    #@12b
    const-string/jumbo v5, "apnContext="

    #@12e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v4

    #@132
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@135
    move-result-object v4

    #@136
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@139
    move-result-object v4

    #@13a
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@13d
    .line 1048
    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@140
    .line 1049
    const v4, 0x4200f

    #@143
    invoke-virtual {p0, v4, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@146
    move-result-object v2

    #@147
    .line 1050
    .local v2, "msg":Landroid/os/Message;
    if-eqz v1, :cond_7

    #@149
    .line 1051
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@14c
    move-result-object v4

    #@14d
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@150
    move-result-object v5

    #@151
    invoke-virtual {v4, v5, v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->tearDownAll(Ljava/lang/String;Landroid/os/Message;)V

    #@154
    .line 1056
    :goto_2
    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    #@156
    invoke-virtual {p2, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@159
    .line 1057
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@15b
    add-int/lit8 v4, v4, 0x1

    #@15d
    iput v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@15f
    goto/16 :goto_0

    #@161
    .line 1046
    .end local v2    # "msg":Landroid/os/Message;
    :cond_6
    const-string/jumbo v4, ""

    #@164
    goto :goto_1

    #@165
    .line 1053
    .restart local v2    # "msg":Landroid/os/Message;
    :cond_7
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@168
    move-result-object v4

    #@169
    .line 1054
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@16c
    move-result-object v5

    #@16d
    .line 1053
    invoke-virtual {v4, p2, v5, v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->tearDown(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V

    #@170
    goto :goto_2

    #@171
    .line 1062
    .end local v1    # "disconnectAll":Z
    .end local v2    # "msg":Landroid/os/Message;
    :cond_8
    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@173
    invoke-virtual {p2, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@176
    .line 1063
    const-string/jumbo v4, "cleanUpConnection: connected, bug no DCAC"

    #@179
    invoke-virtual {p2, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@17c
    .line 1064
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@17e
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@181
    move-result-object v5

    #@182
    .line 1065
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@185
    move-result-object v6

    #@186
    .line 1064
    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    #@189
    goto/16 :goto_0

    #@18b
    .line 1070
    :cond_9
    if-eqz v0, :cond_a

    #@18d
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->reqReset()V

    #@190
    .line 1071
    :cond_a
    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@192
    invoke-virtual {p2, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@195
    .line 1072
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@197
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@19a
    move-result-object v5

    #@19b
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@19e
    move-result-object v6

    #@19f
    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    #@1a2
    .line 1073
    invoke-virtual {p2, v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    #@1a5
    goto/16 :goto_0
.end method

.method protected completeConnection(Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 7
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 1779
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isProvisioningApn()Z

    #@5
    move-result v1

    #@6
    .line 1781
    .local v1, "isProvApn":Z
    new-instance v3, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v4, "completeConnection: successful, notify the world apnContext="

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1d
    .line 1783
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsProvisioning:Z

    #@1f
    if-eqz v3, :cond_0

    #@21
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    #@23
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_2

    #@29
    .line 1799
    :cond_0
    :goto_0
    iput-boolean v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsProvisioning:Z

    #@2b
    .line 1800
    iput-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    #@2d
    .line 1801
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    #@2f
    if-eqz v3, :cond_1

    #@31
    .line 1803
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    #@33
    .line 1802
    const v4, 0x4202a

    #@36
    invoke-virtual {p0, v4, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    #@3d
    .line 1806
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@3f
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@46
    move-result-object v5

    #@47
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    #@4a
    .line 1807
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startNetStatPoll()V

    #@4d
    .line 1808
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    #@50
    .line 1778
    return-void

    #@51
    .line 1785
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v4, "completeConnection: MOBILE_PROVISIONING_ACTION url="

    #@59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v3

    #@5d
    .line 1786
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    #@5f
    .line 1785
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v3

    #@63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v3

    #@67
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6a
    .line 1788
    const-string/jumbo v3, "android.intent.action.MAIN"

    #@6d
    .line 1789
    const-string/jumbo v4, "android.intent.category.APP_BROWSER"

    #@70
    .line 1788
    invoke-static {v3, v4}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@73
    move-result-object v2

    #@74
    .line 1790
    .local v2, "newIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    #@76
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@79
    move-result-object v3

    #@7a
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@7d
    .line 1791
    const/high16 v3, 0x10400000

    #@7f
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@82
    .line 1794
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@84
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@87
    move-result-object v3

    #@88
    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@8b
    goto :goto_0

    #@8c
    .line 1795
    :catch_0
    move-exception v0

    #@8d
    .line 1796
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    const-string/jumbo v4, "completeConnection: startActivityAsUser failed"

    #@95
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v3

    #@99
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v3

    #@9d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v3

    #@a1
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@a4
    goto :goto_0
.end method

.method public decApnRefCount(Ljava/lang/String;Landroid/util/LocalLog;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "log"    # Landroid/util/LocalLog;

    #@0
    .prologue
    .line 266
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@8
    .line 267
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "DcTracker.decApnRefCount on "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, " found "

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
    invoke-virtual {p2, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@2a
    .line 268
    if-eqz v0, :cond_0

    #@2c
    .line 269
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->decRefCount(Landroid/util/LocalLog;)V

    #@2f
    .line 265
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 213
    const-string/jumbo v0, "DcTracker.dispose"

    #@4
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@7
    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 216
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@d
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@13
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@16
    .line 217
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@18
    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    #@1e
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    #@21
    .line 221
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    #@23
    .line 224
    :cond_1
    const/4 v0, 0x1

    #@24
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    #@27
    .line 226
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dispose()V

    #@2a
    .line 228
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2c
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@33
    move-result-object v0

    #@34
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

    #@36
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    #@39
    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@3b
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    #@3e
    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPrioritySortedApnContexts:Ljava/util/PriorityQueue;

    #@40
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    #@43
    .line 232
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->destroyDataConnections()V

    #@46
    .line 212
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2910
    const-string/jumbo v0, "DcTracker extends:"

    #@3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 2911
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@9
    .line 2912
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v1, " mReregisterOnReconnectFailure="

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReregisterOnReconnectFailure:Z

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22
    .line 2913
    new-instance v0, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v1, " canSetPreferApn="

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3b
    .line 2914
    new-instance v0, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v1, " mApnObserver="

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

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
    .line 2915
    new-instance v0, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v1, " getOverallState="

    #@5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v0

    #@68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v0

    #@6c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6f
    .line 2916
    new-instance v0, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v1, " mDataConnectionAsyncChannels=%s\n"

    #@77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v0

    #@7b
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    #@7d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v0

    #@81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v0

    #@85
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@88
    .line 2917
    new-instance v0, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const-string/jumbo v1, " mAttached="

    #@90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v0

    #@94
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@96
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@99
    move-result v1

    #@9a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v0

    #@9e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v0

    #@a2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a5
    .line 2909
    return-void
.end method

.method protected finalize()V
    .locals 1

    #@0
    .prologue
    .line 400
    const-string/jumbo v0, "finalize"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 399
    return-void
.end method

.method public getActiveApnString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 509
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@3
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@9
    .line 510
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    #@b
    .line 511
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@e
    move-result-object v1

    #@f
    .line 512
    .local v1, "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v1, :cond_0

    #@11
    .line 513
    iget-object v2, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@13
    return-object v2

    #@14
    .line 516
    .end local v1    # "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_0
    return-object v3
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 493
    const-string/jumbo v3, "get all active apn types"

    #@3
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 494
    new-instance v2, Ljava/util/ArrayList;

    #@8
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@b
    .line 496
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@d
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@10
    move-result-object v3

    #@11
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v1

    #@15
    .local v1, "apnContext$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_1

    #@1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@21
    .line 497
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@23
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_0

    #@29
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_0

    #@2f
    .line 498
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@36
    goto :goto_0

    #@37
    .line 502
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_1
    const/4 v3, 0x0

    #@38
    new-array v3, v3, [Ljava/lang/String;

    #@3a
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@3d
    move-result-object v3

    #@3e
    check-cast v3, [Ljava/lang/String;

    #@40
    return-object v3
.end method

.method public getAnyDataEnabled()Z
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 624
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledLock:Ljava/lang/Object;

    #@3
    monitor-enter v4

    #@4
    .line 625
    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInternalDataEnabled:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    #@a
    if-eqz v2, :cond_0

    #@c
    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/DcTracker;->sPolicyDataEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :goto_0
    if-nez v2, :cond_1

    #@10
    monitor-exit v4

    #@11
    return v3

    #@12
    :cond_0
    move v2, v3

    #@13
    goto :goto_0

    #@14
    .line 626
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@16
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@19
    move-result-object v2

    #@1a
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v1

    #@1e
    .local v1, "apnContext$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_3

    #@24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@2a
    .line 629
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowed(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    move-result v2

    #@2e
    if-eqz v2, :cond_2

    #@30
    .line 630
    const/4 v2, 0x1

    #@31
    monitor-exit v4

    #@32
    return v2

    #@33
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_3
    monitor-exit v4

    #@34
    .line 633
    return v3

    #@35
    .line 624
    .end local v1    # "apnContext$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@36
    monitor-exit v4

    #@37
    throw v2
.end method

.method public getAnyDataEnabled(Z)Z
    .locals 6
    .param p1, "checkUserDataEnabled"    # Z

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 638
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledLock:Ljava/lang/Object;

    #@4
    monitor-enter v5

    #@5
    .line 639
    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInternalDataEnabled:Z

    #@7
    if-eqz v2, :cond_2

    #@9
    if-eqz p1, :cond_0

    #@b
    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    #@d
    if-eqz v2, :cond_2

    #@f
    .line 640
    :cond_0
    if-eqz p1, :cond_1

    #@11
    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/DcTracker;->sPolicyDataEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 639
    :goto_0
    if-nez v2, :cond_3

    #@15
    monitor-exit v5

    #@16
    .line 641
    return v4

    #@17
    :cond_1
    move v2, v3

    #@18
    .line 640
    goto :goto_0

    #@19
    :cond_2
    move v2, v4

    #@1a
    .line 639
    goto :goto_0

    #@1b
    .line 643
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@1d
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@20
    move-result-object v2

    #@21
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object v1

    #@25
    .local v1, "apnContext$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_5

    #@2b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@31
    .line 646
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowed(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    move-result v2

    #@35
    if-eqz v2, :cond_4

    #@37
    monitor-exit v5

    #@38
    .line 647
    return v3

    #@39
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_5
    monitor-exit v5

    #@3a
    .line 650
    return v4

    #@3b
    .line 638
    .end local v1    # "apnContext$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@3c
    monitor-exit v5

    #@3d
    throw v2
.end method

.method public getApnPriority(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 289
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@8
    .line 290
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_0

    #@a
    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Request for unsupported mobile name: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@21
    .line 293
    :cond_0
    iget v1, v0, Lcom/android/internal/telephony/dataconnection/ApnContext;->priority:I

    #@23
    return v1
.end method

.method protected getApnProfileID(Ljava/lang/String;)I
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2713
    const-string/jumbo v0, "ims"

    #@4
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 2714
    const/4 v0, 0x2

    #@b
    return v0

    #@c
    .line 2715
    :cond_0
    const-string/jumbo v0, "fota"

    #@f
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 2716
    const/4 v0, 0x3

    #@16
    return v0

    #@17
    .line 2717
    :cond_1
    const-string/jumbo v0, "cbs"

    #@1a
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_2

    #@20
    .line 2718
    const/4 v0, 0x4

    #@21
    return v0

    #@22
    .line 2719
    :cond_2
    const-string/jumbo v0, "ia"

    #@25
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_3

    #@2b
    .line 2720
    return v1

    #@2c
    .line 2721
    :cond_3
    const-string/jumbo v0, "dun"

    #@2f
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@32
    move-result v0

    #@33
    if-eqz v0, :cond_4

    #@35
    .line 2722
    const/4 v0, 0x1

    #@36
    return v0

    #@37
    .line 2724
    :cond_4
    return v1
.end method

.method public getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 462
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@8
    .line 463
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    #@a
    .line 464
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@d
    move-result-object v1

    #@e
    .line 465
    .local v1, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-eqz v1, :cond_0

    #@10
    .line 466
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "return link properites for "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@27
    .line 467
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getLinkPropertiesSync()Landroid/net/LinkProperties;

    #@2a
    move-result-object v2

    #@2b
    return-object v2

    #@2c
    .line 470
    .end local v1    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_0
    const-string/jumbo v2, "return new LinkProperties"

    #@2f
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@32
    .line 471
    new-instance v2, Landroid/net/LinkProperties;

    #@34
    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    #@37
    return-object v2
.end method

.method public getNetworkCapabilities(Ljava/lang/String;)Landroid/net/NetworkCapabilities;
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 476
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@8
    .line 477
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    #@a
    .line 478
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@d
    move-result-object v1

    #@e
    .line 479
    .local v1, "dataConnectionAc":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-eqz v1, :cond_0

    #@10
    .line 481
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "get active pdp is not null, return NetworkCapabilities for "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@27
    .line 483
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getNetworkCapabilitiesSync()Landroid/net/NetworkCapabilities;

    #@2a
    move-result-object v2

    #@2b
    return-object v2

    #@2c
    .line 486
    .end local v1    # "dataConnectionAc":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_0
    const-string/jumbo v2, "return new NetworkCapabilities"

    #@2f
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@32
    .line 487
    new-instance v2, Landroid/net/NetworkCapabilities;

    #@34
    invoke-direct {v2}, Landroid/net/NetworkCapabilities;-><init>()V

    #@37
    return-object v2
.end method

.method public getOverallState()Lcom/android/internal/telephony/DctConstants$State;
    .locals 7

    #@0
    .prologue
    .line 556
    const/4 v3, 0x0

    #@1
    .line 557
    .local v3, "isConnecting":Z
    const/4 v4, 0x1

    #@2
    .line 558
    .local v4, "isFailed":Z
    const/4 v2, 0x0

    #@3
    .line 560
    .local v2, "isAnyEnabled":Z
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@5
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@8
    move-result-object v5

    #@9
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .local v1, "apnContext$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v5

    #@11
    if-eqz v5, :cond_1

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@19
    .line 561
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    #@1c
    move-result v5

    #@1d
    if-eqz v5, :cond_0

    #@1f
    .line 562
    const/4 v2, 0x1

    #@20
    .line 563
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-getcom_android_internal_telephony_DctConstants$StateSwitchesValues()[I

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@27
    move-result-object v6

    #@28
    invoke-virtual {v6}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@2b
    move-result v6

    #@2c
    aget v5, v5, v6

    #@2e
    packed-switch v5, :pswitch_data_0

    #@31
    .line 578
    :pswitch_0
    const/4 v2, 0x1

    #@32
    .line 579
    goto :goto_0

    #@33
    .line 566
    :pswitch_1
    const-string/jumbo v5, "overall state is CONNECTED"

    #@36
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@39
    .line 567
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    #@3b
    return-object v5

    #@3c
    .line 570
    :pswitch_2
    const/4 v3, 0x1

    #@3d
    .line 571
    const/4 v4, 0x0

    #@3e
    .line 572
    goto :goto_0

    #@3f
    .line 575
    :pswitch_3
    const/4 v4, 0x0

    #@40
    .line 576
    goto :goto_0

    #@41
    .line 584
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_1
    if-nez v2, :cond_2

    #@43
    .line 585
    const-string/jumbo v5, "overall state is IDLE"

    #@46
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@49
    .line 586
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@4b
    return-object v5

    #@4c
    .line 589
    :cond_2
    if-eqz v3, :cond_3

    #@4e
    .line 590
    const-string/jumbo v5, "overall state is CONNECTING"

    #@51
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@54
    .line 591
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    #@56
    return-object v5

    #@57
    .line 592
    :cond_3
    if-nez v4, :cond_4

    #@59
    .line 593
    const-string/jumbo v5, "overall state is IDLE"

    #@5c
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@5f
    .line 594
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@61
    return-object v5

    #@62
    .line 596
    :cond_4
    const-string/jumbo v5, "overall state is FAILED"

    #@65
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@68
    .line 597
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@6a
    return-object v5

    #@6b
    .line 563
    nop

    #@6c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2922
    const-string/jumbo v4, "getPcscfAddress()"

    #@4
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@7
    .line 2923
    const/4 v0, 0x0

    #@8
    .line 2925
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez p1, :cond_0

    #@a
    .line 2926
    const-string/jumbo v4, "apnType is null, return null"

    #@d
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@10
    .line 2927
    return-object v6

    #@11
    .line 2930
    :cond_0
    const-string/jumbo v4, "emergency"

    #@14
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_1

    #@1a
    .line 2931
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@1c
    const-string/jumbo v5, "emergency"

    #@1f
    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@25
    .line 2939
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :goto_0
    if-nez v0, :cond_3

    #@27
    .line 2940
    const-string/jumbo v4, "apnContext is null, return null"

    #@2a
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@2d
    .line 2941
    return-object v6

    #@2e
    .line 2932
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_1
    const-string/jumbo v4, "ims"

    #@31
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@34
    move-result v4

    #@35
    if-eqz v4, :cond_2

    #@37
    .line 2933
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@39
    const-string/jumbo v5, "ims"

    #@3c
    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    move-result-object v0

    #@40
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@42
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    goto :goto_0

    #@43
    .line 2935
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_2
    const-string/jumbo v4, "apnType is invalid, return null"

    #@46
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@49
    .line 2936
    return-object v6

    #@4a
    .line 2944
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@4d
    move-result-object v1

    #@4e
    .line 2945
    .local v1, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    const/4 v3, 0x0

    #@4f
    .line 2947
    .local v3, "result":[Ljava/lang/String;
    if-eqz v1, :cond_5

    #@51
    .line 2948
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getPcscfAddr()[Ljava/lang/String;

    #@54
    move-result-object v3

    #@55
    .line 2950
    .local v3, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    #@56
    .local v2, "i":I
    :goto_1
    array-length v4, v3

    #@57
    if-ge v2, v4, :cond_4

    #@59
    .line 2951
    new-instance v4, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v5, "Pcscf["

    #@61
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v4

    #@65
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@68
    move-result-object v4

    #@69
    const-string/jumbo v5, "]: "

    #@6c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v4

    #@70
    aget-object v5, v3, v2

    #@72
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v4

    #@76
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v4

    #@7a
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@7d
    .line 2950
    add-int/lit8 v2, v2, 0x1

    #@7f
    goto :goto_1

    #@80
    .line 2953
    :cond_4
    return-object v3

    #@81
    .line 2955
    .end local v2    # "i":I
    .local v3, "result":[Ljava/lang/String;
    :cond_5
    return-object v6
.end method

.method public getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 536
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@8
    .line 537
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    #@a
    .line 538
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 540
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@11
    return-object v1
.end method

.method protected gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1365
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "gotoIdleAndNotifyDataConnection: reason="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@17
    .line 1366
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    #@1a
    .line 1367
    const/4 v0, 0x0

    #@1b
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@1d
    .line 1364
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v6, 0x0

    #@3
    .line 2588
    new-instance v4, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v5, "handleMessage msg="

    #@b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v4

    #@f
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1a
    .line 2590
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@1c
    iget-boolean v4, v4, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    #@1e
    if-eqz v4, :cond_0

    #@20
    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsDisposed:Z

    #@22
    if-eqz v4, :cond_1

    #@24
    .line 2591
    :cond_0
    const-string/jumbo v4, "handleMessage: Ignore GSM msgs since GSM phone is inactive"

    #@27
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@2a
    .line 2592
    return-void

    #@2b
    .line 2595
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    #@2d
    sparse-switch v4, :sswitch_data_0

    #@30
    .line 2707
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->handleMessage(Landroid/os/Message;)V

    #@33
    .line 2587
    :cond_2
    :goto_0
    return-void

    #@34
    .line 2597
    :sswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onRecordsLoaded()V

    #@37
    goto :goto_0

    #@38
    .line 2601
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataConnectionDetached()V

    #@3b
    goto :goto_0

    #@3c
    .line 2605
    :sswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataConnectionAttached()V

    #@3f
    goto :goto_0

    #@40
    .line 2609
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->doRecovery()V

    #@43
    goto :goto_0

    #@44
    .line 2613
    :sswitch_4
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onApnChanged()V

    #@47
    goto :goto_0

    #@48
    .line 2623
    :sswitch_5
    new-instance v4, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v5, "EVENT_PS_RESTRICT_ENABLED "

    #@50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    #@56
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v4

    #@5e
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@61
    .line 2624
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    #@64
    .line 2625
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    #@67
    .line 2626
    iput-boolean v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    #@69
    goto :goto_0

    #@6a
    .line 2634
    :sswitch_6
    new-instance v4, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v5, "EVENT_PS_RESTRICT_DISABLED "

    #@72
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v4

    #@76
    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    #@78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v4

    #@7c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v4

    #@80
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@83
    .line 2635
    iput-boolean v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    #@85
    .line 2636
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isConnected()Z

    #@88
    move-result v4

    #@89
    if-eqz v4, :cond_3

    #@8b
    .line 2637
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startNetStatPoll()V

    #@8e
    .line 2638
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    #@91
    goto :goto_0

    #@92
    .line 2641
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@94
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@96
    if-ne v4, v5, :cond_4

    #@98
    .line 2642
    const-string/jumbo v4, "psRestrictEnabled"

    #@9b
    invoke-virtual {p0, v6, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    #@9e
    .line 2643
    iput-boolean v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReregisterOnReconnectFailure:Z

    #@a0
    .line 2645
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@a2
    const-string/jumbo v5, "default"

    #@a5
    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a8
    move-result-object v0

    #@a9
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@ab
    .line 2646
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_5

    #@ad
    .line 2647
    const-string/jumbo v4, "psRestrictEnabled"

    #@b0
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@b3
    .line 2648
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    #@b6
    goto/16 :goto_0

    #@b8
    .line 2650
    :cond_5
    const-string/jumbo v4, "**** Default ApnContext not found ****"

    #@bb
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@be
    .line 2651
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@c0
    if-eqz v4, :cond_2

    #@c2
    .line 2652
    new-instance v4, Ljava/lang/RuntimeException;

    #@c4
    const-string/jumbo v5, "Default ApnContext not found"

    #@c7
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@ca
    throw v4

    #@cb
    .line 2659
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :sswitch_7
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@cd
    instance-of v4, v4, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@cf
    if-eqz v4, :cond_6

    #@d1
    .line 2660
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d3
    check-cast v4, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@d5
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onTrySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    #@d8
    goto/16 :goto_0

    #@da
    .line 2661
    :cond_6
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@dc
    instance-of v4, v4, Ljava/lang/String;

    #@de
    if-eqz v4, :cond_7

    #@e0
    .line 2662
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e2
    check-cast v4, Ljava/lang/String;

    #@e4
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onTrySetupData(Ljava/lang/String;)Z

    #@e7
    goto/16 :goto_0

    #@e9
    .line 2664
    :cond_7
    const-string/jumbo v4, "EVENT_TRY_SETUP request w/o apnContext or String"

    #@ec
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@ef
    goto/16 :goto_0

    #@f1
    .line 2669
    :sswitch_8
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@f3
    if-nez v4, :cond_8

    #@f5
    const/4 v3, 0x0

    #@f6
    .line 2670
    .local v3, "tearDown":Z
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    #@f8
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@fb
    const-string/jumbo v5, "EVENT_CLEAN_UP_CONNECTION tearDown="

    #@fe
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v4

    #@102
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@105
    move-result-object v4

    #@106
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@109
    move-result-object v4

    #@10a
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@10d
    .line 2671
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@10f
    instance-of v4, v4, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@111
    if-eqz v4, :cond_9

    #@113
    .line 2672
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@115
    check-cast v4, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@117
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@11a
    goto/16 :goto_0

    #@11c
    .line 2669
    .end local v3    # "tearDown":Z
    :cond_8
    const/4 v3, 0x1

    #@11d
    .restart local v3    # "tearDown":Z
    goto :goto_1

    #@11e
    .line 2674
    :cond_9
    const-string/jumbo v4, "EVENT_CLEAN_UP_CONNECTION request w/o apn context, call super"

    #@121
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@124
    .line 2675
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->handleMessage(Landroid/os/Message;)V

    #@127
    goto/16 :goto_0

    #@129
    .line 2679
    .end local v3    # "tearDown":Z
    :sswitch_9
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@12b
    if-ne v4, v8, :cond_a

    #@12d
    const/4 v1, 0x1

    #@12e
    .line 2680
    .local v1, "enabled":Z
    :goto_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@130
    check-cast v4, Landroid/os/Message;

    #@132
    invoke-virtual {p0, v1, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onSetInternalDataEnabled(ZLandroid/os/Message;)V

    #@135
    goto/16 :goto_0

    #@137
    .line 2679
    .end local v1    # "enabled":Z
    :cond_a
    const/4 v1, 0x0

    #@138
    .restart local v1    # "enabled":Z
    goto :goto_2

    #@139
    .line 2684
    .end local v1    # "enabled":Z
    :sswitch_a
    const v4, 0x4201d

    #@13c
    invoke-virtual {p0, v4, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@13f
    move-result-object v2

    #@140
    .line 2685
    .local v2, "mCause":Landroid/os/Message;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@142
    if-eqz v4, :cond_b

    #@144
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@146
    instance-of v4, v4, Ljava/lang/String;

    #@148
    if-eqz v4, :cond_b

    #@14a
    .line 2686
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@14c
    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@14e
    .line 2688
    :cond_b
    invoke-super {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->handleMessage(Landroid/os/Message;)V

    #@151
    goto/16 :goto_0

    #@153
    .line 2693
    .end local v2    # "mCause":Landroid/os/Message;
    :sswitch_b
    const-string/jumbo v4, "nwTypeChanged"

    #@156
    .line 2694
    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ONLY_ON_CHANGE:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    #@158
    .line 2693
    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    #@15b
    goto/16 :goto_0

    #@15d
    .line 2699
    :sswitch_c
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    #@15f
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@161
    if-ne v4, v5, :cond_2

    #@163
    .line 2700
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    #@165
    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    #@168
    .line 2701
    iput-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    #@16a
    goto/16 :goto_0

    #@16c
    .line 2595
    :sswitch_data_0
    .sparse-switch
        0x42002 -> :sswitch_0
        0x42003 -> :sswitch_7
        0x42009 -> :sswitch_1
        0x42010 -> :sswitch_2
        0x42012 -> :sswitch_3
        0x42013 -> :sswitch_4
        0x42016 -> :sswitch_5
        0x42017 -> :sswitch_6
        0x42018 -> :sswitch_8
        0x4201b -> :sswitch_9
        0x4201d -> :sswitch_a
        0x42029 -> :sswitch_b
        0x4202a -> :sswitch_c
    .end sparse-switch
.end method

.method public incApnRefCount(Ljava/lang/String;Landroid/util/LocalLog;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "log"    # Landroid/util/LocalLog;

    #@0
    .prologue
    .line 257
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@8
    .line 258
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "DcTracker.incApnRefCount on "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, " found "

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
    invoke-virtual {p2, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@2a
    .line 259
    if-eqz v0, :cond_0

    #@2c
    .line 260
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->incRefCount(Landroid/util/LocalLog;)V

    #@2f
    .line 256
    :cond_0
    return-void
.end method

.method protected initApnContexts()V
    .locals 8

    #@0
    .prologue
    .line 412
    const-string/jumbo v4, "initApnContexts: E"

    #@3
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 414
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@8
    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@f
    move-result-object v4

    #@10
    .line 415
    const v5, 0x107000c

    #@13
    .line 414
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    .line 416
    .local v3, "networkConfigStrings":[Ljava/lang/String;
    const/4 v4, 0x0

    #@18
    array-length v5, v3

    #@19
    :goto_0
    if-ge v4, v5, :cond_0

    #@1b
    aget-object v2, v3, v4

    #@1d
    .line 417
    .local v2, "networkConfigString":Ljava/lang/String;
    new-instance v1, Landroid/net/NetworkConfig;

    #@1f
    invoke-direct {v1, v2}, Landroid/net/NetworkConfig;-><init>(Ljava/lang/String;)V

    #@22
    .line 418
    .local v1, "networkConfig":Landroid/net/NetworkConfig;
    const/4 v0, 0x0

    #@23
    .line 420
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget v6, v1, Landroid/net/NetworkConfig;->type:I

    #@25
    packed-switch v6, :pswitch_data_0

    #@28
    .line 452
    :pswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v7, "initApnContexts: skipping unknown type="

    #@30
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v6

    #@34
    iget v7, v1, Landroid/net/NetworkConfig;->type:I

    #@36
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v6

    #@3a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v6

    #@3e
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@41
    .line 416
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@43
    goto :goto_0

    #@44
    .line 422
    .restart local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :pswitch_1
    const-string/jumbo v6, "default"

    #@47
    invoke-direct {p0, v6, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@4a
    move-result-object v0

    #@4b
    .line 455
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v7, "initApnContexts: apnContext="

    #@53
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v6

    #@57
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v6

    #@5b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v6

    #@5f
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@62
    goto :goto_1

    #@63
    .line 425
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :pswitch_2
    const-string/jumbo v6, "mms"

    #@66
    invoke-direct {p0, v6, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@69
    move-result-object v0

    #@6a
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    goto :goto_2

    #@6b
    .line 428
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :pswitch_3
    const-string/jumbo v6, "supl"

    #@6e
    invoke-direct {p0, v6, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@71
    move-result-object v0

    #@72
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    goto :goto_2

    #@73
    .line 431
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :pswitch_4
    const-string/jumbo v6, "dun"

    #@76
    invoke-direct {p0, v6, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@79
    move-result-object v0

    #@7a
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    goto :goto_2

    #@7b
    .line 434
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :pswitch_5
    const-string/jumbo v6, "hipri"

    #@7e
    invoke-direct {p0, v6, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@81
    move-result-object v0

    #@82
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    goto :goto_2

    #@83
    .line 437
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :pswitch_6
    const-string/jumbo v6, "fota"

    #@86
    invoke-direct {p0, v6, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@89
    move-result-object v0

    #@8a
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    goto :goto_2

    #@8b
    .line 440
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :pswitch_7
    const-string/jumbo v6, "ims"

    #@8e
    invoke-direct {p0, v6, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@91
    move-result-object v0

    #@92
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    goto :goto_2

    #@93
    .line 443
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :pswitch_8
    const-string/jumbo v6, "cbs"

    #@96
    invoke-direct {p0, v6, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@99
    move-result-object v0

    #@9a
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    goto :goto_2

    #@9b
    .line 446
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :pswitch_9
    const-string/jumbo v6, "ia"

    #@9e
    invoke-direct {p0, v6, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@a1
    move-result-object v0

    #@a2
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    goto :goto_2

    #@a3
    .line 449
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :pswitch_a
    const-string/jumbo v6, "emergency"

    #@a6
    invoke-direct {p0, v6, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@a9
    move-result-object v0

    #@aa
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    goto :goto_2

    #@ab
    .line 457
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v1    # "networkConfig":Landroid/net/NetworkConfig;
    .end local v2    # "networkConfigString":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@ad
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b0
    const-string/jumbo v5, "initApnContexts: X mApnContexts="

    #@b3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v4

    #@b7
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@b9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v4

    #@bd
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c0
    move-result-object v4

    #@c1
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@c4
    .line 411
    return-void

    #@c5
    .line 420
    nop

    #@c6
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public isApnSupported(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 275
    if-nez p1, :cond_0

    #@3
    .line 276
    const-string/jumbo v1, "isApnSupported: name=null"

    #@6
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@9
    .line 277
    return v3

    #@a
    .line 279
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@c
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@12
    .line 280
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_1

    #@14
    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v2, "Request for unsupported mobile name: "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@2b
    .line 282
    return v3

    #@2c
    .line 284
    :cond_1
    const/4 v1, 0x1

    #@2d
    return v1
.end method

.method public isApnTypeActive(Ljava/lang/String;)Z
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 359
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@3
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@9
    .line 360
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_0

    #@b
    return v1

    #@c
    .line 362
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@f
    move-result-object v2

    #@10
    if-eqz v2, :cond_1

    #@12
    const/4 v1, 0x1

    #@13
    :cond_1
    return v1
.end method

.method protected isApnTypeAvailable(Ljava/lang/String;)Z
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 603
    const-string/jumbo v2, "dun"

    #@4
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->fetchDunApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@d
    move-result-object v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 604
    return v3

    #@11
    .line 607
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@13
    if-eqz v2, :cond_2

    #@15
    .line 608
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    #@17
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v1

    #@1b
    .local v1, "apn$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_2

    #@21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@27
    .line 609
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_1

    #@2d
    .line 610
    return v3

    #@2e
    .line 614
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v1    # "apn$iterator":Ljava/util/Iterator;
    :cond_2
    const/4 v2, 0x0

    #@2f
    return v2
.end method

.method public isApnTypeEnabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 521
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@8
    .line 522
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_0

    #@a
    .line 523
    const/4 v1, 0x0

    #@b
    return v1

    #@c
    .line 525
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    #@f
    move-result v1

    #@10
    return v1
.end method

.method protected isConnected()Z
    .locals 4

    #@0
    .prologue
    .line 2197
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "apnContext$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@16
    .line 2198
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@19
    move-result-object v2

    #@1a
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    #@1c
    if-ne v2, v3, :cond_0

    #@1e
    .line 2200
    const/4 v2, 0x1

    #@1f
    return v2

    #@20
    .line 2204
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_1
    const/4 v2, 0x0

    #@21
    return v2
.end method

.method protected isDataAllowed()Z
    .locals 15

    #@0
    .prologue
    .line 706
    iget-object v13, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledLock:Ljava/lang/Object;

    #@2
    monitor-enter v13

    #@3
    .line 707
    :try_start_0
    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInternalDataEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .local v5, "internalDataEnabled":Z
    monitor-exit v13

    #@6
    .line 710
    iget-object v13, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@8
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@b
    move-result v1

    #@c
    .line 711
    .local v1, "attachedState":Z
    iget-object v13, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@e
    invoke-virtual {v13}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@11
    move-result-object v13

    #@12
    invoke-virtual {v13}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    #@15
    move-result v4

    #@16
    .line 712
    .local v4, "desiredPowerState":Z
    iget-object v13, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@18
    invoke-virtual {v13}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    #@1b
    move-result-object v13

    #@1c
    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@1f
    move-result v9

    #@20
    .line 713
    .local v9, "radioTech":I
    const/16 v13, 0x12

    #@22
    if-ne v9, v13, :cond_0

    #@24
    .line 714
    const/4 v4, 0x1

    #@25
    .line 717
    .end local v4    # "desiredPowerState":Z
    :cond_0
    iget-object v13, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@27
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@2a
    move-result-object v8

    #@2b
    check-cast v8, Lcom/android/internal/telephony/uicc/IccRecords;

    #@2d
    .line 718
    .local v8, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    const/4 v11, 0x0

    #@2e
    .line 719
    .local v11, "recordsLoaded":Z
    if-eqz v8, :cond_1

    #@30
    .line 720
    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    #@33
    move-result v11

    #@34
    .line 721
    .local v11, "recordsLoaded":Z
    if-eqz v11, :cond_11

    #@36
    .line 725
    .end local v11    # "recordsLoaded":Z
    :cond_1
    :goto_0
    iget-boolean v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    #@38
    .line 726
    .local v7, "psRestricted":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@3b
    move-result-object v13

    #@3c
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    #@3f
    move-result v6

    #@40
    .line 727
    .local v6, "phoneNum":I
    const/4 v13, 0x1

    #@41
    if-le v6, v13, :cond_2

    #@43
    .line 728
    const/4 v1, 0x1

    #@44
    .line 729
    .local v1, "attachedState":Z
    const/4 v7, 0x0

    #@45
    .line 731
    .end local v1    # "attachedState":Z
    .end local v7    # "psRestricted":Z
    :cond_2
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    #@48
    move-result v2

    #@49
    .line 732
    .local v2, "dataSub":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@4c
    move-result v3

    #@4d
    .line 733
    .local v3, "defaultDataSelected":Z
    sget-object v12, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@4f
    .line 741
    .local v12, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v13, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@51
    invoke-virtual {v13}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    #@54
    move-result-object v13

    #@55
    if-eqz v13, :cond_3

    #@57
    .line 742
    iget-object v13, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@59
    invoke-virtual {v13}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    #@5c
    move-result-object v13

    #@5d
    invoke-virtual {v13}, Lcom/android/internal/telephony/CallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    #@60
    move-result-object v12

    #@61
    .line 745
    :cond_3
    if-nez v1, :cond_4

    #@63
    iget-boolean v13, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreation:Z

    #@65
    if-eqz v13, :cond_7

    #@67
    :cond_4
    if-eqz v11, :cond_7

    #@69
    .line 747
    sget-object v13, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@6b
    if-eq v12, v13, :cond_5

    #@6d
    .line 748
    iget-object v13, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@6f
    invoke-virtual {v13}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@72
    move-result-object v13

    #@73
    invoke-virtual {v13}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    #@76
    move-result v13

    #@77
    .line 745
    if-eqz v13, :cond_7

    #@79
    :cond_5
    if-eqz v5, :cond_7

    #@7b
    if-eqz v3, :cond_7

    #@7d
    .line 751
    iget-object v13, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@7f
    invoke-virtual {v13}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    #@82
    move-result-object v13

    #@83
    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@86
    move-result v13

    #@87
    if-eqz v13, :cond_6

    #@89
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataOnRoamingEnabled()Z

    #@8c
    move-result v13

    #@8d
    .line 745
    if-eqz v13, :cond_7

    #@8f
    .line 753
    :cond_6
    if-eqz v7, :cond_12

    #@91
    .line 745
    :cond_7
    const/4 v0, 0x0

    #@92
    .line 755
    :goto_1
    if-nez v0, :cond_10

    #@94
    .line 756
    const-string/jumbo v10, ""

    #@97
    .line 757
    .local v10, "reason":Ljava/lang/String;
    if-nez v1, :cond_13

    #@99
    iget-boolean v13, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreation:Z

    #@9b
    :goto_2
    if-nez v13, :cond_8

    #@9d
    .line 758
    new-instance v13, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v13

    #@a6
    const-string/jumbo v14, " - Attached= "

    #@a9
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v13

    #@ad
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v13

    #@b1
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v10

    #@b5
    .line 760
    :cond_8
    if-nez v11, :cond_9

    #@b7
    new-instance v13, Ljava/lang/StringBuilder;

    #@b9
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@bc
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v13

    #@c0
    const-string/jumbo v14, " - SIM not loaded"

    #@c3
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v13

    #@c7
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ca
    move-result-object v10

    #@cb
    .line 761
    :cond_9
    sget-object v13, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@cd
    if-eq v12, v13, :cond_a

    #@cf
    .line 762
    iget-object v13, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@d1
    invoke-virtual {v13}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@d4
    move-result-object v13

    #@d5
    invoke-virtual {v13}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    #@d8
    move-result v13

    #@d9
    if-eqz v13, :cond_14

    #@db
    .line 766
    :cond_a
    :goto_3
    if-nez v5, :cond_b

    #@dd
    new-instance v13, Ljava/lang/StringBuilder;

    #@df
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@e2
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v13

    #@e6
    const-string/jumbo v14, " - mInternalDataEnabled= false"

    #@e9
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v13

    #@ed
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f0
    move-result-object v10

    #@f1
    .line 767
    :cond_b
    if-nez v3, :cond_c

    #@f3
    new-instance v13, Ljava/lang/StringBuilder;

    #@f5
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@f8
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v13

    #@fc
    const-string/jumbo v14, " - defaultDataSelected= false"

    #@ff
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v13

    #@103
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@106
    move-result-object v10

    #@107
    .line 768
    :cond_c
    iget-object v13, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@109
    invoke-virtual {v13}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    #@10c
    move-result-object v13

    #@10d
    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@110
    move-result v13

    #@111
    if-eqz v13, :cond_d

    #@113
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataOnRoamingEnabled()Z

    #@116
    move-result v13

    #@117
    if-eqz v13, :cond_15

    #@119
    .line 771
    :cond_d
    :goto_4
    iget-boolean v13, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    #@11b
    if-eqz v13, :cond_e

    #@11d
    new-instance v13, Ljava/lang/StringBuilder;

    #@11f
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@122
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v13

    #@126
    const-string/jumbo v14, " - mIsPsRestricted= true"

    #@129
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v13

    #@12d
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@130
    move-result-object v10

    #@131
    .line 772
    :cond_e
    if-nez v4, :cond_f

    #@133
    new-instance v13, Ljava/lang/StringBuilder;

    #@135
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@138
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v13

    #@13c
    const-string/jumbo v14, " - desiredPowerState= false"

    #@13f
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@142
    move-result-object v13

    #@143
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@146
    move-result-object v10

    #@147
    .line 773
    :cond_f
    new-instance v13, Ljava/lang/StringBuilder;

    #@149
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@14c
    const-string/jumbo v14, "isDataAllowed: not allowed due to"

    #@14f
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@152
    move-result-object v13

    #@153
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@156
    move-result-object v13

    #@157
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15a
    move-result-object v13

    #@15b
    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@15e
    .line 775
    .end local v10    # "reason":Ljava/lang/String;
    :cond_10
    return v0

    #@15f
    .line 706
    .end local v2    # "dataSub":I
    .end local v3    # "defaultDataSelected":Z
    .end local v5    # "internalDataEnabled":Z
    .end local v6    # "phoneNum":I
    .end local v8    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v9    # "radioTech":I
    .end local v12    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    :catchall_0
    move-exception v14

    #@160
    monitor-exit v13

    #@161
    throw v14

    #@162
    .line 721
    .local v1, "attachedState":Z
    .restart local v5    # "internalDataEnabled":Z
    .restart local v8    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .restart local v9    # "radioTech":I
    .restart local v11    # "recordsLoaded":Z
    :cond_11
    new-instance v13, Ljava/lang/StringBuilder;

    #@164
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@167
    const-string/jumbo v14, "isDataAllowed getRecordsLoaded="

    #@16a
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v13

    #@16e
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@171
    move-result-object v13

    #@172
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@175
    move-result-object v13

    #@176
    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@179
    goto/16 :goto_0

    #@17b
    .line 754
    .end local v1    # "attachedState":Z
    .end local v11    # "recordsLoaded":Z
    .restart local v2    # "dataSub":I
    .restart local v3    # "defaultDataSelected":Z
    .restart local v6    # "phoneNum":I
    .restart local v12    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_12
    move v0, v4

    #@17c
    .local v0, "allowed":Z
    goto/16 :goto_1

    #@17e
    .line 757
    .end local v0    # "allowed":Z
    .restart local v10    # "reason":Ljava/lang/String;
    :cond_13
    const/4 v13, 0x1

    #@17f
    goto/16 :goto_2

    #@181
    .line 763
    :cond_14
    new-instance v13, Ljava/lang/StringBuilder;

    #@183
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@186
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@189
    move-result-object v13

    #@18a
    const-string/jumbo v14, " - PhoneState= "

    #@18d
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@190
    move-result-object v13

    #@191
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@194
    move-result-object v13

    #@195
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@198
    move-result-object v10

    #@199
    .line 764
    new-instance v13, Ljava/lang/StringBuilder;

    #@19b
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@19e
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a1
    move-result-object v13

    #@1a2
    const-string/jumbo v14, " - Concurrent voice and data not allowed"

    #@1a5
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v13

    #@1a9
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ac
    move-result-object v10

    #@1ad
    goto/16 :goto_3

    #@1af
    .line 769
    :cond_15
    new-instance v13, Ljava/lang/StringBuilder;

    #@1b1
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@1b4
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b7
    move-result-object v13

    #@1b8
    const-string/jumbo v14, " - Roaming and data roaming not enabled"

    #@1bb
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1be
    move-result-object v13

    #@1bf
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c2
    move-result-object v10

    #@1c3
    goto/16 :goto_4
.end method

.method public isDataPossible(Ljava/lang/String;)Z
    .locals 9
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 367
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v7, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@8
    .line 368
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_0

    #@a
    .line 369
    const/4 v7, 0x0

    #@b
    return v7

    #@c
    .line 371
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    #@f
    move-result v1

    #@10
    .line 372
    .local v1, "apnContextIsEnabled":Z
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@13
    move-result-object v2

    #@14
    .line 373
    .local v2, "apnContextState":Lcom/android/internal/telephony/DctConstants$State;
    if-eqz v1, :cond_3

    #@16
    .line 374
    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@18
    if-ne v2, v7, :cond_3

    #@1a
    .line 373
    const/4 v3, 0x0

    #@1b
    .line 375
    .local v3, "apnTypePossible":Z
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@1e
    move-result-object v7

    #@1f
    const-string/jumbo v8, "emergency"

    #@22
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v5

    #@26
    .line 378
    .local v5, "isEmergencyApn":Z
    if-nez v5, :cond_4

    #@28
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowed()Z

    #@2b
    move-result v4

    #@2c
    .line 379
    :goto_1
    if-eqz v4, :cond_5

    #@2e
    move v6, v3

    #@2f
    .line 381
    :goto_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@32
    move-result-object v7

    #@33
    const-string/jumbo v8, "default"

    #@36
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v7

    #@3a
    if-nez v7, :cond_1

    #@3c
    .line 382
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@3f
    move-result-object v7

    #@40
    const-string/jumbo v8, "ia"

    #@43
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v7

    #@47
    .line 381
    if-eqz v7, :cond_2

    #@49
    .line 383
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@4b
    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    #@4e
    move-result-object v7

    #@4f
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@52
    move-result v7

    #@53
    .line 384
    const/16 v8, 0x12

    #@55
    .line 383
    if-ne v7, v8, :cond_2

    #@57
    .line 385
    const-string/jumbo v7, "Default data call activation not possible in iwlan."

    #@5a
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@5d
    .line 386
    const/4 v6, 0x0

    #@5e
    .line 395
    :cond_2
    return v6

    #@5f
    .line 373
    .end local v3    # "apnTypePossible":Z
    .end local v5    # "isEmergencyApn":Z
    :cond_3
    const/4 v3, 0x1

    #@60
    .restart local v3    # "apnTypePossible":Z
    goto :goto_0

    #@61
    .line 378
    .restart local v5    # "isEmergencyApn":Z
    :cond_4
    const/4 v4, 0x1

    #@62
    .local v4, "dataAllowed":Z
    goto :goto_1

    #@63
    .line 379
    .end local v4    # "dataAllowed":Z
    :cond_5
    const/4 v6, 0x0

    #@64
    .local v6, "possible":Z
    goto :goto_2
.end method

.method public isDisconnected()Z
    .locals 3

    #@0
    .prologue
    .line 2209
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "apnContext$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@16
    .line 2210
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    #@19
    move-result v2

    #@1a
    if-nez v2, :cond_0

    #@1c
    .line 2212
    const/4 v2, 0x0

    #@1d
    return v2

    #@1e
    .line 2216
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_1
    const/4 v2, 0x1

    #@1f
    return v2
.end method

.method protected isPermanentFail(Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z
    .locals 3
    .param p1, "dcFailCause"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1133
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->isPermanentFail()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_2

    #@8
    .line 1134
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@a
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SIGNAL_LOST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@12
    if-eq p1, v2, :cond_1

    #@14
    .line 1133
    :cond_0
    :goto_0
    return v0

    #@15
    :cond_1
    move v0, v1

    #@16
    .line 1134
    goto :goto_0

    #@17
    :cond_2
    move v0, v1

    #@18
    .line 1133
    goto :goto_0
.end method

.method protected isProvisioningApn(Ljava/lang/String;)Z
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 546
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@8
    .line 547
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    #@a
    .line 548
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isProvisioningApn()Z

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 550
    :cond_0
    const/4 v1, 0x0

    #@10
    return v1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2900
    const-string/jumbo v0, "DCT"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "["

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@11
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    #@14
    move-result v2

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, "]"

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 2899
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2905
    const-string/jumbo v0, "DCT"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "["

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@11
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    #@14
    move-result v2

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, "]"

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 2904
    return-void
.end method

.method protected notifyAllDataDisconnected()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2820
    sput v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->sEnableFailFastRefCounter:I

    #@3
    .line 2821
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mFailFast:Z

    #@5
    .line 2822
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@a
    .line 2819
    return-void
.end method

.method protected notifyDataConnection(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2221
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "notifyDataConnection: reason="

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@17
    .line 2222
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@19
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@1c
    move-result-object v2

    #@1d
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v1

    #@21
    .local v1, "apnContext$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_2

    #@27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@2d
    .line 2223
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2f
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@32
    move-result v2

    #@33
    if-eqz v2, :cond_0

    #@35
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    #@38
    move-result v2

    #@39
    if-eqz v2, :cond_0

    #@3b
    .line 2224
    new-instance v2, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v3, "notifyDataConnection: type:"

    #@43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@56
    .line 2225
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@58
    if-eqz p1, :cond_1

    #@5a
    move-object v2, p1

    #@5b
    .line 2226
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@5e
    move-result-object v4

    #@5f
    .line 2225
    invoke-virtual {v3, v2, v4}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    #@62
    goto :goto_0

    #@63
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@66
    move-result-object v2

    #@67
    goto :goto_1

    #@68
    .line 2229
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    #@6b
    .line 2220
    return-void
.end method

.method protected notifyDataDisconnectComplete()V
    .locals 3

    #@0
    .prologue
    .line 2811
    const-string/jumbo v2, "notifyDataDisconnectComplete"

    #@3
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 2812
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    #@8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v1

    #@c
    .local v1, "m$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/os/Message;

    #@18
    .line 2813
    .local v0, "m":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@1b
    goto :goto_0

    #@1c
    .line 2815
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@21
    .line 2810
    return-void
.end method

.method protected notifyOffApnsOfAvailability(Ljava/lang/String;)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 921
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "apnContext$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_3

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@16
    .line 922
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@18
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_1

    #@1e
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    #@21
    move-result v2

    #@22
    if-nez v2, :cond_0

    #@24
    .line 924
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@26
    if-eqz p1, :cond_2

    #@28
    move-object v2, p1

    #@29
    .line 925
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    .line 926
    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@2f
    .line 924
    invoke-virtual {v3, v2, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    #@32
    goto :goto_0

    #@33
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    goto :goto_1

    #@38
    .line 920
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_3
    return-void
.end method

.method protected onCleanUpAllConnections(Ljava/lang/String;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/String;

    #@0
    .prologue
    .line 998
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    #@4
    .line 997
    return-void
.end method

.method protected onCleanUpConnection(ZILjava/lang/String;)V
    .locals 3
    .param p1, "tearDown"    # Z
    .param p2, "apnId"    # I
    .param p3, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2187
    const-string/jumbo v1, "onCleanUpConnection"

    #@3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 2188
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@8
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnIdToType(I)Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@12
    .line 2189
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    #@14
    .line 2190
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@17
    .line 2191
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@1a
    .line 2186
    :cond_0
    return-void
.end method

.method protected onDataConnectionDetached()V
    .locals 2

    #@0
    .prologue
    .line 678
    const-string/jumbo v0, "onDataConnectionDetached: stop polling and notify detached"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 679
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    #@9
    .line 680
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    #@c
    .line 681
    const-string/jumbo v0, "dataDetached"

    #@f
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    #@12
    .line 682
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@14
    const/4 v1, 0x0

    #@15
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@18
    .line 673
    return-void
.end method

.method protected onDataSetupComplete(Landroid/os/AsyncResult;)V
    .locals 26
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 1818
    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@2
    .line 1819
    .local v8, "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    const/4 v13, 0x0

    #@3
    .line 1820
    .local v13, "handleError":Z
    const/4 v6, 0x0

    #@4
    .line 1822
    .local v6, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    move-object/from16 v0, p1

    #@6
    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@8
    move-object/from16 v21, v0

    #@a
    move-object/from16 v0, v21

    #@c
    instance-of v0, v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@e
    move/from16 v21, v0

    #@10
    if-eqz v21, :cond_2

    #@12
    .line 1823
    move-object/from16 v0, p1

    #@14
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@16
    .end local v6    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@18
    .line 1828
    .local v6, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    move-object/from16 v0, p1

    #@1a
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1c
    move-object/from16 v21, v0

    #@1e
    if-nez v21, :cond_e

    #@20
    .line 1829
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@23
    move-result-object v11

    #@24
    .line 1849
    .local v11, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-nez v11, :cond_3

    #@26
    .line 1850
    const-string/jumbo v21, "onDataSetupComplete: no connection to DC, handle as error"

    #@29
    move-object/from16 v0, p0

    #@2b
    move-object/from16 v1, v21

    #@2d
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@30
    .line 1851
    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->CONNECTION_TO_DATACONNECTIONAC_BROKEN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@32
    .line 1852
    const/4 v13, 0x1

    #@33
    .line 1984
    .end local v11    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :goto_0
    if-eqz v13, :cond_0

    #@35
    .line 1985
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataSetupCompleteError(Landroid/os/AsyncResult;)V

    #@38
    .line 1991
    :cond_0
    move-object/from16 v0, p0

    #@3a
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInternalDataEnabled:Z

    #@3c
    move/from16 v21, v0

    #@3e
    if-nez v21, :cond_1

    #@40
    .line 1992
    const/16 v21, 0x0

    #@42
    move-object/from16 v0, p0

    #@44
    move-object/from16 v1, v21

    #@46
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    #@49
    .line 1816
    :cond_1
    return-void

    #@4a
    .line 1825
    .local v6, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_2
    new-instance v21, Ljava/lang/RuntimeException;

    #@4c
    const-string/jumbo v22, "onDataSetupComplete: No apnContext"

    #@4f
    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@52
    throw v21

    #@53
    .line 1854
    .local v6, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .restart local v11    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_3
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@56
    move-result-object v5

    #@57
    .line 1856
    .local v5, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    new-instance v21, Ljava/lang/StringBuilder;

    #@59
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v22, "onDataSetupComplete: success apn="

    #@5f
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v22

    #@63
    if-nez v5, :cond_9

    #@65
    const-string/jumbo v21, "unknown"

    #@68
    :goto_1
    move-object/from16 v0, v22

    #@6a
    move-object/from16 v1, v21

    #@6c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v21

    #@70
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v21

    #@74
    move-object/from16 v0, p0

    #@76
    move-object/from16 v1, v21

    #@78
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@7b
    .line 1858
    if-eqz v5, :cond_5

    #@7d
    iget-object v0, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    #@7f
    move-object/from16 v21, v0

    #@81
    if-eqz v21, :cond_5

    #@83
    iget-object v0, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    #@85
    move-object/from16 v21, v0

    #@87
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    #@8a
    move-result v21

    #@8b
    if-eqz v21, :cond_5

    #@8d
    .line 1860
    :try_start_0
    iget-object v0, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    #@8f
    move-object/from16 v19, v0

    #@91
    .line 1861
    .local v19, "port":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@94
    move-result v21

    #@95
    if-eqz v21, :cond_4

    #@97
    const-string/jumbo v19, "8080"

    #@9a
    .line 1862
    :cond_4
    new-instance v20, Landroid/net/ProxyInfo;

    #@9c
    iget-object v0, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    #@9e
    move-object/from16 v21, v0

    #@a0
    .line 1863
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@a3
    move-result v22

    #@a4
    const/16 v23, 0x0

    #@a6
    .line 1862
    invoke-direct/range {v20 .. v23}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@a9
    .line 1864
    .local v20, "proxy":Landroid/net/ProxyInfo;
    move-object/from16 v0, v20

    #@ab
    invoke-virtual {v11, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->setLinkPropertiesHttpProxySync(Landroid/net/ProxyInfo;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@ae
    .line 1872
    .end local v19    # "port":Ljava/lang/String;
    .end local v20    # "proxy":Landroid/net/ProxyInfo;
    :cond_5
    :goto_2
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@b1
    move-result-object v21

    #@b2
    const-string/jumbo v22, "default"

    #@b5
    invoke-static/range {v21 .. v22}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@b8
    move-result v21

    #@b9
    if-eqz v21, :cond_a

    #@bb
    .line 1873
    const-string/jumbo v21, "gsm.defaultpdpcontext.active"

    #@be
    const-string/jumbo v22, "true"

    #@c1
    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@c4
    .line 1874
    move-object/from16 v0, p0

    #@c6
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    #@c8
    move/from16 v21, v0

    #@ca
    if-eqz v21, :cond_6

    #@cc
    move-object/from16 v0, p0

    #@ce
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@d0
    move-object/from16 v21, v0

    #@d2
    if-nez v21, :cond_6

    #@d4
    .line 1875
    const-string/jumbo v21, "onDataSetupComplete: PREFERED APN is null"

    #@d7
    move-object/from16 v0, p0

    #@d9
    move-object/from16 v1, v21

    #@db
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@de
    .line 1876
    move-object/from16 v0, p0

    #@e0
    iput-object v5, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@e2
    .line 1877
    move-object/from16 v0, p0

    #@e4
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@e6
    move-object/from16 v21, v0

    #@e8
    if-eqz v21, :cond_6

    #@ea
    .line 1878
    move-object/from16 v0, p0

    #@ec
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@ee
    move-object/from16 v21, v0

    #@f0
    move-object/from16 v0, v21

    #@f2
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    #@f4
    move/from16 v21, v0

    #@f6
    move-object/from16 v0, p0

    #@f8
    move/from16 v1, v21

    #@fa
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setPreferredApn(I)V

    #@fd
    .line 1886
    :cond_6
    :goto_3
    sget-object v21, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    #@ff
    move-object/from16 v0, v21

    #@101
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@104
    .line 1887
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isProvisioningApn()Z

    #@107
    move-result v16

    #@108
    .line 1888
    .local v16, "isProvApn":Z
    move-object/from16 v0, p0

    #@10a
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@10c
    move-object/from16 v21, v0

    #@10e
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@111
    move-result-object v21

    #@112
    invoke-static/range {v21 .. v21}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    #@115
    move-result-object v10

    #@116
    .line 1889
    .local v10, "cm":Landroid/net/ConnectivityManager;
    move-object/from16 v0, p0

    #@118
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@11a
    move-object/from16 v21, v0

    #@11c
    if-eqz v21, :cond_7

    #@11e
    .line 1890
    move-object/from16 v0, p0

    #@120
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@122
    move-object/from16 v21, v0

    #@124
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@127
    move-result-object v21

    #@128
    move-object/from16 v0, p0

    #@12a
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@12c
    move-object/from16 v22, v0

    #@12e
    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@131
    .line 1891
    const/16 v21, 0x0

    #@133
    move-object/from16 v0, v21

    #@135
    move-object/from16 v1, p0

    #@137
    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@139
    .line 1893
    :cond_7
    if-eqz v16, :cond_8

    #@13b
    move-object/from16 v0, p0

    #@13d
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsProvisioning:Z

    #@13f
    move/from16 v21, v0

    #@141
    if-eqz v21, :cond_b

    #@143
    .line 1896
    :cond_8
    move-object/from16 v0, p0

    #@145
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionActionName:Ljava/lang/String;

    #@147
    move-object/from16 v21, v0

    #@149
    .line 1895
    const/16 v22, 0x0

    #@14b
    const/16 v23, 0x0

    #@14d
    move/from16 v0, v22

    #@14f
    move/from16 v1, v23

    #@151
    move-object/from16 v2, v21

    #@153
    invoke-virtual {v10, v0, v1, v2}, Landroid/net/ConnectivityManager;->setProvisioningNotificationVisible(ZILjava/lang/String;)V

    #@156
    .line 1900
    move-object/from16 v0, p0

    #@158
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->completeConnection(Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@15b
    .line 1950
    :goto_4
    new-instance v21, Ljava/lang/StringBuilder;

    #@15d
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@160
    const-string/jumbo v22, "onDataSetupComplete: SETUP complete type="

    #@163
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@166
    move-result-object v21

    #@167
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@16a
    move-result-object v22

    #@16b
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16e
    move-result-object v21

    #@16f
    .line 1951
    const-string/jumbo v22, ", reason:"

    #@172
    .line 1950
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@175
    move-result-object v21

    #@176
    .line 1951
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@179
    move-result-object v22

    #@17a
    .line 1950
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17d
    move-result-object v21

    #@17e
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@181
    move-result-object v21

    #@182
    move-object/from16 v0, p0

    #@184
    move-object/from16 v1, v21

    #@186
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@189
    goto/16 :goto_0

    #@18b
    .line 1856
    .end local v10    # "cm":Landroid/net/ConnectivityManager;
    .end local v16    # "isProvApn":Z
    :cond_9
    iget-object v0, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@18d
    move-object/from16 v21, v0

    #@18f
    goto/16 :goto_1

    #@191
    .line 1865
    :catch_0
    move-exception v12

    #@192
    .line 1866
    .local v12, "e":Ljava/lang/NumberFormatException;
    new-instance v21, Ljava/lang/StringBuilder;

    #@194
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@197
    const-string/jumbo v22, "onDataSetupComplete: NumberFormatException making ProxyProperties ("

    #@19a
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19d
    move-result-object v21

    #@19e
    .line 1867
    iget-object v0, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    #@1a0
    move-object/from16 v22, v0

    #@1a2
    .line 1866
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a5
    move-result-object v21

    #@1a6
    .line 1867
    const-string/jumbo v22, "): "

    #@1a9
    .line 1866
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ac
    move-result-object v21

    #@1ad
    move-object/from16 v0, v21

    #@1af
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b2
    move-result-object v21

    #@1b3
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b6
    move-result-object v21

    #@1b7
    move-object/from16 v0, p0

    #@1b9
    move-object/from16 v1, v21

    #@1bb
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@1be
    goto/16 :goto_2

    #@1c0
    .line 1882
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    :cond_a
    const-string/jumbo v21, "gsm.defaultpdpcontext.active"

    #@1c3
    const-string/jumbo v22, "false"

    #@1c6
    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@1c9
    goto/16 :goto_3

    #@1cb
    .line 1908
    .restart local v10    # "cm":Landroid/net/ConnectivityManager;
    .restart local v16    # "isProvApn":Z
    :cond_b
    new-instance v21, Ljava/lang/StringBuilder;

    #@1cd
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@1d0
    const-string/jumbo v22, "onDataSetupComplete: successful, BUT send connected to prov apn as mIsProvisioning:"

    #@1d3
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d6
    move-result-object v21

    #@1d7
    .line 1909
    move-object/from16 v0, p0

    #@1d9
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsProvisioning:Z

    #@1db
    move/from16 v22, v0

    #@1dd
    .line 1908
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1e0
    move-result-object v21

    #@1e1
    .line 1909
    const-string/jumbo v22, " == false"

    #@1e4
    .line 1908
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e7
    move-result-object v21

    #@1e8
    .line 1910
    const-string/jumbo v22, " && (isProvisioningApn:"

    #@1eb
    .line 1908
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ee
    move-result-object v21

    #@1ef
    move-object/from16 v0, v21

    #@1f1
    move/from16 v1, v16

    #@1f3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1f6
    move-result-object v21

    #@1f7
    .line 1910
    const-string/jumbo v22, " == true"

    #@1fa
    .line 1908
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fd
    move-result-object v21

    #@1fe
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@201
    move-result-object v21

    #@202
    move-object/from16 v0, p0

    #@204
    move-object/from16 v1, v21

    #@206
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@209
    .line 1915
    new-instance v21, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;

    #@20b
    .line 1916
    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;

    #@20e
    move-result-object v22

    #@20f
    .line 1917
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@212
    move-result-object v23

    #@213
    invoke-virtual/range {v23 .. v23}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    #@216
    move-result-object v23

    #@217
    .line 1915
    move-object/from16 v0, v21

    #@219
    move-object/from16 v1, p0

    #@21b
    move-object/from16 v2, v22

    #@21d
    move-object/from16 v3, v23

    #@21f
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;Ljava/lang/String;)V

    #@222
    move-object/from16 v0, v21

    #@224
    move-object/from16 v1, p0

    #@226
    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@228
    .line 1918
    move-object/from16 v0, p0

    #@22a
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@22c
    move-object/from16 v21, v0

    #@22e
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@231
    move-result-object v21

    #@232
    move-object/from16 v0, p0

    #@234
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@236
    move-object/from16 v22, v0

    #@238
    .line 1919
    new-instance v23, Landroid/content/IntentFilter;

    #@23a
    move-object/from16 v0, p0

    #@23c
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionActionName:Ljava/lang/String;

    #@23e
    move-object/from16 v24, v0

    #@240
    invoke-direct/range {v23 .. v24}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@243
    .line 1918
    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@246
    .line 1922
    move-object/from16 v0, p0

    #@248
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionActionName:Ljava/lang/String;

    #@24a
    move-object/from16 v21, v0

    #@24c
    .line 1921
    const/16 v22, 0x1

    #@24e
    const/16 v23, 0x0

    #@250
    move/from16 v0, v22

    #@252
    move/from16 v1, v23

    #@254
    move-object/from16 v2, v21

    #@256
    invoke-virtual {v10, v0, v1, v2}, Landroid/net/ConnectivityManager;->setProvisioningNotificationVisible(ZILjava/lang/String;)V

    #@259
    .line 1925
    const/16 v21, 0x0

    #@25b
    move-object/from16 v0, p0

    #@25d
    move/from16 v1, v21

    #@25f
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setRadio(Z)V

    #@262
    .line 1927
    new-instance v15, Landroid/content/Intent;

    #@264
    .line 1928
    const-string/jumbo v21, "android.intent.action.DATA_CONNECTION_CONNECTED_TO_PROVISIONING_APN"

    #@267
    .line 1927
    move-object/from16 v0, v21

    #@269
    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@26c
    .line 1929
    .local v15, "intent":Landroid/content/Intent;
    const-string/jumbo v21, "apn"

    #@26f
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@272
    move-result-object v22

    #@273
    move-object/from16 v0, v22

    #@275
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@277
    move-object/from16 v22, v0

    #@279
    move-object/from16 v0, v21

    #@27b
    move-object/from16 v1, v22

    #@27d
    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@280
    .line 1930
    const-string/jumbo v21, "apnType"

    #@283
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@286
    move-result-object v22

    #@287
    move-object/from16 v0, v21

    #@289
    move-object/from16 v1, v22

    #@28b
    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@28e
    .line 1932
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@291
    move-result-object v7

    #@292
    .line 1933
    .local v7, "apnType":Ljava/lang/String;
    move-object/from16 v0, p0

    #@294
    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    #@297
    move-result-object v17

    #@298
    .line 1934
    .local v17, "linkProperties":Landroid/net/LinkProperties;
    if-eqz v17, :cond_c

    #@29a
    .line 1935
    const-string/jumbo v21, "linkProperties"

    #@29d
    move-object/from16 v0, v21

    #@29f
    move-object/from16 v1, v17

    #@2a1
    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@2a4
    .line 1936
    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@2a7
    move-result-object v14

    #@2a8
    .line 1937
    .local v14, "iface":Ljava/lang/String;
    if-eqz v14, :cond_c

    #@2aa
    .line 1938
    const-string/jumbo v21, "iface"

    #@2ad
    move-object/from16 v0, v21

    #@2af
    invoke-virtual {v15, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@2b2
    .line 1941
    .end local v14    # "iface":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    #@2b4
    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getNetworkCapabilities(Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    #@2b7
    move-result-object v18

    #@2b8
    .line 1942
    .local v18, "networkCapabilities":Landroid/net/NetworkCapabilities;
    if-eqz v18, :cond_d

    #@2ba
    .line 1943
    const-string/jumbo v21, "networkCapabilities"

    #@2bd
    move-object/from16 v0, v21

    #@2bf
    move-object/from16 v1, v18

    #@2c1
    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@2c4
    .line 1947
    :cond_d
    move-object/from16 v0, p0

    #@2c6
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2c8
    move-object/from16 v21, v0

    #@2ca
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@2cd
    move-result-object v21

    #@2ce
    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@2d0
    move-object/from16 v0, v21

    #@2d2
    move-object/from16 v1, v22

    #@2d4
    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@2d7
    goto/16 :goto_4

    #@2d9
    .line 1955
    .end local v5    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v7    # "apnType":Ljava/lang/String;
    .end local v10    # "cm":Landroid/net/ConnectivityManager;
    .end local v11    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v16    # "isProvApn":Z
    .end local v17    # "linkProperties":Landroid/net/LinkProperties;
    .end local v18    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    :cond_e
    move-object/from16 v0, p1

    #@2db
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@2dd
    .end local v8    # "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    check-cast v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@2df
    .line 1957
    .restart local v8    # "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@2e2
    move-result-object v5

    #@2e3
    .line 1958
    .restart local v5    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const-string/jumbo v22, "onDataSetupComplete: error apn=%s cause=%s"

    #@2e6
    const/16 v21, 0x2

    #@2e8
    move/from16 v0, v21

    #@2ea
    new-array v0, v0, [Ljava/lang/Object;

    #@2ec
    move-object/from16 v23, v0

    #@2ee
    .line 1959
    if-nez v5, :cond_11

    #@2f0
    const-string/jumbo v21, "unknown"

    #@2f3
    :goto_5
    const/16 v24, 0x0

    #@2f5
    aput-object v21, v23, v24

    #@2f7
    const/16 v21, 0x1

    #@2f9
    aput-object v8, v23, v21

    #@2fb
    .line 1958
    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2fe
    move-result-object v21

    #@2ff
    move-object/from16 v0, p0

    #@301
    move-object/from16 v1, v21

    #@303
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@306
    .line 1961
    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->isEventLoggable()Z

    #@309
    move-result v21

    #@30a
    if-eqz v21, :cond_f

    #@30c
    .line 1963
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getCellLocationId()I

    #@30f
    move-result v9

    #@310
    .line 1964
    .local v9, "cid":I
    const/16 v21, 0x3

    #@312
    move/from16 v0, v21

    #@314
    new-array v0, v0, [Ljava/lang/Object;

    #@316
    move-object/from16 v21, v0

    #@318
    .line 1965
    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ordinal()I

    #@31b
    move-result v22

    #@31c
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@31f
    move-result-object v22

    #@320
    const/16 v23, 0x0

    #@322
    aput-object v22, v21, v23

    #@324
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@327
    move-result-object v22

    #@328
    const/16 v23, 0x1

    #@32a
    aput-object v22, v21, v23

    #@32c
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@32f
    move-result-object v22

    #@330
    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    #@333
    move-result v22

    #@334
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@337
    move-result-object v22

    #@338
    const/16 v23, 0x2

    #@33a
    aput-object v22, v21, v23

    #@33c
    .line 1964
    const v22, 0xc3b9

    #@33f
    move/from16 v0, v22

    #@341
    move-object/from16 v1, v21

    #@343
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@346
    .line 1967
    .end local v9    # "cid":I
    :cond_f
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@349
    move-result-object v5

    #@34a
    .line 1968
    move-object/from16 v0, p0

    #@34c
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@34e
    move-object/from16 v22, v0

    #@350
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@353
    move-result-object v23

    #@354
    .line 1969
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@357
    move-result-object v24

    #@358
    if-eqz v5, :cond_12

    #@35a
    iget-object v0, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@35c
    move-object/from16 v21, v0

    #@35e
    :goto_6
    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    #@361
    move-result-object v25

    #@362
    .line 1968
    move-object/from16 v0, v22

    #@364
    move-object/from16 v1, v23

    #@366
    move-object/from16 v2, v24

    #@368
    move-object/from16 v3, v21

    #@36a
    move-object/from16 v4, v25

    #@36c
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/PhoneBase;->notifyPreciseDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@36f
    .line 1972
    move-object/from16 v0, p0

    #@371
    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isPermanentFail(Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z

    #@374
    move-result v21

    #@375
    if-eqz v21, :cond_10

    #@377
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->decWaitingApnsPermFailCount()V

    #@37a
    .line 1974
    :cond_10
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@37d
    move-result-object v21

    #@37e
    move-object/from16 v0, v21

    #@380
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->removeWaitingApn(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V

    #@383
    .line 1976
    const-string/jumbo v21, "onDataSetupComplete: WaitingApns.size=%d WaitingApnsPermFailureCountDown=%d"

    #@386
    const/16 v22, 0x2

    #@388
    move/from16 v0, v22

    #@38a
    new-array v0, v0, [Ljava/lang/Object;

    #@38c
    move-object/from16 v22, v0

    #@38e
    .line 1978
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    #@391
    move-result-object v23

    #@392
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    #@395
    move-result v23

    #@396
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@399
    move-result-object v23

    #@39a
    const/16 v24, 0x0

    #@39c
    aput-object v23, v22, v24

    #@39e
    .line 1979
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getWaitingApnsPermFailCount()I

    #@3a1
    move-result v23

    #@3a2
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3a5
    move-result-object v23

    #@3a6
    const/16 v24, 0x1

    #@3a8
    aput-object v23, v22, v24

    #@3aa
    .line 1976
    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3ad
    move-result-object v21

    #@3ae
    move-object/from16 v0, p0

    #@3b0
    move-object/from16 v1, v21

    #@3b2
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@3b5
    .line 1981
    const/4 v13, 0x1

    #@3b6
    goto/16 :goto_0

    #@3b8
    .line 1959
    :cond_11
    iget-object v0, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@3ba
    move-object/from16 v21, v0

    #@3bc
    goto/16 :goto_5

    #@3be
    .line 1969
    :cond_12
    const-string/jumbo v21, "unknown"

    #@3c1
    goto :goto_6
.end method

.method protected onDataSetupCompleteError(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 2017
    const-string/jumbo v2, ""

    #@3
    .line 2018
    .local v2, "reason":Ljava/lang/String;
    const/4 v0, 0x0

    #@4
    .line 2020
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@6
    instance-of v3, v3, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 2021
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@c
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@e
    .line 2027
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_2

    #@18
    .line 2028
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@1a
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@1d
    .line 2029
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@1f
    const-string/jumbo v4, "apnFailed"

    #@22
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@25
    move-result-object v5

    #@26
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    #@29
    .line 2031
    const/4 v3, 0x0

    #@2a
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    #@2d
    .line 2033
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getWaitingApnsPermFailCount()I

    #@30
    move-result v3

    #@31
    if-nez v3, :cond_1

    #@33
    .line 2035
    const-string/jumbo v3, "onDataSetupCompleteError: All APN\'s had permanent failures, stop retrying"

    #@36
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@39
    .line 2016
    :goto_0
    return-void

    #@3a
    .line 2023
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    #@3c
    const-string/jumbo v4, "onDataSetupCompleteError: No apnContext"

    #@3f
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@42
    throw v3

    #@43
    .line 2038
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getApnDelay()I

    #@46
    move-result v1

    #@47
    .line 2040
    .local v1, "delay":I
    new-instance v3, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v4, "onDataSetupCompleteError: Not all APN\'s had permanent failures delay="

    #@4f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v3

    #@5b
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@5e
    .line 2043
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startAlarmForRestartTrySetup(ILcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@61
    goto :goto_0

    #@62
    .line 2046
    .end local v1    # "delay":I
    :cond_2
    const-string/jumbo v3, "onDataSetupCompleteError: Try next APN"

    #@65
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@68
    .line 2047
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->SCANNING:Lcom/android/internal/telephony/DctConstants$State;

    #@6a
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@6d
    .line 2050
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getApnDelay()I

    #@70
    move-result v3

    #@71
    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startAlarmForReconnect(ILcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@74
    goto :goto_0
.end method

.method protected onDisconnectDcRetrying(ILandroid/os/AsyncResult;)V
    .locals 4
    .param p1, "connId"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 2139
    const/4 v0, 0x0

    #@1
    .line 2141
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v1, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@3
    instance-of v1, v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 2142
    iget-object v0, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@9
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@b
    .line 2148
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    #@d
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@10
    .line 2149
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "onDisconnectDcRetrying: apnContext="

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@27
    .line 2151
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@29
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    #@34
    .line 2137
    return-void

    #@35
    .line 2144
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_0
    const-string/jumbo v1, "onDisconnectDcRetrying: Invalid ar in onDisconnectDone, ignore"

    #@38
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@3b
    .line 2145
    return-void
.end method

.method protected onDisconnectDone(ILandroid/os/AsyncResult;)V
    .locals 6
    .param p1, "connId"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2059
    const/4 v0, 0x0

    #@2
    .line 2061
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v2, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@4
    instance-of v2, v2, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@6
    if-eqz v2, :cond_2

    #@8
    .line 2062
    iget-object v0, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@a
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@c
    .line 2068
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "onDisconnectDone: EVENT_DISCONNECT_DONE apnContext="

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@23
    .line 2069
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@25
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    #@28
    .line 2071
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2a
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    #@35
    .line 2075
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDisconnected()Z

    #@38
    move-result v2

    #@39
    if-eqz v2, :cond_3

    #@3b
    .line 2076
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@3d
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->processPendingRadioPowerOffAfterDataOff()Z

    #@44
    move-result v2

    #@45
    if-eqz v2, :cond_3

    #@47
    .line 2077
    const-string/jumbo v2, "onDisconnectDone: radio will be turned off, no retries"

    #@4a
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@4d
    .line 2079
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setApnSetting(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V

    #@50
    .line 2080
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    #@53
    .line 2084
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@55
    if-lez v2, :cond_0

    #@57
    .line 2085
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@59
    add-int/lit8 v2, v2, -0x1

    #@5b
    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@5d
    .line 2087
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@5f
    if-nez v2, :cond_1

    #@61
    .line 2088
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataDisconnectComplete()V

    #@64
    .line 2089
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyAllDataDisconnected()V

    #@67
    .line 2091
    :cond_1
    return-void

    #@68
    .line 2064
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_2
    const-string/jumbo v2, "onDisconnectDone: Invalid ar in onDisconnectDone, ignore"

    #@6b
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@6e
    .line 2065
    return-void

    #@6f
    .line 2096
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@71
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@74
    move-result v2

    #@75
    if-eqz v2, :cond_6

    #@77
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    #@7a
    move-result v2

    #@7b
    if-eqz v2, :cond_6

    #@7d
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->retryAfterDisconnected(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    #@80
    move-result v2

    #@81
    if-eqz v2, :cond_6

    #@83
    .line 2097
    const-string/jumbo v2, "gsm.defaultpdpcontext.active"

    #@86
    const-string/jumbo v3, "false"

    #@89
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@8c
    .line 2101
    const-string/jumbo v2, "onDisconnectDone: attached, ready and retry after disconnect"

    #@8f
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@92
    .line 2102
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getApnDelay()I

    #@95
    move-result v2

    #@96
    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startAlarmForReconnect(ILcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@99
    .line 2121
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@9b
    if-lez v2, :cond_4

    #@9d
    .line 2122
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@9f
    add-int/lit8 v2, v2, -0x1

    #@a1
    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@a3
    .line 2124
    :cond_4
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    #@a5
    if-nez v2, :cond_5

    #@a7
    .line 2126
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@a9
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@ac
    move-result-object v2

    #@ad
    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    #@b0
    move-result v2

    #@b1
    .line 2125
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setConcurrentVoiceAndDataAllowed(Z)V

    #@b4
    .line 2127
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataDisconnectComplete()V

    #@b7
    .line 2128
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyAllDataDisconnected()V

    #@ba
    .line 2058
    :cond_5
    return-void

    #@bb
    .line 2104
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@bd
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@c0
    move-result-object v2

    #@c1
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@c4
    move-result-object v2

    #@c5
    .line 2105
    const v3, 0x1120076

    #@c8
    .line 2104
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@cb
    move-result v1

    #@cc
    .line 2107
    .local v1, "restartRadioAfterProvisioning":Z
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isProvisioningApn()Z

    #@cf
    move-result v2

    #@d0
    if-eqz v2, :cond_7

    #@d2
    if-eqz v1, :cond_7

    #@d4
    .line 2108
    const-string/jumbo v2, "onDisconnectDone: restartRadio after provisioning"

    #@d7
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@da
    .line 2109
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->restartRadio()V

    #@dd
    .line 2111
    :cond_7
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setApnSetting(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V

    #@e0
    .line 2112
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    #@e3
    .line 2113
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@e5
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    #@e8
    move-result-object v2

    #@e9
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@ec
    move-result v2

    #@ed
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isOnlySingleDcAllowed(I)Z

    #@f0
    move-result v2

    #@f1
    if-eqz v2, :cond_8

    #@f3
    .line 2114
    const-string/jumbo v2, "onDisconnectDone: isOnlySigneDcAllowed true so setup single apn"

    #@f6
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@f9
    .line 2115
    const-string/jumbo v2, "SinglePdnArbitration"

    #@fc
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    #@ff
    goto :goto_0

    #@100
    .line 2117
    :cond_8
    const-string/jumbo v2, "onDisconnectDone: not retrying"

    #@103
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@106
    goto :goto_0
.end method

.method protected onEnableApn(II)V
    .locals 4
    .param p1, "apnId"    # I
    .param p2, "enabled"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1683
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnIdToType(I)Ljava/lang/String;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@d
    .line 1684
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_0

    #@f
    .line 1685
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "onEnableApn("

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    const-string/jumbo v2, ", "

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    const-string/jumbo v2, "): NO ApnContext"

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@38
    .line 1686
    return-void

    #@39
    .line 1689
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v3, "onEnableApn: apnContext="

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    const-string/jumbo v3, " call applyNewState"

    #@4c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@57
    .line 1690
    if-ne p2, v1, :cond_1

    #@59
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDependencyMet()Z

    #@5c
    move-result v2

    #@5d
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->applyNewState(Lcom/android/internal/telephony/dataconnection/ApnContext;ZZ)V

    #@60
    .line 1682
    return-void

    #@61
    .line 1690
    :cond_1
    const/4 v1, 0x0

    #@62
    goto :goto_0
.end method

.method protected onRadioAvailable()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1739
    const-string/jumbo v1, "onRadioAvailable"

    #@4
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@7
    .line 1740
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@9
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    #@c
    move-result-object v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 1744
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    #@12
    .line 1746
    const-string/jumbo v1, "onRadioAvailable: We\'re on the simulator; assuming data is connected"

    #@15
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@18
    .line 1749
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@1a
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@20
    .line 1750
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_1

    #@22
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_1

    #@28
    .line 1751
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    #@2b
    .line 1754
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    #@2e
    move-result-object v1

    #@2f
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@31
    if-eq v1, v2, :cond_2

    #@33
    .line 1755
    const/4 v1, 0x1

    #@34
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@37
    .line 1738
    :cond_2
    return-void
.end method

.method protected onRadioOffOrNotAvailable()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 1764
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReregisterOnReconnectFailure:Z

    #@4
    .line 1766
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@6
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1769
    const-string/jumbo v0, "We\'re on the simulator; assuming radio off is meaningless"

    #@f
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@12
    .line 1774
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    #@15
    .line 1760
    return-void

    #@16
    .line 1771
    :cond_0
    const-string/jumbo v0, "onRadioOffOrNotAvailable: is off and clean up all connections"

    #@19
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1c
    .line 1772
    const-string/jumbo v0, "radioTurnedOff"

    #@1f
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    #@22
    goto :goto_0
.end method

.method protected onRoamingOff()V
    .locals 1

    #@0
    .prologue
    .line 1708
    const-string/jumbo v0, "onRoamingOff"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 1710
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    #@8
    if-nez v0, :cond_0

    #@a
    return-void

    #@b
    .line 1712
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataOnRoamingEnabled()Z

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_1

    #@11
    .line 1713
    const-string/jumbo v0, "roamingOff"

    #@14
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    #@17
    .line 1714
    const-string/jumbo v0, "roamingOff"

    #@1a
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    #@1d
    .line 1707
    :goto_0
    return-void

    #@1e
    .line 1716
    :cond_1
    const-string/jumbo v0, "roamingOff"

    #@21
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    #@24
    goto :goto_0
.end method

.method protected onRoamingOn()V
    .locals 2

    #@0
    .prologue
    .line 1722
    const-string/jumbo v0, "onRoamingOn"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 1724
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    #@8
    if-nez v0, :cond_0

    #@a
    return-void

    #@b
    .line 1726
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataOnRoamingEnabled()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 1727
    const-string/jumbo v0, "onRoamingOn: setup data on roaming"

    #@14
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@17
    .line 1728
    const-string/jumbo v0, "roamingOn"

    #@1a
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    #@1d
    .line 1729
    const-string/jumbo v0, "roamingOn"

    #@20
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    #@23
    .line 1721
    :goto_0
    return-void

    #@24
    .line 1731
    :cond_1
    const-string/jumbo v0, "onRoamingOn: Tear down data connection on roaming."

    #@27
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@2a
    .line 1732
    const-string/jumbo v0, "roamingOn"

    #@2d
    const/4 v1, 0x1

    #@2e
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    #@31
    .line 1733
    const-string/jumbo v0, "roamingOn"

    #@34
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    #@37
    goto :goto_0
.end method

.method protected onSetDependencyMet(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "met"    # Z

    #@0
    .prologue
    .line 1518
    const-string/jumbo v1, "hipri"

    #@3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    return-void

    #@a
    .line 1520
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@c
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@12
    .line 1521
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_1

    #@14
    .line 1522
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v2, "onSetDependencyMet: ApnContext not found in onSetDependencyMet("

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    .line 1523
    const-string/jumbo v2, ", "

    #@27
    .line 1522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 1523
    const-string/jumbo v2, ")"

    #@32
    .line 1522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    #@3d
    .line 1524
    return-void

    #@3e
    .line 1526
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    #@41
    move-result v1

    #@42
    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->applyNewState(Lcom/android/internal/telephony/dataconnection/ApnContext;ZZ)V

    #@45
    .line 1527
    const-string/jumbo v1, "default"

    #@48
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v1

    #@4c
    if-eqz v1, :cond_2

    #@4e
    .line 1529
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    #@50
    const-string/jumbo v2, "hipri"

    #@53
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@56
    move-result-object v0

    #@57
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@59
    .line 1530
    .restart local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_2

    #@5b
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    #@5e
    move-result v1

    #@5f
    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->applyNewState(Lcom/android/internal/telephony/dataconnection/ApnContext;ZZ)V

    #@62
    .line 1516
    :cond_2
    return-void
.end method

.method protected onSetInternalDataEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 2841
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "onSetInternalDataEnabled: enabled="

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
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@17
    .line 2842
    const/4 v0, 0x0

    #@18
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onSetInternalDataEnabled(ZLandroid/os/Message;)V

    #@1b
    .line 2840
    return-void
.end method

.method protected onSetInternalDataEnabled(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "onCompleteMsg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2846
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "onSetInternalDataEnabled: enabled="

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@17
    .line 2847
    const/4 v0, 0x1

    #@18
    .line 2849
    .local v0, "sendOnComplete":Z
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledLock:Ljava/lang/Object;

    #@1a
    monitor-enter v2

    #@1b
    .line 2850
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInternalDataEnabled:Z

    #@1d
    .line 2851
    if-eqz p1, :cond_1

    #@1f
    .line 2852
    const-string/jumbo v1, "onSetInternalDataEnabled: changed to enabled, try to setup data call"

    #@22
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@25
    .line 2853
    const-string/jumbo v1, "dataEnabled"

    #@28
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onTrySetupData(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    :goto_0
    monitor-exit v2

    #@2c
    .line 2861
    if-eqz v0, :cond_0

    #@2e
    .line 2862
    if-eqz p2, :cond_0

    #@30
    .line 2863
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    #@33
    .line 2845
    :cond_0
    return-void

    #@34
    .line 2855
    :cond_1
    const/4 v0, 0x0

    #@35
    .line 2856
    :try_start_1
    const-string/jumbo v1, "onSetInternalDataEnabled: changed to disabled, cleanUpAllConnections"

    #@38
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@3b
    .line 2857
    const/4 v1, 0x0

    #@3c
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    goto :goto_0

    #@40
    .line 2849
    :catchall_0
    move-exception v1

    #@41
    monitor-exit v2

    #@42
    throw v1
.end method

.method protected onTrySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 2
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@0
    .prologue
    .line 1702
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "onTrySetupData: apnContext="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@17
    .line 1703
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    #@1a
    move-result v0

    #@1b
    return v0
.end method

.method protected onTrySetupData(Ljava/lang/String;)Z
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1696
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "onTrySetupData: reason="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@17
    .line 1697
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    #@1a
    .line 1698
    const/4 v0, 0x1

    #@1b
    return v0
.end method

.method protected onUpdateIcc()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2749
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 2750
    return-void

    #@6
    .line 2753
    :cond_0
    const/4 v2, 0x1

    #@7
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getUiccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    #@a
    move-result-object v0

    #@b
    .line 2755
    .local v0, "newIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@d
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    #@13
    .line 2756
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eq v1, v0, :cond_2

    #@15
    .line 2757
    if-eqz v1, :cond_1

    #@17
    .line 2758
    const-string/jumbo v2, "Removing stale icc objects."

    #@1a
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1d
    .line 2759
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    #@20
    .line 2760
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@22
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@25
    .line 2762
    :cond_1
    if-eqz v0, :cond_3

    #@27
    .line 2763
    const-string/jumbo v2, "New records found"

    #@2a
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@2d
    .line 2764
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@2f
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@32
    .line 2766
    const v2, 0x42002

    #@35
    .line 2765
    invoke-virtual {v0, p0, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    #@38
    .line 2748
    :cond_2
    :goto_0
    return-void

    #@39
    .line 2768
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onSimNotReady()V

    #@3c
    goto :goto_0
.end method

.method protected onVoiceCallEnded()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2169
    const-string/jumbo v0, "onVoiceCallEnded"

    #@4
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@7
    .line 2170
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInVoiceCall:Z

    #@9
    .line 2171
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isConnected()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 2172
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@11
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    #@18
    move-result v0

    #@19
    if-nez v0, :cond_1

    #@1b
    .line 2173
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startNetStatPoll()V

    #@1e
    .line 2174
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    #@21
    .line 2175
    const-string/jumbo v0, "2GVoiceCallEnded"

    #@24
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    #@27
    .line 2182
    :cond_0
    :goto_0
    const-string/jumbo v0, "2GVoiceCallEnded"

    #@2a
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    #@2d
    .line 2168
    return-void

    #@2e
    .line 2178
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->resetPollStats()V

    #@31
    goto :goto_0
.end method

.method protected onVoiceCallStarted()V
    .locals 1

    #@0
    .prologue
    .line 2157
    const-string/jumbo v0, "onVoiceCallStarted"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 2158
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInVoiceCall:Z

    #@9
    .line 2159
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isConnected()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@11
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 2156
    :cond_0
    :goto_0
    return-void

    #@1c
    .line 2160
    :cond_1
    const-string/jumbo v0, "onVoiceCallStarted stop polling"

    #@1f
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@22
    .line 2161
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    #@25
    .line 2162
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    #@28
    .line 2163
    const-string/jumbo v0, "2GVoiceCallStarted"

    #@2b
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    #@2e
    goto :goto_0
.end method

.method public registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2826
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 2828
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDisconnected()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 2829
    const-string/jumbo v0, "notify All Data Disconnected"

    #@e
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@11
    .line 2830
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyAllDataDisconnected()V

    #@14
    .line 2825
    :cond_0
    return-void
.end method

.method protected registerForAllEvents()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@3
    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@5
    const v1, 0x42001

    #@8
    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    #@b
    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@d
    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@f
    .line 182
    const v1, 0x42006

    #@12
    .line 181
    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    #@15
    .line 183
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@17
    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@19
    .line 184
    const v1, 0x42004

    #@1c
    .line 183
    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@1f
    .line 190
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@21
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    #@24
    move-result-object v0

    #@25
    .line 191
    const v1, 0x42008

    #@28
    .line 190
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    #@2b
    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2d
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    #@30
    move-result-object v0

    #@31
    .line 193
    const v1, 0x42007

    #@34
    .line 192
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    #@37
    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@39
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@3c
    move-result-object v0

    #@3d
    .line 195
    const v1, 0x42010

    #@40
    .line 194
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    #@43
    .line 196
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@45
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@48
    move-result-object v0

    #@49
    .line 197
    const v1, 0x42009

    #@4c
    .line 196
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    #@4f
    .line 198
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@51
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@54
    move-result-object v0

    #@55
    .line 199
    const v1, 0x4200b

    #@58
    .line 198
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5b
    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@5d
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@60
    move-result-object v0

    #@61
    .line 201
    const v1, 0x4200c

    #@64
    .line 200
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    #@67
    .line 202
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@69
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@6c
    move-result-object v0

    #@6d
    .line 203
    const v1, 0x42016

    #@70
    .line 202
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V

    #@73
    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@75
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@78
    move-result-object v0

    #@79
    .line 205
    const v1, 0x42017

    #@7c
    .line 204
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V

    #@7f
    .line 208
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@81
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@84
    move-result-object v0

    #@85
    .line 209
    const v1, 0x42029

    #@88
    .line 208
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8b
    .line 179
    return-void
.end method

.method protected restartRadio()V
    .locals 3

    #@0
    .prologue
    .line 1411
    const-string/jumbo v1, "restartRadio: ************TURN OFF RADIO**************"

    #@3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@6
    .line 1412
    const-string/jumbo v1, "radioTurnedOff"

    #@9
    const/4 v2, 0x1

    #@a
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    #@d
    .line 1413
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@f
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    #@16
    .line 1422
    const-string/jumbo v1, "net.ppp.reset-by-timeout"

    #@19
    const-string/jumbo v2, "0"

    #@1c
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@23
    move-result v0

    #@24
    .line 1423
    .local v0, "reset":I
    const-string/jumbo v1, "net.ppp.reset-by-timeout"

    #@27
    add-int/lit8 v2, v0, 0x1

    #@29
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@30
    .line 1410
    return-void
.end method

.method public setDataAllowed(ZLandroid/os/Message;)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2892
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "setDataAllowed: enable="

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
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@17
    .line 2893
    if-eqz p1, :cond_0

    #@19
    const/4 v0, 0x0

    #@1a
    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsCleanupRequired:Z

    #@1c
    .line 2894
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@1e
    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@20
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    #@23
    .line 2895
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInternalDataEnabled:Z

    #@25
    .line 2891
    return-void

    #@26
    .line 2893
    :cond_0
    const/4 v0, 0x1

    #@27
    goto :goto_0
.end method

.method public setImsRegistrationState(Z)V
    .locals 3
    .param p1, "registered"    # Z

    #@0
    .prologue
    .line 2960
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "setImsRegistrationState - mImsRegistrationState(before): "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mImsRegistrationState:Z

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    .line 2961
    const-string/jumbo v2, ", registered(current) : "

    #@15
    .line 2960
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@24
    .line 2963
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@26
    if-nez v1, :cond_0

    #@28
    return-void

    #@29
    .line 2965
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2b
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@2e
    move-result-object v0

    #@2f
    .line 2966
    .local v0, "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    if-nez v0, :cond_1

    #@31
    return-void

    #@32
    .line 2968
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->setImsRegistrationState(Z)V

    #@35
    .line 2959
    return-void
.end method

.method public setInternalDataEnabled(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 2879
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInternalDataEnabled(ZLandroid/os/Message;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public setInternalDataEnabled(ZLandroid/os/Message;)Z
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "onCompleteMsg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 2883
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v3, "setInternalDataEnabled("

    #@9
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    const-string/jumbo v3, ")"

    #@14
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1f
    .line 2885
    const v1, 0x4201b

    #@22
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@25
    move-result-object v0

    #@26
    .line 2886
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    #@28
    move v1, v2

    #@29
    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@2b
    .line 2887
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    #@2e
    .line 2888
    return v2

    #@2f
    .line 2886
    :cond_0
    const/4 v1, 0x0

    #@30
    goto :goto_0
.end method

.method public setInternalDataEnabledFlag(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 2869
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "setInternalDataEnabledFlag("

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, ")"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1e
    .line 2871
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInternalDataEnabled:Z

    #@20
    if-eq v0, p1, :cond_0

    #@22
    .line 2872
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInternalDataEnabled:Z

    #@24
    .line 2874
    :cond_0
    const/4 v0, 0x1

    #@25
    return v0
.end method

.method protected setState(Lcom/android/internal/telephony/DctConstants$State;)V
    .locals 2
    .param p1, "s"    # Lcom/android/internal/telephony/DctConstants$State;

    #@0
    .prologue
    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "setState should not be used in GSM"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@17
    .line 529
    return-void
.end method

.method public unregisterForAllDataDisconnected(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 2835
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 2834
    return-void
.end method

.method protected unregisterForAllEvents()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 236
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@3
    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@5
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    #@8
    .line 237
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@a
    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@c
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    #@f
    .line 238
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@11
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@17
    .line 239
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    #@19
    .line 240
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    #@1c
    .line 241
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@1e
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@21
    .line 243
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@23
    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@25
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataNetworkStateChanged(Landroid/os/Handler;)V

    #@28
    .line 244
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2a
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    #@31
    .line 245
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@33
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    #@3a
    .line 246
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@3c
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionAttached(Landroid/os/Handler;)V

    #@43
    .line 247
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@45
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionDetached(Landroid/os/Handler;)V

    #@4c
    .line 248
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@4e
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@51
    move-result-object v1

    #@52
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRoamingOn(Landroid/os/Handler;)V

    #@55
    .line 249
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@57
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRoamingOff(Landroid/os/Handler;)V

    #@5e
    .line 250
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@60
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V

    #@67
    .line 251
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@69
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@6c
    move-result-object v1

    #@6d
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V

    #@70
    .line 234
    return-void
.end method

.method public update()V
    .locals 2

    #@0
    .prologue
    .line 2774
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "update sub = "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@e
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    #@11
    move-result v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@1d
    .line 2775
    const-string/jumbo v0, "update(): Active DDS, register for all events now!"

    #@20
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@23
    .line 2776
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerForAllEvents()V

    #@26
    .line 2777
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onUpdateIcc()V

    #@29
    .line 2779
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataEnabled()Z

    #@2c
    move-result v0

    #@2d
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    #@2f
    .line 2781
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@31
    instance-of v0, v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    #@33
    if-eqz v0, :cond_0

    #@35
    .line 2782
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@37
    check-cast v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    #@39
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->updateCurrentCarrierInProvider()Z

    #@3c
    .line 2773
    :goto_0
    return-void

    #@3d
    .line 2783
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@3f
    instance-of v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    #@41
    if-eqz v0, :cond_1

    #@43
    .line 2784
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@45
    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    #@47
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateCurrentCarrierInProvider()Z

    #@4a
    goto :goto_0

    #@4b
    .line 2786
    :cond_1
    const-string/jumbo v0, "Phone object is not MultiSim. This should not hit!!!!"

    #@4e
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    #@51
    goto :goto_0
.end method

.method public updateRecords()V
    .locals 0

    #@0
    .prologue
    .line 2796
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onUpdateIcc()V

    #@3
    .line 2795
    return-void
.end method
